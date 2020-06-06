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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<23.120552, 17.195639, -2.666776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.319183, 16.848446, -2.668316>,  <23.438362, 16.640129, -2.669240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.319183, 16.848446, -2.668316>,  <23.120552, 17.195639, -2.666776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.319183, 16.848446, -2.668316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608046, -0.351024, 0.712083,
		-0.619428, -0.351263, -0.702084,
		0.496577, -0.867984, -0.003850,
		23.468157, 16.588051, -2.669471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.519354, 16.679949, -2.574011>,  <23.120552, 17.195639, -2.666776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.519354, 16.679949, -2.574011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894165, 16.626610, -2.444892>,  <23.119051, 16.594606, -2.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894165, 16.626610, -2.444892>,  <22.519354, 16.679949, -2.574011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.894165, 16.626610, -2.444892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338042, -0.113942, 0.934208,
		-0.087793, -0.984498, -0.151843,
		0.937027, -0.133346, 0.322798,
		23.175274, 16.586605, -2.348052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.752298, 15.912319, -2.253482>,  <22.519354, 16.679949, -2.574011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.752298, 15.912319, -2.253482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920269, 16.235165, -2.087481>,  <23.021051, 16.428871, -1.987881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920269, 16.235165, -2.087481>,  <22.752298, 15.912319, -2.253482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920269, 16.235165, -2.087481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440494, -0.218541, 0.870750,
		0.793489, -0.548458, 0.263758,
		0.419928, 0.807114, 0.415002,
		23.046247, 16.477299, -1.962981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.261042, 15.798412, -1.596784>,  <22.752298, 15.912319, -2.253482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.261042, 15.798412, -1.596784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085403, 16.157322, -1.578474>,  <22.980021, 16.372667, -1.567489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085403, 16.157322, -1.578474>,  <23.261042, 15.798412, -1.596784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085403, 16.157322, -1.578474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525214, -0.297692, 0.797201,
		0.728934, 0.326006, 0.601976,
		-0.439096, 0.897273, 0.045775,
		22.953674, 16.426504, -1.564742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287542, 16.257231, -0.908014>,  <23.261042, 15.798412, -1.596784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287542, 16.257231, -0.908014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942650, 16.345428, -1.090416>,  <22.735714, 16.398348, -1.199857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942650, 16.345428, -1.090416>,  <23.287542, 16.257231, -0.908014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942650, 16.345428, -1.090416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501331, -0.243004, 0.830431,
		0.072295, 0.944633, 0.320067,
		-0.862230, 0.220495, -0.456006,
		22.683981, 16.411577, -1.227218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658798, 15.974911, -0.514422>,  <23.287542, 16.257231, -0.908014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658798, 15.974911, -0.514422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401955, 16.054951, -0.218406>,  <22.247849, 16.102974, -0.040796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401955, 16.054951, -0.218406>,  <22.658798, 15.974911, -0.514422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401955, 16.054951, -0.218406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582839, 0.754504, 0.301699,
		-0.497994, 0.625047, -0.601098,
		-0.642107, 0.200099, 0.740040,
		22.209322, 16.114981, 0.003606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.435102, 16.673643, -0.629626>,  <22.658798, 15.974911, -0.514422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.435102, 16.673643, -0.629626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460613, 16.566319, -0.245139>,  <22.475920, 16.501923, -0.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460613, 16.566319, -0.245139>,  <22.435102, 16.673643, -0.629626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460613, 16.566319, -0.245139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763399, 0.633484, 0.126177,
		-0.642771, 0.725746, 0.245232,
		0.063778, -0.268313, 0.961218,
		22.479746, 16.485825, 0.043227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108486, 17.095236, -0.157910>,  <22.435102, 16.673643, -0.629626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108486, 17.095236, -0.157910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438549, 16.945210, 0.011059>,  <22.636587, 16.855194, 0.112440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438549, 16.945210, 0.011059>,  <22.108486, 17.095236, -0.157910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438549, 16.945210, 0.011059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386297, 0.920255, 0.062492,
		-0.412174, 0.111615, 0.904243,
		0.825159, -0.375064, 0.422421,
		22.686096, 16.832691, 0.137785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365871, 17.399162, 0.537383>,  <22.108486, 17.095236, -0.157910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365871, 17.399162, 0.537383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705219, 17.241226, 0.396319>,  <22.908829, 17.146463, 0.311681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705219, 17.241226, 0.396319>,  <22.365871, 17.399162, 0.537383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.705219, 17.241226, 0.396319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482247, 0.851207, 0.207088,
		0.218418, -0.345755, 0.912550,
		0.848370, -0.394842, -0.352659,
		22.959730, 17.122774, 0.290522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.993671, 17.393507, 1.066539>,  <22.365871, 17.399162, 0.537383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.993671, 17.393507, 1.066539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.134335, 17.420731, 0.693079>,  <23.218733, 17.437065, 0.469002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.134335, 17.420731, 0.693079>,  <22.993671, 17.393507, 1.066539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134335, 17.420731, 0.693079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450050, 0.862242, 0.232364,
		0.820849, -0.501902, 0.272582,
		0.351655, 0.068061, -0.933652,
		23.239832, 17.441149, 0.412983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597174, 17.160343, 1.119179>,  <22.993671, 17.393507, 1.066539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597174, 17.160343, 1.119179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517254, 17.439224, 0.843792>,  <23.469301, 17.606552, 0.678560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517254, 17.439224, 0.843792>,  <23.597174, 17.160343, 1.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517254, 17.439224, 0.843792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637249, 0.626200, 0.449207,
		0.744307, -0.348974, -0.569408,
		-0.199802, 0.697203, -0.688468,
		23.457314, 17.648384, 0.637252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247791, 17.474211, 1.083165>,  <23.597174, 17.160343, 1.119179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247791, 17.474211, 1.083165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953499, 17.736805, 1.016566>,  <23.776922, 17.894361, 0.976606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953499, 17.736805, 1.016566>,  <24.247791, 17.474211, 1.083165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953499, 17.736805, 1.016566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502468, 0.693925, 0.515747,
		0.454118, 0.295791, -0.840407,
		-0.735733, 0.656488, -0.166498,
		23.732779, 17.933752, 0.966616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496267, 18.193699, 0.877045>,  <24.247791, 17.474211, 1.083165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496267, 18.193699, 0.877045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162151, 18.234238, 1.093200>,  <23.961681, 18.258560, 1.222892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162151, 18.234238, 1.093200>,  <24.496267, 18.193699, 0.877045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162151, 18.234238, 1.093200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460560, 0.665785, 0.587039,
		-0.300287, 0.739229, -0.602800,
		-0.835292, 0.101345, 0.540386,
		23.911564, 18.264641, 1.255315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.197384, 18.969721, 0.994889>,  <24.496267, 18.193699, 0.877045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.197384, 18.969721, 0.994889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125065, 18.699310, 1.280630>,  <24.081673, 18.537064, 1.452074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125065, 18.699310, 1.280630>,  <24.197384, 18.969721, 0.994889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125065, 18.699310, 1.280630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420891, 0.603271, 0.677432,
		-0.888911, 0.423142, 0.175464,
		-0.180798, -0.676028, 0.714351,
		24.070826, 18.496502, 1.494935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.929359, 19.386375, 1.481155>,  <24.197384, 18.969721, 0.994889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.929359, 19.386375, 1.481155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109734, 19.074837, 1.655538>,  <24.217958, 18.887913, 1.760167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109734, 19.074837, 1.655538>,  <23.929359, 19.386375, 1.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.109734, 19.074837, 1.655538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160990, 0.551397, 0.818562,
		-0.877919, -0.298932, 0.374030,
		0.450933, -0.778846, 0.435956,
		24.245014, 18.841183, 1.786325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613934, 19.193489, 2.113683>,  <23.929359, 19.386375, 1.481155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613934, 19.193489, 2.113683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.006397, 19.116402, 2.119149>,  <24.241875, 19.070148, 2.122429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.006397, 19.116402, 2.119149>,  <23.613934, 19.193489, 2.113683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.006397, 19.116402, 2.119149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067641, 0.408902, 0.910068,
		-0.180975, -0.891997, 0.414234,
		0.981159, -0.192719, 0.013666,
		24.300745, 19.058586, 2.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632891, 19.056944, 2.741809>,  <23.613934, 19.193489, 2.113683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632891, 19.056944, 2.741809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.018848, 19.098267, 2.645221>,  <24.250423, 19.123060, 2.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.018848, 19.098267, 2.645221>,  <23.632891, 19.056944, 2.741809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.018848, 19.098267, 2.645221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217410, 0.201645, 0.955025,
		0.147349, -0.973996, 0.172107,
		0.964894, 0.103304, -0.241468,
		24.308317, 19.129257, 2.572781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990143, 18.653696, 3.156293>,  <23.632891, 19.056944, 2.741809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990143, 18.653696, 3.156293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239830, 18.949917, 3.056745>,  <24.389643, 19.127649, 2.997015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239830, 18.949917, 3.056745>,  <23.990143, 18.653696, 3.156293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239830, 18.949917, 3.056745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215780, 0.142739, 0.965953,
		0.750860, -0.656667, -0.070696,
		0.624218, 0.740550, -0.248872,
		24.427095, 19.172081, 2.982083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636745, 18.584475, 3.498334>,  <23.990143, 18.653696, 3.156293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636745, 18.584475, 3.498334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.555546, 18.967529, 3.416625>,  <24.506826, 19.197361, 3.367599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.555546, 18.967529, 3.416625>,  <24.636745, 18.584475, 3.498334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.555546, 18.967529, 3.416625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077244, 0.223629, 0.971609,
		0.976128, 0.181455, -0.119368,
		-0.202997, 0.957635, -0.204274,
		24.494646, 19.254820, 3.355342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147577, 19.014009, 3.827095>,  <24.636745, 18.584475, 3.498334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147577, 19.014009, 3.827095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804321, 19.213505, 3.778335>,  <24.598368, 19.333202, 3.749079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804321, 19.213505, 3.778335>,  <25.147577, 19.014009, 3.827095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804321, 19.213505, 3.778335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066881, 0.126817, 0.989669,
		0.509044, 0.857426, -0.075471,
		-0.858138, 0.498737, -0.121901,
		24.546879, 19.363127, 3.741765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238140, 19.728315, 4.173803>,  <25.147577, 19.014009, 3.827095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238140, 19.728315, 4.173803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.845528, 19.654491, 4.153666>,  <24.609961, 19.610197, 4.141584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.845528, 19.654491, 4.153666>,  <25.238140, 19.728315, 4.173803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.845528, 19.654491, 4.153666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130830, 0.455607, 0.880514,
		-0.139571, 0.870839, -0.471339,
		-0.981531, -0.184559, -0.050342,
		24.551067, 19.599123, 4.138564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899221, 20.227468, 4.446768>,  <25.238140, 19.728315, 4.173803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899221, 20.227468, 4.446768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609627, 19.952408, 4.468606>,  <24.435871, 19.787371, 4.481709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609627, 19.952408, 4.468606>,  <24.899221, 20.227468, 4.446768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609627, 19.952408, 4.468606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205398, 0.290451, 0.934586,
		-0.658527, 0.665412, -0.351524,
		-0.723985, -0.687652, 0.054596,
		24.392431, 19.746113, 4.484985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.315678, 20.466003, 4.969880>,  <24.899221, 20.227468, 4.446768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.315678, 20.466003, 4.969880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253490, 20.072872, 5.009643>,  <24.216179, 19.836994, 5.033500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253490, 20.072872, 5.009643>,  <24.315678, 20.466003, 4.969880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253490, 20.072872, 5.009643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226058, 0.133357, 0.964942,
		-0.961627, 0.127546, -0.242908,
		-0.155468, -0.982826, 0.099407,
		24.206850, 19.778025, 5.039465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.717321, 20.421633, 5.382854>,  <24.315678, 20.466003, 4.969880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.717321, 20.421633, 5.382854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944698, 20.096458, 5.433467>,  <24.081123, 19.901354, 5.463835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944698, 20.096458, 5.433467>,  <23.717321, 20.421633, 5.382854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.944698, 20.096458, 5.433467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304765, -0.065208, 0.950193,
		-0.764195, -0.578691, -0.284821,
		0.568440, -0.812936, 0.126532,
		24.115231, 19.852577, 5.471426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.271484, 19.905914, 5.774681>,  <23.717321, 20.421633, 5.382854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.271484, 19.905914, 5.774681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649109, 19.775711, 5.795823>,  <23.875683, 19.697590, 5.808508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649109, 19.775711, 5.795823>,  <23.271484, 19.905914, 5.774681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.649109, 19.775711, 5.795823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139161, -0.247932, 0.958731,
		-0.298968, -0.912456, -0.279361,
		0.944062, -0.325506, 0.052855,
		23.932327, 19.678059, 5.811679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247417, 19.242012, 6.038865>,  <23.271484, 19.905914, 5.774681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247417, 19.242012, 6.038865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.571434, 19.452576, 6.142192>,  <23.765844, 19.578913, 6.204188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.571434, 19.452576, 6.142192>,  <23.247417, 19.242012, 6.038865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.571434, 19.452576, 6.142192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350677, 0.081829, 0.932915,
		0.469956, -0.846285, 0.250884,
		0.810042, 0.526408, 0.258317,
		23.814447, 19.610498, 6.219687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712498, 19.029480, 6.675323>,  <23.247417, 19.242012, 6.038865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712498, 19.029480, 6.675323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715248, 19.428020, 6.641303>,  <23.716898, 19.667145, 6.620891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715248, 19.428020, 6.641303>,  <23.712498, 19.029480, 6.675323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715248, 19.428020, 6.641303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345258, 0.082186, 0.934902,
		0.938483, 0.022935, 0.344564,
		0.006877, 0.996353, -0.085049,
		23.717312, 19.726927, 6.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373726, 19.258108, 6.914369>,  <23.712498, 19.029480, 6.675323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373726, 19.258108, 6.914369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496658, 18.931602, 7.110025>,  <24.570417, 18.735699, 7.227419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496658, 18.931602, 7.110025>,  <24.373726, 19.258108, 6.914369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496658, 18.931602, 7.110025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185845, 0.555607, 0.810409,
		-0.933278, -0.158161, 0.322454,
		0.307333, -0.816264, 0.489142,
		24.588858, 18.686724, 7.256768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039948, 19.042217, 7.520489>,  <24.373726, 19.258108, 6.914369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039948, 19.042217, 7.520489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431950, 18.964710, 7.502396>,  <24.667150, 18.918207, 7.491540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431950, 18.964710, 7.502396>,  <24.039948, 19.042217, 7.520489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431950, 18.964710, 7.502396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180128, 0.767378, 0.615373,
		-0.084528, -0.611216, 0.786937,
		0.980004, -0.193766, -0.045233,
		24.725950, 18.906580, 7.488826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316046, 19.047424, 8.205093>,  <24.039948, 19.042217, 7.520489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316046, 19.047424, 8.205093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593498, 19.156116, 7.938249>,  <24.759970, 19.221333, 7.778142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593498, 19.156116, 7.938249>,  <24.316046, 19.047424, 8.205093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593498, 19.156116, 7.938249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248253, 0.779202, 0.575512,
		0.676201, -0.564805, 0.473020,
		0.693630, 0.271733, -0.667112,
		24.801588, 19.237637, 7.738115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.716530, 19.608883, 8.036398>,  <24.316046, 19.047424, 8.205093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.716530, 19.608883, 8.036398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476177, 19.490253, 7.739484>,  <23.331966, 19.419077, 7.561336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476177, 19.490253, 7.739484>,  <23.716530, 19.608883, 8.036398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476177, 19.490253, 7.739484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799316, 0.215959, 0.560763,
		-0.006003, 0.930273, -0.366820,
		-0.600881, -0.296572, -0.742285,
		23.295914, 19.401281, 7.516798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.156260, 20.139217, 7.931761>,  <23.716530, 19.608883, 8.036398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.156260, 20.139217, 7.931761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056622, 19.766670, 7.825551>,  <22.996840, 19.543142, 7.761825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056622, 19.766670, 7.825551>,  <23.156260, 20.139217, 7.931761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.056622, 19.766670, 7.825551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708025, -0.011938, 0.706087,
		-0.660797, 0.363879, -0.656459,
		-0.249094, -0.931369, -0.265524,
		22.981894, 19.487259, 7.745894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.568146, 20.047289, 7.794261>,  <23.156260, 20.139217, 7.931761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.568146, 20.047289, 7.794261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651939, 19.686745, 7.945872>,  <22.702215, 19.470417, 8.036839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651939, 19.686745, 7.945872>,  <22.568146, 20.047289, 7.794261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.651939, 19.686745, 7.945872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453509, 0.253855, 0.854334,
		-0.866283, -0.350863, -0.355597,
		0.209484, -0.901362, 0.379030,
		22.714785, 19.416336, 8.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853828, 19.808662, 8.046848>,  <22.568146, 20.047289, 7.794261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853828, 19.808662, 8.046848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158627, 19.621632, 8.226061>,  <22.341505, 19.509413, 8.333589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158627, 19.621632, 8.226061>,  <21.853828, 19.808662, 8.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158627, 19.621632, 8.226061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425732, 0.159623, 0.890659,
		-0.487968, -0.869420, -0.077431,
		0.761997, -0.467578, 0.448030,
		22.387226, 19.481358, 8.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.719227, 19.072123, 8.375444>,  <21.853828, 19.808662, 8.046848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.719227, 19.072123, 8.375444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.027058, 19.259968, 8.548516>,  <22.211756, 19.372675, 8.652359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.027058, 19.259968, 8.548516>,  <21.719227, 19.072123, 8.375444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027058, 19.259968, 8.548516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474975, -0.031890, 0.879421,
		0.426788, -0.882295, 0.198513,
		0.769578, 0.469615, 0.432679,
		22.257931, 19.400852, 8.678320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140324, 18.657177, 8.926542>,  <21.719227, 19.072123, 8.375444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140324, 18.657177, 8.926542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147671, 19.052120, 8.989513>,  <22.152079, 19.289087, 9.027296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147671, 19.052120, 8.989513>,  <22.140324, 18.657177, 8.926542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147671, 19.052120, 8.989513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278686, -0.146159, 0.949195,
		0.960207, -0.061305, 0.272479,
		0.018366, 0.987359, 0.157427,
		22.153181, 19.348328, 9.036741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485920, 18.744799, 9.567407>,  <22.140324, 18.657177, 8.926542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485920, 18.744799, 9.567407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.271950, 19.076439, 9.502359>,  <22.143568, 19.275423, 9.463331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.271950, 19.076439, 9.502359>,  <22.485920, 18.744799, 9.567407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.271950, 19.076439, 9.502359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265344, 0.017879, 0.963988,
		0.802152, 0.558811, 0.210434,
		-0.534925, 0.829102, -0.162619,
		22.111473, 19.325169, 9.453574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.694540, 19.262859, 10.118382>,  <22.485920, 18.744799, 9.567407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.694540, 19.262859, 10.118382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339043, 19.387367, 9.983775>,  <22.125744, 19.462072, 9.903010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339043, 19.387367, 9.983775>,  <22.694540, 19.262859, 10.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339043, 19.387367, 9.983775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329793, 0.075712, 0.941013,
		0.318387, 0.947301, 0.035366,
		-0.888744, 0.311270, -0.336518,
		22.072420, 19.480749, 9.882819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.544380, 19.722414, 10.606816>,  <22.694540, 19.262859, 10.118382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.544380, 19.722414, 10.606816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191059, 19.643539, 10.436690>,  <21.979067, 19.596214, 10.334615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191059, 19.643539, 10.436690>,  <22.544380, 19.722414, 10.606816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191059, 19.643539, 10.436690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368205, -0.269740, 0.889756,
		-0.290173, 0.942527, 0.165658,
		-0.883304, -0.197187, -0.425314,
		21.926067, 19.584383, 10.309096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.040325, 20.115662, 10.936923>,  <22.544380, 19.722414, 10.606816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.040325, 20.115662, 10.936923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851391, 19.800110, 10.779663>,  <21.738031, 19.610779, 10.685308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851391, 19.800110, 10.779663>,  <22.040325, 20.115662, 10.936923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851391, 19.800110, 10.779663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479365, -0.144396, 0.865655,
		-0.739669, 0.597340, -0.309959,
		-0.472334, -0.788882, -0.393149,
		21.709690, 19.563446, 10.661718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330162, 20.131708, 11.088246>,  <22.040325, 20.115662, 10.936923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330162, 20.131708, 11.088246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378017, 19.751331, 10.974126>,  <21.406731, 19.523106, 10.905653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378017, 19.751331, 10.974126>,  <21.330162, 20.131708, 11.088246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378017, 19.751331, 10.974126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530023, -0.304166, 0.791555,
		-0.839501, 0.056515, -0.540411,
		0.119640, -0.950941, -0.285303,
		21.413910, 19.466049, 10.888535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.602320, 19.887135, 10.997237>,  <21.330162, 20.131708, 11.088246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.602320, 19.887135, 10.997237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848492, 19.577816, 11.058243>,  <20.996195, 19.392225, 11.094847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848492, 19.577816, 11.058243>,  <20.602320, 19.887135, 10.997237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848492, 19.577816, 11.058243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531805, -0.264575, 0.804477,
		-0.581747, -0.576207, -0.574070,
		0.615430, -0.773295, 0.152514,
		21.033121, 19.345827, 11.103997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206146, 19.249519, 11.161215>,  <20.602320, 19.887135, 10.997237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206146, 19.249519, 11.161215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569580, 19.171986, 11.309214>,  <20.787642, 19.125465, 11.398013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569580, 19.171986, 11.309214>,  <20.206146, 19.249519, 11.161215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569580, 19.171986, 11.309214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417574, -0.442913, 0.793385,
		0.010092, -0.875361, -0.483365,
		0.908587, -0.193834, 0.369998,
		20.842155, 19.113836, 11.420213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145695, 18.688900, 11.429723>,  <20.206146, 19.249519, 11.161215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145695, 18.688900, 11.429723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503559, 18.757515, 11.594723>,  <20.718277, 18.798685, 11.693723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503559, 18.757515, 11.594723>,  <20.145695, 18.688900, 11.429723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503559, 18.757515, 11.594723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320538, -0.396684, 0.860173,
		0.311186, -0.901785, -0.299913,
		0.894661, 0.171540, 0.412499,
		20.771957, 18.808977, 11.718472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363117, 17.928133, 11.851616>,  <20.145695, 18.688900, 11.429723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363117, 17.928133, 11.851616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561138, 18.238014, 12.008973>,  <20.679951, 18.423943, 12.103388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561138, 18.238014, 12.008973>,  <20.363117, 17.928133, 11.851616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561138, 18.238014, 12.008973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284292, -0.283419, 0.915888,
		0.821037, -0.565250, 0.079935,
		0.495051, 0.774703, 0.393394,
		20.709654, 18.470425, 12.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679699, 17.628305, 12.472909>,  <20.363117, 17.928133, 11.851616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679699, 17.628305, 12.472909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702129, 18.025009, 12.518984>,  <20.715588, 18.263031, 12.546629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702129, 18.025009, 12.518984>,  <20.679699, 17.628305, 12.472909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.702129, 18.025009, 12.518984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260666, -0.096825, 0.960561,
		0.963799, -0.083890, 0.253089,
		0.056076, 0.991760, 0.115188,
		20.718952, 18.322536, 12.553540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.153822, 17.760302, 12.994987>,  <20.679699, 17.628305, 12.472909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.153822, 17.760302, 12.994987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.906673, 18.074741, 13.001684>,  <20.758385, 18.263405, 13.005702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.906673, 18.074741, 13.001684>,  <21.153822, 17.760302, 12.994987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.906673, 18.074741, 13.001684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193219, -0.172441, 0.965883,
		0.762167, 0.593559, 0.258436,
		-0.617873, 0.786100, 0.016742,
		20.721312, 18.310572, 13.006707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393066, 18.115185, 13.620004>,  <21.153822, 17.760302, 12.994987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393066, 18.115185, 13.620004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.054535, 18.319599, 13.559906>,  <20.851416, 18.442247, 13.523848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.054535, 18.319599, 13.559906>,  <21.393066, 18.115185, 13.620004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054535, 18.319599, 13.559906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206745, -0.055203, 0.976836,
		0.490903, 0.857786, 0.152373,
		-0.846328, 0.511034, -0.150244,
		20.800636, 18.472910, 13.514832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.381123, 18.691351, 14.131052>,  <21.393066, 18.115185, 13.620004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.381123, 18.691351, 14.131052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009964, 18.639587, 13.991188>,  <20.787270, 18.608530, 13.907269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009964, 18.639587, 13.991188>,  <21.381123, 18.691351, 14.131052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009964, 18.639587, 13.991188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370993, 0.227252, 0.900400,
		-0.037058, 0.965200, -0.258876,
		-0.927896, -0.129408, -0.349660,
		20.731596, 18.600765, 13.886290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099384, 19.410469, 14.045361>,  <21.381123, 18.691351, 14.131052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099384, 19.410469, 14.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827793, 19.123375, 14.107130>,  <20.664839, 18.951118, 14.144192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827793, 19.123375, 14.107130>,  <21.099384, 19.410469, 14.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827793, 19.123375, 14.107130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208946, 0.390561, 0.896551,
		-0.703797, 0.576473, -0.415150,
		-0.678979, -0.717734, 0.154424,
		20.624100, 18.908054, 14.153458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.519539, 19.749462, 14.363754>,  <21.099384, 19.410469, 14.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.519539, 19.749462, 14.363754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.464329, 19.369644, 14.476404>,  <20.431202, 19.141754, 14.543994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.464329, 19.369644, 14.476404>,  <20.519539, 19.749462, 14.363754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464329, 19.369644, 14.476404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352832, 0.312832, 0.881842,
		-0.925450, 0.022352, -0.378209,
		-0.138027, -0.949545, 0.281624,
		20.422920, 19.084780, 14.560891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778124, 19.567137, 14.623850>,  <20.519539, 19.749462, 14.363754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778124, 19.567137, 14.623850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013863, 19.289391, 14.789028>,  <20.155306, 19.122744, 14.888135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013863, 19.289391, 14.789028>,  <19.778124, 19.567137, 14.623850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013863, 19.289391, 14.789028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247401, 0.331471, 0.910451,
		-0.769065, -0.638736, 0.023565,
		0.589349, -0.694366, 0.412946,
		20.190668, 19.081081, 14.912912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450344, 19.461620, 15.304699>,  <19.778124, 19.567137, 14.623850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450344, 19.461620, 15.304699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794964, 19.271454, 15.375929>,  <20.001736, 19.157354, 15.418667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794964, 19.271454, 15.375929>,  <19.450344, 19.461620, 15.304699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794964, 19.271454, 15.375929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228375, -0.049667, 0.972305,
		-0.453407, -0.878357, -0.151364,
		0.861549, -0.475418, 0.178075,
		20.053429, 19.128828, 15.429352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336563, 18.780764, 15.680864>,  <19.450344, 19.461620, 15.304699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336563, 18.780764, 15.680864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708191, 18.913334, 15.746582>,  <19.931168, 18.992876, 15.786013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708191, 18.913334, 15.746582>,  <19.336563, 18.780764, 15.680864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708191, 18.913334, 15.746582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118374, -0.154417, 0.980889,
		0.350460, -0.930760, -0.104232,
		0.929067, 0.331424, 0.164295,
		19.986912, 19.012760, 15.795871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732994, 18.305176, 16.144379>,  <19.336563, 18.780764, 15.680864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732994, 18.305176, 16.144379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932758, 18.649914, 16.179728>,  <20.052616, 18.856756, 16.200937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932758, 18.649914, 16.179728>,  <19.732994, 18.305176, 16.144379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932758, 18.649914, 16.179728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060837, -0.136637, 0.988751,
		0.864227, -0.488416, -0.120670,
		0.499410, 0.861847, 0.088372,
		20.082581, 18.908468, 16.206240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021257, 18.164179, 16.753677>,  <19.732994, 18.305176, 16.144379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021257, 18.164179, 16.753677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097672, 18.555405, 16.720469>,  <20.143520, 18.790140, 16.700542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097672, 18.555405, 16.720469>,  <20.021257, 18.164179, 16.753677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097672, 18.555405, 16.720469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041618, 0.076435, 0.996205,
		0.980701, -0.193764, -0.026103,
		0.191033, 0.978066, -0.083024,
		20.154982, 18.848824, 16.695562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707981, 18.234814, 17.091873>,  <20.021257, 18.164179, 16.753677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707981, 18.234814, 17.091873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.541851, 18.598640, 17.086348>,  <20.442173, 18.816936, 17.083033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.541851, 18.598640, 17.086348>,  <20.707981, 18.234814, 17.091873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.541851, 18.598640, 17.086348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044122, -0.004974, 0.999014,
		0.908601, 0.415527, 0.042198,
		-0.415328, 0.909567, -0.013815,
		20.417253, 18.871511, 17.082203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113605, 18.603008, 17.564482>,  <20.707981, 18.234814, 17.091873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113605, 18.603008, 17.564482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772453, 18.808559, 17.527542>,  <20.567762, 18.931890, 17.505379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772453, 18.808559, 17.527542>,  <21.113605, 18.603008, 17.564482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772453, 18.808559, 17.527542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018536, 0.206565, 0.978257,
		0.521779, 0.832624, -0.185701,
		-0.852879, 0.513876, -0.092348,
		20.516590, 18.962723, 17.499838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253473, 19.287642, 17.933088>,  <21.113605, 18.603008, 17.564482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253473, 19.287642, 17.933088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857864, 19.228569, 17.930912>,  <20.620499, 19.193127, 17.929605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857864, 19.228569, 17.930912>,  <21.253473, 19.287642, 17.933088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857864, 19.228569, 17.930912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055343, 0.335992, 0.940238,
		-0.137026, 0.930215, -0.340476,
		-0.989020, -0.147680, -0.005441,
		20.561159, 19.184265, 17.929279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891130, 19.914114, 18.201708>,  <21.253473, 19.287642, 17.933088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891130, 19.914114, 18.201708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636806, 19.607784, 18.240202>,  <20.484211, 19.423986, 18.263298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636806, 19.607784, 18.240202>,  <20.891130, 19.914114, 18.201708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636806, 19.607784, 18.240202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157142, 0.250506, 0.955276,
		-0.755679, 0.592253, -0.279618,
		-0.635811, -0.765822, 0.096234,
		20.446064, 19.378038, 18.269072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475895, 20.131676, 18.676241>,  <20.891130, 19.914114, 18.201708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475895, 20.131676, 18.676241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366184, 19.747040, 18.671875>,  <20.300358, 19.516258, 18.669256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366184, 19.747040, 18.671875>,  <20.475895, 20.131676, 18.676241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366184, 19.747040, 18.671875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233363, 0.055542, 0.970802,
		-0.932907, 0.268814, -0.239633,
		-0.274275, -0.961589, -0.010915,
		20.283901, 19.458563, 18.668600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833952, 20.034138, 19.053114>,  <20.475895, 20.131676, 18.676241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833952, 20.034138, 19.053114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975380, 19.660767, 19.077452>,  <20.060236, 19.436745, 19.092054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975380, 19.660767, 19.077452>,  <19.833952, 20.034138, 19.053114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975380, 19.660767, 19.077452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369283, -0.079527, 0.925908,
		-0.859429, -0.349842, -0.372817,
		0.353570, -0.933427, 0.060843,
		20.081451, 19.380739, 19.095705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391220, 19.702446, 19.490067>,  <19.833952, 20.034138, 19.053114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391220, 19.702446, 19.490067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695343, 19.442883, 19.478399>,  <19.877817, 19.287146, 19.471399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695343, 19.442883, 19.478399>,  <19.391220, 19.702446, 19.490067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695343, 19.442883, 19.478399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196809, -0.272927, 0.941688,
		-0.619030, -0.710232, -0.335220,
		0.760308, -0.648908, -0.029170,
		19.923435, 19.248211, 19.469648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196159, 19.011665, 19.786253>,  <19.391220, 19.702446, 19.490067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196159, 19.011665, 19.786253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591621, 19.037758, 19.840368>,  <19.828899, 19.053413, 19.872837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591621, 19.037758, 19.840368>,  <19.196159, 19.011665, 19.786253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591621, 19.037758, 19.840368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119152, -0.207748, 0.970898,
		0.091439, -0.976005, -0.197619,
		0.988657, 0.065231, 0.135289,
		19.888218, 19.057327, 19.880955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.298523, 18.441694, 20.141123>,  <19.196159, 19.011665, 19.786253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.298523, 18.441694, 20.141123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622261, 18.671936, 20.187843>,  <19.816504, 18.810081, 20.215876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622261, 18.671936, 20.187843>,  <19.298523, 18.441694, 20.141123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622261, 18.671936, 20.187843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050590, -0.129811, 0.990247,
		0.585153, -0.807359, -0.075942,
		0.809343, 0.575605, 0.116804,
		19.865065, 18.844618, 20.222885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791773, 18.099968, 20.479395>,  <19.298523, 18.441694, 20.141123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791773, 18.099968, 20.479395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899101, 18.477398, 20.557024>,  <19.963499, 18.703856, 20.603601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899101, 18.477398, 20.557024>,  <19.791773, 18.099968, 20.479395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899101, 18.477398, 20.557024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013748, -0.197691, 0.980168,
		0.963231, -0.265670, -0.040073,
		0.268323, 0.943577, 0.194075,
		19.979599, 18.760471, 20.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310333, 18.084087, 21.134604>,  <19.791773, 18.099968, 20.479395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310333, 18.084087, 21.134604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165684, 18.456837, 21.123037>,  <20.078894, 18.680487, 21.116098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165684, 18.456837, 21.123037>,  <20.310333, 18.084087, 21.134604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165684, 18.456837, 21.123037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061647, 0.054846, 0.996590,
		0.930283, 0.358610, -0.077281,
		-0.361626, 0.931875, -0.028915,
		20.057196, 18.736399, 21.114363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649246, 18.540802, 21.607325>,  <20.310333, 18.084087, 21.134604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649246, 18.540802, 21.607325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318016, 18.754902, 21.540630>,  <20.119278, 18.883362, 21.500614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318016, 18.754902, 21.540630>,  <20.649246, 18.540802, 21.607325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318016, 18.754902, 21.540630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072298, 0.192972, 0.978537,
		0.555935, 0.822357, -0.121098,
		-0.828076, 0.535248, -0.166735,
		20.069593, 18.915476, 21.490610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721943, 19.011351, 22.098005>,  <20.649246, 18.540802, 21.607325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721943, 19.011351, 22.098005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336395, 19.015495, 21.991537>,  <20.105066, 19.017982, 21.927656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336395, 19.015495, 21.991537>,  <20.721943, 19.011351, 22.098005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336395, 19.015495, 21.991537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, 0.161939, 0.951644,
		0.052965, 0.986746, -0.153383,
		-0.963870, 0.010363, -0.266170,
		20.047234, 19.018604, 21.911686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414232, 19.613451, 22.410480>,  <20.721943, 19.011351, 22.098005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414232, 19.613451, 22.410480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.120800, 19.354767, 22.326935>,  <19.944740, 19.199556, 22.276808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.120800, 19.354767, 22.326935>,  <20.414232, 19.613451, 22.410480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120800, 19.354767, 22.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273084, -0.000923, 0.961990,
		-0.622323, 0.762734, -0.175930,
		-0.733580, -0.646711, -0.208865,
		19.900726, 19.160753, 22.264275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787033, 19.956600, 22.495564>,  <20.414232, 19.613451, 22.410480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787033, 19.956600, 22.495564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725739, 19.565212, 22.550869>,  <19.688963, 19.330379, 22.584053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725739, 19.565212, 22.550869>,  <19.787033, 19.956600, 22.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725739, 19.565212, 22.550869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472549, 0.195438, 0.859361,
		-0.867881, 0.066347, -0.492323,
		-0.153234, -0.978469, 0.138265,
		19.679768, 19.271671, 22.592348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409929, 20.016203, 22.997356>,  <19.787033, 19.956600, 22.495564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.409929, 20.016203, 22.997356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.452618, 19.618996, 23.017462>,  <19.478230, 19.380671, 23.029526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.452618, 19.618996, 23.017462>,  <19.409929, 20.016203, 22.997356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452618, 19.618996, 23.017462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124306, 0.036830, 0.991560,
		-0.986488, -0.112067, -0.119507,
		0.106720, -0.993018, 0.050263,
		19.484634, 19.321091, 23.032541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851919, 19.734753, 23.507500>,  <19.409929, 20.016203, 22.997356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851919, 19.734753, 23.507500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.137383, 19.454655, 23.500027>,  <19.308661, 19.286596, 23.495543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.137383, 19.454655, 23.500027>,  <18.851919, 19.734753, 23.507500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137383, 19.454655, 23.500027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051187, -0.078732, 0.995581,
		-0.698619, -0.709550, -0.092031,
		0.713660, -0.700243, -0.018684,
		19.351480, 19.244581, 23.494421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.601463, 19.233419, 23.857119>,  <18.851919, 19.734753, 23.507500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.601463, 19.233419, 23.857119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992928, 19.151619, 23.865133>,  <19.227806, 19.102539, 23.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992928, 19.151619, 23.865133>,  <18.601463, 19.233419, 23.857119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992928, 19.151619, 23.865133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012391, 0.038605, 0.999178,
		-0.205109, -0.978104, 0.035247,
		0.978660, -0.204503, 0.020038,
		19.286526, 19.090267, 23.871145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730068, 18.599539, 24.363726>,  <18.601463, 19.233419, 23.857119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730068, 18.599539, 24.363726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079792, 18.793278, 24.351122>,  <19.289625, 18.909521, 24.343559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079792, 18.793278, 24.351122>,  <18.730068, 18.599539, 24.363726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079792, 18.793278, 24.351122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041518, -0.009954, 0.999088,
		0.483592, -0.874819, -0.028812,
		0.874309, 0.484347, -0.031507,
		19.342085, 18.938581, 24.341669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165932, 18.377459, 24.974297>,  <18.730068, 18.599539, 24.363726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165932, 18.377459, 24.974297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353737, 18.717331, 24.878298>,  <19.466421, 18.921255, 24.820700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353737, 18.717331, 24.878298>,  <19.165932, 18.377459, 24.974297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353737, 18.717331, 24.878298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009432, 0.276630, 0.960930,
		0.882874, -0.448907, 0.137896,
		0.469515, 0.849681, -0.239995,
		19.494591, 18.972235, 24.806299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644251, 18.484745, 25.503139>,  <19.165932, 18.377459, 24.974297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644251, 18.484745, 25.503139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608162, 18.845844, 25.334900>,  <19.586508, 19.062504, 25.233955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608162, 18.845844, 25.334900>,  <19.644251, 18.484745, 25.503139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608162, 18.845844, 25.334900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076034, 0.427334, 0.900891,
		0.993015, 0.049301, -0.107195,
		-0.090223, 0.902749, -0.420600,
		19.581095, 19.116669, 25.208719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.357201, 18.994341, 25.550632>,  <19.644251, 18.484745, 25.503139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.357201, 18.994341, 25.550632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.977135, 19.118210, 25.565022>,  <19.749096, 19.192532, 25.573654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.977135, 19.118210, 25.565022>,  <20.357201, 18.994341, 25.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977135, 19.118210, 25.565022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145456, 0.338298, 0.929729,
		0.275741, 0.888627, -0.366482,
		-0.950163, 0.309671, 0.035973,
		19.692085, 19.211111, 25.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979025, 18.688293, 26.133860>,  <20.357201, 18.994341, 25.550632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979025, 18.688293, 26.133860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092304, 18.825176, 26.492231>,  <20.160273, 18.907307, 26.707254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092304, 18.825176, 26.492231>,  <19.979025, 18.688293, 26.133860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092304, 18.825176, 26.492231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944357, -0.063455, 0.322744,
		0.167297, -0.937479, 0.305198,
		0.283200, 0.342209, 0.895930,
		20.177263, 18.927839, 26.761011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.569771, 18.285526, 26.593941>,  <19.979025, 18.688293, 26.133860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.569771, 18.285526, 26.593941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696644, 18.641380, 26.725359>,  <19.772768, 18.854893, 26.804209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696644, 18.641380, 26.725359>,  <19.569771, 18.285526, 26.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696644, 18.641380, 26.725359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893100, 0.163671, 0.419027,
		0.319010, -0.426330, 0.846449,
		0.317183, 0.889638, 0.328543,
		19.791800, 18.908272, 26.823921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227970, 18.419649, 27.217533>,  <19.569771, 18.285526, 26.593941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.227970, 18.419649, 27.217533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343872, 18.763863, 27.049950>,  <19.413414, 18.970390, 26.949400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343872, 18.763863, 27.049950>,  <19.227970, 18.419649, 27.217533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343872, 18.763863, 27.049950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884422, 0.408057, 0.226466,
		0.365840, 0.304917, 0.879310,
		0.289755, 0.860533, -0.418959,
		19.430798, 19.022022, 26.924261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199829, 18.889654, 27.699081>,  <19.227970, 18.419649, 27.217533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199829, 18.889654, 27.699081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162720, 19.049519, 27.334299>,  <19.140453, 19.145437, 27.115429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162720, 19.049519, 27.334299>,  <19.199829, 18.889654, 27.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162720, 19.049519, 27.334299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805563, 0.508183, 0.304660,
		0.585201, 0.762904, 0.274803,
		-0.092776, 0.399659, -0.911957,
		19.134888, 19.169416, 27.060713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138247, 19.578695, 27.794437>,  <19.199829, 18.889654, 27.699081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138247, 19.578695, 27.794437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977856, 19.513275, 27.433889>,  <18.881620, 19.474022, 27.217560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977856, 19.513275, 27.433889>,  <19.138247, 19.578695, 27.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977856, 19.513275, 27.433889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726307, 0.656402, 0.203997,
		0.558297, 0.736470, -0.381991,
		-0.400976, -0.163552, -0.901371,
		18.857563, 19.464211, 27.163479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101639, 20.308062, 27.445089>,  <19.138247, 19.578695, 27.794437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101639, 20.308062, 27.445089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821949, 20.043808, 27.335798>,  <18.654135, 19.885256, 27.270224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821949, 20.043808, 27.335798>,  <19.101639, 20.308062, 27.445089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821949, 20.043808, 27.335798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711371, 0.680897, 0.174155,
		0.070987, 0.316140, -0.946053,
		-0.699222, -0.660632, -0.273228,
		18.612183, 19.845619, 27.253830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556051, 20.662058, 26.987844>,  <19.101639, 20.308062, 27.445089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556051, 20.662058, 26.987844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406651, 20.360893, 27.204592>,  <18.317011, 20.180195, 27.334641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406651, 20.360893, 27.204592>,  <18.556051, 20.662058, 26.987844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406651, 20.360893, 27.204592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724707, 0.601472, 0.336202,
		-0.579049, -0.267123, -0.770291,
		-0.373500, -0.752912, 0.541867,
		18.294600, 20.135019, 27.367151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896162, 20.471252, 26.805841>,  <18.556051, 20.662058, 26.987844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896162, 20.471252, 26.805841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983982, 20.428219, 27.193703>,  <18.036674, 20.402399, 27.426418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983982, 20.428219, 27.193703>,  <17.896162, 20.471252, 26.805841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983982, 20.428219, 27.193703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684431, 0.691291, 0.231669,
		-0.695236, -0.714522, 0.078137,
		0.219548, -0.107585, 0.969652,
		18.049847, 20.395943, 27.484598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051888, 20.687263, 26.144829>,  <17.896162, 20.471252, 26.805841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051888, 20.687263, 26.144829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.384384, 20.550529, 25.969475>,  <18.583883, 20.468489, 25.864262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.384384, 20.550529, 25.969475>,  <18.051888, 20.687263, 26.144829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384384, 20.550529, 25.969475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095907, 0.688586, -0.718785,
		0.547572, 0.639530, 0.539598,
		0.831244, -0.341836, -0.438386,
		18.633757, 20.447979, 25.837959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436228, 21.245686, 25.768215>,  <18.051888, 20.687263, 26.144829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436228, 21.245686, 25.768215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577328, 20.917645, 25.587994>,  <18.661987, 20.720819, 25.479860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577328, 20.917645, 25.587994>,  <18.436228, 21.245686, 25.768215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577328, 20.917645, 25.587994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093390, 0.509956, -0.855115,
		0.931045, 0.259565, 0.256477,
		0.352750, -0.820104, -0.450552,
		18.683153, 20.671614, 25.452827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990005, 21.509972, 25.369684>,  <18.436228, 21.245686, 25.768215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990005, 21.509972, 25.369684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893063, 21.157795, 25.206671>,  <18.834898, 20.946489, 25.108864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893063, 21.157795, 25.206671>,  <18.990005, 21.509972, 25.369684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893063, 21.157795, 25.206671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265367, 0.343879, -0.900737,
		0.933190, -0.326444, 0.150300,
		-0.242355, -0.880444, -0.407532,
		18.820356, 20.893661, 25.084412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329073, 21.527775, 24.728596>,  <18.990005, 21.509972, 25.369684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.329073, 21.527775, 24.728596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069748, 21.238270, 24.634058>,  <18.914152, 21.064568, 24.577335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069748, 21.238270, 24.634058>,  <19.329073, 21.527775, 24.728596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069748, 21.238270, 24.634058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007320, 0.304479, -0.952491,
		0.761338, -0.619244, -0.192100,
		-0.648314, -0.723761, -0.236344,
		18.875254, 21.021141, 24.563154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560684, 21.034197, 24.233072>,  <19.329073, 21.527775, 24.728596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560684, 21.034197, 24.233072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163357, 21.029003, 24.187197>,  <18.924961, 21.025887, 24.159672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163357, 21.029003, 24.187197>,  <19.560684, 21.034197, 24.233072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163357, 21.029003, 24.187197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098323, 0.425272, -0.899709,
		0.060455, -0.904973, -0.421153,
		-0.993317, -0.012983, -0.114689,
		18.865362, 21.025108, 24.152790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480358, 21.000324, 23.543571>,  <19.560684, 21.034197, 24.233072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480358, 21.000324, 23.543571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107704, 21.106518, 23.642832>,  <18.884111, 21.170233, 23.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107704, 21.106518, 23.642832>,  <19.480358, 21.000324, 23.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107704, 21.106518, 23.642832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085296, 0.504033, -0.859462,
		-0.353249, -0.821870, -0.446929,
		-0.931633, 0.265482, 0.248151,
		18.828215, 21.186163, 23.717278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979996, 20.845041, 23.025537>,  <19.480358, 21.000324, 23.543571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979996, 20.845041, 23.025537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828518, 21.157021, 23.224846>,  <18.737631, 21.344208, 23.344431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828518, 21.157021, 23.224846>,  <18.979996, 20.845041, 23.025537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828518, 21.157021, 23.224846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030258, 0.527646, -0.848925,
		-0.925026, -0.336561, -0.176218,
		-0.378696, 0.779946, 0.498270,
		18.714909, 21.391005, 23.374327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.499004, 21.103342, 22.645477>,  <18.979996, 20.845041, 23.025537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.499004, 21.103342, 22.645477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472168, 21.410763, 22.899982>,  <18.456066, 21.595215, 23.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472168, 21.410763, 22.899982>,  <18.499004, 21.103342, 22.645477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472168, 21.410763, 22.899982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012618, 0.636993, -0.770766,
		-0.997667, -0.059741, -0.033039,
		-0.067092, 0.768551, 0.636261,
		18.452040, 21.641329, 23.090860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889109, 21.576464, 22.551601>,  <18.499004, 21.103342, 22.645477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889109, 21.576464, 22.551601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.160110, 21.787724, 22.756363>,  <18.322712, 21.914480, 22.879221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.160110, 21.787724, 22.756363>,  <17.889109, 21.576464, 22.551601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160110, 21.787724, 22.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002546, 0.697657, -0.716427,
		-0.735514, 0.484079, 0.474010,
		0.677504, 0.528149, 0.511905,
		18.363361, 21.946169, 22.909935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639652, 22.238268, 22.553919>,  <17.889109, 21.576464, 22.551601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639652, 22.238268, 22.553919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032639, 22.262417, 22.624474>,  <18.268431, 22.276907, 22.666807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032639, 22.262417, 22.624474>,  <17.639652, 22.238268, 22.553919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032639, 22.262417, 22.624474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091618, 0.667642, -0.738824,
		-0.162369, 0.742031, 0.650405,
		0.982467, 0.060373, 0.176388,
		18.327379, 22.280529, 22.677389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843555, 22.995956, 22.425241>,  <17.639652, 22.238268, 22.553919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843555, 22.995956, 22.425241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191795, 22.801182, 22.397095>,  <18.400740, 22.684317, 22.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191795, 22.801182, 22.397095>,  <17.843555, 22.995956, 22.425241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191795, 22.801182, 22.397095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213253, 0.502370, -0.837943,
		0.443374, 0.714507, 0.541203,
		0.870599, -0.486935, -0.070367,
		18.452974, 22.655102, 22.375984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271616, 23.506481, 22.125271>,  <17.843555, 22.995956, 22.425241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271616, 23.506481, 22.125271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487610, 23.174667, 22.068295>,  <18.617207, 22.975578, 22.034109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487610, 23.174667, 22.068295>,  <18.271616, 23.506481, 22.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487610, 23.174667, 22.068295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210277, 0.296826, -0.931493,
		0.814984, 0.473041, 0.334714,
		0.539986, -0.829534, -0.142439,
		18.649605, 22.925808, 22.025562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877333, 23.675682, 21.666578>,  <18.271616, 23.506481, 22.125271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877333, 23.675682, 21.666578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827492, 23.280083, 21.634678>,  <18.797588, 23.042723, 21.615538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827492, 23.280083, 21.634678>,  <18.877333, 23.675682, 21.666578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827492, 23.280083, 21.634678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384110, 0.026031, -0.922920,
		0.914841, -0.145630, 0.376640,
		-0.124600, -0.988997, -0.079752,
		18.790112, 22.983383, 21.610752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.615555, 23.380140, 21.331112>,  <18.877333, 23.675682, 21.666578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.615555, 23.380140, 21.331112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.324341, 23.112270, 21.272453>,  <19.149612, 22.951550, 21.237257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.324341, 23.112270, 21.272453>,  <19.615555, 23.380140, 21.331112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.324341, 23.112270, 21.272453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299091, -0.117794, -0.946926,
		0.616857, -0.733254, 0.286051,
		-0.728033, -0.669673, -0.146648,
		19.105930, 22.911369, 21.228458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927584, 22.813034, 20.986151>,  <19.615555, 23.380140, 21.331112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927584, 22.813034, 20.986151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535099, 22.830044, 20.910879>,  <19.299608, 22.840250, 20.865717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535099, 22.830044, 20.910879>,  <19.927584, 22.813034, 20.986151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535099, 22.830044, 20.910879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184078, -0.085626, -0.979175,
		-0.057748, -0.995420, 0.076190,
		-0.981214, 0.042520, -0.188179,
		19.240734, 22.842800, 20.854425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802628, 22.218565, 20.571772>,  <19.927584, 22.813034, 20.986151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802628, 22.218565, 20.571772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489391, 22.454594, 20.493196>,  <19.301451, 22.596210, 20.446051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489391, 22.454594, 20.493196>,  <19.802628, 22.218565, 20.571772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489391, 22.454594, 20.493196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155836, -0.119608, -0.980515,
		-0.602070, -0.798442, 0.001710,
		-0.783089, 0.590072, -0.196438,
		19.254465, 22.631615, 20.434265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335299, 21.771879, 20.038998>,  <19.802628, 22.218565, 20.571772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335299, 21.771879, 20.038998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248291, 22.162052, 20.025047>,  <19.196087, 22.396156, 20.016678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248291, 22.162052, 20.025047>,  <19.335299, 21.771879, 20.038998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248291, 22.162052, 20.025047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040555, -0.044730, -0.998176,
		-0.975214, -0.215705, 0.049288,
		-0.217516, 0.975434, -0.034874,
		19.183037, 22.454681, 20.014585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924656, 21.808290, 19.573410>,  <19.335299, 21.771879, 20.038998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924656, 21.808290, 19.573410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046700, 22.189011, 19.585997>,  <19.119925, 22.417442, 19.593548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046700, 22.189011, 19.585997>,  <18.924656, 21.808290, 19.573410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046700, 22.189011, 19.585997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198447, -0.031230, -0.979614,
		-0.931412, 0.305131, -0.198410,
		0.305107, 0.951798, 0.031464,
		19.138231, 22.474550, 19.595436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853731, 21.883024, 18.928009>,  <18.924656, 21.808290, 19.573410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853731, 21.883024, 18.928009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054455, 22.209553, 19.042414>,  <19.174889, 22.405470, 19.111055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054455, 22.209553, 19.042414>,  <18.853731, 21.883024, 18.928009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054455, 22.209553, 19.042414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279782, 0.159697, -0.946688,
		-0.818479, 0.555079, -0.148255,
		0.501811, 0.816323, 0.286010,
		19.204998, 22.454451, 19.128216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716934, 22.479361, 18.498795>,  <18.853731, 21.883024, 18.928009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716934, 22.479361, 18.498795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079273, 22.538017, 18.657761>,  <19.296677, 22.573212, 18.753139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079273, 22.538017, 18.657761>,  <18.716934, 22.479361, 18.498795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079273, 22.538017, 18.657761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405781, -0.031098, -0.913441,
		-0.121592, 0.988700, -0.087675,
		0.905846, 0.146644, 0.397414,
		19.351027, 22.582010, 18.776985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978472, 23.015255, 18.059116>,  <18.716934, 22.479361, 18.498795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978472, 23.015255, 18.059116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297726, 22.844528, 18.229204>,  <19.489279, 22.742092, 18.331257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297726, 22.844528, 18.229204>,  <18.978472, 23.015255, 18.059116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.297726, 22.844528, 18.229204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491246, 0.052429, -0.869442,
		0.348797, 0.902817, 0.251517,
		0.798134, -0.426816, 0.425218,
		19.537167, 22.716484, 18.356770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620556, 23.331184, 17.774809>,  <18.978472, 23.015255, 18.059116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620556, 23.331184, 17.774809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767769, 22.990997, 17.925146>,  <19.856096, 22.786884, 18.015348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767769, 22.990997, 17.925146>,  <19.620556, 23.331184, 17.774809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767769, 22.990997, 17.925146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544952, -0.130219, -0.828294,
		0.753379, 0.509655, 0.415539,
		0.368032, -0.850467, 0.375842,
		19.878178, 22.735857, 18.037899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313126, 23.417187, 17.795889>,  <19.620556, 23.331184, 17.774809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.313126, 23.417187, 17.795889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254829, 23.021473, 17.799273>,  <20.219852, 22.784044, 17.801304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254829, 23.021473, 17.799273>,  <20.313126, 23.417187, 17.795889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254829, 23.021473, 17.799273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547088, -0.087716, -0.832466,
		0.824290, -0.116694, 0.554011,
		-0.145740, -0.989287, 0.008462,
		20.211107, 22.724688, 17.801811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.922962, 23.202320, 17.592831>,  <20.313126, 23.417187, 17.795889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.922962, 23.202320, 17.592831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678448, 22.887428, 17.560331>,  <20.531738, 22.698494, 17.540833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678448, 22.887428, 17.560331>,  <20.922962, 23.202320, 17.592831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678448, 22.887428, 17.560331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387713, -0.208389, -0.897916,
		0.689934, -0.580384, 0.432603,
		-0.611286, -0.787228, -0.081248,
		20.495062, 22.651260, 17.535957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278780, 22.698986, 17.337717>,  <20.922962, 23.202320, 17.592831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278780, 22.698986, 17.337717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913685, 22.585728, 17.219912>,  <20.694628, 22.517773, 17.149229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913685, 22.585728, 17.219912>,  <21.278780, 22.698986, 17.337717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913685, 22.585728, 17.219912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339616, -0.125148, -0.932201,
		0.227092, -0.950876, 0.210389,
		-0.912738, -0.283147, -0.294513,
		20.639864, 22.500784, 17.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347311, 22.048475, 16.983482>,  <21.278780, 22.698986, 17.337717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347311, 22.048475, 16.983482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.984493, 22.171097, 16.868036>,  <20.766804, 22.244669, 16.798769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.984493, 22.171097, 16.868036>,  <21.347311, 22.048475, 16.983482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984493, 22.171097, 16.868036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193758, -0.304677, -0.932540,
		-0.373811, -0.901773, 0.216957,
		-0.907041, 0.306556, -0.288617,
		20.712381, 22.263063, 16.781452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046722, 21.463696, 16.581213>,  <21.347311, 22.048475, 16.983482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046722, 21.463696, 16.581213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865311, 21.800465, 16.464266>,  <20.756464, 22.002525, 16.394096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865311, 21.800465, 16.464266>,  <21.046722, 21.463696, 16.581213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865311, 21.800465, 16.464266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153903, -0.249136, -0.956161,
		-0.877853, -0.478643, -0.016584,
		-0.453528, 0.841922, -0.292370,
		20.729252, 22.053041, 16.376554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716234, 21.293667, 15.999732>,  <21.046722, 21.463696, 16.581213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716234, 21.293667, 15.999732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690742, 21.688305, 15.939646>,  <20.675447, 21.925089, 15.903594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690742, 21.688305, 15.939646>,  <20.716234, 21.293667, 15.999732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690742, 21.688305, 15.939646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053570, -0.146922, -0.987696,
		-0.996528, -0.070993, -0.043489,
		-0.063730, 0.986597, -0.150215,
		20.671623, 21.984283, 15.894581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148796, 21.387951, 15.478674>,  <20.716234, 21.293667, 15.999732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148796, 21.387951, 15.478674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374405, 21.718254, 15.477829>,  <20.509769, 21.916435, 15.477322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374405, 21.718254, 15.477829>,  <20.148796, 21.387951, 15.478674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374405, 21.718254, 15.477829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028619, -0.022104, -0.999346,
		-0.825264, 0.563593, -0.036099,
		0.564022, 0.825757, -0.002112,
		20.543612, 21.965981, 15.477196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834196, 21.851006, 15.064935>,  <20.148796, 21.387951, 15.478674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834196, 21.851006, 15.064935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210205, 21.985493, 15.041901>,  <20.435810, 22.066185, 15.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210205, 21.985493, 15.041901>,  <19.834196, 21.851006, 15.064935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210205, 21.985493, 15.041901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069371, 0.023138, -0.997322,
		-0.333987, 0.941499, 0.045074,
		0.940021, 0.336220, -0.057585,
		20.492212, 22.086359, 15.024625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859808, 22.404291, 14.611674>,  <19.834196, 21.851006, 15.064935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859808, 22.404291, 14.611674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240574, 22.282421, 14.624493>,  <20.469034, 22.209299, 14.632183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240574, 22.282421, 14.624493>,  <19.859808, 22.404291, 14.611674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240574, 22.282421, 14.624493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069443, 0.112713, -0.991198,
		0.298383, 0.945763, 0.128451,
		0.951916, -0.304677, 0.032045,
		20.526150, 22.191017, 14.634107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041079, 22.707754, 13.998893>,  <19.859808, 22.404291, 14.611674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041079, 22.707754, 13.998893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363842, 22.492359, 14.095995>,  <20.557499, 22.363121, 14.154256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363842, 22.492359, 14.095995>,  <20.041079, 22.707754, 13.998893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363842, 22.492359, 14.095995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234427, -0.085276, -0.968386,
		0.542167, 0.838306, 0.057427,
		0.806907, -0.538489, 0.242755,
		20.605915, 22.330812, 14.168821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546089, 22.988689, 13.606561>,  <20.041079, 22.707754, 13.998893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546089, 22.988689, 13.606561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701851, 22.625362, 13.667650>,  <20.795307, 22.407366, 13.704304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701851, 22.625362, 13.667650>,  <20.546089, 22.988689, 13.606561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701851, 22.625362, 13.667650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310108, -0.026841, -0.950322,
		0.867293, 0.417421, 0.271224,
		0.389405, -0.908316, 0.152725,
		20.818672, 22.352867, 13.713468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308086, 23.044403, 13.364869>,  <20.546089, 22.988689, 13.606561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308086, 23.044403, 13.364869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180141, 22.665600, 13.353098>,  <21.103374, 22.438318, 13.346035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180141, 22.665600, 13.353098>,  <21.308086, 23.044403, 13.364869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180141, 22.665600, 13.353098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320897, -0.079057, -0.943809,
		0.891468, -0.311331, 0.329179,
		-0.319861, -0.947008, -0.029428,
		21.084183, 22.381498, 13.344270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932037, 22.625303, 13.233002>,  <21.308086, 23.044403, 13.364869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932037, 22.625303, 13.233002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637558, 22.375065, 13.129744>,  <21.460871, 22.224922, 13.067788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637558, 22.375065, 13.129744>,  <21.932037, 22.625303, 13.233002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637558, 22.375065, 13.129744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493920, -0.235908, -0.836893,
		0.462658, -0.743624, 0.482670,
		-0.736200, -0.625596, -0.258146,
		21.416698, 22.187386, 13.052299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246058, 21.919363, 13.007130>,  <21.932037, 22.625303, 13.233002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246058, 21.919363, 13.007130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878452, 21.955471, 12.853628>,  <21.657888, 21.977135, 12.761527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878452, 21.955471, 12.853628>,  <22.246058, 21.919363, 13.007130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878452, 21.955471, 12.853628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366263, -0.164585, -0.915840,
		-0.145822, -0.982225, 0.118198,
		-0.919014, 0.090258, -0.383752,
		21.602749, 21.982552, 12.738503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179689, 21.433445, 12.437497>,  <22.246058, 21.919363, 13.007130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179689, 21.433445, 12.437497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862873, 21.656731, 12.338648>,  <21.672783, 21.790701, 12.279338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862873, 21.656731, 12.338648>,  <22.179689, 21.433445, 12.437497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862873, 21.656731, 12.338648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167019, -0.191217, -0.967233,
		-0.587176, -0.807363, 0.058220,
		-0.792041, 0.558212, -0.247123,
		21.625261, 21.824194, 12.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792812, 20.999554, 12.011977>,  <22.179689, 21.433445, 12.437497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792812, 20.999554, 12.011977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.700859, 21.379654, 11.927906>,  <21.645687, 21.607714, 11.877463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.700859, 21.379654, 11.927906>,  <21.792812, 20.999554, 12.011977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.700859, 21.379654, 11.927906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220416, -0.159515, -0.962274,
		-0.947930, -0.267537, -0.172780,
		-0.229883, 0.950252, -0.210179,
		21.631895, 21.664730, 11.864852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.203629, 21.076281, 11.440152>,  <21.792812, 20.999554, 12.011977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.203629, 21.076281, 11.440152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304504, 21.461800, 11.405524>,  <21.365030, 21.693111, 11.384748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304504, 21.461800, 11.405524>,  <21.203629, 21.076281, 11.440152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304504, 21.461800, 11.405524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068390, -0.071485, -0.995094,
		-0.965258, 0.256875, 0.047886,
		0.252191, 0.963797, -0.086569,
		21.380161, 21.750938, 11.379554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773018, 21.364611, 11.001200>,  <21.203629, 21.076281, 11.440152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773018, 21.364611, 11.001200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092854, 21.604580, 10.990230>,  <21.284756, 21.748562, 10.983647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092854, 21.604580, 10.990230>,  <20.773018, 21.364611, 11.001200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092854, 21.604580, 10.990230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016511, -0.023687, -0.999583,
		-0.600320, 0.799708, -0.009034,
		0.799589, 0.599921, -0.027424,
		21.332729, 21.784555, 10.982002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636095, 21.865108, 10.509976>,  <20.773018, 21.364611, 11.001200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636095, 21.865108, 10.509976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034058, 21.903255, 10.523018>,  <21.272835, 21.926144, 10.530843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034058, 21.903255, 10.523018>,  <20.636095, 21.865108, 10.509976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034058, 21.903255, 10.523018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041412, -0.091885, -0.994908,
		-0.091885, 0.991192, -0.095366,
		0.994908, 0.095366, 0.032605,
		21.332531, 21.931866, 10.532800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884565, 22.314131, 10.531834>,  <20.636095, 21.865108, 10.509976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884565, 22.314131, 10.531834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516285, 22.409439, 10.408198>,  <19.295317, 22.466623, 10.334018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516285, 22.409439, 10.408198>,  <19.884565, 22.314131, 10.531834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516285, 22.409439, 10.408198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280947, 0.145056, 0.948698,
		0.270882, 0.960305, -0.066612,
		-0.920702, 0.238271, -0.309088,
		19.240074, 22.480921, 10.315472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596128, 22.958008, 10.801154>,  <19.884565, 22.314131, 10.531834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596128, 22.958008, 10.801154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344196, 22.651459, 10.750580>,  <19.193037, 22.467529, 10.720236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344196, 22.651459, 10.750580>,  <19.596128, 22.958008, 10.801154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344196, 22.651459, 10.750580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238281, 0.035709, 0.970540,
		-0.739281, 0.641402, -0.205103,
		-0.629830, -0.766374, -0.126435,
		19.155247, 22.421547, 10.712649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988762, 23.190487, 11.041090>,  <19.596128, 22.958008, 10.801154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988762, 23.190487, 11.041090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942539, 22.793175, 11.043476>,  <18.914804, 22.554787, 11.044908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942539, 22.793175, 11.043476>,  <18.988762, 23.190487, 11.041090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942539, 22.793175, 11.043476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488548, 0.062064, 0.870327,
		-0.864851, 0.097660, -0.492438,
		-0.115559, -0.993283, 0.005964,
		18.907871, 22.495190, 11.045265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327124, 23.077898, 11.280120>,  <18.988762, 23.190487, 11.041090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327124, 23.077898, 11.280120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491928, 22.715691, 11.320692>,  <18.590811, 22.498367, 11.345036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491928, 22.715691, 11.320692>,  <18.327124, 23.077898, 11.280120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491928, 22.715691, 11.320692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378706, -0.068929, 0.922947,
		-0.828752, -0.418675, -0.371324,
		0.412009, -0.905517, 0.101430,
		18.615532, 22.444036, 11.351121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844780, 22.760231, 11.666952>,  <18.327124, 23.077898, 11.280120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844780, 22.760231, 11.666952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180836, 22.548893, 11.715963>,  <18.382469, 22.422091, 11.745370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180836, 22.548893, 11.715963>,  <17.844780, 22.760231, 11.666952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180836, 22.548893, 11.715963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111637, 0.052617, 0.992355,
		-0.530755, -0.847397, -0.014777,
		0.840141, -0.528347, 0.122528,
		18.432878, 22.390388, 11.752722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629532, 22.217588, 12.020663>,  <17.844780, 22.760231, 11.666952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629532, 22.217588, 12.020663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.020596, 22.249519, 12.098441>,  <18.255234, 22.268679, 12.145108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.020596, 22.249519, 12.098441>,  <17.629532, 22.217588, 12.020663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020596, 22.249519, 12.098441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198051, 0.039980, 0.979376,
		0.070414, -0.996006, 0.054898,
		0.977660, 0.079835, 0.194445,
		18.313894, 22.273468, 12.156775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810225, 21.758924, 12.646823>,  <17.629532, 22.217588, 12.020663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810225, 21.758924, 12.646823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127617, 22.002197, 12.637841>,  <18.318052, 22.148161, 12.632452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127617, 22.002197, 12.637841>,  <17.810225, 21.758924, 12.646823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127617, 22.002197, 12.637841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029561, -0.001664, 0.999562,
		0.607876, -0.793797, -0.019299,
		0.793481, 0.608180, -0.022454,
		18.365662, 22.184650, 12.631105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251883, 21.608284, 13.256211>,  <17.810225, 21.758924, 12.646823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251883, 21.608284, 13.256211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372398, 21.976379, 13.156301>,  <18.444708, 22.197237, 13.096355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372398, 21.976379, 13.156301>,  <18.251883, 21.608284, 13.256211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372398, 21.976379, 13.156301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044811, 0.247993, 0.967725,
		0.952480, -0.302756, 0.033480,
		0.301288, 0.920238, -0.249775,
		18.462784, 22.252451, 13.081368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691132, 21.761183, 13.780211>,  <18.251883, 21.608284, 13.256211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691132, 21.761183, 13.780211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602238, 22.111275, 13.608358>,  <18.548901, 22.321329, 13.505247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602238, 22.111275, 13.608358>,  <18.691132, 21.761183, 13.780211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602238, 22.111275, 13.608358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131355, 0.409757, 0.902688,
		0.966104, 0.257043, 0.023903,
		-0.222235, 0.875230, -0.429632,
		18.535566, 22.373844, 13.479469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977102, 22.219265, 14.255627>,  <18.691132, 21.761183, 13.780211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977102, 22.219265, 14.255627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.730370, 22.426327, 14.018459>,  <18.582331, 22.550564, 13.876159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.730370, 22.426327, 14.018459>,  <18.977102, 22.219265, 14.255627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730370, 22.426327, 14.018459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266804, 0.571189, 0.776247,
		0.740497, 0.637006, -0.214214,
		-0.616830, 0.517655, -0.592919,
		18.545321, 22.581623, 13.840584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057333, 22.985199, 14.419068>,  <18.977102, 22.219265, 14.255627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057333, 22.985199, 14.419068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696423, 22.925781, 14.257164>,  <18.479876, 22.890131, 14.160022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696423, 22.925781, 14.257164>,  <19.057333, 22.985199, 14.419068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696423, 22.925781, 14.257164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405937, 0.609030, 0.681394,
		0.145295, 0.779114, -0.609812,
		-0.902277, -0.148542, -0.404760,
		18.425739, 22.881218, 14.135736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708828, 23.547102, 14.474107>,  <19.057333, 22.985199, 14.419068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708828, 23.547102, 14.474107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.397133, 23.309795, 14.393286>,  <18.210115, 23.167412, 14.344793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.397133, 23.309795, 14.393286>,  <18.708828, 23.547102, 14.474107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.397133, 23.309795, 14.393286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435564, 0.280827, 0.855231,
		-0.450637, 0.754435, -0.477236,
		-0.779237, -0.593266, -0.202053,
		18.163363, 23.131815, 14.332670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105371, 23.950781, 14.402446>,  <18.708828, 23.547102, 14.474107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105371, 23.950781, 14.402446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026165, 23.573387, 14.508751>,  <17.978642, 23.346951, 14.572534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026165, 23.573387, 14.508751>,  <18.105371, 23.950781, 14.402446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026165, 23.573387, 14.508751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389489, 0.324543, 0.861957,
		-0.899493, 0.067172, -0.431741,
		-0.198019, -0.943482, 0.265762,
		17.966759, 23.290342, 14.588479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473362, 23.947412, 14.722848>,  <18.105371, 23.950781, 14.402446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473362, 23.947412, 14.722848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640911, 23.612637, 14.863747>,  <17.741440, 23.411772, 14.948286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640911, 23.612637, 14.863747>,  <17.473362, 23.947412, 14.722848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640911, 23.612637, 14.863747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390176, 0.184391, 0.902088,
		-0.819945, -0.515297, -0.249318,
		0.418871, -0.836940, 0.352246,
		17.766573, 23.361555, 14.969420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983324, 23.641144, 15.212697>,  <17.473362, 23.947412, 14.722848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983324, 23.641144, 15.212697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304150, 23.420921, 15.305292>,  <17.496645, 23.288788, 15.360849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304150, 23.420921, 15.305292>,  <16.983324, 23.641144, 15.212697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304150, 23.420921, 15.305292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337372, -0.097824, 0.936275,
		-0.492825, -0.829048, -0.264203,
		0.802062, -0.550555, 0.231487,
		17.544767, 23.255754, 15.374738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705349, 23.011856, 15.506258>,  <16.983324, 23.641144, 15.212697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705349, 23.011856, 15.506258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081196, 23.066776, 15.631649>,  <17.306704, 23.099730, 15.706883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081196, 23.066776, 15.631649>,  <16.705349, 23.011856, 15.506258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081196, 23.066776, 15.631649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285851, -0.188784, 0.939494,
		0.188174, -0.972373, -0.138137,
		0.939617, 0.137302, 0.313478,
		17.363081, 23.107967, 15.725693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843782, 22.508663, 16.045948>,  <16.705349, 23.011856, 15.506258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843782, 22.508663, 16.045948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151386, 22.756470, 16.108971>,  <17.335949, 22.905153, 16.146784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151386, 22.756470, 16.108971>,  <16.843782, 22.508663, 16.045948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151386, 22.756470, 16.108971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128463, -0.091669, 0.987469,
		0.626194, -0.779615, 0.009090,
		0.769011, 0.619515, 0.157554,
		17.382090, 22.942324, 16.156237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220404, 22.155689, 16.466686>,  <16.843782, 22.508663, 16.045948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220404, 22.155689, 16.466686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316219, 22.540131, 16.521677>,  <17.373709, 22.770796, 16.554670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316219, 22.540131, 16.521677>,  <17.220404, 22.155689, 16.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316219, 22.540131, 16.521677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031366, -0.133863, 0.990503,
		0.970380, -0.241578, -0.001920,
		0.239541, 0.961104, 0.137475,
		17.388083, 22.828463, 16.562920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503046, 22.118393, 17.068289>,  <17.220404, 22.155689, 16.466686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503046, 22.118393, 17.068289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434669, 22.510418, 17.027782>,  <17.393644, 22.745634, 17.003479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434669, 22.510418, 17.027782>,  <17.503046, 22.118393, 17.068289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434669, 22.510418, 17.027782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173091, 0.131049, 0.976148,
		0.969958, 0.149335, -0.192042,
		-0.170940, 0.980064, -0.101264,
		17.383389, 22.804438, 16.997404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011330, 22.431248, 17.411552>,  <17.503046, 22.118393, 17.068289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011330, 22.431248, 17.411552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706112, 22.689781, 17.409958>,  <17.522982, 22.844902, 17.409002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706112, 22.689781, 17.409958>,  <18.011330, 22.431248, 17.411552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706112, 22.689781, 17.409958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089583, 0.111861, 0.989678,
		0.640109, 0.754810, -0.143256,
		-0.763043, 0.646335, -0.003985,
		17.477200, 22.883682, 17.408762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192097, 22.967680, 17.876129>,  <18.011330, 22.431248, 17.411552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192097, 22.967680, 17.876129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792465, 22.980297, 17.864475>,  <17.552687, 22.987867, 17.857483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792465, 22.980297, 17.864475>,  <18.192097, 22.967680, 17.876129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792465, 22.980297, 17.864475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028541, 0.019100, 0.999410,
		0.032083, 0.999320, -0.018182,
		-0.999078, 0.031545, -0.029135,
		17.492743, 22.989761, 17.855734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056936, 23.558826, 18.291498>,  <18.192097, 22.967680, 17.876129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056936, 23.558826, 18.291498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.716385, 23.349648, 18.275124>,  <17.512054, 23.224140, 18.265299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.716385, 23.349648, 18.275124>,  <18.056936, 23.558826, 18.291498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.716385, 23.349648, 18.275124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183061, 0.223078, 0.957458,
		-0.491569, 0.822654, -0.285655,
		-0.851380, -0.522949, -0.040937,
		17.460970, 23.192762, 18.262842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499147, 23.885851, 18.547707>,  <18.056936, 23.558826, 18.291498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499147, 23.885851, 18.547707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352631, 23.514523, 18.573158>,  <17.264721, 23.291725, 18.588430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352631, 23.514523, 18.573158>,  <17.499147, 23.885851, 18.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352631, 23.514523, 18.573158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301996, 0.183284, 0.935524,
		-0.880130, 0.323459, -0.347485,
		-0.366292, -0.928322, 0.063630,
		17.242743, 23.236027, 18.592247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815350, 23.950733, 18.783247>,  <17.499147, 23.885851, 18.547707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815350, 23.950733, 18.783247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913841, 23.573483, 18.872587>,  <16.972937, 23.347132, 18.926191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913841, 23.573483, 18.872587>,  <16.815350, 23.950733, 18.783247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913841, 23.573483, 18.872587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488947, 0.078099, 0.868810,
		-0.836841, -0.323132, -0.441909,
		0.246228, -0.943126, 0.223351,
		16.987709, 23.290545, 18.939592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207462, 23.495575, 19.012180>,  <16.815350, 23.950733, 18.783247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207462, 23.495575, 19.012180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517910, 23.286087, 19.152670>,  <16.704178, 23.160395, 19.236963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517910, 23.286087, 19.152670>,  <16.207462, 23.495575, 19.012180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.517910, 23.286087, 19.152670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529998, -0.239971, 0.813336,
		-0.341679, -0.817391, -0.463818,
		0.776117, -0.523723, 0.351223,
		16.750746, 23.128971, 19.258038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799493, 23.075504, 19.534496>,  <16.207462, 23.495575, 19.012180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.799493, 23.075504, 19.534496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179146, 22.980984, 19.617739>,  <16.406937, 22.924271, 19.667685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179146, 22.980984, 19.617739>,  <15.799493, 23.075504, 19.534496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179146, 22.980984, 19.617739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247556, -0.151570, 0.956944,
		-0.194596, -0.959783, -0.202361,
		0.949130, -0.236314, 0.208105,
		16.463886, 22.910093, 19.680172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828341, 22.463511, 19.946110>,  <15.799493, 23.075504, 19.534496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.828341, 22.463511, 19.946110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180328, 22.643433, 20.007206>,  <16.391521, 22.751385, 20.043863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180328, 22.643433, 20.007206>,  <15.828341, 22.463511, 19.946110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180328, 22.643433, 20.007206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010076, -0.303793, 0.952685,
		0.474923, -0.839873, -0.262796,
		0.879970, 0.449804, 0.152741,
		16.444319, 22.778374, 20.053028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212387, 21.971596, 20.120222>,  <15.828341, 22.463511, 19.946110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212387, 21.971596, 20.120222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327438, 22.321358, 20.276522>,  <16.396469, 22.531216, 20.370302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327438, 22.321358, 20.276522>,  <16.212387, 21.971596, 20.120222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327438, 22.321358, 20.276522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093912, -0.380276, 0.920093,
		0.953126, -0.301342, -0.027261,
		0.287629, 0.874405, 0.390750,
		16.413727, 22.583679, 20.393747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212965, 21.740677, 20.779060>,  <16.212387, 21.971596, 20.120222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212965, 21.740677, 20.779060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321655, 22.123531, 20.819176>,  <16.386869, 22.353243, 20.843245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321655, 22.123531, 20.819176>,  <16.212965, 21.740677, 20.779060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321655, 22.123531, 20.819176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182773, -0.050990, 0.981832,
		0.944859, -0.285120, 0.161083,
		0.271727, 0.957135, 0.100290,
		16.403173, 22.410671, 20.849262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789284, 21.795546, 21.227867>,  <16.212965, 21.740677, 20.779060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789284, 21.795546, 21.227867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549706, 22.115711, 21.237659>,  <16.405958, 22.307812, 21.243536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549706, 22.115711, 21.237659>,  <16.789284, 21.795546, 21.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549706, 22.115711, 21.237659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168196, -0.155634, 0.973390,
		0.782927, 0.578890, 0.227843,
		-0.598946, 0.800415, 0.024483,
		16.370022, 22.355835, 21.245005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986319, 22.028395, 21.853569>,  <16.789284, 21.795546, 21.227867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986319, 22.028395, 21.853569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628941, 22.185181, 21.765823>,  <16.414515, 22.279253, 21.713177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628941, 22.185181, 21.765823>,  <16.986319, 22.028395, 21.853569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628941, 22.185181, 21.765823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249987, -0.028166, 0.967839,
		0.373180, 0.919549, 0.123151,
		-0.893444, 0.391965, -0.219365,
		16.360907, 22.302771, 21.700014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851824, 22.381039, 22.417027>,  <16.986319, 22.028395, 21.853569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.851824, 22.381039, 22.417027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498302, 22.339211, 22.234619>,  <16.286190, 22.314114, 22.125174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498302, 22.339211, 22.234619>,  <16.851824, 22.381039, 22.417027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498302, 22.339211, 22.234619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436937, -0.163965, 0.884421,
		-0.167256, 0.980908, 0.099222,
		-0.883805, -0.104571, -0.456019,
		16.233160, 22.307838, 22.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389044, 22.873266, 22.821257>,  <16.851824, 22.381039, 22.417027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389044, 22.873266, 22.821257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189728, 22.576118, 22.642437>,  <16.070139, 22.397829, 22.535145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189728, 22.576118, 22.642437>,  <16.389044, 22.873266, 22.821257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189728, 22.576118, 22.642437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294200, -0.340155, 0.893163,
		-0.815571, 0.576574, -0.049057,
		-0.498288, -0.742870, -0.447049,
		16.040241, 22.353258, 22.508322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735033, 22.849226, 23.181200>,  <16.389044, 22.873266, 22.821257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735033, 22.849226, 23.181200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776721, 22.492798, 23.004505>,  <15.801734, 22.278940, 22.898487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776721, 22.492798, 23.004505>,  <15.735033, 22.849226, 23.181200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776721, 22.492798, 23.004505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376474, -0.446452, 0.811756,
		-0.920546, 0.081702, -0.381994,
		0.104220, -0.891069, -0.441739,
		15.807987, 22.225477, 22.871984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079522, 22.505259, 23.221842>,  <15.735033, 22.849226, 23.181200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079522, 22.505259, 23.221842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380500, 22.244480, 23.184341>,  <15.561087, 22.088013, 23.161840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380500, 22.244480, 23.184341>,  <15.079522, 22.505259, 23.221842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380500, 22.244480, 23.184341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310605, -0.476740, 0.822340,
		-0.580821, -0.589644, -0.561219,
		0.752444, -0.651950, -0.093754,
		15.606234, 22.048895, 23.156216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845121, 22.054783, 23.672163>,  <15.079522, 22.505259, 23.221842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845121, 22.054783, 23.672163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198506, 21.893456, 23.576807>,  <15.410537, 21.796659, 23.519594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198506, 21.893456, 23.576807>,  <14.845121, 22.054783, 23.672163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198506, 21.893456, 23.576807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022466, -0.471775, 0.881432,
		-0.467941, -0.784078, -0.407741,
		0.883474, -0.403298, -0.238378,
		15.463545, 21.772459, 23.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743733, 21.359888, 23.902781>,  <14.845121, 22.054783, 23.672163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743733, 21.359888, 23.902781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132194, 21.454346, 23.889500>,  <15.365270, 21.511021, 23.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132194, 21.454346, 23.889500>,  <14.743733, 21.359888, 23.902781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132194, 21.454346, 23.889500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140244, -0.452975, 0.880423,
		0.192868, -0.859680, -0.473025,
		0.971151, 0.236144, -0.033201,
		15.423539, 21.525188, 23.879539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090944, 20.707661, 23.880245>,  <14.743733, 21.359888, 23.902781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090944, 20.707661, 23.880245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365062, 20.962257, 24.021811>,  <15.529532, 21.115015, 24.106749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365062, 20.962257, 24.021811>,  <15.090944, 20.707661, 23.880245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365062, 20.962257, 24.021811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190456, -0.625685, 0.756469,
		0.702921, -0.450999, -0.550001,
		0.685294, 0.636489, 0.353912,
		15.570650, 21.153204, 24.127983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515035, 20.028982, 23.937454>,  <15.090944, 20.707661, 23.880245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515035, 20.028982, 23.937454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308562, 19.689903, 23.888525>,  <15.184679, 19.486456, 23.859167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308562, 19.689903, 23.888525>,  <15.515035, 20.028982, 23.937454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308562, 19.689903, 23.888525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058844, 0.107385, -0.992474,
		0.854456, -0.519495, -0.005548,
		-0.516181, -0.847699, -0.122325,
		15.153708, 19.435593, 23.851828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938155, 19.632074, 23.480043>,  <15.515035, 20.028982, 23.937454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938155, 19.632074, 23.480043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552566, 19.532322, 23.443033>,  <15.321212, 19.472469, 23.420828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552566, 19.532322, 23.443033>,  <15.938155, 19.632074, 23.480043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552566, 19.532322, 23.443033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107835, -0.048413, -0.992989,
		0.243156, -0.967194, 0.073561,
		-0.963975, -0.249383, -0.092525,
		15.263373, 19.457506, 23.415276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033539, 19.036549, 23.152523>,  <15.938155, 19.632074, 23.480043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033539, 19.036549, 23.152523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673551, 19.200218, 23.092344>,  <15.457558, 19.298420, 23.056238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673551, 19.200218, 23.092344>,  <16.033539, 19.036549, 23.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673551, 19.200218, 23.092344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, -0.292533, -0.955880,
		-0.435132, -0.864293, 0.252308,
		-0.899968, 0.409174, -0.150446,
		15.403560, 19.322969, 23.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759000, 18.643236, 22.656099>,  <16.033539, 19.036549, 23.152523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759000, 18.643236, 22.656099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525491, 18.967075, 22.631565>,  <15.385386, 19.161379, 22.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525491, 18.967075, 22.631565>,  <15.759000, 18.643236, 22.656099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525491, 18.967075, 22.631565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039491, -0.103766, -0.993818,
		-0.810956, -0.577741, 0.092547,
		-0.583773, 0.809597, -0.061334,
		15.350359, 19.209955, 22.613165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282454, 18.536694, 22.109428>,  <15.759000, 18.643236, 22.656099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282454, 18.536694, 22.109428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235904, 18.931252, 22.155870>,  <15.207974, 19.167986, 22.183737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235904, 18.931252, 22.155870>,  <15.282454, 18.536694, 22.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235904, 18.931252, 22.155870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217118, 0.088808, -0.972097,
		-0.969184, -0.138335, 0.203830,
		-0.116374, 0.986396, 0.116107,
		15.200992, 19.227171, 22.190702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582438, 18.740065, 21.818302>,  <15.282454, 18.536694, 22.109428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582438, 18.740065, 21.818302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823157, 19.059242, 21.804924>,  <14.967589, 19.250750, 21.796898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823157, 19.059242, 21.804924>,  <14.582438, 18.740065, 21.818302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823157, 19.059242, 21.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159608, 0.079132, -0.984004,
		-0.782535, 0.597512, 0.174980,
		0.601801, 0.797946, -0.033444,
		15.003697, 19.298626, 21.794891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312647, 19.062243, 21.215981>,  <14.582438, 18.740065, 21.818302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312647, 19.062243, 21.215981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652911, 19.258938, 21.290352>,  <14.857070, 19.376955, 21.334974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652911, 19.258938, 21.290352>,  <14.312647, 19.062243, 21.215981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652911, 19.258938, 21.290352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147212, 0.116713, -0.982195,
		-0.504681, 0.862887, 0.026894,
		0.850662, 0.491736, 0.185930,
		14.908110, 19.406458, 21.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285489, 19.786528, 20.982794>,  <14.312647, 19.062243, 21.215981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285489, 19.786528, 20.982794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664571, 19.658970, 20.977713>,  <14.892020, 19.582436, 20.974665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664571, 19.658970, 20.977713>,  <14.285489, 19.786528, 20.982794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664571, 19.658970, 20.977713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023209, 0.108563, -0.993819,
		0.318302, 0.941552, 0.110287,
		0.947705, -0.318894, -0.012703,
		14.948882, 19.563301, 20.973902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498735, 20.135300, 20.429953>,  <14.285489, 19.786528, 20.982794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498735, 20.135300, 20.429953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794358, 19.869694, 20.475348>,  <14.971732, 19.710331, 20.502584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.794358, 19.869694, 20.475348>,  <14.498735, 20.135300, 20.429953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794358, 19.869694, 20.475348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228688, 0.088844, -0.969437,
		0.633638, 0.742423, 0.217513,
		0.739057, -0.664014, 0.113489,
		15.016075, 19.670490, 20.509394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980702, 20.328585, 19.972973>,  <14.498735, 20.135300, 20.429953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980702, 20.328585, 19.972973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133782, 19.962551, 20.023823>,  <15.225631, 19.742931, 20.054333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133782, 19.962551, 20.023823>,  <14.980702, 20.328585, 19.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133782, 19.962551, 20.023823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280994, -0.015789, -0.959580,
		0.880104, 0.402953, 0.251090,
		0.382701, -0.915084, 0.127123,
		15.248592, 19.688026, 20.061960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660071, 20.308725, 19.691549>,  <14.980702, 20.328585, 19.972973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660071, 20.308725, 19.691549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551236, 19.924000, 19.703453>,  <15.485935, 19.693165, 19.710596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551236, 19.924000, 19.703453>,  <15.660071, 20.308725, 19.691549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551236, 19.924000, 19.703453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318261, -0.119133, -0.940488,
		0.908118, -0.246425, 0.338522,
		-0.272089, -0.961812, 0.029759,
		15.469609, 19.635456, 19.712381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243649, 19.909283, 19.498749>,  <15.660071, 20.308725, 19.691549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243649, 19.909283, 19.498749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924783, 19.674458, 19.442345>,  <15.733463, 19.533562, 19.408503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924783, 19.674458, 19.442345>,  <16.243649, 19.909283, 19.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924783, 19.674458, 19.442345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258114, -0.120235, -0.958603,
		0.545806, -0.800563, 0.247377,
		-0.797165, -0.587063, -0.141012,
		15.685633, 19.498339, 19.400042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470665, 19.409607, 19.130701>,  <16.243649, 19.909283, 19.498749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.470665, 19.409607, 19.130701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080956, 19.346928, 19.065910>,  <15.847130, 19.309320, 19.027037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080956, 19.346928, 19.065910>,  <16.470665, 19.409607, 19.130701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080956, 19.346928, 19.065910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141837, 0.132193, -0.981023,
		0.175141, -0.978759, -0.106566,
		-0.974273, -0.156702, -0.161977,
		15.788673, 19.299919, 19.017317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418358, 18.887568, 18.703049>,  <16.470665, 19.409607, 19.130701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418358, 18.887568, 18.703049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072411, 19.085533, 18.669439>,  <15.864842, 19.204313, 18.649273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072411, 19.085533, 18.669439>,  <16.418358, 18.887568, 18.703049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072411, 19.085533, 18.669439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183350, 0.155615, -0.970653,
		-0.467317, -0.854893, -0.225329,
		-0.864869, 0.494916, -0.084023,
		15.812950, 19.234009, 18.644232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262718, 18.770411, 18.051023>,  <16.418358, 18.887568, 18.703049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262718, 18.770411, 18.051023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058971, 19.094009, 18.168371>,  <15.936724, 19.288170, 18.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058971, 19.094009, 18.168371>,  <16.262718, 18.770411, 18.051023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058971, 19.094009, 18.168371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051233, 0.368815, -0.928090,
		-0.859023, -0.457707, -0.229310,
		-0.509366, 0.808999, 0.293371,
		15.906161, 19.336710, 18.256382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797690, 18.911274, 17.504217>,  <16.262718, 18.770411, 18.051023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797690, 18.911274, 17.504217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816897, 19.262737, 17.694231>,  <15.828422, 19.473616, 17.808239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816897, 19.262737, 17.694231>,  <15.797690, 18.911274, 17.504217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816897, 19.262737, 17.694231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133569, 0.465663, -0.874824,
		-0.989875, 0.105456, -0.095002,
		0.048017, 0.878656, 0.475034,
		15.831303, 19.526335, 17.836740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466567, 19.464991, 17.033792>,  <15.797690, 18.911274, 17.504217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466567, 19.464991, 17.033792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662625, 19.698883, 17.292358>,  <15.780260, 19.839218, 17.447498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662625, 19.698883, 17.292358>,  <15.466567, 19.464991, 17.033792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662625, 19.698883, 17.292358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323469, 0.566625, -0.757828,
		-0.809398, 0.580540, 0.088586,
		0.490145, 0.584730, 0.646413,
		15.809669, 19.874302, 17.486282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247143, 20.155283, 16.956974>,  <15.466567, 19.464991, 17.033792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247143, 20.155283, 16.956974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613475, 20.173450, 17.116570>,  <15.833274, 20.184351, 17.212326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613475, 20.173450, 17.116570>,  <15.247143, 20.155283, 16.956974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.613475, 20.173450, 17.116570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288339, 0.617158, -0.732105,
		-0.279490, 0.785527, 0.552116,
		0.915831, 0.045419, 0.398987,
		15.888225, 20.187077, 17.236265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385674, 20.850666, 17.068253>,  <15.247143, 20.155283, 16.956974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385674, 20.850666, 17.068253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727643, 20.643284, 17.061171>,  <15.932824, 20.518854, 17.056921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727643, 20.643284, 17.061171>,  <15.385674, 20.850666, 17.068253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727643, 20.643284, 17.061171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350893, 0.603074, -0.716363,
		0.382080, 0.606222, 0.697503,
		0.854921, -0.518456, -0.017703,
		15.984119, 20.487747, 17.055861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907235, 21.295746, 16.844398>,  <15.385674, 20.850666, 17.068253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907235, 21.295746, 16.844398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.088520, 20.945633, 16.776899>,  <16.197290, 20.735565, 16.736401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.088520, 20.945633, 16.776899>,  <15.907235, 21.295746, 16.844398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.088520, 20.945633, 16.776899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445299, 0.386301, -0.807763,
		0.772209, 0.290945, 0.564840,
		0.453213, -0.875284, -0.168747,
		16.224483, 20.683048, 16.726274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645264, 21.381573, 16.685040>,  <15.907235, 21.295746, 16.844398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645264, 21.381573, 16.685040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559673, 21.026279, 16.522432>,  <16.508318, 20.813103, 16.424868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559673, 21.026279, 16.522432>,  <16.645264, 21.381573, 16.685040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559673, 21.026279, 16.522432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436324, 0.285428, -0.853318,
		0.873977, -0.359964, 0.326482,
		-0.213977, -0.888232, -0.406518,
		16.495480, 20.759809, 16.400476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228027, 21.179014, 16.357407>,  <16.645264, 21.381573, 16.685040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228027, 21.179014, 16.357407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943275, 20.960445, 16.180931>,  <16.772425, 20.829304, 16.075045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943275, 20.960445, 16.180931>,  <17.228027, 21.179014, 16.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943275, 20.960445, 16.180931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382908, 0.224638, -0.896058,
		0.588732, -0.806823, 0.049313,
		-0.711882, -0.546420, -0.441190,
		16.729712, 20.796518, 16.048574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541492, 20.805534, 15.910087>,  <17.228027, 21.179014, 16.357407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.541492, 20.805534, 15.910087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163521, 20.797058, 15.779451>,  <16.936737, 20.791973, 15.701070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163521, 20.797058, 15.779451>,  <17.541492, 20.805534, 15.910087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163521, 20.797058, 15.779451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325172, 0.052165, -0.944215,
		0.037038, -0.998414, -0.042404,
		-0.944929, -0.021183, -0.326588,
		16.880041, 20.790701, 15.681475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579947, 20.366514, 15.277386>,  <17.541492, 20.805534, 15.910087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579947, 20.366514, 15.277386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235588, 20.570000, 15.274212>,  <17.028973, 20.692091, 15.272307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235588, 20.570000, 15.274212>,  <17.579947, 20.366514, 15.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235588, 20.570000, 15.274212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119993, 0.187860, -0.974839,
		-0.494425, -0.840189, -0.222771,
		-0.860898, 0.508715, -0.007934,
		16.977318, 20.722614, 15.271832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309563, 20.166336, 14.657839>,  <17.579947, 20.366514, 15.277386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309563, 20.166336, 14.657839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084976, 20.481174, 14.760008>,  <16.950224, 20.670076, 14.821309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084976, 20.481174, 14.760008>,  <17.309563, 20.166336, 14.657839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084976, 20.481174, 14.760008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114106, 0.232077, -0.965981,
		-0.819596, -0.571510, -0.040491,
		-0.561465, 0.787094, 0.255422,
		16.916536, 20.717302, 14.836635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648478, 20.101517, 14.345468>,  <17.309563, 20.166336, 14.657839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648478, 20.101517, 14.345468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674385, 20.494812, 14.413645>,  <16.689930, 20.730789, 14.454552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674385, 20.494812, 14.413645>,  <16.648478, 20.101517, 14.345468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674385, 20.494812, 14.413645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204144, 0.180245, -0.962204,
		-0.976796, 0.027524, 0.212396,
		0.064767, 0.983237, 0.170444,
		16.693815, 20.789783, 14.464778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036379, 20.419453, 14.153733>,  <16.648478, 20.101517, 14.345468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036379, 20.419453, 14.153733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339371, 20.680176, 14.138901>,  <16.521166, 20.836609, 14.130001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339371, 20.680176, 14.138901>,  <16.036379, 20.419453, 14.153733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339371, 20.680176, 14.138901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219692, 0.200999, -0.954639,
		-0.614785, 0.731265, 0.295449,
		0.757479, 0.651806, -0.037082,
		16.566614, 20.875717, 14.127776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728365, 21.100695, 13.968342>,  <16.036379, 20.419453, 14.153733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728365, 21.100695, 13.968342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.114975, 21.086239, 13.866737>,  <16.346941, 21.077566, 13.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.114975, 21.086239, 13.866737>,  <15.728365, 21.100695, 13.968342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114975, 21.086239, 13.866737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239128, 0.231909, -0.942887,
		0.092983, 0.972066, 0.215504,
		0.966526, -0.036139, -0.254012,
		16.404932, 21.075397, 13.790534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797274, 21.484365, 13.397684>,  <15.728365, 21.100695, 13.968342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797274, 21.484365, 13.397684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157410, 21.311638, 13.376062>,  <16.373491, 21.208002, 13.363090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157410, 21.311638, 13.376062>,  <15.797274, 21.484365, 13.397684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157410, 21.311638, 13.376062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051514, 0.017584, -0.998517,
		0.432128, 0.901790, -0.006413,
		0.900340, -0.431817, -0.054053,
		16.427511, 21.182093, 13.359846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189924, 21.838406, 12.877020>,  <15.797274, 21.484365, 13.397684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189924, 21.838406, 12.877020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396931, 21.500450, 12.931192>,  <16.521135, 21.297678, 12.963696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396931, 21.500450, 12.931192>,  <16.189924, 21.838406, 12.877020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396931, 21.500450, 12.931192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068263, -0.117006, -0.990782,
		0.852945, 0.521993, -0.002878,
		0.517518, -0.844886, 0.135432,
		16.552187, 21.246984, 12.971822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677771, 21.961313, 12.386950>,  <16.189924, 21.838406, 12.877020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677771, 21.961313, 12.386950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675701, 21.569427, 12.467081>,  <16.674459, 21.334295, 12.515160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675701, 21.569427, 12.467081>,  <16.677771, 21.961313, 12.386950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675701, 21.569427, 12.467081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059828, -0.199669, -0.978035,
		0.998195, -0.017045, -0.057581,
		-0.005173, -0.979715, 0.200328,
		16.674149, 21.275513, 12.527180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161032, 21.592318, 11.941657>,  <16.677771, 21.961313, 12.386950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161032, 21.592318, 11.941657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913704, 21.305023, 12.069291>,  <16.765306, 21.132647, 12.145872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913704, 21.305023, 12.069291>,  <17.161032, 21.592318, 11.941657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913704, 21.305023, 12.069291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091145, -0.337729, -0.936820,
		0.780623, -0.608338, 0.143360,
		-0.618320, -0.718237, 0.319086,
		16.728209, 21.089552, 12.165017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465755, 20.949957, 11.706145>,  <17.161032, 21.592318, 11.941657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465755, 20.949957, 11.706145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070656, 20.905350, 11.749804>,  <16.833595, 20.878586, 11.775999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070656, 20.905350, 11.749804>,  <17.465755, 20.949957, 11.706145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070656, 20.905350, 11.749804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073002, -0.287944, -0.954861,
		0.137915, -0.951132, 0.276276,
		-0.987750, -0.111521, 0.109146,
		16.774330, 20.871893, 11.782547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371296, 20.474152, 11.264055>,  <17.465755, 20.949957, 11.706145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371296, 20.474152, 11.264055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985687, 20.563488, 11.321717>,  <16.754322, 20.617090, 11.356315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985687, 20.563488, 11.321717>,  <17.371296, 20.474152, 11.264055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985687, 20.563488, 11.321717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223151, -0.385263, -0.895419,
		-0.144444, -0.895373, 0.421240,
		-0.964023, 0.223338, 0.144155,
		16.696480, 20.630489, 11.364964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075907, 19.934805, 10.988920>,  <17.371296, 20.474152, 11.264055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075907, 19.934805, 10.988920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791218, 20.215561, 11.000240>,  <16.620403, 20.384014, 11.007032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791218, 20.215561, 11.000240>,  <17.075907, 19.934805, 10.988920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791218, 20.215561, 11.000240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253496, -0.219059, -0.942206,
		-0.655126, -0.677764, 0.333836,
		-0.711723, 0.701890, 0.028299,
		16.577702, 20.426128, 11.008730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409121, 19.617828, 10.912507>,  <17.075907, 19.934805, 10.988920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409121, 19.617828, 10.912507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365822, 19.995861, 10.789149>,  <16.339844, 20.222681, 10.715135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365822, 19.995861, 10.789149>,  <16.409121, 19.617828, 10.912507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365822, 19.995861, 10.789149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342699, -0.326676, -0.880818,
		-0.933188, 0.010343, 0.359239,
		-0.108245, 0.945080, -0.308394,
		16.333349, 20.279385, 10.696631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684035, 19.767265, 10.690763>,  <16.409121, 19.617828, 10.912507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684035, 19.767265, 10.690763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926141, 20.018360, 10.494966>,  <16.071404, 20.169018, 10.377487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926141, 20.018360, 10.494966>,  <15.684035, 19.767265, 10.690763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926141, 20.018360, 10.494966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417436, -0.273290, -0.866637,
		-0.677794, 0.728875, 0.096628,
		0.605263, 0.627737, -0.489493,
		16.107719, 20.206682, 10.348118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241896, 19.963875, 10.157642>,  <15.684035, 19.767265, 10.690763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241896, 19.963875, 10.157642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574143, 20.142071, 10.024008>,  <15.773492, 20.248987, 9.943827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574143, 20.142071, 10.024008>,  <15.241896, 19.963875, 10.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574143, 20.142071, 10.024008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287537, -0.170655, -0.942443,
		-0.476861, 0.878873, -0.013655,
		0.830618, 0.445488, -0.334087,
		15.823329, 20.275717, 9.923781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096735, 20.615358, 9.775776>,  <15.241896, 19.963875, 10.157642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096735, 20.615358, 9.775776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440907, 20.469341, 9.633563>,  <15.647411, 20.381731, 9.548235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440907, 20.469341, 9.633563>,  <15.096735, 20.615358, 9.775776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440907, 20.469341, 9.633563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422229, -0.120139, -0.898493,
		0.285275, 0.923207, -0.257503,
		0.860431, -0.365042, -0.355532,
		15.699037, 20.359829, 9.526903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282355, 20.973011, 9.129262>,  <15.096735, 20.615358, 9.775776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282355, 20.973011, 9.129262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485326, 20.630634, 9.089493>,  <15.607108, 20.425209, 9.065631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485326, 20.630634, 9.089493>,  <15.282355, 20.973011, 9.129262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485326, 20.630634, 9.089493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329282, -0.085986, -0.940308,
		0.796298, 0.509876, -0.325477,
		0.507427, -0.855940, -0.099423,
		15.637554, 20.373852, 9.059666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590602, 20.787086, 8.388027>,  <15.282355, 20.973011, 9.129262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590602, 20.787086, 8.388027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492053, 20.467964, 8.608140>,  <15.432923, 20.276491, 8.740208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492053, 20.467964, 8.608140>,  <15.590602, 20.787086, 8.388027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492053, 20.467964, 8.608140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383281, -0.441291, -0.811392,
		0.890167, -0.410817, -0.197061,
		-0.246372, -0.797804, 0.550281,
		15.418141, 20.228622, 8.773225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023420, 20.137587, 8.321623>,  <15.590602, 20.787086, 8.388027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023420, 20.137587, 8.321623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653386, 19.995590, 8.375584>,  <15.431365, 19.910393, 8.407960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653386, 19.995590, 8.375584>,  <16.023420, 20.137587, 8.321623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653386, 19.995590, 8.375584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053597, -0.473723, -0.879041,
		0.375957, -0.805959, 0.457261,
		-0.925086, -0.354989, 0.134902,
		15.375860, 19.889093, 8.416055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045105, 19.354317, 8.156572>,  <16.023420, 20.137587, 8.321623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045105, 19.354317, 8.156572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657985, 19.428207, 8.088181>,  <15.425713, 19.472542, 8.047145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657985, 19.428207, 8.088181>,  <16.045105, 19.354317, 8.156572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657985, 19.428207, 8.088181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009309, -0.652542, -0.757695,
		-0.251538, -0.734891, 0.629812,
		-0.967803, 0.184726, -0.170980,
		15.367644, 19.483625, 8.036886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717659, 18.756029, 8.092902>,  <16.045105, 19.354317, 8.156572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717659, 18.756029, 8.092902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483459, 19.023911, 7.910173>,  <15.342938, 19.184639, 7.800536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483459, 19.023911, 7.910173>,  <15.717659, 18.756029, 8.092902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483459, 19.023911, 7.910173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034532, -0.542395, -0.839413,
		-0.809935, -0.507253, 0.294448,
		-0.585502, 0.669703, -0.456821,
		15.307808, 19.224821, 7.773127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068728, 18.584057, 7.919552>,  <15.717659, 18.756029, 8.092902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068728, 18.584057, 7.919552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158961, 18.862278, 7.646695>,  <15.213101, 19.029211, 7.482981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158961, 18.862278, 7.646695>,  <15.068728, 18.584057, 7.919552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158961, 18.862278, 7.646695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007905, -0.698861, -0.715214,
		-0.974192, 0.166732, -0.152153,
		0.225583, 0.695552, -0.682143,
		15.226636, 19.070944, 7.442052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627926, 18.490805, 7.256057>,  <15.068728, 18.584057, 7.919552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627926, 18.490805, 7.256057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970908, 18.671509, 7.157523>,  <15.176698, 18.779932, 7.098403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970908, 18.671509, 7.157523>,  <14.627926, 18.490805, 7.256057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970908, 18.671509, 7.157523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192269, -0.725350, -0.660985,
		-0.477287, 0.519402, -0.708815,
		0.857455, 0.451762, -0.246335,
		15.228145, 18.807037, 7.083622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.002940, 18.011297, 7.485082>,  <14.627926, 18.490805, 7.256057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.002940, 18.011297, 7.485082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062623, 18.280743, 7.195535>,  <14.098433, 18.442410, 7.021807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062623, 18.280743, 7.195535>,  <14.002940, 18.011297, 7.485082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062623, 18.280743, 7.195535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070351, -0.737439, -0.671740,
		-0.986300, 0.049304, -0.157421,
		0.149208, 0.673612, -0.723868,
		14.107386, 18.482826, 6.978374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450153, 17.950085, 6.893978>,  <14.002940, 18.011297, 7.485082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450153, 17.950085, 6.893978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819667, 18.080200, 6.813170>,  <14.041375, 18.158270, 6.764686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819667, 18.080200, 6.813170>,  <13.450153, 17.950085, 6.893978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819667, 18.080200, 6.813170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189023, -0.846206, -0.498202,
		-0.333009, 0.422045, -0.843199,
		0.923783, 0.325290, -0.202018,
		14.096802, 18.177788, 6.752565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585564, 17.914040, 6.266241>,  <13.450153, 17.950085, 6.893978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585564, 17.914040, 6.266241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962333, 17.926136, 6.400028>,  <14.188394, 17.933393, 6.480300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962333, 17.926136, 6.400028>,  <13.585564, 17.914040, 6.266241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962333, 17.926136, 6.400028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277808, -0.629755, -0.725418,
		0.188696, 0.776205, -0.601581,
		0.941922, 0.030241, 0.334468,
		14.244909, 17.935207, 6.500369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.030197, 18.172382, 5.731132>,  <13.585564, 17.914040, 6.266241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.030197, 18.172382, 5.731132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174474, 17.894402, 5.979951>,  <14.261040, 17.727613, 6.129242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174474, 17.894402, 5.979951>,  <14.030197, 18.172382, 5.731132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174474, 17.894402, 5.979951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076335, -0.642709, -0.762298,
		0.929556, 0.322438, -0.178770,
		0.360691, -0.694953, 0.622047,
		14.282681, 17.685915, 6.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711811, 17.868303, 5.549050>,  <14.030197, 18.172382, 5.731132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711811, 17.868303, 5.549050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.472951, 17.597111, 5.720515>,  <14.329635, 17.434395, 5.823394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.472951, 17.597111, 5.720515>,  <14.711811, 17.868303, 5.549050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472951, 17.597111, 5.720515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146945, -0.617825, -0.772464,
		0.788555, -0.398287, 0.468560,
		-0.597151, -0.677982, 0.428663,
		14.293806, 17.393717, 5.849114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058148, 17.188997, 5.743006>,  <14.711811, 17.868303, 5.549050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058148, 17.188997, 5.743006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.678346, 17.122070, 5.636843>,  <14.450464, 17.081915, 5.573145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.678346, 17.122070, 5.636843>,  <15.058148, 17.188997, 5.743006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.678346, 17.122070, 5.636843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298500, -0.742241, -0.599980,
		-0.096610, -0.648909, 0.754707,
		-0.949508, -0.167316, -0.265408,
		14.393494, 17.071875, 5.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815392, 16.651453, 6.102216>,  <15.058148, 17.188997, 5.743006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815392, 16.651453, 6.102216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632804, 16.697708, 5.749339>,  <14.523251, 16.725460, 5.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632804, 16.697708, 5.749339>,  <14.815392, 16.651453, 6.102216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632804, 16.697708, 5.749339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513527, -0.775459, -0.367359,
		-0.726583, -0.620719, 0.294593,
		-0.456472, 0.115635, -0.882192,
		14.495863, 16.732399, 5.484682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501516, 16.074842, 5.943045>,  <14.815392, 16.651453, 6.102216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501516, 16.074842, 5.943045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608520, 16.280006, 5.616766>,  <14.672721, 16.403105, 5.420999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608520, 16.280006, 5.616766>,  <14.501516, 16.074842, 5.943045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608520, 16.280006, 5.616766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611726, -0.744467, -0.267507,
		-0.744467, -0.427423, -0.512911,
		0.267507, 0.512911, -0.815697,
		14.688771, 16.433880, 5.372057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289381, 15.780579, 5.217532>,  <14.501516, 16.074842, 5.943045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289381, 15.780579, 5.217532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644706, 15.963779, 5.231007>,  <14.857901, 16.073700, 5.239091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644706, 15.963779, 5.231007>,  <14.289381, 15.780579, 5.217532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644706, 15.963779, 5.231007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434740, -0.815018, -0.383075,
		-0.147994, 0.354935, -0.923103,
		0.888312, 0.458003, 0.033687,
		14.911200, 16.101181, 5.241113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658132, 15.624218, 4.660082>,  <14.289381, 15.780579, 5.217532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658132, 15.624218, 4.660082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960454, 15.731167, 4.899171>,  <15.141848, 15.795336, 5.042624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960454, 15.731167, 4.899171>,  <14.658132, 15.624218, 4.660082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960454, 15.731167, 4.899171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522646, -0.796241, -0.304700,
		0.394462, 0.542691, -0.741543,
		0.755805, 0.267372, 0.597721,
		15.187196, 15.811378, 5.078487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252919, 16.159536, 4.164375>,  <14.658132, 15.624218, 4.660082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252919, 16.159536, 4.164375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504409, 16.458736, 4.079331>,  <14.655303, 16.638256, 4.028306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504409, 16.458736, 4.079331>,  <14.252919, 16.159536, 4.164375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504409, 16.458736, 4.079331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692527, 0.414222, -0.590615,
		-0.353713, 0.518571, 0.778441,
		0.628724, 0.748000, -0.212609,
		14.693027, 16.683136, 4.015549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518972, 16.091227, 4.315237>,  <14.252919, 16.159536, 4.164375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518972, 16.091227, 4.315237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122380, 16.123821, 4.274588>,  <12.884425, 16.143377, 4.250198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122380, 16.123821, 4.274588>,  <13.518972, 16.091227, 4.315237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122380, 16.123821, 4.274588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087007, 0.166299, 0.982229,
		0.096938, 0.982703, -0.157792,
		-0.991480, 0.081487, -0.101622,
		12.824936, 16.148268, 4.244101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275384, 16.766068, 4.598195>,  <13.518972, 16.091227, 4.315237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275384, 16.766068, 4.598195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.975142, 16.507298, 4.651985>,  <12.794998, 16.352036, 4.684259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.975142, 16.507298, 4.651985>,  <13.275384, 16.766068, 4.598195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975142, 16.507298, 4.651985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022689, 0.178163, 0.983739,
		-0.660363, 0.741449, -0.119052,
		-0.750603, -0.646924, 0.134475,
		12.749962, 16.313221, 4.692327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108482, 16.858683, 5.280354>,  <13.275384, 16.766068, 4.598195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108482, 16.858683, 5.280354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.875474, 16.538006, 5.226746>,  <12.735669, 16.345600, 5.194581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.875474, 16.538006, 5.226746>,  <13.108482, 16.858683, 5.280354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.875474, 16.538006, 5.226746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008011, -0.170539, 0.985318,
		-0.812777, 0.572894, 0.105765,
		-0.582520, -0.801691, -0.134020,
		12.700718, 16.297499, 5.186540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488229, 16.869658, 5.760892>,  <13.108482, 16.858683, 5.280354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488229, 16.869658, 5.760892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.557326, 16.488232, 5.662199>,  <12.598785, 16.259377, 5.602983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.557326, 16.488232, 5.662199>,  <12.488229, 16.869658, 5.760892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.557326, 16.488232, 5.662199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128358, -0.270155, 0.954223,
		-0.976567, -0.133166, -0.169065,
		0.172744, -0.953563, -0.246732,
		12.609150, 16.202162, 5.588180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.839380, 16.521782, 5.914183>,  <12.488229, 16.869658, 5.760892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.839380, 16.521782, 5.914183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.192456, 16.335403, 5.938684>,  <12.404303, 16.223577, 5.953385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.192456, 16.335403, 5.938684>,  <11.839380, 16.521782, 5.914183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192456, 16.335403, 5.938684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148488, -0.152856, 0.977029,
		-0.445879, -0.871511, -0.204112,
		0.882691, -0.465945, 0.061254,
		12.457264, 16.195620, 5.957060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747939, 16.002361, 6.367086>,  <11.839380, 16.521782, 5.914183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.747939, 16.002361, 6.367086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.146504, 16.034771, 6.376852>,  <12.385644, 16.054216, 6.382711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.146504, 16.034771, 6.376852>,  <11.747939, 16.002361, 6.367086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.146504, 16.034771, 6.376852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008907, -0.186491, 0.982416,
		0.084152, -0.979110, -0.185100,
		0.996413, 0.081024, 0.024415,
		12.445429, 16.059078, 6.384176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212064, 15.342240, 6.634101>,  <11.747939, 16.002361, 6.367086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212064, 15.342240, 6.634101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405105, 15.686554, 6.698782>,  <12.520929, 15.893142, 6.737591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405105, 15.686554, 6.698782>,  <12.212064, 15.342240, 6.634101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405105, 15.686554, 6.698782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331365, -0.350351, 0.876043,
		0.810736, -0.369197, -0.454313,
		0.482601, 0.860783, 0.161703,
		12.549885, 15.944789, 6.747293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811404, 15.206995, 6.825030>,  <12.212064, 15.342240, 6.634101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811404, 15.206995, 6.825030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.769916, 15.548630, 7.028904>,  <12.745023, 15.753611, 7.151228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.769916, 15.548630, 7.028904>,  <12.811404, 15.206995, 6.825030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769916, 15.548630, 7.028904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218149, -0.480436, 0.849466,
		0.970388, 0.199295, -0.136487,
		-0.103721, 0.854086, 0.509685,
		12.738799, 15.804855, 7.181809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353456, 15.214774, 7.394108>,  <12.811404, 15.206995, 6.825030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353456, 15.214774, 7.394108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043912, 15.438789, 7.512427>,  <12.858186, 15.573198, 7.583419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043912, 15.438789, 7.512427>,  <13.353456, 15.214774, 7.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043912, 15.438789, 7.512427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006752, -0.474302, 0.880336,
		0.633321, 0.679260, 0.370824,
		-0.773860, 0.560039, 0.295799,
		12.811754, 15.606801, 7.601167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433344, 15.457381, 8.060182>,  <13.353456, 15.214774, 7.394108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433344, 15.457381, 8.060182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035207, 15.491684, 8.042563>,  <12.796325, 15.512265, 8.031993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035207, 15.491684, 8.042563>,  <13.433344, 15.457381, 8.060182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035207, 15.491684, 8.042563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079556, -0.472617, 0.877670,
		0.054449, 0.877086, 0.477238,
		-0.995342, 0.085756, -0.044044,
		12.736604, 15.517410, 8.029350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.205106, 15.580684, 8.735552>,  <13.433344, 15.457381, 8.060182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.205106, 15.580684, 8.735552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883653, 15.423717, 8.556583>,  <12.690781, 15.329537, 8.449203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883653, 15.423717, 8.556583>,  <13.205106, 15.580684, 8.735552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883653, 15.423717, 8.556583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163630, -0.577136, 0.800087,
		-0.572190, 0.716187, 0.399594,
		-0.803632, -0.392416, -0.447421,
		12.642563, 15.305992, 8.422358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496239, 15.647351, 9.036159>,  <13.205106, 15.580684, 8.735552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.496239, 15.647351, 9.036159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547215, 15.300285, 8.843945>,  <12.577802, 15.092046, 8.728616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547215, 15.300285, 8.843945>,  <12.496239, 15.647351, 9.036159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547215, 15.300285, 8.843945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101199, -0.493333, 0.863934,
		-0.986670, -0.061472, -0.150678,
		0.127442, -0.867666, -0.480536,
		12.585448, 15.039986, 8.699784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928195, 14.973026, 9.170652>,  <12.496239, 15.647351, 9.036159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928195, 14.973026, 9.170652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.305655, 14.884533, 9.072201>,  <12.532131, 14.831437, 9.013130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.305655, 14.884533, 9.072201>,  <11.928195, 14.973026, 9.170652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.305655, 14.884533, 9.072201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128401, -0.440712, 0.888418,
		-0.305020, -0.869959, -0.387471,
		0.943650, -0.221234, -0.246130,
		12.588751, 14.818163, 8.998362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938087, 14.403166, 9.537816>,  <11.928195, 14.973026, 9.170652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938087, 14.403166, 9.537816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321239, 14.489174, 9.461677>,  <12.551129, 14.540779, 9.415993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321239, 14.489174, 9.461677>,  <11.938087, 14.403166, 9.537816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.321239, 14.489174, 9.461677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286838, -0.684569, 0.670141,
		0.013789, -0.696514, -0.717411,
		0.957880, 0.215021, -0.190347,
		12.608603, 14.553680, 9.404572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.103458, 14.141501, 8.839593>,  <11.938087, 14.403166, 9.537816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.103458, 14.141501, 8.839593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200370, 13.824387, 8.615883>,  <12.258516, 13.634117, 8.481657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200370, 13.824387, 8.615883>,  <12.103458, 14.141501, 8.839593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200370, 13.824387, 8.615883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815699, -0.478551, 0.324998,
		-0.525297, 0.377460, -0.762619,
		0.242278, -0.792788, -0.559275,
		12.273053, 13.586551, 8.448100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661291, 13.992051, 8.331433>,  <12.103458, 14.141501, 8.839593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661291, 13.992051, 8.331433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822288, 13.639969, 8.432024>,  <11.918885, 13.428720, 8.492378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822288, 13.639969, 8.432024>,  <11.661291, 13.992051, 8.331433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822288, 13.639969, 8.432024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907659, -0.348017, 0.234604,
		-0.118981, -0.322681, -0.939000,
		0.402490, -0.880205, 0.251477,
		11.943034, 13.375907, 8.507467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.300040, 13.375802, 7.961951>,  <11.661291, 13.992051, 8.331433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.300040, 13.375802, 7.961951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460441, 13.324589, 8.324785>,  <11.556681, 13.293860, 8.542486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460441, 13.324589, 8.324785>,  <11.300040, 13.375802, 7.961951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.460441, 13.324589, 8.324785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901585, -0.230592, 0.366022,
		0.162304, -0.964591, -0.207900,
		0.401001, -0.128033, 0.907087,
		11.580741, 13.286179, 8.596911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719811, 13.136447, 8.188796>,  <11.300040, 13.375802, 7.961951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719811, 13.136447, 8.188796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.940242, 13.184391, 8.519117>,  <11.072500, 13.213158, 8.717310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.940242, 13.184391, 8.519117>,  <10.719811, 13.136447, 8.188796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.940242, 13.184391, 8.519117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793004, -0.232810, 0.562978,
		0.259733, -0.965108, -0.033247,
		0.551075, 0.119859, 0.825803,
		11.105564, 13.220349, 8.766858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.723089, 15.858654, 17.624727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.101665, 15.986607, 17.607155>,  <18.328812, 16.063377, 17.596611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.101665, 15.986607, 17.607155>,  <17.723089, 15.858654, 17.624727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101665, 15.986607, 17.607155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032377, -0.041352, -0.998620,
		-0.321257, 0.946555, -0.028780,
		0.946438, 0.319882, -0.043931,
		18.385597, 16.082571, 17.593975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639763, 16.411909, 17.139498>,  <17.723089, 15.858654, 17.624727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639763, 16.411909, 17.139498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.031410, 16.330673, 17.143169>,  <18.266397, 16.281931, 17.145372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.031410, 16.330673, 17.143169>,  <17.639763, 16.411909, 17.139498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031410, 16.330673, 17.143169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036347, 0.130448, -0.990789,
		0.200021, 0.970432, 0.135106,
		0.979117, -0.203089, 0.009180,
		18.325146, 16.269747, 17.145924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114189, 17.007626, 16.775553>,  <17.639763, 16.411909, 17.139498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114189, 17.007626, 16.775553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.349422, 16.687263, 16.730452>,  <18.490562, 16.495047, 16.703390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.349422, 16.687263, 16.730452>,  <18.114189, 17.007626, 16.775553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349422, 16.687263, 16.730452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309401, 0.351574, -0.883554,
		0.747282, 0.484716, 0.454554,
		0.588082, -0.800903, -0.112754,
		18.525846, 16.446993, 16.696625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696379, 17.327738, 16.467922>,  <18.114189, 17.007626, 16.775553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696379, 17.327738, 16.467922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.715069, 16.936111, 16.388676>,  <18.726282, 16.701136, 16.341127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.715069, 16.936111, 16.388676>,  <18.696379, 17.327738, 16.467922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715069, 16.936111, 16.388676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371281, 0.201147, -0.906472,
		0.927344, -0.031202, 0.372906,
		0.046725, -0.979064, -0.198117,
		18.729086, 16.642393, 16.329241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369566, 17.261335, 16.090252>,  <18.696379, 17.327738, 16.467922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369566, 17.261335, 16.090252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.143364, 16.941998, 16.007450>,  <19.007643, 16.750395, 15.957769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.143364, 16.941998, 16.007450>,  <19.369566, 17.261335, 16.090252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143364, 16.941998, 16.007450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158025, 0.141455, -0.977251,
		0.809465, -0.585350, 0.046165,
		-0.565503, -0.798346, -0.207002,
		18.973713, 16.702494, 15.945350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733944, 16.954407, 15.567672>,  <19.369566, 17.261335, 16.090252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733944, 16.954407, 15.567672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.365311, 16.799816, 15.553164>,  <19.144131, 16.707062, 15.544458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.365311, 16.799816, 15.553164>,  <19.733944, 16.954407, 15.567672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365311, 16.799816, 15.553164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032677, 0.015866, -0.999340,
		0.386799, -0.922162, -0.001993,
		-0.921585, -0.386478, -0.036270,
		19.088835, 16.683872, 15.542282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843914, 16.561357, 15.036017>,  <19.733944, 16.954407, 15.567672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843914, 16.561357, 15.036017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.450165, 16.611458, 15.085527>,  <19.213915, 16.641518, 15.115233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.450165, 16.611458, 15.085527>,  <19.843914, 16.561357, 15.036017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450165, 16.611458, 15.085527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090898, 0.240584, -0.966363,
		-0.150819, -0.962513, -0.225439,
		-0.984374, 0.125254, 0.123775,
		19.154852, 16.649035, 15.122660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.453398, 16.110605, 14.608832>,  <19.843914, 16.561357, 15.036017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.453398, 16.110605, 14.608832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.212215, 16.420025, 14.686876>,  <19.067507, 16.605677, 14.733703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.212215, 16.420025, 14.686876>,  <19.453398, 16.110605, 14.608832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212215, 16.420025, 14.686876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101165, 0.168456, -0.980504,
		-0.791334, -0.610939, -0.023315,
		-0.602956, 0.773548, 0.195111,
		19.031328, 16.652090, 14.745410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712912, 15.960110, 14.398999>,  <19.453398, 16.110605, 14.608832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712912, 15.960110, 14.398999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.770737, 16.355556, 14.382317>,  <18.805431, 16.592825, 14.372307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.770737, 16.355556, 14.382317>,  <18.712912, 15.960110, 14.398999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770737, 16.355556, 14.382317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138004, -0.021594, -0.990196,
		-0.979825, 0.148900, 0.133311,
		0.144562, 0.988617, -0.041707,
		18.814106, 16.652142, 14.369804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507191, 16.025539, 13.694753>,  <18.712912, 15.960110, 14.398999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507191, 16.025539, 13.694753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.647514, 16.387909, 13.789608>,  <18.731709, 16.605331, 13.846521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.647514, 16.387909, 13.789608>,  <18.507191, 16.025539, 13.694753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647514, 16.387909, 13.789608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214199, 0.324147, -0.921438,
		-0.911620, 0.272454, 0.307762,
		0.350809, 0.905924, 0.237139,
		18.752758, 16.659685, 13.860750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056822, 16.534828, 13.422108>,  <18.507191, 16.025539, 13.694753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056822, 16.534828, 13.422108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.401653, 16.733070, 13.464426>,  <18.608553, 16.852016, 13.489817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.401653, 16.733070, 13.464426>,  <18.056822, 16.534828, 13.422108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401653, 16.733070, 13.464426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125048, 0.410342, -0.903318,
		-0.491103, 0.765502, 0.415722,
		0.862080, 0.495607, 0.105795,
		18.660276, 16.881752, 13.496164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908571, 17.146544, 13.098531>,  <18.056822, 16.534828, 13.422108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908571, 17.146544, 13.098531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307922, 17.124226, 13.093964>,  <18.547533, 17.110836, 13.091224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307922, 17.124226, 13.093964>,  <17.908571, 17.146544, 13.098531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307922, 17.124226, 13.093964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003580, 0.261560, -0.965180,
		0.056837, 0.963573, 0.261336,
		0.998377, -0.055793, -0.011417,
		18.607435, 17.107487, 13.090539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105612, 17.722979, 12.720565>,  <17.908571, 17.146544, 13.098531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105612, 17.722979, 12.720565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.440235, 17.503826, 12.720449>,  <18.641008, 17.372335, 12.720380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.440235, 17.503826, 12.720449>,  <18.105612, 17.722979, 12.720565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440235, 17.503826, 12.720449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179691, 0.274870, -0.944541,
		0.517574, 0.790111, 0.328393,
		0.836557, -0.547879, -0.000289,
		18.691202, 17.339462, 12.720363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689383, 18.197226, 12.584214>,  <18.105612, 17.722979, 12.720565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689383, 18.197226, 12.584214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.789284, 17.830688, 12.459031>,  <18.849224, 17.610767, 12.383922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.789284, 17.830688, 12.459031>,  <18.689383, 18.197226, 12.584214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.789284, 17.830688, 12.459031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228908, 0.369912, -0.900426,
		0.940863, 0.153247, 0.302145,
		0.249754, -0.916341, -0.312957,
		18.864210, 17.555786, 12.365144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347769, 18.204889, 12.418498>,  <18.689383, 18.197226, 12.584214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347769, 18.204889, 12.418498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.168232, 17.908989, 12.217974>,  <19.060511, 17.731449, 12.097659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.168232, 17.908989, 12.217974>,  <19.347769, 18.204889, 12.418498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.168232, 17.908989, 12.217974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198345, 0.464530, -0.863059,
		0.871322, -0.486807, -0.061774,
		-0.448840, -0.739751, -0.501311,
		19.033581, 17.687063, 12.067580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635279, 18.189550, 11.605158>,  <19.347769, 18.204889, 12.418498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635279, 18.189550, 11.605158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.323792, 17.945709, 11.545853>,  <19.136898, 17.799404, 11.510269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.323792, 17.945709, 11.545853>,  <19.635279, 18.189550, 11.605158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323792, 17.945709, 11.545853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074155, 0.145232, -0.986615,
		0.622975, -0.779291, -0.067890,
		-0.778719, -0.609601, -0.148264,
		19.090176, 17.762829, 11.501373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820610, 17.805693, 11.008150>,  <19.635279, 18.189550, 11.605158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820610, 17.805693, 11.008150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.426346, 17.745930, 11.039529>,  <19.189787, 17.710072, 11.058356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.426346, 17.745930, 11.039529>,  <19.820610, 17.805693, 11.008150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426346, 17.745930, 11.039529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101354, 0.152460, -0.983099,
		0.134915, -0.976952, -0.165416,
		-0.985660, -0.149400, 0.078449,
		19.130648, 17.701107, 11.063064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663542, 17.622225, 10.344301>,  <19.820610, 17.805693, 11.008150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663542, 17.622225, 10.344301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300648, 17.679718, 10.502422>,  <19.082911, 17.714214, 10.597295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300648, 17.679718, 10.502422>,  <19.663542, 17.622225, 10.344301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300648, 17.679718, 10.502422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344297, 0.286113, -0.894203,
		-0.241629, -0.947354, -0.210084,
		-0.907235, 0.143734, 0.395304,
		19.028477, 17.722837, 10.621014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285908, 17.192270, 9.968321>,  <19.663542, 17.622225, 10.344301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.285908, 17.192270, 9.968321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.085724, 17.498951, 10.129174>,  <18.965614, 17.682959, 10.225686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.085724, 17.498951, 10.129174>,  <19.285908, 17.192270, 9.968321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085724, 17.498951, 10.129174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375664, 0.226172, -0.898734,
		-0.780011, -0.600846, 0.174832,
		-0.500459, 0.766701, 0.402133,
		18.935587, 17.728962, 10.249814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737162, 17.102711, 9.600417>,  <19.285908, 17.192270, 9.968321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737162, 17.102711, 9.600417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.717880, 17.476124, 9.742512>,  <18.706312, 17.700172, 9.827768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.717880, 17.476124, 9.742512>,  <18.737162, 17.102711, 9.600417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717880, 17.476124, 9.742512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443549, 0.298654, -0.845027,
		-0.894953, -0.198298, 0.399671,
		-0.048203, 0.933533, 0.355236,
		18.703419, 17.756184, 9.849083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.004732, 17.305161, 9.520024>,  <18.737162, 17.102711, 9.600417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.004732, 17.305161, 9.520024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.203873, 17.651890, 9.531056>,  <18.323357, 17.859928, 9.537676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.203873, 17.651890, 9.531056>,  <18.004732, 17.305161, 9.520024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203873, 17.651890, 9.531056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451308, 0.286099, -0.845262,
		-0.740584, 0.408367, 0.533640,
		0.497851, 0.866824, 0.027581,
		18.353228, 17.911938, 9.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537691, 17.775438, 9.440190>,  <18.004732, 17.305161, 9.520024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537691, 17.775438, 9.440190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.874584, 17.971451, 9.350294>,  <18.076721, 18.089058, 9.296356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.874584, 17.971451, 9.350294>,  <17.537691, 17.775438, 9.440190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874584, 17.971451, 9.350294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440291, 0.384669, -0.811279,
		-0.311102, 0.782239, 0.539739,
		0.842235, 0.490033, -0.224741,
		18.127254, 18.118460, 9.282872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321871, 17.959614, 9.993451>,  <17.537691, 17.775438, 9.440190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321871, 17.959614, 9.993451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.930973, 18.036110, 9.956748>,  <16.696434, 18.082008, 9.934726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.930973, 18.036110, 9.956748>,  <17.321871, 17.959614, 9.993451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930973, 18.036110, 9.956748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150201, -0.318452, 0.935964,
		0.149774, 0.928448, 0.339930,
		-0.977245, 0.191241, -0.091758,
		16.637800, 18.093483, 9.929221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155993, 18.294912, 10.605576>,  <17.321871, 17.959614, 9.993451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155993, 18.294912, 10.605576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809341, 18.168568, 10.451077>,  <16.601351, 18.092760, 10.358378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809341, 18.168568, 10.451077>,  <17.155993, 18.294912, 10.605576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809341, 18.168568, 10.451077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214779, -0.462565, 0.860177,
		-0.450361, 0.828412, 0.333031,
		-0.866629, -0.315862, -0.386246,
		16.549353, 18.073809, 10.335203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642086, 18.558941, 11.047348>,  <17.155993, 18.294912, 10.605576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642086, 18.558941, 11.047348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.520943, 18.240883, 10.837198>,  <16.448257, 18.050047, 10.711108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.520943, 18.240883, 10.837198>,  <16.642086, 18.558941, 11.047348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520943, 18.240883, 10.837198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192326, -0.488929, 0.850858,
		-0.933428, 0.358733, -0.004851,
		-0.302859, -0.795147, -0.525373,
		16.430084, 18.002338, 10.679586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984707, 18.426924, 11.289287>,  <16.642086, 18.558941, 11.047348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984707, 18.426924, 11.289287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.077583, 18.077251, 11.118690>,  <16.133308, 17.867449, 11.016333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.077583, 18.077251, 11.118690>,  <15.984707, 18.426924, 11.289287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077583, 18.077251, 11.118690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393331, -0.485411, 0.780812,
		-0.889594, -0.013546, -0.456551,
		0.232191, -0.874181, -0.426491,
		16.147242, 17.814997, 10.990744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492435, 18.021040, 11.511369>,  <15.984707, 18.426924, 11.289287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492435, 18.021040, 11.511369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785090, 17.771404, 11.401664>,  <15.960684, 17.621622, 11.335841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785090, 17.771404, 11.401664>,  <15.492435, 18.021040, 11.511369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.785090, 17.771404, 11.401664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160350, -0.548590, 0.820571,
		-0.662567, -0.556382, -0.501441,
		0.731637, -0.624090, -0.274262,
		16.004581, 17.584177, 11.319386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365870, 17.445408, 11.964810>,  <15.492435, 18.021040, 11.511369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365870, 17.445408, 11.964810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.748807, 17.386780, 11.865203>,  <15.978569, 17.351603, 11.805439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.748807, 17.386780, 11.865203>,  <15.365870, 17.445408, 11.964810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748807, 17.386780, 11.865203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124591, -0.568179, 0.813419,
		-0.260710, -0.809747, -0.525681,
		0.957344, -0.146571, -0.249017,
		16.036011, 17.342808, 11.790498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393107, 16.773449, 11.963843>,  <15.365870, 17.445408, 11.964810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393107, 16.773449, 11.963843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762620, 16.921780, 12.002029>,  <15.984327, 17.010778, 12.024941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762620, 16.921780, 12.002029>,  <15.393107, 16.773449, 11.963843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762620, 16.921780, 12.002029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127942, -0.533893, 0.835816,
		0.360913, -0.759898, -0.540645,
		0.923782, 0.370828, 0.095465,
		16.039755, 17.033028, 12.030669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719412, 16.110312, 12.154984>,  <15.393107, 16.773449, 11.963843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.719412, 16.110312, 12.154984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.924010, 16.444260, 12.236336>,  <16.046770, 16.644629, 12.285147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.924010, 16.444260, 12.236336>,  <15.719412, 16.110312, 12.154984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924010, 16.444260, 12.236336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342859, -0.415317, 0.842591,
		0.787920, -0.361253, -0.498676,
		0.511497, 0.834870, 0.203378,
		16.077459, 16.694721, 12.297349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301128, 15.867762, 12.438561>,  <15.719412, 16.110312, 12.154984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301128, 15.867762, 12.438561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.269390, 16.237526, 12.587782>,  <16.250347, 16.459385, 12.677314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.269390, 16.237526, 12.587782>,  <16.301128, 15.867762, 12.438561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269390, 16.237526, 12.587782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216834, -0.349265, 0.911591,
		0.972978, 0.153222, -0.172731,
		-0.079347, 0.924412, 0.373051,
		16.245586, 16.514849, 12.699697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750988, 15.938046, 12.969803>,  <16.301128, 15.867762, 12.438561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750988, 15.938046, 12.969803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.507011, 16.242638, 13.057549>,  <16.360626, 16.425392, 13.110196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.507011, 16.242638, 13.057549>,  <16.750988, 15.938046, 12.969803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507011, 16.242638, 13.057549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057694, -0.233412, 0.970665,
		0.790344, 0.604704, 0.098434,
		-0.609941, 0.761480, 0.219364,
		16.324030, 16.471081, 13.123358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046358, 16.141548, 13.570800>,  <16.750988, 15.938046, 12.969803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046358, 16.141548, 13.570800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.689289, 16.321667, 13.563133>,  <16.475048, 16.429737, 13.558534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.689289, 16.321667, 13.563133>,  <17.046358, 16.141548, 13.570800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689289, 16.321667, 13.563133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021810, -0.000685, 0.999762,
		0.450176, 0.892879, 0.010433,
		-0.892674, 0.450296, -0.019165,
		16.421488, 16.456755, 13.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038464, 16.615042, 14.147356>,  <17.046358, 16.141548, 13.570800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038464, 16.615042, 14.147356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.653061, 16.563560, 14.053474>,  <16.421818, 16.532673, 13.997146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.653061, 16.563560, 14.053474>,  <17.038464, 16.615042, 14.147356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653061, 16.563560, 14.053474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252226, 0.142951, 0.957051,
		-0.089622, 0.981326, -0.170197,
		-0.963509, -0.128701, -0.234705,
		16.364008, 16.524950, 13.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676767, 17.119230, 14.446433>,  <17.038464, 16.615042, 14.147356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676767, 17.119230, 14.446433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.400093, 16.840748, 14.369629>,  <16.234089, 16.673658, 14.323546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.400093, 16.840748, 14.369629>,  <16.676767, 17.119230, 14.446433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400093, 16.840748, 14.369629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336632, 0.075585, 0.938598,
		-0.638946, 0.713849, -0.286647,
		-0.691684, -0.696208, -0.192010,
		16.192589, 16.631886, 14.312026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089294, 17.370005, 14.783362>,  <16.676767, 17.119230, 14.446433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089294, 17.370005, 14.783362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.018181, 16.983326, 14.709728>,  <15.975513, 16.751318, 14.665548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.018181, 16.983326, 14.709728>,  <16.089294, 17.370005, 14.783362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018181, 16.983326, 14.709728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318486, -0.120473, 0.940241,
		-0.931106, 0.225789, -0.286462,
		-0.177785, -0.966698, -0.184084,
		15.964846, 16.693317, 14.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.384701, 17.271322, 14.869439>,  <16.089294, 17.370005, 14.783362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.384701, 17.271322, 14.869439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575850, 16.924599, 14.926397>,  <15.690540, 16.716564, 14.960572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575850, 16.924599, 14.926397>,  <15.384701, 17.271322, 14.869439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575850, 16.924599, 14.926397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382437, -0.059365, 0.922073,
		-0.790809, -0.495091, -0.359869,
		0.477874, -0.866811, 0.142395,
		15.719213, 16.664557, 14.969116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822240, 16.798620, 15.169511>,  <15.384701, 17.271322, 14.869439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822240, 16.798620, 15.169511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.184205, 16.658737, 15.266537>,  <15.401384, 16.574806, 15.324752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.184205, 16.658737, 15.266537>,  <14.822240, 16.798620, 15.169511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184205, 16.658737, 15.266537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269734, -0.030389, 0.962455,
		-0.329209, -0.936365, -0.121828,
		0.904912, -0.349710, 0.242565,
		15.455679, 16.553825, 15.339306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677072, 16.370050, 15.633263>,  <14.822240, 16.798620, 15.169511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677072, 16.370050, 15.633263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.071988, 16.411800, 15.681198>,  <15.308938, 16.436850, 15.709959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.071988, 16.411800, 15.681198>,  <14.677072, 16.370050, 15.633263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071988, 16.411800, 15.681198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134956, 0.152451, 0.979053,
		0.083914, -0.982785, 0.164599,
		0.987292, 0.104370, 0.119840,
		15.368176, 16.443113, 15.717150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763369, 15.918821, 16.229038>,  <14.677072, 16.370050, 15.633263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763369, 15.918821, 16.229038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.081363, 16.159901, 16.201464>,  <15.272160, 16.304548, 16.184919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.081363, 16.159901, 16.201464>,  <14.763369, 15.918821, 16.229038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081363, 16.159901, 16.201464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073498, 0.017104, 0.997149,
		0.602159, -0.797786, -0.030700,
		0.794986, 0.602699, -0.068935,
		15.319859, 16.340710, 16.180782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.334796, 15.672349, 16.668343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447959, 16.052494, 16.616537>,  <15.515857, 16.280581, 16.585453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447959, 16.052494, 16.616537>,  <15.334796, 15.672349, 16.668343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447959, 16.052494, 16.616537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084934, 0.109678, 0.990332,
		0.955379, -0.291172, -0.049689,
		0.282907, 0.950363, -0.129515,
		15.532831, 16.337603, 16.577682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023249, 15.780570, 16.950380>,  <15.334796, 15.672349, 16.668343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023249, 15.780570, 16.950380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.832686, 16.132046, 16.938105>,  <15.718349, 16.342932, 16.930738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.832686, 16.132046, 16.938105>,  <16.023249, 15.780570, 16.950380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832686, 16.132046, 16.938105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134535, 0.107349, 0.985077,
		0.868871, 0.465168, -0.169357,
		-0.476407, 0.878689, -0.030691,
		15.689764, 16.395653, 16.928898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487898, 16.226135, 17.298656>,  <16.023249, 15.780570, 16.950380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487898, 16.226135, 17.298656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.137970, 16.418945, 17.318007>,  <15.928013, 16.534632, 17.329617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.137970, 16.418945, 17.318007>,  <16.487898, 16.226135, 17.298656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137970, 16.418945, 17.318007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184502, 0.239183, 0.953284,
		0.447936, 0.842878, -0.298177,
		-0.874821, 0.482025, 0.048374,
		15.875524, 16.563553, 17.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646631, 16.710428, 17.762007>,  <16.487898, 16.226135, 17.298656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646631, 16.710428, 17.762007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.246872, 16.716991, 17.749805>,  <16.007015, 16.720928, 17.742485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.246872, 16.716991, 17.749805>,  <16.646631, 16.710428, 17.762007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246872, 16.716991, 17.749805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021980, 0.380255, 0.924621,
		0.026769, 0.924736, -0.379666,
		-0.999400, 0.016406, -0.030505,
		15.947052, 16.721912, 17.740654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.468121, 17.291195, 18.074120>,  <16.646631, 16.710428, 17.762007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.468121, 17.291195, 18.074120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126343, 17.083424, 18.078535>,  <15.921276, 16.958761, 18.081184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126343, 17.083424, 18.078535>,  <16.468121, 17.291195, 18.074120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126343, 17.083424, 18.078535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002800, 0.025848, 0.999662,
		-0.519538, 0.854123, -0.023540,
		-0.854442, -0.519429, 0.011037,
		15.870010, 16.927595, 18.081846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056768, 17.630426, 18.685785>,  <16.468121, 17.291195, 18.074120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056768, 17.630426, 18.685785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.922147, 17.266445, 18.588858>,  <15.841373, 17.048058, 18.530701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.922147, 17.266445, 18.588858>,  <16.056768, 17.630426, 18.685785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922147, 17.266445, 18.588858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094089, -0.223548, 0.970141,
		-0.936951, 0.349306, -0.010380,
		-0.336556, -0.909951, -0.242319,
		15.821180, 16.993460, 18.516161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419766, 17.561304, 18.956402>,  <16.056768, 17.630426, 18.685785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419766, 17.561304, 18.956402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.572904, 17.194035, 18.915627>,  <15.664786, 16.973673, 18.891161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.572904, 17.194035, 18.915627>,  <15.419766, 17.561304, 18.956402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572904, 17.194035, 18.915627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135789, -0.053219, 0.989307,
		-0.913779, -0.392592, 0.104303,
		0.382843, -0.918172, -0.101941,
		15.687757, 16.918583, 18.885044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056519, 16.985378, 19.355179>,  <15.419766, 17.561304, 18.956402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056519, 16.985378, 19.355179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.420693, 16.827305, 19.306295>,  <15.639198, 16.732462, 19.276964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.420693, 16.827305, 19.306295>,  <15.056519, 16.985378, 19.355179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420693, 16.827305, 19.306295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022783, -0.342904, 0.939094,
		-0.413021, -0.852201, -0.321196,
		0.910436, -0.395184, -0.122211,
		15.693825, 16.708750, 19.269632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956154, 16.232115, 19.536757>,  <15.056519, 16.985378, 19.355179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956154, 16.232115, 19.536757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.347178, 16.312103, 19.563246>,  <15.581793, 16.360096, 19.579140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.347178, 16.312103, 19.563246>,  <14.956154, 16.232115, 19.536757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347178, 16.312103, 19.563246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020361, -0.402594, 0.915152,
		0.209663, -0.893269, -0.397632,
		0.977562, 0.199970, 0.066222,
		15.640447, 16.372093, 19.583113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309996, 15.622210, 19.865036>,  <14.956154, 16.232115, 19.536757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309996, 15.622210, 19.865036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.581462, 15.909489, 19.926491>,  <15.744342, 16.081856, 19.963364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.581462, 15.909489, 19.926491>,  <15.309996, 15.622210, 19.865036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581462, 15.909489, 19.926491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090520, -0.289384, 0.952923,
		0.728848, -0.632810, -0.261407,
		0.678666, 0.718198, 0.153635,
		15.785062, 16.124949, 19.972582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924650, 15.343151, 20.266109>,  <15.309996, 15.622210, 19.865036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924650, 15.343151, 20.266109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.922601, 15.737347, 20.333975>,  <15.921371, 15.973864, 20.374693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.922601, 15.737347, 20.333975>,  <15.924650, 15.343151, 20.266109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922601, 15.737347, 20.333975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103018, -0.168240, 0.980348,
		0.994666, 0.022502, -0.100661,
		-0.005124, 0.985489, 0.169661,
		15.921063, 16.032993, 20.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355778, 15.381669, 20.809042>,  <15.924650, 15.343151, 20.266109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355778, 15.381669, 20.809042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.133183, 15.713982, 20.804630>,  <15.999625, 15.913369, 20.801983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.133183, 15.713982, 20.804630>,  <16.355778, 15.381669, 20.809042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133183, 15.713982, 20.804630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080811, -0.040908, 0.995890,
		0.826916, 0.555092, 0.089901,
		-0.556488, 0.830782, -0.011030,
		15.966236, 15.963217, 20.801321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620411, 15.805596, 21.298397>,  <16.355778, 15.381669, 20.809042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620411, 15.805596, 21.298397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.271862, 15.993626, 21.242195>,  <16.062733, 16.106443, 21.208473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.271862, 15.993626, 21.242195>,  <16.620411, 15.805596, 21.298397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271862, 15.993626, 21.242195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081756, 0.143256, 0.986303,
		0.483763, 0.870924, -0.086398,
		-0.871372, 0.470074, -0.140506,
		16.010450, 16.134647, 21.200043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704710, 16.429750, 21.611107>,  <16.620411, 15.805596, 21.298397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704710, 16.429750, 21.611107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.310387, 16.362701, 21.614878>,  <16.073793, 16.322472, 21.617140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.310387, 16.362701, 21.614878>,  <16.704710, 16.429750, 21.611107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310387, 16.362701, 21.614878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055514, 0.378459, 0.923952,
		-0.158443, 0.910314, -0.382392,
		-0.985806, -0.167622, 0.009428,
		16.014645, 16.312414, 21.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464233, 17.007076, 21.820549>,  <16.704710, 16.429750, 21.611107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464233, 17.007076, 21.820549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169758, 16.743301, 21.881435>,  <15.993073, 16.585037, 21.917967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169758, 16.743301, 21.881435>,  <16.464233, 17.007076, 21.820549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169758, 16.743301, 21.881435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117491, 0.346026, 0.930839,
		-0.666499, 0.667391, -0.332218,
		-0.736190, -0.659436, 0.152214,
		15.948901, 16.545471, 21.927099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951952, 17.421400, 22.021650>,  <16.464233, 17.007076, 21.820549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951952, 17.421400, 22.021650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.881818, 17.049442, 22.150990>,  <15.839738, 16.826267, 22.228592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.881818, 17.049442, 22.150990>,  <15.951952, 17.421400, 22.021650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881818, 17.049442, 22.150990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383074, 0.366990, 0.847687,
		-0.906925, 0.024764, -0.420565,
		-0.175335, -0.929895, 0.323346,
		15.829217, 16.770473, 22.247993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330051, 17.572966, 22.379524>,  <15.951952, 17.421400, 22.021650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330051, 17.572966, 22.379524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.443734, 17.210609, 22.505121>,  <15.511944, 16.993196, 22.580479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.443734, 17.210609, 22.505121>,  <15.330051, 17.572966, 22.379524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443734, 17.210609, 22.505121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221217, 0.256702, 0.940833,
		-0.932893, -0.336852, -0.127441,
		0.284207, -0.905889, 0.313993,
		15.528996, 16.938843, 22.599319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795029, 17.412298, 22.847116>,  <15.330051, 17.572966, 22.379524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795029, 17.412298, 22.847116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.082891, 17.147690, 22.931484>,  <15.255608, 16.988924, 22.982105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.082891, 17.147690, 22.931484>,  <14.795029, 17.412298, 22.847116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082891, 17.147690, 22.931484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188386, 0.106349, 0.976320,
		-0.668287, -0.742347, -0.048086,
		0.719655, -0.661521, 0.210920,
		15.298787, 16.949234, 22.994761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500572, 16.849218, 23.298620>,  <14.795029, 17.412298, 22.847116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500572, 16.849218, 23.298620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.892114, 16.866390, 23.378624>,  <15.127038, 16.876694, 23.426626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.892114, 16.866390, 23.378624>,  <14.500572, 16.849218, 23.298620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.892114, 16.866390, 23.378624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204123, 0.140712, 0.968780,
		0.013442, -0.989120, 0.146499,
		0.978853, 0.042926, 0.200011,
		15.185770, 16.879269, 23.438627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486758, 16.622414, 24.017254>,  <14.500572, 16.849218, 23.298620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486758, 16.622414, 24.017254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.850078, 16.778675, 23.957411>,  <15.068069, 16.872433, 23.921505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.850078, 16.778675, 23.957411>,  <14.486758, 16.622414, 24.017254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850078, 16.778675, 23.957411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135839, 0.062821, 0.988737,
		0.395654, -0.918391, 0.003994,
		0.908298, 0.390655, -0.149609,
		15.122567, 16.895872, 23.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949467, 16.269043, 24.420441>,  <14.486758, 16.622414, 24.017254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949467, 16.269043, 24.420441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.104913, 16.630810, 24.350004>,  <15.198180, 16.847870, 24.307743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.104913, 16.630810, 24.350004>,  <14.949467, 16.269043, 24.420441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104913, 16.630810, 24.350004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143089, 0.129555, 0.981194,
		0.910222, -0.406503, -0.079065,
		0.388615, 0.904417, -0.176090,
		15.221498, 16.902136, 24.297176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561172, 16.269110, 24.879820>,  <14.949467, 16.269043, 24.420441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561172, 16.269110, 24.879820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.503030, 16.654915, 24.791653>,  <15.468144, 16.886398, 24.738752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.503030, 16.654915, 24.791653>,  <15.561172, 16.269110, 24.879820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503030, 16.654915, 24.791653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306130, 0.255698, 0.917008,
		0.940827, 0.065814, -0.332434,
		-0.145355, 0.964514, -0.220420,
		15.459423, 16.944269, 24.725527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110815, 16.662853, 25.203402>,  <15.561172, 16.269110, 24.879820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110815, 16.662853, 25.203402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828275, 16.941154, 25.151260>,  <15.658751, 17.108135, 25.119976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828275, 16.941154, 25.151260>,  <16.110815, 16.662853, 25.203402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828275, 16.941154, 25.151260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097844, 0.278349, 0.955483,
		0.701065, 0.662154, -0.264687,
		-0.706352, 0.695754, -0.130353,
		15.616369, 17.149881, 25.112154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222672, 17.405338, 25.164494>,  <16.110815, 16.662853, 25.203402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222672, 17.405338, 25.164494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874175, 17.336437, 25.348349>,  <15.665077, 17.295097, 25.458662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874175, 17.336437, 25.348349>,  <16.222672, 17.405338, 25.164494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874175, 17.336437, 25.348349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424642, 0.205182, 0.881804,
		-0.246202, 0.963447, -0.105618,
		-0.871242, -0.172253, 0.459637,
		15.612803, 17.284761, 25.486240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015978, 17.508827, 25.300112>,  <16.222672, 17.405338, 25.164494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015978, 17.508827, 25.300112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.413391, 17.498257, 25.344282>,  <17.651838, 17.491915, 25.370785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.413391, 17.498257, 25.344282>,  <17.015978, 17.508827, 25.300112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413391, 17.498257, 25.344282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099831, -0.260001, -0.960434,
		0.054093, 0.965247, -0.255681,
		0.993533, -0.026428, 0.110426,
		17.711451, 17.490328, 25.377409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326145, 17.630424, 24.600309>,  <17.015978, 17.508827, 25.300112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326145, 17.630424, 24.600309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.638466, 17.489422, 24.806646>,  <17.825857, 17.404821, 24.930449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.638466, 17.489422, 24.806646>,  <17.326145, 17.630424, 24.600309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638466, 17.489422, 24.806646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407367, -0.338770, -0.848108,
		0.473714, 0.872339, -0.120913,
		0.780799, -0.352504, 0.515842,
		17.872705, 17.383671, 24.961399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963720, 17.945635, 24.330715>,  <17.326145, 17.630424, 24.600309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963720, 17.945635, 24.330715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.062000, 17.593624, 24.493284>,  <18.120968, 17.382418, 24.590826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.062000, 17.593624, 24.493284>,  <17.963720, 17.945635, 24.330715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062000, 17.593624, 24.493284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377224, -0.299421, -0.876384,
		0.892935, 0.368642, 0.258400,
		0.245702, -0.880028, 0.406424,
		18.135712, 17.329617, 24.615211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597286, 17.900078, 24.057289>,  <17.963720, 17.945635, 24.330715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597286, 17.900078, 24.057289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.521233, 17.530766, 24.190796>,  <18.475601, 17.309177, 24.270901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.521233, 17.530766, 24.190796>,  <18.597286, 17.900078, 24.057289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521233, 17.530766, 24.190796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565618, -0.380893, -0.731435,
		0.802450, 0.049715, 0.594645,
		-0.190132, -0.923282, 0.333767,
		18.464193, 17.253780, 24.290926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182001, 17.566189, 23.987259>,  <18.597286, 17.900078, 24.057289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182001, 17.566189, 23.987259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.870998, 17.317604, 23.948748>,  <18.684397, 17.168453, 23.925640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.870998, 17.317604, 23.948748>,  <19.182001, 17.566189, 23.987259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870998, 17.317604, 23.948748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351439, -0.302417, -0.886022,
		0.521513, -0.722723, 0.453537,
		-0.777505, -0.621463, -0.096279,
		18.637747, 17.131165, 23.919865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466076, 17.029251, 23.607635>,  <19.182001, 17.566189, 23.987259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466076, 17.029251, 23.607635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.071728, 16.964539, 23.590269>,  <18.835119, 16.925711, 23.579849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.071728, 16.964539, 23.590269>,  <19.466076, 17.029251, 23.607635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071728, 16.964539, 23.590269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093823, -0.318602, -0.943234,
		0.138764, -0.933980, 0.329280,
		-0.985871, -0.161781, -0.043418,
		18.775967, 16.916004, 23.577244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447069, 16.437225, 23.118132>,  <19.466076, 17.029251, 23.607635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.447069, 16.437225, 23.118132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.068687, 16.564850, 23.141357>,  <18.841658, 16.641424, 23.155293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.068687, 16.564850, 23.141357>,  <19.447069, 16.437225, 23.118132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068687, 16.564850, 23.141357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156293, -0.291656, -0.943668,
		-0.284124, -0.901751, 0.325759,
		-0.945963, 0.319033, 0.058071,
		18.784901, 16.660568, 23.158775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039522, 15.942736, 22.728434>,  <19.447069, 16.437225, 23.118132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039522, 15.942736, 22.728434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830070, 16.281971, 22.760826>,  <18.704399, 16.485512, 22.780262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830070, 16.281971, 22.760826>,  <19.039522, 15.942736, 22.728434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830070, 16.281971, 22.760826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338482, -0.119866, -0.933307,
		-0.781821, -0.516117, 0.349828,
		-0.523628, 0.848089, 0.080983,
		18.672981, 16.536398, 22.785120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298145, 15.816274, 22.504002>,  <19.039522, 15.942736, 22.728434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298145, 15.816274, 22.504002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382015, 16.201374, 22.435713>,  <18.432337, 16.432434, 22.394739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382015, 16.201374, 22.435713>,  <18.298145, 15.816274, 22.504002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382015, 16.201374, 22.435713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171899, -0.135586, -0.975739,
		-0.962541, 0.233936, 0.137067,
		0.209676, 0.962751, -0.170721,
		18.444918, 16.490200, 22.384497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778214, 16.033949, 22.051598>,  <18.298145, 15.816274, 22.504002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778214, 16.033949, 22.051598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.040558, 16.335243, 22.031679>,  <18.197966, 16.516020, 22.019728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.040558, 16.335243, 22.031679>,  <17.778214, 16.033949, 22.051598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040558, 16.335243, 22.031679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220015, 0.127636, -0.967110,
		-0.722107, 0.645247, 0.249435,
		0.655862, 0.753237, -0.049797,
		18.237316, 16.561214, 22.016741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483250, 16.347910, 21.543007>,  <17.778214, 16.033949, 22.051598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483250, 16.347910, 21.543007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.833172, 16.541317, 21.555161>,  <18.043125, 16.657362, 21.562452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.833172, 16.541317, 21.555161>,  <17.483250, 16.347910, 21.543007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.833172, 16.541317, 21.555161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053192, 0.158195, -0.985974,
		-0.481542, 0.860922, 0.164109,
		0.874808, 0.483517, 0.030383,
		18.095613, 16.686373, 21.564276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407749, 16.973608, 21.157301>,  <17.483250, 16.347910, 21.543007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407749, 16.973608, 21.157301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.788582, 16.852764, 21.138233>,  <18.017080, 16.780258, 21.126793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.788582, 16.852764, 21.138233>,  <17.407749, 16.973608, 21.157301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788582, 16.852764, 21.138233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056743, -0.021321, -0.998161,
		0.300537, 0.953035, -0.037442,
		0.952081, -0.302109, -0.047671,
		18.074205, 16.762131, 21.123932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684896, 17.319710, 20.647987>,  <17.407749, 16.973608, 21.157301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684896, 17.319710, 20.647987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.910038, 16.989788, 20.669510>,  <18.045122, 16.791836, 20.682425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.910038, 16.989788, 20.669510>,  <17.684896, 17.319710, 20.647987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.910038, 16.989788, 20.669510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043659, -0.035341, -0.998421,
		0.825404, 0.564312, 0.016119,
		0.562852, -0.824805, 0.053808,
		18.078894, 16.742346, 20.685652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199816, 17.516911, 20.119394>,  <17.684896, 17.319710, 20.647987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199816, 17.516911, 20.119394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.223488, 17.125645, 20.199083>,  <18.237690, 16.890884, 20.246897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.223488, 17.125645, 20.199083>,  <18.199816, 17.516911, 20.119394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223488, 17.125645, 20.199083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338491, -0.168084, -0.925836,
		0.939107, 0.122224, 0.321153,
		0.059178, -0.978166, 0.199220,
		18.241241, 16.832195, 20.258850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740644, 17.326527, 19.741821>,  <18.199816, 17.516911, 20.119394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740644, 17.326527, 19.741821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.565403, 16.975315, 19.818897>,  <18.460258, 16.764587, 19.865143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.565403, 16.975315, 19.818897>,  <18.740644, 17.326527, 19.741821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565403, 16.975315, 19.818897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369527, -0.371313, -0.851808,
		0.819462, -0.301975, 0.487128,
		-0.438102, -0.878031, 0.192689,
		18.433973, 16.711906, 19.876703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163805, 16.832016, 19.604389>,  <18.740644, 17.326527, 19.741821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163805, 16.832016, 19.604389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.806404, 16.653973, 19.580629>,  <18.591963, 16.547146, 19.566374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.806404, 16.653973, 19.580629>,  <19.163805, 16.832016, 19.604389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806404, 16.653973, 19.580629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250248, -0.383719, -0.888896,
		0.372862, -0.809097, 0.454242,
		-0.893504, -0.445109, -0.059401,
		18.538353, 16.520439, 19.562809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304991, 16.018732, 19.509289>,  <19.163805, 16.832016, 19.604389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304991, 16.018732, 19.509289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.934254, 16.094616, 19.379692>,  <18.711811, 16.140146, 19.301933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.934254, 16.094616, 19.379692>,  <19.304991, 16.018732, 19.509289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934254, 16.094616, 19.379692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192545, -0.500651, -0.843964,
		-0.322316, -0.844605, 0.427498,
		-0.926844, 0.189711, -0.323992,
		18.656200, 16.151529, 19.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190378, 15.498247, 19.007397>,  <19.304991, 16.018732, 19.509289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190378, 15.498247, 19.007397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.905930, 15.766911, 18.924278>,  <18.735260, 15.928109, 18.874407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.905930, 15.766911, 18.924278>,  <19.190378, 15.498247, 19.007397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905930, 15.766911, 18.924278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043445, -0.253012, -0.966487,
		-0.701725, -0.696318, 0.150742,
		-0.711122, 0.671659, -0.207796,
		18.692593, 15.968409, 18.861940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756233, 15.236318, 18.518867>,  <19.190378, 15.498247, 19.007397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756233, 15.236318, 18.518867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.689049, 15.627182, 18.466799>,  <18.648737, 15.861701, 18.435556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.689049, 15.627182, 18.466799>,  <18.756233, 15.236318, 18.518867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689049, 15.627182, 18.466799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032083, -0.137399, -0.989996,
		-0.985271, -0.162107, 0.054428,
		-0.167963, 0.977161, -0.130174,
		18.638660, 15.920330, 18.427746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.269146, 15.229569, 18.034384>,  <18.756233, 15.236318, 18.518867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.269146, 15.229569, 18.034384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418797, 15.599731, 18.010204>,  <18.508587, 15.821829, 17.995697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418797, 15.599731, 18.010204>,  <18.269146, 15.229569, 18.034384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418797, 15.599731, 18.010204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002596, -0.064139, -0.997937,
		-0.927374, 0.373513, -0.021593,
		0.374127, 0.925405, -0.060451,
		18.531034, 15.877353, 17.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.095929, 16.351219, 13.724377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.483212, 16.421547, 13.795551>,  <15.715583, 16.463743, 13.838256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.483212, 16.421547, 13.795551>,  <15.095929, 16.351219, 13.724377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483212, 16.421547, 13.795551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139926, 0.208965, -0.967860,
		-0.207349, 0.961988, 0.177720,
		0.968208, 0.175817, 0.177936,
		15.773675, 16.474293, 13.848932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201578, 17.047390, 13.516929>,  <15.095929, 16.351219, 13.724377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201578, 17.047390, 13.516929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.548064, 16.847900, 13.529221>,  <15.755956, 16.728207, 13.536595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.548064, 16.847900, 13.529221>,  <15.201578, 17.047390, 13.516929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548064, 16.847900, 13.529221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219870, 0.325214, -0.919725,
		0.448697, 0.803436, 0.391360,
		0.866215, -0.498725, 0.030729,
		15.807929, 16.698282, 13.538440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621956, 17.539320, 13.249775>,  <15.201578, 17.047390, 13.516929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621956, 17.539320, 13.249775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.842284, 17.206951, 13.218374>,  <15.974482, 17.007530, 13.199534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.842284, 17.206951, 13.218374>,  <15.621956, 17.539320, 13.249775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842284, 17.206951, 13.218374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412417, 0.352743, -0.839931,
		0.725609, 0.430276, 0.536986,
		0.550820, -0.830924, -0.078500,
		16.007530, 16.957674, 13.194824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176777, 17.787958, 13.010312>,  <15.621956, 17.539320, 13.249775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176777, 17.787958, 13.010312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.222828, 17.399220, 12.928085>,  <16.250458, 17.165976, 12.878749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.222828, 17.399220, 12.928085>,  <16.176777, 17.787958, 13.010312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.222828, 17.399220, 12.928085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262984, 0.229379, -0.937137,
		0.957907, 0.053828, 0.281987,
		0.115126, -0.971848, -0.205568,
		16.257366, 17.107666, 12.866415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863937, 17.673727, 12.736626>,  <16.176777, 17.787958, 13.010312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863937, 17.673727, 12.736626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.616871, 17.389805, 12.601177>,  <16.468630, 17.219452, 12.519908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.616871, 17.389805, 12.601177>,  <16.863937, 17.673727, 12.736626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616871, 17.389805, 12.601177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244083, 0.236290, -0.940527,
		0.747603, -0.663584, 0.027303,
		-0.617667, -0.709805, -0.338621,
		16.431570, 17.176863, 12.499591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.230135, 17.427759, 12.174139>,  <16.863937, 17.673727, 12.736626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.230135, 17.427759, 12.174139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.846458, 17.323212, 12.130979>,  <16.616253, 17.260483, 12.105083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.846458, 17.323212, 12.130979>,  <17.230135, 17.427759, 12.174139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846458, 17.323212, 12.130979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069852, 0.150745, -0.986102,
		0.274002, -0.953395, -0.126336,
		-0.959189, -0.261369, -0.107901,
		16.558702, 17.244801, 12.098608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247875, 17.007710, 11.585871>,  <17.230135, 17.427759, 12.174139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247875, 17.007710, 11.585871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.866562, 17.117016, 11.637374>,  <16.637774, 17.182600, 11.668276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.866562, 17.117016, 11.637374>,  <17.247875, 17.007710, 11.585871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866562, 17.117016, 11.637374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055987, 0.259032, -0.964245,
		-0.296847, -0.926407, -0.231631,
		-0.953283, 0.273265, 0.128759,
		16.580578, 17.198996, 11.676002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992453, 16.780615, 11.030345>,  <17.247875, 17.007710, 11.585871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992453, 16.780615, 11.030345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.704624, 17.038437, 11.133699>,  <16.531927, 17.193130, 11.195712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.704624, 17.038437, 11.133699>,  <16.992453, 16.780615, 11.030345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704624, 17.038437, 11.133699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212985, 0.149303, -0.965581,
		-0.660949, -0.749837, 0.029847,
		-0.719571, 0.644557, 0.258385,
		16.488752, 17.231804, 11.211215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475685, 16.593966, 10.490210>,  <16.992453, 16.780615, 11.030345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475685, 16.593966, 10.490210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.412815, 16.958466, 10.642485>,  <16.375093, 17.177166, 10.733850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.412815, 16.958466, 10.642485>,  <16.475685, 16.593966, 10.490210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412815, 16.958466, 10.642485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033511, 0.380336, -0.924241,
		-0.987002, -0.158026, -0.029243,
		-0.157177, 0.911248, 0.380688,
		16.365662, 17.231840, 10.756691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195719, 16.952906, 9.872684>,  <16.475685, 16.593966, 10.490210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.195719, 16.952906, 9.872684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.234222, 17.246052, 10.142097>,  <16.257324, 17.421940, 10.303743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.234222, 17.246052, 10.142097>,  <16.195719, 16.952906, 9.872684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234222, 17.246052, 10.142097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219945, 0.675605, -0.703691,
		-0.970752, -0.080404, 0.226222,
		0.096257, 0.732866, 0.673530,
		16.263100, 17.465912, 10.344155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561379, 17.442442, 9.814919>,  <16.195719, 16.952906, 9.872684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561379, 17.442442, 9.814919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854138, 17.637577, 10.005219>,  <16.029795, 17.754658, 10.119400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854138, 17.637577, 10.005219>,  <15.561379, 17.442442, 9.814919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854138, 17.637577, 10.005219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074315, 0.636872, -0.767379,
		-0.677349, 0.596999, 0.429872,
		0.731898, 0.487838, 0.475751,
		16.073708, 17.783928, 10.147944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413025, 18.032379, 9.570985>,  <15.561379, 17.442442, 9.814919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413025, 18.032379, 9.570985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.791015, 18.072266, 9.695615>,  <16.017809, 18.096197, 9.770393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.791015, 18.072266, 9.695615>,  <15.413025, 18.032379, 9.570985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791015, 18.072266, 9.695615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112562, 0.795154, -0.595869,
		-0.307168, 0.598152, 0.740177,
		0.944975, 0.099716, 0.311576,
		16.074507, 18.102180, 9.789087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547567, 18.735220, 9.849527>,  <15.413025, 18.032379, 9.570985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547567, 18.735220, 9.849527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.877826, 18.575058, 9.690539>,  <16.075981, 18.478960, 9.595147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.877826, 18.575058, 9.690539>,  <15.547567, 18.735220, 9.849527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877826, 18.575058, 9.690539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114694, 0.808909, -0.576638,
		0.552406, 0.430512, 0.713797,
		0.825647, -0.400407, -0.397469,
		16.125519, 18.454935, 9.571299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193886, 19.179899, 9.949847>,  <15.547567, 18.735220, 9.849527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193886, 19.179899, 9.949847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.176479, 18.962124, 9.614779>,  <16.166035, 18.831459, 9.413737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.176479, 18.962124, 9.614779>,  <16.193886, 19.179899, 9.949847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176479, 18.962124, 9.614779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069341, 0.838091, -0.541106,
		0.996643, 0.034539, -0.074222,
		-0.043515, -0.544436, -0.837673,
		16.163425, 18.798794, 9.363477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298439, 19.348364, 9.117219>,  <16.193886, 19.179899, 9.949847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298439, 19.348364, 9.117219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.150936, 19.717003, 9.068764>,  <16.062433, 19.938187, 9.039690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.150936, 19.717003, 9.068764>,  <16.298439, 19.348364, 9.117219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150936, 19.717003, 9.068764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402242, 0.275705, 0.873034,
		0.837985, 0.273212, -0.472374,
		-0.368759, 0.921598, -0.121139,
		16.040308, 19.993483, 9.032422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880619, 19.875860, 9.331448>,  <16.298439, 19.348364, 9.117219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880619, 19.875860, 9.331448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.518562, 20.043369, 9.360710>,  <16.301329, 20.143875, 9.378267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.518562, 20.043369, 9.360710>,  <16.880619, 19.875860, 9.331448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518562, 20.043369, 9.360710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240185, 0.361778, 0.900793,
		0.350761, 0.832914, -0.428042,
		-0.905139, 0.418773, 0.073156,
		16.247021, 20.169001, 9.382657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053734, 20.644756, 9.559884>,  <16.880619, 19.875860, 9.331448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053734, 20.644756, 9.559884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.690311, 20.520332, 9.671429>,  <16.472258, 20.445679, 9.738356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.690311, 20.520332, 9.671429>,  <17.053734, 20.644756, 9.559884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690311, 20.520332, 9.671429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115244, 0.454995, 0.883005,
		-0.401548, 0.834399, -0.377542,
		-0.908558, -0.311059, 0.278862,
		16.417744, 20.427015, 9.755087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732384, 21.208555, 9.860287>,  <17.053734, 20.644756, 9.559884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732384, 21.208555, 9.860287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.522514, 20.900883, 10.006205>,  <16.396593, 20.716278, 10.093755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.522514, 20.900883, 10.006205>,  <16.732384, 21.208555, 9.860287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.522514, 20.900883, 10.006205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025940, 0.442759, 0.896266,
		-0.850908, 0.460785, -0.252257,
		-0.524674, -0.769183, 0.364794,
		16.365112, 20.670128, 10.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228477, 21.510395, 10.316965>,  <16.732384, 21.208555, 9.860287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228477, 21.510395, 10.316965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.231983, 21.131886, 10.446262>,  <16.234087, 20.904779, 10.523841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.231983, 21.131886, 10.446262>,  <16.228477, 21.510395, 10.316965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231983, 21.131886, 10.446262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098577, 0.322499, 0.941423,
		-0.995091, 0.023614, 0.096107,
		0.008764, -0.946275, 0.323243,
		16.234612, 20.848003, 10.543236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729019, 21.388243, 10.918484>,  <16.228477, 21.510395, 10.316965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729019, 21.388243, 10.918484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.998637, 21.096466, 10.965100>,  <16.160408, 20.921400, 10.993070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.998637, 21.096466, 10.965100>,  <15.729019, 21.388243, 10.918484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998637, 21.096466, 10.965100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146253, 0.286426, 0.946874,
		-0.724067, -0.621191, 0.299746,
		0.674045, -0.729440, 0.116540,
		16.200851, 20.877634, 11.000062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514683, 21.066008, 11.537727>,  <15.729019, 21.388243, 10.918484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514683, 21.066008, 11.537727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.884496, 20.933937, 11.461601>,  <16.106384, 20.854694, 11.415925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.884496, 20.933937, 11.461601>,  <15.514683, 21.066008, 11.537727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.884496, 20.933937, 11.461601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235940, 0.103727, 0.966216,
		-0.299283, -0.938202, 0.173801,
		0.924534, -0.330178, -0.190316,
		16.161856, 20.834883, 11.404507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585279, 20.524765, 12.110981>,  <15.514683, 21.066008, 11.537727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585279, 20.524765, 12.110981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949290, 20.648842, 12.000977>,  <16.167696, 20.723288, 11.934974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949290, 20.648842, 12.000977>,  <15.585279, 20.524765, 12.110981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949290, 20.648842, 12.000977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259551, 0.090937, 0.961438,
		0.323240, -0.946314, 0.002244,
		0.910027, 0.310193, -0.275012,
		16.222298, 20.741899, 11.918473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998154, 20.103300, 12.607449>,  <15.585279, 20.524765, 12.110981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998154, 20.103300, 12.607449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.226212, 20.399483, 12.465094>,  <16.363047, 20.577192, 12.379681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.226212, 20.399483, 12.465094>,  <15.998154, 20.103300, 12.607449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226212, 20.399483, 12.465094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358226, 0.165775, 0.918800,
		0.739330, -0.651338, -0.170735,
		0.570145, 0.740458, -0.355888,
		16.397255, 20.621620, 12.358327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.665314, 19.953487, 12.785489>,  <15.998154, 20.103300, 12.607449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.665314, 19.953487, 12.785489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.643616, 20.348755, 12.728102>,  <16.630596, 20.585915, 12.693669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.643616, 20.348755, 12.728102>,  <16.665314, 19.953487, 12.785489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643616, 20.348755, 12.728102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358178, 0.153375, 0.920970,
		0.932076, -0.001427, -0.362260,
		-0.054247, 0.988167, -0.143468,
		16.627342, 20.645205, 12.685061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249935, 20.200878, 12.945032>,  <16.665314, 19.953487, 12.785489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249935, 20.200878, 12.945032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.019184, 20.526218, 12.975163>,  <16.880733, 20.721422, 12.993240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.019184, 20.526218, 12.975163>,  <17.249935, 20.200878, 12.945032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019184, 20.526218, 12.975163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311807, 0.134040, 0.940643,
		0.754974, 0.566125, -0.330933,
		-0.576880, 0.813349, 0.075325,
		16.846121, 20.770224, 12.997760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574677, 20.577585, 13.442295>,  <17.249935, 20.200878, 12.945032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574677, 20.577585, 13.442295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.218037, 20.757462, 13.421030>,  <17.004053, 20.865387, 13.408271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.218037, 20.757462, 13.421030>,  <17.574677, 20.577585, 13.442295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218037, 20.757462, 13.421030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105863, 0.321148, 0.941093,
		0.440275, 0.833451, -0.333942,
		-0.891600, 0.449692, -0.053162,
		16.950556, 20.892368, 13.405082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604359, 21.330027, 13.544014>,  <17.574677, 20.577585, 13.442295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604359, 21.330027, 13.544014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.240166, 21.198460, 13.644283>,  <17.021650, 21.119518, 13.704445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.240166, 21.198460, 13.644283>,  <17.604359, 21.330027, 13.544014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240166, 21.198460, 13.644283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123916, 0.361311, 0.924175,
		-0.394550, 0.872506, -0.288208,
		-0.910481, -0.328919, 0.250673,
		16.967022, 21.099785, 13.719485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499031, 21.726568, 14.213413>,  <17.604359, 21.330027, 13.544014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499031, 21.726568, 14.213413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.203465, 21.462379, 14.160074>,  <17.026125, 21.303867, 14.128071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.203465, 21.462379, 14.160074>,  <17.499031, 21.726568, 14.213413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.203465, 21.462379, 14.160074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016975, -0.216090, 0.976226,
		-0.673584, 0.719085, 0.170884,
		-0.738916, -0.660470, -0.133348,
		16.981791, 21.264238, 14.120070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138262, 22.364542, 14.125814>,  <17.499031, 21.726568, 14.213413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138262, 22.364542, 14.125814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.447372, 22.611877, 14.183044>,  <17.632839, 22.760279, 14.217382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.447372, 22.611877, 14.183044>,  <17.138262, 22.364542, 14.125814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447372, 22.611877, 14.183044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226791, -0.058486, -0.972186,
		-0.592772, 0.783733, -0.185430,
		0.772779, 0.618339, 0.143075,
		17.679207, 22.797379, 14.225966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226006, 22.795956, 13.543320>,  <17.138262, 22.364542, 14.125814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226006, 22.795956, 13.543320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.583374, 22.804287, 13.722815>,  <17.797794, 22.809286, 13.830511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.583374, 22.804287, 13.722815>,  <17.226006, 22.795956, 13.543320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583374, 22.804287, 13.722815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447301, -0.133496, -0.884365,
		0.041483, 0.990830, -0.128586,
		0.893421, 0.020830, 0.448737,
		17.851400, 22.810535, 13.857436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633099, 23.291964, 13.144278>,  <17.226006, 22.795956, 13.543320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633099, 23.291964, 13.144278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.898445, 23.076286, 13.351822>,  <18.057653, 22.946880, 13.476348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.898445, 23.076286, 13.351822>,  <17.633099, 23.291964, 13.144278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898445, 23.076286, 13.351822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533732, -0.145056, -0.833120,
		0.524477, 0.829596, 0.191560,
		0.663366, -0.539194, 0.518860,
		18.097454, 22.914528, 13.507480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362871, 23.533859, 12.985291>,  <17.633099, 23.291964, 13.144278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.362871, 23.533859, 12.985291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.402451, 23.167465, 13.140818>,  <18.426199, 22.947628, 13.234134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.402451, 23.167465, 13.140818>,  <18.362871, 23.533859, 12.985291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402451, 23.167465, 13.140818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529300, -0.282426, -0.800048,
		0.842645, 0.284965, 0.456886,
		0.098949, -0.915986, 0.388817,
		18.432135, 22.892670, 13.257463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926548, 23.448421, 12.733202>,  <18.362871, 23.533859, 12.985291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926548, 23.448421, 12.733202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.780972, 23.087688, 12.826360>,  <18.693626, 22.871248, 12.882255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.780972, 23.087688, 12.826360>,  <18.926548, 23.448421, 12.733202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.780972, 23.087688, 12.826360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270546, -0.341617, -0.900057,
		0.891264, -0.264559, 0.368316,
		-0.363942, -0.901835, 0.232895,
		18.671789, 22.817139, 12.896229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364100, 23.005665, 12.674283>,  <18.926548, 23.448421, 12.733202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364100, 23.005665, 12.674283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.060089, 22.746216, 12.658044>,  <18.877682, 22.590546, 12.648300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.060089, 22.746216, 12.658044>,  <19.364100, 23.005665, 12.674283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060089, 22.746216, 12.658044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345418, -0.350250, -0.870638,
		0.550496, -0.675732, 0.490245,
		-0.760027, -0.648622, -0.040598,
		18.832081, 22.551630, 12.645864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589836, 22.378288, 12.407431>,  <19.364100, 23.005665, 12.674283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589836, 22.378288, 12.407431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.199120, 22.357323, 12.324353>,  <18.964689, 22.344744, 12.274507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.199120, 22.357323, 12.324353>,  <19.589836, 22.378288, 12.407431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199120, 22.357323, 12.324353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214089, -0.207176, -0.954591,
		0.007004, -0.976898, 0.213588,
		-0.976789, -0.052413, -0.207692,
		18.906082, 22.341599, 12.262046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537447, 21.791708, 11.970309>,  <19.589836, 22.378288, 12.407431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537447, 21.791708, 11.970309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.199650, 21.991512, 11.893033>,  <18.996971, 22.111395, 11.846667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.199650, 21.991512, 11.893033>,  <19.537447, 21.791708, 11.970309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199650, 21.991512, 11.893033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038991, -0.302420, -0.952377,
		-0.534147, -0.811808, 0.235915,
		-0.844492, 0.499510, -0.193190,
		18.946302, 22.141365, 11.835076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269403, 21.366489, 11.488689>,  <19.537447, 21.791708, 11.970309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269403, 21.366489, 11.488689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.035328, 21.690113, 11.466870>,  <18.894882, 21.884287, 11.453779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.035328, 21.690113, 11.466870>,  <19.269403, 21.366489, 11.488689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035328, 21.690113, 11.466870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085193, -0.128236, -0.988078,
		-0.806410, -0.573564, 0.143969,
		-0.585188, 0.809061, -0.054548,
		18.859772, 21.932831, 11.450506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756142, 21.168465, 10.974816>,  <19.269403, 21.366489, 11.488689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756142, 21.168465, 10.974816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.783733, 21.567146, 10.991887>,  <18.800287, 21.806356, 11.002130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.783733, 21.567146, 10.991887>,  <18.756142, 21.168465, 10.974816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783733, 21.567146, 10.991887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120537, 0.034139, -0.992122,
		-0.990309, 0.073579, -0.117785,
		0.068978, 0.996705, 0.042677,
		18.804426, 21.866158, 11.004690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.215567, 21.485416, 10.566628>,  <18.756142, 21.168465, 10.974816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.215567, 21.485416, 10.566628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.519539, 21.743050, 10.601633>,  <18.701923, 21.897631, 10.622636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.519539, 21.743050, 10.601633>,  <18.215567, 21.485416, 10.566628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519539, 21.743050, 10.601633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241379, -0.154628, -0.958032,
		-0.603522, 0.749163, -0.272975,
		0.759932, 0.644085, 0.087511,
		18.747519, 21.936275, 10.627887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922869, 21.473116, 11.255226>,  <18.215567, 21.485416, 10.566628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922869, 21.473116, 11.255226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.996906, 21.092361, 11.157526>,  <18.041328, 20.863909, 11.098907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.996906, 21.092361, 11.157526>,  <17.922869, 21.473116, 11.255226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996906, 21.092361, 11.157526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507447, -0.120267, 0.853249,
		-0.841569, -0.281874, 0.460770,
		0.185093, -0.951884, -0.244249,
		18.052435, 20.806797, 11.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.227636, 23.169113, 17.826481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624878, 23.127396, 17.847906>,  <16.863222, 23.102365, 17.860762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624878, 23.127396, 17.847906>,  <16.227636, 23.169113, 17.826481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624878, 23.127396, 17.847906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068509, 0.145437, -0.986993,
		0.095149, 0.983855, 0.151579,
		0.993103, -0.104296, 0.053564,
		16.922810, 23.096107, 17.863976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489149, 23.693132, 17.247992>,  <16.227636, 23.169113, 17.826481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489149, 23.693132, 17.247992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821266, 23.480724, 17.315681>,  <17.020536, 23.353279, 17.356295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821266, 23.480724, 17.315681>,  <16.489149, 23.693132, 17.247992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821266, 23.480724, 17.315681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273953, 0.124438, -0.953659,
		0.485353, 0.838173, 0.248794,
		0.830291, -0.531018, 0.169224,
		17.070353, 23.321419, 17.366449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059641, 24.074503, 16.929646>,  <16.489149, 23.693132, 17.247992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059641, 24.074503, 16.929646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166660, 23.690334, 16.960649>,  <17.230871, 23.459833, 16.979252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166660, 23.690334, 16.960649>,  <17.059641, 24.074503, 16.929646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166660, 23.690334, 16.960649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349334, 0.021716, -0.936747,
		0.897989, 0.277700, 0.341318,
		0.267547, -0.960422, 0.077509,
		17.246925, 23.402208, 16.983902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.693466, 24.056984, 16.689049>,  <17.059641, 24.074503, 16.929646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.693466, 24.056984, 16.689049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618519, 23.664757, 16.665781>,  <17.573549, 23.429420, 16.651821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618519, 23.664757, 16.665781>,  <17.693466, 24.056984, 16.689049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618519, 23.664757, 16.665781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354600, -0.012296, -0.934937,
		0.916052, -0.195806, 0.350013,
		-0.187370, -0.980566, -0.058169,
		17.562307, 23.370586, 16.648331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268623, 23.843773, 16.391161>,  <17.693466, 24.056984, 16.689049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268623, 23.843773, 16.391161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980999, 23.573498, 16.326176>,  <17.808424, 23.411333, 16.287184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980999, 23.573498, 16.326176>,  <18.268623, 23.843773, 16.391161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980999, 23.573498, 16.326176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384641, -0.192257, -0.902823,
		0.578791, -0.711677, 0.398142,
		-0.719063, -0.675688, -0.162464,
		17.765280, 23.370790, 16.277437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586992, 23.279095, 16.101536>,  <18.268623, 23.843773, 16.391161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586992, 23.279095, 16.101536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206039, 23.206566, 16.003485>,  <17.977467, 23.163050, 15.944654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206039, 23.206566, 16.003485>,  <18.586992, 23.279095, 16.101536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206039, 23.206566, 16.003485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280060, -0.202365, -0.938411,
		0.120548, -0.962378, 0.243510,
		-0.952384, -0.181321, -0.245129,
		17.920324, 23.152170, 15.929946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638268, 22.721306, 15.803831>,  <18.586992, 23.279095, 16.101536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638268, 22.721306, 15.803831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301590, 22.883190, 15.660858>,  <18.099583, 22.980322, 15.575074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301590, 22.883190, 15.660858>,  <18.638268, 22.721306, 15.803831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301590, 22.883190, 15.660858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254845, -0.285840, -0.923769,
		-0.476030, -0.868621, 0.137451,
		-0.841694, 0.404713, -0.357432,
		18.049082, 23.004604, 15.553628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348780, 22.241173, 15.328461>,  <18.638268, 22.721306, 15.803831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348780, 22.241173, 15.328461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149506, 22.575176, 15.235018>,  <18.029942, 22.775578, 15.178952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149506, 22.575176, 15.235018>,  <18.348780, 22.241173, 15.328461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149506, 22.575176, 15.235018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085640, -0.315489, -0.945057,
		-0.862830, -0.450809, 0.228683,
		-0.498187, 0.835008, -0.233607,
		18.000050, 22.825678, 15.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701839, 22.063507, 14.963809>,  <18.348780, 22.241173, 15.328461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701839, 22.063507, 14.963809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790508, 22.436329, 14.849171>,  <17.843710, 22.660023, 14.780388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790508, 22.436329, 14.849171>,  <17.701839, 22.063507, 14.963809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.790508, 22.436329, 14.849171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001512, -0.294236, -0.955732,
		-0.975120, 0.211425, -0.066633,
		0.221672, 0.932054, -0.286596,
		17.857010, 22.715944, 14.763192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006693, 22.006300, 14.724157>,  <17.701839, 22.063507, 14.963809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006693, 22.006300, 14.724157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868614, 21.638882, 14.647099>,  <16.785767, 21.418430, 14.600863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868614, 21.638882, 14.647099>,  <17.006693, 22.006300, 14.724157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.868614, 21.638882, 14.647099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192672, -0.131535, 0.972407,
		-0.918541, 0.372788, -0.131573,
		-0.345196, -0.918546, -0.192647,
		16.765055, 21.363317, 14.589305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293442, 21.868649, 15.050080>,  <17.006693, 22.006300, 14.724157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293442, 21.868649, 15.050080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484337, 21.521530, 14.994690>,  <16.598875, 21.313259, 14.961456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484337, 21.521530, 14.994690>,  <16.293442, 21.868649, 15.050080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484337, 21.521530, 14.994690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287152, -0.302924, 0.908725,
		-0.830534, -0.393916, -0.393756,
		0.477239, -0.867794, -0.138475,
		16.627508, 21.261192, 14.953148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834033, 21.294397, 15.132077>,  <16.293442, 21.868649, 15.050080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834033, 21.294397, 15.132077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193413, 21.125790, 15.181248>,  <16.409040, 21.024624, 15.210750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193413, 21.125790, 15.181248>,  <15.834033, 21.294397, 15.132077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193413, 21.125790, 15.181248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363766, -0.557792, 0.746017,
		-0.245895, -0.714974, -0.654483,
		0.898448, -0.421520, 0.122926,
		16.462948, 20.999334, 15.218125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615918, 20.659414, 15.283402>,  <15.834033, 21.294397, 15.132077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615918, 20.659414, 15.283402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989701, 20.711823, 15.415840>,  <16.213970, 20.743267, 15.495302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989701, 20.711823, 15.415840>,  <15.615918, 20.659414, 15.283402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.989701, 20.711823, 15.415840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186838, -0.611135, 0.769159,
		0.303120, -0.780607, -0.546600,
		0.934457, 0.131022, 0.331094,
		16.270039, 20.751129, 15.515168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881714, 19.987564, 15.480043>,  <15.615918, 20.659414, 15.283402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881714, 19.987564, 15.480043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117035, 20.245056, 15.675802>,  <16.258226, 20.399551, 15.793258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117035, 20.245056, 15.675802>,  <15.881714, 19.987564, 15.480043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117035, 20.245056, 15.675802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116276, -0.531579, 0.838989,
		0.800238, -0.550484, -0.237878,
		0.588302, 0.643732, 0.489398,
		16.293526, 20.438175, 15.822621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184660, 19.562090, 15.968369>,  <15.881714, 19.987564, 15.480043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184660, 19.562090, 15.968369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280952, 19.928612, 16.096390>,  <16.338728, 20.148525, 16.173203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280952, 19.928612, 16.096390>,  <16.184660, 19.562090, 15.968369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280952, 19.928612, 16.096390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176517, -0.282917, 0.942762,
		0.954406, -0.283447, 0.093636,
		0.240731, 0.916305, 0.320050,
		16.353172, 20.203503, 16.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816364, 19.545345, 16.487492>,  <16.184660, 19.562090, 15.968369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816364, 19.545345, 16.487492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596169, 19.873268, 16.550585>,  <16.464052, 20.070023, 16.588442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596169, 19.873268, 16.550585>,  <16.816364, 19.545345, 16.487492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596169, 19.873268, 16.550585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190650, -0.307395, 0.932288,
		0.812782, 0.483142, 0.325513,
		-0.550488, 0.819806, 0.157734,
		16.431023, 20.119209, 16.597904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058277, 19.788067, 17.109552>,  <16.816364, 19.545345, 16.487492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058277, 19.788067, 17.109552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731747, 20.018417, 17.091755>,  <16.535828, 20.156628, 17.081076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731747, 20.018417, 17.091755>,  <17.058277, 19.788067, 17.109552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731747, 20.018417, 17.091755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084486, -0.042848, 0.995503,
		0.571378, 0.816415, 0.083631,
		-0.816327, 0.575874, -0.044493,
		16.486849, 20.191179, 17.078407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081030, 20.193752, 17.738935>,  <17.058277, 19.788067, 17.109552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081030, 20.193752, 17.738935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709011, 20.190498, 17.591997>,  <16.485800, 20.188545, 17.503834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709011, 20.190498, 17.591997>,  <17.081030, 20.193752, 17.738935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709011, 20.190498, 17.591997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346735, -0.311415, 0.884757,
		-0.121595, 0.950239, 0.286811,
		-0.930048, -0.008135, -0.367347,
		16.429996, 20.188059, 17.481792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574013, 20.603592, 18.191339>,  <17.081030, 20.193752, 17.738935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574013, 20.603592, 18.191339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339527, 20.345276, 17.995661>,  <16.198835, 20.190287, 17.878254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339527, 20.345276, 17.995661>,  <16.574013, 20.603592, 18.191339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339527, 20.345276, 17.995661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513863, -0.170439, 0.840770,
		-0.626339, 0.744249, -0.231934,
		-0.586212, -0.645789, -0.489195,
		16.163664, 20.151539, 17.848902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884023, 20.625603, 18.493196>,  <16.574013, 20.603592, 18.191339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884023, 20.625603, 18.493196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866946, 20.283764, 18.286184>,  <15.856700, 20.078661, 18.161976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866946, 20.283764, 18.286184>,  <15.884023, 20.625603, 18.493196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866946, 20.283764, 18.286184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436159, -0.450094, 0.779218,
		-0.898856, 0.258993, -0.353526,
		-0.042692, -0.854598, -0.517531,
		15.854138, 20.027384, 18.130924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260205, 20.421543, 18.544762>,  <15.884023, 20.625603, 18.493196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260205, 20.421543, 18.544762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474986, 20.094528, 18.461510>,  <15.603854, 19.898319, 18.411558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474986, 20.094528, 18.461510>,  <15.260205, 20.421543, 18.544762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.474986, 20.094528, 18.461510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401241, -0.464513, 0.789451,
		-0.742084, -0.340387, -0.577450,
		0.536952, -0.817535, -0.208131,
		15.636071, 19.849268, 18.399071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707804, 19.912432, 18.538858>,  <15.260205, 20.421543, 18.544762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707804, 19.912432, 18.538858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040185, 19.692833, 18.574898>,  <15.239614, 19.561073, 18.596521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040185, 19.692833, 18.574898>,  <14.707804, 19.912432, 18.538858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040185, 19.692833, 18.574898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352120, -0.393596, 0.849172,
		-0.430735, -0.737345, -0.520374,
		0.830950, -0.549002, 0.090099,
		15.289471, 19.528133, 18.601929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486567, 19.274437, 18.846643>,  <14.707804, 19.912432, 18.538858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486567, 19.274437, 18.846643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884538, 19.277660, 18.886749>,  <15.123321, 19.279594, 18.910812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884538, 19.277660, 18.886749>,  <14.486567, 19.274437, 18.846643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884538, 19.277660, 18.886749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096189, -0.215329, 0.971793,
		0.029421, -0.976508, -0.213462,
		0.994928, 0.008058, 0.100264,
		15.183016, 19.280077, 18.916828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.921217, 18.468508, 19.659161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.641342, 18.743652, 19.581921>,  <20.473417, 18.908739, 19.535576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.641342, 18.743652, 19.581921>,  <20.921217, 18.468508, 19.659161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641342, 18.743652, 19.581921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123555, -0.149710, -0.980980,
		-0.703686, -0.710236, 0.019761,
		-0.699686, 0.687861, -0.193102,
		20.431437, 18.950010, 19.523991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.606279, 18.214886, 19.080021>,  <20.921217, 18.468508, 19.659161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.606279, 18.214886, 19.080021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.462093, 18.587936, 19.086634>,  <20.375582, 18.811766, 19.090601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.462093, 18.587936, 19.086634>,  <20.606279, 18.214886, 19.080021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.462093, 18.587936, 19.086634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005736, 0.019940, -0.999785,
		-0.932754, -0.360295, -0.012537,
		-0.360467, 0.932625, 0.016533,
		20.353952, 18.867723, 19.091593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.113573, 18.177235, 18.627567>,  <20.606279, 18.214886, 19.080021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.113573, 18.177235, 18.627567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.186844, 18.570023, 18.646246>,  <20.230806, 18.805695, 18.657454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.186844, 18.570023, 18.646246>,  <20.113573, 18.177235, 18.627567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186844, 18.570023, 18.646246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221772, 0.087552, -0.971160,
		-0.957738, 0.167540, 0.233812,
		0.183179, 0.981970, 0.046696,
		20.241798, 18.864614, 18.660255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502968, 18.527107, 18.309469>,  <20.113573, 18.177235, 18.627567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502968, 18.527107, 18.309469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.805584, 18.788464, 18.298689>,  <19.987154, 18.945278, 18.292221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.805584, 18.788464, 18.298689>,  <19.502968, 18.527107, 18.309469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805584, 18.788464, 18.298689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090695, 0.064021, -0.993819,
		-0.647626, 0.754309, 0.107693,
		0.756541, 0.653391, -0.026950,
		20.032547, 18.984480, 18.290604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289827, 19.091511, 17.822458>,  <19.502968, 18.527107, 18.309469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289827, 19.091511, 17.822458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.684479, 19.147690, 17.855532>,  <19.921270, 19.181396, 17.875376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.684479, 19.147690, 17.855532>,  <19.289827, 19.091511, 17.822458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.684479, 19.147690, 17.855532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056383, 0.181864, -0.981706,
		-0.152916, 0.973242, 0.171514,
		0.986629, 0.140448, 0.082684,
		19.980467, 19.189825, 17.880337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448364, 19.714632, 17.415653>,  <19.289827, 19.091511, 17.822458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448364, 19.714632, 17.415653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.780056, 19.492916, 17.444328>,  <19.979071, 19.359886, 17.461533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.780056, 19.492916, 17.444328>,  <19.448364, 19.714632, 17.415653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780056, 19.492916, 17.444328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114054, 0.042255, -0.992576,
		0.547145, 0.831251, 0.098258,
		0.829231, -0.554290, 0.071688,
		20.028826, 19.326630, 17.465836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917376, 20.066557, 16.991102>,  <19.448364, 19.714632, 17.415653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917376, 20.066557, 16.991102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.088612, 19.707363, 17.031830>,  <20.191353, 19.491848, 17.056267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.088612, 19.707363, 17.031830>,  <19.917376, 20.066557, 16.991102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088612, 19.707363, 17.031830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102676, -0.063606, -0.992679,
		0.897886, 0.435408, 0.064972,
		0.428088, -0.897983, 0.101817,
		20.217037, 19.437967, 17.062374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504030, 20.102604, 16.628511>,  <19.917376, 20.066557, 16.991102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504030, 20.102604, 16.628511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380730, 19.723377, 16.659883>,  <20.306749, 19.495842, 16.678707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380730, 19.723377, 16.659883>,  <20.504030, 20.102604, 16.628511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380730, 19.723377, 16.659883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143412, -0.127815, -0.981375,
		0.940433, -0.291262, 0.175363,
		-0.308251, -0.948066, 0.078431,
		20.288254, 19.438957, 16.683413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063437, 19.737995, 16.327780>,  <20.504030, 20.102604, 16.628511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063437, 19.737995, 16.327780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.746517, 19.495281, 16.302235>,  <20.556366, 19.349653, 16.286907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.746517, 19.495281, 16.302235>,  <21.063437, 19.737995, 16.327780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746517, 19.495281, 16.302235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195282, -0.153026, -0.968735,
		0.578041, -0.779997, 0.239737,
		-0.792296, -0.606785, -0.063864,
		20.508829, 19.313246, 16.283075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273808, 19.231007, 15.956780>,  <21.063437, 19.737995, 16.327780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273808, 19.231007, 15.956780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.882298, 19.162941, 15.911100>,  <20.647390, 19.122101, 15.883693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.882298, 19.162941, 15.911100>,  <21.273808, 19.231007, 15.956780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882298, 19.162941, 15.911100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161643, -0.298494, -0.940624,
		0.125973, -0.939120, 0.319664,
		-0.978776, -0.170164, -0.114200,
		20.588665, 19.111893, 15.876841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264091, 18.700588, 15.640542>,  <21.273808, 19.231007, 15.956780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264091, 18.700588, 15.640542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.887035, 18.812210, 15.567265>,  <20.660803, 18.879183, 15.523298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.887035, 18.812210, 15.567265>,  <21.264091, 18.700588, 15.640542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887035, 18.812210, 15.567265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059731, -0.398932, -0.915033,
		-0.328426, -0.873488, 0.359381,
		-0.942639, 0.279054, -0.183194,
		20.604244, 18.895927, 15.512306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950369, 18.128977, 15.362677>,  <21.264091, 18.700588, 15.640542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950369, 18.128977, 15.362677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.708294, 18.416183, 15.225157>,  <20.563049, 18.588509, 15.142645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.708294, 18.416183, 15.225157>,  <20.950369, 18.128977, 15.362677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708294, 18.416183, 15.225157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119797, -0.344807, -0.930998,
		-0.787019, -0.604613, 0.122655,
		-0.605186, 0.718019, -0.343801,
		20.526737, 18.631590, 15.122017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388762, 17.787357, 14.887370>,  <20.950369, 18.128977, 15.362677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388762, 17.787357, 14.887370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.403679, 18.176964, 14.798016>,  <20.412630, 18.410728, 14.744403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.403679, 18.176964, 14.798016>,  <20.388762, 17.787357, 14.887370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403679, 18.176964, 14.798016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077329, -0.220059, -0.972417,
		-0.996308, 0.053540, 0.067113,
		0.037295, 0.974016, -0.223387,
		20.414867, 18.469170, 14.731000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859341, 17.901794, 14.460219>,  <20.388762, 17.787357, 14.887370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859341, 17.901794, 14.460219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.091850, 18.214130, 14.368643>,  <20.231356, 18.401531, 14.313697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.091850, 18.214130, 14.368643>,  <19.859341, 17.901794, 14.460219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091850, 18.214130, 14.368643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061246, -0.238572, -0.969191,
		-0.811401, 0.577385, -0.090852,
		0.581272, 0.780839, -0.228941,
		20.266232, 18.448381, 14.299961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162630, 17.791046, 14.187511>,  <19.859341, 17.901794, 14.460219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162630, 17.791046, 14.187511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.020874, 17.434532, 14.074360>,  <18.935822, 17.220623, 14.006469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.020874, 17.434532, 14.074360>,  <19.162630, 17.791046, 14.187511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020874, 17.434532, 14.074360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350217, -0.153988, 0.923924,
		-0.867039, 0.426498, -0.257571,
		-0.354389, -0.891284, -0.282880,
		18.914557, 17.167147, 13.989496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665157, 17.793182, 14.736083>,  <19.162630, 17.791046, 14.187511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665157, 17.793182, 14.736083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.670963, 17.428391, 14.572090>,  <18.674446, 17.209517, 14.473695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.670963, 17.428391, 14.572090>,  <18.665157, 17.793182, 14.736083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670963, 17.428391, 14.572090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237053, -0.401474, 0.884661,
		-0.971388, 0.084347, -0.222014,
		0.014514, -0.911979, -0.409982,
		18.675318, 17.154797, 14.449096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136347, 17.476667, 15.071278>,  <18.665157, 17.793182, 14.736083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136347, 17.476667, 15.071278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.400620, 17.197632, 14.960379>,  <18.559183, 17.030210, 14.893839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.400620, 17.197632, 14.960379>,  <18.136347, 17.476667, 15.071278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400620, 17.197632, 14.960379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148704, -0.483642, 0.862541,
		-0.735789, -0.528638, -0.423269,
		0.660683, -0.697590, -0.277248,
		18.598824, 16.988356, 14.877204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844954, 16.791096, 15.168498>,  <18.136347, 17.476667, 15.071278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844954, 16.791096, 15.168498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.242588, 16.748688, 15.159134>,  <18.481169, 16.723244, 15.153516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.242588, 16.748688, 15.159134>,  <17.844954, 16.791096, 15.168498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242588, 16.748688, 15.159134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035777, -0.523435, 0.851314,
		-0.102508, -0.845444, -0.524134,
		0.994089, -0.106018, -0.023409,
		18.540815, 16.716883, 15.152111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059420, 16.094662, 15.247654>,  <17.844954, 16.791096, 15.168498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059420, 16.094662, 15.247654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.365234, 16.303452, 15.398928>,  <18.548723, 16.428726, 15.489692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.365234, 16.303452, 15.398928>,  <18.059420, 16.094662, 15.247654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365234, 16.303452, 15.398928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028259, -0.559009, 0.828680,
		0.643960, -0.644244, -0.412633,
		0.764537, 0.521976, 0.378184,
		18.594595, 16.460045, 15.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388609, 15.628232, 15.638526>,  <18.059420, 16.094662, 15.247654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388609, 15.628232, 15.638526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.552139, 15.973343, 15.757507>,  <18.650257, 16.180408, 15.828897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.552139, 15.973343, 15.757507>,  <18.388609, 15.628232, 15.638526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552139, 15.973343, 15.757507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189509, -0.399090, 0.897114,
		0.892720, -0.310392, -0.326662,
		0.408825, 0.862776, 0.297454,
		18.674788, 16.232176, 15.846744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967243, 15.364389, 16.108448>,  <18.388609, 15.628232, 15.638526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967243, 15.364389, 16.108448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.880997, 15.747135, 16.186338>,  <18.829248, 15.976783, 16.233072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.880997, 15.747135, 16.186338>,  <18.967243, 15.364389, 16.108448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880997, 15.747135, 16.186338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065731, -0.184743, 0.980586,
		0.974263, 0.224232, -0.023061,
		-0.215618, 0.956865, 0.194727,
		18.816311, 16.034195, 16.244757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387856, 15.500666, 16.713095>,  <18.967243, 15.364389, 16.108448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387856, 15.500666, 16.713095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.098885, 15.776447, 16.692106>,  <18.925503, 15.941916, 16.679512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.098885, 15.776447, 16.692106>,  <19.387856, 15.500666, 16.713095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098885, 15.776447, 16.692106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122532, -0.052965, 0.991050,
		0.680503, 0.722391, 0.122744,
		-0.722427, 0.689453, -0.052473,
		18.882156, 15.983283, 16.676365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600256, 16.060682, 17.166689>,  <19.387856, 15.500666, 16.713095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600256, 16.060682, 17.166689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.202694, 16.103527, 17.156233>,  <18.964157, 16.129234, 17.149960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.202694, 16.103527, 17.156233>,  <19.600256, 16.060682, 17.166689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202694, 16.103527, 17.156233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014357, 0.109314, 0.993903,
		0.109314, 0.988219, -0.107110,
		-0.993903, 0.107110, -0.026138,
		18.904522, 16.135660, 17.148392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563595, 16.493616, 17.696470>,  <19.600256, 16.060682, 17.166689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563595, 16.493616, 17.696470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.187370, 16.365337, 17.651752>,  <18.961636, 16.288370, 17.624922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.187370, 16.365337, 17.651752>,  <19.563595, 16.493616, 17.696470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187370, 16.365337, 17.651752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156577, 0.117362, 0.980668,
		-0.301379, 0.939882, -0.160600,
		-0.940561, -0.320699, -0.111794,
		18.905203, 16.269127, 17.618214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058544, 17.098812, 17.939339>,  <19.563595, 16.493616, 17.696470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058544, 17.098812, 17.939339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.867199, 16.747643, 17.947489>,  <18.752392, 16.536942, 17.952379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.867199, 16.747643, 17.947489>,  <19.058544, 17.098812, 17.939339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867199, 16.747643, 17.947489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314114, 0.192730, 0.929617,
		-0.820060, 0.438296, -0.367964,
		-0.478365, -0.877925, 0.020375,
		18.723690, 16.484264, 17.953602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474737, 17.218758, 18.353540>,  <19.058544, 17.098812, 17.939339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474737, 17.218758, 18.353540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.504414, 16.819939, 18.361443>,  <18.522219, 16.580647, 18.366184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.504414, 16.819939, 18.361443>,  <18.474737, 17.218758, 18.353540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504414, 16.819939, 18.361443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345718, -0.007135, 0.938311,
		-0.935401, -0.076443, -0.345227,
		0.074190, -0.997048, 0.019754,
		18.526670, 16.520824, 18.367369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842060, 16.977320, 18.670864>,  <18.474737, 17.218758, 18.353540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842060, 16.977320, 18.670864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.069866, 16.652317, 18.720640>,  <18.206551, 16.457315, 18.750505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.069866, 16.652317, 18.720640>,  <17.842060, 16.977320, 18.670864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069866, 16.652317, 18.720640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298228, -0.063172, 0.952402,
		-0.765971, -0.579520, -0.278289,
		0.569516, -0.812506, 0.124441,
		18.240721, 16.408566, 18.757973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395704, 16.434877, 18.975315>,  <17.842060, 16.977320, 18.670864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395704, 16.434877, 18.975315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.778786, 16.356384, 19.059505>,  <18.008635, 16.309288, 19.110020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.778786, 16.356384, 19.059505>,  <17.395704, 16.434877, 18.975315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778786, 16.356384, 19.059505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215457, -0.004152, 0.976504,
		-0.190752, -0.980548, -0.046257,
		0.957701, -0.196237, 0.210474,
		18.066095, 16.297514, 19.122648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768269, 16.132341, 18.833757>,  <17.395704, 16.434877, 18.975315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768269, 16.132341, 18.833757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.434669, 16.289585, 18.988632>,  <16.234510, 16.383932, 19.081556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.434669, 16.289585, 18.988632>,  <16.768269, 16.132341, 18.833757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434669, 16.289585, 18.988632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379555, 0.100586, -0.919685,
		-0.400484, -0.913973, 0.065319,
		-0.833997, 0.393111, 0.387186,
		16.184471, 16.407518, 19.104788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136055, 15.700622, 18.641798>,  <16.768269, 16.132341, 18.833757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136055, 15.700622, 18.641798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009899, 16.071854, 18.720991>,  <15.934206, 16.294592, 18.768507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.009899, 16.071854, 18.720991>,  <16.136055, 15.700622, 18.641798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.009899, 16.071854, 18.720991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417568, 0.051623, -0.907178,
		-0.852154, -0.368786, 0.371255,
		-0.315390, 0.928080, 0.197984,
		15.915282, 16.350277, 18.780386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344955, 15.785190, 18.452768>,  <16.136055, 15.700622, 18.641798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344955, 15.785190, 18.452768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.499148, 16.153999, 18.438496>,  <15.591664, 16.375286, 18.429932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.499148, 16.153999, 18.438496>,  <15.344955, 15.785190, 18.452768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.499148, 16.153999, 18.438496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355371, 0.112665, -0.927910,
		-0.851537, 0.370373, 0.371092,
		0.385482, 0.922025, -0.035682,
		15.614793, 16.430607, 18.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857144, 16.223352, 18.224411>,  <15.344955, 15.785190, 18.452768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857144, 16.223352, 18.224411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.182101, 16.449081, 18.165678>,  <15.377075, 16.584518, 18.130438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.182101, 16.449081, 18.165678>,  <14.857144, 16.223352, 18.224411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182101, 16.449081, 18.165678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336122, 0.247429, -0.908736,
		-0.476489, 0.787604, 0.390690,
		0.812392, 0.564322, -0.146834,
		15.425818, 16.618378, 18.121628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675576, 16.774801, 17.879932>,  <14.857144, 16.223352, 18.224411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675576, 16.774801, 17.879932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.071479, 16.770809, 17.822966>,  <15.309020, 16.768414, 17.788786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.071479, 16.770809, 17.822966>,  <14.675576, 16.774801, 17.879932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071479, 16.770809, 17.822966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140968, 0.089414, -0.985968,
		0.022573, 0.995945, 0.087091,
		0.989757, -0.009979, -0.142415,
		15.368406, 16.767815, 17.780241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791174, 17.283485, 17.365782>,  <14.675576, 16.774801, 17.879932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791174, 17.283485, 17.365782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.126147, 17.065258, 17.352755>,  <15.327131, 16.934322, 17.344938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.126147, 17.065258, 17.352755>,  <14.791174, 17.283485, 17.365782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126147, 17.065258, 17.352755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033435, 0.110616, -0.993301,
		0.545516, 0.830734, 0.110875,
		0.837433, -0.545569, -0.032567,
		15.377378, 16.901587, 17.342985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176393, 17.596268, 16.879049>,  <14.791174, 17.283485, 17.365782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176393, 17.596268, 16.879049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.338662, 17.232296, 16.913591>,  <15.436024, 17.013912, 16.934317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.338662, 17.232296, 16.913591>,  <15.176393, 17.596268, 16.879049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338662, 17.232296, 16.913591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183703, -0.011379, -0.982916,
		0.895367, 0.414607, 0.162541,
		0.405675, -0.909929, 0.086353,
		15.460364, 16.959316, 16.939497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810644, 17.582239, 16.511189>,  <15.176393, 17.596268, 16.879049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810644, 17.582239, 16.511189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683337, 17.203072, 16.516205>,  <15.606953, 16.975571, 16.519215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683337, 17.203072, 16.516205>,  <15.810644, 17.582239, 16.511189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683337, 17.203072, 16.516205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244877, -0.094985, -0.964890,
		0.915828, -0.304022, 0.262354,
		-0.318268, -0.947918, 0.012542,
		15.587857, 16.918695, 16.519968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301222, 17.223043, 16.214447>,  <15.810644, 17.582239, 16.511189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301222, 17.223043, 16.214447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.990748, 16.973648, 16.176914>,  <15.804464, 16.824011, 16.154394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.990748, 16.973648, 16.176914>,  <16.301222, 17.223043, 16.214447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990748, 16.973648, 16.176914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305496, -0.241707, -0.921005,
		0.551555, -0.743533, 0.378081,
		-0.776183, -0.623487, -0.093832,
		15.757894, 16.786602, 16.148766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652838, 16.747402, 15.897932>,  <16.301222, 17.223043, 16.214447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652838, 16.747402, 15.897932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267307, 16.656311, 15.842539>,  <16.035988, 16.601656, 15.809303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.267307, 16.656311, 15.842539>,  <16.652838, 16.747402, 15.897932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267307, 16.656311, 15.842539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206673, -0.310492, -0.927837,
		0.168296, -0.922895, 0.346325,
		-0.963827, -0.227727, -0.138483,
		15.978159, 16.587994, 15.800994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573103, 16.016069, 15.654528>,  <16.652838, 16.747402, 15.897932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573103, 16.016069, 15.654528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.238991, 16.208038, 15.547209>,  <16.038523, 16.323219, 15.482818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.238991, 16.208038, 15.547209>,  <16.573103, 16.016069, 15.654528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238991, 16.208038, 15.547209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050834, -0.418473, -0.906806,
		-0.547471, -0.771075, 0.325145,
		-0.835279, 0.479921, -0.268298,
		15.988407, 16.352015, 15.466720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172056, 15.519735, 15.197892>,  <16.573103, 16.016069, 15.654528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172056, 15.519735, 15.197892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.048790, 15.893726, 15.127636>,  <15.974830, 16.118120, 15.085483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.048790, 15.893726, 15.127636>,  <16.172056, 15.519735, 15.197892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048790, 15.893726, 15.127636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138883, -0.138432, -0.980586,
		-0.941140, -0.326578, -0.087192,
		-0.308168, 0.934978, -0.175640,
		15.956340, 16.174219, 15.074944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660520, 15.435103, 14.687882>,  <16.172056, 15.519735, 15.197892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660520, 15.435103, 14.687882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.789573, 15.813667, 14.682013>,  <15.867004, 16.040806, 14.678491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.789573, 15.813667, 14.682013>,  <15.660520, 15.435103, 14.687882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789573, 15.813667, 14.682013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017428, -0.021442, -0.999618,
		-0.946363, 0.322255, -0.023412,
		0.322634, 0.946410, -0.014675,
		15.886363, 16.097589, 14.677610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419557, 15.671183, 14.007109>,  <15.660520, 15.435103, 14.687882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419557, 15.671183, 14.007109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.647696, 15.982819, 14.111200>,  <15.784580, 16.169800, 14.173656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.647696, 15.982819, 14.111200>,  <15.419557, 15.671183, 14.007109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647696, 15.982819, 14.111200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134159, 0.224199, -0.965265,
		-0.810371, 0.585451, 0.023350,
		0.570350, 0.779090, 0.260228,
		15.818802, 16.216545, 14.189269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.607850, 18.847347, 19.406019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.975545, 19.002548, 19.379314>,  <15.196162, 19.095669, 19.363291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.975545, 19.002548, 19.379314>,  <14.607850, 18.847347, 19.406019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975545, 19.002548, 19.379314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125144, -0.127180, 0.983953,
		0.373284, -0.912842, -0.165465,
		0.919237, 0.388001, -0.066763,
		15.251316, 19.118948, 19.359285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083577, 18.375725, 19.754330>,  <14.607850, 18.847347, 19.406019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.083577, 18.375725, 19.754330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.205945, 18.756546, 19.753042>,  <15.279366, 18.985039, 19.752270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.205945, 18.756546, 19.753042>,  <15.083577, 18.375725, 19.754330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205945, 18.756546, 19.753042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070042, 0.025880, 0.997208,
		0.949477, -0.304841, 0.074601,
		0.305921, 0.952052, -0.003220,
		15.297721, 19.042162, 19.752075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552822, 18.411921, 20.322720>,  <15.083577, 18.375725, 19.754330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552822, 18.411921, 20.322720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.470309, 18.791748, 20.228258>,  <15.420801, 19.019644, 20.171581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.470309, 18.791748, 20.228258>,  <15.552822, 18.411921, 20.322720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470309, 18.791748, 20.228258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091894, 0.259077, 0.961475,
		0.974168, 0.176635, -0.140702,
		-0.206283, 0.949568, -0.236153,
		15.408424, 19.076618, 20.157412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041759, 18.816938, 20.659866>,  <15.552822, 18.411921, 20.322720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041759, 18.816938, 20.659866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.760827, 19.092522, 20.588234>,  <15.592268, 19.257872, 20.545254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.760827, 19.092522, 20.588234>,  <16.041759, 18.816938, 20.659866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760827, 19.092522, 20.588234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010299, 0.261381, 0.965181,
		0.711777, 0.676031, -0.190672,
		-0.702330, 0.688958, -0.179083,
		15.550128, 19.299210, 20.534510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232742, 19.355396, 21.015884>,  <16.041759, 18.816938, 20.659866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232742, 19.355396, 21.015884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.840211, 19.431370, 21.003746>,  <15.604692, 19.476954, 20.996464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.840211, 19.431370, 21.003746>,  <16.232742, 19.355396, 21.015884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840211, 19.431370, 21.003746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026065, 0.024997, 0.999348,
		0.190569, 0.981478, -0.019580,
		-0.981328, 0.189934, -0.030346,
		15.545813, 19.488350, 20.994642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110310, 19.878401, 21.423431>,  <16.232742, 19.355396, 21.015884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110310, 19.878401, 21.423431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.733924, 19.743443, 21.412487>,  <15.508092, 19.662468, 21.405920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.733924, 19.743443, 21.412487>,  <16.110310, 19.878401, 21.423431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733924, 19.743443, 21.412487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093914, 0.182545, 0.978702,
		-0.325215, 0.923494, -0.203455,
		-0.940965, -0.337396, -0.027363,
		15.451634, 19.642223, 21.404278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755052, 20.371798, 21.763874>,  <16.110310, 19.878401, 21.423431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755052, 20.371798, 21.763874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.536759, 20.036625, 21.766718>,  <15.405784, 19.835522, 21.768425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.536759, 20.036625, 21.766718>,  <15.755052, 20.371798, 21.763874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536759, 20.036625, 21.766718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139890, 0.099468, 0.985158,
		-0.826202, 0.536636, -0.171501,
		-0.545731, -0.837931, 0.007110,
		15.373040, 19.785246, 21.768850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181828, 20.493595, 22.156040>,  <15.755052, 20.371798, 21.763874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181828, 20.493595, 22.156040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.197553, 20.095219, 22.188419>,  <15.206987, 19.856192, 22.207846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.197553, 20.095219, 22.188419>,  <15.181828, 20.493595, 22.156040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197553, 20.095219, 22.188419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082551, 0.077494, 0.993569,
		-0.995811, -0.045741, -0.079170,
		0.039312, -0.995943, 0.080946,
		15.209346, 19.796436, 22.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733418, 20.309193, 22.708628>,  <15.181828, 20.493595, 22.156040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733418, 20.309193, 22.708628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891875, 19.945625, 22.656574>,  <14.986950, 19.727484, 22.625343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891875, 19.945625, 22.656574>,  <14.733418, 20.309193, 22.708628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891875, 19.945625, 22.656574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123419, -0.193150, 0.973376,
		-0.909856, -0.369536, -0.188693,
		0.396143, -0.908920, -0.130131,
		15.010718, 19.672949, 22.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.240317, 19.799559, 22.846714>,  <14.733418, 20.309193, 22.708628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.240317, 19.799559, 22.846714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.604444, 19.649235, 22.916105>,  <14.822919, 19.559040, 22.957741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.604444, 19.649235, 22.916105>,  <14.240317, 19.799559, 22.846714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604444, 19.649235, 22.916105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217688, -0.078204, 0.972880,
		-0.352051, -0.923391, -0.152999,
		0.910314, -0.375809, 0.173479,
		14.877538, 19.536491, 22.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099476, 19.145224, 23.161978>,  <14.240317, 19.799559, 22.846714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099476, 19.145224, 23.161978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.459680, 19.293915, 23.252220>,  <14.675802, 19.383129, 23.306366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.459680, 19.293915, 23.252220>,  <14.099476, 19.145224, 23.161978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459680, 19.293915, 23.252220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243720, 0.001799, 0.969844,
		0.360114, -0.928339, 0.092218,
		0.900510, 0.371730, 0.225607,
		14.729833, 19.405434, 23.319902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380663, 18.716133, 23.693533>,  <14.099476, 19.145224, 23.161978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380663, 18.716133, 23.693533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.545999, 19.074505, 23.758602>,  <14.645200, 19.289528, 23.797644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.545999, 19.074505, 23.758602>,  <14.380663, 18.716133, 23.693533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545999, 19.074505, 23.758602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128240, -0.119592, 0.984506,
		0.901501, -0.427796, 0.065461,
		0.413340, 0.895928, 0.162673,
		14.670000, 19.343283, 23.807404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749676, 18.634016, 24.192644>,  <14.380663, 18.716133, 23.693533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749676, 18.634016, 24.192644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.722526, 19.032963, 24.202862>,  <14.706236, 19.272331, 24.208992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.722526, 19.032963, 24.202862>,  <14.749676, 18.634016, 24.192644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722526, 19.032963, 24.202862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147611, -0.015283, 0.988927,
		0.986714, 0.070895, -0.146185,
		-0.067875, 0.997367, 0.025545,
		14.702163, 19.332172, 24.210526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000475, 18.771563, 24.835777>,  <14.749676, 18.634016, 24.192644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000475, 18.771563, 24.835777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864057, 19.127106, 24.713387>,  <14.782206, 19.340431, 24.639952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864057, 19.127106, 24.713387>,  <15.000475, 18.771563, 24.835777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864057, 19.127106, 24.713387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017284, 0.331365, 0.943344,
		0.939888, 0.316434, -0.128373,
		-0.341045, 0.888857, -0.305977,
		14.761744, 19.393763, 24.621593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398135, 18.226891, 24.539898>,  <15.000475, 18.771563, 24.835777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398135, 18.226891, 24.539898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.424047, 17.830502, 24.586845>,  <15.439593, 17.592669, 24.615013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.424047, 17.830502, 24.586845>,  <15.398135, 18.226891, 24.539898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424047, 17.830502, 24.586845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106985, -0.110040, -0.988153,
		0.992148, 0.076569, 0.098891,
		0.064779, -0.990974, 0.117368,
		15.443480, 17.533209, 24.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868094, 17.949993, 24.030426>,  <15.398135, 18.226891, 24.539898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868094, 17.949993, 24.030426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.692573, 17.600960, 24.116264>,  <15.587259, 17.391541, 24.167767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.692573, 17.600960, 24.116264>,  <15.868094, 17.949993, 24.030426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692573, 17.600960, 24.116264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151056, -0.307047, -0.939630,
		0.885795, -0.379898, 0.266542,
		-0.438804, -0.872583, 0.214595,
		15.560931, 17.339186, 24.180643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250586, 17.563194, 23.695137>,  <15.868094, 17.949993, 24.030426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250586, 17.563194, 23.695137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.915898, 17.354084, 23.760384>,  <15.715086, 17.228619, 23.799532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.915898, 17.354084, 23.760384>,  <16.250586, 17.563194, 23.695137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915898, 17.354084, 23.760384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029977, -0.341133, -0.939537,
		0.546812, -0.781238, 0.301104,
		-0.836719, -0.522776, 0.163117,
		15.664883, 17.197250, 23.809319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470507, 16.878305, 23.573517>,  <16.250586, 17.563194, 23.695137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.470507, 16.878305, 23.573517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.071198, 16.880165, 23.550077>,  <15.831613, 16.881281, 23.536015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.071198, 16.880165, 23.550077>,  <16.470507, 16.878305, 23.573517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071198, 16.880165, 23.550077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054617, -0.295175, -0.953881,
		-0.021728, -0.955432, 0.294411,
		-0.998271, 0.004646, -0.058596,
		15.771716, 16.881559, 23.532499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265322, 16.238079, 23.406544>,  <16.470507, 16.878305, 23.573517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265322, 16.238079, 23.406544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.942393, 16.440590, 23.285273>,  <15.748636, 16.562096, 23.212509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.942393, 16.440590, 23.285273>,  <16.265322, 16.238079, 23.406544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942393, 16.440590, 23.285273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121080, -0.360718, -0.924782,
		-0.577559, -0.783304, 0.229915,
		-0.807320, 0.506278, -0.303178,
		15.700197, 16.592474, 23.194319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943776, 15.807080, 23.063576>,  <16.265322, 16.238079, 23.406544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943776, 15.807080, 23.063576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.803451, 16.152359, 22.918348>,  <15.719255, 16.359526, 22.831211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.803451, 16.152359, 22.918348>,  <15.943776, 15.807080, 23.063576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803451, 16.152359, 22.918348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030587, -0.376940, -0.925732,
		-0.935946, -0.335865, 0.105834,
		-0.350814, 0.863198, -0.363069,
		15.698206, 16.411318, 22.809427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.434142, 15.583974, 22.609869>,  <15.943776, 15.807080, 23.063576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.434142, 15.583974, 22.609869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.550561, 15.952011, 22.505011>,  <15.620412, 16.172832, 22.442095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.550561, 15.952011, 22.505011>,  <15.434142, 15.583974, 22.609869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550561, 15.952011, 22.505011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011969, -0.277489, -0.960654,
		-0.956634, 0.276457, -0.091775,
		0.291047, 0.920093, -0.262147,
		15.637875, 16.228039, 22.426367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973281, 15.720405, 22.028015>,  <15.434142, 15.583974, 22.609869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973281, 15.720405, 22.028015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.290273, 15.962898, 22.001305>,  <15.480468, 16.108395, 21.985279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.290273, 15.962898, 22.001305>,  <14.973281, 15.720405, 22.028015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290273, 15.962898, 22.001305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009621, -0.097048, -0.995233,
		-0.609824, 0.789343, -0.071075,
		0.792479, 0.606233, -0.066777,
		15.528016, 16.144768, 21.981272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.713566, 16.182081, 21.519384>,  <14.973281, 15.720405, 22.028015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.713566, 16.182081, 21.519384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.111859, 16.186516, 21.556023>,  <15.350836, 16.189177, 21.578005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.111859, 16.186516, 21.556023>,  <14.713566, 16.182081, 21.519384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.111859, 16.186516, 21.556023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087385, 0.205260, -0.974799,
		-0.029609, 0.978645, 0.203416,
		0.995735, 0.011088, 0.091596,
		15.410580, 16.189842, 21.583502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925822, 16.811804, 21.212582>,  <14.713566, 16.182081, 21.519384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925822, 16.811804, 21.212582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.230025, 16.553307, 21.187292>,  <15.412547, 16.398209, 21.172117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.230025, 16.553307, 21.187292>,  <14.925822, 16.811804, 21.212582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230025, 16.553307, 21.187292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242326, 0.372804, -0.895710,
		0.602417, 0.665873, 0.440122,
		0.760508, -0.646244, -0.063225,
		15.458178, 16.359434, 21.168325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401484, 17.161884, 20.838415>,  <14.925822, 16.811804, 21.212582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401484, 17.161884, 20.838415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.548528, 16.790417, 20.818678>,  <15.636754, 16.567535, 20.806835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.548528, 16.790417, 20.818678>,  <15.401484, 17.161884, 20.838415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548528, 16.790417, 20.818678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354326, 0.188921, -0.915839,
		0.859835, 0.319187, 0.398501,
		0.367609, -0.928670, -0.049344,
		15.658811, 16.511816, 20.803875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003447, 17.297867, 20.556511>,  <15.401484, 17.161884, 20.838415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003447, 17.297867, 20.556511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968532, 16.902134, 20.509857>,  <15.947583, 16.664694, 20.481865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968532, 16.902134, 20.509857>,  <16.003447, 17.297867, 20.556511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968532, 16.902134, 20.509857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347267, 0.079519, -0.934389,
		0.933695, -0.122062, 0.336621,
		-0.087286, -0.989332, -0.116635,
		15.942346, 16.605335, 20.474867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595896, 17.126604, 20.106596>,  <16.003447, 17.297867, 20.556511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595896, 17.126604, 20.106596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.337955, 16.824203, 20.061646>,  <16.183191, 16.642763, 20.034676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.337955, 16.824203, 20.061646>,  <16.595896, 17.126604, 20.106596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337955, 16.824203, 20.061646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069746, 0.088209, -0.993657,
		0.761118, -0.648600, -0.004154,
		-0.644852, -0.756001, -0.112374,
		16.144499, 16.597403, 20.027933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921404, 16.590675, 19.653296>,  <16.595896, 17.126604, 20.106596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921404, 16.590675, 19.653296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.524773, 16.542301, 19.634760>,  <16.286795, 16.513277, 19.623638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.524773, 16.542301, 19.634760>,  <16.921404, 16.590675, 19.653296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524773, 16.542301, 19.634760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020524, 0.206551, -0.978221,
		0.127868, -0.970934, -0.202329,
		-0.991579, -0.120930, -0.046339,
		16.227299, 16.506021, 19.620857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386908, 15.946609, 19.545324>,  <16.921404, 16.590675, 19.653296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386908, 15.946609, 19.545324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.753071, 16.107502, 19.551535>,  <17.972769, 16.204037, 19.555260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.753071, 16.107502, 19.551535>,  <17.386908, 15.946609, 19.545324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.753071, 16.107502, 19.551535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096921, 0.182813, 0.978359,
		0.390689, -0.897100, 0.206333,
		0.915406, 0.402232, 0.015524,
		18.027693, 16.228170, 19.556192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925238, 15.545027, 20.042244>,  <17.386908, 15.946609, 19.545324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925238, 15.545027, 20.042244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077393, 15.910385, 19.984257>,  <18.168686, 16.129601, 19.949465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077393, 15.910385, 19.984257>,  <17.925238, 15.545027, 20.042244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077393, 15.910385, 19.984257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002557, 0.157790, 0.987469,
		0.924824, -0.375249, 0.062357,
		0.380386, 0.913395, -0.144968,
		18.191509, 16.184404, 19.940767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421453, 15.544930, 20.530666>,  <17.925238, 15.545027, 20.042244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421453, 15.544930, 20.530666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.389225, 15.934238, 20.444639>,  <18.369888, 16.167824, 20.393023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.389225, 15.934238, 20.444639>,  <18.421453, 15.544930, 20.530666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389225, 15.934238, 20.444639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084875, 0.221686, 0.971417,
		0.993129, 0.060012, -0.100467,
		-0.080569, 0.973270, -0.215069,
		18.365055, 16.226219, 20.380119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881485, 15.798370, 20.966106>,  <18.421453, 15.544930, 20.530666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881485, 15.798370, 20.966106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.650330, 16.109245, 20.866488>,  <18.511637, 16.295771, 20.806715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.650330, 16.109245, 20.866488>,  <18.881485, 15.798370, 20.966106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.650330, 16.109245, 20.866488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130962, 0.389519, 0.911660,
		0.805539, 0.494222, -0.326881,
		-0.577889, 0.777187, -0.249048,
		18.476963, 16.342402, 20.791773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357086, 16.360136, 21.104362>,  <18.881485, 15.798370, 20.966106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.357086, 16.360136, 21.104362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.978668, 16.489693, 21.108194>,  <18.751617, 16.567427, 21.110495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.978668, 16.489693, 21.108194>,  <19.357086, 16.360136, 21.104362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978668, 16.489693, 21.108194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066131, 0.164044, 0.984234,
		0.317212, 0.931764, -0.176612,
		-0.946046, 0.323890, 0.009582,
		18.694855, 16.586861, 21.111069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291870, 17.074326, 21.362904>,  <19.357086, 16.360136, 21.104362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291870, 17.074326, 21.362904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.937454, 16.906174, 21.441099>,  <18.724804, 16.805283, 21.488016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.937454, 16.906174, 21.441099>,  <19.291870, 17.074326, 21.362904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937454, 16.906174, 21.441099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161709, 0.114948, 0.980121,
		-0.434493, 0.900038, -0.033869,
		-0.886039, -0.420379, 0.195488,
		18.671642, 16.780060, 21.499746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109686, 17.533672, 21.812084>,  <19.291870, 17.074326, 21.362904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109686, 17.533672, 21.812084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.862347, 17.225388, 21.873592>,  <18.713943, 17.040417, 21.910498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.862347, 17.225388, 21.873592>,  <19.109686, 17.533672, 21.812084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862347, 17.225388, 21.873592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144693, 0.080670, 0.986183,
		-0.772469, 0.632055, 0.061634,
		-0.618349, -0.770714, 0.153769,
		18.676842, 16.994173, 21.919724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006128, 18.307789, 21.990650>,  <19.109686, 17.533672, 21.812084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006128, 18.307789, 21.990650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.292736, 18.578644, 22.057680>,  <19.464701, 18.741158, 22.097898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.292736, 18.578644, 22.057680>,  <19.006128, 18.307789, 21.990650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292736, 18.578644, 22.057680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198018, 0.032903, -0.979646,
		-0.668870, 0.735119, -0.110509,
		0.716521, 0.677139, 0.167575,
		19.507692, 18.781786, 22.107952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773888, 18.982893, 21.590292>,  <19.006128, 18.307789, 21.990650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773888, 18.982893, 21.590292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.161148, 19.026711, 21.680342>,  <19.393505, 19.053001, 21.734371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.161148, 19.026711, 21.680342>,  <18.773888, 18.982893, 21.590292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161148, 19.026711, 21.680342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207339, 0.153182, -0.966202,
		-0.140328, 0.982107, 0.125591,
		0.968152, 0.109545, 0.225125,
		19.451593, 19.059574, 21.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049408, 19.558411, 21.173534>,  <18.773888, 18.982893, 21.590292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049408, 19.558411, 21.173534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.383381, 19.368862, 21.285482>,  <19.583765, 19.255133, 21.352652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.383381, 19.368862, 21.285482>,  <19.049408, 19.558411, 21.173534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383381, 19.368862, 21.285482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312010, -0.011341, -0.950011,
		0.453359, 0.880520, 0.138384,
		0.834934, -0.473873, 0.279872,
		19.633862, 19.226700, 21.369444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679428, 19.957808, 21.014475>,  <19.049408, 19.558411, 21.173534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.679428, 19.957808, 21.014475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.819790, 19.585167, 21.052383>,  <19.904007, 19.361582, 21.075129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.819790, 19.585167, 21.052383>,  <19.679428, 19.957808, 21.014475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819790, 19.585167, 21.052383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387194, 0.052198, -0.920520,
		0.852611, 0.359711, 0.379028,
		0.350906, -0.931603, 0.094773,
		19.925062, 19.305687, 21.080816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337709, 19.959827, 20.884548>,  <19.679428, 19.957808, 21.014475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337709, 19.959827, 20.884548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.220249, 19.590721, 20.784735>,  <20.149773, 19.369257, 20.724846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.220249, 19.590721, 20.784735>,  <20.337709, 19.959827, 20.884548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220249, 19.590721, 20.784735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344662, 0.141278, -0.928035,
		0.891614, -0.358525, 0.276556,
		-0.293652, -0.922768, -0.249536,
		20.132153, 19.313890, 20.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849445, 19.688108, 20.413441>,  <20.337709, 19.959827, 20.884548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849445, 19.688108, 20.413441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.542458, 19.436111, 20.365948>,  <20.358265, 19.284914, 20.337452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.542458, 19.436111, 20.365948>,  <20.849445, 19.688108, 20.413441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542458, 19.436111, 20.365948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254246, -0.129088, -0.958486,
		0.588512, -0.765798, 0.259244,
		-0.767471, -0.629992, -0.118732,
		20.312216, 19.247114, 20.330328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.155165, 19.145226, 20.034605>,  <20.849445, 19.688108, 20.413441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.155165, 19.145226, 20.034605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.759136, 19.126865, 19.981461>,  <20.521519, 19.115850, 19.949574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.759136, 19.126865, 19.981461>,  <21.155165, 19.145226, 20.034605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759136, 19.126865, 19.981461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133636, -0.014228, -0.990928,
		0.043590, -0.998845, 0.020221,
		-0.990071, -0.045897, -0.132861,
		20.462114, 19.113096, 19.941603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.650496, 21.800459, 24.432920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.323097, 21.589848, 24.340981>,  <16.126657, 21.463480, 24.285816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.323097, 21.589848, 24.340981>,  <16.650496, 21.800459, 24.432920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323097, 21.589848, 24.340981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030947, 0.439904, -0.897511,
		0.573678, -0.727496, -0.376355,
		-0.818496, -0.526529, -0.229850,
		16.077549, 21.431889, 24.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762241, 21.641846, 23.828588>,  <16.650496, 21.800459, 24.432920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762241, 21.641846, 23.828588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.364773, 21.600750, 23.846769>,  <16.126291, 21.576094, 23.857677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.364773, 21.600750, 23.846769>,  <16.762241, 21.641846, 23.828588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364773, 21.600750, 23.846769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085472, 0.428773, -0.899360,
		0.072908, -0.897551, -0.434840,
		-0.993669, -0.102738, 0.045455,
		16.066671, 21.569929, 23.860405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637453, 21.312445, 23.200487>,  <16.762241, 21.641846, 23.828588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637453, 21.312445, 23.200487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.275280, 21.443993, 23.307842>,  <16.057976, 21.522921, 23.372255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.275280, 21.443993, 23.307842>,  <16.637453, 21.312445, 23.200487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275280, 21.443993, 23.307842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276360, 0.023219, -0.960774,
		-0.322200, -0.944090, 0.069863,
		-0.905435, 0.328869, 0.268389,
		16.003649, 21.542654, 23.388359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181095, 20.903267, 22.776722>,  <16.637453, 21.312445, 23.200487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181095, 20.903267, 22.776722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.047672, 21.260914, 22.896252>,  <15.967618, 21.475502, 22.967970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.047672, 21.260914, 22.896252>,  <16.181095, 20.903267, 22.776722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047672, 21.260914, 22.896252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194311, 0.244963, -0.949861,
		-0.922487, -0.374898, 0.092027,
		-0.333557, 0.894117, 0.298822,
		15.947605, 21.529148, 22.985899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885164, 21.088940, 22.270372>,  <16.181095, 20.903267, 22.776722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885164, 21.088940, 22.270372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.846837, 21.440773, 22.456770>,  <15.823841, 21.651873, 22.568609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.846837, 21.440773, 22.456770>,  <15.885164, 21.088940, 22.270372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846837, 21.440773, 22.456770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038200, 0.471055, -0.881276,
		-0.994666, -0.066641, -0.078736,
		-0.095818, 0.879583, 0.465996,
		15.818091, 21.704647, 22.596569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357738, 21.424726, 21.895094>,  <15.885164, 21.088940, 22.270372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357738, 21.424726, 21.895094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.573676, 21.702358, 22.085596>,  <15.703239, 21.868937, 22.199898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.573676, 21.702358, 22.085596>,  <15.357738, 21.424726, 21.895094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573676, 21.702358, 22.085596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010706, 0.560077, -0.828372,
		-0.841696, 0.452291, 0.294924,
		0.539845, 0.694080, 0.476256,
		15.735630, 21.910582, 22.228474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062685, 22.076174, 21.646669>,  <15.357738, 21.424726, 21.895094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062685, 22.076174, 21.646669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.435393, 22.121090, 21.784767>,  <15.659019, 22.148039, 21.867626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.435393, 22.121090, 21.784767>,  <15.062685, 22.076174, 21.646669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435393, 22.121090, 21.784767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233226, 0.543642, -0.806263,
		-0.278225, 0.831772, 0.480360,
		0.931771, 0.112290, 0.345246,
		15.714925, 22.154778, 21.888340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189337, 22.848104, 21.419636>,  <15.062685, 22.076174, 21.646669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189337, 22.848104, 21.419636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.531684, 22.650196, 21.479895>,  <15.737092, 22.531452, 21.516050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.531684, 22.650196, 21.479895>,  <15.189337, 22.848104, 21.419636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.531684, 22.650196, 21.479895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325259, 0.288439, -0.900561,
		0.402116, 0.819760, 0.407794,
		0.855867, -0.494769, 0.150648,
		15.788445, 22.501766, 21.525089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656730, 23.407047, 21.347494>,  <15.189337, 22.848104, 21.419636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656730, 23.407047, 21.347494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.882810, 23.079315, 21.309032>,  <16.018457, 22.882675, 21.285955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.882810, 23.079315, 21.309032>,  <15.656730, 23.407047, 21.347494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882810, 23.079315, 21.309032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324454, 0.327944, -0.887233,
		0.758471, 0.470266, 0.451189,
		0.565200, -0.819331, -0.096156,
		16.052370, 22.833515, 21.280186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325878, 23.723289, 21.183798>,  <15.656730, 23.407047, 21.347494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325878, 23.723289, 21.183798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.338718, 23.335163, 21.087915>,  <16.346422, 23.102287, 21.030386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.338718, 23.335163, 21.087915>,  <16.325878, 23.723289, 21.183798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338718, 23.335163, 21.087915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467554, 0.226548, -0.854441,
		0.883381, -0.084645, 0.460948,
		0.032103, -0.970315, -0.239705,
		16.348349, 23.044069, 21.016005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956314, 23.620052, 20.908737>,  <16.325878, 23.723289, 21.183798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956314, 23.620052, 20.908737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.799198, 23.284466, 20.758083>,  <16.704927, 23.083115, 20.667692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.799198, 23.284466, 20.758083>,  <16.956314, 23.620052, 20.908737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799198, 23.284466, 20.758083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407769, 0.208198, -0.889032,
		0.824281, -0.502783, 0.260326,
		-0.392791, -0.838966, -0.376633,
		16.681360, 23.032776, 20.645094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473026, 23.439190, 20.422707>,  <16.956314, 23.620052, 20.908737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473026, 23.439190, 20.422707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.152473, 23.231007, 20.304785>,  <16.960142, 23.106096, 20.234032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.152473, 23.231007, 20.304785>,  <17.473026, 23.439190, 20.422707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.152473, 23.231007, 20.304785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263706, 0.134967, -0.955114,
		0.536886, -0.843153, 0.029088,
		-0.801381, -0.520459, -0.294806,
		16.912060, 23.074869, 20.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927177, 22.829651, 20.738569>,  <17.473026, 23.439190, 20.422707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927177, 22.829651, 20.738569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.326725, 22.811707, 20.744873>,  <18.566454, 22.800940, 20.748655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.326725, 22.811707, 20.744873>,  <17.927177, 22.829651, 20.738569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326725, 22.811707, 20.744873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035764, -0.490404, 0.870761,
		-0.031336, -0.870340, -0.491454,
		0.998869, -0.044862, 0.015760,
		18.626385, 22.798248, 20.749601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087982, 22.158150, 20.874699>,  <17.927177, 22.829651, 20.738569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087982, 22.158150, 20.874699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.404289, 22.367329, 21.001957>,  <18.594074, 22.492836, 21.078312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.404289, 22.367329, 21.001957>,  <18.087982, 22.158150, 20.874699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404289, 22.367329, 21.001957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093393, -0.410585, 0.907027,
		0.604951, -0.746959, -0.275838,
		0.790767, 0.522945, 0.318144,
		18.641520, 22.524212, 21.097401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556913, 21.688374, 21.369045>,  <18.087982, 22.158150, 20.874699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556913, 21.688374, 21.369045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.632328, 22.073002, 21.448877>,  <18.677576, 22.303780, 21.496777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.632328, 22.073002, 21.448877>,  <18.556913, 21.688374, 21.369045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632328, 22.073002, 21.448877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056442, -0.192280, 0.979716,
		0.980443, -0.195977, 0.018022,
		0.188536, 0.961572, 0.199581,
		18.688889, 22.361473, 21.508751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150517, 21.722448, 21.745132>,  <18.556913, 21.688374, 21.369045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150517, 21.722448, 21.745132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.994846, 22.076660, 21.846624>,  <18.901443, 22.289188, 21.907520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.994846, 22.076660, 21.846624>,  <19.150517, 21.722448, 21.745132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994846, 22.076660, 21.846624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051977, -0.253896, 0.965834,
		0.919696, 0.389066, 0.052783,
		-0.389175, 0.885530, 0.253730,
		18.878094, 22.342319, 21.922743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515263, 21.882172, 22.376783>,  <19.150517, 21.722448, 21.745132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515263, 21.882172, 22.376783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.201267, 22.129177, 22.356922>,  <19.012869, 22.277382, 22.345005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.201267, 22.129177, 22.356922>,  <19.515263, 21.882172, 22.376783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201267, 22.129177, 22.356922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153132, -0.115749, 0.981403,
		0.600285, 0.777995, 0.185424,
		-0.784989, 0.617516, -0.049654,
		18.965771, 22.314432, 22.342026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555546, 22.486881, 22.938482>,  <19.515263, 21.882172, 22.376783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555546, 22.486881, 22.938482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174137, 22.395447, 22.859947>,  <18.945292, 22.340586, 22.812826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174137, 22.395447, 22.859947>,  <19.555546, 22.486881, 22.938482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174137, 22.395447, 22.859947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111632, -0.337247, 0.934774,
		-0.279889, 0.913244, 0.296054,
		-0.953520, -0.228584, -0.196339,
		18.888081, 22.326872, 22.801046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146975, 22.798710, 23.453440>,  <19.555546, 22.486881, 22.938482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146975, 22.798710, 23.453440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.933266, 22.503906, 23.287851>,  <18.805040, 22.327024, 23.188498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.933266, 22.503906, 23.287851>,  <19.146975, 22.798710, 23.453440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933266, 22.503906, 23.287851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150424, -0.399018, 0.904521,
		-0.831820, 0.545532, 0.102321,
		-0.534273, -0.737007, -0.413973,
		18.772984, 22.282804, 23.163660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651306, 22.687693, 23.947435>,  <19.146975, 22.798710, 23.453440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651306, 22.687693, 23.947435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.606590, 22.366623, 23.713097>,  <18.579762, 22.173981, 23.572493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.606590, 22.366623, 23.713097>,  <18.651306, 22.687693, 23.947435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.606590, 22.366623, 23.713097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169109, -0.565576, 0.807171,
		-0.979237, 0.189303, -0.072515,
		-0.111788, -0.802675, -0.585846,
		18.573053, 22.125820, 23.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303396, 22.092934, 24.351879>,  <18.651306, 22.687693, 23.947435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303396, 22.092934, 24.351879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.349598, 21.881123, 24.015722>,  <18.377319, 21.754036, 23.814028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.349598, 21.881123, 24.015722>,  <18.303396, 22.092934, 24.351879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349598, 21.881123, 24.015722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125702, -0.847045, 0.516442,
		-0.985321, 0.045988, -0.164400,
		0.115505, -0.529527, -0.840393,
		18.384249, 21.722265, 23.763605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752460, 21.635376, 24.247156>,  <18.303396, 22.092934, 24.351879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752460, 21.635376, 24.247156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.060543, 21.469322, 24.053478>,  <18.245392, 21.369690, 23.937271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.060543, 21.469322, 24.053478>,  <17.752460, 21.635376, 24.247156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060543, 21.469322, 24.053478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051834, -0.715917, 0.696259,
		-0.635683, -0.561362, -0.529887,
		0.770208, -0.415133, -0.484194,
		18.291605, 21.344782, 23.908220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602365, 20.935890, 24.055611>,  <17.752460, 21.635376, 24.247156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602365, 20.935890, 24.055611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.997940, 20.978825, 24.096560>,  <18.235285, 21.004585, 24.121128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.997940, 20.978825, 24.096560>,  <17.602365, 20.935890, 24.055611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997940, 20.978825, 24.096560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017114, -0.768136, 0.640059,
		0.147338, -0.631226, -0.761475,
		0.988938, 0.107337, 0.102373,
		18.294622, 21.011026, 24.127272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917574, 20.265238, 24.142660>,  <17.602365, 20.935890, 24.055611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917574, 20.265238, 24.142660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.220631, 20.477184, 24.295092>,  <18.402464, 20.604353, 24.386551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.220631, 20.477184, 24.295092>,  <17.917574, 20.265238, 24.142660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.220631, 20.477184, 24.295092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042409, -0.622611, 0.781381,
		0.651293, -0.575845, -0.494187,
		0.757641, 0.529866, 0.381081,
		18.447924, 20.636145, 24.409416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364241, 19.769272, 24.619812>,  <17.917574, 20.265238, 24.142660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364241, 19.769272, 24.619812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.502052, 20.120838, 24.751757>,  <18.584740, 20.331778, 24.830923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.502052, 20.120838, 24.751757>,  <18.364241, 19.769272, 24.619812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502052, 20.120838, 24.751757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127595, -0.391954, 0.911093,
		0.930063, -0.271811, -0.247186,
		0.344531, 0.878914, 0.329861,
		18.605412, 20.384512, 24.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032909, 19.648117, 24.763496>,  <18.364241, 19.769272, 24.619812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032909, 19.648117, 24.763496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.851059, 19.938839, 24.969435>,  <18.741949, 20.113272, 25.092999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.851059, 19.938839, 24.969435>,  <19.032909, 19.648117, 24.763496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851059, 19.938839, 24.969435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007057, -0.575079, 0.818068,
		0.890655, 0.375548, 0.256316,
		-0.454626, 0.726807, 0.514847,
		18.714672, 20.156881, 25.123888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364075, 20.267187, 24.756872>,  <19.032909, 19.648117, 24.763496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364075, 20.267187, 24.756872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.454693, 19.909977, 24.912399>,  <19.509064, 19.695650, 25.005716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.454693, 19.909977, 24.912399>,  <19.364075, 20.267187, 24.756872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454693, 19.909977, 24.912399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334880, -0.303445, -0.892063,
		0.914621, 0.332301, 0.230312,
		0.226546, -0.893027, 0.388818,
		19.522657, 19.642069, 25.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067673, 20.045399, 24.444393>,  <19.364075, 20.267187, 24.756872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067673, 20.045399, 24.444393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.884438, 19.708874, 24.559175>,  <19.774496, 19.506958, 24.628046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.884438, 19.708874, 24.559175>,  <20.067673, 20.045399, 24.444393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884438, 19.708874, 24.559175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150865, -0.391722, -0.907631,
		0.876010, -0.372484, 0.306368,
		-0.458089, -0.841314, 0.286958,
		19.747011, 19.456480, 24.645264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494303, 19.587368, 24.291494>,  <20.067673, 20.045399, 24.444393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494303, 19.587368, 24.291494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.139557, 19.403080, 24.305401>,  <19.926710, 19.292507, 24.313745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.139557, 19.403080, 24.305401>,  <20.494303, 19.587368, 24.291494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139557, 19.403080, 24.305401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234274, -0.513275, -0.825630,
		0.398229, -0.724077, 0.563140,
		-0.886865, -0.460719, 0.034768,
		19.873497, 19.264864, 24.315832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655981, 19.042566, 23.863653>,  <20.494303, 19.587368, 24.291494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655981, 19.042566, 23.863653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.256107, 19.040257, 23.873413>,  <20.016182, 19.038872, 23.879269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.256107, 19.040257, 23.873413>,  <20.655981, 19.042566, 23.863653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256107, 19.040257, 23.873413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021730, -0.285960, -0.957995,
		0.012509, -0.958224, 0.285745,
		-0.999685, -0.005774, 0.024399,
		19.956202, 19.038525, 23.880733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370806, 18.477442, 23.567339>,  <20.655981, 19.042566, 23.863653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370806, 18.477442, 23.567339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.042187, 18.702438, 23.530106>,  <19.845016, 18.837437, 23.507765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.042187, 18.702438, 23.530106>,  <20.370806, 18.477442, 23.567339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042187, 18.702438, 23.530106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032000, -0.117515, -0.992555,
		-0.569243, -0.818409, 0.078544,
		-0.821546, 0.562492, -0.093084,
		19.795723, 18.871185, 23.502180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898476, 18.117878, 23.155838>,  <20.370806, 18.477442, 23.567339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898476, 18.117878, 23.155838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.739056, 18.482182, 23.112617>,  <19.643404, 18.700764, 23.086685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.739056, 18.482182, 23.112617>,  <19.898476, 18.117878, 23.155838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739056, 18.482182, 23.112617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030432, -0.130878, -0.990931,
		-0.916641, -0.391649, 0.079877,
		-0.398552, 0.910759, -0.108049,
		19.619490, 18.755409, 23.080202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346880, 18.036654, 22.634901>,  <19.898476, 18.117878, 23.155838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346880, 18.036654, 22.634901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.448807, 18.422932, 22.614885>,  <19.509964, 18.654697, 22.602877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.448807, 18.422932, 22.614885>,  <19.346880, 18.036654, 22.634901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448807, 18.422932, 22.614885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134064, -0.086528, -0.987188,
		-0.957651, 0.244845, -0.151513,
		0.254818, 0.965693, -0.050038,
		19.525251, 18.712639, 22.599874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674360, 17.774349, 22.392492>,  <19.346880, 18.036654, 22.634901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674360, 17.774349, 22.392492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.634407, 17.376766, 22.374281>,  <18.610435, 17.138216, 22.363354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.634407, 17.376766, 22.374281>,  <18.674360, 17.774349, 22.392492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.634407, 17.376766, 22.374281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092764, -0.036256, 0.995028,
		-0.990666, 0.103610, -0.088582,
		-0.099883, -0.993957, -0.045529,
		18.604443, 17.078579, 22.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979067, 17.645638, 22.741743>,  <18.674360, 17.774349, 22.392492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979067, 17.645638, 22.741743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.197468, 17.310947, 22.758593>,  <18.328508, 17.110134, 22.768703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.197468, 17.310947, 22.758593>,  <17.979067, 17.645638, 22.741743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197468, 17.310947, 22.758593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179773, -0.067903, 0.981362,
		-0.818268, -0.543399, -0.187496,
		0.546003, -0.836724, 0.042126,
		18.361269, 17.059931, 22.771231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545218, 17.206888, 23.229860>,  <17.979067, 17.645638, 22.741743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545218, 17.206888, 23.229860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.915134, 17.059738, 23.191025>,  <18.137085, 16.971447, 23.167725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.915134, 17.059738, 23.191025>,  <17.545218, 17.206888, 23.229860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915134, 17.059738, 23.191025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090596, -0.034918, 0.995275,
		-0.369529, -0.929219, 0.001036,
		0.924793, -0.367877, -0.097087,
		18.192572, 16.949375, 23.161900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585192, 16.675617, 23.624811>,  <17.545218, 17.206888, 23.229860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.585192, 16.675617, 23.624811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.964508, 16.799561, 23.597301>,  <18.192099, 16.873926, 23.580795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.964508, 16.799561, 23.597301>,  <17.585192, 16.675617, 23.624811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964508, 16.799561, 23.597301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070341, 0.006125, 0.997504,
		0.309509, -0.950762, -0.015988,
		0.948292, 0.309861, -0.068773,
		18.248995, 16.892519, 23.576670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700047, 16.254593, 24.193918>,  <17.585192, 16.675617, 23.624811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.700047, 16.254593, 24.193918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.981674, 16.525986, 24.110064>,  <18.150652, 16.688822, 24.059750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.981674, 16.525986, 24.110064>,  <17.700047, 16.254593, 24.193918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981674, 16.525986, 24.110064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025150, 0.318849, 0.947472,
		0.709685, -0.661814, 0.241555,
		0.704070, 0.678482, -0.209638,
		18.192896, 16.729530, 24.047173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.154245, 16.079609, 24.727442>,  <17.700047, 16.254593, 24.193918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.154245, 16.079609, 24.727442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.246876, 16.441967, 24.585609>,  <18.302454, 16.659382, 24.500511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.246876, 16.441967, 24.585609>,  <18.154245, 16.079609, 24.727442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246876, 16.441967, 24.585609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063546, 0.377796, 0.923705,
		0.970739, -0.191378, 0.145056,
		0.231578, 0.905894, -0.354580,
		18.316349, 16.713736, 24.479235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559053, 16.265816, 25.206255>,  <18.154245, 16.079609, 24.727442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.559053, 16.265816, 25.206255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.430134, 16.604275, 25.036476>,  <18.352781, 16.807350, 24.934608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.430134, 16.604275, 25.036476>,  <18.559053, 16.265816, 25.206255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430134, 16.604275, 25.036476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039975, 0.460139, 0.886947,
		0.945793, 0.268896, -0.182128,
		-0.322300, 0.846148, -0.424447,
		18.333445, 16.858120, 24.909142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956633, 16.734110, 25.501078>,  <18.559053, 16.265816, 25.206255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.956633, 16.734110, 25.501078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.639946, 16.933960, 25.360474>,  <18.449934, 17.053869, 25.276112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.639946, 16.933960, 25.360474>,  <18.956633, 16.734110, 25.501078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639946, 16.933960, 25.360474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001180, 0.574156, 0.818745,
		0.610885, 0.648631, -0.453981,
		-0.791719, 0.499623, -0.351509,
		18.402430, 17.083847, 25.255020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000711, 17.460081, 25.744482>,  <18.956633, 16.734110, 25.501078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000711, 17.460081, 25.744482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.614063, 17.430721, 25.646294>,  <18.382074, 17.413105, 25.587379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.614063, 17.430721, 25.646294>,  <19.000711, 17.460081, 25.744482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614063, 17.430721, 25.646294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246902, 0.522768, 0.815937,
		0.068436, 0.849309, -0.523441,
		-0.966621, -0.073399, -0.245472,
		18.324078, 17.408701, 25.572653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.207926, 18.807470, 9.061943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.868595, 18.601707, 9.112104>,  <18.664997, 18.478251, 9.142201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.868595, 18.601707, 9.112104>,  <19.207926, 18.807470, 9.061943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868595, 18.601707, 9.112104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247752, -0.176340, 0.952640,
		-0.467931, 0.839220, 0.277039,
		-0.848328, -0.514407, 0.125403,
		18.614098, 18.447386, 9.149725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998850, 19.036247, 9.719018>,  <19.207926, 18.807470, 9.061943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998850, 19.036247, 9.719018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.829445, 18.679153, 9.657481>,  <18.727802, 18.464897, 9.620559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.829445, 18.679153, 9.657481>,  <18.998850, 19.036247, 9.719018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.829445, 18.679153, 9.657481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312476, -0.303365, 0.900182,
		-0.850292, 0.333165, 0.407436,
		-0.423511, -0.892732, -0.153843,
		18.702391, 18.411333, 9.611328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685686, 18.915674, 10.406995>,  <18.998850, 19.036247, 9.719018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685686, 18.915674, 10.406995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.686314, 18.559765, 10.224436>,  <18.686691, 18.346218, 10.114901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.686314, 18.559765, 10.224436>,  <18.685686, 18.915674, 10.406995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686314, 18.559765, 10.224436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087668, -0.454518, 0.886413,
		-0.996149, -0.041403, 0.077291,
		0.001570, -0.889775, -0.456397,
		18.686785, 18.292833, 10.087517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180786, 18.681833, 10.707708>,  <18.685686, 18.915674, 10.406995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180786, 18.681833, 10.707708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.420170, 18.388771, 10.578053>,  <18.563799, 18.212934, 10.500260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.420170, 18.388771, 10.578053>,  <18.180786, 18.681833, 10.707708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420170, 18.388771, 10.578053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005986, -0.400488, 0.916283,
		-0.801132, -0.550296, -0.235289,
		0.598457, -0.732655, -0.324138,
		18.599707, 18.168974, 10.480812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870628, 18.119734, 11.011394>,  <18.180786, 18.681833, 10.707708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870628, 18.119734, 11.011394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.244877, 18.021042, 10.910407>,  <18.469425, 17.961826, 10.849815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.244877, 18.021042, 10.910407>,  <17.870628, 18.119734, 11.011394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.244877, 18.021042, 10.910407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146248, -0.380004, 0.913350,
		-0.321285, -0.891473, -0.319456,
		0.935621, -0.246726, -0.252466,
		18.525562, 17.947023, 10.834667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850605, 17.448620, 11.232736>,  <17.870628, 18.119734, 11.011394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850605, 17.448620, 11.232736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235012, 17.550369, 11.189400>,  <18.465656, 17.611420, 11.163398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235012, 17.550369, 11.189400>,  <17.850605, 17.448620, 11.232736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235012, 17.550369, 11.189400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230987, -0.523318, 0.820234,
		0.151951, -0.813285, -0.561675,
		0.961018, 0.254375, -0.108340,
		18.523317, 17.626682, 11.156898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222383, 16.842897, 11.280636>,  <17.850605, 17.448620, 11.232736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222383, 16.842897, 11.280636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495766, 17.124813, 11.356699>,  <18.659796, 17.293962, 11.402337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495766, 17.124813, 11.356699>,  <18.222383, 16.842897, 11.280636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495766, 17.124813, 11.356699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244177, -0.466206, 0.850312,
		0.687943, -0.534718, -0.490724,
		0.683456, 0.704790, 0.190157,
		18.700802, 17.336250, 11.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760736, 16.473398, 11.545266>,  <18.222383, 16.842897, 11.280636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760736, 16.473398, 11.545266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.806568, 16.842178, 11.693253>,  <18.834068, 17.063446, 11.782044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.806568, 16.842178, 11.693253>,  <18.760736, 16.473398, 11.545266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806568, 16.842178, 11.693253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271087, -0.387302, 0.881197,
		0.955711, -0.000675, -0.294307,
		0.114581, 0.921953, 0.369965,
		18.840942, 17.118765, 11.804242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346132, 16.407682, 11.995602>,  <18.760736, 16.473398, 11.545266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346132, 16.407682, 11.995602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.173153, 16.748215, 12.114409>,  <19.069365, 16.952534, 12.185695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.173153, 16.748215, 12.114409>,  <19.346132, 16.407682, 11.995602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173153, 16.748215, 12.114409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054069, -0.304338, 0.951029,
		0.900036, 0.427331, 0.085580,
		-0.432450, 0.851332, 0.297020,
		19.043419, 17.003614, 12.203516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680019, 16.505131, 12.637512>,  <19.346132, 16.407682, 11.995602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680019, 16.505131, 12.637512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.399784, 16.790211, 12.651564>,  <19.231644, 16.961258, 12.659995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.399784, 16.790211, 12.651564>,  <19.680019, 16.505131, 12.637512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399784, 16.790211, 12.651564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138214, 0.087237, 0.986553,
		0.700052, 0.696023, -0.159622,
		-0.700589, 0.712700, 0.035130,
		19.189608, 17.004021, 12.662103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926796, 17.042328, 13.183185>,  <19.680019, 16.505131, 12.637512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926796, 17.042328, 13.183185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.527744, 17.054974, 13.158730>,  <19.288313, 17.062561, 13.144056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.527744, 17.054974, 13.158730>,  <19.926796, 17.042328, 13.183185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527744, 17.054974, 13.158730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062253, -0.035579, 0.997426,
		0.029356, 0.998867, 0.037463,
		-0.997629, 0.031612, -0.061138,
		19.228456, 17.064457, 13.140388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661777, 17.562199, 13.712326>,  <19.926796, 17.042328, 13.183185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661777, 17.562199, 13.712326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369099, 17.302464, 13.629398>,  <19.193491, 17.146622, 13.579641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369099, 17.302464, 13.629398>,  <19.661777, 17.562199, 13.712326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369099, 17.302464, 13.629398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222721, -0.059705, 0.973052,
		-0.644217, 0.758153, -0.100934,
		-0.731697, -0.649337, -0.207320,
		19.149590, 17.107662, 13.567203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502928, 18.269514, 13.648504>,  <19.661777, 17.562199, 13.712326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502928, 18.269514, 13.648504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.875088, 18.392971, 13.727592>,  <20.098385, 18.467045, 13.775045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.875088, 18.392971, 13.727592>,  <19.502928, 18.269514, 13.648504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875088, 18.392971, 13.727592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153316, 0.162277, -0.974762,
		-0.332939, 0.937233, 0.103663,
		0.930401, 0.308643, 0.197721,
		20.154207, 18.485563, 13.786909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600822, 18.865784, 13.333507>,  <19.502928, 18.269514, 13.648504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600822, 18.865784, 13.333507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.978260, 18.739296, 13.372772>,  <20.204723, 18.663404, 13.396332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.978260, 18.739296, 13.372772>,  <19.600822, 18.865784, 13.333507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978260, 18.739296, 13.372772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175022, 0.224694, -0.958582,
		0.281064, 0.921694, 0.267365,
		0.943594, -0.316218, 0.098163,
		20.261339, 18.644430, 13.402221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138872, 19.448446, 13.168028>,  <19.600822, 18.865784, 13.333507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138872, 19.448446, 13.168028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.306313, 19.092037, 13.097765>,  <20.406776, 18.878193, 13.055608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.306313, 19.092037, 13.097765>,  <20.138872, 19.448446, 13.168028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306313, 19.092037, 13.097765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392920, 0.352065, -0.849509,
		0.818772, 0.286586, 0.497474,
		0.418600, -0.891021, -0.175656,
		20.431892, 18.824730, 13.045068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556337, 19.616434, 12.629659>,  <20.138872, 19.448446, 13.168028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556337, 19.616434, 12.629659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.604191, 19.219807, 12.609737>,  <20.632902, 18.981831, 12.597785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.604191, 19.219807, 12.609737>,  <20.556337, 19.616434, 12.629659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604191, 19.219807, 12.609737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581443, 0.110635, -0.806030,
		0.804744, 0.067469, 0.589776,
		0.119632, -0.991568, -0.049803,
		20.640079, 18.922337, 12.594796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325605, 19.487343, 12.711433>,  <20.556337, 19.616434, 12.629659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325605, 19.487343, 12.711433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.124363, 19.204548, 12.512615>,  <21.003616, 19.034872, 12.393325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.124363, 19.204548, 12.512615>,  <21.325605, 19.487343, 12.711433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124363, 19.204548, 12.512615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588241, 0.141204, -0.796263,
		0.633132, -0.692988, 0.344837,
		-0.503108, -0.706986, -0.497044,
		20.973431, 18.992453, 12.363502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780346, 19.196882, 12.409101>,  <21.325605, 19.487343, 12.711433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780346, 19.196882, 12.409101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.457172, 19.100559, 12.193970>,  <21.263269, 19.042767, 12.064891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.457172, 19.100559, 12.193970>,  <21.780346, 19.196882, 12.409101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.457172, 19.100559, 12.193970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498686, 0.206836, -0.841743,
		0.313940, -0.948278, -0.047022,
		-0.807932, -0.240807, -0.537827,
		21.214792, 19.028318, 12.032621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938219, 18.643993, 11.871580>,  <21.780346, 19.196882, 12.409101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938219, 18.643993, 11.871580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.603832, 18.802147, 11.719352>,  <21.403200, 18.897039, 11.628015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.603832, 18.802147, 11.719352>,  <21.938219, 18.643993, 11.871580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.603832, 18.802147, 11.719352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457225, 0.118293, -0.881449,
		-0.303491, -0.910867, -0.279668,
		-0.835965, 0.395383, -0.380570,
		21.353043, 18.920761, 11.605181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697578, 18.216093, 11.231137>,  <21.938219, 18.643993, 11.871580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697578, 18.216093, 11.231137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.533897, 18.580387, 11.208828>,  <21.435688, 18.798964, 11.195442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.533897, 18.580387, 11.208828>,  <21.697578, 18.216093, 11.231137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.533897, 18.580387, 11.208828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331597, 0.091487, -0.938975,
		-0.850056, -0.402728, -0.339434,
		-0.409205, 0.910736, -0.055774,
		21.411137, 18.853607, 11.192096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426344, 18.160536, 10.533122>,  <21.697578, 18.216093, 11.231137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426344, 18.160536, 10.533122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.409103, 18.547470, 10.633047>,  <21.398760, 18.779631, 10.693002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.409103, 18.547470, 10.633047>,  <21.426344, 18.160536, 10.533122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409103, 18.547470, 10.633047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259832, 0.252294, -0.932113,
		-0.964691, 0.024734, -0.262218,
		-0.043101, 0.967334, 0.249813,
		21.396173, 18.837671, 10.707991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098566, 18.499920, 10.071414>,  <21.426344, 18.160536, 10.533122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098566, 18.499920, 10.071414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.271534, 18.820034, 10.237575>,  <21.375315, 19.012102, 10.337271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.271534, 18.820034, 10.237575>,  <21.098566, 18.499920, 10.071414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271534, 18.820034, 10.237575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244059, 0.339619, -0.908347,
		-0.868014, 0.494170, -0.048458,
		0.432420, 0.800284, 0.415401,
		21.401260, 19.060120, 10.362195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788864, 19.180502, 9.766345>,  <21.098566, 18.499920, 10.071414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788864, 19.180502, 9.766345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.122639, 19.317822, 9.938791>,  <21.322903, 19.400213, 10.042259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.122639, 19.317822, 9.938791>,  <20.788864, 19.180502, 9.766345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122639, 19.317822, 9.938791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285778, 0.399337, -0.871126,
		-0.471219, 0.850103, 0.235113,
		0.834436, 0.343301, 0.431116,
		21.372969, 19.420813, 10.068126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927320, 19.868036, 9.484127>,  <20.788864, 19.180502, 9.766345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927320, 19.868036, 9.484127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.286850, 19.724796, 9.585226>,  <21.502567, 19.638853, 9.645885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.286850, 19.724796, 9.585226>,  <20.927320, 19.868036, 9.484127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286850, 19.724796, 9.585226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382498, 0.359245, -0.851257,
		0.214035, 0.861805, 0.459870,
		0.898824, -0.358098, 0.252748,
		21.556498, 19.617367, 9.661050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343267, 20.415789, 9.339715>,  <20.927320, 19.868036, 9.484127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343267, 20.415789, 9.339715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.570450, 20.088009, 9.370510>,  <21.706758, 19.891340, 9.388987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.570450, 20.088009, 9.370510>,  <21.343267, 20.415789, 9.339715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570450, 20.088009, 9.370510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409403, 0.200126, -0.890134,
		0.714015, 0.537074, 0.449148,
		0.567955, -0.819451, 0.076987,
		21.740837, 19.842173, 9.393606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145117, 20.578642, 9.296844>,  <21.343267, 20.415789, 9.339715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145117, 20.578642, 9.296844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.133244, 20.193775, 9.188510>,  <22.126120, 19.962854, 9.123509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.133244, 20.193775, 9.188510>,  <22.145117, 20.578642, 9.296844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.133244, 20.193775, 9.188510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295746, 0.250370, -0.921873,
		0.954805, -0.107464, 0.277125,
		-0.029684, -0.962168, -0.270836,
		22.124338, 19.905125, 9.107259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974277, 20.940783, 9.999247>,  <22.145117, 20.578642, 9.296844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974277, 20.940783, 9.999247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.921936, 21.309658, 9.853672>,  <21.890532, 21.530983, 9.766328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.921936, 21.309658, 9.853672>,  <21.974277, 20.940783, 9.999247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921936, 21.309658, 9.853672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068500, 0.374625, 0.924643,
		0.989033, 0.096062, -0.112190,
		-0.130852, 0.922187, -0.363936,
		21.882681, 21.586313, 9.744492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.427856, 21.299429, 10.390085>,  <21.974277, 20.940783, 9.999247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.427856, 21.299429, 10.390085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.143345, 21.551102, 10.264730>,  <21.972637, 21.702105, 10.189518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.143345, 21.551102, 10.264730>,  <22.427856, 21.299429, 10.390085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143345, 21.551102, 10.264730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126438, 0.324046, 0.937554,
		0.691442, 0.706489, -0.150935,
		-0.711281, 0.629181, -0.313386,
		21.929960, 21.739857, 10.170714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642448, 21.988247, 10.520872>,  <22.427856, 21.299429, 10.390085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642448, 21.988247, 10.520872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.242744, 21.973045, 10.523297>,  <22.002922, 21.963924, 10.524753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.242744, 21.973045, 10.523297>,  <22.642448, 21.988247, 10.520872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242744, 21.973045, 10.523297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010951, 0.431823, 0.901892,
		-0.036894, 0.901157, -0.431919,
		-0.999259, -0.038004, 0.006063,
		21.942966, 21.961643, 10.525116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294996, 22.647316, 10.756727>,  <22.642448, 21.988247, 10.520872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294996, 22.647316, 10.756727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.032227, 22.359261, 10.846040>,  <21.874565, 22.186428, 10.899627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.032227, 22.359261, 10.846040>,  <22.294996, 22.647316, 10.756727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032227, 22.359261, 10.846040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083920, 0.364144, 0.927554,
		-0.749272, 0.590595, -0.299649,
		-0.656924, -0.720137, 0.223280,
		21.835150, 22.143219, 10.913024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901426, 22.897512, 11.353020>,  <22.294996, 22.647316, 10.756727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901426, 22.897512, 11.353020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.755901, 22.525002, 11.360668>,  <21.668587, 22.301495, 11.365257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.755901, 22.525002, 11.360668>,  <21.901426, 22.897512, 11.353020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755901, 22.525002, 11.360668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105701, 0.061671, 0.992484,
		-0.925455, 0.359057, -0.120874,
		-0.363813, -0.931276, 0.019121,
		21.646757, 22.245619, 11.366405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.270708, 22.901136, 11.654533>,  <21.901426, 22.897512, 11.353020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.270708, 22.901136, 11.654533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.398228, 22.526100, 11.710087>,  <21.474739, 22.301079, 11.743419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.398228, 22.526100, 11.710087>,  <21.270708, 22.901136, 11.654533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398228, 22.526100, 11.710087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263971, 0.052904, 0.963079,
		-0.910322, -0.343690, -0.230632,
		0.318799, -0.937592, 0.138883,
		21.493868, 22.244823, 11.751752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656544, 22.561638, 11.863550>,  <21.270708, 22.901136, 11.654533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656544, 22.561638, 11.863550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.960503, 22.334389, 11.989909>,  <21.142878, 22.198040, 12.065724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.960503, 22.334389, 11.989909>,  <20.656544, 22.561638, 11.863550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960503, 22.334389, 11.989909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473358, -0.150558, 0.867908,
		-0.445518, -0.809054, -0.383334,
		0.759899, -0.568123, 0.315896,
		21.188473, 22.163952, 12.084678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379950, 21.952503, 12.249601>,  <20.656544, 22.561638, 11.863550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379950, 21.952503, 12.249601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752167, 21.956009, 12.396034>,  <20.975496, 21.958113, 12.483894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752167, 21.956009, 12.396034>,  <20.379950, 21.952503, 12.249601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752167, 21.956009, 12.396034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364642, -0.069609, 0.928543,
		0.033622, -0.997536, -0.061577,
		0.930541, 0.008766, 0.366083,
		21.031328, 21.958637, 12.505859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338968, 21.508137, 12.808291>,  <20.379950, 21.952503, 12.249601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338968, 21.508137, 12.808291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.669041, 21.720848, 12.884486>,  <20.867085, 21.848475, 12.930202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.669041, 21.720848, 12.884486>,  <20.338968, 21.508137, 12.808291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.669041, 21.720848, 12.884486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215024, -0.016118, 0.976476,
		0.522339, -0.846730, 0.101045,
		0.825183, 0.531778, 0.190486,
		20.916595, 21.880381, 12.941632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576399, 21.175289, 13.360869>,  <20.338968, 21.508137, 12.808291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576399, 21.175289, 13.360869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.755001, 21.533123, 13.368404>,  <20.862162, 21.747824, 13.372926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.755001, 21.533123, 13.368404>,  <20.576399, 21.175289, 13.360869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755001, 21.533123, 13.368404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052113, 0.004981, 0.998629,
		0.893262, -0.446875, 0.048844,
		0.446505, 0.894583, 0.018838,
		20.888952, 21.801498, 13.374056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.085121, 21.142626, 13.792914>,  <20.576399, 21.175289, 13.360869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.085121, 21.142626, 13.792914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.030823, 21.538921, 13.794003>,  <20.998243, 21.776699, 13.794655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.030823, 21.538921, 13.794003>,  <21.085121, 21.142626, 13.792914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.030823, 21.538921, 13.794003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004755, -0.003397, 0.999983,
		0.990732, 0.135733, 0.005172,
		-0.135748, 0.990740, 0.002720,
		20.990099, 21.836143, 13.794819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.501163, 21.413485, 14.326060>,  <21.085121, 21.142626, 13.792914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.501163, 21.413485, 14.326060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.234222, 21.708508, 14.284781>,  <21.074057, 21.885521, 14.260013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.234222, 21.708508, 14.284781>,  <21.501163, 21.413485, 14.326060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234222, 21.708508, 14.284781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023286, 0.117837, 0.992760,
		0.744376, 0.664926, -0.061464,
		-0.667355, 0.737555, -0.103199,
		21.034016, 21.929773, 14.253821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.787901, 22.010195, 14.667749>,  <21.501163, 21.413485, 14.326060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.787901, 22.010195, 14.667749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.392380, 22.064049, 14.641998>,  <21.155067, 22.096361, 14.626548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.392380, 22.064049, 14.641998>,  <21.787901, 22.010195, 14.667749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392380, 22.064049, 14.641998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004257, 0.405763, 0.913968,
		0.149175, 0.904007, -0.400646,
		-0.988802, 0.134636, -0.064378,
		21.095739, 22.104439, 14.622684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673420, 22.678713, 15.028989>,  <21.787901, 22.010195, 14.667749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673420, 22.678713, 15.028989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.330475, 22.472897, 15.023603>,  <21.124708, 22.349407, 15.020372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.330475, 22.472897, 15.023603>,  <21.673420, 22.678713, 15.028989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330475, 22.472897, 15.023603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082708, 0.111904, 0.990271,
		-0.508026, 0.850134, -0.138498,
		-0.857361, -0.514539, -0.013463,
		21.073267, 22.318535, 15.019565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304691, 23.068586, 15.499976>,  <21.673420, 22.678713, 15.028989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304691, 23.068586, 15.499976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.059479, 22.753204, 15.479841>,  <20.912352, 22.563976, 15.467760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.059479, 22.753204, 15.479841>,  <21.304691, 23.068586, 15.499976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059479, 22.753204, 15.479841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198086, 0.091712, 0.975884,
		-0.764824, 0.608218, -0.212404,
		-0.613031, -0.788454, -0.050337,
		20.875570, 22.516668, 15.464740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704243, 23.285860, 15.968001>,  <21.304691, 23.068586, 15.499976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704243, 23.285860, 15.968001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.683598, 22.888138, 15.930700>,  <20.671211, 22.649506, 15.908319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.683598, 22.888138, 15.930700>,  <20.704243, 23.285860, 15.968001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683598, 22.888138, 15.930700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509460, -0.054099, 0.858792,
		-0.858945, 0.091832, -0.503766,
		-0.051611, -0.994304, -0.093253,
		20.668114, 22.589848, 15.902724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987928, 23.080627, 16.029531>,  <20.704243, 23.285860, 15.968001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987928, 23.080627, 16.029531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.216991, 22.773762, 16.145132>,  <20.354429, 22.589643, 16.214493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.216991, 22.773762, 16.145132>,  <19.987928, 23.080627, 16.029531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216991, 22.773762, 16.145132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513955, -0.061323, 0.855623,
		-0.638680, -0.638514, -0.429404,
		0.572659, -0.767163, 0.289002,
		20.388790, 22.543613, 16.231833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561764, 22.743620, 16.508772>,  <19.987928, 23.080627, 16.029531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561764, 22.743620, 16.508772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.914055, 22.567604, 16.578842>,  <20.125429, 22.461994, 16.620884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.914055, 22.567604, 16.578842>,  <19.561764, 22.743620, 16.508772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914055, 22.567604, 16.578842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191985, 0.006426, 0.981377,
		-0.432971, -0.897955, -0.078821,
		0.880726, -0.440040, 0.175177,
		20.178272, 22.435593, 16.631395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386255, 22.188147, 16.940704>,  <19.561764, 22.743620, 16.508772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386255, 22.188147, 16.940704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.775494, 22.262596, 16.995022>,  <20.009037, 22.307266, 17.027613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.775494, 22.262596, 16.995022>,  <19.386255, 22.188147, 16.940704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775494, 22.262596, 16.995022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142280, 0.021884, 0.989585,
		0.181216, -0.982282, 0.047777,
		0.973097, 0.186127, 0.135793,
		20.067423, 22.318434, 17.035759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654085, 21.642056, 17.335159>,  <19.386255, 22.188147, 16.940704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654085, 21.642056, 17.335159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.892464, 21.958138, 17.392326>,  <20.035492, 22.147787, 17.426626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.892464, 21.958138, 17.392326>,  <19.654085, 21.642056, 17.335159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892464, 21.958138, 17.392326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258264, 0.020090, 0.965865,
		0.760359, -0.612515, 0.216053,
		0.595948, 0.790203, 0.142915,
		20.071249, 22.195198, 17.435202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067780, 21.486429, 17.953287>,  <19.654085, 21.642056, 17.335159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067780, 21.486429, 17.953287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059814, 21.882042, 17.894741>,  <20.055037, 22.119410, 17.859613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059814, 21.882042, 17.894741>,  <20.067780, 21.486429, 17.953287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059814, 21.882042, 17.894741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284817, 0.134719, 0.949068,
		0.958375, 0.060585, 0.279010,
		-0.019911, 0.989030, -0.146367,
		20.053841, 22.178751, 17.850832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448351, 21.716040, 18.545292>,  <20.067780, 21.486429, 17.953287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448351, 21.716040, 18.545292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.247074, 22.032116, 18.405352>,  <20.126308, 22.221762, 18.321386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.247074, 22.032116, 18.405352>,  <20.448351, 21.716040, 18.545292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247074, 22.032116, 18.405352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261721, 0.246479, 0.933140,
		0.823591, 0.561111, 0.082784,
		-0.503191, 0.790192, -0.349852,
		20.096117, 22.269173, 18.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613001, 22.195152, 18.992933>,  <20.448351, 21.716040, 18.545292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613001, 22.195152, 18.992933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.284786, 22.349300, 18.824074>,  <20.087856, 22.441790, 18.722759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.284786, 22.349300, 18.824074>,  <20.613001, 22.195152, 18.992933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284786, 22.349300, 18.824074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327529, 0.288280, 0.899788,
		0.468447, 0.876576, -0.110326,
		-0.820538, 0.385368, -0.422148,
		20.038626, 22.464911, 18.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523241, 22.968414, 19.145733>,  <20.613001, 22.195152, 18.992933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523241, 22.968414, 19.145733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.156109, 22.853874, 19.035757>,  <19.935829, 22.785151, 18.969772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.156109, 22.853874, 19.035757>,  <20.523241, 22.968414, 19.145733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156109, 22.853874, 19.035757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363462, 0.327658, 0.872087,
		-0.159637, 0.900357, -0.404812,
		-0.917830, -0.286351, -0.274939,
		19.880760, 22.767969, 18.953276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163462, 23.340380, 19.512760>,  <20.523241, 22.968414, 19.145733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163462, 23.340380, 19.512760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.863953, 23.109058, 19.383205>,  <19.684246, 22.970266, 19.305473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.863953, 23.109058, 19.383205>,  <20.163462, 23.340380, 19.512760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863953, 23.109058, 19.383205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480610, 0.137189, 0.866137,
		-0.456457, 0.804204, -0.380662,
		-0.748774, -0.578304, -0.323887,
		19.639320, 22.935568, 19.286039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542414, 23.706289, 19.613333>,  <20.163462, 23.340380, 19.512760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542414, 23.706289, 19.613333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.419735, 23.325672, 19.604403>,  <19.346127, 23.097301, 19.599045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.419735, 23.325672, 19.604403>,  <19.542414, 23.706289, 19.613333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419735, 23.325672, 19.604403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489658, 0.137627, 0.860984,
		-0.816193, 0.274994, -0.508142,
		-0.306699, -0.951545, -0.022323,
		19.327724, 23.040209, 19.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979225, 23.752693, 20.032745>,  <19.542414, 23.706289, 19.613333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979225, 23.752693, 20.032745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.015388, 23.355255, 20.005617>,  <19.037086, 23.116793, 19.989340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.015388, 23.355255, 20.005617>,  <18.979225, 23.752693, 20.032745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.015388, 23.355255, 20.005617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457118, -0.101902, 0.883549,
		-0.884799, -0.048880, -0.463402,
		0.090410, -0.993593, -0.067819,
		19.042511, 23.057177, 19.985271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252552, 23.438110, 20.170580>,  <18.979225, 23.752693, 20.032745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252552, 23.438110, 20.170580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.544125, 23.173042, 20.239317>,  <18.719069, 23.014002, 20.280560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.544125, 23.173042, 20.239317>,  <18.252552, 23.438110, 20.170580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544125, 23.173042, 20.239317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387027, -0.191849, 0.901889,
		-0.564687, -0.723922, -0.396315,
		0.728930, -0.662670, 0.171843,
		18.762804, 22.974241, 20.290871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751850, 22.962111, 19.951485>,  <18.252552, 23.438110, 20.170580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751850, 22.962111, 19.951485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.362835, 22.962765, 19.858387>,  <17.129427, 22.963158, 19.802528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.362835, 22.962765, 19.858387>,  <17.751850, 22.962111, 19.951485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362835, 22.962765, 19.858387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226912, -0.215906, -0.949682,
		-0.051803, -0.976413, 0.209605,
		-0.972536, 0.001635, -0.232745,
		17.071074, 22.963255, 19.788563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771048, 22.429609, 19.575127>,  <17.751850, 22.962111, 19.951485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771048, 22.429609, 19.575127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.446030, 22.644455, 19.484545>,  <17.251019, 22.773361, 19.430197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.446030, 22.644455, 19.484545>,  <17.771048, 22.429609, 19.575127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446030, 22.644455, 19.484545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110370, -0.239699, -0.964553,
		-0.572354, -0.808736, 0.135485,
		-0.812545, 0.537113, -0.226453,
		17.202267, 22.805588, 19.416609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342724, 22.051636, 19.087255>,  <17.771048, 22.429609, 19.575127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342724, 22.051636, 19.087255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205654, 22.426537, 19.061548>,  <17.123413, 22.651478, 19.046124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205654, 22.426537, 19.061548>,  <17.342724, 22.051636, 19.087255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205654, 22.426537, 19.061548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069892, -0.042786, -0.996637,
		-0.936851, -0.346013, -0.050845,
		-0.342673, 0.937254, -0.064268,
		17.102852, 22.707712, 19.042269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.779785, 21.991005, 18.594915>,  <17.342724, 22.051636, 19.087255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.779785, 21.991005, 18.594915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.902355, 22.371723, 18.600405>,  <16.975897, 22.600155, 18.603699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.902355, 22.371723, 18.600405>,  <16.779785, 21.991005, 18.594915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902355, 22.371723, 18.600405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017435, 0.008801, -0.999809,
		-0.951735, 0.306608, -0.013898,
		0.306427, 0.951795, 0.013722,
		16.994284, 22.657261, 18.604521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364134, 22.438015, 18.065836>,  <16.779785, 21.991005, 18.594915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.364134, 22.438015, 18.065836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.702389, 22.640553, 18.133385>,  <16.905342, 22.762075, 18.173914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.702389, 22.640553, 18.133385>,  <16.364134, 22.438015, 18.065836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702389, 22.640553, 18.133385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016250, 0.291811, -0.956338,
		-0.533513, 0.811457, 0.238538,
		0.845635, 0.506343, 0.168871,
		16.956079, 22.792456, 18.184046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
