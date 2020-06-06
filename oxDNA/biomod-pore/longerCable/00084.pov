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
	<23.965849, 34.786087, 35.096981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154633, 35.138733, 35.098228>,  <24.267902, 35.350319, 35.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154633, 35.138733, 35.098228>,  <23.965849, 34.786087, 35.096981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154633, 35.138733, 35.098228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778146, -0.418227, 0.468588,
		0.414418, -0.218729, -0.883411,
		0.471961, 0.881614, 0.003118,
		24.296221, 35.403217, 35.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691023, 34.757965, 34.770523>,  <23.965849, 34.786087, 35.096981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691023, 34.757965, 34.770523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672688, 35.039135, 35.054440>,  <24.661686, 35.207836, 35.224789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672688, 35.039135, 35.054440>,  <24.691023, 34.757965, 34.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672688, 35.039135, 35.054440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802248, -0.397475, 0.445435,
		0.595229, 0.589844, -0.545698,
		-0.045836, 0.702921, 0.709790,
		24.658937, 35.250011, 35.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390587, 35.011169, 34.898746>,  <24.691023, 34.757965, 34.770523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390587, 35.011169, 34.898746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181391, 35.050911, 35.237358>,  <25.055874, 35.074757, 35.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181391, 35.050911, 35.237358>,  <25.390587, 35.011169, 34.898746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181391, 35.050911, 35.237358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653090, -0.591470, 0.472903,
		0.547680, 0.800183, 0.244446,
		-0.522991, 0.099354, 0.846528,
		25.024494, 35.080719, 35.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816833, 34.822903, 35.495930>,  <25.390587, 35.011169, 34.898746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816833, 34.822903, 35.495930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082710, 35.117981, 35.448605>,  <26.242235, 35.295029, 35.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082710, 35.117981, 35.448605>,  <25.816833, 34.822903, 35.495930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082710, 35.117981, 35.448605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348043, -0.165612, 0.922734,
		0.661100, -0.654510, -0.366829,
		0.664690, 0.737692, -0.118312,
		26.282118, 35.339287, 35.413113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481298, 34.602089, 35.616039>,  <25.816833, 34.822903, 35.495930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481298, 34.602089, 35.616039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456738, 34.992283, 35.700577>,  <26.442001, 35.226398, 35.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456738, 34.992283, 35.700577>,  <26.481298, 34.602089, 35.616039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456738, 34.992283, 35.700577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496067, -0.153911, 0.854534,
		0.866110, 0.157312, -0.474453,
		-0.061405, 0.975482, 0.211341,
		26.438316, 35.284927, 35.763981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122841, 35.244064, 35.471001>,  <26.481298, 34.602089, 35.616039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122841, 35.244064, 35.471001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873613, 35.241692, 35.783859>,  <26.724077, 35.240269, 35.971573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873613, 35.241692, 35.783859>,  <27.122841, 35.244064, 35.471001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873613, 35.241692, 35.783859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743842, -0.313674, 0.590177,
		0.241835, 0.949512, 0.199855,
		-0.623069, -0.005935, 0.782144,
		26.686693, 35.239910, 36.018501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869373, 35.421261, 35.617283>,  <27.122841, 35.244064, 35.471001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869373, 35.421261, 35.617283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095118, 35.455433, 35.288845>,  <28.230564, 35.475937, 35.091782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095118, 35.455433, 35.288845>,  <27.869373, 35.421261, 35.617283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095118, 35.455433, 35.288845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820061, -0.172312, 0.545719,
		-0.094866, -0.981331, -0.167301,
		0.564358, 0.085427, -0.821098,
		28.264425, 35.481060, 35.042515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395275, 34.918098, 35.668518>,  <27.869373, 35.421261, 35.617283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395275, 34.918098, 35.668518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508785, 35.220257, 35.432262>,  <28.576891, 35.401550, 35.290508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508785, 35.220257, 35.432262>,  <28.395275, 34.918098, 35.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508785, 35.220257, 35.432262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811574, 0.138852, 0.567510,
		0.510706, -0.640388, -0.573658,
		0.283773, 0.755396, -0.590635,
		28.593918, 35.446877, 35.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092939, 34.765694, 35.574150>,  <28.395275, 34.918098, 35.668518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092939, 34.765694, 35.574150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031673, 35.146015, 35.466438>,  <28.994915, 35.374207, 35.401810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031673, 35.146015, 35.466438>,  <29.092939, 34.765694, 35.574150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031673, 35.146015, 35.466438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846228, 0.266918, 0.461143,
		0.510332, -0.157241, -0.845480,
		-0.153164, 0.950805, -0.269279,
		28.985723, 35.431255, 35.385654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741493, 34.984585, 35.200642>,  <29.092939, 34.765694, 35.574150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741493, 34.984585, 35.200642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556868, 35.308872, 35.344688>,  <29.446093, 35.503445, 35.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556868, 35.308872, 35.344688>,  <29.741493, 34.984585, 35.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556868, 35.308872, 35.344688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876870, 0.355460, 0.323647,
		0.134380, 0.465163, -0.874966,
		-0.461564, 0.810723, 0.360120,
		29.418398, 35.552090, 35.452724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288124, 35.473370, 35.411961>,  <29.741493, 34.984585, 35.200642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288124, 35.473370, 35.411961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995441, 35.684601, 35.584351>,  <29.819832, 35.811340, 35.687786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995441, 35.684601, 35.584351>,  <30.288124, 35.473370, 35.411961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995441, 35.684601, 35.584351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661593, 0.398075, 0.635477,
		0.164018, 0.750115, -0.640645,
		-0.731706, 0.528076, 0.430979,
		29.775930, 35.843025, 35.713646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485617, 36.255993, 35.612259>,  <30.288124, 35.473370, 35.411961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485617, 36.255993, 35.612259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186382, 36.110607, 35.834343>,  <30.006842, 36.023376, 35.967594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186382, 36.110607, 35.834343>,  <30.485617, 36.255993, 35.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186382, 36.110607, 35.834343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453960, 0.329973, 0.827670,
		-0.484030, 0.871215, -0.081853,
		-0.748088, -0.363460, 0.555213,
		29.961956, 36.001568, 36.000908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606403, 36.302517, 36.326454>,  <30.485617, 36.255993, 35.612259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606403, 36.302517, 36.326454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475588, 36.304001, 36.704456>,  <30.397099, 36.304890, 36.931255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475588, 36.304001, 36.704456>,  <30.606403, 36.302517, 36.326454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475588, 36.304001, 36.704456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944660, -0.028523, -0.326808,
		0.025750, -0.999586, 0.012810,
		-0.327038, 0.003686, 0.945004,
		30.377476, 36.305115, 36.987957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408613, 35.692616, 36.614143>,  <30.606403, 36.302517, 36.326454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408613, 35.692616, 36.614143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195507, 36.005772, 36.742664>,  <30.067642, 36.193665, 36.819778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195507, 36.005772, 36.742664>,  <30.408613, 35.692616, 36.614143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195507, 36.005772, 36.742664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740725, -0.247798, -0.624438,
		-0.409251, -0.570677, 0.711928,
		-0.532767, 0.782895, 0.321303,
		30.035677, 36.240639, 36.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743809, 35.611774, 36.939022>,  <30.408613, 35.692616, 36.614143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743809, 35.611774, 36.939022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772802, 35.950413, 36.728115>,  <29.790199, 36.153595, 36.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772802, 35.950413, 36.728115>,  <29.743809, 35.611774, 36.939022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772802, 35.950413, 36.728115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719560, -0.321688, -0.615427,
		-0.690637, 0.424012, 0.585862,
		0.072484, 0.846600, -0.527271,
		29.794548, 36.204391, 36.569935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106321, 35.714451, 36.625168>,  <29.743809, 35.611774, 36.939022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106321, 35.714451, 36.625168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353811, 35.951900, 36.419338>,  <29.502306, 36.094368, 36.295841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353811, 35.951900, 36.419338>,  <29.106321, 35.714451, 36.625168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353811, 35.951900, 36.419338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599958, -0.065823, -0.797319,
		-0.507177, 0.802047, 0.315422,
		0.618726, 0.593622, -0.514579,
		29.539429, 36.129986, 36.264965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765297, 36.401096, 36.267159>,  <29.106321, 35.714451, 36.625168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765297, 36.401096, 36.267159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082054, 36.232578, 36.090332>,  <29.272108, 36.131470, 35.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082054, 36.232578, 36.090332>,  <28.765297, 36.401096, 36.267159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082054, 36.232578, 36.090332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511484, -0.062121, -0.857044,
		0.333604, 0.904795, -0.264677,
		0.791892, -0.421291, -0.442065,
		29.319622, 36.106190, 35.957714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883812, 36.719368, 35.627522>,  <28.765297, 36.401096, 36.267159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883812, 36.719368, 35.627522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040123, 36.355629, 35.570412>,  <29.133909, 36.137386, 35.536144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040123, 36.355629, 35.570412>,  <28.883812, 36.719368, 35.627522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040123, 36.355629, 35.570412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640858, -0.157433, -0.751342,
		0.660752, 0.385106, -0.644283,
		0.390778, -0.909345, -0.142774,
		29.157356, 36.082825, 35.527580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748375, 36.670376, 34.941975>,  <28.883812, 36.719368, 35.627522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748375, 36.670376, 34.941975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816002, 36.301273, 35.080502>,  <28.856579, 36.079811, 35.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816002, 36.301273, 35.080502>,  <28.748375, 36.670376, 34.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816002, 36.301273, 35.080502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725296, -0.354398, -0.590210,
		0.667355, -0.151396, -0.729189,
		0.169067, -0.922758, 0.346316,
		28.866722, 36.024445, 35.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817125, 36.337246, 34.299671>,  <28.748375, 36.670376, 34.941975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817125, 36.337246, 34.299671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770105, 36.064022, 34.588009>,  <28.741894, 35.900089, 34.761009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770105, 36.064022, 34.588009>,  <28.817125, 36.337246, 34.299671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770105, 36.064022, 34.588009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747089, -0.417389, -0.517344,
		0.654248, -0.599346, -0.461242,
		-0.117551, -0.683060, 0.720841,
		28.734840, 35.859104, 34.804260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208254, 36.948082, 33.882439>,  <28.817125, 36.337246, 34.299671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208254, 36.948082, 33.882439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318590, 37.320602, 33.977600>,  <29.384792, 37.544113, 34.034698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318590, 37.320602, 33.977600>,  <29.208254, 36.948082, 33.882439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318590, 37.320602, 33.977600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642208, -0.362719, 0.675280,
		0.715178, -0.033489, -0.698140,
		0.275843, 0.931296, 0.237902,
		29.401342, 37.599991, 34.048969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985064, 37.040894, 33.874508>,  <29.208254, 36.948082, 33.882439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985064, 37.040894, 33.874508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829727, 37.284660, 34.151001>,  <29.736525, 37.430920, 34.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829727, 37.284660, 34.151001>,  <29.985064, 37.040894, 33.874508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829727, 37.284660, 34.151001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501953, -0.489172, 0.713270,
		0.772809, 0.623960, -0.115932,
		-0.388341, 0.609414, 0.691235,
		29.713224, 37.467484, 34.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155121, 36.499462, 34.529079>,  <29.985064, 37.040894, 33.874508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155121, 36.499462, 34.529079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229218, 36.201565, 34.272629>,  <30.273676, 36.022827, 34.118759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229218, 36.201565, 34.272629>,  <30.155121, 36.499462, 34.529079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229218, 36.201565, 34.272629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847768, 0.451050, -0.279004,
		0.496966, -0.491843, 0.714923,
		0.185240, -0.744744, -0.641126,
		30.284790, 35.978142, 34.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834166, 36.132431, 34.675087>,  <30.155121, 36.499462, 34.529079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834166, 36.132431, 34.675087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713276, 36.175610, 34.296246>,  <30.640741, 36.201515, 34.068939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713276, 36.175610, 34.296246>,  <30.834166, 36.132431, 34.675087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713276, 36.175610, 34.296246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881263, 0.410380, -0.234442,
		0.363367, -0.905504, -0.219153,
		-0.302224, 0.107943, -0.947106,
		30.622608, 36.207993, 34.012115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315048, 35.781872, 34.251907>,  <30.834166, 36.132431, 34.675087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315048, 35.781872, 34.251907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153830, 36.100578, 34.071808>,  <31.057098, 36.291801, 33.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153830, 36.100578, 34.071808>,  <31.315048, 35.781872, 34.251907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153830, 36.100578, 34.071808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907894, 0.410056, -0.087074,
		0.115249, -0.443873, -0.888648,
		-0.403045, 0.796763, -0.450248,
		31.032915, 36.339607, 33.936733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090771, 35.714035, 34.401386>,  <31.315048, 35.781872, 34.251907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090771, 35.714035, 34.401386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380482, 35.571236, 34.637344>,  <32.554310, 35.485558, 34.778919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380482, 35.571236, 34.637344>,  <32.090771, 35.714035, 34.401386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380482, 35.571236, 34.637344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131931, -0.911473, -0.389629,
		0.676769, 0.204374, -0.707259,
		0.724278, -0.356998, 0.589893,
		32.597767, 35.464138, 34.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647232, 35.261158, 34.027332>,  <32.090771, 35.714035, 34.401386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647232, 35.261158, 34.027332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582539, 35.173943, 34.412312>,  <32.543724, 35.121613, 34.643299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582539, 35.173943, 34.412312>,  <32.647232, 35.261158, 34.027332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582539, 35.173943, 34.412312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141043, -0.960165, -0.241228,
		0.976703, -0.174761, 0.124538,
		-0.161735, -0.218042, 0.962445,
		32.534019, 35.108528, 34.701046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024151, 34.645805, 34.135468>,  <32.647232, 35.261158, 34.027332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024151, 34.645805, 34.135468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757645, 34.676571, 34.432163>,  <32.597740, 34.695030, 34.610180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757645, 34.676571, 34.432163>,  <33.024151, 34.645805, 34.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757645, 34.676571, 34.432163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189460, -0.979488, -0.068618,
		0.721246, -0.186247, 0.667170,
		-0.666265, 0.076912, 0.741738,
		32.557766, 34.699646, 34.654686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241760, 34.090656, 34.544117>,  <33.024151, 34.645805, 34.135468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241760, 34.090656, 34.544117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870903, 34.189190, 34.657063>,  <32.648388, 34.248310, 34.724831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870903, 34.189190, 34.657063>,  <33.241760, 34.090656, 34.544117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870903, 34.189190, 34.657063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301037, -0.938370, -0.169816,
		0.223134, -0.242446, 0.944156,
		-0.927140, 0.246334, 0.282367,
		32.592762, 34.263092, 34.741772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071877, 33.508068, 35.008316>,  <33.241760, 34.090656, 34.544117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071877, 33.508068, 35.008316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761829, 33.706226, 34.851460>,  <32.575802, 33.825123, 34.757347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761829, 33.706226, 34.851460>,  <33.071877, 33.508068, 35.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761829, 33.706226, 34.851460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402748, -0.865626, -0.297465,
		-0.486809, -0.072637, 0.870483,
		-0.775120, 0.495394, -0.392140,
		32.529293, 33.854843, 34.733818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673775, 32.983345, 35.018829>,  <33.071877, 33.508068, 35.008316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673775, 32.983345, 35.018829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442825, 33.255566, 34.838394>,  <32.304256, 33.418900, 34.730133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442825, 33.255566, 34.838394>,  <32.673775, 32.983345, 35.018829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442825, 33.255566, 34.838394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528148, -0.732635, -0.429308,
		-0.622651, -0.009631, 0.782440,
		-0.577378, 0.680553, -0.451090,
		32.269611, 33.459732, 34.703068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865067, 32.859692, 35.159760>,  <32.673775, 32.983345, 35.018829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865067, 32.859692, 35.159760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938690, 33.029278, 34.805046>,  <31.982864, 33.131027, 34.592220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938690, 33.029278, 34.805046>,  <31.865067, 32.859692, 35.159760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938690, 33.029278, 34.805046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246288, -0.853521, -0.459179,
		-0.951559, 0.302919, -0.052681,
		0.184058, 0.423961, -0.886781,
		31.993908, 33.156467, 34.539013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250822, 32.728565, 34.803513>,  <31.865067, 32.859692, 35.159760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250822, 32.728565, 34.803513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530291, 32.830132, 34.535965>,  <31.697971, 32.891071, 34.375435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530291, 32.830132, 34.535965>,  <31.250822, 32.728565, 34.803513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530291, 32.830132, 34.535965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230439, -0.805210, -0.546383,
		-0.677318, 0.535874, -0.504063,
		0.698669, 0.253919, -0.668869,
		31.739891, 32.906307, 34.335304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838909, 32.740761, 34.232849>,  <31.250822, 32.728565, 34.803513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838909, 32.740761, 34.232849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213478, 32.689964, 34.102016>,  <31.438219, 32.659485, 34.023518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213478, 32.689964, 34.102016>,  <30.838909, 32.740761, 34.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213478, 32.689964, 34.102016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254418, -0.887709, -0.383725,
		-0.241628, 0.442546, -0.863580,
		0.936423, -0.126991, -0.327086,
		31.494406, 32.651867, 34.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811905, 32.416588, 33.592651>,  <30.838909, 32.740761, 34.232849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811905, 32.416588, 33.592651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170458, 32.352268, 33.757889>,  <31.385590, 32.313675, 33.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170458, 32.352268, 33.757889>,  <30.811905, 32.416588, 33.592651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170458, 32.352268, 33.757889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073765, -0.973003, -0.218687,
		0.437102, 0.165556, -0.884044,
		0.896382, -0.160800, 0.413089,
		31.439373, 32.304028, 33.881817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191595, 31.949604, 33.086414>,  <30.811905, 32.416588, 33.592651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191595, 31.949604, 33.086414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330774, 31.936996, 33.461208>,  <31.414282, 31.929432, 33.686085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330774, 31.936996, 33.461208>,  <31.191595, 31.949604, 33.086414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330774, 31.936996, 33.461208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055301, -0.998384, -0.013049,
		0.935881, -0.047276, -0.349131,
		0.347950, -0.031520, 0.936983,
		31.435160, 31.927540, 33.742302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849781, 31.525114, 33.090881>,  <31.191595, 31.949604, 33.086414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849781, 31.525114, 33.090881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635405, 31.529556, 33.428555>,  <31.506779, 31.532223, 33.631157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635405, 31.529556, 33.428555>,  <31.849781, 31.525114, 33.090881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635405, 31.529556, 33.428555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133547, -0.986209, 0.097761,
		0.833625, 0.165132, 0.527069,
		-0.535944, 0.011108, 0.844181,
		31.474621, 31.532888, 33.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473518, 31.194702, 33.263802>,  <31.849781, 31.525114, 33.090881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473518, 31.194702, 33.263802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640682, 31.100996, 33.614906>,  <32.740978, 31.044771, 33.825569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640682, 31.100996, 33.614906>,  <32.473518, 31.194702, 33.263802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640682, 31.100996, 33.614906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890838, -0.295204, 0.345343,
		0.178218, -0.926269, -0.332060,
		0.417905, -0.234266, 0.877766,
		32.766052, 31.030716, 33.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438457, 31.780878, 33.850883>,  <32.473518, 31.194702, 33.263802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438457, 31.780878, 33.850883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170647, 32.049355, 33.723614>,  <32.009960, 32.210442, 33.647251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170647, 32.049355, 33.723614>,  <32.438457, 31.780878, 33.850883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170647, 32.049355, 33.723614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531813, 0.732203, 0.425504,
		0.518562, 0.115678, -0.847179,
		-0.669528, 0.671191, -0.318173,
		31.969788, 32.250713, 33.628162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724010, 32.454838, 33.669720>,  <32.438457, 31.780878, 33.850883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724010, 32.454838, 33.669720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342445, 32.532829, 33.760971>,  <32.113506, 32.579624, 33.815723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342445, 32.532829, 33.760971>,  <32.724010, 32.454838, 33.669720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342445, 32.532829, 33.760971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253023, 0.931293, 0.262056,
		-0.161359, 0.307699, -0.937702,
		-0.953909, 0.194975, 0.228127,
		32.056274, 32.591320, 33.829411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538551, 33.165939, 33.310085>,  <32.724010, 32.454838, 33.669720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538551, 33.165939, 33.310085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302700, 33.085503, 33.622982>,  <32.161190, 33.037243, 33.810719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302700, 33.085503, 33.622982>,  <32.538551, 33.165939, 33.310085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302700, 33.085503, 33.622982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066052, 0.953261, 0.294840,
		-0.804969, 0.225515, -0.548788,
		-0.589629, -0.201089, 0.782241,
		32.125813, 33.025177, 33.857655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179939, 33.705887, 33.383781>,  <32.538551, 33.165939, 33.310085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179939, 33.705887, 33.383781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135258, 33.544197, 33.746906>,  <32.108448, 33.447182, 33.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135258, 33.544197, 33.746906>,  <32.179939, 33.705887, 33.383781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135258, 33.544197, 33.746906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002221, 0.913628, 0.406546,
		-0.993739, 0.043399, -0.102958,
		-0.111709, -0.404229, 0.907811,
		32.101746, 33.422928, 34.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625736, 33.893215, 33.795639>,  <32.179939, 33.705887, 33.383781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625736, 33.893215, 33.795639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893454, 33.775112, 34.068363>,  <32.054085, 33.704250, 34.231998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893454, 33.775112, 34.068363>,  <31.625736, 33.893215, 33.795639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893454, 33.775112, 34.068363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041623, 0.901308, 0.431175,
		-0.741831, -0.316962, 0.590950,
		0.669294, -0.295261, 0.681811,
		32.094242, 33.686535, 34.272907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354553, 34.193020, 34.470940>,  <31.625736, 33.893215, 33.795639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354553, 34.193020, 34.470940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732336, 34.079983, 34.538040>,  <31.959005, 34.012161, 34.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732336, 34.079983, 34.538040>,  <31.354553, 34.193020, 34.470940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732336, 34.079983, 34.538040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155783, 0.834449, 0.528609,
		-0.289362, -0.473116, 0.832124,
		0.944458, -0.282590, 0.167755,
		32.015675, 33.995205, 34.588367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386044, 34.505234, 35.089867>,  <31.354553, 34.193020, 34.470940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386044, 34.505234, 35.089867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765265, 34.432095, 34.985741>,  <31.992798, 34.388210, 34.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765265, 34.432095, 34.985741>,  <31.386044, 34.505234, 35.089867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765265, 34.432095, 34.985741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294064, 0.815863, 0.497890,
		0.121344, -0.548575, 0.827249,
		0.948051, -0.182848, -0.260316,
		32.049679, 34.377239, 34.907646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777027, 34.752079, 35.642509>,  <31.386044, 34.505234, 35.089867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777027, 34.752079, 35.642509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058064, 34.743118, 35.358013>,  <32.226685, 34.737743, 35.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058064, 34.743118, 35.358013>,  <31.777027, 34.752079, 35.642509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058064, 34.743118, 35.358013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340609, 0.888155, 0.308491,
		0.624781, -0.458998, 0.631640,
		0.702591, -0.022403, -0.711241,
		32.268841, 34.736397, 35.144642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458569, 34.852917, 36.011765>,  <31.777027, 34.752079, 35.642509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458569, 34.852917, 36.011765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459747, 34.952850, 35.624451>,  <32.460457, 35.012810, 35.392063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459747, 34.952850, 35.624451>,  <32.458569, 34.852917, 36.011765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459747, 34.952850, 35.624451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362073, 0.902322, 0.233918,
		0.932145, -0.351280, -0.087797,
		0.002949, 0.249834, -0.968284,
		32.460632, 35.027802, 35.333965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244934, 35.082458, 35.616615>,  <32.458569, 34.852917, 36.011765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244934, 35.082458, 35.616615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910614, 35.246597, 35.470707>,  <32.710022, 35.345081, 35.383160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910614, 35.246597, 35.470707>,  <33.244934, 35.082458, 35.616615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910614, 35.246597, 35.470707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330124, 0.906469, 0.263310,
		0.438704, 0.099653, -0.893089,
		-0.835797, 0.410345, -0.364773,
		32.659874, 35.369701, 35.361275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390148, 35.823414, 35.408794>,  <33.244934, 35.082458, 35.616615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390148, 35.823414, 35.408794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004932, 35.787701, 35.510445>,  <32.773804, 35.766273, 35.571434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004932, 35.787701, 35.510445>,  <33.390148, 35.823414, 35.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004932, 35.787701, 35.510445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080791, 0.995774, 0.043673,
		-0.256954, 0.021528, -0.966184,
		-0.963041, -0.089281, 0.254128,
		32.716019, 35.760918, 35.586681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662209, 36.583130, 35.327080>,  <33.390148, 35.823414, 35.408794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662209, 36.583130, 35.327080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936939, 36.871262, 35.365841>,  <34.101780, 37.044140, 35.389095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936939, 36.871262, 35.365841>,  <33.662209, 36.583130, 35.327080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936939, 36.871262, 35.365841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021349, -0.153258, 0.987955,
		0.726504, -0.676489, -0.120641,
		0.686830, 0.720329, 0.096900,
		34.142990, 37.087360, 35.394913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089874, 36.279804, 35.883797>,  <33.662209, 36.583130, 35.327080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089874, 36.279804, 35.883797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142590, 36.676228, 35.875423>,  <34.174217, 36.914082, 35.870399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142590, 36.676228, 35.875423>,  <34.089874, 36.279804, 35.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142590, 36.676228, 35.875423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174418, 0.043976, 0.983689,
		0.975812, -0.125987, 0.178654,
		0.131789, 0.991057, -0.020938,
		34.182125, 36.973545, 35.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503048, 36.456703, 36.564041>,  <34.089874, 36.279804, 35.883797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503048, 36.456703, 36.564041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348476, 36.793999, 36.414581>,  <34.255733, 36.996376, 36.324905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348476, 36.793999, 36.414581>,  <34.503048, 36.456703, 36.564041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348476, 36.793999, 36.414581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213916, 0.312136, 0.925641,
		0.897167, 0.437629, 0.059763,
		-0.386433, 0.843239, -0.373654,
		34.232548, 37.046970, 36.302486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755211, 36.968994, 37.069225>,  <34.503048, 36.456703, 36.564041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755211, 36.968994, 37.069225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455482, 37.138252, 36.865475>,  <34.275646, 37.239807, 36.743225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455482, 37.138252, 36.865475>,  <34.755211, 36.968994, 37.069225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455482, 37.138252, 36.865475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361402, 0.383241, 0.850008,
		0.554891, 0.821020, -0.134246,
		-0.749322, 0.423146, -0.509376,
		34.230686, 37.265198, 36.712662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907143, 37.637871, 37.184711>,  <34.755211, 36.968994, 37.069225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907143, 37.637871, 37.184711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526207, 37.562786, 37.088528>,  <34.297646, 37.517735, 37.030815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526207, 37.562786, 37.088528>,  <34.907143, 37.637871, 37.184711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526207, 37.562786, 37.088528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290192, 0.314426, 0.903839,
		-0.094054, 0.930538, -0.353911,
		-0.952335, -0.187712, -0.240461,
		34.240505, 37.506474, 37.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444752, 38.258778, 37.417862>,  <34.907143, 37.637871, 37.184711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444752, 38.258778, 37.417862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176430, 37.967171, 37.363392>,  <34.015434, 37.792206, 37.330711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176430, 37.967171, 37.363392>,  <34.444752, 38.258778, 37.417862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176430, 37.967171, 37.363392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441957, 0.245509, 0.862785,
		-0.595558, 0.638947, -0.486886,
		-0.670809, -0.729021, -0.136172,
		33.975185, 37.748463, 37.322540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924572, 38.580612, 37.819813>,  <34.444752, 38.258778, 37.417862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924572, 38.580612, 37.819813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855526, 38.191532, 37.757767>,  <33.814098, 37.958084, 37.720539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855526, 38.191532, 37.757767>,  <33.924572, 38.580612, 37.819813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855526, 38.191532, 37.757767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553648, -0.034432, 0.832038,
		-0.814664, 0.229503, -0.532589,
		-0.172617, -0.972698, -0.155114,
		33.803741, 37.899723, 37.711231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841335, 38.007847, 38.414829>,  <33.924572, 38.580612, 37.819813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841335, 38.007847, 38.414829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497475, 37.805511, 38.386169>,  <33.291161, 37.684113, 38.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497475, 37.805511, 38.386169>,  <33.841335, 38.007847, 38.414829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497475, 37.805511, 38.386169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166719, -0.145185, -0.975257,
		0.482916, -0.850325, 0.209140,
		-0.859649, -0.505835, -0.071653,
		33.239578, 37.653763, 38.364674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846771, 37.288101, 38.265747>,  <33.841335, 38.007847, 38.414829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846771, 37.288101, 38.265747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530754, 37.459816, 38.090687>,  <33.341145, 37.562847, 37.985649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530754, 37.459816, 38.090687>,  <33.846771, 37.288101, 38.265747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530754, 37.459816, 38.090687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396174, -0.187287, -0.898872,
		-0.467844, -0.883535, -0.022109,
		-0.790043, 0.429290, -0.437654,
		33.293739, 37.588604, 37.959389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327744, 36.910694, 37.860268>,  <33.846771, 37.288101, 38.265747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327744, 36.910694, 37.860268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343510, 37.272141, 37.689659>,  <33.352970, 37.489010, 37.587292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343510, 37.272141, 37.689659>,  <33.327744, 36.910694, 37.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343510, 37.272141, 37.689659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387740, -0.407239, -0.826930,
		-0.920926, -0.132791, -0.366418,
		0.039411, 0.903616, -0.426525,
		33.355331, 37.543224, 37.561703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127434, 36.881329, 37.163914>,  <33.327744, 36.910694, 37.860268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127434, 36.881329, 37.163914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342434, 37.218578, 37.169991>,  <33.471436, 37.420929, 37.173637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342434, 37.218578, 37.169991>,  <33.127434, 36.881329, 37.163914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342434, 37.218578, 37.169991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267856, -0.153628, -0.951132,
		-0.799589, 0.515306, -0.308412,
		0.537505, 0.843124, 0.015189,
		33.503685, 37.471516, 37.174549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942440, 37.311729, 36.557877>,  <33.127434, 36.881329, 37.163914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942440, 37.311729, 36.557877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303539, 37.421631, 36.690277>,  <33.520199, 37.487572, 36.769718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303539, 37.421631, 36.690277>,  <32.942440, 37.311729, 36.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303539, 37.421631, 36.690277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344599, -0.001309, -0.938749,
		-0.257489, 0.961515, -0.095861,
		0.902747, 0.274751, 0.330999,
		33.574364, 37.504055, 36.789577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186176, 37.836952, 36.174458>,  <32.942440, 37.311729, 36.557877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186176, 37.836952, 36.174458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518055, 37.691719, 36.344059>,  <33.717182, 37.604580, 36.445820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518055, 37.691719, 36.344059>,  <33.186176, 37.836952, 36.174458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518055, 37.691719, 36.344059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426070, -0.078851, -0.901248,
		0.360660, 0.928415, 0.089275,
		0.829692, -0.363081, 0.424008,
		33.766964, 37.582794, 36.471260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776230, 38.157482, 36.002262>,  <33.186176, 37.836952, 36.174458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776230, 38.157482, 36.002262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974251, 37.827141, 36.110264>,  <34.093063, 37.628937, 36.175064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974251, 37.827141, 36.110264>,  <33.776230, 38.157482, 36.002262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974251, 37.827141, 36.110264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441458, -0.028578, -0.896827,
		0.748360, 0.563166, 0.350430,
		0.495048, -0.825849, 0.270001,
		34.122765, 37.579388, 36.191265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421749, 38.262424, 35.808823>,  <33.776230, 38.157482, 36.002262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421749, 38.262424, 35.808823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383038, 37.864685, 35.826298>,  <34.359810, 37.626041, 35.836784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383038, 37.864685, 35.826298>,  <34.421749, 38.262424, 35.808823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383038, 37.864685, 35.826298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427060, -0.081131, -0.900576,
		0.899029, -0.068497, 0.432498,
		-0.096776, -0.994347, 0.043687,
		34.354004, 37.566380, 35.839405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086426, 37.907036, 35.451271>,  <34.421749, 38.262424, 35.808823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086426, 37.907036, 35.451271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774750, 37.656544, 35.461761>,  <34.587742, 37.506248, 35.468056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774750, 37.656544, 35.461761>,  <35.086426, 37.907036, 35.451271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774750, 37.656544, 35.461761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165902, -0.246412, -0.954860,
		0.604429, -0.739670, 0.295897,
		-0.779194, -0.626235, 0.026226,
		34.540993, 37.468674, 35.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268456, 37.221203, 35.301186>,  <35.086426, 37.907036, 35.451271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268456, 37.221203, 35.301186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882526, 37.284908, 35.217525>,  <34.650967, 37.323132, 35.167328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882526, 37.284908, 35.217525>,  <35.268456, 37.221203, 35.301186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882526, 37.284908, 35.217525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143983, -0.345510, -0.927303,
		-0.219949, -0.924801, 0.310426,
		-0.964827, 0.159264, -0.209151,
		34.593079, 37.332687, 35.154781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933121, 36.658615, 35.061138>,  <35.268456, 37.221203, 35.301186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933121, 36.658615, 35.061138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792927, 37.001423, 34.910046>,  <34.708809, 37.207108, 34.819389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792927, 37.001423, 34.910046>,  <34.933121, 36.658615, 35.061138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792927, 37.001423, 34.910046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121099, -0.358458, -0.925658,
		-0.928705, -0.370174, 0.021851,
		-0.350487, 0.857018, -0.377729,
		34.687782, 37.258530, 34.796726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534019, 36.531101, 34.528828>,  <34.933121, 36.658615, 35.061138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534019, 36.531101, 34.528828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633869, 36.903324, 34.421680>,  <34.693779, 37.126656, 34.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633869, 36.903324, 34.421680>,  <34.534019, 36.531101, 34.528828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633869, 36.903324, 34.421680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015362, -0.280398, -0.959761,
		-0.968220, 0.235466, -0.084290,
		0.249626, 0.930555, -0.267870,
		34.708755, 37.182491, 34.341320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030586, 36.817642, 34.028194>,  <34.534019, 36.531101, 34.528828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030586, 36.817642, 34.028194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357403, 37.041927, 33.974457>,  <34.553493, 37.176498, 33.942215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357403, 37.041927, 33.974457>,  <34.030586, 36.817642, 34.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357403, 37.041927, 33.974457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036832, -0.181768, -0.982651,
		-0.575403, 0.807814, -0.127859,
		0.817040, 0.560712, -0.134343,
		34.602516, 37.210140, 33.934155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900894, 37.466843, 33.629341>,  <34.030586, 36.817642, 34.028194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900894, 37.466843, 33.629341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284534, 37.365211, 33.579441>,  <34.514721, 37.304234, 33.549500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284534, 37.365211, 33.579441>,  <33.900894, 37.466843, 33.629341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284534, 37.365211, 33.579441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163138, -0.136038, -0.977179,
		0.231310, 0.957569, -0.171924,
		0.959105, -0.254079, -0.124749,
		34.572266, 37.288986, 33.542015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021141, 37.643047, 32.971111>,  <33.900894, 37.466843, 33.629341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021141, 37.643047, 32.971111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363457, 37.444443, 33.029221>,  <34.568848, 37.325279, 33.064087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363457, 37.444443, 33.029221>,  <34.021141, 37.643047, 32.971111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363457, 37.444443, 33.029221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143353, -0.042216, -0.988771,
		0.497067, 0.867004, 0.035048,
		0.855789, -0.496510, 0.145272,
		34.620193, 37.295490, 33.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591888, 37.911842, 32.538864>,  <34.021141, 37.643047, 32.971111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591888, 37.911842, 32.538864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745285, 37.550488, 32.615627>,  <34.837322, 37.333675, 32.661686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745285, 37.550488, 32.615627>,  <34.591888, 37.911842, 32.538864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745285, 37.550488, 32.615627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120056, -0.157271, -0.980231,
		0.915709, 0.398947, 0.048146,
		0.383488, -0.903386, 0.191911,
		34.860332, 37.279472, 32.673199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289608, 38.006573, 32.196564>,  <34.591888, 37.911842, 32.538864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289608, 38.006573, 32.196564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166809, 37.627163, 32.227680>,  <35.093132, 37.399517, 32.246349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166809, 37.627163, 32.227680>,  <35.289608, 38.006573, 32.196564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166809, 37.627163, 32.227680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025385, -0.089870, -0.995630,
		0.951373, -0.303676, 0.051668,
		-0.306993, -0.948527, 0.077791,
		35.074711, 37.342606, 32.251019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710266, 37.688847, 31.748390>,  <35.289608, 38.006573, 32.196564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710266, 37.688847, 31.748390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411819, 37.428162, 31.802908>,  <35.232750, 37.271751, 31.835619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411819, 37.428162, 31.802908>,  <35.710266, 37.688847, 31.748390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411819, 37.428162, 31.802908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054189, -0.144585, -0.988007,
		0.663603, -0.744558, 0.072562,
		-0.746120, -0.651712, 0.136294,
		35.187984, 37.232647, 31.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909996, 37.078587, 31.406721>,  <35.710266, 37.688847, 31.748390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909996, 37.078587, 31.406721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511841, 37.104816, 31.434719>,  <35.272945, 37.120556, 31.451517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511841, 37.104816, 31.434719>,  <35.909996, 37.078587, 31.406721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511841, 37.104816, 31.434719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077976, -0.128329, -0.988662,
		-0.055846, -0.989562, 0.132850,
		-0.995390, 0.065572, 0.069995,
		35.213223, 37.124489, 31.455717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619614, 36.641281, 30.930853>,  <35.909996, 37.078587, 31.406721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619614, 36.641281, 30.930853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285030, 36.846592, 31.007671>,  <35.084278, 36.969776, 31.053762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285030, 36.846592, 31.007671>,  <35.619614, 36.641281, 30.930853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285030, 36.846592, 31.007671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298959, -0.133678, -0.944856,
		-0.459298, -0.847750, 0.265265,
		-0.836462, 0.513274, 0.192045,
		35.034092, 37.000572, 31.065285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942963, 36.245388, 30.608454>,  <35.619614, 36.641281, 30.930853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942963, 36.245388, 30.608454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842781, 36.630367, 30.650330>,  <34.782673, 36.861355, 30.675455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842781, 36.630367, 30.650330>,  <34.942963, 36.245388, 30.608454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842781, 36.630367, 30.650330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543349, -0.050240, -0.838002,
		-0.801276, -0.266767, 0.535530,
		-0.250456, 0.962451, 0.104691,
		34.767643, 36.919102, 30.681736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314701, 36.281734, 30.444544>,  <34.942963, 36.245388, 30.608454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314701, 36.281734, 30.444544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432014, 36.662151, 30.405539>,  <34.502403, 36.890400, 30.382135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432014, 36.662151, 30.405539>,  <34.314701, 36.281734, 30.444544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432014, 36.662151, 30.405539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377025, 0.021326, -0.925957,
		-0.878543, 0.308333, 0.364820,
		0.293283, 0.951040, -0.097513,
		34.520000, 36.947464, 30.376286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845757, 36.580524, 29.951519>,  <34.314701, 36.281734, 30.444544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845757, 36.580524, 29.951519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134995, 36.856766, 29.957180>,  <34.308537, 37.022511, 29.960577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134995, 36.856766, 29.957180>,  <33.845757, 36.580524, 29.951519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134995, 36.856766, 29.957180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292596, 0.324796, -0.899386,
		-0.625714, 0.646203, 0.436926,
		0.723098, 0.690601, 0.014153,
		34.351925, 37.063946, 29.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503540, 37.266766, 29.821117>,  <33.845757, 36.580524, 29.951519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503540, 37.266766, 29.821117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890953, 37.287064, 29.723650>,  <34.123402, 37.299244, 29.665169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890953, 37.287064, 29.723650>,  <33.503540, 37.266766, 29.821117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890953, 37.287064, 29.723650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247352, 0.305200, -0.919603,
		0.027702, 0.950935, 0.308148,
		0.968530, 0.050746, -0.243670,
		34.181511, 37.302288, 29.650549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417084, 37.781467, 29.293840>,  <33.503540, 37.266766, 29.821117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417084, 37.781467, 29.293840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787601, 37.636009, 29.254353>,  <34.009911, 37.548733, 29.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787601, 37.636009, 29.254353>,  <33.417084, 37.781467, 29.293840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787601, 37.636009, 29.254353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086238, 0.050439, -0.994997,
		0.366806, 0.930171, 0.015361,
		0.926292, -0.363646, -0.098718,
		34.065491, 37.526917, 29.224737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863888, 38.404293, 29.150320>,  <33.417084, 37.781467, 29.293840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863888, 38.404293, 29.150320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019413, 38.067795, 29.000050>,  <34.112728, 37.865898, 28.909887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019413, 38.067795, 29.000050>,  <33.863888, 38.404293, 29.150320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019413, 38.067795, 29.000050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309607, 0.264741, -0.913267,
		0.867737, 0.471403, -0.157520,
		0.388815, -0.841244, -0.375675,
		34.136059, 37.815422, 28.887346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210449, 38.560001, 28.457899>,  <33.863888, 38.404293, 29.150320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210449, 38.560001, 28.457899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194111, 38.160721, 28.440311>,  <34.184307, 37.921154, 28.429760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194111, 38.160721, 28.440311>,  <34.210449, 38.560001, 28.457899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194111, 38.160721, 28.440311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145962, 0.049492, -0.988051,
		0.988447, -0.033937, -0.147720,
		-0.040842, -0.998198, -0.043967,
		34.181858, 37.861263, 28.427122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700500, 38.277271, 27.999596>,  <34.210449, 38.560001, 28.457899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700500, 38.277271, 27.999596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418415, 37.993736, 27.993486>,  <34.249165, 37.823616, 27.989820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418415, 37.993736, 27.993486>,  <34.700500, 38.277271, 27.999596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418415, 37.993736, 27.993486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058109, -0.036317, -0.997649,
		0.706613, -0.704439, 0.066801,
		-0.705210, -0.708834, -0.015272,
		34.206852, 37.781086, 27.988905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966114, 37.764931, 27.464588>,  <34.700500, 38.277271, 27.999596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966114, 37.764931, 27.464588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571117, 37.730896, 27.517696>,  <34.334122, 37.710476, 27.549561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571117, 37.730896, 27.517696>,  <34.966114, 37.764931, 27.464588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571117, 37.730896, 27.517696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140435, 0.091503, -0.985852,
		0.071726, -0.992164, -0.102306,
		-0.987488, -0.085078, 0.132771,
		34.274872, 37.705368, 27.557528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745258, 37.498112, 26.821404>,  <34.966114, 37.764931, 27.464588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745258, 37.498112, 26.821404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389759, 37.591221, 26.979361>,  <34.176460, 37.647087, 27.074135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389759, 37.591221, 26.979361>,  <34.745258, 37.498112, 26.821404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389759, 37.591221, 26.979361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389973, 0.068824, -0.918251,
		-0.240919, -0.970093, 0.029607,
		-0.888752, 0.232770, 0.394891,
		34.123135, 37.661053, 27.097828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325939, 37.031704, 26.598902>,  <34.745258, 37.498112, 26.821404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325939, 37.031704, 26.598902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112595, 37.359467, 26.682894>,  <33.984589, 37.556126, 26.733290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112595, 37.359467, 26.682894>,  <34.325939, 37.031704, 26.598902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112595, 37.359467, 26.682894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289304, 0.056561, -0.955565,
		-0.794877, -0.570409, 0.206892,
		-0.533361, 0.819412, 0.209981,
		33.952587, 37.605289, 26.745888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607113, 36.919830, 26.375364>,  <34.325939, 37.031704, 26.598902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607113, 36.919830, 26.375364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617325, 37.317566, 26.416622>,  <33.623451, 37.556206, 26.441378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617325, 37.317566, 26.416622>,  <33.607113, 36.919830, 26.375364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617325, 37.317566, 26.416622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249629, 0.106253, -0.962494,
		-0.968005, -0.001174, 0.250929,
		0.025532, 0.994338, 0.103147,
		33.624985, 37.615868, 26.447567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072384, 37.156525, 25.949047>,  <33.607113, 36.919830, 26.375364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072384, 37.156525, 25.949047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292068, 37.488338, 25.989508>,  <33.423882, 37.687428, 26.013784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292068, 37.488338, 25.989508>,  <33.072384, 37.156525, 25.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292068, 37.488338, 25.989508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290072, 0.302751, -0.907855,
		-0.783722, 0.469267, 0.406901,
		0.549216, 0.829536, 0.101151,
		33.456833, 37.737198, 26.019854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685371, 37.677898, 25.757362>,  <33.072384, 37.156525, 25.949047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685371, 37.677898, 25.757362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046600, 37.846729, 25.725569>,  <33.263336, 37.948029, 25.706493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046600, 37.846729, 25.725569>,  <32.685371, 37.677898, 25.757362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046600, 37.846729, 25.725569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183720, 0.212353, -0.959767,
		-0.388214, 0.881340, 0.269314,
		0.903071, 0.422073, -0.079482,
		33.317520, 37.973351, 25.701725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543293, 38.269276, 25.416845>,  <32.685371, 37.677898, 25.757362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543293, 38.269276, 25.416845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 38.246754, 25.359077>,  <33.175556, 38.233238, 25.324417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 38.246754, 25.359077>,  <32.543293, 38.269276, 25.416845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938457, 38.246754, 25.359077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124889, 0.262720, -0.956755,
		0.091815, 0.963228, 0.252513,
		0.987913, -0.056309, -0.144418,
		33.234833, 38.229862, 25.315752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820740, 38.879913, 25.139284>,  <32.543293, 38.269276, 25.416845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820740, 38.879913, 25.139284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091278, 38.603458, 25.037395>,  <33.253601, 38.437584, 24.976263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091278, 38.603458, 25.037395>,  <32.820740, 38.879913, 25.139284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091278, 38.603458, 25.037395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035459, 0.375961, -0.925957,
		0.735732, 0.617234, 0.278786,
		0.676344, -0.691141, -0.254720,
		33.294182, 38.396114, 24.960979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116177, 39.226208, 24.486767>,  <32.820740, 38.879913, 25.139284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116177, 39.226208, 24.486767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287075, 38.866474, 24.523972>,  <33.389614, 38.650635, 24.546295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287075, 38.866474, 24.523972>,  <33.116177, 39.226208, 24.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287075, 38.866474, 24.523972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229391, 0.008315, -0.973299,
		0.874550, 0.437178, 0.209852,
		0.427250, -0.899337, 0.093013,
		33.415249, 38.596672, 24.551876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773499, 39.317303, 24.200922>,  <33.116177, 39.226208, 24.486767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773499, 39.317303, 24.200922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656693, 38.935619, 24.174965>,  <33.586609, 38.706608, 24.159389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656693, 38.935619, 24.174965>,  <33.773499, 39.317303, 24.200922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656693, 38.935619, 24.174965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100177, 0.036962, -0.994283,
		0.951152, -0.296850, 0.084796,
		-0.292018, -0.954208, -0.064894,
		33.569088, 38.649357, 24.155497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226360, 39.092083, 23.753681>,  <33.773499, 39.317303, 24.200922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226360, 39.092083, 23.753681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923668, 38.830593, 23.753149>,  <33.742054, 38.673698, 23.752831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923668, 38.830593, 23.753149>,  <34.226360, 39.092083, 23.753681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923668, 38.830593, 23.753149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051506, 0.061649, -0.996768,
		0.651693, -0.754218, -0.080322,
		-0.756732, -0.653724, -0.001329,
		33.696648, 38.634476, 23.752750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438557, 38.673977, 23.295380>,  <34.226360, 39.092083, 23.753681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438557, 38.673977, 23.295380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046749, 38.594193, 23.306410>,  <33.811665, 38.546322, 23.313028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046749, 38.594193, 23.306410>,  <34.438557, 38.673977, 23.295380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046749, 38.594193, 23.306410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026877, -0.006209, -0.999619,
		0.199554, -0.979886, 0.000721,
		-0.979518, -0.199459, 0.027576,
		33.752895, 38.534355, 23.314682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283760, 38.065487, 22.935560>,  <34.438557, 38.673977, 23.295380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283760, 38.065487, 22.935560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940182, 38.269859, 22.949154>,  <33.734035, 38.392483, 22.957310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940182, 38.269859, 22.949154>,  <34.283760, 38.065487, 22.935560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940182, 38.269859, 22.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058248, -0.031553, -0.997803,
		-0.508738, -0.859042, 0.056863,
		-0.858948, 0.510932, 0.033985,
		33.682495, 38.423138, 22.959349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003036, 37.747719, 22.332186>,  <34.283760, 38.065487, 22.935560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003036, 37.747719, 22.332186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780209, 38.072411, 22.402351>,  <33.646511, 38.267223, 22.444450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780209, 38.072411, 22.402351>,  <34.003036, 37.747719, 22.332186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780209, 38.072411, 22.402351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168789, 0.096147, -0.980952,
		-0.813130, -0.576070, 0.083450,
		-0.557073, 0.811726, 0.175414,
		33.613087, 38.315929, 22.454975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390354, 37.589893, 21.953529>,  <34.003036, 37.747719, 22.332186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390354, 37.589893, 21.953529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398296, 37.987148, 21.999620>,  <33.403061, 38.225502, 22.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398296, 37.987148, 21.999620>,  <33.390354, 37.589893, 21.953529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398296, 37.987148, 21.999620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454743, 0.111608, -0.883602,
		-0.890401, -0.034855, 0.453840,
		0.019854, 0.993141, 0.115226,
		33.404251, 38.285091, 22.034189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619183, 37.811852, 21.836365>,  <33.390354, 37.589893, 21.953529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619183, 37.811852, 21.836365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881081, 38.107140, 21.771450>,  <33.038219, 38.284313, 21.732502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881081, 38.107140, 21.771450>,  <32.619183, 37.811852, 21.836365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881081, 38.107140, 21.771450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286720, 0.043917, -0.957007,
		-0.699356, 0.673127, 0.240417,
		0.654746, 0.738221, -0.162286,
		33.077503, 38.328606, 21.722765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294735, 38.410023, 21.504435>,  <32.619183, 37.811852, 21.836365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294735, 38.410023, 21.504435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681911, 38.477364, 21.429874>,  <32.914219, 38.517769, 21.385138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681911, 38.477364, 21.429874>,  <32.294735, 38.410023, 21.504435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681911, 38.477364, 21.429874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228315, 0.280421, -0.932328,
		-0.104687, 0.944999, 0.309868,
		0.967943, 0.168350, -0.186401,
		32.972294, 38.527870, 21.373955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209297, 39.031021, 21.149569>,  <32.294735, 38.410023, 21.504435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209297, 39.031021, 21.149569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569931, 38.890182, 21.049038>,  <32.786312, 38.805679, 20.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569931, 38.890182, 21.049038>,  <32.209297, 39.031021, 21.149569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569931, 38.890182, 21.049038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136585, 0.319560, -0.937670,
		0.410468, 0.879719, 0.240020,
		0.901588, -0.352101, -0.251326,
		32.840408, 38.784554, 20.973640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534176, 39.538578, 20.767487>,  <32.209297, 39.031021, 21.149569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534176, 39.538578, 20.767487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724957, 39.206291, 20.652641>,  <32.839424, 39.006920, 20.583735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724957, 39.206291, 20.652641>,  <32.534176, 39.538578, 20.767487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724957, 39.206291, 20.652641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063129, 0.293439, -0.953891,
		0.876661, 0.473082, 0.087513,
		0.476949, -0.830715, -0.287112,
		32.868042, 38.957077, 20.566507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175068, 39.732399, 20.469822>,  <32.534176, 39.538578, 20.767487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175068, 39.732399, 20.469822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078880, 39.383781, 20.298904>,  <33.021168, 39.174610, 20.196354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078880, 39.383781, 20.298904>,  <33.175068, 39.732399, 20.469822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078880, 39.383781, 20.298904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124919, 0.408763, -0.904051,
		0.962585, -0.270773, 0.010579,
		-0.240468, -0.871547, -0.427294,
		33.006741, 39.122318, 20.170717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704292, 39.665382, 19.850565>,  <33.175068, 39.732399, 20.469822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704292, 39.665382, 19.850565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415844, 39.394928, 19.790131>,  <33.242775, 39.232655, 19.753870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415844, 39.394928, 19.790131>,  <33.704292, 39.665382, 19.850565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415844, 39.394928, 19.790131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007559, 0.225739, -0.974158,
		0.692770, -0.701343, -0.167896,
		-0.721119, -0.676136, -0.151084,
		33.199509, 39.192085, 19.744806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884228, 39.475937, 19.182779>,  <33.704292, 39.665382, 19.850565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884228, 39.475937, 19.182779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502178, 39.375210, 19.245169>,  <33.272949, 39.314774, 19.282602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502178, 39.375210, 19.245169>,  <33.884228, 39.475937, 19.182779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502178, 39.375210, 19.245169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163700, 0.009889, -0.986461,
		0.246867, -0.967724, -0.050668,
		-0.955123, -0.251819, 0.155975,
		33.215641, 39.299664, 19.291962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780315, 39.112465, 18.602621>,  <33.884228, 39.475937, 19.182779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780315, 39.112465, 18.602621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422424, 39.213142, 18.750195>,  <33.207691, 39.273548, 18.838739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422424, 39.213142, 18.750195>,  <33.780315, 39.112465, 18.602621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422424, 39.213142, 18.750195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380563, 0.002669, -0.924751,
		-0.233738, -0.967803, 0.093397,
		-0.894728, 0.251693, 0.368934,
		33.154007, 39.288651, 18.860874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215576, 38.939804, 18.076204>,  <33.780315, 39.112465, 18.602621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215576, 38.939804, 18.076204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999725, 39.196205, 18.294531>,  <32.870216, 39.350048, 18.425528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999725, 39.196205, 18.294531>,  <33.215576, 38.939804, 18.076204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999725, 39.196205, 18.294531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512532, 0.264213, -0.817008,
		-0.667918, -0.720628, 0.185960,
		-0.539626, 0.641005, 0.545817,
		32.837837, 39.388508, 18.458277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545071, 38.794949, 17.745876>,  <33.215576, 38.939804, 18.076204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545071, 38.794949, 17.745876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549828, 39.128193, 17.967068>,  <32.552681, 39.328140, 18.099783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549828, 39.128193, 17.967068>,  <32.545071, 38.794949, 17.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549828, 39.128193, 17.967068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614647, 0.442292, -0.653136,
		-0.788713, -0.332121, 0.517328,
		0.011890, 0.833111, 0.552978,
		32.553394, 39.378128, 18.132961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875360, 38.989399, 17.801643>,  <32.545071, 38.794949, 17.745876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875360, 38.989399, 17.801643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079536, 39.327072, 17.867140>,  <32.202042, 39.529675, 17.906439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079536, 39.327072, 17.867140>,  <31.875360, 38.989399, 17.801643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079536, 39.327072, 17.867140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419998, 0.410906, -0.809172,
		-0.750370, 0.344261, 0.564296,
		0.510438, 0.844181, 0.163743,
		32.232666, 39.580326, 17.916262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547318, 39.376217, 17.318985>,  <31.875360, 38.989399, 17.801643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547318, 39.376217, 17.318985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846573, 39.603889, 17.455412>,  <32.026127, 39.740494, 17.537268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846573, 39.603889, 17.455412>,  <31.547318, 39.376217, 17.318985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846573, 39.603889, 17.455412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321825, 0.760757, -0.563630,
		-0.580274, 0.311909, 0.752326,
		0.748138, 0.569177, 0.341067,
		32.071014, 39.774643, 17.557732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446127, 39.563503, 16.591112>,  <31.547318, 39.376217, 17.318985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446127, 39.563503, 16.591112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669548, 39.876900, 16.482183>,  <31.803600, 40.064938, 16.416826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669548, 39.876900, 16.482183>,  <31.446127, 39.563503, 16.591112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669548, 39.876900, 16.482183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822873, 0.482072, -0.300810,
		-0.104403, 0.392105, 0.913977,
		0.558552, 0.783492, -0.272322,
		31.837114, 40.111946, 16.400486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339458, 40.262222, 16.919302>,  <31.446127, 39.563503, 16.591112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339458, 40.262222, 16.919302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498272, 40.376671, 16.570477>,  <31.593561, 40.445339, 16.361181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498272, 40.376671, 16.570477>,  <31.339458, 40.262222, 16.919302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498272, 40.376671, 16.570477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728104, 0.676667, -0.109478,
		0.558772, 0.678420, 0.476990,
		0.397035, 0.286125, -0.872064,
		31.617382, 40.462509, 16.308857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296871, 40.031044, 17.570089>,  <31.339458, 40.262222, 16.919302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296871, 40.031044, 17.570089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675858, 40.091690, 17.457432>,  <31.903250, 40.128078, 17.389837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675858, 40.091690, 17.457432>,  <31.296871, 40.031044, 17.570089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675858, 40.091690, 17.457432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279283, 0.821349, -0.497379,
		0.155921, 0.549908, 0.820542,
		0.947465, 0.151612, -0.281646,
		31.960096, 40.137173, 17.372938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625698, 40.681690, 17.862175>,  <31.296871, 40.031044, 17.570089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625698, 40.681690, 17.862175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779264, 40.579391, 17.507277>,  <31.871405, 40.518013, 17.294338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779264, 40.579391, 17.507277>,  <31.625698, 40.681690, 17.862175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779264, 40.579391, 17.507277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296937, 0.875644, -0.380888,
		0.874321, 0.409685, 0.260233,
		0.383915, -0.255746, -0.887245,
		31.894440, 40.502666, 17.241102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382494, 41.007530, 17.289438>,  <31.625698, 40.681690, 17.862175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382494, 41.007530, 17.289438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586765, 41.321594, 17.149307>,  <31.709328, 41.510033, 17.065229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586765, 41.321594, 17.149307>,  <31.382494, 41.007530, 17.289438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586765, 41.321594, 17.149307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784655, -0.259055, 0.563212,
		0.351458, -0.562505, -0.748375,
		0.510680, 0.785162, -0.350325,
		31.739969, 41.557144, 17.044210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062466, 41.013447, 16.917475>,  <31.382494, 41.007530, 17.289438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062466, 41.013447, 16.917475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059834, 41.369606, 17.099525>,  <32.058254, 41.583302, 17.208755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059834, 41.369606, 17.099525>,  <32.062466, 41.013447, 16.917475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059834, 41.369606, 17.099525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782672, -0.278700, 0.556553,
		0.622400, 0.359875, -0.695060,
		-0.006576, 0.890402, 0.455127,
		32.057861, 41.636726, 17.236063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616955, 41.529251, 16.884279>,  <32.062466, 41.013447, 16.917475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616955, 41.529251, 16.884279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455292, 41.593002, 17.244558>,  <32.358295, 41.631252, 17.460726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455292, 41.593002, 17.244558>,  <32.616955, 41.529251, 16.884279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455292, 41.593002, 17.244558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903572, -0.083496, 0.420221,
		0.142177, 0.983681, -0.110261,
		-0.404157, 0.159374, 0.900698,
		32.334045, 41.640816, 17.514769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257195, 41.688919, 17.304743>,  <32.616955, 41.529251, 16.884279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257195, 41.688919, 17.304743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950085, 41.622437, 17.552258>,  <32.765820, 41.582546, 17.700766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950085, 41.622437, 17.552258>,  <33.257195, 41.688919, 17.304743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950085, 41.622437, 17.552258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638454, -0.117325, 0.760665,
		-0.053829, 0.979086, 0.196195,
		-0.767775, -0.166207, 0.618786,
		32.719753, 41.572575, 17.737894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337490, 42.081669, 17.996853>,  <33.257195, 41.688919, 17.304743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337490, 42.081669, 17.996853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078503, 41.788193, 18.079298>,  <32.923111, 41.612106, 18.128765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078503, 41.788193, 18.079298>,  <33.337490, 42.081669, 17.996853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078503, 41.788193, 18.079298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512938, -0.219519, 0.829883,
		-0.563634, 0.643044, 0.518470,
		-0.647465, -0.733694, 0.206113,
		32.884262, 41.568085, 18.141132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883099, 42.325535, 18.481342>,  <33.337490, 42.081669, 17.996853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883099, 42.325535, 18.481342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956539, 41.932583, 18.495295>,  <33.000603, 41.696812, 18.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956539, 41.932583, 18.495295>,  <32.883099, 42.325535, 18.481342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956539, 41.932583, 18.495295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356923, 0.099686, 0.928800,
		-0.915913, -0.158080, 0.368937,
		0.183603, -0.982381, 0.034882,
		33.011620, 41.637867, 18.505758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521004, 42.010139, 19.090441>,  <32.883099, 42.325535, 18.481342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521004, 42.010139, 19.090441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836609, 41.789936, 18.981340>,  <33.025974, 41.657814, 18.915880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836609, 41.789936, 18.981340>,  <32.521004, 42.010139, 19.090441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836609, 41.789936, 18.981340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360920, 0.056069, 0.930910,
		-0.497185, -0.832942, 0.242930,
		0.789015, -0.550513, -0.272749,
		33.073315, 41.624783, 18.899515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555695, 41.622528, 19.562534>,  <32.521004, 42.010139, 19.090441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555695, 41.622528, 19.562534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921761, 41.581596, 19.406584>,  <33.141399, 41.557037, 19.313013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921761, 41.581596, 19.406584>,  <32.555695, 41.622528, 19.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921761, 41.581596, 19.406584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359214, -0.231765, 0.904019,
		-0.182858, -0.967376, -0.175349,
		0.915166, -0.102319, -0.389875,
		33.196308, 41.550900, 19.289621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725018, 41.125900, 20.010830>,  <32.555695, 41.622528, 19.562534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725018, 41.125900, 20.010830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054852, 41.266724, 19.833693>,  <33.252754, 41.351215, 19.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054852, 41.266724, 19.833693>,  <32.725018, 41.125900, 20.010830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054852, 41.266724, 19.833693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534523, -0.228430, 0.813698,
		0.185308, -0.907676, -0.376543,
		0.824588, 0.352055, -0.442844,
		33.302227, 41.372341, 19.700840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274086, 40.617260, 19.990324>,  <32.725018, 41.125900, 20.010830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274086, 40.617260, 19.990324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473030, 40.962734, 19.957640>,  <33.592396, 41.170021, 19.938030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473030, 40.962734, 19.957640>,  <33.274086, 40.617260, 19.990324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473030, 40.962734, 19.957640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551447, -0.242029, 0.798328,
		0.669731, -0.442114, -0.596654,
		0.497359, 0.863688, -0.081708,
		33.622238, 41.221840, 19.933126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960579, 40.446804, 20.080202>,  <33.274086, 40.617260, 19.990324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960579, 40.446804, 20.080202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968063, 40.844650, 20.120962>,  <33.972553, 41.083359, 20.145418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968063, 40.844650, 20.120962>,  <33.960579, 40.446804, 20.080202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968063, 40.844650, 20.120962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675644, -0.087702, 0.731993,
		0.736991, 0.055154, -0.673648,
		0.018708, 0.994619, 0.101900,
		33.973675, 41.143036, 20.151531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626831, 40.565613, 20.103874>,  <33.960579, 40.446804, 20.080202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626831, 40.565613, 20.103874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461163, 40.881569, 20.284777>,  <34.361763, 41.071144, 20.393318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461163, 40.881569, 20.284777>,  <34.626831, 40.565613, 20.103874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461163, 40.881569, 20.284777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528500, -0.195838, 0.826036,
		0.741048, 0.581135, -0.336349,
		-0.414168, 0.789892, 0.452255,
		34.336910, 41.118538, 20.420454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201435, 40.736504, 20.604588>,  <34.626831, 40.565613, 20.103874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201435, 40.736504, 20.604588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883114, 40.940445, 20.735275>,  <34.692123, 41.062809, 20.813688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883114, 40.940445, 20.735275>,  <35.201435, 40.736504, 20.604588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883114, 40.940445, 20.735275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346398, -0.059265, 0.936214,
		0.496698, 0.858216, -0.129450,
		-0.795801, 0.509857, 0.326721,
		34.644375, 41.093403, 20.833292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327244, 41.458237, 20.952875>,  <35.201435, 40.736504, 20.604588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327244, 41.458237, 20.952875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990749, 41.292583, 21.091911>,  <34.788853, 41.193192, 21.175333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990749, 41.292583, 21.091911>,  <35.327244, 41.458237, 20.952875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990749, 41.292583, 21.091911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333205, 0.109185, 0.936511,
		-0.425795, 0.903643, 0.046142,
		-0.841233, -0.414136, 0.347588,
		34.738380, 41.168343, 21.196188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056110, 41.930733, 21.559668>,  <35.327244, 41.458237, 20.952875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056110, 41.930733, 21.559668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884533, 41.575378, 21.625116>,  <34.781586, 41.362164, 21.664385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884533, 41.575378, 21.625116>,  <35.056110, 41.930733, 21.559668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884533, 41.575378, 21.625116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399774, -0.024267, 0.916293,
		-0.810052, 0.458453, 0.365563,
		-0.428948, -0.888388, 0.163620,
		34.755848, 41.308861, 21.674202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720158, 41.992535, 22.132940>,  <35.056110, 41.930733, 21.559668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720158, 41.992535, 22.132940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723747, 41.593613, 22.103817>,  <34.725903, 41.354259, 22.086342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723747, 41.593613, 22.103817>,  <34.720158, 41.992535, 22.132940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723747, 41.593613, 22.103817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134490, -0.070948, 0.988372,
		-0.990874, -0.018665, 0.133491,
		0.008977, -0.997305, -0.072810,
		34.726440, 41.294422, 22.081974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313423, 41.770714, 22.640598>,  <34.720158, 41.992535, 22.132940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313423, 41.770714, 22.640598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512344, 41.435364, 22.551313>,  <34.631699, 41.234154, 22.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512344, 41.435364, 22.551313>,  <34.313423, 41.770714, 22.640598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512344, 41.435364, 22.551313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049922, -0.284509, 0.957373,
		-0.866140, -0.464960, -0.183340,
		0.497302, -0.838371, -0.223213,
		34.661533, 41.183853, 22.484350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012051, 41.248550, 23.035004>,  <34.313423, 41.770714, 22.640598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012051, 41.248550, 23.035004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369106, 41.093971, 22.942184>,  <34.583340, 41.001225, 22.886494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369106, 41.093971, 22.942184>,  <34.012051, 41.248550, 23.035004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369106, 41.093971, 22.942184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139634, -0.252403, 0.957494,
		-0.428593, -0.887102, -0.171344,
		0.892643, -0.386449, -0.232047,
		34.636898, 40.978035, 22.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011204, 40.661007, 23.418556>,  <34.012051, 41.248550, 23.035004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011204, 40.661007, 23.418556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394093, 40.737888, 23.332041>,  <34.623825, 40.784016, 23.280130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394093, 40.737888, 23.332041>,  <34.011204, 40.661007, 23.418556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394093, 40.737888, 23.332041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269237, -0.317819, 0.909122,
		0.105997, -0.928466, -0.355973,
		0.957223, 0.192205, -0.216290,
		34.681259, 40.795551, 23.267155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429882, 40.157894, 23.688795>,  <34.011204, 40.661007, 23.418556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429882, 40.157894, 23.688795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685162, 40.464306, 23.658075>,  <34.838329, 40.648155, 23.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685162, 40.464306, 23.658075>,  <34.429882, 40.157894, 23.688795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685162, 40.464306, 23.658075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383273, -0.229620, 0.894638,
		0.667688, -0.600390, -0.440142,
		0.638196, 0.766033, -0.076799,
		34.876621, 40.694115, 23.635036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087349, 39.942577, 24.005436>,  <34.429882, 40.157894, 23.688795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087349, 39.942577, 24.005436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074322, 40.342144, 24.018684>,  <35.066505, 40.581886, 24.026632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074322, 40.342144, 24.018684>,  <35.087349, 39.942577, 24.005436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074322, 40.342144, 24.018684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333439, -0.020381, 0.942551,
		0.942209, 0.041737, -0.332416,
		-0.032564, 0.998921, 0.033120,
		35.064552, 40.641819, 24.028620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587414, 40.132027, 24.528406>,  <35.087349, 39.942577, 24.005436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587414, 40.132027, 24.528406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407188, 40.487488, 24.494238>,  <35.299053, 40.700764, 24.473738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407188, 40.487488, 24.494238>,  <35.587414, 40.132027, 24.528406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407188, 40.487488, 24.494238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243766, 0.214508, 0.945814,
		0.858821, 0.405324, -0.313271,
		-0.450561, 0.888650, -0.085420,
		35.272018, 40.754082, 24.468613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020664, 40.653610, 24.841473>,  <35.587414, 40.132027, 24.528406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020664, 40.653610, 24.841473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659386, 40.825104, 24.833344>,  <35.442619, 40.928001, 24.828466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659386, 40.825104, 24.833344>,  <36.020664, 40.653610, 24.841473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659386, 40.825104, 24.833344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224682, 0.512607, 0.828705,
		0.365714, 0.743921, -0.559317,
		-0.903200, 0.428737, -0.020322,
		35.388424, 40.953724, 24.827248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122311, 41.393608, 24.952648>,  <36.020664, 40.653610, 24.841473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122311, 41.393608, 24.952648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756191, 41.289173, 25.075329>,  <35.536522, 41.226513, 25.148937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756191, 41.289173, 25.075329>,  <36.122311, 41.393608, 24.952648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756191, 41.289173, 25.075329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193952, 0.381674, 0.903719,
		-0.353010, 0.886656, -0.298706,
		-0.915296, -0.261087, 0.306703,
		35.481602, 41.210846, 25.167339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770538, 41.983440, 25.222317>,  <36.122311, 41.393608, 24.952648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770538, 41.983440, 25.222317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617687, 41.656296, 25.394403>,  <35.525978, 41.460011, 25.497656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617687, 41.656296, 25.394403>,  <35.770538, 41.983440, 25.222317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617687, 41.656296, 25.394403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108559, 0.422594, 0.899794,
		-0.917711, 0.390540, -0.072699,
		-0.382127, -0.817859, 0.430216,
		35.503048, 41.410938, 25.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667625, 42.212025, 25.908356>,  <35.770538, 41.983440, 25.222317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667625, 42.212025, 25.908356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559601, 41.827698, 25.933311>,  <35.494785, 41.597099, 25.948286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559601, 41.827698, 25.933311>,  <35.667625, 42.212025, 25.908356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559601, 41.827698, 25.933311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026667, 0.072237, 0.997031,
		-0.962474, 0.267597, -0.045131,
		-0.270062, -0.960819, 0.062390,
		35.478580, 41.539452, 25.952028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110634, 42.207928, 26.497589>,  <35.667625, 42.212025, 25.908356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110634, 42.207928, 26.497589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239635, 41.831703, 26.454983>,  <35.317036, 41.605968, 26.429419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239635, 41.831703, 26.454983>,  <35.110634, 42.207928, 26.497589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239635, 41.831703, 26.454983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108526, -0.148529, 0.982935,
		-0.940327, -0.305438, -0.149976,
		0.322501, -0.940557, -0.106518,
		35.336388, 41.549538, 26.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561802, 41.759857, 26.703924>,  <35.110634, 42.207928, 26.497589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561802, 41.759857, 26.703924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899982, 41.547237, 26.724594>,  <35.102890, 41.419666, 26.736996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899982, 41.547237, 26.724594>,  <34.561802, 41.759857, 26.703924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899982, 41.547237, 26.724594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150151, -0.143727, 0.978160,
		-0.512513, -0.834744, -0.201327,
		0.845449, -0.531549, 0.051675,
		35.153618, 41.387772, 26.740097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353046, 41.168705, 27.038786>,  <34.561802, 41.759857, 26.703924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353046, 41.168705, 27.038786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749485, 41.209908, 27.072554>,  <34.987347, 41.234627, 27.092813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749485, 41.209908, 27.072554>,  <34.353046, 41.168705, 27.038786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749485, 41.209908, 27.072554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058503, -0.232716, 0.970784,
		0.119639, -0.967075, -0.224617,
		0.991092, 0.103003, 0.084418,
		35.046814, 41.240807, 27.097879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579494, 40.558197, 27.309851>,  <34.353046, 41.168705, 27.038786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579494, 40.558197, 27.309851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869946, 40.820526, 27.392452>,  <35.044216, 40.977924, 27.442013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869946, 40.820526, 27.392452>,  <34.579494, 40.558197, 27.309851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869946, 40.820526, 27.392452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097488, -0.395506, 0.913275,
		0.680618, -0.643018, -0.351121,
		0.726123, 0.655822, 0.206502,
		35.087784, 41.017273, 27.454403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008823, 40.130951, 27.665165>,  <34.579494, 40.558197, 27.309851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008823, 40.130951, 27.665165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 40.509842, 27.759218>,  <35.148254, 40.737179, 27.815651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 40.509842, 27.759218>,  <35.008823, 40.130951, 27.665165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095966, 40.509842, 27.759218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114757, -0.214389, 0.969984,
		0.969210, -0.238304, 0.061995,
		0.217860, 0.947232, 0.235135,
		35.161324, 40.794010, 27.829760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452343, 40.046185, 28.162106>,  <35.008823, 40.130951, 27.665165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452343, 40.046185, 28.162106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299736, 40.413727, 28.202410>,  <35.208172, 40.634251, 28.226591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299736, 40.413727, 28.202410>,  <35.452343, 40.046185, 28.162106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299736, 40.413727, 28.202410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041452, -0.091886, 0.994906,
		0.923432, 0.383750, -0.003032,
		-0.381516, 0.918854, 0.100758,
		35.185280, 40.689384, 28.232637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842255, 40.397575, 28.692238>,  <35.452343, 40.046185, 28.162106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842255, 40.397575, 28.692238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481194, 40.564667, 28.650808>,  <35.264557, 40.664921, 28.625950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481194, 40.564667, 28.650808>,  <35.842255, 40.397575, 28.692238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481194, 40.564667, 28.650808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113763, 0.000513, 0.993508,
		0.415070, 0.908572, 0.047059,
		-0.902649, 0.417729, -0.103574,
		35.210400, 40.689987, 28.619736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870350, 40.808147, 29.356842>,  <35.842255, 40.397575, 28.692238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870350, 40.808147, 29.356842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486408, 40.830730, 29.246939>,  <35.256042, 40.844280, 29.180998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486408, 40.830730, 29.246939>,  <35.870350, 40.808147, 29.356842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486408, 40.830730, 29.246939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277931, -0.059241, 0.958773,
		0.037851, 0.996646, 0.072553,
		-0.959855, 0.056455, -0.274757,
		35.198452, 40.847668, 29.164513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539616, 41.215935, 29.766800>,  <35.870350, 40.808147, 29.356842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539616, 41.215935, 29.766800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238136, 41.002392, 29.613470>,  <35.057247, 40.874268, 29.521473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238136, 41.002392, 29.613470>,  <35.539616, 41.215935, 29.766800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238136, 41.002392, 29.613470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323609, -0.206192, 0.923451,
		-0.572027, 0.820051, -0.017353,
		-0.753699, -0.533854, -0.383324,
		35.012028, 40.842236, 29.498472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019077, 41.572823, 30.145985>,  <35.539616, 41.215935, 29.766800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019077, 41.572823, 30.145985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916851, 41.214642, 30.000193>,  <34.855515, 40.999733, 29.912718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916851, 41.214642, 30.000193>,  <35.019077, 41.572823, 30.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916851, 41.214642, 30.000193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038209, -0.367349, 0.929298,
		-0.966036, 0.251424, 0.059667,
		-0.255567, -0.895456, -0.364479,
		34.840179, 40.946007, 29.890848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369740, 41.335663, 30.526474>,  <35.019077, 41.572823, 30.145985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369740, 41.335663, 30.526474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528198, 41.008038, 30.360485>,  <34.623272, 40.811462, 30.260891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528198, 41.008038, 30.360485>,  <34.369740, 41.335663, 30.526474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528198, 41.008038, 30.360485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156816, -0.505662, 0.848360,
		-0.904697, -0.271000, -0.328758,
		0.396146, -0.819064, -0.414974,
		34.647041, 40.762318, 30.235992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002125, 40.876278, 30.736696>,  <34.369740, 41.335663, 30.526474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002125, 40.876278, 30.736696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349064, 40.695107, 30.654175>,  <34.557228, 40.586403, 30.604662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349064, 40.695107, 30.654175>,  <34.002125, 40.876278, 30.736696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349064, 40.695107, 30.654175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094905, -0.557425, 0.824785,
		-0.488565, -0.695798, -0.526468,
		0.867350, -0.452926, -0.206304,
		34.609268, 40.559227, 30.592283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862839, 40.061352, 31.010544>,  <34.002125, 40.876278, 30.736696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862839, 40.061352, 31.010544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254452, 40.118320, 30.952278>,  <34.489418, 40.152500, 30.917318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254452, 40.118320, 30.952278>,  <33.862839, 40.061352, 31.010544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254452, 40.118320, 30.952278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193778, -0.430381, 0.881602,
		0.062869, -0.891341, -0.448953,
		0.979029, 0.142423, -0.145664,
		34.548161, 40.161049, 30.908579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152039, 39.369625, 31.122599>,  <33.862839, 40.061352, 31.010544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152039, 39.369625, 31.122599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439976, 39.640057, 31.185513>,  <34.612740, 39.802315, 31.223261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439976, 39.640057, 31.185513>,  <34.152039, 39.369625, 31.122599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439976, 39.640057, 31.185513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141038, -0.364326, 0.920530,
		0.679655, -0.640456, -0.357611,
		0.719846, 0.676079, 0.157287,
		34.655930, 39.842880, 31.232698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694164, 38.942253, 31.229404>,  <34.152039, 39.369625, 31.122599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694164, 38.942253, 31.229404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780117, 39.305477, 31.373211>,  <34.831688, 39.523411, 31.459494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780117, 39.305477, 31.373211>,  <34.694164, 38.942253, 31.229404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780117, 39.305477, 31.373211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479215, -0.418786, 0.771344,
		0.850987, 0.006537, -0.525146,
		0.214882, 0.908061, 0.359515,
		34.844582, 39.577896, 31.481066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366074, 38.870029, 31.519901>,  <34.694164, 38.942253, 31.229404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366074, 38.870029, 31.519901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187943, 39.191059, 31.678680>,  <35.081066, 39.383675, 31.773949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187943, 39.191059, 31.678680>,  <35.366074, 38.870029, 31.519901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187943, 39.191059, 31.678680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286327, -0.292407, 0.912422,
		0.848354, 0.519981, -0.099582,
		-0.445324, 0.802570, 0.396949,
		35.054344, 39.431831, 31.797766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826675, 39.076572, 32.027332>,  <35.366074, 38.870029, 31.519901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826675, 39.076572, 32.027332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483509, 39.261089, 32.117828>,  <35.277611, 39.371799, 32.172127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483509, 39.261089, 32.117828>,  <35.826675, 39.076572, 32.027332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483509, 39.261089, 32.117828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162741, -0.173684, 0.971262,
		0.487334, 0.870080, 0.073934,
		-0.857917, 0.461296, 0.226240,
		35.226135, 39.399479, 32.185699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994980, 39.557789, 32.561066>,  <35.826675, 39.076572, 32.027332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994980, 39.557789, 32.561066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604065, 39.475437, 32.581139>,  <35.369514, 39.426025, 32.593182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604065, 39.475437, 32.581139>,  <35.994980, 39.557789, 32.561066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604065, 39.475437, 32.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095027, -0.214116, 0.972175,
		-0.189408, 0.954865, 0.228817,
		-0.977289, -0.205882, 0.050183,
		35.310879, 39.413673, 32.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454128, 40.056152, 32.102219>,  <35.994980, 39.557789, 32.561066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454128, 40.056152, 32.102219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762085, 40.302235, 32.170090>,  <36.946857, 40.449883, 32.210812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762085, 40.302235, 32.170090>,  <36.454128, 40.056152, 32.102219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762085, 40.302235, 32.170090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286865, -0.096104, -0.953138,
		-0.570068, 0.782488, -0.250470,
		0.769890, 0.615205, 0.169682,
		36.993053, 40.486797, 32.220993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410797, 40.455738, 31.540079>,  <36.454128, 40.056152, 32.102219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410797, 40.455738, 31.540079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785809, 40.529381, 31.658157>,  <37.010815, 40.573566, 31.729004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785809, 40.529381, 31.658157>,  <36.410797, 40.455738, 31.540079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785809, 40.529381, 31.658157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297399, 0.016182, -0.954616,
		-0.180532, 0.982772, -0.039584,
		0.937530, 0.184111, 0.295197,
		37.067066, 40.584614, 31.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563816, 41.055969, 31.203163>,  <36.410797, 40.455738, 31.540079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563816, 41.055969, 31.203163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905106, 40.878372, 31.312618>,  <37.109879, 40.771812, 31.378290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905106, 40.878372, 31.312618>,  <36.563816, 41.055969, 31.203163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905106, 40.878372, 31.312618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316954, 0.024761, -0.948118,
		0.414184, 0.895687, 0.161853,
		0.853224, -0.443995, 0.273636,
		37.161072, 40.745174, 31.394709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016235, 41.352779, 30.807858>,  <36.563816, 41.055969, 31.203163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016235, 41.352779, 30.807858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201683, 41.016273, 30.919092>,  <37.312950, 40.814369, 30.985834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201683, 41.016273, 30.919092>,  <37.016235, 41.352779, 30.807858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201683, 41.016273, 30.919092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424084, -0.064881, -0.903296,
		0.777951, 0.536719, 0.326686,
		0.463621, -0.841263, 0.278088,
		37.340771, 40.763893, 31.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728588, 41.520111, 30.858715>,  <37.016235, 41.352779, 30.807858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728588, 41.520111, 30.858715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651527, 41.134743, 30.784191>,  <37.605293, 40.903522, 30.739477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651527, 41.134743, 30.784191>,  <37.728588, 41.520111, 30.858715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651527, 41.134743, 30.784191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473947, 0.074896, -0.877363,
		0.859221, -0.257325, 0.442180,
		-0.192650, -0.963418, -0.186310,
		37.593731, 40.845718, 30.728298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243450, 41.303955, 30.497829>,  <37.728588, 41.520111, 30.858715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243450, 41.303955, 30.497829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987297, 41.006618, 30.420517>,  <37.833607, 40.828217, 30.374130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987297, 41.006618, 30.420517>,  <38.243450, 41.303955, 30.497829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987297, 41.006618, 30.420517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338353, -0.047114, -0.939839,
		0.689516, -0.667250, 0.281683,
		-0.640379, -0.743342, -0.193280,
		37.795185, 40.783615, 30.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723434, 40.768700, 30.179472>,  <38.243450, 41.303955, 30.497829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723434, 40.768700, 30.179472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343006, 40.694336, 30.080755>,  <38.114750, 40.649719, 30.021526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343006, 40.694336, 30.080755>,  <38.723434, 40.768700, 30.179472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343006, 40.694336, 30.080755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279140, -0.174537, -0.944255,
		0.132473, -0.966941, 0.217891,
		-0.951069, -0.185910, -0.246791,
		38.057686, 40.638561, 30.006718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775402, 40.206551, 29.687555>,  <38.723434, 40.768700, 30.179472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775402, 40.206551, 29.687555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412502, 40.365486, 29.632402>,  <38.194763, 40.460850, 29.599310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412502, 40.365486, 29.632402>,  <38.775402, 40.206551, 29.687555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412502, 40.365486, 29.632402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104446, -0.104718, -0.989002,
		-0.407410, -0.911676, 0.053505,
		-0.907253, 0.397341, -0.137884,
		38.140327, 40.484688, 29.591038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455025, 39.897186, 29.109848>,  <38.775402, 40.206551, 29.687555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455025, 39.897186, 29.109848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284138, 40.257023, 29.146111>,  <38.181606, 40.472927, 29.167868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284138, 40.257023, 29.146111>,  <38.455025, 39.897186, 29.109848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284138, 40.257023, 29.146111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007561, 0.103818, -0.994568,
		-0.904119, -0.424207, -0.051154,
		-0.427214, 0.899595, 0.090657,
		38.155975, 40.526901, 29.173307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066177, 39.935974, 28.475912>,  <38.455025, 39.897186, 29.109848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066177, 39.935974, 28.475912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077358, 40.309601, 28.618309>,  <38.084064, 40.533779, 28.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077358, 40.309601, 28.618309>,  <38.066177, 39.935974, 28.475912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077358, 40.309601, 28.618309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007211, 0.355935, -0.934483,
		-0.999583, 0.028685, 0.003212,
		0.027949, 0.934070, 0.355994,
		38.085743, 40.589821, 28.725107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599442, 40.192333, 28.125204>,  <38.066177, 39.935974, 28.475912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599442, 40.192333, 28.125204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784550, 40.518162, 28.265095>,  <37.895615, 40.713661, 28.349030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784550, 40.518162, 28.265095>,  <37.599442, 40.192333, 28.125204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784550, 40.518162, 28.265095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026173, 0.381786, -0.923880,
		-0.886090, 0.436701, 0.155361,
		0.462774, 0.814575, 0.349726,
		37.923382, 40.762535, 28.370012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259922, 40.782101, 27.843332>,  <37.599442, 40.192333, 28.125204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259922, 40.782101, 27.843332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641808, 40.874943, 27.917795>,  <37.870937, 40.930649, 27.962473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641808, 40.874943, 27.917795>,  <37.259922, 40.782101, 27.843332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641808, 40.874943, 27.917795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063315, 0.452857, -0.889332,
		-0.290722, 0.860841, 0.417651,
		0.954710, 0.232106, 0.186159,
		37.928219, 40.944576, 27.973642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342613, 41.500858, 27.831060>,  <37.259922, 40.782101, 27.843332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342613, 41.500858, 27.831060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706932, 41.357700, 27.748741>,  <37.925526, 41.271805, 27.699348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706932, 41.357700, 27.748741>,  <37.342613, 41.500858, 27.831060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706932, 41.357700, 27.748741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005228, 0.508451, -0.861075,
		0.412813, 0.783192, 0.464968,
		0.910801, -0.357894, -0.205800,
		37.980171, 41.250332, 27.687000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589092, 42.013729, 27.382793>,  <37.342613, 41.500858, 27.831060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589092, 42.013729, 27.382793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827419, 41.698387, 27.321472>,  <37.970413, 41.509182, 27.284679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827419, 41.698387, 27.321472>,  <37.589092, 42.013729, 27.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827419, 41.698387, 27.321472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120639, 0.276569, -0.953392,
		0.794010, 0.549549, 0.259890,
		0.595813, -0.788356, -0.153302,
		38.006165, 41.461880, 27.275482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150143, 42.407692, 27.052757>,  <37.589092, 42.013729, 27.382793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150143, 42.407692, 27.052757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184353, 42.014740, 26.986296>,  <38.204880, 41.778969, 26.946419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184353, 42.014740, 26.986296>,  <38.150143, 42.407692, 27.052757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184353, 42.014740, 26.986296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103747, 0.174638, -0.979152,
		0.990920, 0.066503, 0.116855,
		0.085524, -0.982384, -0.166153,
		38.210011, 41.720024, 26.936449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697853, 42.307255, 26.554140>,  <38.150143, 42.407692, 27.052757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697853, 42.307255, 26.554140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474041, 41.975945, 26.542259>,  <38.339752, 41.777157, 26.535130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474041, 41.975945, 26.542259>,  <38.697853, 42.307255, 26.554140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474041, 41.975945, 26.542259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082080, -0.019713, -0.996431,
		0.824736, -0.559970, 0.079016,
		-0.559529, -0.828278, -0.029704,
		38.306183, 41.727463, 26.533348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978153, 41.863300, 26.001427>,  <38.697853, 42.307255, 26.554140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978153, 41.863300, 26.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612392, 41.708103, 26.047626>,  <38.392937, 41.614986, 26.075346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612392, 41.708103, 26.047626>,  <38.978153, 41.863300, 26.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612392, 41.708103, 26.047626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131887, 0.015772, -0.991139,
		0.382729, -0.921529, -0.065592,
		-0.914398, -0.387989, 0.115501,
		38.338074, 41.591705, 26.082277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952206, 41.314621, 25.493525>,  <38.978153, 41.863300, 26.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952206, 41.314621, 25.493525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571285, 41.352276, 25.609631>,  <38.342731, 41.374870, 25.679295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571285, 41.352276, 25.609631>,  <38.952206, 41.314621, 25.493525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571285, 41.352276, 25.609631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304778, -0.246609, -0.919943,
		-0.015021, -0.964532, 0.263539,
		-0.952305, 0.094139, 0.290264,
		38.285595, 41.380516, 25.696711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628632, 40.697800, 25.374701>,  <38.952206, 41.314621, 25.493525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628632, 40.697800, 25.374701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335140, 40.969379, 25.385078>,  <38.159046, 41.132328, 25.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335140, 40.969379, 25.385078>,  <38.628632, 40.697800, 25.374701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335140, 40.969379, 25.385078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266975, -0.252980, -0.929906,
		-0.624797, -0.689222, 0.366881,
		-0.733725, 0.678951, 0.025944,
		38.115021, 41.173065, 25.392862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914303, 40.441856, 25.341164>,  <38.628632, 40.697800, 25.374701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914303, 40.441856, 25.341164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872940, 40.824486, 25.232145>,  <37.848122, 41.054062, 25.166735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872940, 40.824486, 25.232145>,  <37.914303, 40.441856, 25.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872940, 40.824486, 25.232145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382264, -0.291188, -0.876974,
		-0.918250, 0.013502, 0.395772,
		-0.103403, 0.956570, -0.272545,
		37.841919, 41.111458, 25.150381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185848, 40.587364, 25.034147>,  <37.914303, 40.441856, 25.341164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185848, 40.587364, 25.034147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410175, 40.890720, 24.901285>,  <37.544773, 41.072735, 24.821568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410175, 40.890720, 24.901285>,  <37.185848, 40.587364, 25.034147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410175, 40.890720, 24.901285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428737, -0.077182, -0.900126,
		-0.708281, 0.647217, 0.281863,
		0.560822, 0.758388, -0.332153,
		37.578423, 41.118237, 24.801640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804394, 41.127411, 24.696869>,  <37.185848, 40.587364, 25.034147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804394, 41.127411, 24.696869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173271, 41.125610, 24.542187>,  <37.394596, 41.124531, 24.449377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173271, 41.125610, 24.542187>,  <36.804394, 41.127411, 24.696869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173271, 41.125610, 24.542187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384048, 0.106985, -0.917094,
		0.045504, 0.994250, 0.096930,
		0.922191, -0.004505, -0.386708,
		37.449928, 41.124260, 24.426174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806091, 41.685272, 24.219511>,  <36.804394, 41.127411, 24.696869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806091, 41.685272, 24.219511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127102, 41.484211, 24.090954>,  <37.319710, 41.363575, 24.013819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127102, 41.484211, 24.090954>,  <36.806091, 41.685272, 24.219511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127102, 41.484211, 24.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229501, 0.237158, -0.943973,
		0.550708, 0.831324, 0.074967,
		0.802527, -0.502649, -0.321395,
		37.367859, 41.333416, 23.994535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118767, 42.119198, 23.679672>,  <36.806091, 41.685272, 24.219511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118767, 42.119198, 23.679672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271042, 41.756527, 23.607000>,  <37.362408, 41.538925, 23.563396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271042, 41.756527, 23.607000>,  <37.118767, 42.119198, 23.679672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271042, 41.756527, 23.607000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296889, 0.066230, -0.952612,
		0.875749, 0.416584, -0.243971,
		0.380685, -0.906682, -0.181680,
		37.385246, 41.484524, 23.552496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589550, 42.246719, 23.178595>,  <37.118767, 42.119198, 23.679672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589550, 42.246719, 23.178595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488346, 41.860031, 23.163414>,  <37.427624, 41.628017, 23.154305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488346, 41.860031, 23.163414>,  <37.589550, 42.246719, 23.178595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488346, 41.860031, 23.163414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029867, 0.047016, -0.998447,
		0.967002, -0.251484, -0.040768,
		-0.253010, -0.966719, -0.037954,
		37.412441, 41.570015, 23.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082756, 41.993050, 22.639862>,  <37.589550, 42.246719, 23.178595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082756, 41.993050, 22.639862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775536, 41.737953, 22.663099>,  <37.591202, 41.584896, 22.677042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775536, 41.737953, 22.663099>,  <38.082756, 41.993050, 22.639862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775536, 41.737953, 22.663099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008704, -0.080314, -0.996732,
		0.640324, -0.766050, 0.056134,
		-0.768055, -0.637743, 0.058095,
		37.545120, 41.546631, 22.680529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185135, 41.476673, 22.163307>,  <38.082756, 41.993050, 22.639862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185135, 41.476673, 22.163307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798031, 41.398838, 22.227274>,  <37.565769, 41.352139, 22.265654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798031, 41.398838, 22.227274>,  <38.185135, 41.476673, 22.163307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798031, 41.398838, 22.227274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071690, -0.395858, -0.915509,
		0.241449, -0.897459, 0.369147,
		-0.967762, -0.194584, 0.159919,
		37.507702, 41.340462, 22.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035580, 40.759979, 22.014139>,  <38.185135, 41.476673, 22.163307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035580, 40.759979, 22.014139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691711, 40.962505, 21.986977>,  <37.485390, 41.084023, 21.970680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691711, 40.962505, 21.986977>,  <38.035580, 40.759979, 22.014139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691711, 40.962505, 21.986977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086585, -0.275413, -0.957419,
		-0.503462, -0.817183, 0.280603,
		-0.859668, 0.506320, -0.067904,
		37.433811, 41.114403, 21.966606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596779, 40.362888, 21.588188>,  <38.035580, 40.759979, 22.014139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596779, 40.362888, 21.588188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444618, 40.731983, 21.563364>,  <37.353321, 40.953438, 21.548470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444618, 40.731983, 21.563364>,  <37.596779, 40.362888, 21.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444618, 40.731983, 21.563364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241263, -0.163797, -0.956537,
		-0.892796, -0.348899, 0.284931,
		-0.380405, 0.922735, -0.062061,
		37.330498, 41.008804, 21.544746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881195, 40.261700, 21.406193>,  <37.596779, 40.362888, 21.588188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881195, 40.261700, 21.406193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991917, 40.630611, 21.298279>,  <37.058350, 40.851959, 21.233530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991917, 40.630611, 21.298279>,  <36.881195, 40.261700, 21.406193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991917, 40.630611, 21.298279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408048, -0.141372, -0.901948,
		-0.869988, 0.359745, 0.337202,
		0.276800, 0.922279, -0.269785,
		37.074955, 40.907295, 21.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328426, 40.476334, 21.061848>,  <36.881195, 40.261700, 21.406193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328426, 40.476334, 21.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611374, 40.727608, 20.932224>,  <36.781143, 40.878372, 20.854450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611374, 40.727608, 20.932224>,  <36.328426, 40.476334, 21.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611374, 40.727608, 20.932224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400577, -0.021466, -0.916012,
		-0.582382, 0.777767, 0.236452,
		0.707368, 0.628186, -0.324057,
		36.823586, 40.916065, 20.835007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044666, 40.871738, 20.605982>,  <36.328426, 40.476334, 21.061848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044666, 40.871738, 20.605982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415295, 40.949020, 20.476894>,  <36.637672, 40.995388, 20.399443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415295, 40.949020, 20.476894>,  <36.044666, 40.871738, 20.605982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415295, 40.949020, 20.476894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331978, 0.016730, -0.943139,
		-0.176821, 0.981015, 0.079642,
		0.926566, 0.193206, -0.322717,
		36.693264, 41.006981, 20.380079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919254, 41.377365, 20.138109>,  <36.044666, 40.871738, 20.605982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919254, 41.377365, 20.138109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256603, 41.189804, 20.033154>,  <36.459015, 41.077267, 19.970181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256603, 41.189804, 20.033154>,  <35.919254, 41.377365, 20.138109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256603, 41.189804, 20.033154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370715, -0.154289, -0.915841,
		0.388955, 0.869670, -0.303953,
		0.843377, -0.468901, -0.262389,
		36.509617, 41.049133, 19.954437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080059, 41.577442, 19.497124>,  <35.919254, 41.377365, 20.138109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080059, 41.577442, 19.497124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301956, 41.246086, 19.528202>,  <36.435093, 41.047272, 19.546850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301956, 41.246086, 19.528202>,  <36.080059, 41.577442, 19.497124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301956, 41.246086, 19.528202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173516, -0.206515, -0.962935,
		0.813728, 0.520698, -0.258301,
		0.554742, -0.828387, 0.077698,
		36.468380, 40.997570, 19.551512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573166, 41.565823, 18.872740>,  <36.080059, 41.577442, 19.497124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573166, 41.565823, 18.872740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569065, 41.183090, 18.988928>,  <36.566605, 40.953449, 19.058640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569065, 41.183090, 18.988928>,  <36.573166, 41.565823, 18.872740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569065, 41.183090, 18.988928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025393, -0.290140, -0.956647,
		0.999625, -0.017187, -0.021321,
		-0.010256, -0.956830, 0.290468,
		36.565987, 40.896042, 19.076069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972706, 41.337032, 18.413792>,  <36.573166, 41.565823, 18.872740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972706, 41.337032, 18.413792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791557, 41.014977, 18.566973>,  <36.682869, 40.821743, 18.658880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791557, 41.014977, 18.566973>,  <36.972706, 41.337032, 18.413792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791557, 41.014977, 18.566973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003679, -0.431205, -0.902246,
		0.891568, -0.407194, 0.198243,
		-0.452872, -0.805143, 0.382951,
		36.655697, 40.773434, 18.681858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369762, 40.740631, 18.186705>,  <36.972706, 41.337032, 18.413792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369762, 40.740631, 18.186705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006641, 40.594013, 18.268230>,  <36.788769, 40.506042, 18.317146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006641, 40.594013, 18.268230>,  <37.369762, 40.740631, 18.186705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006641, 40.594013, 18.268230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007474, -0.500032, -0.865975,
		0.419332, -0.784611, 0.456669,
		-0.907802, -0.366544, 0.203815,
		36.734303, 40.484051, 18.329374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686962, 40.159191, 18.438326>,  <37.369762, 40.740631, 18.186705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686962, 40.159191, 18.438326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693035, 39.771423, 18.340353>,  <37.696678, 39.538761, 18.281569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693035, 39.771423, 18.340353>,  <37.686962, 40.159191, 18.438326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693035, 39.771423, 18.340353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357285, -0.223528, 0.906853,
		-0.933872, -0.101279, 0.342966,
		0.015182, -0.969422, -0.244931,
		37.697590, 39.480598, 18.266874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247692, 39.852573, 18.791933>,  <37.686962, 40.159191, 18.438326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247692, 39.852573, 18.791933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507595, 39.556934, 18.720882>,  <37.663536, 39.379551, 18.678251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507595, 39.556934, 18.720882>,  <37.247692, 39.852573, 18.791933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507595, 39.556934, 18.720882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157732, -0.097497, 0.982657,
		-0.743598, -0.666505, 0.053230,
		0.649756, -0.739098, -0.177628,
		37.702522, 39.335205, 18.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119545, 39.293655, 19.264332>,  <37.247692, 39.852573, 18.791933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119545, 39.293655, 19.264332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495903, 39.234093, 19.142651>,  <37.721718, 39.198357, 19.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495903, 39.234093, 19.142651>,  <37.119545, 39.293655, 19.264332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495903, 39.234093, 19.142651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269149, -0.216506, 0.938448,
		-0.205585, -0.964862, -0.163637,
		0.940900, -0.148888, -0.304202,
		37.778172, 39.189423, 19.051390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316120, 38.713223, 19.660089>,  <37.119545, 39.293655, 19.264332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316120, 38.713223, 19.660089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646545, 38.900768, 19.535004>,  <37.844799, 39.013294, 19.459951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646545, 38.900768, 19.535004>,  <37.316120, 38.713223, 19.660089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646545, 38.900768, 19.535004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446765, -0.206549, 0.870482,
		0.343547, -0.858780, -0.380094,
		0.826061, 0.468864, -0.312714,
		37.894363, 39.041428, 19.441189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957905, 38.180817, 19.846075>,  <37.316120, 38.713223, 19.660089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957905, 38.180817, 19.846075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136917, 38.529167, 19.764791>,  <38.244324, 38.738178, 19.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136917, 38.529167, 19.764791>,  <37.957905, 38.180817, 19.846075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136917, 38.529167, 19.764791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515748, -0.065718, 0.854216,
		0.730560, -0.487095, -0.478562,
		0.447535, 0.870873, -0.203207,
		38.271179, 38.790428, 19.703829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595779, 38.075161, 20.059654>,  <37.957905, 38.180817, 19.846075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595779, 38.075161, 20.059654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590244, 38.474838, 20.044538>,  <38.586922, 38.714645, 20.035469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590244, 38.474838, 20.044538>,  <38.595779, 38.075161, 20.059654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590244, 38.474838, 20.044538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708173, 0.036478, 0.705096,
		0.705903, -0.017004, -0.708104,
		-0.013841, 0.999190, -0.037792,
		38.586094, 38.774593, 20.033201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261967, 38.272942, 20.062851>,  <38.595779, 38.075161, 20.059654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261967, 38.272942, 20.062851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058849, 38.596508, 20.181381>,  <38.936981, 38.790646, 20.252501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058849, 38.596508, 20.181381>,  <39.261967, 38.272942, 20.062851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058849, 38.596508, 20.181381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540045, 0.030903, 0.841069,
		0.671194, 0.587116, -0.452541,
		-0.507790, 0.808912, 0.296327,
		38.906513, 38.839180, 20.270279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707119, 38.665588, 20.328493>,  <39.261967, 38.272942, 20.062851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707119, 38.665588, 20.328493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370281, 38.824509, 20.474384>,  <39.168179, 38.919861, 20.561918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370281, 38.824509, 20.474384>,  <39.707119, 38.665588, 20.328493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370281, 38.824509, 20.474384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410153, 0.032630, 0.911433,
		0.350211, 0.917109, -0.190431,
		-0.842097, 0.397299, 0.364727,
		39.117653, 38.943699, 20.583803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971508, 39.160599, 20.839909>,  <39.707119, 38.665588, 20.328493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971508, 39.160599, 20.839909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595612, 39.082882, 20.952436>,  <39.370075, 39.036251, 21.019953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595612, 39.082882, 20.952436>,  <39.971508, 39.160599, 20.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595612, 39.082882, 20.952436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301915, -0.085490, 0.949494,
		-0.160428, 0.977211, 0.138998,
		-0.939739, -0.194291, 0.281320,
		39.313690, 39.024593, 21.036833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786976, 39.658062, 21.315182>,  <39.971508, 39.160599, 20.839909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786976, 39.658062, 21.315182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527740, 39.358860, 21.372400>,  <39.372200, 39.179337, 21.406733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527740, 39.358860, 21.372400>,  <39.786976, 39.658062, 21.315182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527740, 39.358860, 21.372400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197630, 0.016210, 0.980142,
		-0.735475, 0.663490, 0.137324,
		-0.648089, -0.748009, 0.143048,
		39.333313, 39.134457, 21.415316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442719, 39.864811, 21.978291>,  <39.786976, 39.658062, 21.315182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442719, 39.864811, 21.978291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404652, 39.469799, 21.928122>,  <39.381813, 39.232792, 21.898020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404652, 39.469799, 21.928122>,  <39.442719, 39.864811, 21.978291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404652, 39.469799, 21.928122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403206, -0.153438, 0.902154,
		-0.910147, 0.035285, 0.412780,
		-0.095169, -0.987528, -0.125424,
		39.376102, 39.173542, 21.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994339, 39.664387, 22.463158>,  <39.442719, 39.864811, 21.978291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994339, 39.664387, 22.463158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199852, 39.338177, 22.356613>,  <39.323162, 39.142452, 22.292686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199852, 39.338177, 22.356613>,  <38.994339, 39.664387, 22.463158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199852, 39.338177, 22.356613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270548, -0.140616, 0.952382,
		-0.814144, -0.561382, 0.148391,
		0.513784, -0.815523, -0.266363,
		39.353989, 39.093521, 22.276705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803864, 39.199158, 22.973763>,  <38.994339, 39.664387, 22.463158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803864, 39.199158, 22.973763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137543, 39.023754, 22.840006>,  <39.337749, 38.918510, 22.759752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137543, 39.023754, 22.840006>,  <38.803864, 39.199158, 22.973763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137543, 39.023754, 22.840006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150194, -0.402787, 0.902887,
		-0.530615, -0.803412, -0.270144,
		0.834200, -0.438511, -0.334392,
		39.387802, 38.892200, 22.739689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733917, 38.420952, 23.062691>,  <38.803864, 39.199158, 22.973763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733917, 38.420952, 23.062691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119751, 38.526268, 23.069069>,  <39.351250, 38.589458, 23.072895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119751, 38.526268, 23.069069>,  <38.733917, 38.420952, 23.062691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119751, 38.526268, 23.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071344, -0.318612, 0.945197,
		0.253946, -0.910584, -0.326112,
		0.964584, 0.263295, 0.015945,
		39.409126, 38.605255, 23.073853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043880, 37.965767, 23.528648>,  <38.733917, 38.420952, 23.062691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043880, 37.965767, 23.528648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311077, 38.261353, 23.493504>,  <39.471394, 38.438705, 23.472416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311077, 38.261353, 23.493504>,  <39.043880, 37.965767, 23.528648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311077, 38.261353, 23.493504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355988, -0.213627, 0.909745,
		0.653500, -0.638979, -0.405763,
		0.667990, 0.738965, -0.087864,
		39.511475, 38.483044, 23.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654861, 37.634903, 23.725327>,  <39.043880, 37.965767, 23.528648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654861, 37.634903, 23.725327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743549, 38.022697, 23.767178>,  <39.796761, 38.255375, 23.792288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743549, 38.022697, 23.767178>,  <39.654861, 37.634903, 23.725327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743549, 38.022697, 23.767178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210230, -0.152299, 0.965716,
		0.952179, -0.192120, -0.237581,
		0.221716, 0.969482, 0.104626,
		39.810066, 38.313541, 23.798565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183540, 37.553066, 24.204268>,  <39.654861, 37.634903, 23.725327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183540, 37.553066, 24.204268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077843, 37.937275, 24.169455>,  <40.014423, 38.167801, 24.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077843, 37.937275, 24.169455>,  <40.183540, 37.553066, 24.204268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077843, 37.937275, 24.169455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200608, 0.143002, 0.969178,
		0.943363, 0.238638, -0.230475,
		-0.264241, 0.960522, -0.087030,
		39.998569, 38.225433, 24.143345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569393, 37.944748, 24.613361>,  <40.183540, 37.553066, 24.204268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569393, 37.944748, 24.613361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245964, 38.178917, 24.589706>,  <40.051907, 38.319420, 24.575514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245964, 38.178917, 24.589706>,  <40.569393, 37.944748, 24.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245964, 38.178917, 24.589706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169733, 0.328297, 0.929200,
		0.563389, 0.741284, -0.364816,
		-0.808569, 0.585422, -0.059138,
		40.003395, 38.354542, 24.571964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826256, 38.490307, 24.920317>,  <40.569393, 37.944748, 24.613361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826256, 38.490307, 24.920317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434929, 38.572914, 24.914005>,  <40.200134, 38.622478, 24.910219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434929, 38.572914, 24.914005>,  <40.826256, 38.490307, 24.920317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434929, 38.572914, 24.914005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101189, 0.543028, 0.833595,
		0.180722, 0.813922, -0.552150,
		-0.978315, 0.206521, -0.015777,
		40.141434, 38.634869, 24.909271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768028, 39.223618, 25.277784>,  <40.826256, 38.490307, 24.920317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768028, 39.223618, 25.277784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421772, 39.024860, 25.302309>,  <40.214016, 38.905605, 25.317024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421772, 39.024860, 25.302309>,  <40.768028, 39.223618, 25.277784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421772, 39.024860, 25.302309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224214, 0.494238, 0.839915,
		-0.447651, 0.713320, -0.539244,
		-0.865642, -0.496895, 0.061310,
		40.162079, 38.875793, 25.320702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321289, 39.714260, 25.447136>,  <40.768028, 39.223618, 25.277784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321289, 39.714260, 25.447136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141994, 39.373184, 25.554472>,  <40.034420, 39.168537, 25.618874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141994, 39.373184, 25.554472>,  <40.321289, 39.714260, 25.447136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141994, 39.373184, 25.554472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356831, 0.445905, 0.820878,
		-0.819609, 0.272192, -0.504135,
		-0.448232, -0.852690, 0.268341,
		40.007526, 39.117378, 25.634974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637383, 39.892223, 25.565401>,  <40.321289, 39.714260, 25.447136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637383, 39.892223, 25.565401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736282, 39.559349, 25.763929>,  <39.795624, 39.359623, 25.883047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736282, 39.559349, 25.763929>,  <39.637383, 39.892223, 25.565401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736282, 39.559349, 25.763929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221486, 0.450123, 0.865062,
		-0.943297, -0.323818, -0.073023,
		0.247253, -0.832184, 0.496321,
		39.810459, 39.309692, 25.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046463, 39.768745, 26.067358>,  <39.637383, 39.892223, 25.565401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046463, 39.768745, 26.067358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381382, 39.586586, 26.188387>,  <39.582333, 39.477291, 26.261003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381382, 39.586586, 26.188387>,  <39.046463, 39.768745, 26.067358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381382, 39.586586, 26.188387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117341, 0.390830, 0.912953,
		-0.534010, -0.799915, 0.273804,
		0.837296, -0.455398, 0.302570,
		39.632572, 39.449966, 26.279158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897171, 39.601078, 26.777617>,  <39.046463, 39.768745, 26.067358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897171, 39.601078, 26.777617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294270, 39.553356, 26.771717>,  <39.532528, 39.524723, 26.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294270, 39.553356, 26.771717>,  <38.897171, 39.601078, 26.777617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294270, 39.553356, 26.771717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061163, 0.395659, 0.916359,
		-0.103488, -0.910616, 0.400086,
		0.992749, -0.119303, -0.014750,
		39.592094, 39.517567, 26.767292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098545, 39.212894, 27.338486>,  <38.897171, 39.601078, 26.777617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098545, 39.212894, 27.338486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470470, 39.343414, 27.270399>,  <39.693626, 39.421726, 27.229548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470470, 39.343414, 27.270399>,  <39.098545, 39.212894, 27.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470470, 39.343414, 27.270399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137780, 0.120243, 0.983137,
		0.341269, -0.937586, 0.066846,
		0.929813, 0.326305, -0.170216,
		39.749413, 39.441307, 27.219334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516060, 38.836647, 27.707218>,  <39.098545, 39.212894, 27.338486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516060, 38.836647, 27.707218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695961, 39.187088, 27.637737>,  <39.803902, 39.397354, 27.596048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695961, 39.187088, 27.637737>,  <39.516060, 38.836647, 27.707218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695961, 39.187088, 27.637737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241333, 0.068047, 0.968054,
		0.859933, -0.477301, -0.180828,
		0.449748, 0.876101, -0.173705,
		39.830887, 39.449917, 27.585627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242805, 38.820965, 27.983210>,  <39.516060, 38.836647, 27.707218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242805, 38.820965, 27.983210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144039, 39.208546, 27.978243>,  <40.084778, 39.441093, 27.975264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144039, 39.208546, 27.978243>,  <40.242805, 38.820965, 27.983210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144039, 39.208546, 27.978243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381353, 0.108943, 0.917988,
		0.890843, 0.221933, -0.396414,
		-0.246919, 0.968957, -0.012416,
		40.069965, 39.499233, 27.974518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845650, 39.212051, 28.231619>,  <40.242805, 38.820965, 27.983210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845650, 39.212051, 28.231619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536263, 39.464569, 28.254284>,  <40.350628, 39.616081, 28.267883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536263, 39.464569, 28.254284>,  <40.845650, 39.212051, 28.231619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536263, 39.464569, 28.254284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280315, 0.260521, 0.923879,
		0.568476, 0.730478, -0.378466,
		-0.773472, 0.631293, 0.056664,
		40.304222, 39.653957, 28.271284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079163, 39.671951, 28.642651>,  <40.845650, 39.212051, 28.231619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079163, 39.671951, 28.642651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692997, 39.775585, 28.654264>,  <40.461296, 39.837765, 28.661234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692997, 39.775585, 28.654264>,  <41.079163, 39.671951, 28.642651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692997, 39.775585, 28.654264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070895, 0.153717, 0.985568,
		0.250886, 0.953543, -0.166769,
		-0.965417, 0.259088, 0.029036,
		40.403374, 39.853313, 28.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108295, 40.326866, 28.999306>,  <41.079163, 39.671951, 28.642651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108295, 40.326866, 28.999306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745365, 40.169132, 29.057617>,  <40.527607, 40.074490, 29.092604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745365, 40.169132, 29.057617>,  <41.108295, 40.326866, 28.999306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745365, 40.169132, 29.057617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121922, 0.085042, 0.988890,
		-0.402355, 0.915022, -0.029082,
		-0.907329, -0.394339, 0.145778,
		40.473167, 40.050831, 29.101351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675617, 40.767475, 29.514776>,  <41.108295, 40.326866, 28.999306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675617, 40.767475, 29.514776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481533, 40.418091, 29.530903>,  <40.365082, 40.208458, 29.540579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481533, 40.418091, 29.530903>,  <40.675617, 40.767475, 29.514776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481533, 40.418091, 29.530903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021938, 0.058254, 0.998061,
		-0.874120, 0.483389, -0.047428,
		-0.485214, -0.873465, 0.040317,
		40.335968, 40.156052, 29.542997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029346, 40.873470, 29.954697>,  <40.675617, 40.767475, 29.514776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029346, 40.873470, 29.954697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119171, 40.483688, 29.954576>,  <40.173065, 40.249817, 29.954504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119171, 40.483688, 29.954576>,  <40.029346, 40.873470, 29.954697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119171, 40.483688, 29.954576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192641, 0.044092, 0.980278,
		-0.955228, -0.220193, 0.197622,
		0.224564, -0.974459, -0.000300,
		40.186539, 40.191349, 29.954487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663532, 40.496536, 30.476025>,  <40.029346, 40.873470, 29.954697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663532, 40.496536, 30.476025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983395, 40.262550, 30.421827>,  <40.175312, 40.122158, 30.389309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983395, 40.262550, 30.421827>,  <39.663532, 40.496536, 30.476025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983395, 40.262550, 30.421827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115431, -0.071684, 0.990726,
		-0.589255, -0.807883, 0.010201,
		0.799659, -0.584967, -0.135495,
		40.223293, 40.087059, 30.381180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475716, 39.888149, 30.860479>,  <39.663532, 40.496536, 30.476025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475716, 39.888149, 30.860479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874111, 39.856220, 30.844294>,  <40.113148, 39.837063, 30.834583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874111, 39.856220, 30.844294>,  <39.475716, 39.888149, 30.860479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874111, 39.856220, 30.844294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024169, -0.195406, 0.980425,
		-0.086168, -0.977469, -0.192693,
		0.995988, -0.079824, -0.040462,
		40.172909, 39.832272, 30.832155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552029, 39.140781, 31.205030>,  <39.475716, 39.888149, 30.860479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552029, 39.140781, 31.205030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917622, 39.294529, 31.153028>,  <40.136978, 39.386776, 31.121828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917622, 39.294529, 31.153028>,  <39.552029, 39.140781, 31.205030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917622, 39.294529, 31.153028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363896, -0.634741, 0.681678,
		0.179495, -0.670348, -0.720010,
		0.913981, 0.384366, -0.130004,
		40.191814, 39.409840, 31.114027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001049, 38.563084, 31.110966>,  <39.552029, 39.140781, 31.205030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001049, 38.563084, 31.110966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192116, 38.886341, 31.248796>,  <40.306755, 39.080296, 31.331495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192116, 38.886341, 31.248796>,  <40.001049, 38.563084, 31.110966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192116, 38.886341, 31.248796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226329, -0.492173, 0.840560,
		0.848885, -0.323523, -0.418003,
		0.477670, 0.808145, 0.344575,
		40.335419, 39.128784, 31.352169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662827, 38.294601, 31.228210>,  <40.001049, 38.563084, 31.110966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662827, 38.294601, 31.228210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616470, 38.636181, 31.431126>,  <40.588657, 38.841129, 31.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616470, 38.636181, 31.431126>,  <40.662827, 38.294601, 31.228210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616470, 38.636181, 31.431126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423806, -0.419393, 0.802806,
		0.898308, 0.308032, -0.313303,
		-0.115893, 0.853947, 0.507290,
		40.581703, 38.892365, 31.583313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331585, 38.352909, 31.604952>,  <40.662827, 38.294601, 31.228210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331585, 38.352909, 31.604952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085052, 38.605961, 31.792532>,  <40.937134, 38.757790, 31.905081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085052, 38.605961, 31.792532>,  <41.331585, 38.352909, 31.604952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085052, 38.605961, 31.792532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432211, -0.226039, 0.872983,
		0.658274, 0.740735, -0.134112,
		-0.616335, 0.632627, 0.468950,
		40.900150, 38.795750, 31.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637966, 38.602894, 32.227135>,  <41.331585, 38.352909, 31.604952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637966, 38.602894, 32.227135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258862, 38.701897, 32.307617>,  <41.031399, 38.761299, 32.355907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258862, 38.701897, 32.307617>,  <41.637966, 38.602894, 32.227135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258862, 38.701897, 32.307617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105155, -0.353094, 0.929660,
		0.301144, 0.902255, 0.308623,
		-0.947763, 0.247508, 0.201209,
		40.974533, 38.776150, 32.367981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648350, 38.929409, 32.940113>,  <41.637966, 38.602894, 32.227135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648350, 38.929409, 32.940113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273949, 38.807320, 32.869976>,  <41.049309, 38.734066, 32.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273949, 38.807320, 32.869976>,  <41.648350, 38.929409, 32.940113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273949, 38.807320, 32.869976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011917, -0.470365, 0.882392,
		-0.351796, 0.828009, 0.436625,
		-0.936001, -0.305219, -0.175340,
		40.993149, 38.715755, 32.817375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271557, 39.153664, 33.559708>,  <41.648350, 38.929409, 32.940113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271557, 39.153664, 33.559708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062557, 38.859100, 33.387802>,  <40.937157, 38.682362, 33.284660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062557, 38.859100, 33.387802>,  <41.271557, 39.153664, 33.559708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062557, 38.859100, 33.387802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030538, -0.487553, 0.872559,
		-0.852093, 0.469035, 0.232258,
		-0.522499, -0.736409, -0.429764,
		40.905807, 38.638176, 33.258873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650223, 39.029858, 33.931416>,  <41.271557, 39.153664, 33.559708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650223, 39.029858, 33.931416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777161, 38.696136, 33.751091>,  <40.853325, 38.495903, 33.642899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777161, 38.696136, 33.751091>,  <40.650223, 39.029858, 33.931416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777161, 38.696136, 33.751091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120615, -0.436009, 0.891823,
		-0.940608, -0.337390, -0.037736,
		0.317345, -0.834305, -0.450808,
		40.872364, 38.445847, 33.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378052, 38.487602, 34.329693>,  <40.650223, 39.029858, 33.931416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378052, 38.487602, 34.329693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697632, 38.328815, 34.148987>,  <40.889381, 38.233543, 34.040565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697632, 38.328815, 34.148987>,  <40.378052, 38.487602, 34.329693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697632, 38.328815, 34.148987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383476, -0.242386, 0.891176,
		-0.463272, -0.885247, -0.041425,
		0.798952, -0.396971, -0.451762,
		40.937317, 38.209724, 34.013458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431351, 37.816547, 34.720116>,  <40.378052, 38.487602, 34.329693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431351, 37.816547, 34.720116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771862, 37.878857, 34.519695>,  <40.976170, 37.916245, 34.399441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771862, 37.878857, 34.519695>,  <40.431351, 37.816547, 34.720116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771862, 37.878857, 34.519695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520122, -0.376543, 0.766608,
		-0.069251, -0.913208, -0.401566,
		0.851280, 0.155775, -0.501055,
		41.027245, 37.925591, 34.369377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860901, 37.220428, 34.936043>,  <40.431351, 37.816547, 34.720116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860901, 37.220428, 34.936043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133999, 37.484322, 34.810432>,  <41.297855, 37.642658, 34.735065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133999, 37.484322, 34.810432>,  <40.860901, 37.220428, 34.936043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133999, 37.484322, 34.810432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635444, -0.323992, 0.700885,
		0.360658, -0.678068, -0.640429,
		0.682742, 0.659737, -0.314024,
		41.338821, 37.682243, 34.716225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424793, 36.864952, 34.955975>,  <40.860901, 37.220428, 34.936043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424793, 36.864952, 34.955975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536861, 37.248924, 34.958687>,  <41.604103, 37.479305, 34.960312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536861, 37.248924, 34.958687>,  <41.424793, 36.864952, 34.955975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536861, 37.248924, 34.958687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708582, -0.211562, 0.673167,
		0.647624, -0.183798, -0.739460,
		0.280168, 0.959927, 0.006777,
		41.620911, 37.536903, 34.960720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153988, 36.816799, 34.779427>,  <41.424793, 36.864952, 34.955975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153988, 36.816799, 34.779427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042992, 37.146637, 34.976627>,  <41.976395, 37.344540, 35.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042992, 37.146637, 34.976627>,  <42.153988, 36.816799, 34.779427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042992, 37.146637, 34.976627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642413, -0.222302, 0.733408,
		0.714356, 0.520223, -0.468041,
		-0.277490, 0.824591, 0.493001,
		41.959743, 37.394012, 35.124527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771439, 37.213318, 34.954952>,  <42.153988, 36.816799, 34.779427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771439, 37.213318, 34.954952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491798, 37.361591, 35.199524>,  <42.324013, 37.450558, 35.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491798, 37.361591, 35.199524>,  <42.771439, 37.213318, 34.954952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491798, 37.361591, 35.199524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586718, -0.191363, 0.786856,
		0.408683, 0.908830, -0.083707,
		-0.699099, 0.370687, 0.611434,
		42.282070, 37.472797, 35.382954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091724, 37.499050, 35.561562>,  <42.771439, 37.213318, 34.954952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091724, 37.499050, 35.561562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717461, 37.467579, 35.699169>,  <42.492901, 37.448696, 35.781734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717461, 37.467579, 35.699169>,  <43.091724, 37.499050, 35.561562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717461, 37.467579, 35.699169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351160, -0.110796, 0.929737,
		-0.035029, 0.990724, 0.131295,
		-0.935660, -0.078673, 0.344022,
		42.436764, 37.443977, 35.802376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141392, 37.713791, 36.237381>,  <43.091724, 37.499050, 35.561562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141392, 37.713791, 36.237381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791824, 37.520531, 36.216095>,  <42.582085, 37.404575, 36.203323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791824, 37.520531, 36.216095>,  <43.141392, 37.713791, 36.237381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791824, 37.520531, 36.216095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025189, -0.154340, 0.987697,
		-0.485422, 0.861824, 0.147051,
		-0.873917, -0.483154, -0.053212,
		42.529648, 37.375584, 36.200130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746857, 38.004513, 36.750790>,  <43.141392, 37.713791, 36.237381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746857, 38.004513, 36.750790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571865, 37.650795, 36.685501>,  <42.466869, 37.438564, 36.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571865, 37.650795, 36.685501>,  <42.746857, 38.004513, 36.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571865, 37.650795, 36.685501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008444, -0.177460, 0.984092,
		-0.899190, 0.431895, 0.070168,
		-0.437477, -0.884293, -0.163217,
		42.440620, 37.385506, 36.636536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132389, 37.879253, 37.183178>,  <42.746857, 38.004513, 36.750790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132389, 37.879253, 37.183178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226070, 37.501884, 37.089287>,  <42.282280, 37.275463, 37.032951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226070, 37.501884, 37.089287>,  <42.132389, 37.879253, 37.183178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226070, 37.501884, 37.089287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033585, -0.249148, 0.967883,
		-0.971608, -0.218794, -0.090035,
		0.234199, -0.943427, -0.234726,
		42.296329, 37.218857, 37.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785484, 37.468681, 37.635014>,  <42.132389, 37.879253, 37.183178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785484, 37.468681, 37.635014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043465, 37.202229, 37.485184>,  <42.198254, 37.042358, 37.395287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043465, 37.202229, 37.485184>,  <41.785484, 37.468681, 37.635014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043465, 37.202229, 37.485184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118015, -0.571070, 0.812374,
		-0.755058, -0.479734, -0.446925,
		0.644949, -0.666133, -0.374576,
		42.236950, 37.002388, 37.372810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537521, 36.774330, 37.810509>,  <41.785484, 37.468681, 37.635014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537521, 36.774330, 37.810509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920540, 36.699490, 37.722778>,  <42.150349, 36.654583, 37.670139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920540, 36.699490, 37.722778>,  <41.537521, 36.774330, 37.810509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920540, 36.699490, 37.722778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086887, -0.538109, 0.838385,
		-0.274889, -0.821846, -0.499005,
		0.957542, -0.187105, -0.219328,
		42.207802, 36.643356, 37.656979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718777, 36.058640, 37.945431>,  <41.537521, 36.774330, 37.810509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718777, 36.058640, 37.945431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086643, 36.215496, 37.937077>,  <42.307362, 36.309612, 37.932064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086643, 36.215496, 37.937077>,  <41.718777, 36.058640, 37.945431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086643, 36.215496, 37.937077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116552, -0.221772, 0.968108,
		0.375005, -0.892771, -0.249662,
		0.919667, 0.392144, -0.020889,
		42.362545, 36.333138, 37.930809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107605, 35.542400, 38.104580>,  <41.718777, 36.058640, 37.945431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107605, 35.542400, 38.104580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295139, 35.883362, 38.197189>,  <42.407661, 36.087936, 38.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295139, 35.883362, 38.197189>,  <42.107605, 35.542400, 38.104580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295139, 35.883362, 38.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177518, -0.347698, 0.920648,
		0.865261, -0.390537, -0.314331,
		0.468840, 0.852401, 0.231522,
		42.435791, 36.139084, 38.266647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777901, 35.434006, 38.205856>,  <42.107605, 35.542400, 38.104580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777901, 35.434006, 38.205856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732250, 35.775867, 38.408459>,  <42.704861, 35.980984, 38.530018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732250, 35.775867, 38.408459>,  <42.777901, 35.434006, 38.205856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732250, 35.775867, 38.408459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440048, -0.413606, 0.797049,
		0.890693, 0.313847, -0.328886,
		-0.114122, 0.854652, 0.506504,
		42.698013, 36.032265, 38.560410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253544, 35.346684, 38.705959>,  <42.777901, 35.434006, 38.205856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253544, 35.346684, 38.705959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047836, 35.663933, 38.836487>,  <42.924412, 35.854282, 38.914803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047836, 35.663933, 38.836487>,  <43.253544, 35.346684, 38.705959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047836, 35.663933, 38.836487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453773, -0.071236, 0.888265,
		0.727747, 0.604884, -0.323263,
		-0.514270, 0.793121, 0.326322,
		42.893555, 35.901871, 38.934383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790504, 35.779922, 38.964172>,  <43.253544, 35.346684, 38.705959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790504, 35.779922, 38.964172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465611, 35.918285, 39.152050>,  <43.270672, 36.001305, 39.264778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465611, 35.918285, 39.152050>,  <43.790504, 35.779922, 38.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465611, 35.918285, 39.152050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493021, -0.023261, 0.869706,
		0.311765, 0.937980, -0.151648,
		-0.812239, 0.345909, 0.469696,
		43.221939, 36.022057, 39.292957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009651, 36.342262, 39.418507>,  <43.790504, 35.779922, 38.964172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009651, 36.342262, 39.418507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660351, 36.230160, 39.577946>,  <43.450771, 36.162899, 39.673611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660351, 36.230160, 39.577946>,  <44.009651, 36.342262, 39.418507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660351, 36.230160, 39.577946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398276, 0.060737, 0.915252,
		-0.280716, 0.958001, 0.058581,
		-0.873255, -0.280258, 0.398599,
		43.398373, 36.146084, 39.697525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695976, 36.885464, 39.829449>,  <44.009651, 36.342262, 39.418507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695976, 36.885464, 39.829449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609787, 36.520630, 39.968979>,  <43.558075, 36.301731, 40.052696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609787, 36.520630, 39.968979>,  <43.695976, 36.885464, 39.829449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609787, 36.520630, 39.968979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533062, 0.189440, 0.824595,
		-0.818179, 0.363625, 0.445376,
		-0.215471, -0.912080, 0.348830,
		43.545147, 36.247005, 40.073627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426159, 36.941055, 40.494766>,  <43.695976, 36.885464, 39.829449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426159, 36.941055, 40.494766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625778, 36.594540, 40.485798>,  <43.745548, 36.386631, 40.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625778, 36.594540, 40.485798>,  <43.426159, 36.941055, 40.494766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625778, 36.594540, 40.485798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478169, 0.253703, 0.840826,
		-0.722709, -0.430330, 0.540841,
		0.499046, -0.866286, -0.022417,
		43.775494, 36.334656, 40.479073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380955, 36.477760, 41.158966>,  <43.426159, 36.941055, 40.494766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380955, 36.477760, 41.158966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715637, 36.407780, 40.951382>,  <43.916447, 36.365791, 40.826832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715637, 36.407780, 40.951382>,  <43.380955, 36.477760, 41.158966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715637, 36.407780, 40.951382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543987, 0.156039, 0.824457,
		-0.063262, -0.972134, 0.225729,
		0.836705, -0.174951, -0.518958,
		43.966648, 36.355293, 40.795696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804291, 36.030590, 41.534466>,  <43.380955, 36.477760, 41.158966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804291, 36.030590, 41.534466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031551, 36.232807, 41.274734>,  <44.167908, 36.354137, 41.118896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031551, 36.232807, 41.274734>,  <43.804291, 36.030590, 41.534466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031551, 36.232807, 41.274734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628456, 0.242858, 0.738961,
		0.531274, -0.827915, -0.179735,
		0.568147, 0.505547, -0.649332,
		44.201996, 36.384472, 41.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901154, 35.641151, 40.884106>,  <43.804291, 36.030590, 41.534466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901154, 35.641151, 40.884106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518223, 35.712296, 40.975220>,  <43.288464, 35.754982, 41.029888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518223, 35.712296, 40.975220>,  <43.901154, 35.641151, 40.884106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518223, 35.712296, 40.975220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236407, -0.028584, -0.971234,
		-0.166230, -0.983641, 0.069411,
		-0.957329, 0.177858, 0.227788,
		43.231026, 35.765652, 41.043556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427814, 35.255592, 40.469296>,  <43.901154, 35.641151, 40.884106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427814, 35.255592, 40.469296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256424, 35.600338, 40.577812>,  <43.153591, 35.807186, 40.642921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256424, 35.600338, 40.577812>,  <43.427814, 35.255592, 40.469296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256424, 35.600338, 40.577812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171006, 0.217469, -0.960970,
		-0.887223, -0.458146, 0.054203,
		-0.428477, 0.861864, 0.271289,
		43.127880, 35.858898, 40.659199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718742, 35.298191, 40.143265>,  <43.427814, 35.255592, 40.469296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718742, 35.298191, 40.143265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893215, 35.649212, 40.222912>,  <42.997898, 35.859825, 40.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893215, 35.649212, 40.222912>,  <42.718742, 35.298191, 40.143265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893215, 35.649212, 40.222912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167117, 0.296419, -0.940323,
		-0.884206, 0.376873, 0.275946,
		0.436179, 0.877555, 0.199113,
		43.024067, 35.912479, 40.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226303, 35.701927, 40.157684>,  <42.718742, 35.298191, 40.143265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226303, 35.701927, 40.157684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575390, 35.837273, 40.016895>,  <42.784840, 35.918480, 39.932423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575390, 35.837273, 40.016895>,  <42.226303, 35.701927, 40.157684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575390, 35.837273, 40.016895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449981, 0.277713, -0.848759,
		-0.189442, 0.899103, 0.394621,
		0.872713, 0.338363, -0.351969,
		42.837204, 35.938782, 39.911304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103008, 36.342266, 39.862072>,  <42.226303, 35.701927, 40.157684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103008, 36.342266, 39.862072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437626, 36.235493, 39.670677>,  <42.638397, 36.171429, 39.555840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437626, 36.235493, 39.670677>,  <42.103008, 36.342266, 39.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437626, 36.235493, 39.670677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454500, 0.149642, -0.878087,
		0.305990, 0.952027, 0.003861,
		0.836540, -0.266931, -0.478486,
		42.688587, 36.155415, 39.527130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076649, 36.789677, 39.354099>,  <42.103008, 36.342266, 39.862072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076649, 36.789677, 39.354099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334202, 36.519627, 39.210087>,  <42.488735, 36.357597, 39.123680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334202, 36.519627, 39.210087>,  <42.076649, 36.789677, 39.354099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334202, 36.519627, 39.210087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177518, 0.325892, -0.928592,
		0.744247, 0.661815, 0.089989,
		0.643882, -0.675127, -0.360028,
		42.527367, 36.317089, 39.102077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621674, 37.220592, 39.088497>,  <42.076649, 36.789677, 39.354099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621674, 37.220592, 39.088497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632343, 36.855896, 38.924538>,  <42.638744, 36.637077, 38.826164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632343, 36.855896, 38.924538>,  <42.621674, 37.220592, 39.088497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632343, 36.855896, 38.924538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054482, 0.410759, -0.910115,
		0.998158, 0.001942, 0.060629,
		0.026671, -0.911742, -0.409897,
		42.640347, 36.582375, 38.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177341, 37.185490, 38.493355>,  <42.621674, 37.220592, 39.088497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177341, 37.185490, 38.493355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916580, 36.888714, 38.430679>,  <42.760124, 36.710648, 38.393074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916580, 36.888714, 38.430679>,  <43.177341, 37.185490, 38.493355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916580, 36.888714, 38.430679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034528, 0.177373, -0.983538,
		0.757516, -0.646581, -0.090012,
		-0.651903, -0.741938, -0.156688,
		42.721008, 36.666134, 38.383675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559078, 36.762989, 37.971581>,  <43.177341, 37.185490, 38.493355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559078, 36.762989, 37.971581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168789, 36.675991, 37.961361>,  <42.934616, 36.623795, 37.955231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168789, 36.675991, 37.961361>,  <43.559078, 36.762989, 37.971581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168789, 36.675991, 37.961361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021434, 0.210950, -0.977262,
		0.217965, -0.952987, -0.210490,
		-0.975721, -0.217520, -0.025553,
		42.876072, 36.610744, 37.953697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515659, 36.529495, 37.388721>,  <43.559078, 36.762989, 37.971581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515659, 36.529495, 37.388721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130562, 36.602127, 37.468884>,  <42.899506, 36.645706, 37.516979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130562, 36.602127, 37.468884>,  <43.515659, 36.529495, 37.388721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130562, 36.602127, 37.468884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156845, 0.228755, -0.960766,
		-0.220299, -0.956399, -0.191751,
		-0.962739, 0.181581, 0.200401,
		42.841740, 36.656601, 37.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173954, 36.405895, 36.780174>,  <43.515659, 36.529495, 37.388721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173954, 36.405895, 36.780174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867504, 36.564461, 36.982525>,  <42.683636, 36.659599, 37.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867504, 36.564461, 36.982525>,  <43.173954, 36.405895, 36.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867504, 36.564461, 36.982525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477328, 0.176112, -0.860897,
		-0.430363, -0.901021, 0.054297,
		-0.766124, 0.396415, 0.505874,
		42.637669, 36.683384, 37.134289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640766, 36.037827, 36.544121>,  <43.173954, 36.405895, 36.780174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640766, 36.037827, 36.544121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514191, 36.382946, 36.701828>,  <42.438244, 36.590015, 36.796452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514191, 36.382946, 36.701828>,  <42.640766, 36.037827, 36.544121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514191, 36.382946, 36.701828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328272, 0.290349, -0.898852,
		-0.890002, -0.413859, 0.191355,
		-0.316438, 0.862797, 0.394269,
		42.419258, 36.641785, 36.820110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850277, 36.236942, 36.343761>,  <42.640766, 36.037827, 36.544121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850277, 36.236942, 36.343761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031555, 36.577366, 36.449829>,  <42.140324, 36.781620, 36.513470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031555, 36.577366, 36.449829>,  <41.850277, 36.236942, 36.343761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031555, 36.577366, 36.449829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157443, 0.369212, -0.915912,
		-0.877395, 0.373342, 0.301319,
		0.453199, 0.851057, 0.265165,
		42.167515, 36.832684, 36.529377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418751, 36.743763, 36.166653>,  <41.850277, 36.236942, 36.343761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418751, 36.743763, 36.166653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763786, 36.942150, 36.206566>,  <41.970810, 37.061180, 36.230515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763786, 36.942150, 36.206566>,  <41.418751, 36.743763, 36.166653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763786, 36.942150, 36.206566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322395, 0.690901, -0.647083,
		-0.389871, 0.525998, 0.755861,
		0.862590, 0.495965, 0.099783,
		42.022564, 37.090939, 36.236500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022251, 37.065132, 35.605282>,  <41.418751, 36.743763, 36.166653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022251, 37.065132, 35.605282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034359, 37.457188, 35.526886>,  <41.041626, 37.692421, 35.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034359, 37.457188, 35.526886>,  <41.022251, 37.065132, 35.605282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034359, 37.457188, 35.526886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901828, -0.057774, -0.428215,
		-0.431033, 0.189716, 0.882167,
		0.030273, 0.980137, -0.195993,
		41.043442, 37.751228, 35.468086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226593, 37.431259, 36.211285>,  <41.022251, 37.065132, 35.605282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226593, 37.431259, 36.211285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604118, 37.415867, 36.079987>,  <41.830631, 37.406631, 36.001209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604118, 37.415867, 36.079987>,  <41.226593, 37.431259, 36.211285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604118, 37.415867, 36.079987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244633, 0.586462, -0.772151,
		0.222215, 0.809062, 0.544095,
		0.943809, -0.038480, -0.328244,
		41.887260, 37.404324, 35.981514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393448, 38.186710, 36.098728>,  <41.226593, 37.431259, 36.211285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393448, 38.186710, 36.098728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646500, 37.960926, 35.886631>,  <41.798332, 37.825455, 35.759373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646500, 37.960926, 35.886631>,  <41.393448, 38.186710, 36.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646500, 37.960926, 35.886631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270442, 0.480549, -0.834227,
		0.725697, 0.671159, 0.151357,
		0.632634, -0.564462, -0.530242,
		41.836288, 37.791588, 35.727558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557438, 38.637257, 35.463058>,  <41.393448, 38.186710, 36.098728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557438, 38.637257, 35.463058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693893, 38.271061, 35.377728>,  <41.775764, 38.051342, 35.326530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693893, 38.271061, 35.377728>,  <41.557438, 38.637257, 35.463058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693893, 38.271061, 35.377728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166939, 0.164327, -0.972177,
		0.925071, 0.367258, -0.096772,
		0.341137, -0.915488, -0.213324,
		41.796234, 37.996414, 35.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005325, 38.753628, 34.930569>,  <41.557438, 38.637257, 35.463058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005325, 38.753628, 34.930569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905743, 38.366375, 34.941463>,  <41.845993, 38.134022, 34.948002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905743, 38.366375, 34.941463>,  <42.005325, 38.753628, 34.930569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905743, 38.366375, 34.941463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390862, 0.074703, -0.917413,
		0.886142, -0.239042, -0.397003,
		-0.248958, -0.968132, 0.027235,
		41.831055, 38.075935, 34.949635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144123, 38.536160, 34.282925>,  <42.005325, 38.753628, 34.930569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144123, 38.536160, 34.282925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909985, 38.239063, 34.412968>,  <41.769501, 38.060806, 34.490993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909985, 38.239063, 34.412968>,  <42.144123, 38.536160, 34.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909985, 38.239063, 34.412968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453976, -0.031980, -0.890440,
		0.671767, -0.668810, -0.318469,
		-0.585350, -0.742745, 0.325107,
		41.734379, 38.016239, 34.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211994, 38.093002, 33.744690>,  <42.144123, 38.536160, 34.282925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211994, 38.093002, 33.744690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871742, 38.038391, 33.947781>,  <41.667591, 38.005623, 34.069633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871742, 38.038391, 33.947781>,  <42.211994, 38.093002, 33.744690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871742, 38.038391, 33.947781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502181, -0.074984, -0.861506,
		0.155694, -0.987794, -0.004780,
		-0.850632, -0.136531, 0.507725,
		41.616554, 37.997433, 34.100098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894131, 37.609547, 33.372623>,  <42.211994, 38.093002, 33.744690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894131, 37.609547, 33.372623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611259, 37.801434, 33.580383>,  <41.441536, 37.916565, 33.705040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611259, 37.801434, 33.580383>,  <41.894131, 37.609547, 33.372623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611259, 37.801434, 33.580383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537712, 0.112093, -0.835644,
		-0.459094, -0.870233, 0.178681,
		-0.707176, 0.479718, 0.519396,
		41.399105, 37.945351, 33.736202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334393, 37.320225, 33.121780>,  <41.894131, 37.609547, 33.372623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334393, 37.320225, 33.121780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213478, 37.666039, 33.282383>,  <41.140930, 37.873528, 33.378746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213478, 37.666039, 33.282383>,  <41.334393, 37.320225, 33.121780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213478, 37.666039, 33.282383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533217, 0.195783, -0.823012,
		-0.790128, -0.462877, 0.401800,
		-0.302288, 0.864531, 0.401507,
		41.122791, 37.925400, 33.402836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556332, 36.623058, 33.356430>,  <41.334393, 37.320225, 33.121780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556332, 36.623058, 33.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404438, 36.538639, 32.996151>,  <41.313301, 36.487988, 32.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404438, 36.538639, 32.996151>,  <41.556332, 36.623058, 33.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404438, 36.538639, 32.996151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108154, -0.977080, 0.183353,
		-0.918752, -0.027789, 0.393855,
		-0.379733, -0.211053, -0.900700,
		41.290520, 36.475323, 32.725941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891235, 36.043385, 33.254318>,  <41.556332, 36.623058, 33.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891235, 36.043385, 33.254318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162487, 36.057728, 32.960693>,  <41.325237, 36.066334, 32.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162487, 36.057728, 32.960693>,  <40.891235, 36.043385, 33.254318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162487, 36.057728, 32.960693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139493, -0.986933, 0.080652,
		-0.721582, -0.157090, -0.674271,
		0.678131, 0.035859, -0.734066,
		41.365925, 36.068485, 32.740475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646332, 35.482628, 32.786354>,  <40.891235, 36.043385, 33.254318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646332, 35.482628, 32.786354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036247, 35.567474, 32.758682>,  <41.270199, 35.618382, 32.742077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036247, 35.567474, 32.758682>,  <40.646332, 35.482628, 32.786354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036247, 35.567474, 32.758682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205040, -0.973932, -0.097029,
		-0.087959, 0.080398, -0.992874,
		0.974793, 0.212113, -0.069181,
		41.328686, 35.631107, 32.737926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860260, 35.350857, 32.133476>,  <40.646332, 35.482628, 32.786354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860260, 35.350857, 32.133476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161709, 35.299984, 32.391430>,  <41.342579, 35.269463, 32.546200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161709, 35.299984, 32.391430>,  <40.860260, 35.350857, 32.133476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161709, 35.299984, 32.391430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071708, -0.959339, -0.272995,
		0.653380, 0.251979, -0.713864,
		0.753626, -0.127180, 0.644882,
		41.387798, 35.261829, 32.584896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263725, 34.895397, 31.799578>,  <40.860260, 35.350857, 32.133476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263725, 34.895397, 31.799578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306667, 34.875679, 32.196777>,  <41.332432, 34.863850, 32.435097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306667, 34.875679, 32.196777>,  <41.263725, 34.895397, 31.799578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306667, 34.875679, 32.196777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014182, -0.998744, -0.048048,
		0.994119, -0.008924, -0.107924,
		0.107359, -0.049296, 0.992997,
		41.338875, 34.860889, 32.494675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904278, 34.672642, 32.203693>,  <41.263725, 34.895397, 31.799578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904278, 34.672642, 32.203693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747372, 34.364235, 32.003029>,  <41.653229, 34.179192, 31.882631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747372, 34.364235, 32.003029>,  <41.904278, 34.672642, 32.203693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747372, 34.364235, 32.003029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401196, 0.634168, -0.660963,
		0.827749, -0.058010, -0.558091,
		-0.392266, -0.771016, -0.501659,
		41.629692, 34.132931, 31.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451733, 34.205070, 32.008106>,  <41.904278, 34.672642, 32.203693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451733, 34.205070, 32.008106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577545, 34.562237, 32.136963>,  <42.653030, 34.776535, 32.214279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577545, 34.562237, 32.136963>,  <42.451733, 34.205070, 32.008106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577545, 34.562237, 32.136963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933355, -0.229064, -0.276367,
		-0.172980, 0.387602, -0.905452,
		0.314527, 0.892914, 0.322146,
		42.671902, 34.830112, 32.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855930, 34.468994, 31.462141>,  <42.451733, 34.205070, 32.008106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855930, 34.468994, 31.462141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970608, 34.611961, 31.817682>,  <43.039413, 34.697742, 32.031006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970608, 34.611961, 31.817682>,  <42.855930, 34.468994, 31.462141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970608, 34.611961, 31.817682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820046, -0.571239, -0.034795,
		0.495310, 0.738874, -0.456873,
		0.286693, 0.357423, 0.888851,
		43.056614, 34.719189, 32.084339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551018, 34.788067, 31.517492>,  <42.855930, 34.468994, 31.462141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551018, 34.788067, 31.517492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446335, 34.571064, 31.836790>,  <43.383526, 34.440865, 32.028370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446335, 34.571064, 31.836790>,  <43.551018, 34.788067, 31.517492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446335, 34.571064, 31.836790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709605, -0.668760, -0.221856,
		0.654193, 0.508378, 0.559984,
		-0.261708, -0.542505, 0.798246,
		43.367821, 34.408314, 32.076263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192841, 34.904282, 32.031559>,  <43.551018, 34.788067, 31.517492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192841, 34.904282, 32.031559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165337, 35.259697, 32.213009>,  <44.148834, 35.472946, 32.321880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165337, 35.259697, 32.213009>,  <44.192841, 34.904282, 32.031559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165337, 35.259697, 32.213009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625786, -0.315706, 0.713247,
		0.776958, 0.332914, -0.534326,
		-0.068759, 0.888537, 0.453623,
		44.144711, 35.526257, 32.349094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811268, 35.266174, 32.081276>,  <44.192841, 34.904282, 32.031559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811268, 35.266174, 32.081276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599651, 35.234299, 32.419212>,  <44.472679, 35.215176, 32.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599651, 35.234299, 32.419212>,  <44.811268, 35.266174, 32.081276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599651, 35.234299, 32.419212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839800, 0.093791, 0.534732,
		-0.121849, 0.992398, 0.017300,
		-0.529044, -0.079685, 0.844844,
		44.440937, 35.210392, 32.672665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951267, 35.783466, 32.567333>,  <44.811268, 35.266174, 32.081276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951267, 35.783466, 32.567333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851906, 35.444748, 32.755474>,  <44.792290, 35.241516, 32.868359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851906, 35.444748, 32.755474>,  <44.951267, 35.783466, 32.567333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851906, 35.444748, 32.755474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843502, 0.049632, 0.534828,
		-0.476234, 0.529602, 0.701942,
		-0.248408, -0.846793, 0.470357,
		44.777382, 35.190708, 32.896580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840939, 35.866230, 33.353115>,  <44.951267, 35.783466, 32.567333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840939, 35.866230, 33.353115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000229, 35.530682, 33.204681>,  <45.095802, 35.329353, 33.115620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000229, 35.530682, 33.204681>,  <44.840939, 35.866230, 33.353115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000229, 35.530682, 33.204681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838625, 0.169042, 0.517815,
		-0.371653, -0.517410, 0.770818,
		0.398224, -0.838875, -0.371088,
		45.119698, 35.279018, 33.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020397, 35.484177, 33.900352>,  <44.840939, 35.866230, 33.353115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020397, 35.484177, 33.900352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247086, 35.359661, 33.595215>,  <45.383099, 35.284950, 33.412132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247086, 35.359661, 33.595215>,  <45.020397, 35.484177, 33.900352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247086, 35.359661, 33.595215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819366, 0.115810, 0.561452,
		-0.086431, -0.943231, 0.320695,
		0.566719, -0.311293, -0.762841,
		45.417103, 35.266273, 33.366364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452904, 34.895382, 34.006611>,  <45.020397, 35.484177, 33.900352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452904, 34.895382, 34.006611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617085, 35.173206, 33.770267>,  <45.715591, 35.339901, 33.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617085, 35.173206, 33.770267>,  <45.452904, 34.895382, 34.006611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617085, 35.173206, 33.770267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717131, 0.154371, 0.679627,
		0.563253, -0.702679, -0.434728,
		0.410450, 0.694559, -0.590862,
		45.740219, 35.381573, 33.593010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026661, 34.900375, 34.193588>,  <45.452904, 34.895382, 34.006611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026661, 34.900375, 34.193588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056160, 35.239902, 33.984184>,  <46.073860, 35.443619, 33.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056160, 35.239902, 33.984184>,  <46.026661, 34.900375, 34.193588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056160, 35.239902, 33.984184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691109, 0.334954, 0.640448,
		0.718978, -0.409034, -0.561927,
		0.073745, 0.848821, -0.523512,
		46.078285, 35.494549, 33.827129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700066, 34.876797, 33.825283>,  <46.026661, 34.900375, 34.193588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700066, 34.876797, 33.825283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536079, 35.234379, 33.897697>,  <46.437687, 35.448929, 33.941147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536079, 35.234379, 33.897697>,  <46.700066, 34.876797, 33.825283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536079, 35.234379, 33.897697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543021, 0.079748, 0.835923,
		0.732840, 0.441006, -0.518130,
		-0.409968, 0.893954, 0.181033,
		46.413090, 35.502563, 33.952007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339333, 35.101311, 34.002666>,  <46.700066, 34.876797, 33.825283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339333, 35.101311, 34.002666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515671, 35.322498, 33.719860>,  <47.621475, 35.455212, 33.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515671, 35.322498, 33.719860>,  <47.339333, 35.101311, 34.002666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515671, 35.322498, 33.719860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053787, 0.770005, 0.635767,
		0.895968, -0.318306, 0.309713,
		0.440849, 0.552968, -0.707021,
		47.647926, 35.488388, 33.507755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.773891, 35.648148, 34.123962>,  <47.339333, 35.101311, 34.002666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.773891, 35.648148, 34.123962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552841, 35.614182, 34.455601>,  <47.420212, 35.593803, 34.654583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552841, 35.614182, 34.455601>,  <47.773891, 35.648148, 34.123962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552841, 35.614182, 34.455601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266456, -0.960586, 0.079223,
		0.789686, 0.264697, 0.553472,
		-0.552627, -0.084915, 0.829091,
		47.387054, 35.588707, 34.704327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.151123, 35.383770, 34.628090>,  <47.773891, 35.648148, 34.123962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.151123, 35.383770, 34.628090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760078, 35.301075, 34.643761>,  <47.525452, 35.251457, 34.653164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760078, 35.301075, 34.643761>,  <48.151123, 35.383770, 34.628090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760078, 35.301075, 34.643761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206551, -0.978396, -0.008848,
		0.040163, -0.000557, 0.999193,
		-0.977611, -0.206739, 0.039180,
		47.466797, 35.239052, 34.655514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037277, 34.781490, 35.026230>,  <48.151123, 35.383770, 34.628090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037277, 34.781490, 35.026230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671509, 34.801296, 34.865540>,  <47.452049, 34.813179, 34.769127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671509, 34.801296, 34.865540>,  <48.037277, 34.781490, 35.026230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671509, 34.801296, 34.865540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069178, -0.997005, 0.034581,
		-0.398811, 0.059413, 0.915106,
		-0.914420, 0.049513, -0.401727,
		47.397182, 34.816151, 34.745022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.805893, 34.706963, 24.146765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449581, 34.866913, 24.233118>,  <35.235794, 34.962883, 24.284931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449581, 34.866913, 24.233118>,  <35.805893, 34.706963, 24.146765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449581, 34.866913, 24.233118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276649, 0.100301, 0.955722,
		0.360518, 0.911064, -0.199971,
		-0.890782, 0.399877, 0.215885,
		35.182346, 34.986877, 24.297884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891449, 35.368210, 24.519976>,  <35.805893, 34.706963, 24.146765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891449, 35.368210, 24.519976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514191, 35.274853, 24.614632>,  <35.287834, 35.218838, 24.671425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514191, 35.274853, 24.614632>,  <35.891449, 35.368210, 24.519976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514191, 35.274853, 24.614632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251714, -0.036622, 0.967109,
		-0.217045, 0.971694, 0.093287,
		-0.943150, -0.233388, 0.236640,
		35.231247, 35.204838, 24.685623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598495, 35.845535, 24.928207>,  <35.891449, 35.368210, 24.519976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598495, 35.845535, 24.928207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363190, 35.544838, 25.047422>,  <35.222008, 35.364418, 25.118952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363190, 35.544838, 25.047422>,  <35.598495, 35.845535, 24.928207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363190, 35.544838, 25.047422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171853, 0.243918, 0.954448,
		-0.790200, 0.612683, -0.014297,
		-0.588261, -0.751747, 0.298035,
		35.186710, 35.319313, 25.136833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065079, 36.075790, 25.522606>,  <35.598495, 35.845535, 24.928207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065079, 36.075790, 25.522606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062340, 35.676697, 25.549356>,  <35.060696, 35.437241, 25.565407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062340, 35.676697, 25.549356>,  <35.065079, 36.075790, 25.522606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062340, 35.676697, 25.549356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033872, 0.067072, 0.997173,
		-0.999403, 0.004562, -0.034254,
		-0.006846, -0.997738, 0.066878,
		35.060287, 35.377377, 25.569420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607178, 35.791695, 25.873234>,  <35.065079, 36.075790, 25.522606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607178, 35.791695, 25.873234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876934, 35.501133, 25.926195>,  <35.038788, 35.326794, 25.957972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876934, 35.501133, 25.926195>,  <34.607178, 35.791695, 25.873234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876934, 35.501133, 25.926195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097103, 0.090509, 0.991150,
		-0.731962, -0.681280, -0.009498,
		0.674391, -0.726406, 0.132403,
		35.079250, 35.283211, 25.965916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286213, 35.402260, 26.423721>,  <34.607178, 35.791695, 25.873234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286213, 35.402260, 26.423721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671810, 35.295914, 26.421398>,  <34.903168, 35.232105, 26.420004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671810, 35.295914, 26.421398>,  <34.286213, 35.402260, 26.423721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671810, 35.295914, 26.421398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013375, 0.026663, 0.999555,
		-0.265595, -0.963641, 0.029259,
		0.963992, -0.265868, -0.005807,
		34.961006, 35.216152, 26.419657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255333, 35.012695, 27.000229>,  <34.286213, 35.402260, 26.423721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255333, 35.012695, 27.000229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647243, 35.057713, 26.934042>,  <34.882389, 35.084724, 26.894331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647243, 35.057713, 26.934042>,  <34.255333, 35.012695, 27.000229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647243, 35.057713, 26.934042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158565, 0.067785, 0.985019,
		0.122077, -0.991332, 0.048568,
		0.979773, 0.112548, -0.165465,
		34.941174, 35.091476, 26.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695572, 34.577682, 27.449568>,  <34.255333, 35.012695, 27.000229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695572, 34.577682, 27.449568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952255, 34.877583, 27.384968>,  <35.106266, 35.057522, 27.346209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952255, 34.877583, 27.384968>,  <34.695572, 34.577682, 27.449568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952255, 34.877583, 27.384968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244566, -0.000462, 0.969632,
		0.726906, -0.661723, -0.183659,
		0.641713, 0.749748, -0.161500,
		35.144768, 35.102509, 27.336517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405125, 34.380180, 27.757811>,  <34.695572, 34.577682, 27.449568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405125, 34.380180, 27.757811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415989, 34.775513, 27.697847>,  <35.422508, 35.012711, 27.661869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415989, 34.775513, 27.697847>,  <35.405125, 34.380180, 27.757811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415989, 34.775513, 27.697847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435461, 0.123289, 0.891725,
		0.899798, -0.089503, -0.427029,
		0.027164, 0.988326, -0.149910,
		35.424137, 35.072010, 27.652874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040977, 34.502022, 27.910788>,  <35.405125, 34.380180, 27.757811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040977, 34.502022, 27.910788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868599, 34.861828, 27.939533>,  <35.765171, 35.077709, 27.956781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868599, 34.861828, 27.939533>,  <36.040977, 34.502022, 27.910788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868599, 34.861828, 27.939533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587639, 0.219306, 0.778836,
		0.684813, 0.377865, -0.623097,
		-0.430944, 0.899513, 0.071865,
		35.739315, 35.131683, 27.961092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557800, 34.957096, 27.953035>,  <36.040977, 34.502022, 27.910788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557800, 34.957096, 27.953035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256531, 35.181995, 28.089622>,  <36.075768, 35.316936, 28.171576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256531, 35.181995, 28.089622>,  <36.557800, 34.957096, 27.953035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256531, 35.181995, 28.089622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539921, 0.231846, 0.809155,
		0.375777, 0.793805, -0.478190,
		-0.753178, 0.562247, 0.341470,
		36.030579, 35.350670, 28.192064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851624, 35.569927, 28.273291>,  <36.557800, 34.957096, 27.953035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851624, 35.569927, 28.273291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487755, 35.541580, 28.436989>,  <36.269436, 35.524570, 28.535208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487755, 35.541580, 28.436989>,  <36.851624, 35.569927, 28.273291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487755, 35.541580, 28.436989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377873, 0.267738, 0.886300,
		-0.172379, 0.960882, -0.216775,
		-0.909669, -0.070866, 0.409243,
		36.214855, 35.520321, 28.559761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766647, 36.211906, 28.631588>,  <36.851624, 35.569927, 28.273291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766647, 36.211906, 28.631588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517189, 35.933170, 28.773279>,  <36.367516, 35.765930, 28.858294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517189, 35.933170, 28.773279>,  <36.766647, 36.211906, 28.631588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517189, 35.933170, 28.773279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418618, 0.084978, 0.904178,
		-0.660170, 0.712173, 0.238715,
		-0.623646, -0.696842, 0.354228,
		36.330097, 35.724117, 28.879547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367886, 36.517605, 29.257034>,  <36.766647, 36.211906, 28.631588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367886, 36.517605, 29.257034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323906, 36.121086, 29.285994>,  <36.297520, 35.883175, 29.303370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323906, 36.121086, 29.285994>,  <36.367886, 36.517605, 29.257034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323906, 36.121086, 29.285994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481114, 0.010659, 0.876593,
		-0.869736, 0.131211, 0.475755,
		-0.109948, -0.991297, 0.072398,
		36.290920, 35.823696, 29.307713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981476, 36.383617, 29.912071>,  <36.367886, 36.517605, 29.257034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981476, 36.383617, 29.912071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177525, 36.046528, 29.822985>,  <36.295155, 35.844273, 29.769533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177525, 36.046528, 29.822985>,  <35.981476, 36.383617, 29.912071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177525, 36.046528, 29.822985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457895, 0.031506, 0.888448,
		-0.741699, -0.537425, 0.401320,
		0.490118, -0.842723, -0.222716,
		36.324558, 35.793713, 29.756170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905586, 35.980839, 30.467125>,  <35.981476, 36.383617, 29.912071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905586, 35.980839, 30.467125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207157, 35.797798, 30.278574>,  <36.388100, 35.687973, 30.165443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207157, 35.797798, 30.278574>,  <35.905586, 35.980839, 30.467125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207157, 35.797798, 30.278574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529293, -0.001939, 0.848437,
		-0.389162, -0.889154, 0.240745,
		0.753924, -0.457604, -0.471377,
		36.433334, 35.660519, 30.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118038, 35.453300, 30.920929>,  <35.905586, 35.980839, 30.467125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118038, 35.453300, 30.920929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454334, 35.482044, 30.706272>,  <36.656113, 35.499290, 30.577478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454334, 35.482044, 30.706272>,  <36.118038, 35.453300, 30.920929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454334, 35.482044, 30.706272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538274, -0.004013, 0.842761,
		0.058410, -0.997407, -0.042056,
		0.840744, 0.071863, -0.536643,
		36.706558, 35.503601, 30.545279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511425, 35.188271, 31.359987>,  <36.118038, 35.453300, 30.920929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511425, 35.188271, 31.359987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790272, 35.311283, 31.100927>,  <36.957581, 35.385090, 30.945492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790272, 35.311283, 31.100927>,  <36.511425, 35.188271, 31.359987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790272, 35.311283, 31.100927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676802, 0.015794, 0.735996,
		0.236569, -0.951407, -0.197126,
		0.697119, 0.307529, -0.647650,
		36.999409, 35.403542, 30.906631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039295, 34.652870, 31.213591>,  <36.511425, 35.188271, 31.359987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039295, 34.652870, 31.213591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186707, 35.020123, 31.155331>,  <37.275154, 35.240475, 31.120375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186707, 35.020123, 31.155331>,  <37.039295, 34.652870, 31.213591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186707, 35.020123, 31.155331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712995, -0.178631, 0.678033,
		0.596509, -0.353723, -0.720456,
		0.368532, 0.918135, -0.145648,
		37.297268, 35.295563, 31.111637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690205, 34.589375, 31.398363>,  <37.039295, 34.652870, 31.213591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690205, 34.589375, 31.398363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726803, 34.987572, 31.388309>,  <37.748760, 35.226490, 31.382277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726803, 34.987572, 31.388309>,  <37.690205, 34.589375, 31.398363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726803, 34.987572, 31.388309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748587, -0.052114, 0.660985,
		0.656693, -0.079293, -0.749978,
		0.091496, 0.995488, -0.025135,
		37.754253, 35.286217, 31.380770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355541, 34.746670, 31.287558>,  <37.690205, 34.589375, 31.398363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355541, 34.746670, 31.287558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244701, 35.095715, 31.448437>,  <38.178200, 35.305141, 31.544964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244701, 35.095715, 31.448437>,  <38.355541, 34.746670, 31.287558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244701, 35.095715, 31.448437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798589, -0.023607, 0.601413,
		0.534295, 0.487842, -0.690318,
		-0.277098, 0.872613, 0.402199,
		38.161572, 35.357498, 31.569096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935543, 35.105129, 31.455273>,  <38.355541, 34.746670, 31.287558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935543, 35.105129, 31.455273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629864, 35.203987, 31.693575>,  <38.446457, 35.263302, 31.836555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629864, 35.203987, 31.693575>,  <38.935543, 35.105129, 31.455273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629864, 35.203987, 31.693575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630135, 0.089027, 0.771365,
		0.137599, 0.964881, -0.223767,
		-0.764196, 0.247143, 0.595755,
		38.400604, 35.278130, 31.872301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052784, 35.563152, 32.070595>,  <38.935543, 35.105129, 31.455273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052784, 35.563152, 32.070595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 35.828781, 32.047813>,  <39.529903, 35.988159, 32.034145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 35.828781, 32.047813>,  <39.052784, 35.563152, 32.070595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350983, 35.828781, 32.047813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198485, 0.139622, -0.970108,
		-0.636267, 0.734519, 0.235896,
		0.745499, 0.664069, -0.056955,
		39.574631, 36.028004, 32.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769608, 36.120045, 31.689213>,  <39.052784, 35.563152, 32.070595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769608, 36.120045, 31.689213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165058, 36.172905, 31.660479>,  <39.402328, 36.204620, 31.643238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165058, 36.172905, 31.660479>,  <38.769608, 36.120045, 31.689213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165058, 36.172905, 31.660479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090489, 0.141065, -0.985856,
		-0.120146, 0.981141, 0.151418,
		0.988624, 0.132149, -0.071834,
		39.461647, 36.212551, 31.638927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846909, 36.622509, 31.244486>,  <38.769608, 36.120045, 31.689213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846909, 36.622509, 31.244486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206673, 36.448360, 31.228918>,  <39.422531, 36.343872, 31.219578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206673, 36.448360, 31.228918>,  <38.846909, 36.622509, 31.244486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206673, 36.448360, 31.228918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011734, 0.064957, -0.997819,
		0.436952, 0.897903, 0.053315,
		0.899408, -0.435373, -0.038919,
		39.476494, 36.317749, 31.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191048, 37.114414, 30.816250>,  <38.846909, 36.622509, 31.244486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191048, 37.114414, 30.816250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382492, 36.763252, 30.810320>,  <39.497360, 36.552555, 30.806761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382492, 36.763252, 30.810320>,  <39.191048, 37.114414, 30.816250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382492, 36.763252, 30.810320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076703, -0.024983, -0.996741,
		0.874670, 0.478190, -0.079294,
		0.478612, -0.877901, -0.014827,
		39.526077, 36.499882, 30.805872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721962, 37.111839, 30.314335>,  <39.191048, 37.114414, 30.816250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721962, 37.111839, 30.314335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624138, 36.727440, 30.365976>,  <39.565441, 36.496799, 30.396961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624138, 36.727440, 30.365976>,  <39.721962, 37.111839, 30.314335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624138, 36.727440, 30.365976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119810, -0.102178, -0.987525,
		0.962203, -0.256982, -0.090149,
		-0.244565, -0.961000, 0.129105,
		39.550770, 36.439140, 30.404707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244339, 36.763981, 30.003658>,  <39.721962, 37.111839, 30.314335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244339, 36.763981, 30.003658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931492, 36.514744, 30.000828>,  <39.743786, 36.365200, 29.999130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931492, 36.514744, 30.000828>,  <40.244339, 36.763981, 30.003658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931492, 36.514744, 30.000828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140656, -0.165468, -0.976133,
		0.607051, -0.764444, 0.217057,
		-0.782115, -0.623093, -0.007076,
		39.696857, 36.327816, 29.998705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432545, 36.113358, 29.640001>,  <40.244339, 36.763981, 30.003658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432545, 36.113358, 29.640001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032803, 36.120804, 29.627663>,  <39.792957, 36.125271, 29.620260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032803, 36.120804, 29.627663>,  <40.432545, 36.113358, 29.640001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032803, 36.120804, 29.627663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028967, -0.093863, -0.995164,
		-0.021416, -0.995411, 0.093263,
		-0.999351, 0.018611, -0.030845,
		39.732998, 36.126389, 29.618408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330036, 35.633629, 29.063681>,  <40.432545, 36.113358, 29.640001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330036, 35.633629, 29.063681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.987011, 35.835602, 29.102942>,  <39.781197, 35.956783, 29.126499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.987011, 35.835602, 29.102942>,  <40.330036, 35.633629, 29.063681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987011, 35.835602, 29.102942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117849, -0.007121, -0.993006,
		-0.500700, -0.863131, 0.065612,
		-0.857561, 0.504930, 0.098154,
		39.729744, 35.987080, 29.132387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875847, 35.216320, 28.677855>,  <40.330036, 35.633629, 29.063681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875847, 35.216320, 28.677855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716385, 35.582954, 28.690153>,  <39.620708, 35.802937, 28.697533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716385, 35.582954, 28.690153>,  <39.875847, 35.216320, 28.677855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716385, 35.582954, 28.690153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410228, -0.148235, -0.899855,
		-0.820237, -0.371344, 0.435103,
		-0.398653, 0.916586, 0.030748,
		39.596790, 35.857929, 28.699377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237209, 35.103069, 28.453247>,  <39.875847, 35.216320, 28.677855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237209, 35.103069, 28.453247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312679, 35.495026, 28.427263>,  <39.357960, 35.730198, 28.411673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312679, 35.495026, 28.427263>,  <39.237209, 35.103069, 28.453247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312679, 35.495026, 28.427263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385719, 0.013112, -0.922523,
		-0.903119, 0.199109, 0.380436,
		0.188671, 0.979889, -0.064959,
		39.369282, 35.788994, 28.407776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676933, 35.379158, 28.175936>,  <39.237209, 35.103069, 28.453247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676933, 35.379158, 28.175936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929966, 35.684639, 28.124407>,  <39.081787, 35.867928, 28.093491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929966, 35.684639, 28.124407>,  <38.676933, 35.379158, 28.175936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929966, 35.684639, 28.124407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332720, 0.117772, -0.935643,
		-0.699383, 0.634732, 0.328601,
		0.632582, 0.763705, -0.128820,
		39.119740, 35.913750, 28.085760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234364, 35.874481, 27.845430>,  <38.676933, 35.379158, 28.175936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234364, 35.874481, 27.845430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614029, 35.961723, 27.754637>,  <38.841827, 36.014069, 27.700161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614029, 35.961723, 27.754637>,  <38.234364, 35.874481, 27.845430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614029, 35.961723, 27.754637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235709, 0.014506, -0.971715,
		-0.208641, 0.975818, 0.065178,
		0.949163, 0.218102, -0.226983,
		38.898777, 36.027153, 27.686543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261795, 36.476116, 27.401863>,  <38.234364, 35.874481, 27.845430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261795, 36.476116, 27.401863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603756, 36.280346, 27.333048>,  <38.808933, 36.162884, 27.291759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603756, 36.280346, 27.333048>,  <38.261795, 36.476116, 27.401863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603756, 36.280346, 27.333048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216549, -0.035312, -0.975633,
		0.471427, 0.871329, -0.136174,
		0.854906, -0.489428, -0.172039,
		38.860229, 36.133518, 27.281437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648830, 36.869732, 26.890968>,  <38.261795, 36.476116, 27.401863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648830, 36.869732, 26.890968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820049, 36.510857, 26.847479>,  <38.922783, 36.295532, 26.821386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820049, 36.510857, 26.847479>,  <38.648830, 36.869732, 26.890968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820049, 36.510857, 26.847479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153564, 0.046347, -0.987051,
		0.890612, 0.439204, -0.117937,
		0.428051, -0.897191, -0.108723,
		38.948463, 36.241699, 26.814861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043674, 37.066105, 26.352877>,  <38.648830, 36.869732, 26.890968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043674, 37.066105, 26.352877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009041, 36.670933, 26.404245>,  <38.988258, 36.433830, 26.435066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009041, 36.670933, 26.404245>,  <39.043674, 37.066105, 26.352877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009041, 36.670933, 26.404245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256779, -0.102418, -0.961028,
		0.962584, -0.116188, -0.244813,
		-0.086587, -0.987933, 0.128421,
		38.983067, 36.374554, 26.442772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149578, 36.828262, 25.699324>,  <39.043674, 37.066105, 26.352877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149578, 36.828262, 25.699324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016899, 36.505997, 25.895641>,  <38.937294, 36.312637, 26.013432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016899, 36.505997, 25.895641>,  <39.149578, 36.828262, 25.699324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016899, 36.505997, 25.895641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469140, -0.310487, -0.826744,
		0.818466, -0.504477, -0.274985,
		-0.331694, -0.805668, 0.490793,
		38.917393, 36.264297, 26.042879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306316, 36.257183, 25.380806>,  <39.149578, 36.828262, 25.699324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306316, 36.257183, 25.380806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975254, 36.127895, 25.564331>,  <38.776615, 36.050323, 25.674446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975254, 36.127895, 25.564331>,  <39.306316, 36.257183, 25.380806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975254, 36.127895, 25.564331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448853, -0.109549, -0.886865,
		0.336912, -0.939963, -0.054407,
		-0.827660, -0.323216, 0.458814,
		38.726955, 36.030930, 25.701975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165253, 35.681644, 25.105553>,  <39.306316, 36.257183, 25.380806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165253, 35.681644, 25.105553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811470, 35.781548, 25.263212>,  <38.599201, 35.841492, 25.357807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811470, 35.781548, 25.263212>,  <39.165253, 35.681644, 25.105553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811470, 35.781548, 25.263212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443895, -0.189971, -0.875710,
		-0.143834, -0.949492, 0.278886,
		-0.884460, 0.249753, 0.394150,
		38.546131, 35.856476, 25.381456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.498596, 35.082348, 24.779726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339691, 35.420200, 24.923271>,  <38.244347, 35.622913, 25.009398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339691, 35.420200, 24.923271>,  <38.498596, 35.082348, 24.779726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339691, 35.420200, 24.923271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570990, 0.078641, -0.817182,
		-0.718438, -0.529542, 0.451035,
		-0.397262, 0.844631, 0.358862,
		38.220512, 35.673588, 25.030930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782520, 34.995403, 24.684896>,  <38.498596, 35.082348, 24.779726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782520, 34.995403, 24.684896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857651, 35.387302, 24.712652>,  <37.902729, 35.622440, 24.729305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857651, 35.387302, 24.712652>,  <37.782520, 34.995403, 24.684896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857651, 35.387302, 24.712652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665462, 0.178902, -0.724676,
		-0.722414, 0.089937, 0.685587,
		0.187828, 0.979748, 0.069392,
		37.913998, 35.681225, 24.733469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184498, 35.377899, 24.785049>,  <37.782520, 34.995403, 24.684896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184498, 35.377899, 24.785049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437473, 35.651680, 24.639977>,  <37.589260, 35.815948, 24.552933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437473, 35.651680, 24.639977>,  <37.184498, 35.377899, 24.785049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437473, 35.651680, 24.639977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634288, 0.188840, -0.749678,
		-0.444632, 0.704173, 0.553572,
		0.632440, 0.684456, -0.362685,
		37.627205, 35.857018, 24.531172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773281, 35.871235, 24.441519>,  <37.184498, 35.377899, 24.785049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773281, 35.871235, 24.441519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121998, 36.005238, 24.298548>,  <37.331226, 36.085640, 24.212765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121998, 36.005238, 24.298548>,  <36.773281, 35.871235, 24.441519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121998, 36.005238, 24.298548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438773, 0.209504, -0.873834,
		-0.217862, 0.918627, 0.329636,
		0.871788, 0.335011, -0.357426,
		37.383533, 36.105740, 24.191320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530464, 36.365376, 23.934322>,  <36.773281, 35.871235, 24.441519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530464, 36.365376, 23.934322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902084, 36.270611, 23.820669>,  <37.125057, 36.213753, 23.752478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902084, 36.270611, 23.820669>,  <36.530464, 36.365376, 23.934322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902084, 36.270611, 23.820669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292550, -0.000383, -0.956250,
		0.226434, 0.971532, -0.069663,
		0.929054, -0.236908, -0.284135,
		37.180801, 36.199539, 23.735428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795158, 36.896290, 23.426537>,  <36.530464, 36.365376, 23.934322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795158, 36.896290, 23.426537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003693, 36.558846, 23.375105>,  <37.128815, 36.356380, 23.344246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003693, 36.558846, 23.375105>,  <36.795158, 36.896290, 23.426537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003693, 36.558846, 23.375105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083583, 0.099469, -0.991524,
		0.849249, 0.527663, -0.018655,
		0.521335, -0.843610, -0.128578,
		37.160091, 36.305763, 23.336531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414707, 37.098137, 22.936840>,  <36.795158, 36.896290, 23.426537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414707, 37.098137, 22.936840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342136, 36.704777, 22.935434>,  <37.298592, 36.468761, 22.934591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342136, 36.704777, 22.935434>,  <37.414707, 37.098137, 22.936840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342136, 36.704777, 22.935434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026761, 0.008508, -0.999606,
		0.983039, -0.181265, -0.027860,
		-0.181431, -0.983397, -0.003513,
		37.287708, 36.409756, 22.934380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940723, 36.674843, 22.513159>,  <37.414707, 37.098137, 22.936840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940723, 36.674843, 22.513159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597023, 36.470226, 22.514666>,  <37.390800, 36.347458, 22.515570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597023, 36.470226, 22.514666>,  <37.940723, 36.674843, 22.513159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597023, 36.470226, 22.514666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024406, -0.048352, -0.998532,
		0.510968, -0.857900, 0.054031,
		-0.859253, -0.511537, 0.003768,
		37.339249, 36.316765, 22.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069088, 36.143108, 22.039673>,  <37.940723, 36.674843, 22.513159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069088, 36.143108, 22.039673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675148, 36.171856, 22.102795>,  <37.438786, 36.189106, 22.140669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675148, 36.171856, 22.102795>,  <38.069088, 36.143108, 22.039673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675148, 36.171856, 22.102795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139700, 0.210270, -0.967611,
		-0.102723, -0.974998, -0.197045,
		-0.984851, 0.071868, 0.157807,
		37.379692, 36.193417, 22.150137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770344, 35.751842, 21.544138>,  <38.069088, 36.143108, 22.039673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770344, 35.751842, 21.544138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435013, 35.955559, 21.621939>,  <37.233814, 36.077789, 21.668619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435013, 35.955559, 21.621939>,  <37.770344, 35.751842, 21.544138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435013, 35.955559, 21.621939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232190, -0.010751, -0.972611,
		-0.493255, -0.860525, 0.127266,
		-0.838324, 0.509295, 0.194502,
		37.183514, 36.108349, 21.680290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200336, 35.454624, 21.210871>,  <37.770344, 35.751842, 21.544138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200336, 35.454624, 21.210871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078289, 35.830654, 21.271736>,  <37.005062, 36.056274, 21.308256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078289, 35.830654, 21.271736>,  <37.200336, 35.454624, 21.210871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078289, 35.830654, 21.271736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148935, 0.110714, -0.982630,
		-0.940597, -0.322479, 0.106230,
		-0.305117, 0.940080, 0.152166,
		36.986755, 36.112679, 21.317387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541473, 35.612434, 20.908131>,  <37.200336, 35.454624, 21.210871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541473, 35.612434, 20.908131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726883, 35.964931, 20.945156>,  <36.838127, 36.176430, 20.967371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726883, 35.964931, 20.945156>,  <36.541473, 35.612434, 20.908131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726883, 35.964931, 20.945156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153823, 0.182904, -0.971022,
		-0.872633, 0.435850, 0.220334,
		0.463520, 0.881238, 0.092565,
		36.865940, 36.229301, 20.972925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205254, 35.996277, 20.529806>,  <36.541473, 35.612434, 20.908131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205254, 35.996277, 20.529806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514606, 36.246826, 20.568855>,  <36.700218, 36.397156, 20.592285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514606, 36.246826, 20.568855>,  <36.205254, 35.996277, 20.529806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514606, 36.246826, 20.568855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071859, 0.239619, -0.968204,
		-0.629853, 0.741777, 0.230328,
		0.773383, 0.626378, 0.097621,
		36.746620, 36.434738, 20.598143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013500, 36.605461, 20.242769>,  <36.205254, 35.996277, 20.529806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013500, 36.605461, 20.242769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412258, 36.630501, 20.261843>,  <36.651512, 36.645527, 20.273287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412258, 36.630501, 20.261843>,  <36.013500, 36.605461, 20.242769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412258, 36.630501, 20.261843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024297, 0.331462, -0.943156,
		-0.074849, 0.941389, 0.328913,
		0.996899, 0.062603, 0.047683,
		36.711327, 36.649281, 20.276148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165859, 37.084618, 19.635294>,  <36.013500, 36.605461, 20.242769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165859, 37.084618, 19.635294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540905, 37.005955, 19.749981>,  <36.765930, 36.958755, 19.818792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540905, 37.005955, 19.749981>,  <36.165859, 37.084618, 19.635294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540905, 37.005955, 19.749981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347156, 0.484197, -0.803142,
		0.019119, 0.852571, 0.522261,
		0.937613, -0.196661, 0.286717,
		36.822189, 36.946957, 19.835997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472195, 37.731915, 19.716125>,  <36.165859, 37.084618, 19.635294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472195, 37.731915, 19.716125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733635, 37.447651, 19.612003>,  <36.890499, 37.277092, 19.549530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733635, 37.447651, 19.612003>,  <36.472195, 37.731915, 19.716125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733635, 37.447651, 19.612003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108578, 0.428430, -0.897028,
		0.749008, 0.558037, 0.357186,
		0.653604, -0.710663, -0.260307,
		36.929714, 37.234451, 19.533911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064865, 38.050228, 19.353628>,  <36.472195, 37.731915, 19.716125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064865, 38.050228, 19.353628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064461, 37.667297, 19.238031>,  <37.064217, 37.437538, 19.168673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064461, 37.667297, 19.238031>,  <37.064865, 38.050228, 19.353628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064461, 37.667297, 19.238031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193768, 0.283328, -0.939244,
		0.981047, -0.056948, 0.185213,
		-0.001012, -0.957330, -0.288993,
		37.064156, 37.380096, 19.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741730, 37.986931, 18.973011>,  <37.064865, 38.050228, 19.353628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741730, 37.986931, 18.973011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503754, 37.684887, 18.862841>,  <37.360970, 37.503662, 18.796740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503754, 37.684887, 18.862841>,  <37.741730, 37.986931, 18.973011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503754, 37.684887, 18.862841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338094, 0.075774, -0.938057,
		0.729205, -0.651206, 0.210216,
		-0.594940, -0.755108, -0.275424,
		37.325272, 37.458355, 18.780214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122093, 37.542744, 18.560745>,  <37.741730, 37.986931, 18.973011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122093, 37.542744, 18.560745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749649, 37.423946, 18.476061>,  <37.526180, 37.352669, 18.425249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749649, 37.423946, 18.476061>,  <38.122093, 37.542744, 18.560745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749649, 37.423946, 18.476061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191626, 0.095544, -0.976806,
		0.310338, -0.950086, -0.032050,
		-0.931112, -0.296999, -0.211713,
		37.470314, 37.334846, 18.412548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225994, 37.149986, 17.951347>,  <38.122093, 37.542744, 18.560745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225994, 37.149986, 17.951347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833443, 37.224457, 17.970255>,  <37.597912, 37.269138, 17.981600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833443, 37.224457, 17.970255>,  <38.225994, 37.149986, 17.951347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833443, 37.224457, 17.970255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018895, 0.338459, -0.940791,
		-0.191151, -0.922379, -0.335674,
		-0.981379, 0.186176, 0.047268,
		37.539028, 37.280308, 17.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895565, 36.690887, 17.342518>,  <38.225994, 37.149986, 17.951347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895565, 36.690887, 17.342518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645874, 36.989658, 17.434114>,  <37.496059, 37.168922, 17.489073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645874, 36.989658, 17.434114>,  <37.895565, 36.690887, 17.342518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645874, 36.989658, 17.434114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004501, 0.289668, -0.957117,
		-0.781232, -0.598486, -0.177456,
		-0.624224, 0.746931, 0.228991,
		37.458607, 37.213737, 17.502811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297382, 36.676479, 16.900522>,  <37.895565, 36.690887, 17.342518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297382, 36.676479, 16.900522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303635, 37.061203, 17.009829>,  <37.307384, 37.292038, 17.075413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303635, 37.061203, 17.009829>,  <37.297382, 36.676479, 16.900522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303635, 37.061203, 17.009829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111366, 0.273273, -0.955468,
		-0.993657, -0.015497, 0.111385,
		0.015632, 0.961812, 0.273265,
		37.308323, 37.349747, 17.091808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654430, 36.983406, 16.687696>,  <37.297382, 36.676479, 16.900522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654430, 36.983406, 16.687696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970882, 37.226376, 16.658976>,  <37.160755, 37.372158, 16.641743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970882, 37.226376, 16.658976>,  <36.654430, 36.983406, 16.687696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970882, 37.226376, 16.658976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143479, 0.070180, -0.987162,
		-0.594583, 0.791275, 0.142673,
		0.791129, 0.607420, -0.071803,
		37.208221, 37.408600, 16.637434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110012, 36.904469, 16.152962>,  <36.654430, 36.983406, 16.687696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110012, 36.904469, 16.152962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741508, 37.046463, 16.216551>,  <35.520409, 37.131660, 16.254705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741508, 37.046463, 16.216551>,  <36.110012, 36.904469, 16.152962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741508, 37.046463, 16.216551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228883, 0.825234, -0.516335,
		-0.314481, -0.439291, -0.841502,
		-0.921257, 0.354982, 0.158974,
		35.465130, 37.152958, 16.264242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738205, 36.775051, 16.752594>,  <36.110012, 36.904469, 16.152962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738205, 36.775051, 16.752594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362732, 36.908936, 16.719507>,  <35.137447, 36.989265, 16.699656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362732, 36.908936, 16.719507>,  <35.738205, 36.775051, 16.752594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362732, 36.908936, 16.719507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177024, -0.262009, 0.948691,
		0.295861, 0.905164, 0.305195,
		-0.938685, 0.334707, -0.082717,
		35.081127, 37.009346, 16.694693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615837, 37.342762, 17.230921>,  <35.738205, 36.775051, 16.752594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615837, 37.342762, 17.230921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270039, 37.156506, 17.155209>,  <35.062561, 37.044750, 17.109781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270039, 37.156506, 17.155209>,  <35.615837, 37.342762, 17.230921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270039, 37.156506, 17.155209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108938, -0.194052, 0.974924,
		-0.490698, 0.863434, 0.117030,
		-0.864493, -0.465644, -0.189281,
		35.010693, 37.016811, 17.098425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222549, 37.648560, 17.732473>,  <35.615837, 37.342762, 17.230921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222549, 37.648560, 17.732473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994690, 37.336430, 17.629255>,  <34.857975, 37.149151, 17.567324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994690, 37.336430, 17.629255>,  <35.222549, 37.648560, 17.732473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994690, 37.336430, 17.629255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286963, -0.105371, 0.952129,
		-0.770161, 0.616433, -0.163899,
		-0.569653, -0.780325, -0.258046,
		34.823795, 37.102333, 17.551842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548599, 37.817120, 17.992134>,  <35.222549, 37.648560, 17.732473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548599, 37.817120, 17.992134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539368, 37.419800, 17.946829>,  <34.533829, 37.181408, 17.919645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539368, 37.419800, 17.946829>,  <34.548599, 37.817120, 17.992134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539368, 37.419800, 17.946829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510546, -0.085696, 0.855570,
		-0.859541, 0.077571, -0.505146,
		-0.023079, -0.993297, -0.113263,
		34.532444, 37.121811, 17.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874275, 37.629284, 18.273119>,  <34.548599, 37.817120, 17.992134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874275, 37.629284, 18.273119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092415, 37.294163, 18.262751>,  <34.223297, 37.093090, 18.256529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092415, 37.294163, 18.262751>,  <33.874275, 37.629284, 18.273119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092415, 37.294163, 18.262751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374496, -0.271202, 0.886680,
		-0.749897, -0.473844, -0.461656,
		0.545351, -0.837808, -0.025921,
		34.256020, 37.042820, 18.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441338, 37.074310, 18.439894>,  <33.874275, 37.629284, 18.273119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441338, 37.074310, 18.439894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810932, 36.964310, 18.546198>,  <34.032688, 36.898312, 18.609980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810932, 36.964310, 18.546198>,  <33.441338, 37.074310, 18.439894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810932, 36.964310, 18.546198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310839, -0.135217, 0.940795,
		-0.222786, -0.951887, -0.210420,
		0.923983, -0.275003, 0.265759,
		34.088127, 36.881809, 18.625925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435619, 36.387669, 18.764471>,  <33.441338, 37.074310, 18.439894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435619, 36.387669, 18.764471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.785229, 36.547092, 18.875628>,  <33.994995, 36.642746, 18.942322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.785229, 36.547092, 18.875628>,  <33.435619, 36.387669, 18.764471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785229, 36.547092, 18.875628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201552, -0.223000, 0.953754,
		0.442100, -0.889618, -0.114577,
		0.874028, 0.398561, 0.277893,
		34.047436, 36.666660, 18.958996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789845, 36.028481, 19.256378>,  <33.435619, 36.387669, 18.764471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789845, 36.028481, 19.256378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034859, 36.336807, 19.326405>,  <34.181866, 36.521801, 19.368422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034859, 36.336807, 19.326405>,  <33.789845, 36.028481, 19.256378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034859, 36.336807, 19.326405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151922, -0.332155, 0.930910,
		0.775708, -0.543616, -0.320560,
		0.612533, 0.770814, 0.175068,
		34.218620, 36.568050, 19.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309757, 35.706779, 19.665508>,  <33.789845, 36.028481, 19.256378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309757, 35.706779, 19.665508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338207, 36.099533, 19.735756>,  <34.355278, 36.335186, 19.777905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338207, 36.099533, 19.735756>,  <34.309757, 35.706779, 19.665508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338207, 36.099533, 19.735756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390641, -0.189424, 0.900843,
		0.917791, 0.004530, -0.397038,
		0.071127, 0.981885, 0.175621,
		34.359547, 36.394100, 19.788443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940281, 35.804333, 19.999233>,  <34.309757, 35.706779, 19.665508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940281, 35.804333, 19.999233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721291, 36.127964, 20.084700>,  <34.589897, 36.322144, 20.135979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721291, 36.127964, 20.084700>,  <34.940281, 35.804333, 19.999233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721291, 36.127964, 20.084700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229014, -0.100718, 0.968199,
		0.804872, 0.579002, -0.130150,
		-0.547480, 0.809082, 0.213664,
		34.557045, 36.370689, 20.148800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391705, 36.192322, 20.362583>,  <34.940281, 35.804333, 19.999233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391705, 36.192322, 20.362583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016258, 36.299721, 20.449219>,  <34.790989, 36.364159, 20.501200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016258, 36.299721, 20.449219>,  <35.391705, 36.192322, 20.362583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016258, 36.299721, 20.449219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162294, -0.210331, 0.964065,
		0.304403, 0.940037, 0.153844,
		-0.938616, 0.268497, 0.216588,
		34.734673, 36.380268, 20.514194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481247, 36.656521, 20.942190>,  <35.391705, 36.192322, 20.362583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481247, 36.656521, 20.942190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115955, 36.493568, 20.939253>,  <34.896782, 36.395798, 20.937490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115955, 36.493568, 20.939253>,  <35.481247, 36.656521, 20.942190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115955, 36.493568, 20.939253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068600, -0.171498, 0.982793,
		-0.401628, 0.897013, 0.184563,
		-0.913230, -0.407378, -0.007343,
		34.841988, 36.371353, 20.937050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155415, 36.914185, 21.535362>,  <35.481247, 36.656521, 20.942190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155415, 36.914185, 21.535362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915321, 36.612389, 21.429180>,  <34.771267, 36.431313, 21.365471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915321, 36.612389, 21.429180>,  <35.155415, 36.914185, 21.535362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915321, 36.612389, 21.429180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043807, -0.300380, 0.952813,
		-0.798626, 0.583536, 0.147246,
		-0.600231, -0.754491, -0.265454,
		34.735252, 36.386040, 21.349545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535454, 36.977509, 22.049511>,  <35.155415, 36.914185, 21.535362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535454, 36.977509, 22.049511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489666, 36.605579, 21.909609>,  <34.462193, 36.382423, 21.825668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489666, 36.605579, 21.909609>,  <34.535454, 36.977509, 22.049511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489666, 36.605579, 21.909609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113023, -0.361972, 0.925312,
		-0.986976, 0.066393, 0.146528,
		-0.114474, -0.929821, -0.349754,
		34.455322, 36.326633, 21.804682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092991, 36.658092, 22.451532>,  <34.535454, 36.977509, 22.049511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092991, 36.658092, 22.451532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305069, 36.360443, 22.288963>,  <34.432316, 36.181854, 22.191422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305069, 36.360443, 22.288963>,  <34.092991, 36.658092, 22.451532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305069, 36.360443, 22.288963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149290, -0.389920, 0.908666,
		-0.834628, -0.542447, -0.095645,
		0.530197, -0.744119, -0.406420,
		34.464127, 36.137207, 22.167038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783897, 36.149364, 22.748745>,  <34.092991, 36.658092, 22.451532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783897, 36.149364, 22.748745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140339, 36.012634, 22.629354>,  <34.354202, 35.930595, 22.557720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140339, 36.012634, 22.629354>,  <33.783897, 36.149364, 22.748745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140339, 36.012634, 22.629354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137813, -0.422813, 0.895677,
		-0.432374, -0.839272, -0.329659,
		0.891101, -0.341836, -0.298476,
		34.407669, 35.910084, 22.539812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754738, 35.300529, 22.788954>,  <33.783897, 36.149364, 22.748745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754738, 35.300529, 22.788954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125069, 35.447693, 22.823593>,  <34.347267, 35.535988, 22.844378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125069, 35.447693, 22.823593>,  <33.754738, 35.300529, 22.788954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125069, 35.447693, 22.823593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144643, -0.556566, 0.818116,
		0.349186, -0.744904, -0.568496,
		0.925822, 0.367904, 0.086600,
		34.402817, 35.558064, 22.849573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124912, 34.704201, 22.930727>,  <33.754738, 35.300529, 22.788954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124912, 34.704201, 22.930727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349041, 35.019707, 23.031834>,  <34.483517, 35.209011, 23.092497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349041, 35.019707, 23.031834>,  <34.124912, 34.704201, 22.930727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349041, 35.019707, 23.031834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148465, -0.395872, 0.906225,
		0.814861, -0.470250, -0.338920,
		0.560322, 0.788765, 0.252765,
		34.517136, 35.256336, 23.107662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658218, 34.284847, 23.282423>,  <34.124912, 34.704201, 22.930727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658218, 34.284847, 23.282423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675835, 34.669601, 23.390381>,  <34.686405, 34.900452, 23.455154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675835, 34.669601, 23.390381>,  <34.658218, 34.284847, 23.282423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675835, 34.669601, 23.390381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196808, -0.273216, 0.941605,
		0.979452, 0.011644, -0.201340,
		0.044045, 0.961882, 0.269894,
		34.689049, 34.958168, 23.471350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266338, 34.363216, 23.726128>,  <34.658218, 34.284847, 23.282423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266338, 34.363216, 23.726128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070778, 34.697235, 23.827063>,  <34.953442, 34.897648, 23.887625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070778, 34.697235, 23.827063>,  <35.266338, 34.363216, 23.726128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070778, 34.697235, 23.827063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385243, -0.052854, 0.921300,
		0.782667, 0.547633, -0.295856,
		-0.488897, 0.835048, 0.252339,
		34.924110, 34.947750, 23.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.147522, 36.347168, 27.322855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777439, 36.262352, 27.448730>,  <39.555389, 36.211464, 27.524256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777439, 36.262352, 27.448730>,  <40.147522, 36.347168, 27.322855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777439, 36.262352, 27.448730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269218, 0.217631, 0.938168,
		-0.267412, 0.952721, -0.144270,
		-0.925210, -0.212037, 0.314687,
		39.499878, 36.198742, 27.543137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955009, 36.838455, 27.798883>,  <40.147522, 36.347168, 27.322855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955009, 36.838455, 27.798883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699654, 36.538834, 27.869740>,  <39.546440, 36.359062, 27.912252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699654, 36.538834, 27.869740>,  <39.955009, 36.838455, 27.798883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699654, 36.538834, 27.869740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084279, 0.160729, 0.983394,
		-0.765086, 0.642717, -0.039478,
		-0.638389, -0.749054, 0.177139,
		39.508137, 36.314117, 27.922882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629105, 37.069435, 28.378855>,  <39.955009, 36.838455, 27.798883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629105, 37.069435, 28.378855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524349, 36.683395, 28.377949>,  <39.461498, 36.451771, 28.377405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524349, 36.683395, 28.377949>,  <39.629105, 37.069435, 28.378855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524349, 36.683395, 28.377949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091052, 0.022369, 0.995595,
		-0.960794, 0.260938, -0.093732,
		-0.261885, -0.965096, -0.002267,
		39.445782, 36.393867, 28.377268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989723, 37.032581, 28.769360>,  <39.629105, 37.069435, 28.378855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989723, 37.032581, 28.769360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.182861, 36.682343, 28.763845>,  <39.298744, 36.472198, 28.760536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.182861, 36.682343, 28.763845>,  <38.989723, 37.032581, 28.769360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182861, 36.682343, 28.763845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023464, -0.002802, 0.999721,
		-0.875390, -0.483036, 0.019192,
		0.482847, -0.875596, -0.013787,
		39.327717, 36.419662, 28.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557957, 36.526249, 29.164467>,  <38.989723, 37.032581, 28.769360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557957, 36.526249, 29.164467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934326, 36.391563, 29.178772>,  <39.160149, 36.310753, 29.187355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934326, 36.391563, 29.178772>,  <38.557957, 36.526249, 29.164467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934326, 36.391563, 29.178772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097375, -0.167924, 0.980979,
		-0.324304, -0.926512, -0.190792,
		0.940928, -0.336714, 0.035761,
		39.216606, 36.290550, 29.189501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451912, 35.911369, 29.549562>,  <38.557957, 36.526249, 29.164467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451912, 35.911369, 29.549562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846039, 35.976215, 29.570959>,  <39.082516, 36.015121, 29.583797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846039, 35.976215, 29.570959>,  <38.451912, 35.911369, 29.549562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846039, 35.976215, 29.570959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043165, -0.066561, 0.996848,
		0.165163, -0.984525, -0.058587,
		0.985322, 0.162114, 0.053490,
		39.141636, 36.024849, 29.587006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765934, 35.484386, 30.121555>,  <38.451912, 35.911369, 29.549562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765934, 35.484386, 30.121555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079407, 35.725262, 30.060612>,  <39.267490, 35.869785, 30.024046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079407, 35.725262, 30.060612>,  <38.765934, 35.484386, 30.121555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079407, 35.725262, 30.060612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261599, -0.097491, 0.960240,
		0.563389, -0.792381, -0.233933,
		0.783682, 0.602186, -0.152361,
		39.314510, 35.905918, 30.014904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288521, 35.199909, 30.518988>,  <38.765934, 35.484386, 30.121555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288521, 35.199909, 30.518988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389446, 35.584538, 30.475683>,  <39.450001, 35.815315, 30.449701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389446, 35.584538, 30.475683>,  <39.288521, 35.199909, 30.518988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389446, 35.584538, 30.475683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391503, 0.000871, 0.920176,
		0.884908, -0.274558, -0.376238,
		0.252314, 0.961570, -0.108261,
		39.465141, 35.873009, 30.443205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974907, 35.256470, 30.900045>,  <39.288521, 35.199909, 30.518988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974907, 35.256470, 30.900045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849445, 35.634235, 30.860649>,  <39.774170, 35.860897, 30.837011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849445, 35.634235, 30.860649>,  <39.974907, 35.256470, 30.900045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849445, 35.634235, 30.860649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342333, 0.209218, 0.915989,
		0.885680, 0.253588, -0.388927,
		-0.313654, 0.944416, -0.098489,
		39.755348, 35.917561, 30.831102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579460, 35.660393, 31.143702>,  <39.974907, 35.256470, 30.900045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579460, 35.660393, 31.143702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230221, 35.853912, 31.167828>,  <40.020676, 35.970024, 31.182302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230221, 35.853912, 31.167828>,  <40.579460, 35.660393, 31.143702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230221, 35.853912, 31.167828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246924, 0.332123, 0.910342,
		0.420392, 0.809710, -0.409438,
		-0.873097, 0.483801, 0.060315,
		39.968292, 35.999054, 31.185923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713314, 36.363647, 31.338873>,  <40.579460, 35.660393, 31.143702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713314, 36.363647, 31.338873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339321, 36.300087, 31.465712>,  <40.114925, 36.261951, 31.541815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339321, 36.300087, 31.465712>,  <40.713314, 36.363647, 31.338873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339321, 36.300087, 31.465712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248813, 0.343289, 0.905674,
		-0.252770, 0.925690, -0.281433,
		-0.934987, -0.158903, 0.317096,
		40.058826, 36.252415, 31.560841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686436, 36.706696, 31.956970>,  <40.713314, 36.363647, 31.338873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686436, 36.706696, 31.956970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341171, 36.508320, 31.994904>,  <40.134010, 36.389294, 32.017662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341171, 36.508320, 31.994904>,  <40.686436, 36.706696, 31.956970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341171, 36.508320, 31.994904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048491, 0.268369, 0.962095,
		-0.502589, 0.825848, -0.255695,
		-0.863165, -0.495937, 0.094834,
		40.082222, 36.359539, 32.023354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188797, 37.118031, 32.334484>,  <40.686436, 36.706696, 31.956970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188797, 37.118031, 32.334484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 36.757435, 32.389935>,  <39.926395, 36.541077, 32.423206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024796, 36.757435, 32.389935>,  <40.188797, 37.118031, 32.334484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024796, 36.757435, 32.389935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185604, 0.231274, 0.955020,
		-0.893000, 0.365832, -0.262142,
		-0.410003, -0.901487, 0.138627,
		39.901794, 36.486988, 32.431522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742115, 37.449863, 32.679829>,  <40.188797, 37.118031, 32.334484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742115, 37.449863, 32.679829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677841, 37.694939, 32.989357>,  <40.639278, 37.841984, 33.175072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677841, 37.694939, 32.989357>,  <40.742115, 37.449863, 32.679829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677841, 37.694939, 32.989357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221269, 0.741689, -0.633196,
		-0.961884, -0.272967, 0.016390,
		-0.160685, 0.612687, 0.773818,
		40.629635, 37.878746, 33.221504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099556, 37.706615, 32.812832>,  <40.742115, 37.449863, 32.679829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099556, 37.706615, 32.812832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373211, 37.972157, 32.933662>,  <40.537403, 38.131481, 33.006161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373211, 37.972157, 32.933662>,  <40.099556, 37.706615, 32.812832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373211, 37.972157, 32.933662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224182, 0.585518, -0.779045,
		-0.694044, 0.465255, 0.549400,
		0.684139, 0.663857, 0.302074,
		40.578453, 38.171314, 33.024284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734768, 38.370953, 32.719364>,  <40.099556, 37.706615, 32.812832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734768, 38.370953, 32.719364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124577, 38.460205, 32.728550>,  <40.358459, 38.513756, 32.734062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124577, 38.460205, 32.728550>,  <39.734768, 38.370953, 32.719364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124577, 38.460205, 32.728550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143674, 0.699560, -0.699982,
		-0.172253, 0.678845, 0.713792,
		0.974519, 0.223127, 0.022969,
		40.416931, 38.527142, 32.735439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700962, 38.974186, 32.466660>,  <39.734768, 38.370953, 32.719364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700962, 38.974186, 32.466660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097591, 38.924877, 32.450710>,  <40.335567, 38.895290, 32.441139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097591, 38.924877, 32.450710>,  <39.700962, 38.974186, 32.466660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097591, 38.924877, 32.450710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065393, 0.741865, -0.667353,
		0.111845, 0.659121, 0.743674,
		0.991572, -0.123271, -0.039872,
		40.395061, 38.887897, 32.438747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059029, 39.594276, 32.547749>,  <39.700962, 38.974186, 32.466660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059029, 39.594276, 32.547749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332294, 39.372189, 32.358002>,  <40.496254, 39.238937, 32.244152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332294, 39.372189, 32.358002>,  <40.059029, 39.594276, 32.547749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332294, 39.372189, 32.358002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018262, 0.636391, -0.771151,
		0.730039, 0.535483, 0.424618,
		0.683161, -0.555216, -0.474370,
		40.537243, 39.205624, 32.215691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611115, 39.996597, 32.269905>,  <40.059029, 39.594276, 32.547749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611115, 39.996597, 32.269905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653389, 39.656090, 32.064316>,  <40.678753, 39.451786, 31.940962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653389, 39.656090, 32.064316>,  <40.611115, 39.996597, 32.269905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653389, 39.656090, 32.064316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007145, 0.517503, -0.855651,
		0.994374, 0.086757, 0.060774,
		0.105684, -0.851272, -0.513972,
		40.685093, 39.400707, 31.910124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065842, 40.126030, 31.736818>,  <40.611115, 39.996597, 32.269905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065842, 40.126030, 31.736818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822075, 39.829132, 31.625336>,  <40.675816, 39.650993, 31.558447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822075, 39.829132, 31.625336>,  <41.065842, 40.126030, 31.736818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822075, 39.829132, 31.625336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074953, 0.403886, -0.911734,
		0.789297, -0.534740, -0.301770,
		-0.609421, -0.742247, -0.278705,
		40.639248, 39.606457, 31.541723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208542, 40.206799, 31.010176>,  <41.065842, 40.126030, 31.736818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208542, 40.206799, 31.010176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911140, 39.942608, 31.052073>,  <40.732700, 39.784096, 31.077211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911140, 39.942608, 31.052073>,  <41.208542, 40.206799, 31.010176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911140, 39.942608, 31.052073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061372, -0.088575, -0.994177,
		0.665906, -0.745606, 0.025322,
		-0.743507, -0.660474, 0.104742,
		40.688087, 39.744465, 31.083494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359783, 39.562611, 30.671240>,  <41.208542, 40.206799, 31.010176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359783, 39.562611, 30.671240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966183, 39.632347, 30.685966>,  <40.730022, 39.674191, 30.694803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966183, 39.632347, 30.685966>,  <41.359783, 39.562611, 30.671240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966183, 39.632347, 30.685966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069352, -0.184381, -0.980405,
		-0.164122, -0.967271, 0.193521,
		-0.983999, 0.174327, 0.036821,
		40.670982, 39.684650, 30.697012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016182, 39.120335, 30.131502>,  <41.359783, 39.562611, 30.671240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016182, 39.120335, 30.131502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769863, 39.422924, 30.219641>,  <40.622074, 39.604477, 30.272524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769863, 39.422924, 30.219641>,  <41.016182, 39.120335, 30.131502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769863, 39.422924, 30.219641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353887, -0.015681, -0.935157,
		-0.703962, -0.653841, 0.277361,
		-0.615793, 0.756469, 0.220347,
		40.585125, 39.649864, 30.285746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399895, 38.886940, 29.880045>,  <41.016182, 39.120335, 30.131502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399895, 38.886940, 29.880045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339214, 39.280930, 29.913042>,  <40.302807, 39.517326, 29.932840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339214, 39.280930, 29.913042>,  <40.399895, 38.886940, 29.880045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339214, 39.280930, 29.913042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353575, 0.023859, -0.935102,
		-0.923023, -0.171020, 0.344644,
		-0.151698, 0.984978, 0.082491,
		40.293705, 39.576424, 29.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843861, 38.975052, 29.448214>,  <40.399895, 38.886940, 29.880045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843861, 38.975052, 29.448214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.971630, 39.350571, 29.499794>,  <40.048290, 39.575882, 29.530743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.971630, 39.350571, 29.499794>,  <39.843861, 38.975052, 29.448214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971630, 39.350571, 29.499794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209740, 0.202748, -0.956505,
		-0.924110, 0.278480, 0.261666,
		0.319420, 0.938798, 0.128953,
		40.067455, 39.632210, 29.538481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286022, 39.525669, 29.265797>,  <39.843861, 38.975052, 29.448214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286022, 39.525669, 29.265797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651947, 39.678268, 29.212770>,  <39.871502, 39.769829, 29.180954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651947, 39.678268, 29.212770>,  <39.286022, 39.525669, 29.265797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651947, 39.678268, 29.212770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181777, 0.095821, -0.978660,
		-0.360654, 0.919390, 0.157006,
		0.914814, 0.381498, -0.132566,
		39.926392, 39.792717, 29.173000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169022, 40.126400, 28.824793>,  <39.286022, 39.525669, 29.265797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169022, 40.126400, 28.824793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551979, 40.030937, 28.759743>,  <39.781754, 39.973660, 28.720713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551979, 40.030937, 28.759743>,  <39.169022, 40.126400, 28.824793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551979, 40.030937, 28.759743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177240, -0.040974, -0.983314,
		0.228009, 0.970240, -0.081528,
		0.957391, -0.238655, -0.162623,
		39.839195, 39.959339, 28.710957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314545, 40.503048, 28.277618>,  <39.169022, 40.126400, 28.824793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314545, 40.503048, 28.277618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617981, 40.242439, 28.280617>,  <39.800041, 40.086075, 28.282415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617981, 40.242439, 28.280617>,  <39.314545, 40.503048, 28.277618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617981, 40.242439, 28.280617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037398, 0.032054, -0.998786,
		0.650495, 0.757949, 0.048682,
		0.758589, -0.651526, 0.007495,
		39.845558, 40.046982, 28.282866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129631, 41.282444, 28.218874>,  <39.314545, 40.503048, 28.277618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129631, 41.282444, 28.218874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755276, 41.166737, 28.138433>,  <38.530663, 41.097313, 28.090170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755276, 41.166737, 28.138433>,  <39.129631, 41.282444, 28.218874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755276, 41.166737, 28.138433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132464, -0.240005, 0.961691,
		-0.326454, 0.926672, 0.186300,
		-0.935885, -0.289270, -0.201102,
		38.474510, 41.079956, 28.078102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763420, 41.654144, 28.724920>,  <39.129631, 41.282444, 28.218874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763420, 41.654144, 28.724920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505371, 41.370182, 28.611889>,  <38.350544, 41.199802, 28.544069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505371, 41.370182, 28.611889>,  <38.763420, 41.654144, 28.724920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505371, 41.370182, 28.611889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245117, -0.158003, 0.956532,
		-0.723697, 0.686343, -0.072079,
		-0.645120, -0.709907, -0.282580,
		38.311836, 41.157211, 28.527115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182873, 41.850765, 29.114790>,  <38.763420, 41.654144, 28.724920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182873, 41.850765, 29.114790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168903, 41.471451, 28.988594>,  <38.160522, 41.243862, 28.912876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168903, 41.471451, 28.988594>,  <38.182873, 41.850765, 29.114790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168903, 41.471451, 28.988594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491590, -0.258550, 0.831559,
		-0.870126, 0.184133, -0.457138,
		-0.034925, -0.948286, -0.315489,
		38.158424, 41.186966, 28.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509293, 41.604862, 29.328812>,  <38.182873, 41.850765, 29.114790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509293, 41.604862, 29.328812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753098, 41.292503, 29.274126>,  <37.899380, 41.105087, 29.241314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753098, 41.292503, 29.274126>,  <37.509293, 41.604862, 29.328812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753098, 41.292503, 29.274126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364068, -0.428909, 0.826736,
		-0.704233, -0.454135, -0.545726,
		0.609517, -0.780896, -0.136715,
		37.935951, 41.058235, 29.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938622, 41.000732, 29.448189>,  <37.509293, 41.604862, 29.328812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938622, 41.000732, 29.448189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293365, 40.819744, 29.485600>,  <37.506210, 40.711151, 29.508045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293365, 40.819744, 29.485600>,  <36.938622, 41.000732, 29.448189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293365, 40.819744, 29.485600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297345, -0.403997, 0.865085,
		-0.353639, -0.795021, -0.492829,
		0.886863, -0.452468, 0.093527,
		37.559425, 40.684002, 29.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817333, 40.377281, 29.664593>,  <36.938622, 41.000732, 29.448189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817333, 40.377281, 29.664593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192474, 40.450195, 29.782717>,  <37.417557, 40.493946, 29.853592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192474, 40.450195, 29.782717>,  <36.817333, 40.377281, 29.664593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192474, 40.450195, 29.782717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243078, -0.262284, 0.933874,
		0.247690, -0.947617, -0.201672,
		0.937850, 0.182289, 0.295310,
		37.473831, 40.504883, 29.871309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922344, 39.863461, 30.142620>,  <36.817333, 40.377281, 29.664593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922344, 39.863461, 30.142620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213421, 40.127705, 30.216448>,  <37.388065, 40.286251, 30.260744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213421, 40.127705, 30.216448>,  <36.922344, 39.863461, 30.142620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213421, 40.127705, 30.216448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049806, -0.217486, 0.974792,
		0.684099, -0.718536, -0.125359,
		0.727687, 0.660610, 0.184569,
		37.431728, 40.325886, 30.271818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529358, 39.511799, 30.672342>,  <36.922344, 39.863461, 30.142620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529358, 39.511799, 30.672342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531685, 39.911644, 30.683271>,  <37.533081, 40.151550, 30.689829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531685, 39.911644, 30.683271>,  <37.529358, 39.511799, 30.672342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531685, 39.911644, 30.683271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, -0.027285, 0.999605,
		0.999961, -0.005998, 0.006557,
		0.005816, 0.999610, 0.027324,
		37.533428, 40.211529, 30.691469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929543, 39.617260, 31.183880>,  <37.529358, 39.511799, 30.672342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929543, 39.617260, 31.183880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731918, 39.962528, 31.142227>,  <37.613342, 40.169689, 31.117235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731918, 39.962528, 31.142227>,  <37.929543, 39.617260, 31.183880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731918, 39.962528, 31.142227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063836, 0.083434, 0.994467,
		0.867078, 0.497979, 0.013879,
		-0.494065, 0.863166, -0.104133,
		37.583698, 40.221478, 31.110987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120079, 39.936665, 31.788643>,  <37.929543, 39.617260, 31.183880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120079, 39.936665, 31.788643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853294, 40.198967, 31.647137>,  <37.693222, 40.356346, 31.562233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853294, 40.198967, 31.647137>,  <38.120079, 39.936665, 31.788643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853294, 40.198967, 31.647137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222153, 0.278182, 0.934485,
		0.711203, 0.701855, -0.039860,
		-0.666962, 0.655754, -0.353763,
		37.653206, 40.395695, 31.541008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328732, 40.671581, 31.940741>,  <38.120079, 39.936665, 31.788643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328732, 40.671581, 31.940741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930019, 40.648037, 31.918976>,  <37.690792, 40.633911, 31.905916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930019, 40.648037, 31.918976>,  <38.328732, 40.671581, 31.940741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930019, 40.648037, 31.918976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070434, 0.319137, 0.945087,
		-0.038259, 0.945879, -0.322256,
		-0.996782, -0.058856, -0.054412,
		37.630985, 40.630379, 31.902653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009773, 41.266674, 32.326118>,  <38.328732, 40.671581, 31.940741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009773, 41.266674, 32.326118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696278, 41.018795, 32.309490>,  <37.508179, 40.870068, 32.299515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696278, 41.018795, 32.309490>,  <38.009773, 41.266674, 32.326118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696278, 41.018795, 32.309490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225856, 0.222016, 0.948524,
		-0.578567, 0.752785, -0.313965,
		-0.783740, -0.619696, -0.041569,
		37.461155, 40.832886, 32.297020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.053986, 42.191387, 24.400097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904469, 41.839169, 24.516655>,  <37.814758, 41.627838, 24.586590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904469, 41.839169, 24.516655>,  <38.053986, 42.191387, 24.400097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904469, 41.839169, 24.516655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160096, 0.248201, 0.955387,
		-0.913591, 0.403768, 0.048197,
		-0.373792, -0.880550, 0.291396,
		37.792332, 41.575005, 24.604074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733299, 42.379650, 24.953241>,  <38.053986, 42.191387, 24.400097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733299, 42.379650, 24.953241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755627, 41.983128, 25.000885>,  <37.769024, 41.745213, 25.029472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755627, 41.983128, 25.000885>,  <37.733299, 42.379650, 24.953241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755627, 41.983128, 25.000885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130916, 0.125533, 0.983413,
		-0.989820, -0.039302, 0.136786,
		0.055822, -0.991310, 0.119110,
		37.772373, 41.685734, 25.036617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258427, 42.140339, 25.381451>,  <37.733299, 42.379650, 24.953241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258427, 42.140339, 25.381451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530346, 41.847042, 25.387596>,  <37.693497, 41.671062, 25.391283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530346, 41.847042, 25.387596>,  <37.258427, 42.140339, 25.381451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530346, 41.847042, 25.387596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105536, -0.077071, 0.991424,
		-0.725769, -0.675587, -0.129776,
		0.679795, -0.733241, 0.015363,
		37.734283, 41.627071, 25.392204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042587, 41.754089, 25.910912>,  <37.258427, 42.140339, 25.381451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042587, 41.754089, 25.910912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418621, 41.629593, 25.855247>,  <37.644241, 41.554893, 25.821848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418621, 41.629593, 25.855247>,  <37.042587, 41.754089, 25.910912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418621, 41.629593, 25.855247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052970, -0.269884, 0.961435,
		-0.336799, -0.911202, -0.237228,
		0.940085, -0.311244, -0.139163,
		37.700645, 41.536221, 25.813499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177525, 41.072094, 26.196548>,  <37.042587, 41.754089, 25.910912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177525, 41.072094, 26.196548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557732, 41.192951, 26.167652>,  <37.785858, 41.265465, 26.150314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557732, 41.192951, 26.167652>,  <37.177525, 41.072094, 26.196548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557732, 41.192951, 26.167652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133632, -0.187738, 0.973086,
		0.280447, -0.934593, -0.218825,
		0.950521, 0.302141, -0.072241,
		37.842888, 41.283592, 26.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658688, 40.654480, 26.496105>,  <37.177525, 41.072094, 26.196548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658688, 40.654480, 26.496105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884480, 40.984657, 26.495058>,  <38.019955, 41.182762, 26.494431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884480, 40.984657, 26.495058>,  <37.658688, 40.654480, 26.496105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884480, 40.984657, 26.495058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327319, -0.220926, 0.918724,
		0.757776, -0.519458, -0.394891,
		0.564480, 0.825443, -0.002616,
		38.053825, 41.232288, 26.494274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368820, 40.460922, 26.606211>,  <37.658688, 40.654480, 26.496105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368820, 40.460922, 26.606211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285530, 40.834667, 26.721878>,  <38.235558, 41.058914, 26.791279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285530, 40.834667, 26.721878>,  <38.368820, 40.460922, 26.606211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285530, 40.834667, 26.721878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232807, -0.239803, 0.942494,
		0.949971, 0.263569, -0.167592,
		-0.208223, 0.934358, 0.289167,
		38.223064, 41.114975, 26.808628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835339, 40.483433, 27.074064>,  <38.368820, 40.460922, 26.606211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835339, 40.483433, 27.074064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590233, 40.793434, 27.135883>,  <38.443169, 40.979435, 27.172976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590233, 40.793434, 27.135883>,  <38.835339, 40.483433, 27.074064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590233, 40.793434, 27.135883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143348, -0.083315, 0.986159,
		0.777153, 0.626440, -0.060043,
		-0.612767, 0.775004, 0.154548,
		38.406403, 41.025936, 27.182247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200020, 40.992241, 27.553850>,  <38.835339, 40.483433, 27.074064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200020, 40.992241, 27.553850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803535, 41.040829, 27.574820>,  <38.565643, 41.069981, 27.587400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803535, 41.040829, 27.574820>,  <39.200020, 40.992241, 27.553850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803535, 41.040829, 27.574820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036723, -0.128050, 0.991088,
		0.127102, 0.984301, 0.122464,
		-0.991210, 0.121472, 0.052422,
		38.506172, 41.077271, 27.590546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837936, 40.693146, 27.610981>,  <39.200020, 40.992241, 27.553850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837936, 40.693146, 27.610981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920216, 40.327812, 27.751558>,  <39.969585, 40.108612, 27.835905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920216, 40.327812, 27.751558>,  <39.837936, 40.693146, 27.610981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920216, 40.327812, 27.751558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110604, -0.335123, -0.935660,
		0.972344, 0.231338, 0.032083,
		0.205702, -0.913332, 0.351442,
		39.981926, 40.053814, 27.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502216, 40.524895, 27.337574>,  <39.837936, 40.693146, 27.610981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502216, 40.524895, 27.337574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296242, 40.189320, 27.408022>,  <40.172657, 39.987972, 27.450291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296242, 40.189320, 27.408022>,  <40.502216, 40.524895, 27.337574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296242, 40.189320, 27.408022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079229, -0.251149, -0.964701,
		0.853559, -0.482806, 0.195795,
		-0.514937, -0.838941, 0.176118,
		40.141762, 39.937637, 27.460857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877514, 40.008072, 27.054834>,  <40.502216, 40.524895, 27.337574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877514, 40.008072, 27.054834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508430, 39.858997, 27.094244>,  <40.286980, 39.769550, 27.117889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508430, 39.858997, 27.094244>,  <40.877514, 40.008072, 27.054834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508430, 39.858997, 27.094244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020106, -0.301757, -0.953173,
		0.384968, -0.877522, 0.285928,
		-0.922711, -0.372690, 0.098523,
		40.231617, 39.747192, 27.123800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853622, 39.292171, 26.760265>,  <40.877514, 40.008072, 27.054834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853622, 39.292171, 26.760265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460915, 39.366329, 26.777069>,  <40.225292, 39.410824, 26.787151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460915, 39.366329, 26.777069>,  <40.853622, 39.292171, 26.760265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460915, 39.366329, 26.777069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142577, -0.571996, -0.807770,
		-0.125727, -0.799031, 0.587999,
		-0.981766, 0.185393, 0.042008,
		40.166386, 39.421947, 26.789671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457821, 38.702175, 26.823853>,  <40.853622, 39.292171, 26.760265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457821, 38.702175, 26.823853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210869, 38.943134, 26.621481>,  <40.062698, 39.087711, 26.500059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210869, 38.943134, 26.621481>,  <40.457821, 38.702175, 26.823853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210869, 38.943134, 26.621481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073145, -0.684300, -0.725523,
		-0.783260, -0.410915, 0.466533,
		-0.617377, 0.602397, -0.505928,
		40.025654, 39.123852, 26.469702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041779, 38.179199, 26.471039>,  <40.457821, 38.702175, 26.823853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041779, 38.179199, 26.471039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928635, 38.531506, 26.319122>,  <39.860748, 38.742889, 26.227972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928635, 38.531506, 26.319122>,  <40.041779, 38.179199, 26.471039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928635, 38.531506, 26.319122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189597, -0.439492, -0.878009,
		-0.940235, -0.176349, 0.291306,
		-0.282863, 0.880765, -0.379791,
		39.843777, 38.795734, 26.205185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542183, 37.980953, 25.992369>,  <40.041779, 38.179199, 26.471039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542183, 37.980953, 25.992369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660065, 38.347332, 25.883411>,  <39.730793, 38.567158, 25.818037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660065, 38.347332, 25.883411>,  <39.542183, 37.980953, 25.992369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660065, 38.347332, 25.883411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165655, -0.231767, -0.958562,
		-0.941120, 0.327618, 0.083427,
		0.294707, 0.915942, -0.272393,
		39.748478, 38.622116, 25.801693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002171, 38.230759, 25.469860>,  <39.542183, 37.980953, 25.992369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002171, 38.230759, 25.469860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342831, 38.435978, 25.427027>,  <39.547226, 38.559109, 25.401327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342831, 38.435978, 25.427027>,  <39.002171, 38.230759, 25.469860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342831, 38.435978, 25.427027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075558, -0.081988, -0.993765,
		-0.518630, 0.854434, -0.031060,
		0.851654, 0.513050, -0.107081,
		39.598328, 38.589893, 25.394903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846626, 38.712650, 24.941628>,  <39.002171, 38.230759, 25.469860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846626, 38.712650, 24.941628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246178, 38.694672, 24.947531>,  <39.485909, 38.683884, 24.951073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246178, 38.694672, 24.947531>,  <38.846626, 38.712650, 24.941628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246178, 38.694672, 24.947531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013702, -0.023740, -0.999624,
		0.045283, 0.998707, -0.023098,
		0.998880, -0.044950, 0.014759,
		39.545841, 38.681187, 24.951958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054485, 39.180580, 24.495752>,  <38.846626, 38.712650, 24.941628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054485, 39.180580, 24.495752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360729, 38.925053, 24.526066>,  <39.544476, 38.771736, 24.544254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360729, 38.925053, 24.526066>,  <39.054485, 39.180580, 24.495752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360729, 38.925053, 24.526066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080916, -0.021235, -0.996495,
		0.638192, 0.769062, 0.035434,
		0.765613, -0.638822, 0.075782,
		39.590412, 38.733406, 24.548800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494915, 39.450474, 24.067051>,  <39.054485, 39.180580, 24.495752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494915, 39.450474, 24.067051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653484, 39.084690, 24.099569>,  <39.748627, 38.865219, 24.119080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653484, 39.084690, 24.099569>,  <39.494915, 39.450474, 24.067051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653484, 39.084690, 24.099569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362878, 0.074738, -0.928835,
		0.843306, 0.397716, 0.361465,
		0.396428, -0.914460, 0.081295,
		39.772411, 38.810352, 24.123959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249752, 39.465294, 23.967030>,  <39.494915, 39.450474, 24.067051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249752, 39.465294, 23.967030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120232, 39.099472, 23.870073>,  <40.042519, 38.879978, 23.811899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120232, 39.099472, 23.870073>,  <40.249752, 39.465294, 23.967030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120232, 39.099472, 23.870073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368125, 0.114224, -0.922733,
		0.871573, -0.388008, 0.299683,
		-0.323797, -0.914551, -0.242390,
		40.023094, 38.825108, 23.797356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409523, 39.412910, 23.246273>,  <40.249752, 39.465294, 23.967030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409523, 39.412910, 23.246273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183693, 39.097061, 23.342400>,  <40.048195, 38.907551, 23.400076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183693, 39.097061, 23.342400>,  <40.409523, 39.412910, 23.246273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183693, 39.097061, 23.342400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051976, -0.256566, -0.965128,
		0.823746, -0.557375, 0.103808,
		-0.564572, -0.789625, 0.240315,
		40.014320, 38.860172, 23.414494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672817, 38.789871, 22.819941>,  <40.409523, 39.412910, 23.246273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672817, 38.789871, 22.819941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286278, 38.753288, 22.916115>,  <40.054356, 38.731339, 22.973820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286278, 38.753288, 22.916115>,  <40.672817, 38.789871, 22.819941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286278, 38.753288, 22.916115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234832, -0.067909, -0.969661,
		0.105014, -0.993490, 0.044146,
		-0.966347, -0.091461, 0.240435,
		39.996372, 38.725849, 22.988245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.681553, 37.849831, 23.688808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.998615, 38.092865, 23.708954>,  <33.188850, 38.238686, 23.721041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.998615, 38.092865, 23.708954>,  <32.681553, 37.849831, 23.688808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998615, 38.092865, 23.708954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061823, -0.162285, 0.984805,
		0.606531, -0.777495, -0.166199,
		0.792653, 0.607589, 0.050364,
		33.236412, 38.275143, 23.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225422, 37.382015, 24.069536>,  <32.681553, 37.849831, 23.688808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225422, 37.382015, 24.069536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347652, 37.761543, 24.101465>,  <33.420990, 37.989258, 24.120623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347652, 37.761543, 24.101465>,  <33.225422, 37.382015, 24.069536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347652, 37.761543, 24.101465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005256, -0.085512, 0.996323,
		0.952154, -0.304030, -0.031117,
		0.305573, 0.948817, 0.079822,
		33.439323, 38.046188, 24.125412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722694, 37.331604, 24.550077>,  <33.225422, 37.382015, 24.069536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722694, 37.331604, 24.550077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648544, 37.724632, 24.555702>,  <33.604053, 37.960449, 24.559076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648544, 37.724632, 24.555702>,  <33.722694, 37.331604, 24.550077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648544, 37.724632, 24.555702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169535, 0.017885, 0.985362,
		0.967932, 0.185048, -0.169895,
		-0.185378, 0.982567, 0.014060,
		33.592930, 38.019402, 24.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306469, 37.655525, 24.856440>,  <33.722694, 37.331604, 24.550077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306469, 37.655525, 24.856440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996410, 37.907318, 24.877977>,  <33.810375, 38.058395, 24.890900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996410, 37.907318, 24.877977>,  <34.306469, 37.655525, 24.856440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996410, 37.907318, 24.877977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056795, -0.015453, 0.998266,
		0.629226, 0.776859, -0.023773,
		-0.775145, 0.629485, 0.053845,
		33.763866, 38.096165, 24.894131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496502, 38.147675, 25.187067>,  <34.306469, 37.655525, 24.856440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496502, 38.147675, 25.187067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099495, 38.160774, 25.234121>,  <33.861290, 38.168636, 25.262354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099495, 38.160774, 25.234121>,  <34.496502, 38.147675, 25.187067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099495, 38.160774, 25.234121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113289, -0.112551, 0.987166,
		0.045573, 0.993106, 0.107998,
		-0.992516, 0.032753, 0.117638,
		33.801739, 38.170601, 25.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393620, 38.653080, 25.745028>,  <34.496502, 38.147675, 25.187067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393620, 38.653080, 25.745028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061134, 38.431255, 25.729328>,  <33.861641, 38.298161, 25.719908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061134, 38.431255, 25.729328>,  <34.393620, 38.653080, 25.745028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061134, 38.431255, 25.729328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027377, -0.111345, 0.993405,
		-0.555273, 0.824661, 0.107735,
		-0.831218, -0.554560, -0.039250,
		33.811768, 38.264889, 25.717554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024029, 38.870121, 26.153328>,  <34.393620, 38.653080, 25.745028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024029, 38.870121, 26.153328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.894096, 38.492489, 26.130730>,  <33.816135, 38.265907, 26.117170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.894096, 38.492489, 26.130730>,  <34.024029, 38.870121, 26.153328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894096, 38.492489, 26.130730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064772, -0.037389, 0.997199,
		-0.943550, 0.327584, -0.049005,
		-0.324835, -0.944082, -0.056497,
		33.796646, 38.209263, 26.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574093, 38.910255, 26.641790>,  <34.024029, 38.870121, 26.153328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574093, 38.910255, 26.641790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.628162, 38.520153, 26.571804>,  <33.660603, 38.286091, 26.529812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.628162, 38.520153, 26.571804>,  <33.574093, 38.910255, 26.641790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628162, 38.520153, 26.571804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028607, -0.180352, 0.983186,
		-0.990409, -0.127892, -0.052277,
		0.135170, -0.975252, -0.174964,
		33.668713, 38.227577, 26.519316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332565, 38.680790, 27.233156>,  <33.574093, 38.910255, 26.641790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332565, 38.680790, 27.233156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513832, 38.363358, 27.070736>,  <33.622593, 38.172897, 26.973284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513832, 38.363358, 27.070736>,  <33.332565, 38.680790, 27.233156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513832, 38.363358, 27.070736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110869, -0.401797, 0.908993,
		-0.884507, -0.456940, -0.094096,
		0.453163, -0.793578, -0.406052,
		33.649780, 38.125286, 26.948921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990360, 38.153698, 27.503351>,  <33.332565, 38.680790, 27.233156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990360, 38.153698, 27.503351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.335411, 37.993446, 27.379826>,  <33.542442, 37.897297, 27.305710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.335411, 37.993446, 27.379826>,  <32.990360, 38.153698, 27.503351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335411, 37.993446, 27.379826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136064, -0.404223, 0.904483,
		-0.487190, -0.822254, -0.294184,
		0.862631, -0.400628, -0.308813,
		33.594200, 37.873257, 27.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019810, 37.478241, 27.710159>,  <32.990360, 38.153698, 27.503351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019810, 37.478241, 27.710159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405006, 37.578358, 27.670156>,  <33.636124, 37.638428, 27.646154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.405006, 37.578358, 27.670156>,  <33.019810, 37.478241, 27.710159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405006, 37.578358, 27.670156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220916, -0.520383, 0.824862,
		0.154415, -0.816429, -0.556418,
		0.962991, 0.250292, -0.100007,
		33.693905, 37.653446, 27.640154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378666, 36.829189, 27.893497>,  <33.019810, 37.478241, 27.710159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378666, 36.829189, 27.893497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631912, 37.137173, 27.925303>,  <33.783859, 37.321964, 27.944386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631912, 37.137173, 27.925303>,  <33.378666, 36.829189, 27.893497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631912, 37.137173, 27.925303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309193, -0.345730, 0.885929,
		0.709622, -0.536311, -0.456954,
		0.633116, 0.769962, 0.079514,
		33.821846, 37.368160, 27.949158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949615, 36.609020, 28.272409>,  <33.378666, 36.829189, 27.893497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949615, 36.609020, 28.272409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015690, 36.999554, 28.328239>,  <34.055332, 37.233875, 28.361738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015690, 36.999554, 28.328239>,  <33.949615, 36.609020, 28.272409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015690, 36.999554, 28.328239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432534, -0.198897, 0.879406,
		0.886357, -0.084890, -0.455153,
		0.165181, 0.976337, 0.139576,
		34.065243, 37.292454, 28.370111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651901, 36.772396, 28.329041>,  <33.949615, 36.609020, 28.272409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651901, 36.772396, 28.329041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475155, 37.072617, 28.525579>,  <34.369106, 37.252750, 28.643503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475155, 37.072617, 28.525579>,  <34.651901, 36.772396, 28.329041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475155, 37.072617, 28.525579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514971, -0.236261, 0.824006,
		0.734548, 0.617129, -0.282119,
		-0.441864, 0.750555, 0.491348,
		34.342594, 37.297783, 28.672983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247932, 36.357986, 28.004408>,  <34.651901, 36.772396, 28.329041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247932, 36.357986, 28.004408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406528, 35.993324, 27.961185>,  <35.501686, 35.774525, 27.935251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406528, 35.993324, 27.961185>,  <35.247932, 36.357986, 28.004408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406528, 35.993324, 27.961185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293659, -0.014428, -0.955801,
		0.869805, 0.410696, -0.273437,
		0.396489, -0.911658, -0.108056,
		35.525475, 35.719826, 27.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514263, 36.314487, 27.305069>,  <35.247932, 36.357986, 28.004408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514263, 36.314487, 27.305069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520569, 35.925861, 27.399570>,  <35.524353, 35.692684, 27.456270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520569, 35.925861, 27.399570>,  <35.514263, 36.314487, 27.305069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520569, 35.925861, 27.399570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322094, -0.228622, -0.918688,
		0.946577, -0.061610, -0.316539,
		0.015768, -0.971564, 0.236253,
		35.525299, 35.634392, 27.470446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905251, 36.003689, 26.882683>,  <35.514263, 36.314487, 27.305069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905251, 36.003689, 26.882683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670040, 35.707962, 27.013910>,  <35.528915, 35.530525, 27.092648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670040, 35.707962, 27.013910>,  <35.905251, 36.003689, 26.882683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670040, 35.707962, 27.013910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008279, -0.400082, -0.916442,
		0.808800, -0.541608, 0.229138,
		-0.588026, -0.739321, 0.328070,
		35.493633, 35.486164, 27.112331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211662, 35.450325, 26.608559>,  <35.905251, 36.003689, 26.882683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211662, 35.450325, 26.608559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833199, 35.345219, 26.684170>,  <35.606121, 35.282154, 26.729536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833199, 35.345219, 26.684170>,  <36.211662, 35.450325, 26.608559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833199, 35.345219, 26.684170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058278, -0.436142, -0.897989,
		0.318402, -0.860660, 0.397348,
		-0.946163, -0.262764, 0.189026,
		35.549351, 35.266388, 26.740877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179806, 34.789215, 26.398993>,  <36.211662, 35.450325, 26.608559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179806, 34.789215, 26.398993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804855, 34.928383, 26.392275>,  <35.579887, 35.011883, 26.388245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804855, 34.928383, 26.392275>,  <36.179806, 34.789215, 26.398993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804855, 34.928383, 26.392275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116743, -0.359228, -0.925919,
		-0.328173, -0.865974, 0.377348,
		-0.937376, 0.347914, -0.016792,
		35.523643, 35.032757, 26.387236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800972, 34.240116, 26.022572>,  <36.179806, 34.789215, 26.398993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800972, 34.240116, 26.022572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590668, 34.580147, 26.010286>,  <35.464485, 34.784164, 26.002914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590668, 34.580147, 26.010286>,  <35.800972, 34.240116, 26.022572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590668, 34.580147, 26.010286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245295, -0.186088, -0.951421,
		-0.814499, -0.492684, 0.306357,
		-0.525759, 0.850079, -0.030715,
		35.432941, 34.835171, 26.001072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157440, 34.098274, 25.514862>,  <35.800972, 34.240116, 26.022572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157440, 34.098274, 25.514862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.086449, 34.489685, 25.556774>,  <35.043854, 34.724533, 25.581921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.086449, 34.489685, 25.556774>,  <35.157440, 34.098274, 25.514862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086449, 34.489685, 25.556774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366981, 0.032985, -0.929643,
		-0.913141, -0.203440, 0.353249,
		-0.177475, 0.978532, 0.104779,
		35.033207, 34.783245, 25.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426903, 34.293106, 25.352539>,  <35.157440, 34.098274, 25.514862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426903, 34.293106, 25.352539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669056, 34.603699, 25.282579>,  <34.814346, 34.790054, 25.240602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669056, 34.603699, 25.282579>,  <34.426903, 34.293106, 25.352539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669056, 34.603699, 25.282579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358354, 0.069688, -0.930982,
		-0.710699, 0.626277, 0.320442,
		0.605384, 0.776480, -0.174901,
		34.850670, 34.836643, 25.230108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046265, 34.845715, 24.966608>,  <34.426903, 34.293106, 25.352539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046265, 34.845715, 24.966608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424248, 34.939369, 24.875196>,  <34.651039, 34.995564, 24.820349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424248, 34.939369, 24.875196>,  <34.046265, 34.845715, 24.966608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424248, 34.939369, 24.875196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265814, 0.142157, -0.953485,
		-0.190761, 0.961754, 0.196571,
		0.944962, 0.234139, -0.228530,
		34.707737, 35.009609, 24.806637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003616, 35.456436, 24.721331>,  <34.046265, 34.845715, 24.966608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003616, 35.456436, 24.721331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343655, 35.318882, 24.561787>,  <34.547676, 35.236351, 24.466061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343655, 35.318882, 24.561787>,  <34.003616, 35.456436, 24.721331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343655, 35.318882, 24.561787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369012, 0.151399, -0.917011,
		0.375730, 0.926728, 0.001806,
		0.850093, -0.343881, -0.398858,
		34.598682, 35.215717, 24.442129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264141, 35.978649, 24.301762>,  <34.003616, 35.456436, 24.721331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264141, 35.978649, 24.301762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448910, 35.646400, 24.177374>,  <34.559772, 35.447052, 24.102741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448910, 35.646400, 24.177374>,  <34.264141, 35.978649, 24.301762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448910, 35.646400, 24.177374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181037, 0.254933, -0.949860,
		0.868247, 0.495059, -0.032613,
		0.461923, -0.830618, -0.310968,
		34.587486, 35.397217, 24.084084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882439, 36.205414, 23.938269>,  <34.264141, 35.978649, 24.301762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882439, 36.205414, 23.938269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820648, 35.837616, 23.793680>,  <34.783573, 35.616936, 23.706926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820648, 35.837616, 23.793680>,  <34.882439, 36.205414, 23.938269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820648, 35.837616, 23.793680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042530, 0.359336, -0.932239,
		0.987080, -0.159385, -0.016404,
		-0.154479, -0.919496, -0.361472,
		34.774303, 35.561768, 23.685238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463837, 35.973827, 23.532806>,  <34.882439, 36.205414, 23.938269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463837, 35.973827, 23.532806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135426, 35.777401, 23.416346>,  <34.938381, 35.659546, 23.346468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135426, 35.777401, 23.416346>,  <35.463837, 35.973827, 23.532806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135426, 35.777401, 23.416346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117273, 0.354048, -0.927846,
		0.558717, -0.795929, -0.233093,
		-0.821025, -0.491067, -0.291153,
		34.889118, 35.630081, 23.329000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733311, 35.795010, 22.873163>,  <35.463837, 35.973827, 23.532806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733311, 35.795010, 22.873163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336693, 35.744198, 22.862501>,  <35.098724, 35.713711, 22.856104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336693, 35.744198, 22.862501>,  <35.733311, 35.795010, 22.873163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336693, 35.744198, 22.862501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041972, 0.508125, -0.860260,
		0.122827, -0.851864, -0.509158,
		-0.991540, -0.127033, -0.026657,
		35.039230, 35.706089, 22.854504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336540, 35.472961, 22.605835>,  <35.733311, 35.795010, 22.873163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336540, 35.472961, 22.605835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648129, 35.722870, 22.584381>,  <36.835079, 35.872814, 22.571508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648129, 35.722870, 22.584381>,  <36.336540, 35.472961, 22.605835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648129, 35.722870, 22.584381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188344, -0.151524, 0.970344,
		0.598112, -0.765967, -0.235703,
		0.778966, 0.624768, -0.053637,
		36.881817, 35.910301, 22.568291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948906, 35.143135, 22.924305>,  <36.336540, 35.472961, 22.605835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948906, 35.143135, 22.924305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032639, 35.534260, 22.927328>,  <37.082878, 35.768936, 22.929142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032639, 35.534260, 22.927328>,  <36.948906, 35.143135, 22.924305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032639, 35.534260, 22.927328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407582, -0.094274, 0.908289,
		0.888852, -0.187052, -0.418274,
		0.209330, 0.977816, 0.007557,
		37.095436, 35.827606, 22.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712791, 35.164940, 23.218584>,  <36.948906, 35.143135, 22.924305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712791, 35.164940, 23.218584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547264, 35.528030, 23.246269>,  <37.447948, 35.745884, 23.262880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547264, 35.528030, 23.246269>,  <37.712791, 35.164940, 23.218584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547264, 35.528030, 23.246269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341785, 0.084447, 0.935976,
		0.843762, 0.410983, -0.345192,
		-0.413821, 0.907723, 0.069215,
		37.423119, 35.800346, 23.267035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297905, 35.671387, 23.461815>,  <37.712791, 35.164940, 23.218584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297905, 35.671387, 23.461815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.941799, 35.834164, 23.543613>,  <37.728134, 35.931831, 23.592693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.941799, 35.834164, 23.543613>,  <38.297905, 35.671387, 23.461815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941799, 35.834164, 23.543613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344462, 0.307910, 0.886870,
		0.297937, 0.859994, -0.414298,
		-0.890269, 0.406942, 0.204497,
		37.674717, 35.956245, 23.604963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521729, 36.288273, 23.643047>,  <38.297905, 35.671387, 23.461815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521729, 36.288273, 23.643047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169739, 36.217808, 23.819508>,  <37.958546, 36.175529, 23.925383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169739, 36.217808, 23.819508>,  <38.521729, 36.288273, 23.643047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169739, 36.217808, 23.819508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386387, 0.274766, 0.880460,
		-0.276318, 0.945235, -0.173719,
		-0.879974, -0.176164, 0.441149,
		37.905746, 36.164959, 23.951853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436119, 36.809353, 24.188644>,  <38.521729, 36.288273, 23.643047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436119, 36.809353, 24.188644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188679, 36.508797, 24.280508>,  <38.040215, 36.328465, 24.335627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188679, 36.508797, 24.280508>,  <38.436119, 36.809353, 24.188644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188679, 36.508797, 24.280508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228163, 0.107910, 0.967624,
		-0.751847, 0.650973, 0.104687,
		-0.618601, -0.751391, 0.229660,
		38.003098, 36.283379, 24.349405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024643, 36.945923, 24.857603>,  <38.436119, 36.809353, 24.188644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024643, 36.945923, 24.857603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.007809, 36.547749, 24.823330>,  <37.997707, 36.308846, 24.802767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.007809, 36.547749, 24.823330>,  <38.024643, 36.945923, 24.857603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007809, 36.547749, 24.823330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104385, -0.089670, 0.990486,
		-0.993646, 0.032742, 0.107683,
		-0.042086, -0.995433, -0.085682,
		37.995182, 36.249119, 24.797625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783123, 36.775303, 25.532057>,  <38.024643, 36.945923, 24.857603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783123, 36.775303, 25.532057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885960, 36.418827, 25.382561>,  <37.947662, 36.204941, 25.292864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885960, 36.418827, 25.382561>,  <37.783123, 36.775303, 25.532057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885960, 36.418827, 25.382561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362405, -0.269603, 0.892175,
		-0.895860, -0.364817, 0.253659,
		0.257094, -0.891192, -0.373738,
		37.963089, 36.151470, 25.270439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490643, 36.294643, 25.968359>,  <37.783123, 36.775303, 25.532057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490643, 36.294643, 25.968359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803997, 36.116867, 25.794561>,  <37.992008, 36.010201, 25.690283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803997, 36.116867, 25.794561>,  <37.490643, 36.294643, 25.968359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803997, 36.116867, 25.794561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398173, -0.177917, 0.899891,
		-0.477253, -0.877961, 0.037588,
		0.783382, -0.444442, -0.434492,
		38.039013, 35.983536, 25.664213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643238, 35.724827, 26.378466>,  <37.490643, 36.294643, 25.968359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643238, 35.724827, 26.378466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979141, 35.831886, 26.189501>,  <38.180683, 35.896122, 26.076122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979141, 35.831886, 26.189501>,  <37.643238, 35.724827, 26.378466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979141, 35.831886, 26.189501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518599, -0.137657, 0.843863,
		0.160827, -0.953633, -0.254400,
		0.839756, 0.267647, -0.472414,
		38.231068, 35.912182, 26.047777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143284, 35.422043, 26.648106>,  <37.643238, 35.724827, 26.378466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143284, 35.422043, 26.648106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385365, 35.677292, 26.457722>,  <38.530613, 35.830441, 26.343491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385365, 35.677292, 26.457722>,  <38.143284, 35.422043, 26.648106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385365, 35.677292, 26.457722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607985, 0.015458, 0.793798,
		0.513896, -0.769782, -0.378612,
		0.605199, 0.638120, -0.475959,
		38.566925, 35.868729, 26.314934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881023, 35.081429, 26.548042>,  <38.143284, 35.422043, 26.648106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881023, 35.081429, 26.548042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891052, 35.481209, 26.539450>,  <38.897072, 35.721077, 26.534294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891052, 35.481209, 26.539450>,  <38.881023, 35.081429, 26.548042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891052, 35.481209, 26.539450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491908, 0.006368, 0.870624,
		0.870286, -0.032398, -0.491480,
		0.025077, 0.999455, -0.021479,
		38.898575, 35.781044, 26.533007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597343, 35.135921, 26.690828>,  <38.881023, 35.081429, 26.548042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597343, 35.135921, 26.690828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416317, 35.488949, 26.741829>,  <39.307701, 35.700768, 26.772430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416317, 35.488949, 26.741829>,  <39.597343, 35.135921, 26.690828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416317, 35.488949, 26.741829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461753, 0.109616, 0.880209,
		0.762870, 0.457224, -0.457138,
		-0.452562, 0.882570, 0.127502,
		39.280548, 35.753719, 26.780079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029930, 35.603127, 27.161526>,  <39.597343, 35.135921, 26.690828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029930, 35.603127, 27.161526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668476, 35.774445, 27.162107>,  <39.451603, 35.877235, 27.162457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668476, 35.774445, 27.162107>,  <40.029930, 35.603127, 27.161526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668476, 35.774445, 27.162107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203309, 0.425958, 0.881604,
		0.376962, 0.796948, -0.471988,
		-0.903640, 0.428291, 0.001456,
		39.397385, 35.902931, 27.162544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.384865, 38.225151, 22.329702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069992, 38.441719, 22.447821>,  <39.881065, 38.571659, 22.518692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069992, 38.441719, 22.447821>,  <40.384865, 38.225151, 22.329702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069992, 38.441719, 22.447821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375154, -0.040349, -0.926084,
		-0.489487, -0.839782, 0.234879,
		-0.787186, 0.541422, 0.295297,
		39.833836, 38.604145, 22.536409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924679, 37.991680, 21.907398>,  <40.384865, 38.225151, 22.329702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924679, 37.991680, 21.907398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742256, 38.320339, 22.044167>,  <39.632801, 38.517532, 22.126228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742256, 38.320339, 22.044167>,  <39.924679, 37.991680, 21.907398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742256, 38.320339, 22.044167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498642, 0.082312, -0.862891,
		-0.737133, -0.564028, 0.372166,
		-0.456061, 0.821643, 0.341923,
		39.605438, 38.566833, 22.146744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195103, 37.844349, 21.851580>,  <39.924679, 37.991680, 21.907398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195103, 37.844349, 21.851580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240395, 38.241776, 21.850561>,  <39.267570, 38.480232, 21.849951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240395, 38.241776, 21.850561>,  <39.195103, 37.844349, 21.851580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240395, 38.241776, 21.850561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397712, 0.042977, -0.916504,
		-0.910497, 0.104791, 0.400019,
		0.113233, 0.993566, -0.002546,
		39.274364, 38.539845, 21.849796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560593, 38.135727, 21.504402>,  <39.195103, 37.844349, 21.851580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560593, 38.135727, 21.504402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786156, 38.465916, 21.494478>,  <38.921494, 38.664028, 21.488523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786156, 38.465916, 21.494478>,  <38.560593, 38.135727, 21.504402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786156, 38.465916, 21.494478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487308, 0.308341, -0.816980,
		-0.666741, 0.472788, 0.576131,
		0.563903, 0.825468, -0.024810,
		38.955326, 38.713554, 21.487036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129799, 38.659248, 21.196781>,  <38.560593, 38.135727, 21.504402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129799, 38.659248, 21.196781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.489780, 38.828133, 21.153282>,  <38.705769, 38.929462, 21.127184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.489780, 38.828133, 21.153282>,  <38.129799, 38.659248, 21.196781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489780, 38.828133, 21.153282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264564, 0.330587, -0.905935,
		-0.346547, 0.844067, 0.409214,
		0.899951, 0.422212, -0.108746,
		38.759766, 38.954796, 21.120659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042137, 39.410763, 21.066912>,  <38.129799, 38.659248, 21.196781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042137, 39.410763, 21.066912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389317, 39.273663, 20.923141>,  <38.597626, 39.191402, 20.836880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389317, 39.273663, 20.923141>,  <38.042137, 39.410763, 21.066912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389317, 39.273663, 20.923141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229922, 0.364174, -0.902504,
		0.440225, 0.865968, 0.237279,
		0.867951, -0.342749, -0.359423,
		38.649700, 39.170837, 20.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275238, 39.983154, 20.621962>,  <38.042137, 39.410763, 21.066912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275238, 39.983154, 20.621962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459702, 39.643829, 20.517895>,  <38.570381, 39.440235, 20.455454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459702, 39.643829, 20.517895>,  <38.275238, 39.983154, 20.621962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459702, 39.643829, 20.517895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186118, 0.194207, -0.963142,
		0.867577, 0.492587, -0.068326,
		0.461162, -0.848317, -0.260169,
		38.598049, 39.389336, 20.439844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695335, 40.113071, 20.042170>,  <38.275238, 39.983154, 20.621962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695335, 40.113071, 20.042170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642864, 39.716656, 20.032038>,  <38.611382, 39.478806, 20.025959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642864, 39.716656, 20.032038>,  <38.695335, 40.113071, 20.042170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642864, 39.716656, 20.032038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341497, 0.069160, -0.937335,
		0.930683, -0.114312, -0.347508,
		-0.131182, -0.991035, -0.025329,
		38.603508, 39.419346, 20.024439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890766, 39.938507, 19.465775>,  <38.695335, 40.113071, 20.042170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890766, 39.938507, 19.465775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685432, 39.603981, 19.542791>,  <38.562233, 39.403267, 19.589001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685432, 39.603981, 19.542791>,  <38.890766, 39.938507, 19.465775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685432, 39.603981, 19.542791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367907, 0.011762, -0.929788,
		0.775329, -0.548127, -0.313723,
		-0.513332, -0.836313, 0.192540,
		38.531433, 39.353088, 19.600554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079067, 39.382504, 18.970804>,  <38.890766, 39.938507, 19.465775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079067, 39.382504, 18.970804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716949, 39.268589, 19.096876>,  <38.499680, 39.200241, 19.172520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716949, 39.268589, 19.096876>,  <39.079067, 39.382504, 18.970804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716949, 39.268589, 19.096876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337487, 0.031618, -0.940799,
		0.257966, -0.958068, -0.124737,
		-0.905294, -0.284791, 0.315179,
		38.445362, 39.183151, 19.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910686, 38.726879, 18.727587>,  <39.079067, 39.382504, 18.970804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910686, 38.726879, 18.727587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555519, 38.889709, 18.813272>,  <38.342419, 38.987408, 18.864683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555519, 38.889709, 18.813272>,  <38.910686, 38.726879, 18.727587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555519, 38.889709, 18.813272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243366, -0.020544, -0.969717,
		-0.390350, -0.913163, 0.117310,
		-0.887920, 0.407078, 0.214213,
		38.289143, 39.011833, 18.877537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501404, 38.350037, 18.272602>,  <38.910686, 38.726879, 18.727587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501404, 38.350037, 18.272602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282787, 38.665459, 18.385370>,  <38.151615, 38.854710, 18.453030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282787, 38.665459, 18.385370>,  <38.501404, 38.350037, 18.272602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282787, 38.665459, 18.385370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489719, -0.027873, -0.871435,
		-0.679313, -0.614337, 0.401402,
		-0.546543, 0.788551, 0.281918,
		38.118824, 38.902023, 18.469946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882580, 38.175072, 18.085510>,  <38.501404, 38.350037, 18.272602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882580, 38.175072, 18.085510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866280, 38.574146, 18.107258>,  <37.856499, 38.813591, 18.120306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866280, 38.574146, 18.107258>,  <37.882580, 38.175072, 18.085510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866280, 38.574146, 18.107258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412354, 0.032773, -0.910434,
		-0.910112, -0.059516, 0.410065,
		-0.040746, 0.997689, 0.054368,
		37.854057, 38.873451, 18.123568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038597, 38.324036, 17.364445>,  <37.882580, 38.175072, 18.085510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038597, 38.324036, 17.364445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752243, 38.169579, 17.131756>,  <37.580429, 38.076904, 16.992144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752243, 38.169579, 17.131756>,  <38.038597, 38.324036, 17.364445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752243, 38.169579, 17.131756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405051, -0.448946, 0.796480,
		-0.568718, 0.805816, 0.164986,
		-0.715886, -0.386145, -0.581721,
		37.537476, 38.053734, 16.957239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290134, 38.569695, 17.536360>,  <38.038597, 38.324036, 17.364445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290134, 38.569695, 17.536360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343174, 38.193966, 17.409807>,  <37.375000, 37.968529, 17.333876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343174, 38.193966, 17.409807>,  <37.290134, 38.569695, 17.536360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343174, 38.193966, 17.409807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256524, -0.340848, 0.904444,
		-0.957399, -0.038771, -0.286155,
		0.132601, -0.939319, -0.316382,
		37.382954, 37.912170, 17.314892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670563, 38.197567, 17.854071>,  <37.290134, 38.569695, 17.536360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670563, 38.197567, 17.854071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938480, 37.915813, 17.760082>,  <37.099232, 37.746761, 17.703690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938480, 37.915813, 17.760082>,  <36.670563, 38.197567, 17.854071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938480, 37.915813, 17.760082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273131, -0.527968, 0.804145,
		-0.690487, -0.474435, -0.546021,
		0.669797, -0.704387, -0.234972,
		37.139420, 37.704498, 17.689590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306416, 37.607883, 17.867491>,  <36.670563, 38.197567, 17.854071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306416, 37.607883, 17.867491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689323, 37.498302, 17.904547>,  <36.919067, 37.432552, 17.926781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689323, 37.498302, 17.904547>,  <36.306416, 37.607883, 17.867491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689323, 37.498302, 17.904547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224688, -0.502882, 0.834640,
		-0.182069, -0.819791, -0.542949,
		0.957270, -0.273956, 0.092638,
		36.976505, 37.416115, 17.932339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358044, 36.907215, 17.966896>,  <36.306416, 37.607883, 17.867491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358044, 36.907215, 17.966896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699699, 37.052765, 18.115513>,  <36.904694, 37.140095, 18.204683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699699, 37.052765, 18.115513>,  <36.358044, 36.907215, 17.966896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699699, 37.052765, 18.115513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202000, -0.426204, 0.881786,
		0.479208, -0.828220, -0.290536,
		0.854140, 0.363871, 0.371541,
		36.955940, 37.161926, 18.226974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542984, 36.529457, 18.425182>,  <36.358044, 36.907215, 17.966896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542984, 36.529457, 18.425182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.802120, 36.815693, 18.529675>,  <36.957600, 36.987434, 18.592369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.802120, 36.815693, 18.529675>,  <36.542984, 36.529457, 18.425182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802120, 36.815693, 18.529675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062921, -0.392013, 0.917805,
		0.759175, -0.578152, -0.298986,
		0.647838, 0.715588, 0.261228,
		36.996471, 37.030369, 18.608044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173420, 36.154617, 18.744669>,  <36.542984, 36.529457, 18.425182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173420, 36.154617, 18.744669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123932, 36.531982, 18.867735>,  <37.094238, 36.758404, 18.941574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123932, 36.531982, 18.867735>,  <37.173420, 36.154617, 18.744669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123932, 36.531982, 18.867735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076676, -0.300032, 0.950843,
		0.989351, 0.141225, -0.035219,
		-0.123716, 0.943417, 0.307665,
		37.086819, 36.815006, 18.960035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692604, 36.217564, 19.233105>,  <37.173420, 36.154617, 18.744669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692604, 36.217564, 19.233105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455326, 36.524063, 19.331886>,  <37.312958, 36.707962, 19.391155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455326, 36.524063, 19.331886>,  <37.692604, 36.217564, 19.233105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455326, 36.524063, 19.331886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209315, -0.149409, 0.966367,
		0.777370, 0.624937, -0.071757,
		-0.593197, 0.766244, 0.246955,
		37.277367, 36.753937, 19.405973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968929, 36.400768, 19.907209>,  <37.692604, 36.217564, 19.233105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968929, 36.400768, 19.907209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615021, 36.586910, 19.897173>,  <37.402676, 36.698593, 19.891151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615021, 36.586910, 19.897173>,  <37.968929, 36.400768, 19.907209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615021, 36.586910, 19.897173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021160, 0.013668, 0.999683,
		0.465548, 0.885020, -0.002246,
		-0.884770, 0.465353, -0.025090,
		37.349590, 36.726517, 19.889647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072807, 36.850239, 20.408659>,  <37.968929, 36.400768, 19.907209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072807, 36.850239, 20.408659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677685, 36.806492, 20.364340>,  <37.440613, 36.780243, 20.337748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677685, 36.806492, 20.364340>,  <38.072807, 36.850239, 20.408659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677685, 36.806492, 20.364340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098388, -0.113001, 0.988712,
		-0.120657, 0.987557, 0.100862,
		-0.987806, -0.109372, -0.110798,
		37.381344, 36.773682, 20.331100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768303, 37.184002, 20.899969>,  <38.072807, 36.850239, 20.408659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768303, 37.184002, 20.899969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454216, 36.957020, 20.800829>,  <37.265766, 36.820831, 20.741344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454216, 36.957020, 20.800829>,  <37.768303, 37.184002, 20.899969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454216, 36.957020, 20.800829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165187, -0.193802, 0.967034,
		-0.596785, 0.800270, 0.058439,
		-0.785214, -0.567458, -0.247852,
		37.218651, 36.786781, 20.726473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257114, 37.402611, 21.336031>,  <37.768303, 37.184002, 20.899969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257114, 37.402611, 21.336031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134209, 37.047989, 21.197695>,  <37.060467, 36.835217, 21.114693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134209, 37.047989, 21.197695>,  <37.257114, 37.402611, 21.336031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134209, 37.047989, 21.197695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200564, -0.294929, 0.934233,
		-0.930250, 0.356416, -0.087191,
		-0.307260, -0.886558, -0.345842,
		37.042030, 36.782021, 21.093943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581821, 37.273022, 21.631140>,  <37.257114, 37.402611, 21.336031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581821, 37.273022, 21.631140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 36.911068, 21.527084>,  <36.797447, 36.693893, 21.464651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 36.911068, 21.527084>,  <36.581821, 37.273022, 21.631140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716587, 36.911068, 21.527084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040522, -0.289973, 0.956177,
		-0.940664, -0.311604, -0.134363,
		0.336910, -0.904886, -0.260140,
		36.817661, 36.639603, 21.449041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081390, 36.794331, 21.890812>,  <36.581821, 37.273022, 21.631140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081390, 36.794331, 21.890812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423557, 36.591347, 21.849363>,  <36.628857, 36.469555, 21.824495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423557, 36.591347, 21.849363>,  <36.081390, 36.794331, 21.890812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423557, 36.591347, 21.849363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072326, -0.315142, 0.946285,
		-0.512860, -0.801976, -0.306281,
		0.855420, -0.507464, -0.103620,
		36.680183, 36.439106, 21.818277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103485, 36.066113, 22.267000>,  <36.081390, 36.794331, 21.890812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103485, 36.066113, 22.267000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496170, 36.126385, 22.220449>,  <36.731781, 36.162548, 22.192518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496170, 36.126385, 22.220449>,  <36.103485, 36.066113, 22.267000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496170, 36.126385, 22.220449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147278, -0.213650, 0.965745,
		0.120658, -0.965219, -0.231934,
		0.981708, 0.150683, -0.116377,
		36.790684, 36.171589, 22.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548721, 35.473923, 22.105940>,  <36.103485, 36.066113, 22.267000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548721, 35.473923, 22.105940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193996, 35.595181, 22.245464>,  <34.981163, 35.667934, 22.329178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193996, 35.595181, 22.245464>,  <35.548721, 35.473923, 22.105940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193996, 35.595181, 22.245464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330095, 0.112719, -0.937193,
		-0.323426, -0.946253, 0.000107,
		-0.886810, 0.303148, 0.348810,
		34.927952, 35.686123, 22.350107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044479, 35.050037, 21.774643>,  <35.548721, 35.473923, 22.105940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044479, 35.050037, 21.774643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855415, 35.379559, 21.899818>,  <34.741978, 35.577271, 21.974924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855415, 35.379559, 21.899818>,  <35.044479, 35.050037, 21.774643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855415, 35.379559, 21.899818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365744, 0.139699, -0.920171,
		-0.801762, -0.549387, 0.235272,
		-0.472662, 0.823807, 0.312941,
		34.713615, 35.626701, 21.993700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359344, 35.054413, 21.605568>,  <35.044479, 35.050037, 21.774643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359344, 35.054413, 21.605568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419605, 35.449333, 21.625702>,  <34.455761, 35.686287, 21.637783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419605, 35.449333, 21.625702>,  <34.359344, 35.054413, 21.605568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419605, 35.449333, 21.625702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370557, 0.103603, -0.923014,
		-0.916510, 0.120403, 0.381461,
		0.150654, 0.987304, 0.050337,
		34.464802, 35.745525, 21.640802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943275, 35.377342, 21.066479>,  <34.359344, 35.054413, 21.605568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943275, 35.377342, 21.066479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176281, 35.687561, 21.163797>,  <34.316086, 35.873692, 21.222189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176281, 35.687561, 21.163797>,  <33.943275, 35.377342, 21.066479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176281, 35.687561, 21.163797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202909, 0.428597, -0.880416,
		-0.787084, 0.463492, 0.407031,
		0.582518, 0.775552, 0.243295,
		34.351036, 35.920227, 21.236786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557701, 35.934704, 20.837370>,  <33.943275, 35.377342, 21.066479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557701, 35.934704, 20.837370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934853, 36.061245, 20.879133>,  <34.161144, 36.137169, 20.904190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934853, 36.061245, 20.879133>,  <33.557701, 35.934704, 20.837370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934853, 36.061245, 20.879133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150747, 0.684645, -0.713117,
		-0.297079, 0.656644, 0.693227,
		0.942878, 0.316354, 0.104407,
		34.217716, 36.156151, 20.910456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514969, 36.687420, 20.800011>,  <33.557701, 35.934704, 20.837370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514969, 36.687420, 20.800011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892128, 36.593018, 20.705997>,  <34.118423, 36.536377, 20.649590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892128, 36.593018, 20.705997>,  <33.514969, 36.687420, 20.800011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892128, 36.593018, 20.705997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030584, 0.641319, -0.766664,
		0.331670, 0.730076, 0.597482,
		0.942900, -0.236006, -0.235035,
		34.174999, 36.522217, 20.635487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863091, 37.380604, 20.571711>,  <33.514969, 36.687420, 20.800011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863091, 37.380604, 20.571711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051231, 37.057297, 20.430027>,  <34.164116, 36.863312, 20.345016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051231, 37.057297, 20.430027>,  <33.863091, 37.380604, 20.571711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051231, 37.057297, 20.430027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034248, 0.417798, -0.907894,
		0.881813, 0.414901, 0.224195,
		0.470354, -0.808271, -0.354210,
		34.192337, 36.814816, 20.323765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986080, 38.191250, 20.837532>,  <33.863091, 37.380604, 20.571711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986080, 38.191250, 20.837532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634251, 38.381153, 20.849909>,  <33.423153, 38.495094, 20.857334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634251, 38.381153, 20.849909>,  <33.986080, 38.191250, 20.837532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634251, 38.381153, 20.849909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106952, 0.133934, 0.985202,
		0.463592, 0.869864, -0.168581,
		-0.879570, 0.474761, 0.030942,
		33.370380, 38.523582, 20.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172466, 38.840794, 21.098743>,  <33.986080, 38.191250, 20.837532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172466, 38.840794, 21.098743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804737, 38.711277, 21.188187>,  <33.584099, 38.633568, 21.241854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804737, 38.711277, 21.188187>,  <34.172466, 38.840794, 21.098743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804737, 38.711277, 21.188187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181383, 0.155597, 0.971025,
		-0.349200, 0.933248, -0.084314,
		-0.919326, -0.323788, 0.223610,
		33.528938, 38.614140, 21.255270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973309, 39.273182, 21.587019>,  <34.172466, 38.840794, 21.098743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973309, 39.273182, 21.587019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720509, 38.965256, 21.622694>,  <33.568829, 38.780499, 21.644098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720509, 38.965256, 21.622694>,  <33.973309, 39.273182, 21.587019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720509, 38.965256, 21.622694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000819, 0.115748, 0.993278,
		-0.774967, 0.627681, -0.073783,
		-0.632002, -0.769818, 0.089187,
		33.530907, 38.734310, 21.649450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440147, 39.568275, 22.047216>,  <33.973309, 39.273182, 21.587019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440147, 39.568275, 22.047216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432369, 39.168846, 22.067129>,  <33.427700, 38.929188, 22.079077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432369, 39.168846, 22.067129>,  <33.440147, 39.568275, 22.047216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432369, 39.168846, 22.067129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058447, 0.048572, 0.997108,
		-0.998101, 0.022303, 0.057419,
		-0.019450, -0.998571, 0.049783,
		33.426533, 38.869274, 22.082064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916256, 39.379993, 22.368616>,  <33.440147, 39.568275, 22.047216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916256, 39.379993, 22.368616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149166, 39.058868, 22.419924>,  <33.288914, 38.866196, 22.450708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149166, 39.058868, 22.419924>,  <32.916256, 39.379993, 22.368616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149166, 39.058868, 22.419924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130793, 0.063219, 0.989392,
		-0.802403, -0.592874, -0.068191,
		0.582274, -0.802810, 0.128271,
		33.323849, 38.818024, 22.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476433, 39.072788, 22.880037>,  <32.916256, 39.379993, 22.368616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476433, 39.072788, 22.880037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826740, 38.880184, 22.893745>,  <33.036926, 38.764622, 22.901970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826740, 38.880184, 22.893745>,  <32.476433, 39.072788, 22.880037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826740, 38.880184, 22.893745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158866, -0.220445, 0.962375,
		-0.455840, -0.848263, -0.269555,
		0.875769, -0.481512, 0.034272,
		33.089470, 38.735729, 22.904026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461281, 38.488621, 23.346905>,  <32.476433, 39.072788, 22.880037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461281, 38.488621, 23.346905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860043, 38.519966, 23.349188>,  <33.099300, 38.538773, 23.350557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860043, 38.519966, 23.349188>,  <32.461281, 38.488621, 23.346905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860043, 38.519966, 23.349188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013960, -0.248142, 0.968623,
		0.077318, -0.965549, -0.248469,
		0.996909, 0.078361, 0.005707,
		33.159115, 38.543472, 23.350901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.494701, 40.518913, 18.242500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839142, 40.327663, 18.173325>,  <36.045807, 40.212914, 18.131819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839142, 40.327663, 18.173325>,  <35.494701, 40.518913, 18.242500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839142, 40.327663, 18.173325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316080, 0.236979, 0.918659,
		-0.398246, -0.845720, 0.355187,
		0.861100, -0.478120, -0.172940,
		36.097473, 40.184227, 18.121443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646873, 39.965046, 18.704044>,  <35.494701, 40.518913, 18.242500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646873, 39.965046, 18.704044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002369, 40.103691, 18.584044>,  <36.215668, 40.186878, 18.512043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002369, 40.103691, 18.584044>,  <35.646873, 39.965046, 18.704044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002369, 40.103691, 18.584044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245913, 0.191821, 0.950122,
		0.386873, -0.918185, 0.085242,
		0.888739, 0.346614, -0.300004,
		36.268990, 40.207676, 18.494041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048969, 39.650829, 19.186888>,  <35.646873, 39.965046, 18.704044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048969, 39.650829, 19.186888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226185, 39.979015, 19.042355>,  <36.332512, 40.175926, 18.955635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226185, 39.979015, 19.042355>,  <36.048969, 39.650829, 19.186888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226185, 39.979015, 19.042355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273510, 0.260131, 0.926026,
		0.853764, -0.509089, -0.109158,
		0.443035, 0.820464, -0.361331,
		36.359097, 40.225155, 18.933956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573212, 39.706181, 19.555305>,  <36.048969, 39.650829, 19.186888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573212, 39.706181, 19.555305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.606922, 40.068501, 19.389210>,  <36.627148, 40.285892, 19.289553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.606922, 40.068501, 19.389210>,  <36.573212, 39.706181, 19.555305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606922, 40.068501, 19.389210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455353, 0.335654, 0.824615,
		0.886313, -0.258574, -0.384172,
		0.084275, 0.905801, -0.415237,
		36.632206, 40.340240, 19.264639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261288, 39.943729, 19.564562>,  <36.573212, 39.706181, 19.555305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261288, 39.943729, 19.564562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038479, 40.275902, 19.560373>,  <36.904793, 40.475204, 19.557859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038479, 40.275902, 19.560373>,  <37.261288, 39.943729, 19.564562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038479, 40.275902, 19.560373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452889, 0.314303, 0.834329,
		0.696145, 0.459997, -0.551167,
		-0.557022, 0.830432, -0.010473,
		36.871372, 40.525032, 19.557232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668766, 40.465927, 19.769331>,  <37.261288, 39.943729, 19.564562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668766, 40.465927, 19.769331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.319145, 40.650120, 19.831285>,  <37.109371, 40.760635, 19.868458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.319145, 40.650120, 19.831285>,  <37.668766, 40.465927, 19.769331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319145, 40.650120, 19.831285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369059, 0.421995, 0.828079,
		0.315952, 0.780948, -0.538790,
		-0.874054, 0.460479, 0.154885,
		37.056931, 40.788265, 19.877750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884472, 41.155464, 19.981911>,  <37.668766, 40.465927, 19.769331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884472, 41.155464, 19.981911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.517673, 41.104668, 20.133163>,  <37.297592, 41.074188, 20.223915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.517673, 41.104668, 20.133163>,  <37.884472, 41.155464, 19.981911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517673, 41.104668, 20.133163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318446, 0.337810, 0.885707,
		-0.240217, 0.932607, -0.269331,
		-0.916999, -0.126994, 0.378133,
		37.242573, 41.066570, 20.246603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688419, 41.756260, 20.458378>,  <37.884472, 41.155464, 19.981911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688419, 41.756260, 20.458378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403179, 41.498615, 20.569090>,  <37.232033, 41.344028, 20.635517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403179, 41.498615, 20.569090>,  <37.688419, 41.756260, 20.458378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403179, 41.498615, 20.569090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184547, 0.208412, 0.960472,
		-0.676334, 0.735994, -0.029751,
		-0.713102, -0.644109, 0.276781,
		37.189247, 41.305382, 20.652124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198254, 42.137180, 20.800341>,  <37.688419, 41.756260, 20.458378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198254, 42.137180, 20.800341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197090, 41.757874, 20.927322>,  <37.196392, 41.530289, 21.003511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197090, 41.757874, 20.927322>,  <37.198254, 42.137180, 20.800341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197090, 41.757874, 20.927322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307750, 0.301200, 0.902534,
		-0.951463, 0.100319, 0.290955,
		-0.002906, -0.948269, 0.317454,
		37.196220, 41.473392, 21.022558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803047, 42.164421, 21.429058>,  <37.198254, 42.137180, 20.800341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803047, 42.164421, 21.429058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.966778, 41.802513, 21.476112>,  <37.065018, 41.585369, 21.504345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.966778, 41.802513, 21.476112>,  <36.803047, 42.164421, 21.429058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966778, 41.802513, 21.476112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030805, 0.115153, 0.992870,
		-0.911869, -0.410030, 0.019263,
		0.409325, -0.904773, 0.117635,
		37.089577, 41.531082, 21.511402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327579, 41.826851, 21.856703>,  <36.803047, 42.164421, 21.429058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327579, 41.826851, 21.856703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675022, 41.631546, 21.890467>,  <36.883488, 41.514362, 21.910725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675022, 41.631546, 21.890467>,  <36.327579, 41.826851, 21.856703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675022, 41.631546, 21.890467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079275, 0.031216, 0.996364,
		-0.489125, -0.872137, -0.011593,
		0.868604, -0.488265, 0.084408,
		36.935604, 41.485065, 21.915789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233006, 41.303116, 22.337471>,  <36.327579, 41.826851, 21.856703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233006, 41.303116, 22.337471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632885, 41.312931, 22.338371>,  <36.872810, 41.318821, 22.338911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632885, 41.312931, 22.338371>,  <36.233006, 41.303116, 22.337471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632885, 41.312931, 22.338371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004835, 0.105681, 0.994388,
		0.024166, -0.994097, 0.105767,
		0.999696, 0.024542, 0.002253,
		36.932793, 41.320293, 22.339046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807976, 40.696407, 22.461014>,  <36.233006, 41.303116, 22.337471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807976, 40.696407, 22.461014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.448612, 40.774094, 22.618565>,  <35.232994, 40.820705, 22.713095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.448612, 40.774094, 22.618565>,  <35.807976, 40.696407, 22.461014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448612, 40.774094, 22.618565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409983, -0.049488, -0.910749,
		-0.157397, -0.979708, 0.124089,
		-0.898409, 0.194224, 0.393875,
		35.179089, 40.832359, 22.736727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407787, 40.162590, 22.177677>,  <35.807976, 40.696407, 22.461014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407787, 40.162590, 22.177677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.172775, 40.469673, 22.279989>,  <35.031769, 40.653923, 22.341377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.172775, 40.469673, 22.279989>,  <35.407787, 40.162590, 22.177677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172775, 40.469673, 22.279989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417361, -0.016691, -0.908587,
		-0.693262, -0.640580, 0.330219,
		-0.587535, 0.767710, 0.255782,
		34.996513, 40.699986, 22.356724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766602, 40.035942, 21.839142>,  <35.407787, 40.162590, 22.177677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766602, 40.035942, 21.839142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737259, 40.422710, 21.936857>,  <34.719654, 40.654774, 21.995487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737259, 40.422710, 21.936857>,  <34.766602, 40.035942, 21.839142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737259, 40.422710, 21.936857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522539, 0.171370, -0.835216,
		-0.849453, -0.188923, 0.492683,
		-0.073360, 0.966923, 0.244290,
		34.715252, 40.712788, 22.010145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065285, 40.247841, 21.801052>,  <34.766602, 40.035942, 21.839142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065285, 40.247841, 21.801052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.270332, 40.590534, 21.778334>,  <34.393360, 40.796150, 21.764702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.270332, 40.590534, 21.778334>,  <34.065285, 40.247841, 21.801052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270332, 40.590534, 21.778334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488791, 0.236798, -0.839649,
		-0.705909, 0.458180, 0.540152,
		0.512617, 0.856737, -0.056797,
		34.424118, 40.847557, 21.761295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532795, 40.826347, 21.647558>,  <34.065285, 40.247841, 21.801052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532795, 40.826347, 21.647558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900986, 40.922169, 21.524050>,  <34.121899, 40.979664, 21.449944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900986, 40.922169, 21.524050>,  <33.532795, 40.826347, 21.647558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900986, 40.922169, 21.524050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383379, 0.400238, -0.832364,
		-0.075816, 0.884546, 0.460250,
		0.920474, 0.239557, -0.308772,
		34.177128, 40.994034, 21.431417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586357, 41.556492, 21.420578>,  <33.532795, 40.826347, 21.647558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586357, 41.556492, 21.420578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918068, 41.421051, 21.242752>,  <34.117096, 41.339787, 21.136057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918068, 41.421051, 21.242752>,  <33.586357, 41.556492, 21.420578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918068, 41.421051, 21.242752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329946, 0.345396, -0.878543,
		0.451030, 0.875242, 0.174709,
		0.829282, -0.338604, -0.444566,
		34.166851, 41.319469, 21.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750618, 42.114037, 20.970417>,  <33.586357, 41.556492, 21.420578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750618, 42.114037, 20.970417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.957878, 41.820324, 20.794981>,  <34.082233, 41.644096, 20.689720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.957878, 41.820324, 20.794981>,  <33.750618, 42.114037, 20.970417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957878, 41.820324, 20.794981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325092, 0.305228, -0.895071,
		0.791100, 0.606359, -0.080556,
		0.518146, -0.734279, -0.438588,
		34.113323, 41.600040, 20.663404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059902, 42.425316, 20.383106>,  <33.750618, 42.114037, 20.970417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059902, 42.425316, 20.383106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.034893, 42.031815, 20.315788>,  <34.019890, 41.795715, 20.275398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.034893, 42.031815, 20.315788>,  <34.059902, 42.425316, 20.383106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034893, 42.031815, 20.315788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265348, 0.178940, -0.947402,
		0.962124, -0.014574, -0.272224,
		-0.062520, -0.983752, -0.168295,
		34.016136, 41.736691, 20.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231285, 42.346691, 19.644079>,  <34.059902, 42.425316, 20.383106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231285, 42.346691, 19.644079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086681, 41.986168, 19.739542>,  <33.999920, 41.769855, 19.796820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086681, 41.986168, 19.739542>,  <34.231285, 42.346691, 19.644079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086681, 41.986168, 19.739542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386734, -0.087957, -0.917987,
		0.848381, -0.424155, -0.316769,
		-0.361507, -0.901308, 0.238656,
		33.978230, 41.715775, 19.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457741, 41.803837, 19.116646>,  <34.231285, 42.346691, 19.644079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457741, 41.803837, 19.116646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118244, 41.689014, 19.294291>,  <33.914547, 41.620121, 19.400877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118244, 41.689014, 19.294291>,  <34.457741, 41.803837, 19.116646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118244, 41.689014, 19.294291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408279, -0.178020, -0.895331,
		0.336068, -0.941228, 0.033895,
		-0.848744, -0.287053, 0.444110,
		33.863621, 41.602898, 19.427525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309677, 41.239441, 18.751358>,  <34.457741, 41.803837, 19.116646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309677, 41.239441, 18.751358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965958, 41.324654, 18.937355>,  <33.759724, 41.375782, 19.048954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965958, 41.324654, 18.937355>,  <34.309677, 41.239441, 18.751358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965958, 41.324654, 18.937355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502033, -0.177481, -0.846442,
		-0.097791, -0.960791, 0.259458,
		-0.859302, 0.213031, 0.464993,
		33.708168, 41.388565, 19.076853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894848, 40.669426, 18.571894>,  <34.309677, 41.239441, 18.751358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894848, 40.669426, 18.571894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.672325, 40.992191, 18.651302>,  <33.538811, 41.185852, 18.698948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.672325, 40.992191, 18.651302>,  <33.894848, 40.669426, 18.571894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672325, 40.992191, 18.651302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653966, -0.277726, -0.703702,
		-0.512695, -0.521299, 0.682196,
		-0.556303, 0.806918, 0.198523,
		33.505436, 41.234268, 18.710859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296581, 40.400108, 18.653925>,  <33.894848, 40.669426, 18.571894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296581, 40.400108, 18.653925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222263, 40.788982, 18.596891>,  <33.177673, 41.022308, 18.562672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222263, 40.788982, 18.596891>,  <33.296581, 40.400108, 18.653925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222263, 40.788982, 18.596891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648819, -0.230364, -0.725236,
		-0.737912, -0.042236, 0.673575,
		-0.185798, 0.972188, -0.142585,
		33.166523, 41.080639, 18.554115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916092, 40.640423, 18.106516>,  <33.296581, 40.400108, 18.653925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916092, 40.640423, 18.106516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690800, 40.314266, 18.052986>,  <32.555626, 40.118572, 18.020868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690800, 40.314266, 18.052986>,  <32.916092, 40.640423, 18.106516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690800, 40.314266, 18.052986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107264, -0.232736, 0.966607,
		-0.819309, 0.530066, 0.218546,
		-0.563228, -0.815392, -0.133826,
		32.521832, 40.069649, 18.012838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433758, 40.601688, 18.618107>,  <32.916092, 40.640423, 18.106516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433758, 40.601688, 18.618107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447220, 40.221981, 18.493048>,  <32.455296, 39.994156, 18.418013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447220, 40.221981, 18.493048>,  <32.433758, 40.601688, 18.618107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447220, 40.221981, 18.493048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154625, -0.304113, 0.940003,
		-0.987400, -0.079978, 0.136546,
		0.033654, -0.949273, -0.312648,
		32.457317, 39.937199, 18.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049061, 40.202282, 19.037308>,  <32.433758, 40.601688, 18.618107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049061, 40.202282, 19.037308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323868, 39.959217, 18.877934>,  <32.488754, 39.813377, 18.782309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323868, 39.959217, 18.877934>,  <32.049061, 40.202282, 19.037308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323868, 39.959217, 18.877934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173170, -0.395605, 0.901947,
		-0.705703, -0.688652, -0.166558,
		0.687019, -0.607664, -0.398434,
		32.529972, 39.776917, 18.758404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930611, 39.557140, 19.353636>,  <32.049061, 40.202282, 19.037308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930611, 39.557140, 19.353636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293285, 39.479877, 19.203642>,  <32.510891, 39.433521, 19.113646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293285, 39.479877, 19.203642>,  <31.930611, 39.557140, 19.353636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293285, 39.479877, 19.203642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253139, -0.461943, 0.850017,
		-0.337404, -0.865622, -0.369943,
		0.906686, -0.193152, -0.374984,
		32.565292, 39.421932, 19.091146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013924, 38.816360, 19.421299>,  <31.930611, 39.557140, 19.353636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013924, 38.816360, 19.421299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379440, 38.977196, 19.398294>,  <32.598751, 39.073696, 19.384491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379440, 38.977196, 19.398294>,  <32.013924, 38.816360, 19.421299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379440, 38.977196, 19.398294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231517, -0.399257, 0.887127,
		0.333743, -0.823964, -0.457929,
		0.913792, 0.402091, -0.057513,
		32.653580, 39.097824, 19.381041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339657, 38.264748, 19.642120>,  <32.013924, 38.816360, 19.421299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339657, 38.264748, 19.642120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581997, 38.580704, 19.680115>,  <32.727402, 38.770275, 19.702911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581997, 38.580704, 19.680115>,  <32.339657, 38.264748, 19.642120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581997, 38.580704, 19.680115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153109, -0.232924, 0.960367,
		0.780705, -0.567298, -0.262056,
		0.605853, 0.789886, 0.094987,
		32.763752, 38.817669, 19.708611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963791, 37.907719, 19.765684>,  <32.339657, 38.264748, 19.642120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963791, 37.907719, 19.765684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.990295, 38.290100, 19.880056>,  <33.006199, 38.519531, 19.948679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.990295, 38.290100, 19.880056>,  <32.963791, 37.907719, 19.765684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990295, 38.290100, 19.880056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242223, -0.293399, 0.924794,
		0.967955, 0.007979, -0.250996,
		0.066263, 0.955957, 0.285930,
		33.010174, 38.576885, 19.965836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646156, 38.027599, 20.147783>,  <32.963791, 37.907719, 19.765684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646156, 38.027599, 20.147783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.394493, 38.312996, 20.271135>,  <33.243496, 38.484234, 20.345146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.394493, 38.312996, 20.271135>,  <33.646156, 38.027599, 20.147783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394493, 38.312996, 20.271135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247497, -0.192199, 0.949634,
		0.736823, 0.673790, -0.055664,
		-0.629155, 0.713489, 0.308378,
		33.205746, 38.527042, 20.363649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271374, 37.653507, 19.934610>,  <33.646156, 38.027599, 20.147783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271374, 37.653507, 19.934610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297863, 37.256851, 19.890301>,  <34.313755, 37.018860, 19.863714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297863, 37.256851, 19.890301>,  <34.271374, 37.653507, 19.934610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297863, 37.256851, 19.890301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086866, 0.116327, -0.989405,
		0.994017, 0.055897, 0.093843,
		0.066222, -0.991637, -0.110776,
		34.317730, 36.959362, 19.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809978, 37.632370, 19.575661>,  <34.271374, 37.653507, 19.934610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809978, 37.632370, 19.575661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593891, 37.300594, 19.518827>,  <34.464237, 37.101528, 19.484728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593891, 37.300594, 19.518827>,  <34.809978, 37.632370, 19.575661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593891, 37.300594, 19.518827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148347, 0.072330, -0.986287,
		0.828346, -0.553887, 0.083971,
		-0.540218, -0.829444, -0.142082,
		34.431828, 37.051762, 19.476202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228222, 37.114494, 19.242229>,  <34.809978, 37.632370, 19.575661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228222, 37.114494, 19.242229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852879, 36.995186, 19.172356>,  <34.627670, 36.923599, 19.130432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852879, 36.995186, 19.172356>,  <35.228222, 37.114494, 19.242229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852879, 36.995186, 19.172356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221884, -0.132266, -0.966061,
		0.265043, -0.945273, 0.190294,
		-0.938360, -0.298271, -0.174685,
		34.571369, 36.905704, 19.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288441, 36.412506, 18.912479>,  <35.228222, 37.114494, 19.242229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288441, 36.412506, 18.912479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943436, 36.591946, 18.818815>,  <34.736431, 36.699608, 18.762617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943436, 36.591946, 18.818815>,  <35.288441, 36.412506, 18.912479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943436, 36.591946, 18.818815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172624, -0.174149, -0.969471,
		-0.475679, -0.876604, 0.072768,
		-0.862514, 0.448595, -0.234162,
		34.684681, 36.726524, 18.748568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986034, 35.986385, 18.382477>,  <35.288441, 36.412506, 18.912479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986034, 35.986385, 18.382477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757652, 36.310936, 18.332380>,  <34.620625, 36.505665, 18.302322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757652, 36.310936, 18.332380>,  <34.986034, 35.986385, 18.382477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757652, 36.310936, 18.332380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172423, -0.030640, -0.984546,
		-0.802673, -0.583724, -0.122406,
		-0.570952, 0.811374, -0.125241,
		34.586365, 36.554348, 18.294807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575207, 35.832722, 17.824598>,  <34.986034, 35.986385, 18.382477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575207, 35.832722, 17.824598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575634, 36.231861, 17.850845>,  <34.575890, 36.471344, 17.866594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575634, 36.231861, 17.850845>,  <34.575207, 35.832722, 17.824598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575634, 36.231861, 17.850845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047113, 0.065497, -0.996740,
		-0.998889, 0.004154, -0.046941,
		0.001066, 0.997844, 0.065620,
		34.575954, 36.531216, 17.870531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124355, 36.063362, 17.241938>,  <34.575207, 35.832722, 17.824598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124355, 36.063362, 17.241938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323536, 36.394138, 17.346413>,  <34.443043, 36.592606, 17.409098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323536, 36.394138, 17.346413>,  <34.124355, 36.063362, 17.241938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323536, 36.394138, 17.346413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113129, 0.236666, -0.964983,
		-0.859796, 0.510059, 0.024296,
		0.497949, 0.826940, 0.261187,
		34.472919, 36.642220, 17.424768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775497, 36.649822, 16.935827>,  <34.124355, 36.063362, 17.241938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775497, 36.649822, 16.935827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156475, 36.761715, 16.984163>,  <34.385063, 36.828850, 17.013165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156475, 36.761715, 16.984163>,  <33.775497, 36.649822, 16.935827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156475, 36.761715, 16.984163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061065, 0.213301, -0.975076,
		-0.298535, 0.936084, 0.186075,
		0.952443, 0.279732, 0.120840,
		34.442207, 36.845634, 17.020416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795845, 37.270138, 16.539581>,  <33.775497, 36.649822, 16.935827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795845, 37.270138, 16.539581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184860, 37.190575, 16.587917>,  <34.418270, 37.142838, 16.616919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184860, 37.190575, 16.587917>,  <33.795845, 37.270138, 16.539581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184860, 37.190575, 16.587917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187289, 0.360628, -0.913712,
		0.138169, 0.911253, 0.387979,
		0.972539, -0.198911, 0.120840,
		34.476624, 37.130901, 16.624170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.494873, 35.719475, 32.518539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833344, 35.704552, 32.305901>,  <38.036427, 35.695599, 32.178318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833344, 35.704552, 32.305901>,  <37.494873, 35.719475, 32.518539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833344, 35.704552, 32.305901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530332, 0.038875, -0.846898,
		0.052261, 0.998547, 0.013110,
		0.846178, -0.037307, -0.531593,
		38.087196, 35.693359, 32.146423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564419, 36.331543, 32.150227>,  <37.494873, 35.719475, 32.518539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564419, 36.331543, 32.150227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763767, 36.035591, 31.969473>,  <37.883377, 35.858021, 31.861021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763767, 36.035591, 31.969473>,  <37.564419, 36.331543, 32.150227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763767, 36.035591, 31.969473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633088, 0.045514, -0.772740,
		0.592305, 0.671193, -0.445729,
		0.498371, -0.739884, -0.451883,
		37.913277, 35.813625, 31.833908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687271, 36.571590, 31.493124>,  <37.564419, 36.331543, 32.150227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687271, 36.571590, 31.493124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719967, 36.176613, 31.439051>,  <37.739586, 35.939625, 31.406607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719967, 36.176613, 31.439051>,  <37.687271, 36.571590, 31.493124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719967, 36.176613, 31.439051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532433, 0.071396, -0.843456,
		0.842516, 0.140918, -0.519912,
		0.081738, -0.987443, -0.135181,
		37.744488, 35.880379, 31.398497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857319, 36.433815, 30.782824>,  <37.687271, 36.571590, 31.493124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857319, 36.433815, 30.782824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702984, 36.088066, 30.911808>,  <37.610382, 35.880615, 30.989199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702984, 36.088066, 30.911808>,  <37.857319, 36.433815, 30.782824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702984, 36.088066, 30.911808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528653, -0.079299, -0.845126,
		0.756077, -0.496554, -0.426358,
		-0.385841, -0.864376, 0.322461,
		37.587231, 35.828754, 31.008547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797554, 36.031395, 30.128014>,  <37.857319, 36.433815, 30.782824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797554, 36.031395, 30.128014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569271, 35.818932, 30.378508>,  <37.432301, 35.691456, 30.528805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569271, 35.818932, 30.378508>,  <37.797554, 36.031395, 30.128014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569271, 35.818932, 30.378508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606864, -0.240936, -0.757407,
		0.553183, -0.812295, -0.184836,
		-0.570705, -0.531155, 0.626235,
		37.398060, 35.659584, 30.566378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811703, 35.349674, 29.979450>,  <37.797554, 36.031395, 30.128014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811703, 35.349674, 29.979450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459858, 35.450699, 30.140697>,  <37.248753, 35.511314, 30.237446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459858, 35.450699, 30.140697>,  <37.811703, 35.349674, 29.979450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459858, 35.450699, 30.140697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467830, -0.305777, -0.829238,
		-0.086165, -0.917995, 0.387118,
		-0.879608, 0.252557, 0.403119,
		37.195976, 35.526466, 30.261633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365616, 34.925209, 29.578823>,  <37.811703, 35.349674, 29.979450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365616, 34.925209, 29.578823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085697, 35.153858, 29.750183>,  <36.917747, 35.291050, 29.852999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085697, 35.153858, 29.750183>,  <37.365616, 34.925209, 29.578823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085697, 35.153858, 29.750183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654509, -0.272818, -0.705116,
		-0.286214, -0.773809, 0.565067,
		-0.699786, 0.571655, 0.428381,
		36.875759, 35.325348, 29.878704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747540, 34.602268, 29.502317>,  <37.365616, 34.925209, 29.578823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747540, 34.602268, 29.502317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611462, 34.968994, 29.585964>,  <36.529816, 35.189030, 29.636152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611462, 34.968994, 29.585964>,  <36.747540, 34.602268, 29.502317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611462, 34.968994, 29.585964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554771, -0.016116, -0.831847,
		-0.759276, -0.398997, 0.514102,
		-0.340190, 0.916810, 0.209115,
		36.509403, 35.244038, 29.648699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097900, 34.591312, 29.463560>,  <36.747540, 34.602268, 29.502317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097900, 34.591312, 29.463560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175888, 34.979813, 29.408909>,  <36.222679, 35.212914, 29.376118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175888, 34.979813, 29.408909>,  <36.097900, 34.591312, 29.463560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175888, 34.979813, 29.408909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688417, 0.036290, -0.724406,
		-0.698619, 0.235295, 0.675698,
		0.194971, 0.971246, -0.136628,
		36.234379, 35.271187, 29.367920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445591, 34.899361, 29.381113>,  <36.097900, 34.591312, 29.463560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445591, 34.899361, 29.381113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717571, 35.138721, 29.211605>,  <35.880760, 35.282337, 29.109900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717571, 35.138721, 29.211605>,  <35.445591, 34.899361, 29.381113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717571, 35.138721, 29.211605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562845, 0.055528, -0.824695,
		-0.469965, 0.799272, 0.374563,
		0.679954, 0.598399, -0.423770,
		35.921558, 35.318241, 29.084475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070335, 35.479145, 29.117836>,  <35.445591, 34.899361, 29.381113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070335, 35.479145, 29.117836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428886, 35.524475, 28.946407>,  <35.644016, 35.551674, 28.843550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428886, 35.524475, 28.946407>,  <35.070335, 35.479145, 29.117836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428886, 35.524475, 28.946407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436395, 0.055605, -0.898036,
		-0.077937, 0.992001, 0.099296,
		0.896374, 0.113322, -0.428570,
		35.697800, 35.558472, 28.817837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016945, 36.024967, 28.634640>,  <35.070335, 35.479145, 29.117836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016945, 36.024967, 28.634640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337067, 35.822086, 28.506733>,  <35.529140, 35.700356, 28.429989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337067, 35.822086, 28.506733>,  <35.016945, 36.024967, 28.634640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337067, 35.822086, 28.506733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325156, 0.080944, -0.942190,
		0.503767, 0.858016, -0.100141,
		0.800308, -0.507205, -0.319766,
		35.577160, 35.669926, 28.410803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100986, 36.816135, 28.905020>,  <35.016945, 36.024967, 28.634640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100986, 36.816135, 28.905020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799000, 37.058475, 29.005394>,  <34.617809, 37.203880, 29.065619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799000, 37.058475, 29.005394>,  <35.100986, 36.816135, 28.905020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799000, 37.058475, 29.005394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278535, -0.050164, 0.959115,
		0.593669, 0.793995, -0.130878,
		-0.754967, 0.605851, 0.250936,
		34.572510, 37.240231, 29.080675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422699, 37.485031, 29.305262>,  <35.100986, 36.816135, 28.905020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422699, 37.485031, 29.305262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044537, 37.422611, 29.419706>,  <34.817638, 37.385159, 29.488373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044537, 37.422611, 29.419706>,  <35.422699, 37.485031, 29.305262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044537, 37.422611, 29.419706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285762, 0.025153, 0.957970,
		-0.156684, 0.987429, 0.020812,
		-0.945405, -0.156046, 0.286111,
		34.760914, 37.375797, 29.505539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336639, 37.937679, 29.892990>,  <35.422699, 37.485031, 29.305262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336639, 37.937679, 29.892990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029980, 37.683594, 29.930389>,  <34.845982, 37.531143, 29.952829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029980, 37.683594, 29.930389>,  <35.336639, 37.937679, 29.892990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029980, 37.683594, 29.930389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186846, -0.081403, 0.979011,
		-0.614273, 0.768032, 0.181096,
		-0.766653, -0.635217, 0.093500,
		34.799984, 37.493031, 29.958439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918026, 38.179016, 30.477209>,  <35.336639, 37.937679, 29.892990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918026, 38.179016, 30.477209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753910, 37.816772, 30.434246>,  <34.655441, 37.599426, 30.408468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753910, 37.816772, 30.434246>,  <34.918026, 38.179016, 30.477209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753910, 37.816772, 30.434246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115469, -0.168416, 0.978929,
		-0.904618, 0.389238, 0.173669,
		-0.410285, -0.905610, -0.107407,
		34.630825, 37.545090, 30.402023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446529, 38.200977, 30.895065>,  <34.918026, 38.179016, 30.477209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446529, 38.200977, 30.895065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536880, 37.816212, 30.833483>,  <34.591091, 37.585354, 30.796534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536880, 37.816212, 30.833483>,  <34.446529, 38.200977, 30.895065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536880, 37.816212, 30.833483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240685, -0.098036, 0.965640,
		-0.943954, -0.255172, 0.209374,
		0.225878, -0.961913, -0.153957,
		34.604645, 37.527637, 30.787296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971596, 37.739632, 31.299786>,  <34.446529, 38.200977, 30.895065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971596, 37.739632, 31.299786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286694, 37.507900, 31.216034>,  <34.475750, 37.368862, 31.165783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286694, 37.507900, 31.216034>,  <33.971596, 37.739632, 31.299786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286694, 37.507900, 31.216034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160897, -0.134595, 0.977751,
		-0.594624, -0.803902, -0.012813,
		0.787740, -0.579333, -0.209379,
		34.523014, 37.334099, 31.153221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918777, 37.097263, 31.659977>,  <33.971596, 37.739632, 31.299786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918777, 37.097263, 31.659977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311184, 37.104954, 31.582798>,  <34.546627, 37.109570, 31.536491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311184, 37.104954, 31.582798>,  <33.918777, 37.097263, 31.659977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311184, 37.104954, 31.582798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187487, -0.347914, 0.918588,
		-0.049466, -0.937329, -0.344916,
		0.981021, 0.019229, -0.192947,
		34.605492, 37.110722, 31.524914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209492, 36.426792, 32.007923>,  <33.918777, 37.097263, 31.659977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209492, 36.426792, 32.007923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507053, 36.690014, 31.961338>,  <34.685593, 36.847946, 31.933386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507053, 36.690014, 31.961338>,  <34.209492, 36.426792, 32.007923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507053, 36.690014, 31.961338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275735, -0.143492, 0.950463,
		0.608746, -0.739171, -0.288193,
		0.743908, 0.658055, -0.116465,
		34.730225, 36.887432, 31.926399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808285, 36.095879, 32.392513>,  <34.209492, 36.426792, 32.007923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808285, 36.095879, 32.392513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889961, 36.487118, 32.376347>,  <34.938965, 36.721863, 32.366646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889961, 36.487118, 32.376347>,  <34.808285, 36.095879, 32.392513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889961, 36.487118, 32.376347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098328, 0.020582, 0.994941,
		0.973981, -0.207130, -0.091972,
		0.204189, 0.978097, -0.040413,
		34.951218, 36.780548, 32.364223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139179, 36.049789, 32.931450>,  <34.808285, 36.095879, 32.392513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139179, 36.049789, 32.931450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060482, 36.435535, 32.860703>,  <35.013264, 36.666985, 32.818253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060482, 36.435535, 32.860703>,  <35.139179, 36.049789, 32.931450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060482, 36.435535, 32.860703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154699, 0.208670, 0.965673,
		0.968173, 0.162631, -0.190242,
		-0.196746, 0.964369, -0.176869,
		35.001457, 36.724846, 32.807640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601292, 36.446419, 33.339420>,  <35.139179, 36.049789, 32.931450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601292, 36.446419, 33.339420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318012, 36.715187, 33.252716>,  <35.148045, 36.876446, 33.200695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318012, 36.715187, 33.252716>,  <35.601292, 36.446419, 33.339420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318012, 36.715187, 33.252716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074720, 0.376620, 0.923349,
		0.702050, 0.637717, -0.316927,
		-0.708196, 0.671919, -0.216756,
		35.105553, 36.916763, 33.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845665, 37.181644, 33.536587>,  <35.601292, 36.446419, 33.339420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845665, 37.181644, 33.536587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447533, 37.211617, 33.512268>,  <35.208652, 37.229599, 33.497677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447533, 37.211617, 33.512268>,  <35.845665, 37.181644, 33.536587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447533, 37.211617, 33.512268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011858, 0.530286, 0.847736,
		0.095757, 0.844501, -0.526923,
		-0.995334, 0.074929, -0.060792,
		35.148933, 37.234097, 33.494030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752720, 37.849232, 33.782921>,  <35.845665, 37.181644, 33.536587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752720, 37.849232, 33.782921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407928, 37.649551, 33.818218>,  <35.201054, 37.529743, 33.839397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407928, 37.649551, 33.818218>,  <35.752720, 37.849232, 33.782921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407928, 37.649551, 33.818218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158229, 0.430314, 0.888704,
		-0.481619, 0.752080, -0.449910,
		-0.861979, -0.499205, 0.088246,
		35.149334, 37.499790, 33.844692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357670, 38.280499, 34.048214>,  <35.752720, 37.849232, 33.782921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357670, 38.280499, 34.048214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175133, 37.936626, 34.140045>,  <35.065609, 37.730305, 34.195145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175133, 37.936626, 34.140045>,  <35.357670, 38.280499, 34.048214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175133, 37.936626, 34.140045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123025, 0.316490, 0.940584,
		-0.881258, 0.400985, -0.250189,
		-0.456342, -0.859678, 0.229578,
		35.038231, 37.678722, 34.208920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110149, 38.417297, 33.302883>,  <35.357670, 38.280499, 34.048214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110149, 38.417297, 33.302883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049385, 38.810299, 33.345974>,  <35.012928, 39.046101, 33.371826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049385, 38.810299, 33.345974>,  <35.110149, 38.417297, 33.302883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049385, 38.810299, 33.345974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362494, 0.046013, -0.930850,
		-0.919522, -0.180457, 0.349163,
		-0.151912, 0.982506, 0.107724,
		35.003811, 39.105049, 33.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467793, 38.654366, 32.905148>,  <35.110149, 38.417297, 33.302883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467793, 38.654366, 32.905148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685089, 38.984825, 32.964970>,  <34.815468, 39.183102, 33.000862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685089, 38.984825, 32.964970>,  <34.467793, 38.654366, 32.905148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685089, 38.984825, 32.964970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073016, 0.223941, -0.971864,
		-0.836394, 0.517039, 0.181977,
		0.543244, 0.826148, 0.149551,
		34.848061, 39.232670, 33.009834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013206, 39.278255, 32.793591>,  <34.467793, 38.654366, 32.905148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013206, 39.278255, 32.793591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402187, 39.317257, 32.708897>,  <34.635574, 39.340656, 32.658081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402187, 39.317257, 32.708897>,  <34.013206, 39.278255, 32.793591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402187, 39.317257, 32.708897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233041, 0.428644, -0.872901,
		0.005651, 0.898197, 0.439557,
		0.972450, 0.097502, -0.211739,
		34.693924, 39.346508, 32.645374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115963, 39.956326, 32.488068>,  <34.013206, 39.278255, 32.793591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115963, 39.956326, 32.488068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455517, 39.771297, 32.385757>,  <34.659248, 39.660282, 32.324371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455517, 39.771297, 32.385757>,  <34.115963, 39.956326, 32.488068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455517, 39.771297, 32.385757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065282, 0.388441, -0.919158,
		0.524527, 0.796959, 0.299545,
		0.848887, -0.462569, -0.255775,
		34.710182, 39.632526, 32.309025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555374, 40.556973, 32.230518>,  <34.115963, 39.956326, 32.488068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555374, 40.556973, 32.230518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735920, 40.219078, 32.115498>,  <34.844246, 40.016342, 32.046486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735920, 40.219078, 32.115498>,  <34.555374, 40.556973, 32.230518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735920, 40.219078, 32.115498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151626, 0.390162, -0.908176,
		0.879365, 0.366315, 0.304189,
		0.451361, -0.844741, -0.287552,
		34.871326, 39.965656, 32.029232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108814, 40.748268, 31.942287>,  <34.555374, 40.556973, 32.230518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108814, 40.748268, 31.942287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035339, 40.379929, 31.804708>,  <34.991253, 40.158924, 31.722162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035339, 40.379929, 31.804708>,  <35.108814, 40.748268, 31.942287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035339, 40.379929, 31.804708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063896, 0.337974, -0.938984,
		0.980905, -0.194459, -0.003244,
		-0.183690, -0.920847, -0.343946,
		34.980232, 40.103676, 31.701525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638588, 40.669056, 31.346836>,  <35.108814, 40.748268, 31.942287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638588, 40.669056, 31.346836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317879, 40.431026, 31.324757>,  <35.125454, 40.288208, 31.311508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317879, 40.431026, 31.324757>,  <35.638588, 40.669056, 31.346836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317879, 40.431026, 31.324757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016015, 0.070937, -0.997352,
		0.597413, -0.800535, -0.047345,
		-0.801774, -0.595073, -0.055199,
		35.077347, 40.252506, 31.308197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813496, 40.319145, 30.755968>,  <35.638588, 40.669056, 31.346836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813496, 40.319145, 30.755968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418415, 40.279736, 30.804529>,  <35.181366, 40.256092, 30.833666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418415, 40.279736, 30.804529>,  <35.813496, 40.319145, 30.755968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418415, 40.279736, 30.804529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127122, 0.053977, -0.990417,
		0.091029, -0.993669, -0.065838,
		-0.987701, -0.098527, 0.121404,
		35.122105, 40.250179, 30.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620415, 39.880825, 30.279684>,  <35.813496, 40.319145, 30.755968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620415, 39.880825, 30.279684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294521, 40.092331, 30.374863>,  <35.098984, 40.219234, 30.431969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294521, 40.092331, 30.374863>,  <35.620415, 39.880825, 30.279684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294521, 40.092331, 30.374863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213771, 0.107543, -0.970946,
		-0.538989, -0.841929, 0.025415,
		-0.814735, 0.528762, 0.237944,
		35.050102, 40.250961, 30.446245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189266, 39.656841, 29.753674>,  <35.620415, 39.880825, 30.279684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189266, 39.656841, 29.753674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031288, 39.992916, 29.902321>,  <34.936501, 40.194561, 29.991508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031288, 39.992916, 29.902321>,  <35.189266, 39.656841, 29.753674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031288, 39.992916, 29.902321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171100, 0.330154, -0.928290,
		-0.902629, -0.430211, 0.013362,
		-0.394949, 0.840188, 0.371616,
		34.912804, 40.244972, 30.013805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654099, 39.762623, 29.332090>,  <35.189266, 39.656841, 29.753674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654099, 39.762623, 29.332090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701756, 40.119522, 29.506304>,  <34.730350, 40.333664, 29.610832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701756, 40.119522, 29.506304>,  <34.654099, 39.762623, 29.332090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701756, 40.119522, 29.506304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105682, 0.447565, -0.887985,
		-0.987236, 0.059772, 0.147621,
		0.119146, 0.892252, 0.435535,
		34.737499, 40.387199, 29.636965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050259, 40.186901, 29.039459>,  <34.654099, 39.762623, 29.332090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050259, 40.186901, 29.039459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335342, 40.417736, 29.198965>,  <34.506393, 40.556236, 29.294668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335342, 40.417736, 29.198965>,  <34.050259, 40.186901, 29.039459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335342, 40.417736, 29.198965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056011, 0.519842, -0.852424,
		-0.699221, 0.629864, 0.338172,
		0.712707, 0.577092, 0.398764,
		34.549156, 40.590862, 29.318594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903431, 40.811417, 28.649733>,  <34.050259, 40.186901, 29.039459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903431, 40.811417, 28.649733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282986, 40.820530, 28.775650>,  <34.510719, 40.825996, 28.851200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282986, 40.820530, 28.775650>,  <33.903431, 40.811417, 28.649733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282986, 40.820530, 28.775650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280264, 0.397864, -0.873589,
		-0.145147, 0.917162, 0.371142,
		0.948886, 0.022781, 0.314796,
		34.567650, 40.827366, 28.870089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193348, 41.483234, 28.433470>,  <33.903431, 40.811417, 28.649733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193348, 41.483234, 28.433470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499935, 41.235779, 28.502542>,  <34.683887, 41.087307, 28.543985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499935, 41.235779, 28.502542>,  <34.193348, 41.483234, 28.433470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499935, 41.235779, 28.502542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468927, 0.355265, -0.808637,
		0.438905, 0.700768, 0.562394,
		0.766466, -0.618636, 0.172682,
		34.729874, 41.050186, 28.554348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785378, 41.938812, 28.503805>,  <34.193348, 41.483234, 28.433470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785378, 41.938812, 28.503805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906479, 41.566246, 28.423012>,  <34.979141, 41.342705, 28.374537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906479, 41.566246, 28.423012>,  <34.785378, 41.938812, 28.503805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906479, 41.566246, 28.423012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385063, 0.313403, -0.868047,
		0.871817, 0.185031, 0.453540,
		0.302756, -0.931419, -0.201982,
		34.997307, 41.286819, 28.362417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398849, 42.019623, 28.139936>,  <34.785378, 41.938812, 28.503805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398849, 42.019623, 28.139936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333389, 41.637810, 28.040272>,  <35.294113, 41.408722, 27.980473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333389, 41.637810, 28.040272>,  <35.398849, 42.019623, 28.139936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333389, 41.637810, 28.040272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470929, 0.146343, -0.869948,
		0.866859, -0.259705, 0.425569,
		-0.163651, -0.954535, -0.249162,
		35.284294, 41.351448, 27.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041843, 41.882210, 27.794476>,  <35.398849, 42.019623, 28.139936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041843, 41.882210, 27.794476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770370, 41.609806, 27.684488>,  <35.607487, 41.446362, 27.618496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770370, 41.609806, 27.684488>,  <36.041843, 41.882210, 27.794476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770370, 41.609806, 27.684488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323557, 0.058854, -0.944377,
		0.659315, -0.729904, 0.180403,
		-0.678686, -0.681012, -0.274968,
		35.566765, 41.405502, 27.601997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350060, 41.398083, 27.245615>,  <36.041843, 41.882210, 27.794476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350060, 41.398083, 27.245615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960022, 41.311119, 27.228046>,  <35.726002, 41.258942, 27.217505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960022, 41.311119, 27.228046>,  <36.350060, 41.398083, 27.245615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960022, 41.311119, 27.228046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079338, -0.156955, -0.984414,
		0.207127, -0.963379, 0.170294,
		-0.975092, -0.217409, -0.043923,
		35.667496, 41.245895, 27.214869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302101, 40.759689, 26.878204>,  <36.350060, 41.398083, 27.245615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302101, 40.759689, 26.878204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964687, 40.967445, 26.823542>,  <35.762238, 41.092098, 26.790745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964687, 40.967445, 26.823542>,  <36.302101, 40.759689, 26.878204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964687, 40.967445, 26.823542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020887, -0.222532, -0.974702,
		-0.536665, -0.825051, 0.176865,
		-0.843537, 0.519394, -0.136658,
		35.711628, 41.123264, 26.782545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820400, 40.358746, 26.468197>,  <36.302101, 40.759689, 26.878204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820400, 40.358746, 26.468197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684616, 40.733482, 26.434494>,  <35.603146, 40.958324, 26.414272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684616, 40.733482, 26.434494>,  <35.820400, 40.358746, 26.468197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684616, 40.733482, 26.434494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178496, -0.152108, -0.972112,
		-0.923528, -0.314956, 0.218856,
		-0.339463, 0.936838, -0.084258,
		35.582779, 41.014534, 26.409216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177544, 40.311947, 26.131350>,  <35.820400, 40.358746, 26.468197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177544, 40.311947, 26.131350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276310, 40.693058, 26.060638>,  <35.335567, 40.921726, 26.018211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276310, 40.693058, 26.060638>,  <35.177544, 40.311947, 26.131350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276310, 40.693058, 26.060638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342899, -0.084719, -0.935544,
		-0.906341, 0.291615, 0.305788,
		0.246913, 0.952777, -0.176779,
		35.350384, 40.978889, 26.007605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585510, 40.700623, 26.000547>,  <35.177544, 40.311947, 26.131350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585510, 40.700623, 26.000547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893986, 40.889130, 25.829348>,  <35.079071, 41.002232, 25.726627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893986, 40.889130, 25.829348>,  <34.585510, 40.700623, 26.000547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893986, 40.889130, 25.829348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490573, 0.011452, -0.871325,
		-0.405724, 0.881917, 0.240021,
		0.771185, 0.471266, -0.427998,
		35.125340, 41.030510, 25.700949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220699, 41.083202, 25.430492>,  <34.585510, 40.700623, 26.000547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220699, 41.083202, 25.430492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610966, 41.117596, 25.349804>,  <34.845123, 41.138229, 25.301392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610966, 41.117596, 25.349804>,  <34.220699, 41.083202, 25.430492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610966, 41.117596, 25.349804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200840, -0.018860, -0.979443,
		-0.088018, 0.996118, -0.001133,
		0.975662, 0.085981, -0.201720,
		34.903664, 41.143391, 25.289288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274399, 41.594093, 24.852386>,  <34.220699, 41.083202, 25.430492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274399, 41.594093, 24.852386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613304, 41.383301, 24.825733>,  <34.816647, 41.256824, 24.809742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613304, 41.383301, 24.825733>,  <34.274399, 41.594093, 24.852386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613304, 41.383301, 24.825733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162751, -0.138139, -0.976949,
		0.505628, 0.838576, -0.202806,
		0.847262, -0.526980, -0.066632,
		34.867481, 41.225208, 24.805744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751961, 41.933189, 24.315315>,  <34.274399, 41.594093, 24.852386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751961, 41.933189, 24.315315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870392, 41.553032, 24.353449>,  <34.941452, 41.324936, 24.376329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870392, 41.553032, 24.353449>,  <34.751961, 41.933189, 24.315315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870392, 41.553032, 24.353449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089793, -0.071674, -0.993378,
		0.950933, 0.302680, 0.064117,
		0.296080, -0.950393, 0.095336,
		34.959217, 41.267914, 24.382050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181171, 41.926414, 23.897408>,  <34.751961, 41.933189, 24.315315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181171, 41.926414, 23.897408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144680, 41.532806, 23.958569>,  <35.122784, 41.296642, 23.995264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144680, 41.532806, 23.958569>,  <35.181171, 41.926414, 23.897408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144680, 41.532806, 23.958569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081749, -0.160424, -0.983657,
		0.992469, -0.077241, 0.095079,
		-0.091232, -0.984021, 0.152902,
		35.117310, 41.237598, 24.004438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724537, 41.606159, 23.568127>,  <35.181171, 41.926414, 23.897408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724537, 41.606159, 23.568127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462708, 41.304176, 23.584000>,  <35.305611, 41.122986, 23.593523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462708, 41.304176, 23.584000>,  <35.724537, 41.606159, 23.568127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462708, 41.304176, 23.584000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071318, 0.009409, -0.997409,
		0.752631, -0.655704, -0.060001,
		-0.654569, -0.754960, 0.039682,
		35.266338, 41.077690, 23.595903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920521, 41.115440, 23.067829>,  <35.724537, 41.606159, 23.568127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920521, 41.115440, 23.067829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535667, 41.022408, 23.124678>,  <35.304756, 40.966587, 23.158787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535667, 41.022408, 23.124678>,  <35.920521, 41.115440, 23.067829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535667, 41.022408, 23.124678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141140, -0.020951, -0.989768,
		0.233179, -0.972351, -0.012668,
		-0.962137, -0.232581, 0.142123,
		35.247025, 40.952633, 23.167315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479298, 40.718838, 22.816475>,  <35.920521, 41.115440, 23.067829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479298, 40.718838, 22.816475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813461, 40.932888, 22.766304>,  <37.013958, 41.061317, 22.736202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813461, 40.932888, 22.766304>,  <36.479298, 40.718838, 22.816475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813461, 40.932888, 22.766304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195260, -0.075637, 0.977831,
		0.513773, -0.841381, -0.167676,
		0.835410, 0.535124, -0.125428,
		37.064083, 41.093426, 22.728676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033352, 40.293762, 23.041763>,  <36.479298, 40.718838, 22.816475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033352, 40.293762, 23.041763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158100, 40.672108, 23.077740>,  <37.232948, 40.899113, 23.099325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158100, 40.672108, 23.077740>,  <37.033352, 40.293762, 23.041763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158100, 40.672108, 23.077740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440549, -0.227826, 0.868339,
		0.841817, -0.231182, -0.487748,
		0.311866, 0.945859, 0.089941,
		37.251659, 40.955864, 23.104721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683662, 40.233776, 23.171164>,  <37.033352, 40.293762, 23.041763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683662, 40.233776, 23.171164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596909, 40.601593, 23.302258>,  <37.544857, 40.822281, 23.380913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596909, 40.601593, 23.302258>,  <37.683662, 40.233776, 23.171164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596909, 40.601593, 23.302258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523580, -0.173778, 0.834065,
		0.823909, 0.352488, -0.443764,
		-0.216882, 0.919540, 0.327733,
		37.531845, 40.877457, 23.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245522, 40.546860, 23.473089>,  <37.683662, 40.233776, 23.171164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245522, 40.546860, 23.473089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955669, 40.776711, 23.625254>,  <37.781757, 40.914619, 23.716553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955669, 40.776711, 23.625254>,  <38.245522, 40.546860, 23.473089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955669, 40.776711, 23.625254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453152, -0.018567, 0.891240,
		0.519195, 0.818204, -0.246940,
		-0.724631, 0.574628, 0.380410,
		37.738281, 40.949100, 23.739376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645458, 41.054630, 23.831680>,  <38.245522, 40.546860, 23.473089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645458, 41.054630, 23.831680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282795, 41.026718, 23.998100>,  <38.065197, 41.009972, 24.097952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282795, 41.026718, 23.998100>,  <38.645458, 41.054630, 23.831680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282795, 41.026718, 23.998100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421859, -0.146531, 0.894742,
		-0.001475, 0.986741, 0.162293,
		-0.906660, -0.069785, 0.416050,
		38.010796, 41.005783, 24.122915>
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
