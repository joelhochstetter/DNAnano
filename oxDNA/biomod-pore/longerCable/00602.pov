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
	<24.123964, 34.808918, 34.907928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479206, 34.982677, 34.968018>,  <24.692352, 35.086933, 35.004070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479206, 34.982677, 34.968018>,  <24.123964, 34.808918, 34.907928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479206, 34.982677, 34.968018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327011, 0.367466, 0.870651,
		0.322998, -0.822359, 0.468400,
		0.888108, 0.434391, 0.150230,
		24.745638, 35.112995, 35.013084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429405, 34.575294, 35.572796>,  <24.123964, 34.808918, 34.907928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429405, 34.575294, 35.572796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520401, 34.946316, 35.454212>,  <24.574999, 35.168930, 35.383060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520401, 34.946316, 35.454212>,  <24.429405, 34.575294, 35.572796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520401, 34.946316, 35.454212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226156, 0.346444, 0.910401,
		0.947155, -0.140059, 0.288584,
		0.227488, 0.927556, -0.296461,
		24.588648, 35.224583, 35.365273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978546, 34.841351, 36.062214>,  <24.429405, 34.575294, 35.572796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978546, 34.841351, 36.062214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704639, 35.086781, 35.904922>,  <24.540295, 35.234039, 35.810547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704639, 35.086781, 35.904922>,  <24.978546, 34.841351, 36.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704639, 35.086781, 35.904922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165314, 0.394731, 0.903802,
		0.709765, 0.683898, -0.168866,
		-0.684766, 0.613572, -0.393224,
		24.499210, 35.270851, 35.786957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155334, 35.638298, 36.086586>,  <24.978546, 34.841351, 36.062214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155334, 35.638298, 36.086586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777361, 35.518482, 36.139305>,  <24.550577, 35.446590, 36.170937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777361, 35.518482, 36.139305>,  <25.155334, 35.638298, 36.086586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777361, 35.518482, 36.139305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036099, 0.495697, 0.867745,
		-0.325260, 0.815205, -0.479215,
		-0.944935, -0.299542, 0.131802,
		24.493881, 35.428619, 36.178844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461063, 36.178577, 36.028625>,  <25.155334, 35.638298, 36.086586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461063, 36.178577, 36.028625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481466, 35.868340, 36.280293>,  <24.493708, 35.682198, 36.431293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481466, 35.868340, 36.280293>,  <24.461063, 36.178577, 36.028625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481466, 35.868340, 36.280293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165085, 0.627871, 0.760608,
		-0.984960, 0.065070, 0.160065,
		0.051008, -0.775593, 0.629169,
		24.496769, 35.635662, 36.469044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.969734, 36.191570, 36.500996>,  <24.461063, 36.178577, 36.028625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.969734, 36.191570, 36.500996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298517, 36.034817, 36.666313>,  <24.495787, 35.940765, 36.765503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298517, 36.034817, 36.666313>,  <23.969734, 36.191570, 36.500996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298517, 36.034817, 36.666313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045442, 0.678208, 0.733463,
		-0.567731, -0.621657, 0.539651,
		0.821959, -0.391888, 0.413289,
		24.545105, 35.917252, 36.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264313, 36.286610, 37.174423>,  <23.969734, 36.191570, 36.500996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264313, 36.286610, 37.174423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408298, 36.336300, 37.544289>,  <24.494690, 36.366116, 37.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408298, 36.336300, 37.544289>,  <24.264313, 36.286610, 37.174423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408298, 36.336300, 37.544289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657473, 0.669399, -0.345882,
		-0.661933, 0.732443, 0.159285,
		0.359964, 0.124225, 0.924659,
		24.516287, 36.373566, 37.821686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406868, 36.990017, 37.249073>,  <24.264313, 36.286610, 37.174423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406868, 36.990017, 37.249073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612370, 36.802132, 37.536247>,  <24.735670, 36.689400, 37.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612370, 36.802132, 37.536247>,  <24.406868, 36.990017, 37.249073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612370, 36.802132, 37.536247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788491, 0.588321, -0.179335,
		-0.338141, 0.658219, 0.672613,
		0.513754, -0.469709, 0.717935,
		24.766495, 36.661221, 37.751629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792273, 37.469170, 37.667515>,  <24.406868, 36.990017, 37.249073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792273, 37.469170, 37.667515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998034, 37.126736, 37.687557>,  <25.121490, 36.921276, 37.699581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998034, 37.126736, 37.687557>,  <24.792273, 37.469170, 37.667515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998034, 37.126736, 37.687557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850435, 0.516773, 0.098522,
		-0.110236, -0.008070, 0.993873,
		0.514401, -0.856084, 0.050104,
		25.152353, 36.869911, 37.702587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078705, 37.342842, 38.351738>,  <24.792273, 37.469170, 37.667515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078705, 37.342842, 38.351738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275160, 37.223892, 38.024239>,  <25.393034, 37.152523, 37.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275160, 37.223892, 38.024239>,  <25.078705, 37.342842, 38.351738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275160, 37.223892, 38.024239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735331, 0.645423, 0.206682,
		0.466979, -0.703563, 0.535659,
		0.491140, -0.297371, -0.818751,
		25.422503, 37.134682, 37.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673540, 36.864174, 38.387630>,  <25.078705, 37.342842, 38.351738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673540, 36.864174, 38.387630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746017, 37.104424, 38.076138>,  <25.789505, 37.248573, 37.889244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746017, 37.104424, 38.076138>,  <25.673540, 36.864174, 38.387630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746017, 37.104424, 38.076138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729203, 0.449252, 0.516174,
		0.659872, -0.661380, -0.356574,
		0.181196, 0.600623, -0.778730,
		25.800377, 37.284611, 37.842518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394684, 36.873074, 38.086468>,  <25.673540, 36.864174, 38.387630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394684, 36.873074, 38.086468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225153, 37.233738, 38.052124>,  <26.123434, 37.450138, 38.031517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225153, 37.233738, 38.052124>,  <26.394684, 36.873074, 38.086468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225153, 37.233738, 38.052124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785630, 0.413140, 0.460544,
		0.450727, 0.127740, -0.883475,
		-0.423828, 0.901664, -0.085856,
		26.098005, 37.504238, 38.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791771, 37.259441, 37.618671>,  <26.394684, 36.873074, 38.086468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791771, 37.259441, 37.618671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605846, 37.478001, 37.897354>,  <26.494291, 37.609135, 38.064564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605846, 37.478001, 37.897354>,  <26.791771, 37.259441, 37.618671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605846, 37.478001, 37.897354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884380, 0.324446, 0.335568,
		-0.042692, 0.772132, -0.634027,
		-0.464810, 0.546395, 0.696710,
		26.466404, 37.641918, 38.106365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397924, 37.185383, 38.148666>,  <26.791771, 37.259441, 37.618671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397924, 37.185383, 38.148666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760202, 37.250835, 38.305096>,  <27.977570, 37.290108, 38.398952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760202, 37.250835, 38.305096>,  <27.397924, 37.185383, 38.148666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760202, 37.250835, 38.305096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155416, -0.986437, 0.052798,
		0.394412, 0.012961, -0.918842,
		0.905696, 0.163627, 0.391077,
		28.031912, 37.299923, 38.422421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743238, 36.659401, 37.930660>,  <27.397924, 37.185383, 38.148666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743238, 36.659401, 37.930660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951307, 36.810909, 38.236851>,  <28.076149, 36.901814, 38.420563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951307, 36.810909, 38.236851>,  <27.743238, 36.659401, 37.930660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951307, 36.810909, 38.236851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150501, -0.922903, 0.354400,
		0.840695, -0.069146, -0.537076,
		0.520174, 0.378773, 0.765474,
		28.107359, 36.924541, 38.466492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441877, 36.245613, 38.120701>,  <27.743238, 36.659401, 37.930660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441877, 36.245613, 38.120701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337769, 36.421787, 38.464394>,  <28.275303, 36.527493, 38.670609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337769, 36.421787, 38.464394>,  <28.441877, 36.245613, 38.120701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337769, 36.421787, 38.464394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035669, -0.884909, 0.464397,
		0.964877, 0.151517, 0.214605,
		-0.260270, 0.440431, 0.859232,
		28.259687, 36.553917, 38.722164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543507, 36.156952, 37.440304>,  <28.441877, 36.245613, 38.120701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543507, 36.156952, 37.440304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772840, 35.997353, 37.726543>,  <28.910440, 35.901592, 37.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772840, 35.997353, 37.726543>,  <28.543507, 36.156952, 37.440304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772840, 35.997353, 37.726543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795581, -0.479842, 0.369869,
		0.195800, -0.781379, -0.592544,
		0.573335, -0.398997, 0.715603,
		28.944841, 35.877655, 37.941223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396900, 35.419575, 37.472904>,  <28.543507, 36.156952, 37.440304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396900, 35.419575, 37.472904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534681, 35.564743, 37.819233>,  <28.617350, 35.651844, 38.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534681, 35.564743, 37.819233>,  <28.396900, 35.419575, 37.472904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534681, 35.564743, 37.819233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664694, -0.557010, 0.497918,
		0.662974, -0.747013, 0.049366,
		0.344454, 0.362920, 0.865818,
		28.638018, 35.673618, 38.078979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935513, 34.879375, 37.275379>,  <28.396900, 35.419575, 37.472904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935513, 34.879375, 37.275379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265158, 35.055489, 37.132839>,  <29.462944, 35.161156, 37.047314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265158, 35.055489, 37.132839>,  <28.935513, 34.879375, 37.275379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265158, 35.055489, 37.132839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300972, 0.873340, 0.383005,
		0.479851, -0.208386, 0.852243,
		0.824111, 0.440287, -0.356354,
		29.512390, 35.187576, 37.025932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324392, 35.186287, 37.842659>,  <28.935513, 34.879375, 37.275379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324392, 35.186287, 37.842659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394655, 35.393543, 37.507835>,  <29.436813, 35.517899, 37.306942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394655, 35.393543, 37.507835>,  <29.324392, 35.186287, 37.842659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394655, 35.393543, 37.507835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093069, 0.855214, 0.509850,
		0.980042, -0.011654, 0.198447,
		0.175657, 0.518144, -0.837061,
		29.447351, 35.548985, 37.256718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076422, 35.237331, 37.691158>,  <29.324392, 35.186287, 37.842659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076422, 35.237331, 37.691158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117315, 35.633503, 37.728260>,  <30.141851, 35.871204, 37.750523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117315, 35.633503, 37.728260>,  <30.076422, 35.237331, 37.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117315, 35.633503, 37.728260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938155, -0.064992, -0.340061,
		-0.330777, 0.121786, -0.935818,
		0.102235, 0.990426, 0.092756,
		30.147985, 35.930630, 37.756088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409681, 35.627975, 37.183502>,  <30.076422, 35.237331, 37.691158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409681, 35.627975, 37.183502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454979, 35.931786, 37.439720>,  <30.482157, 36.114071, 37.593452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454979, 35.931786, 37.439720>,  <30.409681, 35.627975, 37.183502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454979, 35.931786, 37.439720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895887, 0.200698, -0.396366,
		-0.429606, 0.618741, -0.657722,
		0.113244, 0.759526, 0.640544,
		30.488953, 36.159645, 37.631882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645470, 36.233562, 36.876888>,  <30.409681, 35.627975, 37.183502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645470, 36.233562, 36.876888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777615, 36.277851, 37.251823>,  <30.856901, 36.304424, 37.476784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777615, 36.277851, 37.251823>,  <30.645470, 36.233562, 36.876888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777615, 36.277851, 37.251823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925846, 0.155052, -0.344627,
		-0.183494, 0.981682, -0.051290,
		0.330361, 0.110724, 0.937338,
		30.876722, 36.311069, 37.533024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040733, 36.936951, 36.971771>,  <30.645470, 36.233562, 36.876888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040733, 36.936951, 36.971771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160816, 36.648819, 37.221889>,  <31.232866, 36.475941, 37.371960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160816, 36.648819, 37.221889>,  <31.040733, 36.936951, 36.971771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160816, 36.648819, 37.221889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924729, 0.058970, -0.376030,
		0.233993, 0.691118, 0.683815,
		0.300206, -0.720332, 0.625298,
		31.250877, 36.432720, 37.409477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528774, 37.049187, 37.516773>,  <31.040733, 36.936951, 36.971771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528774, 37.049187, 37.516773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575180, 36.676388, 37.379414>,  <31.603024, 36.452709, 37.296997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575180, 36.676388, 37.379414>,  <31.528774, 37.049187, 37.516773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575180, 36.676388, 37.379414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856397, 0.268987, -0.440716,
		0.503116, -0.242957, 0.829365,
		0.116013, -0.931997, -0.343400,
		31.609983, 36.396790, 37.276394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227879, 36.715042, 37.599422>,  <31.528774, 37.049187, 37.516773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227879, 36.715042, 37.599422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089603, 36.531155, 37.272213>,  <32.006638, 36.420822, 37.075890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089603, 36.531155, 37.272213>,  <32.227879, 36.715042, 37.599422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089603, 36.531155, 37.272213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826516, 0.263562, -0.497399,
		0.444262, -0.848055, 0.288852,
		-0.345691, -0.459716, -0.818021,
		31.985895, 36.393238, 37.026806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616154, 36.021248, 37.332062>,  <32.227879, 36.715042, 37.599422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616154, 36.021248, 37.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459370, 36.269596, 37.060509>,  <32.365299, 36.418606, 36.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459370, 36.269596, 37.060509>,  <32.616154, 36.021248, 37.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459370, 36.269596, 37.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915511, 0.190581, -0.354287,
		-0.090584, -0.760395, -0.643113,
		-0.391963, 0.620870, -0.678886,
		32.341782, 36.455856, 36.856842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850956, 35.948643, 36.577267>,  <32.616154, 36.021248, 37.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850956, 35.948643, 36.577267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837791, 36.341679, 36.650406>,  <32.829895, 36.577499, 36.694290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837791, 36.341679, 36.650406>,  <32.850956, 35.948643, 36.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837791, 36.341679, 36.650406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909036, 0.105463, -0.403150,
		-0.415415, 0.152945, -0.896682,
		-0.032907, 0.982591, 0.182844,
		32.827919, 36.636456, 36.705257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512772, 36.140896, 36.660671>,  <32.850956, 35.948643, 36.577267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512772, 36.140896, 36.660671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763378, 35.833736, 36.714035>,  <33.913742, 35.649441, 36.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763378, 35.833736, 36.714035>,  <33.512772, 36.140896, 36.660671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763378, 35.833736, 36.714035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204627, 0.003105, 0.978835,
		-0.752064, -0.640559, -0.155188,
		0.626520, -0.767902, 0.133411,
		33.951336, 35.603367, 36.754059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238434, 35.444031, 36.911907>,  <33.512772, 36.140896, 36.660671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238434, 35.444031, 36.911907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609550, 35.507103, 37.047161>,  <33.832222, 35.544945, 37.128315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609550, 35.507103, 37.047161>,  <33.238434, 35.444031, 36.911907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609550, 35.507103, 37.047161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331568, -0.067074, 0.941044,
		0.171062, -0.985210, -0.009950,
		0.927794, 0.157678, 0.338138,
		33.887890, 35.554405, 37.148602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255611, 34.958847, 37.402786>,  <33.238434, 35.444031, 36.911907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255611, 34.958847, 37.402786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481030, 35.281574, 37.473732>,  <33.616280, 35.475212, 37.516300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481030, 35.281574, 37.473732>,  <33.255611, 34.958847, 37.402786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481030, 35.281574, 37.473732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270206, -0.022866, 0.962531,
		0.780646, -0.590353, 0.205122,
		0.563542, 0.806821, 0.177367,
		33.650093, 35.523621, 37.526943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831676, 34.879490, 37.899357>,  <33.255611, 34.958847, 37.402786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831676, 34.879490, 37.899357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677410, 35.247074, 37.932278>,  <33.584850, 35.467625, 37.952030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677410, 35.247074, 37.932278>,  <33.831676, 34.879490, 37.899357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677410, 35.247074, 37.932278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238268, -0.185373, 0.953344,
		0.891343, 0.348060, 0.290451,
		-0.385663, 0.918962, 0.082299,
		33.561710, 35.522762, 37.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534184, 34.957893, 37.557156>,  <33.831676, 34.879490, 37.899357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534184, 34.957893, 37.557156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498768, 34.679363, 37.272255>,  <34.477520, 34.512245, 37.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498768, 34.679363, 37.272255>,  <34.534184, 34.957893, 37.557156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498768, 34.679363, 37.272255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989921, -0.140856, 0.014655,
		-0.110530, -0.703773, 0.701774,
		-0.088535, -0.696321, -0.712249,
		34.472206, 34.470467, 37.058578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871017, 34.281025, 37.706165>,  <34.534184, 34.957893, 37.557156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871017, 34.281025, 37.706165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869804, 34.315884, 37.307690>,  <34.869076, 34.336800, 37.068604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869804, 34.315884, 37.307690>,  <34.871017, 34.281025, 37.706165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869804, 34.315884, 37.307690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994804, -0.101119, -0.011872,
		-0.101768, -0.991051, -0.086384,
		-0.003031, 0.087143, -0.996191,
		34.868896, 34.342026, 37.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148224, 33.756393, 37.258904>,  <34.871017, 34.281025, 37.706165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148224, 33.756393, 37.258904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 34.066692, 37.014923>,  <35.251759, 34.252872, 36.868534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 34.066692, 37.014923>,  <35.148224, 33.756393, 37.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212933, 34.066692, 37.014923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957059, -0.027339, -0.288601,
		-0.240558, 0.630448, 0.738016,
		0.161771, 0.775750, -0.609952,
		35.261463, 34.299416, 36.831936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857002, 34.161217, 37.332062>,  <35.148224, 33.756393, 37.258904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857002, 34.161217, 37.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104336, 34.012882, 37.609230>,  <36.252735, 33.923882, 37.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104336, 34.012882, 37.609230>,  <35.857002, 34.161217, 37.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104336, 34.012882, 37.609230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784845, 0.337310, -0.519846,
		-0.040954, 0.865277, 0.499618,
		0.618338, -0.370833, 0.692922,
		36.289837, 33.901634, 37.817108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294827, 34.569466, 37.539352>,  <35.857002, 34.161217, 37.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294827, 34.569466, 37.539352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508881, 34.239605, 37.612659>,  <36.637314, 34.041691, 37.656643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508881, 34.239605, 37.612659>,  <36.294827, 34.569466, 37.539352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508881, 34.239605, 37.612659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728230, 0.340373, -0.594834,
		0.428152, 0.451773, 0.782679,
		0.535133, -0.824650, 0.183263,
		36.669422, 33.992210, 37.667637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942928, 34.696293, 37.673481>,  <36.294827, 34.569466, 37.539352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942928, 34.696293, 37.673481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950710, 34.329700, 37.513641>,  <36.955379, 34.109745, 37.417740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950710, 34.329700, 37.513641>,  <36.942928, 34.696293, 37.673481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950710, 34.329700, 37.513641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767841, 0.269671, -0.581117,
		0.640345, -0.295522, 0.708961,
		0.019453, -0.916485, -0.399597,
		36.956547, 34.054756, 37.393761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569515, 34.313950, 37.772617>,  <36.942928, 34.696293, 37.673481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569515, 34.313950, 37.772617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415958, 34.261066, 37.407074>,  <37.323822, 34.229336, 37.187748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415958, 34.261066, 37.407074>,  <37.569515, 34.313950, 37.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415958, 34.261066, 37.407074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795259, 0.455603, -0.399985,
		0.469241, -0.880310, -0.069761,
		-0.383894, -0.132211, -0.913863,
		37.300789, 34.221405, 37.132915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037109, 33.871075, 37.275711>,  <37.569515, 34.313950, 37.772617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037109, 33.871075, 37.275711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803707, 34.122688, 37.070248>,  <37.663666, 34.273655, 36.946972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803707, 34.122688, 37.070248>,  <38.037109, 33.871075, 37.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803707, 34.122688, 37.070248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808189, 0.387706, -0.443299,
		-0.079701, -0.673798, -0.734605,
		-0.583504, 0.629031, -0.513656,
		37.628654, 34.311398, 36.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150333, 33.875999, 36.631905>,  <38.037109, 33.871075, 37.275711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150333, 33.875999, 36.631905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018902, 34.250240, 36.683567>,  <37.940044, 34.474785, 36.714565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018902, 34.250240, 36.683567>,  <38.150333, 33.875999, 36.631905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018902, 34.250240, 36.683567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875683, 0.353016, -0.329483,
		-0.353860, 0.004839, -0.935286,
		-0.328577, 0.935605, 0.129155,
		37.920330, 34.530922, 36.722313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044384, 34.331429, 36.064457>,  <38.150333, 33.875999, 36.631905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044384, 34.331429, 36.064457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167858, 34.544651, 36.379562>,  <38.241943, 34.672585, 36.568626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167858, 34.544651, 36.379562>,  <38.044384, 34.331429, 36.064457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167858, 34.544651, 36.379562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811991, 0.283648, -0.510112,
		-0.495365, 0.797116, -0.345280,
		0.308681, 0.533056, 0.787761,
		38.260464, 34.704567, 36.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150379, 35.077923, 35.980385>,  <38.044384, 34.331429, 36.064457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150379, 35.077923, 35.980385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427677, 34.916100, 36.218964>,  <38.594055, 34.819004, 36.362110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427677, 34.916100, 36.218964>,  <38.150379, 35.077923, 35.980385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427677, 34.916100, 36.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690128, 0.134150, -0.711145,
		0.207686, 0.904620, 0.372195,
		0.693246, -0.404557, 0.596443,
		38.635651, 34.794731, 36.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772770, 35.533752, 36.087120>,  <38.150379, 35.077923, 35.980385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772770, 35.533752, 36.087120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808971, 35.135395, 36.088409>,  <38.830692, 34.896381, 36.089184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808971, 35.135395, 36.088409>,  <38.772770, 35.533752, 36.087120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808971, 35.135395, 36.088409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785808, 0.069425, -0.614561,
		0.611812, 0.058156, 0.788863,
		0.090507, -0.995891, 0.003224,
		38.836124, 34.836628, 36.089378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393009, 35.506413, 36.290997>,  <38.772770, 35.533752, 36.087120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393009, 35.506413, 36.290997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284523, 35.179565, 36.087524>,  <39.219429, 34.983456, 35.965439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284523, 35.179565, 36.087524>,  <39.393009, 35.506413, 36.290997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284523, 35.179565, 36.087524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772005, 0.130959, -0.621979,
		0.574846, -0.561400, 0.595300,
		-0.271219, -0.817117, -0.508685,
		39.203156, 34.934429, 35.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984055, 35.278893, 36.240215>,  <39.393009, 35.506413, 36.290997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984055, 35.278893, 36.240215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733841, 35.117241, 35.973263>,  <39.583714, 35.020248, 35.813091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733841, 35.117241, 35.973263>,  <39.984055, 35.278893, 36.240215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733841, 35.117241, 35.973263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758971, -0.117012, -0.640524,
		0.180762, -0.907187, 0.379916,
		-0.625530, -0.404128, -0.667377,
		39.546181, 34.996002, 35.773048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194843, 34.645432, 35.898861>,  <39.984055, 35.278893, 36.240215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194843, 34.645432, 35.898861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015759, 34.917519, 35.666702>,  <39.908306, 35.080769, 35.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015759, 34.917519, 35.666702>,  <40.194843, 34.645432, 35.898861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015759, 34.917519, 35.666702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866248, 0.168995, -0.470164,
		-0.221728, -0.713266, -0.664897,
		-0.447716, 0.680214, -0.580395,
		39.881443, 35.121582, 35.492584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438225, 33.880264, 35.917923>,  <40.194843, 34.645432, 35.898861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438225, 33.880264, 35.917923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478100, 33.599934, 36.200455>,  <40.502026, 33.431736, 36.369972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478100, 33.599934, 36.200455>,  <40.438225, 33.880264, 35.917923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478100, 33.599934, 36.200455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789380, -0.487862, -0.372653,
		0.605758, -0.520415, -0.601853,
		0.099687, -0.700828, 0.706331,
		40.508007, 33.389687, 36.412354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290295, 33.151123, 35.646549>,  <40.438225, 33.880264, 35.917923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290295, 33.151123, 35.646549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184395, 33.143986, 36.032211>,  <40.120853, 33.139702, 36.263607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184395, 33.143986, 36.032211>,  <40.290295, 33.151123, 35.646549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184395, 33.143986, 36.032211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928095, -0.266739, -0.259789,
		0.261813, -0.963603, 0.054058,
		-0.264753, -0.017845, 0.964151,
		40.104969, 33.138634, 36.321457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078201, 32.468094, 35.799812>,  <40.290295, 33.151123, 35.646549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078201, 32.468094, 35.799812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902451, 32.763599, 36.004230>,  <39.797001, 32.940903, 36.126881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902451, 32.763599, 36.004230>,  <40.078201, 32.468094, 35.799812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902451, 32.763599, 36.004230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872239, -0.214816, -0.439377,
		-0.214816, -0.638808, 0.738768,
		0.439377, -0.738768, -0.511047,
		39.770638, 32.985229, 36.157543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499168, 32.146416, 36.108265>,  <40.078201, 32.468094, 35.799812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499168, 32.146416, 36.108265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448303, 32.541576, 36.072758>,  <39.417782, 32.778671, 36.051453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448303, 32.541576, 36.072758>,  <39.499168, 32.146416, 36.108265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448303, 32.541576, 36.072758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873341, -0.153945, -0.462143,
		-0.470217, 0.018757, 0.882351,
		-0.127165, 0.987901, -0.088769,
		39.410152, 32.837948, 36.046127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027645, 32.534786, 35.646751>,  <39.499168, 32.146416, 36.108265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027645, 32.534786, 35.646751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042789, 32.166973, 35.490280>,  <39.051876, 31.946285, 35.396397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042789, 32.166973, 35.490280>,  <39.027645, 32.534786, 35.646751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042789, 32.166973, 35.490280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434317, 0.337413, -0.835178,
		0.899964, 0.201515, -0.386595,
		0.037859, -0.919535, -0.391181,
		39.054146, 31.891113, 35.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401382, 32.470734, 34.899101>,  <39.027645, 32.534786, 35.646751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401382, 32.470734, 34.899101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104721, 32.210003, 34.962425>,  <38.926723, 32.053562, 35.000420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104721, 32.210003, 34.962425>,  <39.401382, 32.470734, 34.899101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104721, 32.210003, 34.962425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374029, 0.205949, -0.904261,
		0.556820, -0.729864, -0.396546,
		-0.741656, -0.651831, 0.158314,
		38.882225, 32.014454, 35.009918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346939, 32.107437, 34.233227>,  <39.401382, 32.470734, 34.899101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346939, 32.107437, 34.233227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023659, 32.107380, 34.468792>,  <38.829689, 32.107346, 34.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023659, 32.107380, 34.468792>,  <39.346939, 32.107437, 34.233227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023659, 32.107380, 34.468792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523965, 0.456682, -0.718959,
		-0.268838, -0.889630, -0.369167,
		-0.808200, -0.000147, 0.588908,
		38.781200, 32.107334, 34.645466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752148, 31.622364, 33.919472>,  <39.346939, 32.107437, 34.233227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752148, 31.622364, 33.919472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604397, 31.924299, 34.136280>,  <38.515747, 32.105461, 34.266365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604397, 31.924299, 34.136280>,  <38.752148, 31.622364, 33.919472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604397, 31.924299, 34.136280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412855, 0.389249, -0.823429,
		-0.832535, -0.527928, 0.167860,
		-0.369372, 0.754836, 0.542021,
		38.493584, 32.150749, 34.298885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045536, 31.707832, 33.648388>,  <38.752148, 31.622364, 33.919472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045536, 31.707832, 33.648388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128647, 31.846298, 34.014339>,  <38.178513, 31.929379, 34.233910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128647, 31.846298, 34.014339>,  <38.045536, 31.707832, 33.648388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128647, 31.846298, 34.014339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709720, 0.696982, -0.102533,
		-0.673146, -0.628001, 0.390499,
		0.207780, 0.346164, 0.914876,
		38.190979, 31.950148, 34.288803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453686, 31.782532, 34.019524>,  <38.045536, 31.707832, 33.648388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453686, 31.782532, 34.019524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627705, 32.032722, 34.278603>,  <37.732117, 32.182838, 34.434048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627705, 32.032722, 34.278603>,  <37.453686, 31.782532, 34.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627705, 32.032722, 34.278603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730059, 0.666071, -0.152850,
		-0.527015, -0.406359, 0.746410,
		0.435050, 0.625478, 0.647695,
		37.758221, 32.220367, 34.472912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986050, 31.758722, 34.574295>,  <37.453686, 31.782532, 34.019524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986050, 31.758722, 34.574295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196384, 32.093311, 34.512585>,  <37.322586, 32.294064, 34.475559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196384, 32.093311, 34.512585>,  <36.986050, 31.758722, 34.574295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196384, 32.093311, 34.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842753, 0.487804, -0.227628,
		-0.115148, 0.249715, 0.961449,
		0.525840, 0.836475, -0.154278,
		37.354137, 32.344254, 34.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606216, 32.281601, 34.770275>,  <36.986050, 31.758722, 34.574295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606216, 32.281601, 34.770275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850910, 32.421799, 34.486603>,  <36.997726, 32.505917, 34.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850910, 32.421799, 34.486603>,  <36.606216, 32.281601, 34.770275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850910, 32.421799, 34.486603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762021, 0.501776, -0.409323,
		0.212388, 0.790808, 0.574033,
		0.611732, 0.350490, -0.709183,
		37.034431, 32.526947, 34.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421520, 33.045963, 34.721115>,  <36.606216, 32.281601, 34.770275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421520, 33.045963, 34.721115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594002, 32.880909, 34.400169>,  <36.697491, 32.781876, 34.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594002, 32.880909, 34.400169>,  <36.421520, 33.045963, 34.721115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594002, 32.880909, 34.400169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751318, 0.328190, -0.572549,
		0.499585, 0.849718, -0.168506,
		0.431204, -0.412638, -0.802367,
		36.723362, 32.757118, 34.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262924, 33.594452, 34.167507>,  <36.421520, 33.045963, 34.721115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262924, 33.594452, 34.167507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353046, 33.263611, 33.961540>,  <36.407120, 33.065105, 33.837959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353046, 33.263611, 33.961540>,  <36.262924, 33.594452, 34.167507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353046, 33.263611, 33.961540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759457, 0.181967, -0.624591,
		0.610299, 0.531779, -0.587151,
		0.225302, -0.827103, -0.514918,
		36.420635, 33.015480, 33.807064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546299, 33.756901, 33.483986>,  <36.262924, 33.594452, 34.167507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546299, 33.756901, 33.483986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342350, 33.412922, 33.474819>,  <36.219982, 33.206535, 33.469318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342350, 33.412922, 33.474819>,  <36.546299, 33.756901, 33.483986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342350, 33.412922, 33.474819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687551, 0.423378, -0.589936,
		0.517015, -0.285035, -0.807125,
		-0.509871, -0.859945, -0.022917,
		36.189388, 33.154938, 33.467945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645119, 33.462677, 32.818352>,  <36.546299, 33.756901, 33.483986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645119, 33.462677, 32.818352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296486, 33.366364, 32.989174>,  <36.087307, 33.308575, 33.091667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296486, 33.366364, 32.989174>,  <36.645119, 33.462677, 32.818352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296486, 33.366364, 32.989174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489356, 0.480022, -0.728086,
		-0.029685, -0.843566, -0.536205,
		-0.871578, -0.240782, 0.427054,
		36.035011, 33.294128, 33.117290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197266, 33.042450, 32.384518>,  <36.645119, 33.462677, 32.818352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197266, 33.042450, 32.384518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010799, 33.269753, 32.655743>,  <35.898918, 33.406136, 32.818478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010799, 33.269753, 32.655743>,  <36.197266, 33.042450, 32.384518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010799, 33.269753, 32.655743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533649, 0.430688, -0.727823,
		-0.705624, -0.701137, 0.102476,
		-0.466169, 0.568256, 0.678065,
		35.870949, 33.440228, 32.859161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456924, 32.998936, 32.334129>,  <36.197266, 33.042450, 32.384518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456924, 32.998936, 32.334129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577221, 33.348274, 32.487400>,  <35.649399, 33.557877, 32.579361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577221, 33.348274, 32.487400>,  <35.456924, 32.998936, 32.334129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577221, 33.348274, 32.487400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576247, 0.486540, -0.656672,
		-0.759931, -0.023315, 0.649586,
		0.300739, 0.873347, 0.383172,
		35.667442, 33.610279, 32.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928452, 33.302750, 32.130318>,  <35.456924, 32.998936, 32.334129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928452, 33.302750, 32.130318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176392, 33.600250, 32.230412>,  <35.325157, 33.778751, 32.290466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176392, 33.600250, 32.230412>,  <34.928452, 33.302750, 32.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176392, 33.600250, 32.230412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418477, 0.583051, -0.696368,
		-0.663824, 0.326928, 0.672648,
		0.619851, 0.743754, 0.250231,
		35.362347, 33.823376, 32.305481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605820, 33.947163, 32.208523>,  <34.928452, 33.302750, 32.130318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605820, 33.947163, 32.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981747, 33.999939, 32.082447>,  <35.207302, 34.031605, 32.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981747, 33.999939, 32.082447>,  <34.605820, 33.947163, 32.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981747, 33.999939, 32.082447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338111, 0.492247, -0.802106,
		0.049318, 0.860398, 0.507231,
		0.939813, 0.131942, -0.315186,
		35.263691, 34.039520, 31.987890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633785, 34.614815, 31.961769>,  <34.605820, 33.947163, 32.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633785, 34.614815, 31.961769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934528, 34.434021, 31.769764>,  <35.114975, 34.325546, 31.654560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934528, 34.434021, 31.769764>,  <34.633785, 34.614815, 31.961769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934528, 34.434021, 31.769764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227370, 0.505636, -0.832247,
		0.618875, 0.734876, 0.277401,
		0.751862, -0.451984, -0.480014,
		35.160088, 34.298428, 31.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995518, 35.198563, 31.559032>,  <34.633785, 34.614815, 31.961769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995518, 35.198563, 31.559032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104282, 34.851112, 31.393358>,  <35.169540, 34.642643, 31.293953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104282, 34.851112, 31.393358>,  <34.995518, 35.198563, 31.559032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104282, 34.851112, 31.393358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046381, 0.418072, -0.907229,
		0.961205, 0.265892, 0.073389,
		0.271907, -0.868629, -0.414185,
		35.185856, 34.590523, 31.269102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711754, 35.314056, 31.211262>,  <34.995518, 35.198563, 31.559032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711754, 35.314056, 31.211262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504913, 35.001091, 31.072447>,  <35.380810, 34.813313, 30.989159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504913, 35.001091, 31.072447>,  <35.711754, 35.314056, 31.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504913, 35.001091, 31.072447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035542, 0.385475, -0.922034,
		0.855185, -0.489121, -0.171522,
		-0.517103, -0.782413, -0.347036,
		35.349781, 34.766369, 30.968336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153484, 34.990124, 30.593174>,  <35.711754, 35.314056, 31.211262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153484, 34.990124, 30.593174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779987, 34.856636, 30.541393>,  <35.555889, 34.776543, 30.510324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779987, 34.856636, 30.541393>,  <36.153484, 34.990124, 30.593174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779987, 34.856636, 30.541393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075872, 0.168909, -0.982707,
		0.349811, -0.927417, -0.132398,
		-0.933743, -0.333716, -0.129452,
		35.499863, 34.756523, 30.502558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199303, 34.655453, 29.928734>,  <36.153484, 34.990124, 30.593174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199303, 34.655453, 29.928734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805603, 34.700420, 29.983309>,  <35.569382, 34.727402, 30.016054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805603, 34.700420, 29.983309>,  <36.199303, 34.655453, 29.928734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805603, 34.700420, 29.983309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115528, 0.175161, -0.977738,
		-0.133813, -0.978101, -0.159414,
		-0.984249, 0.112418, 0.136437,
		35.510326, 34.734146, 30.024240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831650, 34.208591, 29.386007>,  <36.199303, 34.655453, 29.928734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831650, 34.208591, 29.386007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567982, 34.483147, 29.508884>,  <35.409782, 34.647881, 29.582611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567982, 34.483147, 29.508884>,  <35.831650, 34.208591, 29.386007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567982, 34.483147, 29.508884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248628, 0.186608, -0.950454,
		-0.709706, -0.702885, 0.047650,
		-0.659167, 0.686390, 0.307193,
		35.370232, 34.689064, 29.601042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162025, 34.033085, 29.106146>,  <35.831650, 34.208591, 29.386007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162025, 34.033085, 29.106146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129185, 34.419258, 29.205107>,  <35.109482, 34.650963, 29.264482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129185, 34.419258, 29.205107>,  <35.162025, 34.033085, 29.106146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129185, 34.419258, 29.205107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422080, 0.191197, -0.886167,
		-0.902834, -0.177175, 0.391792,
		-0.082097, 0.965429, 0.247401,
		35.104557, 34.708885, 29.279327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489964, 34.210899, 28.749685>,  <35.162025, 34.033085, 29.106146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489964, 34.210899, 28.749685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673615, 34.555145, 28.837812>,  <34.783806, 34.761692, 28.890688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673615, 34.555145, 28.837812>,  <34.489964, 34.210899, 28.749685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673615, 34.555145, 28.837812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245254, 0.361156, -0.899676,
		-0.853845, 0.359034, 0.376887,
		0.459129, 0.860617, 0.220316,
		34.811352, 34.813332, 28.903908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004547, 34.837120, 28.754574>,  <34.489964, 34.210899, 28.749685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004547, 34.837120, 28.754574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376873, 34.954979, 28.668064>,  <34.600269, 35.025692, 28.616159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376873, 34.954979, 28.668064>,  <34.004547, 34.837120, 28.754574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376873, 34.954979, 28.668064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322728, 0.384796, -0.864742,
		-0.171571, 0.874710, 0.453263,
		0.930812, 0.294645, -0.216273,
		34.656116, 35.043373, 28.603182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067780, 35.607849, 28.575960>,  <34.004547, 34.837120, 28.754574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067780, 35.607849, 28.575960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381775, 35.433060, 28.400303>,  <34.570171, 35.328186, 28.294909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381775, 35.433060, 28.400303>,  <34.067780, 35.607849, 28.575960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381775, 35.433060, 28.400303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253077, 0.420823, -0.871126,
		0.565460, 0.794961, 0.219754,
		0.784989, -0.436972, -0.439145,
		34.617271, 35.301968, 28.268559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166626, 36.077713, 28.089682>,  <34.067780, 35.607849, 28.575960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166626, 36.077713, 28.089682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399754, 35.771305, 27.981209>,  <34.539631, 35.587460, 27.916124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399754, 35.771305, 27.981209>,  <34.166626, 36.077713, 28.089682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399754, 35.771305, 27.981209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091268, 0.269904, -0.958552,
		0.807459, 0.583414, 0.087392,
		0.582820, -0.766016, -0.271183,
		34.574600, 35.541500, 27.899855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483501, 36.306782, 27.458387>,  <34.166626, 36.077713, 28.089682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483501, 36.306782, 27.458387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584427, 35.919739, 27.455036>,  <34.644981, 35.687511, 27.453026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584427, 35.919739, 27.455036>,  <34.483501, 36.306782, 27.458387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584427, 35.919739, 27.455036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016713, 0.004298, -0.999851,
		0.967500, 0.252420, -0.015087,
		0.252318, -0.967608, -0.008377,
		34.660122, 35.629456, 27.452522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220005, 36.235207, 27.078314>,  <34.483501, 36.306782, 27.458387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220005, 36.235207, 27.078314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025322, 35.885780, 27.077850>,  <34.908512, 35.676125, 27.077572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025322, 35.885780, 27.077850>,  <35.220005, 36.235207, 27.078314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025322, 35.885780, 27.077850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208939, -0.115124, -0.971129,
		0.848212, -0.472895, 0.238553,
		-0.486705, -0.873566, -0.001157,
		34.879311, 35.623711, 27.077503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485294, 35.817429, 26.523937>,  <35.220005, 36.235207, 27.078314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485294, 35.817429, 26.523937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125134, 35.653141, 26.581322>,  <34.909035, 35.554569, 26.615751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125134, 35.653141, 26.581322>,  <35.485294, 35.817429, 26.523937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125134, 35.653141, 26.581322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150247, -0.015897, -0.988521,
		0.408282, -0.911624, -0.047396,
		-0.900406, -0.410717, 0.143459,
		34.855011, 35.529926, 26.624359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466633, 35.181587, 26.241816>,  <35.485294, 35.817429, 26.523937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466633, 35.181587, 26.241816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082893, 35.290123, 26.272861>,  <34.852650, 35.355244, 26.291489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082893, 35.290123, 26.272861>,  <35.466633, 35.181587, 26.241816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082893, 35.290123, 26.272861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148079, -0.249843, -0.956896,
		-0.240212, -0.929502, 0.279863,
		-0.959360, 0.271300, 0.077625,
		34.795090, 35.371525, 26.296146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244843, 34.730679, 25.875345>,  <35.466633, 35.181587, 26.241816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244843, 34.730679, 25.875345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959011, 35.010105, 25.890259>,  <34.787514, 35.177761, 25.899208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959011, 35.010105, 25.890259>,  <35.244843, 34.730679, 25.875345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959011, 35.010105, 25.890259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267156, -0.223245, -0.937438,
		-0.646537, -0.679830, 0.346151,
		-0.714575, 0.698565, 0.037285,
		34.744640, 35.219673, 25.901443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738426, 34.384518, 25.542459>,  <35.244843, 34.730679, 25.875345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738426, 34.384518, 25.542459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656845, 34.775169, 25.515350>,  <34.607895, 35.009560, 25.499084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656845, 34.775169, 25.515350>,  <34.738426, 34.384518, 25.542459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656845, 34.775169, 25.515350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282948, -0.125082, -0.950944,
		-0.937199, -0.174774, 0.301847,
		-0.203956, 0.976631, -0.067775,
		34.595657, 35.068157, 25.495018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139008, 34.336586, 25.074699>,  <34.738426, 34.384518, 25.542459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139008, 34.336586, 25.074699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244465, 34.722404, 25.070044>,  <34.307739, 34.953896, 25.067249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244465, 34.722404, 25.070044>,  <34.139008, 34.336586, 25.074699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244465, 34.722404, 25.070044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103440, 0.016271, -0.994503,
		-0.959059, 0.263395, 0.104063,
		0.263640, 0.964551, -0.011641,
		34.323555, 35.011768, 25.066551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612812, 34.814960, 24.712967>,  <34.139008, 34.336586, 25.074699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612812, 34.814960, 24.712967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988827, 34.951130, 24.704473>,  <34.214436, 35.032833, 24.699377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988827, 34.951130, 24.704473>,  <33.612812, 34.814960, 24.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988827, 34.951130, 24.704473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054353, 0.088047, -0.994632,
		-0.336726, 0.936141, 0.101270,
		0.940033, 0.340423, -0.021235,
		34.270836, 35.053257, 24.698103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596775, 35.331047, 24.233341>,  <33.612812, 34.814960, 24.712967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596775, 35.331047, 24.233341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993824, 35.292854, 24.263243>,  <34.232052, 35.269939, 24.281183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993824, 35.292854, 24.263243>,  <33.596775, 35.331047, 24.233341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993824, 35.292854, 24.263243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083236, 0.088186, -0.992620,
		0.088186, 0.991517, 0.095482,
		0.992620, -0.095482, 0.074753,
		34.291611, 35.264210, 24.285669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875214, 35.804005, 23.692341>,  <33.596775, 35.331047, 24.233341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875214, 35.804005, 23.692341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176800, 35.555248, 23.776993>,  <34.357750, 35.405994, 23.827784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176800, 35.555248, 23.776993>,  <33.875214, 35.804005, 23.692341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176800, 35.555248, 23.776993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300420, 0.039927, -0.952971,
		0.584194, 0.782086, 0.216932,
		0.753967, -0.621890, 0.211629,
		34.402988, 35.368683, 23.840481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532452, 36.059357, 23.450640>,  <33.875214, 35.804005, 23.692341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532452, 36.059357, 23.450640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569622, 35.662258, 23.481174>,  <34.591927, 35.424000, 23.499495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569622, 35.662258, 23.481174>,  <34.532452, 36.059357, 23.450640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569622, 35.662258, 23.481174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196914, -0.056829, -0.978772,
		0.976007, 0.105987, 0.190204,
		0.092928, -0.992742, 0.076336,
		34.597500, 35.364437, 23.504076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251995, 35.920803, 23.208540>,  <34.532452, 36.059357, 23.450640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251995, 35.920803, 23.208540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072411, 35.563774, 23.191776>,  <34.964661, 35.349556, 23.181719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072411, 35.563774, 23.191776>,  <35.251995, 35.920803, 23.208540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072411, 35.563774, 23.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256886, -0.084007, -0.962783,
		0.855831, -0.443015, 0.267004,
		-0.448958, -0.892569, -0.041909,
		34.937721, 35.296001, 23.179203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734634, 35.402908, 22.838512>,  <35.251995, 35.920803, 23.208540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734634, 35.402908, 22.838512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359341, 35.266632, 22.814379>,  <35.134163, 35.184868, 22.799898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359341, 35.266632, 22.814379>,  <35.734634, 35.402908, 22.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359341, 35.266632, 22.814379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132083, -0.191512, -0.972562,
		0.319788, -0.920464, 0.224683,
		-0.938238, -0.340690, -0.060334,
		35.077869, 35.164425, 22.796278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838341, 34.776997, 22.381588>,  <35.734634, 35.402908, 22.838512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838341, 34.776997, 22.381588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441853, 34.829796, 22.378771>,  <35.203960, 34.861477, 22.377081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441853, 34.829796, 22.378771>,  <35.838341, 34.776997, 22.381588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441853, 34.829796, 22.378771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016959, -0.179825, -0.983552,
		-0.131092, -0.974802, 0.180486,
		-0.991225, 0.131997, -0.007042,
		35.144485, 34.869396, 22.376657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491680, 34.101273, 22.158764>,  <35.838341, 34.776997, 22.381588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491680, 34.101273, 22.158764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210121, 34.382122, 22.115768>,  <35.041187, 34.550632, 22.089972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210121, 34.382122, 22.115768>,  <35.491680, 34.101273, 22.158764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210121, 34.382122, 22.115768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233755, -0.371880, -0.898367,
		-0.670736, -0.607232, 0.425890,
		-0.703898, 0.702121, -0.107490,
		34.998951, 34.592758, 22.083521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953659, 33.770504, 22.004103>,  <35.491680, 34.101273, 22.158764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953659, 33.770504, 22.004103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893967, 34.143005, 21.871134>,  <34.858150, 34.366505, 21.791353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893967, 34.143005, 21.871134>,  <34.953659, 33.770504, 22.004103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893967, 34.143005, 21.871134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070823, -0.345390, -0.935783,
		-0.986262, -0.116107, 0.117498,
		-0.149233, 0.931249, -0.332423,
		34.849197, 34.422379, 21.771406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333115, 33.780476, 21.567236>,  <34.953659, 33.770504, 22.004103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333115, 33.780476, 21.567236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514957, 34.119083, 21.456423>,  <34.624062, 34.322247, 21.389935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514957, 34.119083, 21.456423>,  <34.333115, 33.780476, 21.567236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514957, 34.119083, 21.456423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244066, -0.180733, -0.952768,
		-0.856602, 0.500746, 0.124444,
		0.454604, 0.846516, -0.277031,
		34.651337, 34.373039, 21.373314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841858, 34.164253, 21.190491>,  <34.333115, 33.780476, 21.567236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841858, 34.164253, 21.190491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181538, 34.335476, 21.066792>,  <34.385345, 34.438210, 20.992573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181538, 34.335476, 21.066792>,  <33.841858, 34.164253, 21.190491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181538, 34.335476, 21.066792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325399, -0.037061, -0.944850,
		-0.415909, 0.902992, 0.107817,
		0.849196, 0.428056, -0.309247,
		34.436298, 34.463894, 20.974018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713837, 34.671375, 20.707647>,  <33.841858, 34.164253, 21.190491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713837, 34.671375, 20.707647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094166, 34.584324, 20.619484>,  <34.322361, 34.532093, 20.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094166, 34.584324, 20.619484>,  <33.713837, 34.671375, 20.707647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094166, 34.584324, 20.619484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221706, 0.018745, -0.974933,
		0.216309, 0.975851, -0.030428,
		0.950819, -0.217633, -0.220407,
		34.379410, 34.519035, 20.553362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871708, 35.170036, 20.142857>,  <33.713837, 34.671375, 20.707647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871708, 35.170036, 20.142857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156796, 34.894817, 20.088276>,  <34.327850, 34.729687, 20.055529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156796, 34.894817, 20.088276>,  <33.871708, 35.170036, 20.142857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156796, 34.894817, 20.088276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254059, -0.071893, -0.964513,
		0.653821, 0.722096, -0.226044,
		0.712722, -0.688047, -0.136450,
		34.370613, 34.688404, 20.047340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082882, 35.351261, 19.526089>,  <33.871708, 35.170036, 20.142857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082882, 35.351261, 19.526089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198402, 34.971710, 19.577044>,  <34.267715, 34.743980, 19.607616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198402, 34.971710, 19.577044>,  <34.082882, 35.351261, 19.526089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198402, 34.971710, 19.577044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260918, -0.206026, -0.943120,
		0.921148, 0.239139, -0.307080,
		0.288803, -0.948876, 0.127385,
		34.285042, 34.687046, 19.615259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638947, 35.200344, 19.036509>,  <34.082882, 35.351261, 19.526089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638947, 35.200344, 19.036509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485519, 34.854664, 19.166756>,  <34.393463, 34.647255, 19.244904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485519, 34.854664, 19.166756>,  <34.638947, 35.200344, 19.036509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485519, 34.854664, 19.166756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000222, -0.352502, -0.935811,
		0.923513, -0.359019, 0.135016,
		-0.383568, -0.864203, 0.325620,
		34.370449, 34.595402, 19.264442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882275, 34.719955, 18.620409>,  <34.638947, 35.200344, 19.036509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882275, 34.719955, 18.620409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583477, 34.493275, 18.759460>,  <34.404198, 34.357265, 18.842892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583477, 34.493275, 18.759460>,  <34.882275, 34.719955, 18.620409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583477, 34.493275, 18.759460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150314, -0.365383, -0.918641,
		0.647611, -0.738476, 0.187758,
		-0.746998, -0.566699, 0.347629,
		34.359379, 34.323265, 18.863749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047802, 34.004768, 18.422260>,  <34.882275, 34.719955, 18.620409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047802, 34.004768, 18.422260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653061, 34.054741, 18.463278>,  <34.416218, 34.084724, 18.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653061, 34.054741, 18.463278>,  <35.047802, 34.004768, 18.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653061, 34.054741, 18.463278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134695, -0.285037, -0.949005,
		-0.089334, -0.950340, 0.298117,
		-0.986852, 0.124933, 0.102542,
		34.357006, 34.092220, 18.494040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633175, 33.372849, 18.267452>,  <35.047802, 34.004768, 18.422260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633175, 33.372849, 18.267452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362919, 33.660397, 18.202047>,  <34.200764, 33.832924, 18.162806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362919, 33.660397, 18.202047>,  <34.633175, 33.372849, 18.267452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362919, 33.660397, 18.202047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162804, -0.361804, -0.917929,
		-0.719026, -0.593574, 0.361486,
		-0.675645, 0.718866, -0.163510,
		34.160225, 33.876057, 18.152994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026993, 33.010628, 17.954256>,  <34.633175, 33.372849, 18.267452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026993, 33.010628, 17.954256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995453, 33.395653, 17.850513>,  <33.976528, 33.626667, 17.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995453, 33.395653, 17.850513>,  <34.026993, 33.010628, 17.954256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995453, 33.395653, 17.850513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257775, -0.271003, -0.927421,
		-0.962982, -0.006268, 0.269491,
		-0.078845, 0.962558, -0.259355,
		33.971798, 33.684422, 17.772707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455044, 33.026775, 17.600183>,  <34.026993, 33.010628, 17.954256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455044, 33.026775, 17.600183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619598, 33.374973, 17.492111>,  <33.718330, 33.583893, 17.427269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619598, 33.374973, 17.492111>,  <33.455044, 33.026775, 17.600183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619598, 33.374973, 17.492111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433842, -0.073678, -0.897971,
		-0.801587, 0.486628, 0.347348,
		0.411386, 0.870497, -0.270180,
		33.743015, 33.636124, 17.411057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879051, 33.381596, 17.284021>,  <33.455044, 33.026775, 17.600183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879051, 33.381596, 17.284021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218460, 33.558411, 17.167665>,  <33.422104, 33.664501, 17.097853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218460, 33.558411, 17.167665>,  <32.879051, 33.381596, 17.284021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218460, 33.558411, 17.167665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316394, -0.016824, -0.948479,
		-0.424159, 0.896838, 0.125583,
		0.848519, 0.442039, -0.290890,
		33.473015, 33.691021, 17.080399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708584, 33.951286, 16.867905>,  <32.879051, 33.381596, 17.284021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708584, 33.951286, 16.867905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085468, 33.896877, 16.745441>,  <33.311600, 33.864231, 16.671965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085468, 33.896877, 16.745441>,  <32.708584, 33.951286, 16.867905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085468, 33.896877, 16.745441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320331, -0.098213, -0.942201,
		0.098096, 0.985825, -0.136111,
		0.942213, -0.136027, -0.306156,
		33.368134, 33.856068, 16.653595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843872, 34.398037, 16.186407>,  <32.708584, 33.951286, 16.867905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843872, 34.398037, 16.186407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139351, 34.128483, 16.192186>,  <33.316639, 33.966751, 16.195654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139351, 34.128483, 16.192186>,  <32.843872, 34.398037, 16.186407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139351, 34.128483, 16.192186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241709, -0.284845, -0.927599,
		0.629210, 0.681721, -0.373298,
		0.738696, -0.673884, 0.014449,
		33.360958, 33.926319, 16.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113152, 34.388786, 15.508601>,  <32.843872, 34.398037, 16.186407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113152, 34.388786, 15.508601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258430, 34.047085, 15.657379>,  <33.345596, 33.842064, 15.746646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258430, 34.047085, 15.657379>,  <33.113152, 34.388786, 15.508601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258430, 34.047085, 15.657379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248329, -0.473520, -0.845051,
		0.898009, 0.214555, -0.384116,
		0.363197, -0.854251, 0.371945,
		33.367390, 33.790810, 15.768963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296799, 33.986786, 14.875762>,  <33.113152, 34.388786, 15.508601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296799, 33.986786, 14.875762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287991, 33.700390, 15.154866>,  <33.282703, 33.528553, 15.322329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287991, 33.700390, 15.154866>,  <33.296799, 33.986786, 14.875762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287991, 33.700390, 15.154866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148418, -0.687856, -0.710511,
		0.988679, -0.119209, -0.091116,
		-0.022025, -0.715991, 0.697762,
		33.281384, 33.485592, 15.364195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703064, 33.602993, 14.550215>,  <33.296799, 33.986786, 14.875762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703064, 33.602993, 14.550215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351181, 33.421501, 14.493307>,  <33.140049, 33.312607, 14.459163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351181, 33.421501, 14.493307>,  <33.703064, 33.602993, 14.550215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351181, 33.421501, 14.493307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407017, 0.563808, 0.718650,
		-0.245858, 0.690111, -0.680662,
		-0.879711, -0.453727, -0.142270,
		33.087269, 33.285381, 14.450626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171890, 33.850010, 14.126163>,  <33.703064, 33.602993, 14.550215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171890, 33.850010, 14.126163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443432, 33.789387, 13.838778>,  <33.606358, 33.753014, 13.666347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443432, 33.789387, 13.838778>,  <33.171890, 33.850010, 14.126163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443432, 33.789387, 13.838778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149037, -0.986539, 0.067293,
		-0.718991, 0.061396, -0.692303,
		0.678852, -0.151562, -0.718463,
		33.647087, 33.743919, 13.623239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961739, 33.258575, 13.833665>,  <33.171890, 33.850010, 14.126163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961739, 33.258575, 13.833665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349110, 33.330860, 13.764981>,  <33.581532, 33.374233, 13.723771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349110, 33.330860, 13.764981>,  <32.961739, 33.258575, 13.833665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349110, 33.330860, 13.764981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202921, -0.971574, 0.121930,
		-0.144794, -0.152924, -0.977573,
		0.968430, 0.180716, -0.171710,
		33.639637, 33.385075, 13.713469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111176, 32.838993, 13.307468>,  <32.961739, 33.258575, 13.833665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111176, 32.838993, 13.307468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461258, 32.933479, 13.476335>,  <33.671307, 32.990170, 13.577654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461258, 32.933479, 13.476335>,  <33.111176, 32.838993, 13.307468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461258, 32.933479, 13.476335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171392, -0.967483, 0.186013,
		0.452377, -0.090444, -0.887229,
		0.875203, 0.236212, 0.422165,
		33.723820, 33.004341, 13.602984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276596, 32.257950, 13.685481>,  <33.111176, 32.838993, 13.307468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276596, 32.257950, 13.685481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321869, 32.069393, 13.335629>,  <33.349033, 31.956259, 13.125717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321869, 32.069393, 13.335629>,  <33.276596, 32.257950, 13.685481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321869, 32.069393, 13.335629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280020, 0.829471, -0.483289,
		0.953299, 0.299614, -0.038118,
		0.113182, -0.471392, -0.874631,
		33.355824, 31.927975, 13.073239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410641, 31.503321, 13.777699>,  <33.276596, 32.257950, 13.685481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410641, 31.503321, 13.777699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417599, 31.107544, 13.835254>,  <33.421776, 30.870077, 13.869786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417599, 31.107544, 13.835254>,  <33.410641, 31.503321, 13.777699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417599, 31.107544, 13.835254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196827, 0.144482, 0.969734,
		-0.980284, 0.011451, 0.197263,
		0.017397, -0.989441, 0.143888,
		33.422817, 30.810711, 13.878420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923405, 31.325138, 14.320788>,  <33.410641, 31.503321, 13.777699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923405, 31.325138, 14.320788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259274, 31.107904, 14.321437>,  <33.460796, 30.977564, 14.321826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259274, 31.107904, 14.321437>,  <32.923405, 31.325138, 14.320788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259274, 31.107904, 14.321437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159783, 0.249894, 0.954999,
		-0.519052, -0.801630, 0.296606,
		0.839675, -0.543086, 0.001621,
		33.511177, 30.944979, 14.321923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938816, 30.597378, 14.736350>,  <32.923405, 31.325138, 14.320788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938816, 30.597378, 14.736350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279133, 30.806902, 14.753248>,  <33.483322, 30.932615, 14.763387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279133, 30.806902, 14.753248>,  <32.938816, 30.597378, 14.736350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279133, 30.806902, 14.753248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021566, -0.115124, 0.993117,
		0.525067, -0.844021, -0.109242,
		0.850788, 0.523809, 0.042246,
		33.534370, 30.964045, 14.765922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418842, 30.183567, 15.131734>,  <32.938816, 30.597378, 14.736350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418842, 30.183567, 15.131734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501244, 30.574987, 15.131862>,  <33.550686, 30.809839, 15.131938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501244, 30.574987, 15.131862>,  <33.418842, 30.183567, 15.131734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501244, 30.574987, 15.131862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340192, -0.071922, 0.937602,
		0.917514, -0.193040, -0.347711,
		0.206003, 0.978552, 0.000319,
		33.563046, 30.868553, 15.131957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065475, 30.191664, 15.395082>,  <33.418842, 30.183567, 15.131734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065475, 30.191664, 15.395082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881645, 30.531595, 15.498294>,  <33.771347, 30.735554, 15.560221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881645, 30.531595, 15.498294>,  <34.065475, 30.191664, 15.395082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881645, 30.531595, 15.498294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495565, 0.004277, 0.868561,
		0.737026, 0.527039, -0.423112,
		-0.459575, 0.849831, 0.258029,
		33.743774, 30.786545, 15.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513260, 30.504068, 15.763041>,  <34.065475, 30.191664, 15.395082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513260, 30.504068, 15.763041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197411, 30.719275, 15.881046>,  <34.007900, 30.848398, 15.951850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197411, 30.719275, 15.881046>,  <34.513260, 30.504068, 15.763041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197411, 30.719275, 15.881046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367662, 0.029935, 0.929478,
		0.491243, 0.842403, -0.221445,
		-0.789623, 0.538016, 0.295014,
		33.960522, 30.880680, 15.969550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814529, 31.008970, 16.146606>,  <34.513260, 30.504068, 15.763041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814529, 31.008970, 16.146606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425072, 31.039539, 16.232555>,  <34.191395, 31.057880, 16.284124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425072, 31.039539, 16.232555>,  <34.814529, 31.008970, 16.146606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425072, 31.039539, 16.232555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221651, 0.095377, 0.970451,
		0.053669, 0.992503, -0.109802,
		-0.973648, 0.076421, 0.214870,
		34.132977, 31.062466, 16.297016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856022, 31.560894, 16.622259>,  <34.814529, 31.008970, 16.146606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856022, 31.560894, 16.622259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511532, 31.358290, 16.638920>,  <34.304836, 31.236727, 16.648916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511532, 31.358290, 16.638920>,  <34.856022, 31.560894, 16.622259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511532, 31.358290, 16.638920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069591, -0.036346, 0.996913,
		-0.503435, 0.861466, 0.066551,
		-0.861226, -0.506513, 0.041652,
		34.253162, 31.206335, 16.651415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486691, 31.799164, 17.209400>,  <34.856022, 31.560894, 16.622259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486691, 31.799164, 17.209400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298225, 31.451033, 17.152077>,  <34.185146, 31.242153, 17.117683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298225, 31.451033, 17.152077>,  <34.486691, 31.799164, 17.209400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298225, 31.451033, 17.152077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019928, -0.172933, 0.984732,
		-0.881822, 0.461112, 0.098823,
		-0.471161, -0.870328, -0.143307,
		34.156876, 31.189934, 17.109085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919331, 31.739229, 17.742130>,  <34.486691, 31.799164, 17.209400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919331, 31.739229, 17.742130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959751, 31.363493, 17.611027>,  <33.984001, 31.138050, 17.532366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959751, 31.363493, 17.611027>,  <33.919331, 31.739229, 17.742130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959751, 31.363493, 17.611027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126940, -0.338924, 0.932211,
		-0.986750, -0.052593, -0.153488,
		0.101049, -0.939342, -0.327757,
		33.990067, 31.081690, 17.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389015, 31.435562, 17.874966>,  <33.919331, 31.739229, 17.742130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389015, 31.435562, 17.874966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678215, 31.159405, 17.864897>,  <33.851734, 30.993711, 17.858856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678215, 31.159405, 17.864897>,  <33.389015, 31.435562, 17.874966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678215, 31.159405, 17.864897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246911, -0.292256, 0.923916,
		-0.645220, -0.661775, -0.381766,
		0.722998, -0.690391, -0.025170,
		33.895115, 30.952288, 17.857346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989822, 30.825529, 18.083036>,  <33.389015, 31.435562, 17.874966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989822, 30.825529, 18.083036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381420, 30.772371, 18.144890>,  <33.616379, 30.740477, 18.182003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381420, 30.772371, 18.144890>,  <32.989822, 30.825529, 18.083036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381420, 30.772371, 18.144890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195044, -0.389368, 0.900195,
		-0.059421, -0.911445, -0.407108,
		0.978993, -0.132895, 0.154635,
		33.675117, 30.732502, 18.191280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021770, 30.190094, 18.407543>,  <32.989822, 30.825529, 18.083036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021770, 30.190094, 18.407543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372101, 30.364408, 18.490511>,  <33.582298, 30.468996, 18.540293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372101, 30.364408, 18.490511>,  <33.021770, 30.190094, 18.407543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372101, 30.364408, 18.490511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001812, -0.426798, 0.904345,
		0.482627, -0.792423, -0.373011,
		0.875824, 0.435785, 0.207421,
		33.634850, 30.495144, 18.552736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280228, 29.638979, 18.799652>,  <33.021770, 30.190094, 18.407543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280228, 29.638979, 18.799652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503700, 29.961716, 18.876472>,  <33.637783, 30.155357, 18.922565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503700, 29.961716, 18.876472>,  <33.280228, 29.638979, 18.799652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503700, 29.961716, 18.876472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021074, -0.245295, 0.969219,
		0.829115, -0.537437, -0.154045,
		0.558681, 0.806841, 0.192052,
		33.671303, 30.203768, 18.934088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014290, 29.409956, 19.041040>,  <33.280228, 29.638979, 18.799652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014290, 29.409956, 19.041040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895897, 29.766924, 19.177265>,  <33.824860, 29.981104, 19.259001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895897, 29.766924, 19.177265>,  <34.014290, 29.409956, 19.041040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895897, 29.766924, 19.177265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036039, -0.345851, 0.937597,
		0.954512, 0.289788, 0.070205,
		-0.295985, 0.892418, 0.340563,
		33.807102, 30.034649, 19.279434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350559, 29.326019, 19.563337>,  <34.014290, 29.409956, 19.041040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350559, 29.326019, 19.563337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156685, 29.665960, 19.646112>,  <34.040359, 29.869925, 19.695778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156685, 29.665960, 19.646112>,  <34.350559, 29.326019, 19.563337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156685, 29.665960, 19.646112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239027, -0.098890, 0.965964,
		0.841393, 0.517657, -0.155207,
		-0.484690, 0.849854, 0.206939,
		34.011276, 29.920918, 19.708195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871479, 29.729893, 19.851189>,  <34.350559, 29.326019, 19.563337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871479, 29.729893, 19.851189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527348, 29.887501, 19.980551>,  <34.320869, 29.982065, 20.058168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527348, 29.887501, 19.980551>,  <34.871479, 29.729893, 19.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527348, 29.887501, 19.980551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331955, -0.048408, 0.942052,
		0.386844, 0.917826, -0.089150,
		-0.860324, 0.394021, 0.323403,
		34.269249, 30.005707, 20.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084244, 30.361904, 20.225279>,  <34.871479, 29.729893, 19.851189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084244, 30.361904, 20.225279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712849, 30.275282, 20.345959>,  <34.490013, 30.223309, 20.418365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712849, 30.275282, 20.345959>,  <35.084244, 30.361904, 20.225279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712849, 30.275282, 20.345959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273920, 0.149221, 0.950106,
		-0.250770, 0.964799, -0.079230,
		-0.928484, -0.216555, 0.301698,
		34.434303, 30.210316, 20.436468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916248, 30.891279, 20.588743>,  <35.084244, 30.361904, 20.225279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916248, 30.891279, 20.588743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681587, 30.600740, 20.731995>,  <34.540791, 30.426416, 20.817945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681587, 30.600740, 20.731995>,  <34.916248, 30.891279, 20.588743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681587, 30.600740, 20.731995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138131, 0.345993, 0.928013,
		-0.797971, 0.593891, -0.102647,
		-0.586654, -0.726349, 0.358127,
		34.505592, 30.382835, 20.839432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562496, 31.245451, 21.065447>,  <34.916248, 30.891279, 20.588743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562496, 31.245451, 21.065447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469147, 30.865841, 21.150194>,  <34.413136, 30.638075, 21.201042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469147, 30.865841, 21.150194>,  <34.562496, 31.245451, 21.065447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469147, 30.865841, 21.150194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017287, 0.221902, 0.974916,
		-0.972232, 0.223861, -0.068193,
		-0.233378, -0.949023, 0.211870,
		34.399132, 30.581133, 21.213755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009075, 31.285986, 21.554842>,  <34.562496, 31.245451, 21.065447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009075, 31.285986, 21.554842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218964, 30.946970, 21.586708>,  <34.344894, 30.743561, 21.605827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218964, 30.946970, 21.586708>,  <34.009075, 31.285986, 21.554842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218964, 30.946970, 21.586708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238412, 0.236147, 0.942016,
		-0.817209, -0.475299, 0.325975,
		0.524718, -0.847541, 0.079664,
		34.376377, 30.692707, 21.610607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817936, 30.981016, 22.272240>,  <34.009075, 31.285986, 21.554842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817936, 30.981016, 22.272240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136223, 30.766016, 22.160576>,  <34.327194, 30.637016, 22.093576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136223, 30.766016, 22.160576>,  <33.817936, 30.981016, 22.272240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136223, 30.766016, 22.160576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384270, 0.091757, 0.918650,
		-0.468158, -0.838258, 0.279557,
		0.795716, -0.537498, -0.279160,
		34.374939, 30.604767, 22.076828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918736, 30.618828, 22.884375>,  <33.817936, 30.981016, 22.272240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918736, 30.618828, 22.884375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245827, 30.609549, 22.654322>,  <34.442081, 30.603981, 22.516289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245827, 30.609549, 22.654322>,  <33.918736, 30.618828, 22.884375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245827, 30.609549, 22.654322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575563, 0.044495, 0.816546,
		0.006641, -0.998740, 0.049742,
		0.817730, -0.023207, -0.575133,
		34.491146, 30.602589, 22.481781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434689, 30.162312, 23.227018>,  <33.918736, 30.618828, 22.884375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434689, 30.162312, 23.227018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652744, 30.374798, 22.967594>,  <34.783577, 30.502291, 22.811939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652744, 30.374798, 22.967594>,  <34.434689, 30.162312, 23.227018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652744, 30.374798, 22.967594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740920, 0.056681, 0.669197,
		0.392250, -0.845338, -0.362690,
		0.545140, 0.531217, -0.648561,
		34.816288, 30.534163, 22.773026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216110, 29.941391, 23.287521>,  <34.434689, 30.162312, 23.227018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216110, 29.941391, 23.287521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182259, 30.315449, 23.149916>,  <35.161949, 30.539883, 23.067352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182259, 30.315449, 23.149916>,  <35.216110, 29.941391, 23.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182259, 30.315449, 23.149916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685072, 0.305312, 0.661409,
		0.723543, -0.179700, -0.666478,
		-0.084629, 0.935143, -0.344014,
		35.156872, 30.595991, 23.046711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980278, 30.220427, 23.142078>,  <35.216110, 29.941391, 23.287521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980278, 30.220427, 23.142078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774906, 30.563665, 23.145067>,  <35.651684, 30.769609, 23.146860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774906, 30.563665, 23.145067>,  <35.980278, 30.220427, 23.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774906, 30.563665, 23.145067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517408, 0.302615, 0.800445,
		0.684599, 0.414841, -0.599359,
		-0.513433, 0.858097, 0.007472,
		35.620876, 30.821095, 23.147308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469589, 30.743046, 23.300081>,  <35.980278, 30.220427, 23.142078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469589, 30.743046, 23.300081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109726, 30.906376, 23.361910>,  <35.893810, 31.004374, 23.399008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109726, 30.906376, 23.361910>,  <36.469589, 30.743046, 23.300081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109726, 30.906376, 23.361910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329850, 0.403713, 0.853355,
		0.286041, 0.818711, -0.497888,
		-0.899655, 0.408323, 0.154573,
		35.839828, 31.028873, 23.408281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660873, 31.336195, 23.560137>,  <36.469589, 30.743046, 23.300081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660873, 31.336195, 23.560137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286659, 31.283270, 23.691145>,  <36.062130, 31.251514, 23.769751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286659, 31.283270, 23.691145>,  <36.660873, 31.336195, 23.560137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286659, 31.283270, 23.691145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285819, 0.261290, 0.921974,
		-0.207569, 0.956149, -0.206627,
		-0.935533, -0.132315, 0.327521,
		36.006001, 31.243576, 23.789402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509197, 31.949038, 24.009312>,  <36.660873, 31.336195, 23.560137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509197, 31.949038, 24.009312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272995, 31.640327, 24.103689>,  <36.131275, 31.455101, 24.160316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272995, 31.640327, 24.103689>,  <36.509197, 31.949038, 24.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272995, 31.640327, 24.103689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113550, 0.209997, 0.971086,
		-0.799006, 0.600222, -0.036370,
		-0.590504, -0.771774, 0.235944,
		36.095844, 31.408794, 24.174473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072475, 32.222527, 24.536407>,  <36.509197, 31.949038, 24.009312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072475, 32.222527, 24.536407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046101, 31.826916, 24.589291>,  <36.030273, 31.589550, 24.621021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046101, 31.826916, 24.589291>,  <36.072475, 32.222527, 24.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046101, 31.826916, 24.589291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214798, 0.115322, 0.969826,
		-0.974430, 0.092348, 0.204836,
		-0.065939, -0.989026, 0.132210,
		36.026318, 31.530209, 24.628954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740562, 32.195206, 25.109812>,  <36.072475, 32.222527, 24.536407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740562, 32.195206, 25.109812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891159, 31.825111, 25.091103>,  <35.981518, 31.603054, 25.079878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891159, 31.825111, 25.091103>,  <35.740562, 32.195206, 25.109812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891159, 31.825111, 25.091103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277454, 0.064441, 0.958575,
		-0.883896, -0.373875, 0.280973,
		0.376493, -0.925238, -0.046774,
		36.004108, 31.547541, 25.077070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303589, 31.721771, 25.516720>,  <35.740562, 32.195206, 25.109812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303589, 31.721771, 25.516720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673550, 31.572775, 25.486216>,  <35.895527, 31.483377, 25.467913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673550, 31.572775, 25.486216>,  <35.303589, 31.721771, 25.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673550, 31.572775, 25.486216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093675, 0.028853, 0.995185,
		-0.368495, -0.927588, 0.061579,
		0.924898, -0.372488, -0.076260,
		35.951019, 31.461029, 25.463337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364578, 31.284098, 26.126699>,  <35.303589, 31.721771, 25.516720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364578, 31.284098, 26.126699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737747, 31.317869, 25.986683>,  <35.961647, 31.338133, 25.902674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737747, 31.317869, 25.986683>,  <35.364578, 31.284098, 26.126699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737747, 31.317869, 25.986683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355298, -0.057966, 0.932954,
		0.058481, -0.994742, -0.084076,
		0.932922, 0.084432, -0.350040,
		36.017624, 31.343199, 25.881670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669506, 30.793095, 26.483599>,  <35.364578, 31.284098, 26.126699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669506, 30.793095, 26.483599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967175, 31.021917, 26.345636>,  <36.145775, 31.159212, 26.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967175, 31.021917, 26.345636>,  <35.669506, 30.793095, 26.483599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967175, 31.021917, 26.345636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330535, 0.133346, 0.934326,
		0.580481, -0.809301, -0.089853,
		0.744170, 0.572058, -0.344907,
		36.190426, 31.193535, 26.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203644, 30.654680, 26.907766>,  <35.669506, 30.793095, 26.483599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203644, 30.654680, 26.907766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360065, 30.974421, 26.725288>,  <36.453918, 31.166265, 26.615801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360065, 30.974421, 26.725288>,  <36.203644, 30.654680, 26.907766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360065, 30.974421, 26.725288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489719, 0.238955, 0.838496,
		0.779262, -0.551307, -0.298012,
		0.391057, 0.799351, -0.456194,
		36.477383, 31.214226, 26.588430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994610, 30.577417, 27.023893>,  <36.203644, 30.654680, 26.907766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994610, 30.577417, 27.023893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864002, 30.952559, 26.976877>,  <36.785637, 31.177643, 26.948668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864002, 30.952559, 26.976877>,  <36.994610, 30.577417, 27.023893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864002, 30.952559, 26.976877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383345, 0.245068, 0.890499,
		0.863963, 0.245705, -0.439541,
		-0.326517, 0.937854, -0.117540,
		36.766048, 31.233915, 26.941614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502235, 30.914484, 27.457161>,  <36.994610, 30.577417, 27.023893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502235, 30.914484, 27.457161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202072, 31.173439, 27.403824>,  <37.021976, 31.328812, 27.371822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202072, 31.173439, 27.403824>,  <37.502235, 30.914484, 27.457161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202072, 31.173439, 27.403824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150308, 0.363585, 0.919355,
		0.643660, 0.669847, -0.370144,
		-0.750406, 0.647388, -0.133342,
		36.976952, 31.367655, 27.363821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644897, 31.386686, 27.932091>,  <37.502235, 30.914484, 27.457161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644897, 31.386686, 27.932091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269718, 31.484915, 27.834160>,  <37.044609, 31.543852, 27.775402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269718, 31.484915, 27.834160>,  <37.644897, 31.386686, 27.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269718, 31.484915, 27.834160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128880, 0.408579, 0.903578,
		0.321925, 0.879066, -0.351578,
		-0.937952, 0.245573, -0.244826,
		36.988331, 31.558586, 27.760712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563137, 32.076187, 28.111658>,  <37.644897, 31.386686, 27.932091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563137, 32.076187, 28.111658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205566, 31.897167, 28.121378>,  <36.991024, 31.789757, 28.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205566, 31.897167, 28.121378>,  <37.563137, 32.076187, 28.111658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205566, 31.897167, 28.121378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212787, 0.471486, 0.855817,
		-0.394474, 0.759871, -0.516708,
		-0.893931, -0.447546, 0.024298,
		36.937386, 31.762903, 28.128668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063644, 32.617390, 28.182110>,  <37.563137, 32.076187, 28.111658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063644, 32.617390, 28.182110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883656, 32.275410, 28.285330>,  <36.775661, 32.070221, 28.347261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883656, 32.275410, 28.285330>,  <37.063644, 32.617390, 28.182110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883656, 32.275410, 28.285330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304440, 0.418500, 0.855672,
		-0.839550, 0.306464, -0.448593,
		-0.449969, -0.854949, 0.258052,
		36.748665, 32.018925, 28.362745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430527, 32.772579, 28.390537>,  <37.063644, 32.617390, 28.182110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430527, 32.772579, 28.390537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459991, 32.407589, 28.551517>,  <36.477669, 32.188595, 28.648106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459991, 32.407589, 28.551517>,  <36.430527, 32.772579, 28.390537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459991, 32.407589, 28.551517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411195, 0.339860, 0.845821,
		-0.908566, -0.227791, -0.350170,
		0.073661, -0.912473, 0.402452,
		36.482090, 32.133846, 28.672253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772594, 32.632320, 28.745062>,  <36.430527, 32.772579, 28.390537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772594, 32.632320, 28.745062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056980, 32.414997, 28.923655>,  <36.227612, 32.284603, 29.030809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056980, 32.414997, 28.923655>,  <35.772594, 32.632320, 28.745062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056980, 32.414997, 28.923655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263511, 0.382818, 0.885445,
		-0.651991, -0.747172, 0.129002,
		0.710964, -0.543308, 0.446482,
		36.270267, 32.252007, 29.057600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396633, 32.298519, 29.142296>,  <35.772594, 32.632320, 28.745062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396633, 32.298519, 29.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751938, 32.274582, 29.324465>,  <35.965122, 32.260220, 29.433765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751938, 32.274582, 29.324465>,  <35.396633, 32.298519, 29.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751938, 32.274582, 29.324465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439048, 0.180813, 0.880082,
		-0.135011, -0.981695, 0.134337,
		0.888262, -0.059840, 0.455423,
		36.018417, 32.256630, 29.461092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178547, 32.221634, 29.791298>,  <35.396633, 32.298519, 29.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178547, 32.221634, 29.791298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565784, 32.308929, 29.840559>,  <35.798126, 32.361305, 29.870115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565784, 32.308929, 29.840559>,  <35.178547, 32.221634, 29.791298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565784, 32.308929, 29.840559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202137, 0.389625, 0.898517,
		0.148108, -0.894742, 0.421308,
		0.968093, 0.218240, 0.123154,
		35.856213, 32.374401, 29.877504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468456, 31.901793, 30.423811>,  <35.178547, 32.221634, 29.791298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468456, 31.901793, 30.423811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637428, 32.244682, 30.306021>,  <35.738811, 32.450417, 30.235346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637428, 32.244682, 30.306021>,  <35.468456, 31.901793, 30.423811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637428, 32.244682, 30.306021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145094, 0.384651, 0.911587,
		0.894708, -0.342354, 0.286866,
		0.422429, 0.857227, -0.294477,
		35.764156, 32.501850, 30.217678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351349, 31.247431, 29.984575>,  <35.468456, 31.901793, 30.423811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351349, 31.247431, 29.984575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972130, 31.158405, 30.075504>,  <34.744598, 31.104990, 30.130062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972130, 31.158405, 30.075504>,  <35.351349, 31.247431, 29.984575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972130, 31.158405, 30.075504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019962, -0.754757, -0.655701,
		0.317510, -0.617096, 0.719987,
		-0.948045, -0.222564, 0.227324,
		34.687717, 31.091637, 30.143702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313122, 30.499336, 30.161419>,  <35.351349, 31.247431, 29.984575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313122, 30.499336, 30.161419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942116, 30.622675, 30.076914>,  <34.719513, 30.696678, 30.026211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942116, 30.622675, 30.076914>,  <35.313122, 30.499336, 30.161419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942116, 30.622675, 30.076914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097257, -0.744837, -0.660120,
		-0.360901, -0.591728, 0.720839,
		-0.927519, 0.308344, -0.211263,
		34.663860, 30.715178, 30.013535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889946, 29.866507, 30.117552>,  <35.313122, 30.499336, 30.161419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889946, 29.866507, 30.117552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641605, 30.113171, 29.923946>,  <34.492599, 30.261169, 29.807783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641605, 30.113171, 29.923946>,  <34.889946, 29.866507, 30.117552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641605, 30.113171, 29.923946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130947, -0.690328, -0.711548,
		-0.772913, -0.378387, 0.509342,
		-0.620853, 0.616661, -0.484015,
		34.455349, 30.298168, 29.778742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356995, 29.469318, 29.710962>,  <34.889946, 29.866507, 30.117552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356995, 29.469318, 29.710962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294636, 29.827705, 29.544619>,  <34.257221, 30.042738, 29.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294636, 29.827705, 29.544619>,  <34.356995, 29.469318, 29.710962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294636, 29.827705, 29.544619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239937, -0.442747, -0.863947,
		-0.958189, -0.034905, 0.283998,
		-0.155896, 0.895967, -0.415861,
		34.247868, 30.096495, 29.419861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683392, 29.444143, 29.406765>,  <34.356995, 29.469318, 29.710962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683392, 29.444143, 29.406765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890434, 29.742699, 29.239443>,  <34.014660, 29.921833, 29.139050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890434, 29.742699, 29.239443>,  <33.683392, 29.444143, 29.406765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890434, 29.742699, 29.239443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244977, -0.339146, -0.908276,
		-0.819796, 0.572609, 0.007303,
		0.517611, 0.746390, -0.418307,
		34.045719, 29.966616, 29.113951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215668, 29.737118, 28.852043>,  <33.683392, 29.444143, 29.406765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215668, 29.737118, 28.852043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603500, 29.786430, 28.767462>,  <33.836201, 29.816017, 28.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603500, 29.786430, 28.767462>,  <33.215668, 29.737118, 28.852043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603500, 29.786430, 28.767462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132976, -0.459979, -0.877916,
		-0.205492, 0.879330, -0.429594,
		0.969583, 0.123279, -0.211452,
		33.894375, 29.823414, 28.704025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171638, 30.087364, 28.216736>,  <33.215668, 29.737118, 28.852043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171638, 30.087364, 28.216736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516251, 29.888924, 28.259926>,  <33.723019, 29.769859, 28.285839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516251, 29.888924, 28.259926>,  <33.171638, 30.087364, 28.216736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516251, 29.888924, 28.259926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088169, -0.355625, -0.930461,
		0.499999, 0.792096, -0.350121,
		0.861526, -0.496099, 0.107974,
		33.774708, 29.740093, 28.292318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553257, 30.309444, 27.702089>,  <33.171638, 30.087364, 28.216736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553257, 30.309444, 27.702089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704929, 29.952080, 27.798456>,  <33.795933, 29.737661, 27.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704929, 29.952080, 27.798456>,  <33.553257, 30.309444, 27.702089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704929, 29.952080, 27.798456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173853, -0.324509, -0.929769,
		0.908845, 0.310665, -0.278369,
		0.379179, -0.893410, 0.240918,
		33.818684, 29.684057, 27.870731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073444, 30.214748, 27.266260>,  <33.553257, 30.309444, 27.702089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073444, 30.214748, 27.266260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954823, 29.852665, 27.388018>,  <33.883652, 29.635414, 27.461073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954823, 29.852665, 27.388018>,  <34.073444, 30.214748, 27.266260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954823, 29.852665, 27.388018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319848, -0.206187, -0.924762,
		0.899864, -0.371599, -0.228384,
		-0.296551, -0.905208, 0.304395,
		33.865856, 29.581102, 27.479336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407429, 29.707098, 26.807213>,  <34.073444, 30.214748, 27.266260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407429, 29.707098, 26.807213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112961, 29.487123, 26.965008>,  <33.936279, 29.355139, 27.059685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112961, 29.487123, 26.965008>,  <34.407429, 29.707098, 26.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112961, 29.487123, 26.965008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336783, -0.207916, -0.918340,
		0.587047, -0.808914, -0.032147,
		-0.736174, -0.549935, 0.394485,
		33.892109, 29.322144, 27.083353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355709, 29.250082, 26.404572>,  <34.407429, 29.707098, 26.807213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355709, 29.250082, 26.404572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999096, 29.216139, 26.582544>,  <33.785126, 29.195774, 26.689327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999096, 29.216139, 26.582544>,  <34.355709, 29.250082, 26.404572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999096, 29.216139, 26.582544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398505, -0.319991, -0.859534,
		0.215313, -0.943613, 0.251467,
		-0.891535, -0.084858, 0.444932,
		33.731636, 29.190681, 26.716024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091690, 28.632328, 26.232426>,  <34.355709, 29.250082, 26.404572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091690, 28.632328, 26.232426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769627, 28.855766, 26.312117>,  <33.576389, 28.989828, 26.359932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769627, 28.855766, 26.312117>,  <34.091690, 28.632328, 26.232426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769627, 28.855766, 26.312117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396681, -0.257527, -0.881092,
		-0.440867, -0.788449, 0.428934,
		-0.805159, 0.558595, 0.199228,
		33.528080, 29.023344, 26.371885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583488, 28.198738, 26.103832>,  <34.091690, 28.632328, 26.232426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583488, 28.198738, 26.103832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445301, 28.572315, 26.067173>,  <33.362389, 28.796463, 26.045177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445301, 28.572315, 26.067173>,  <33.583488, 28.198738, 26.103832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445301, 28.572315, 26.067173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231807, -0.179563, -0.956045,
		-0.909351, -0.309036, 0.278528,
		-0.345466, 0.933945, -0.091649,
		33.341660, 28.852499, 26.039679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025681, 28.055656, 25.776285>,  <33.583488, 28.198738, 26.103832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025681, 28.055656, 25.776285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104065, 28.442688, 25.712547>,  <33.151096, 28.674908, 25.674305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104065, 28.442688, 25.712547>,  <33.025681, 28.055656, 25.776285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104065, 28.442688, 25.712547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329009, -0.088203, -0.940199,
		-0.923771, 0.236666, 0.301058,
		0.195959, 0.967579, -0.159344,
		33.162853, 28.732962, 25.664743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392822, 28.314528, 25.495687>,  <33.025681, 28.055656, 25.776285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392822, 28.314528, 25.495687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677006, 28.577137, 25.394321>,  <32.847515, 28.734703, 25.333502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677006, 28.577137, 25.394321>,  <32.392822, 28.314528, 25.495687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677006, 28.577137, 25.394321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277006, -0.070137, -0.958305,
		-0.646925, 0.751036, 0.132031,
		0.710462, 0.656525, -0.253415,
		32.890144, 28.774094, 25.318296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114407, 28.927376, 25.099939>,  <32.392822, 28.314528, 25.495687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114407, 28.927376, 25.099939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503063, 28.919876, 25.005653>,  <32.736256, 28.915377, 24.949081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503063, 28.919876, 25.005653>,  <32.114407, 28.927376, 25.099939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503063, 28.919876, 25.005653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235877, -0.006831, -0.971759,
		0.016609, 0.999801, -0.011060,
		0.971641, -0.018748, -0.235717,
		32.794556, 28.914251, 24.934938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107651, 29.337906, 24.495533>,  <32.114407, 28.927376, 25.099939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107651, 29.337906, 24.495533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447674, 29.127474, 24.485378>,  <32.651688, 29.001215, 24.479286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447674, 29.127474, 24.485378>,  <32.107651, 29.337906, 24.495533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447674, 29.127474, 24.485378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099514, -0.113092, -0.988588,
		0.517207, 0.842881, -0.148487,
		0.850055, -0.526081, -0.025386,
		32.702690, 28.969650, 24.477762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626781, 29.763176, 24.017031>,  <32.107651, 29.337906, 24.495533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626781, 29.763176, 24.017031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731762, 29.378492, 24.048624>,  <32.794750, 29.147682, 24.067579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731762, 29.378492, 24.048624>,  <32.626781, 29.763176, 24.017031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731762, 29.378492, 24.048624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090435, -0.056977, -0.994271,
		0.960698, 0.268092, 0.072018,
		0.262452, -0.961707, 0.078982,
		32.810497, 29.089981, 24.072319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299126, 29.632122, 23.615778>,  <32.626781, 29.763176, 24.017031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299126, 29.632122, 23.615778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130054, 29.274122, 23.672794>,  <33.028610, 29.059322, 23.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130054, 29.274122, 23.672794>,  <33.299126, 29.632122, 23.615778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130054, 29.274122, 23.672794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083276, -0.194971, -0.977268,
		0.902446, -0.401199, 0.156942,
		-0.422678, -0.895000, 0.142540,
		33.003250, 29.005623, 23.715557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733440, 29.116831, 23.304951>,  <33.299126, 29.632122, 23.615778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733440, 29.116831, 23.304951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355698, 28.985462, 23.312180>,  <33.129051, 28.906641, 23.316517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355698, 28.985462, 23.312180>,  <33.733440, 29.116831, 23.304951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355698, 28.985462, 23.312180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047068, 0.080554, -0.995638,
		0.325533, -0.941090, -0.091530,
		-0.944359, -0.328421, 0.018073,
		33.072392, 28.886936, 23.317602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549267, 28.707592, 22.591913>,  <33.733440, 29.116831, 23.304951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549267, 28.707592, 22.591913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191788, 28.757618, 22.764269>,  <32.977303, 28.787634, 22.867682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191788, 28.757618, 22.764269>,  <33.549267, 28.707592, 22.591913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191788, 28.757618, 22.764269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441260, -0.071146, -0.894555,
		-0.081230, -0.989593, 0.118773,
		-0.893695, 0.125075, 0.430889,
		32.923679, 28.795137, 22.893536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108742, 28.240742, 22.179939>,  <33.549267, 28.707592, 22.591913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108742, 28.240742, 22.179939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842594, 28.478582, 22.360487>,  <32.682907, 28.621286, 22.468817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842594, 28.478582, 22.360487>,  <33.108742, 28.240742, 22.179939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842594, 28.478582, 22.360487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487562, 0.111737, -0.865909,
		-0.565306, -0.796218, 0.215559,
		-0.665366, 0.594601, 0.451371,
		32.642982, 28.656963, 22.495899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576694, 27.902138, 22.047285>,  <33.108742, 28.240742, 22.179939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576694, 27.902138, 22.047285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519009, 28.292332, 22.113771>,  <32.484398, 28.526449, 22.153664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519009, 28.292332, 22.113771>,  <32.576694, 27.902138, 22.047285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519009, 28.292332, 22.113771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334893, 0.109948, -0.935819,
		-0.931155, -0.190624, 0.310827,
		-0.144215, 0.975486, 0.166218,
		32.475742, 28.584978, 22.163637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906906, 27.935194, 21.908426>,  <32.576694, 27.902138, 22.047285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906906, 27.935194, 21.908426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075264, 28.297657, 21.891811>,  <32.176277, 28.515135, 21.881842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075264, 28.297657, 21.891811>,  <31.906906, 27.935194, 21.908426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075264, 28.297657, 21.891811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330229, 0.110413, -0.937421,
		-0.844866, 0.408271, 0.345712,
		0.420893, 0.906159, -0.041539,
		32.201530, 28.569504, 21.879351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400055, 28.324390, 21.567657>,  <31.906906, 27.935194, 21.908426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400055, 28.324390, 21.567657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706205, 28.579105, 21.530342>,  <31.889894, 28.731936, 21.507952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706205, 28.579105, 21.530342>,  <31.400055, 28.324390, 21.567657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706205, 28.579105, 21.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474716, 0.460710, -0.749928,
		-0.434566, 0.618261, 0.654909,
		0.765374, 0.636789, -0.093289,
		31.935818, 28.770142, 21.502356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100767, 29.006533, 21.423084>,  <31.400055, 28.324390, 21.567657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100767, 29.006533, 21.423084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477993, 29.051785, 21.297970>,  <31.704329, 29.078936, 21.222902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477993, 29.051785, 21.297970>,  <31.100767, 29.006533, 21.423084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477993, 29.051785, 21.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324943, 0.514161, -0.793757,
		0.071025, 0.850200, 0.521647,
		0.943063, 0.113129, -0.312784,
		31.760912, 29.085724, 21.204134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229218, 29.705000, 21.377552>,  <31.100767, 29.006533, 21.423084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229218, 29.705000, 21.377552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517199, 29.551184, 21.146452>,  <31.689987, 29.458893, 21.007792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517199, 29.551184, 21.146452>,  <31.229218, 29.705000, 21.377552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517199, 29.551184, 21.146452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215264, 0.667678, -0.712648,
		0.659793, 0.637442, 0.397919,
		0.719954, -0.384543, -0.577748,
		31.733185, 29.435822, 20.973127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578405, 30.257181, 21.163929>,  <31.229218, 29.705000, 21.377552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578405, 30.257181, 21.163929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667109, 29.984898, 20.884657>,  <31.720329, 29.821527, 20.717093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667109, 29.984898, 20.884657>,  <31.578405, 30.257181, 21.163929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667109, 29.984898, 20.884657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312521, 0.628622, -0.712155,
		0.923664, 0.376121, -0.073336,
		0.221756, -0.680711, -0.698181,
		31.733635, 29.780684, 20.675203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905924, 30.585800, 20.539267>,  <31.578405, 30.257181, 21.163929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905924, 30.585800, 20.539267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781115, 30.236134, 20.390419>,  <31.706228, 30.026333, 20.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781115, 30.236134, 20.390419>,  <31.905924, 30.585800, 20.539267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781115, 30.236134, 20.390419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440708, 0.480160, -0.758434,
		0.841676, -0.072652, -0.535073,
		-0.312023, -0.874167, -0.372121,
		31.687508, 29.973883, 20.278782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079597, 30.702480, 19.762234>,  <31.905924, 30.585800, 20.539267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079597, 30.702480, 19.762234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803652, 30.415512, 19.801018>,  <31.638084, 30.243332, 19.824287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803652, 30.415512, 19.801018>,  <32.079597, 30.702480, 19.762234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803652, 30.415512, 19.801018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521889, 0.400019, -0.753403,
		0.501723, -0.570343, -0.650371,
		-0.689859, -0.717421, 0.096958,
		31.596693, 30.200287, 19.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956760, 30.527136, 19.054653>,  <32.079597, 30.702480, 19.762234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956760, 30.527136, 19.054653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649632, 30.386608, 19.268951>,  <31.465353, 30.302292, 19.397530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649632, 30.386608, 19.268951>,  <31.956760, 30.527136, 19.054653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649632, 30.386608, 19.268951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633116, 0.288135, -0.718430,
		0.098034, -0.890815, -0.443664,
		-0.767823, -0.351321, 0.535743,
		31.419285, 30.281212, 19.429674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630989, 29.931849, 18.592430>,  <31.956760, 30.527136, 19.054653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630989, 29.931849, 18.592430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349770, 30.077383, 18.836836>,  <31.181038, 30.164703, 18.983480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349770, 30.077383, 18.836836>,  <31.630989, 29.931849, 18.592430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349770, 30.077383, 18.836836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577723, 0.208798, -0.789075,
		-0.414674, -0.907758, 0.063403,
		-0.703051, 0.363838, 0.611016,
		31.138855, 30.186535, 19.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007423, 29.701056, 18.284575>,  <31.630989, 29.931849, 18.592430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007423, 29.701056, 18.284575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876684, 29.991095, 18.527029>,  <30.798241, 30.165117, 18.672503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876684, 29.991095, 18.527029>,  <31.007423, 29.701056, 18.284575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876684, 29.991095, 18.527029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729568, 0.214106, -0.649530,
		-0.600750, -0.654516, 0.459029,
		-0.326847, 0.725098, 0.606138,
		30.778629, 30.208624, 18.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307743, 29.692728, 18.130646>,  <31.007423, 29.701056, 18.284575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307743, 29.692728, 18.130646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356304, 30.056259, 18.290293>,  <30.385441, 30.274378, 18.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356304, 30.056259, 18.290293>,  <30.307743, 29.692728, 18.130646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356304, 30.056259, 18.290293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735054, 0.352528, -0.579153,
		-0.667051, -0.223064, 0.710835,
		0.121401, 0.908827, 0.399119,
		30.392725, 30.328907, 18.410028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695946, 29.898108, 18.259859>,  <30.307743, 29.692728, 18.130646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695946, 29.898108, 18.259859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902166, 30.239901, 18.234354>,  <30.025898, 30.444977, 18.219051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902166, 30.239901, 18.234354>,  <29.695946, 29.898108, 18.259859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902166, 30.239901, 18.234354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734184, 0.402147, -0.547039,
		-0.441795, 0.328839, 0.834675,
		0.515549, 0.854484, -0.063762,
		30.056831, 30.496246, 18.215225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248913, 30.481833, 18.411026>,  <29.695946, 29.898108, 18.259859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248913, 30.481833, 18.411026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553934, 30.612816, 18.187855>,  <29.736946, 30.691406, 18.053951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553934, 30.612816, 18.187855>,  <29.248913, 30.481833, 18.411026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553934, 30.612816, 18.187855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634769, 0.545141, -0.547621,
		0.124826, 0.771745, 0.623560,
		0.762552, 0.327460, -0.557929,
		29.782700, 30.711054, 18.020475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023426, 31.108971, 18.064680>,  <29.248913, 30.481833, 18.411026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023426, 31.108971, 18.064680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357927, 31.064062, 17.849989>,  <29.558628, 31.037117, 17.721174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357927, 31.064062, 17.849989>,  <29.023426, 31.108971, 18.064680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357927, 31.064062, 17.849989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407923, 0.526742, -0.745749,
		0.366445, 0.842578, 0.394690,
		0.836251, -0.112273, -0.536729,
		29.608803, 31.030380, 17.688971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814243, 31.457117, 17.419662>,  <29.023426, 31.108971, 18.064680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814243, 31.457117, 17.419662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524555, 31.689951, 17.567543>,  <28.350742, 31.829651, 17.656271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524555, 31.689951, 17.567543>,  <28.814243, 31.457117, 17.419662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524555, 31.689951, 17.567543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425737, -0.044317, 0.903761,
		0.542449, 0.811920, -0.215719,
		-0.724222, 0.582084, 0.369704,
		28.307289, 31.864576, 17.678453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105955, 32.027519, 17.844044>,  <28.814243, 31.457117, 17.419662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105955, 32.027519, 17.844044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736336, 31.999722, 17.994408>,  <28.514565, 31.983042, 18.084625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736336, 31.999722, 17.994408>,  <29.105955, 32.027519, 17.844044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736336, 31.999722, 17.994408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382263, -0.158421, 0.910372,
		-0.003716, 0.984923, 0.172954,
		-0.924046, -0.069497, 0.375911,
		28.459122, 31.978872, 18.107182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243711, 32.373222, 18.402159>,  <29.105955, 32.027519, 17.844044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243711, 32.373222, 18.402159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904207, 32.169914, 18.460493>,  <28.700504, 32.047928, 18.495493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904207, 32.169914, 18.460493>,  <29.243711, 32.373222, 18.402159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904207, 32.169914, 18.460493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272490, -0.184061, 0.944389,
		-0.453163, 0.841298, 0.294722,
		-0.848759, -0.508271, 0.145836,
		28.649580, 32.017433, 18.504244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836866, 32.748508, 18.974573>,  <29.243711, 32.373222, 18.402159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836866, 32.748508, 18.974573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667778, 32.386356, 18.958597>,  <28.566324, 32.169064, 18.949011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667778, 32.386356, 18.958597>,  <28.836866, 32.748508, 18.974573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667778, 32.386356, 18.958597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129380, -0.103912, 0.986135,
		-0.896977, 0.411692, 0.161063,
		-0.422721, -0.905379, -0.039942,
		28.540962, 32.114742, 18.946615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647211, 32.577831, 19.600054>,  <28.836866, 32.748508, 18.974573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647211, 32.577831, 19.600054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623508, 32.200886, 19.468338>,  <28.609287, 31.974718, 19.389309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623508, 32.200886, 19.468338>,  <28.647211, 32.577831, 19.600054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623508, 32.200886, 19.468338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168471, -0.334577, 0.927187,
		-0.983924, -0.000536, 0.178587,
		-0.059255, -0.942368, -0.329288,
		28.605732, 31.918175, 19.369551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106201, 32.254639, 20.030928>,  <28.647211, 32.577831, 19.600054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106201, 32.254639, 20.030928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363621, 31.989328, 19.878138>,  <28.518072, 31.830141, 19.786463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363621, 31.989328, 19.878138>,  <28.106201, 32.254639, 20.030928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363621, 31.989328, 19.878138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213232, -0.323931, 0.921738,
		-0.735105, -0.674631, -0.067032,
		0.643547, -0.663281, -0.381977,
		28.556684, 31.790344, 19.763544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907503, 31.632954, 20.415356>,  <28.106201, 32.254639, 20.030928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907503, 31.632954, 20.415356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273952, 31.609568, 20.256712>,  <28.493822, 31.595535, 20.161526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273952, 31.609568, 20.256712>,  <27.907503, 31.632954, 20.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273952, 31.609568, 20.256712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330287, -0.450634, 0.829361,
		-0.227214, -0.890792, -0.393526,
		0.916124, -0.058466, -0.396607,
		28.548790, 31.592028, 20.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160309, 30.957447, 20.595987>,  <27.907503, 31.632954, 20.415356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160309, 30.957447, 20.595987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488150, 31.158155, 20.485367>,  <28.684855, 31.278580, 20.418995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488150, 31.158155, 20.485367>,  <28.160309, 30.957447, 20.595987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488150, 31.158155, 20.485367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473213, -0.320752, 0.820480,
		0.322988, -0.803334, -0.500333,
		0.819602, 0.501769, -0.276549,
		28.734030, 31.308685, 20.402403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817484, 30.418768, 20.593096>,  <28.160309, 30.957447, 20.595987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817484, 30.418768, 20.593096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933125, 30.796717, 20.654591>,  <29.002508, 31.023485, 20.691488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933125, 30.796717, 20.654591>,  <28.817484, 30.418768, 20.593096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933125, 30.796717, 20.654591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562154, -0.297556, 0.771649,
		0.774856, -0.136660, -0.617188,
		0.289102, 0.944872, 0.153739,
		29.019855, 31.080179, 20.700712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556160, 30.443607, 20.736485>,  <28.817484, 30.418768, 20.593096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556160, 30.443607, 20.736485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407566, 30.777706, 20.898653>,  <29.318411, 30.978165, 20.995955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407566, 30.777706, 20.898653>,  <29.556160, 30.443607, 20.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407566, 30.777706, 20.898653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595869, -0.120387, 0.794007,
		0.711997, 0.536538, -0.452975,
		-0.371483, 0.835244, 0.405422,
		29.296122, 31.028280, 21.020279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113466, 30.612848, 21.087257>,  <29.556160, 30.443607, 20.736485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113466, 30.612848, 21.087257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842272, 30.859175, 21.247808>,  <29.679554, 31.006971, 21.344139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842272, 30.859175, 21.247808>,  <30.113466, 30.612848, 21.087257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842272, 30.859175, 21.247808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389871, -0.161653, 0.906570,
		0.623164, 0.771129, -0.130490,
		-0.677988, 0.615816, 0.401377,
		29.638876, 31.043919, 21.368221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461967, 31.064354, 21.465693>,  <30.113466, 30.612848, 21.087257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461967, 31.064354, 21.465693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097128, 31.074413, 21.629374>,  <29.878225, 31.080450, 21.727581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097128, 31.074413, 21.629374>,  <30.461967, 31.064354, 21.465693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097128, 31.074413, 21.629374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402179, -0.138803, 0.904978,
		0.079559, 0.990001, 0.116487,
		-0.912098, 0.025150, 0.409200,
		29.823498, 31.081959, 21.752134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612373, 31.461916, 22.037079>,  <30.461967, 31.064354, 21.465693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612373, 31.461916, 22.037079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268995, 31.265434, 22.096128>,  <30.062969, 31.147545, 22.131557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268995, 31.265434, 22.096128>,  <30.612373, 31.461916, 22.037079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268995, 31.265434, 22.096128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204092, -0.063079, 0.976917,
		-0.470553, 0.868758, 0.154400,
		-0.858444, -0.491204, 0.147625,
		30.011461, 31.118073, 22.140415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298693, 31.769804, 22.623465>,  <30.612373, 31.461916, 22.037079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298693, 31.769804, 22.623465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110998, 31.418976, 22.582346>,  <29.998383, 31.208479, 22.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110998, 31.418976, 22.582346>,  <30.298693, 31.769804, 22.623465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110998, 31.418976, 22.582346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061660, -0.148664, 0.986963,
		-0.880918, 0.456779, 0.123839,
		-0.469235, -0.877070, -0.102796,
		29.970228, 31.155855, 22.551508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804655, 31.624348, 23.215090>,  <30.298693, 31.769804, 22.623465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804655, 31.624348, 23.215090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791622, 31.235960, 23.120302>,  <29.783802, 31.002928, 23.063429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791622, 31.235960, 23.120302>,  <29.804655, 31.624348, 23.215090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791622, 31.235960, 23.120302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174634, -0.238978, 0.955192,
		-0.984094, -0.010260, 0.177351,
		-0.032582, -0.970971, -0.236969,
		29.781847, 30.944670, 23.049212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315845, 31.389713, 23.576597>,  <29.804655, 31.624348, 23.215090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315845, 31.389713, 23.576597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562225, 31.086756, 23.489916>,  <29.710052, 30.904982, 23.437906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562225, 31.086756, 23.489916>,  <29.315845, 31.389713, 23.576597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562225, 31.086756, 23.489916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024382, -0.256619, 0.966205,
		-0.787410, -0.600415, -0.139597,
		0.615948, -0.757396, -0.216703,
		29.747009, 30.859537, 23.424906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089310, 30.883066, 24.042910>,  <29.315845, 31.389713, 23.576597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089310, 30.883066, 24.042910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464499, 30.788698, 23.941286>,  <29.689611, 30.732077, 23.880312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464499, 30.788698, 23.941286>,  <29.089310, 30.883066, 24.042910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464499, 30.788698, 23.941286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240493, -0.085105, 0.966913,
		-0.249737, -0.968038, -0.023089,
		0.937974, -0.235922, -0.254060,
		29.745892, 30.717922, 23.865068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251385, 30.404716, 24.590849>,  <29.089310, 30.883066, 24.042910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251385, 30.404716, 24.590849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592009, 30.492329, 24.400324>,  <29.796383, 30.544895, 24.286009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592009, 30.492329, 24.400324>,  <29.251385, 30.404716, 24.590849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592009, 30.492329, 24.400324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490401, -0.011588, 0.871420,
		0.185348, -0.975649, -0.117281,
		0.851559, 0.219030, -0.476311,
		29.847477, 30.558037, 24.257431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740129, 29.877785, 24.693705>,  <29.251385, 30.404716, 24.590849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740129, 29.877785, 24.693705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950155, 30.207001, 24.607065>,  <30.076170, 30.404530, 24.555082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950155, 30.207001, 24.607065>,  <29.740129, 29.877785, 24.693705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950155, 30.207001, 24.607065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561071, -0.143389, 0.815254,
		0.639928, -0.549588, -0.537072,
		0.525064, 0.823039, -0.216599,
		30.107674, 30.453913, 24.542086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390686, 29.747334, 24.810143>,  <29.740129, 29.877785, 24.693705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390686, 29.747334, 24.810143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428040, 30.145563, 24.805893>,  <30.450451, 30.384501, 24.803343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428040, 30.145563, 24.805893>,  <30.390686, 29.747334, 24.810143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428040, 30.145563, 24.805893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629694, -0.050793, 0.775181,
		0.771210, -0.079079, -0.631650,
		0.093384, 0.995573, -0.010623,
		30.456055, 30.444235, 24.802706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097963, 29.855566, 24.804159>,  <30.390686, 29.747334, 24.810143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097963, 29.855566, 24.804159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901875, 30.168222, 24.958418>,  <30.784222, 30.355816, 25.050972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901875, 30.168222, 24.958418>,  <31.097963, 29.855566, 24.804159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901875, 30.168222, 24.958418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606961, -0.011397, 0.794650,
		0.625525, 0.623626, -0.468837,
		-0.490221, 0.781640, 0.385646,
		30.754808, 30.402714, 25.074112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625801, 30.186132, 25.045914>,  <31.097963, 29.855566, 24.804159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625801, 30.186132, 25.045914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310804, 30.331532, 25.245003>,  <31.121807, 30.418772, 25.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310804, 30.331532, 25.245003>,  <31.625801, 30.186132, 25.045914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310804, 30.331532, 25.245003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512592, -0.062116, 0.856383,
		0.342212, 0.929521, -0.137411,
		-0.787490, 0.363500, 0.497721,
		31.074556, 30.440582, 25.394320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935402, 30.433796, 25.521719>,  <31.625801, 30.186132, 25.045914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935402, 30.433796, 25.521719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553637, 30.457582, 25.638718>,  <31.324577, 30.471855, 25.708918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553637, 30.457582, 25.638718>,  <31.935402, 30.433796, 25.521719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553637, 30.457582, 25.638718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296203, 0.067802, 0.952716,
		0.036822, 0.995925, -0.082325,
		-0.954415, 0.059466, 0.292499,
		31.267311, 30.475422, 25.726467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770538, 31.089643, 26.024385>,  <31.935402, 30.433796, 25.521719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770538, 31.089643, 26.024385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486931, 30.813070, 26.079830>,  <31.316767, 30.647127, 26.113096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486931, 30.813070, 26.079830>,  <31.770538, 31.089643, 26.024385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486931, 30.813070, 26.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334835, -0.157100, 0.929088,
		-0.620626, 0.705153, 0.342902,
		-0.709020, -0.691432, 0.138610,
		31.274225, 30.605640, 26.121412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317482, 31.339901, 26.624910>,  <31.770538, 31.089643, 26.024385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317482, 31.339901, 26.624910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291025, 30.943897, 26.575094>,  <31.275150, 30.706295, 26.545204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291025, 30.943897, 26.575094>,  <31.317482, 31.339901, 26.624910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291025, 30.943897, 26.575094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308762, -0.138994, 0.940929,
		-0.948837, 0.023784, 0.314871,
		-0.066145, -0.990008, -0.124538,
		31.271181, 30.646894, 26.537733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977358, 31.247139, 27.198198>,  <31.317482, 31.339901, 26.624910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977358, 31.247139, 27.198198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108709, 30.887320, 27.082973>,  <31.187521, 30.671429, 27.013838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108709, 30.887320, 27.082973>,  <30.977358, 31.247139, 27.198198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108709, 30.887320, 27.082973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106371, -0.267816, 0.957580,
		-0.938537, -0.345091, 0.007740,
		0.328380, -0.899548, -0.288063,
		31.207224, 30.617455, 26.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580009, 30.804188, 27.661585>,  <30.977358, 31.247139, 27.198198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580009, 30.804188, 27.661585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911852, 30.614368, 27.543905>,  <31.110958, 30.500477, 27.473297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911852, 30.614368, 27.543905>,  <30.580009, 30.804188, 27.661585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911852, 30.614368, 27.543905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118386, -0.365432, 0.923279,
		-0.545652, -0.800788, -0.246985,
		0.829608, -0.474550, -0.294201,
		31.160734, 30.472004, 27.455645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519260, 30.186098, 27.851900>,  <30.580009, 30.804188, 27.661585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519260, 30.186098, 27.851900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916979, 30.222876, 27.830280>,  <31.155609, 30.244942, 27.817308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916979, 30.222876, 27.830280>,  <30.519260, 30.186098, 27.851900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916979, 30.222876, 27.830280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067041, -0.144677, 0.987205,
		0.082946, -0.985198, -0.150015,
		0.994296, 0.091942, -0.054048,
		31.215267, 30.250458, 27.814066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804567, 29.733059, 28.301750>,  <30.519260, 30.186098, 27.851900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804567, 29.733059, 28.301750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128504, 29.959982, 28.241995>,  <31.322866, 30.096136, 28.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128504, 29.959982, 28.241995>,  <30.804567, 29.733059, 28.301750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128504, 29.959982, 28.241995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156119, 0.037053, 0.987043,
		0.565495, -0.822670, -0.058561,
		0.809841, 0.567310, -0.149387,
		31.371456, 30.130175, 28.197178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233150, 29.411991, 28.694002>,  <30.804567, 29.733059, 28.301750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233150, 29.411991, 28.694002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381596, 29.780027, 28.643866>,  <31.470663, 30.000849, 28.613783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381596, 29.780027, 28.643866>,  <31.233150, 29.411991, 28.694002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381596, 29.780027, 28.643866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144790, 0.075995, 0.986540,
		0.917230, -0.384266, -0.105017,
		0.371113, 0.920089, -0.125343,
		31.492929, 30.056055, 28.606262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869787, 29.418127, 29.138937>,  <31.233150, 29.411991, 28.694002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869787, 29.418127, 29.138937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765726, 29.799419, 29.077394>,  <31.703289, 30.028194, 29.040470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765726, 29.799419, 29.077394>,  <31.869787, 29.418127, 29.138937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765726, 29.799419, 29.077394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115923, 0.189022, 0.975107,
		0.958583, 0.235843, -0.159676,
		-0.260154, 0.953231, -0.153854,
		31.687679, 30.085388, 29.031239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169609, 29.784702, 29.670759>,  <31.869787, 29.418127, 29.138937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169609, 29.784702, 29.670759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933643, 30.084249, 29.549963>,  <31.792065, 30.263977, 29.477486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933643, 30.084249, 29.549963>,  <32.169609, 29.784702, 29.670759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933643, 30.084249, 29.549963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130141, 0.457287, 0.879745,
		0.796911, 0.479671, -0.367218,
		-0.589913, 0.748868, -0.301992,
		31.756670, 30.308910, 29.459366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497322, 30.451857, 29.717396>,  <32.169609, 29.784702, 29.670759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497322, 30.451857, 29.717396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101933, 30.491327, 29.763338>,  <31.864700, 30.515011, 29.790903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101933, 30.491327, 29.763338>,  <32.497322, 30.451857, 29.717396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101933, 30.491327, 29.763338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140006, 0.306654, 0.941468,
		0.057681, 0.946692, -0.316934,
		-0.988469, 0.098678, 0.114854,
		31.805391, 30.520931, 29.797794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465355, 30.997896, 30.152882>,  <32.497322, 30.451857, 29.717396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465355, 30.997896, 30.152882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100231, 30.838520, 30.188726>,  <31.881157, 30.742895, 30.210234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100231, 30.838520, 30.188726>,  <32.465355, 30.997896, 30.152882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100231, 30.838520, 30.188726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049926, 0.326656, 0.943824,
		-0.405329, 0.857054, -0.318066,
		-0.912807, -0.398439, 0.089614,
		31.826389, 30.718988, 30.215611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014355, 31.488178, 30.406021>,  <32.465355, 30.997896, 30.152882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014355, 31.488178, 30.406021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829498, 31.142927, 30.487438>,  <31.718584, 30.935776, 30.536289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829498, 31.142927, 30.487438>,  <32.014355, 31.488178, 30.406021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829498, 31.142927, 30.487438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085839, 0.271986, 0.958465,
		-0.882640, 0.425478, -0.199787,
		-0.462145, -0.863130, 0.203543,
		31.690855, 30.883987, 30.548502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535414, 31.681068, 31.005344>,  <32.014355, 31.488178, 30.406021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535414, 31.681068, 31.005344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524441, 31.281219, 31.005093>,  <31.517857, 31.041309, 31.004942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524441, 31.281219, 31.005093>,  <31.535414, 31.681068, 31.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524441, 31.281219, 31.005093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314124, 0.008023, 0.949348,
		-0.948986, 0.026239, -0.314226,
		-0.027431, -0.999623, -0.000628,
		31.516212, 30.981333, 31.004904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780256, 31.483530, 31.071045>,  <31.535414, 31.681068, 31.005344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780256, 31.483530, 31.071045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041111, 31.215607, 31.213074>,  <31.197624, 31.054853, 31.298292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041111, 31.215607, 31.213074>,  <30.780256, 31.483530, 31.071045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041111, 31.215607, 31.213074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532465, -0.071295, 0.843444,
		-0.539630, -0.739104, -0.403143,
		0.652135, -0.669807, 0.355074,
		31.236752, 31.014664, 31.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331751, 31.076529, 31.469652>,  <30.780256, 31.483530, 31.071045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331751, 31.076529, 31.469652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696997, 30.990164, 31.607988>,  <30.916143, 30.938345, 31.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696997, 30.990164, 31.607988>,  <30.331751, 31.076529, 31.469652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696997, 30.990164, 31.607988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329991, 0.106769, 0.937927,
		-0.239436, -0.970557, 0.026243,
		0.913114, -0.215913, 0.345839,
		30.970930, 30.925390, 31.711740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208523, 30.587624, 32.024769>,  <30.331751, 31.076529, 31.469652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208523, 30.587624, 32.024769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579517, 30.726891, 32.079243>,  <30.802114, 30.810452, 32.111927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579517, 30.726891, 32.079243>,  <30.208523, 30.587624, 32.024769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579517, 30.726891, 32.079243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094733, -0.133510, 0.986509,
		0.361652, -0.927877, -0.090846,
		0.927488, 0.348167, 0.136185,
		30.857763, 30.831341, 32.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527117, 30.116297, 32.561131>,  <30.208523, 30.587624, 32.024769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527117, 30.116297, 32.561131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734900, 30.457945, 32.571262>,  <30.859570, 30.662933, 32.577343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734900, 30.457945, 32.571262>,  <30.527117, 30.116297, 32.561131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734900, 30.457945, 32.571262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016162, -0.039463, 0.999090,
		0.854343, -0.518577, -0.034304,
		0.519459, 0.854120, 0.025334,
		30.890738, 30.714180, 32.578861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012732, 30.070171, 33.144119>,  <30.527117, 30.116297, 32.561131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012732, 30.070171, 33.144119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945852, 30.459003, 33.078270>,  <30.905725, 30.692303, 33.038761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945852, 30.459003, 33.078270>,  <31.012732, 30.070171, 33.144119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945852, 30.459003, 33.078270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002197, 0.166609, 0.986021,
		0.985921, 0.165223, -0.025721,
		-0.167199, 0.972082, -0.164626,
		30.895693, 30.750628, 33.028881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644669, 30.533613, 33.447727>,  <31.012732, 30.070171, 33.144119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644669, 30.533613, 33.447727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293158, 30.723776, 33.464401>,  <31.082251, 30.837873, 33.474403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293158, 30.723776, 33.464401>,  <31.644669, 30.533613, 33.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293158, 30.723776, 33.464401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208470, 0.303842, 0.929635,
		0.429291, 0.825631, -0.366118,
		-0.878777, 0.475408, 0.041683,
		31.029524, 30.866398, 33.476906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358601, 30.439098, 33.332718>,  <31.644669, 30.533613, 33.447727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358601, 30.439098, 33.332718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749073, 30.385958, 33.264114>,  <32.983356, 30.354073, 33.222954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749073, 30.385958, 33.264114>,  <32.358601, 30.439098, 33.332718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749073, 30.385958, 33.264114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013408, -0.752100, 0.658913,
		-0.216528, -0.645520, -0.732407,
		0.976184, -0.132853, -0.171505,
		33.041927, 30.346102, 33.212662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674961, 29.837837, 33.192158>,  <32.358601, 30.439098, 33.332718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674961, 29.837837, 33.192158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944077, 30.038879, 33.409317>,  <33.105545, 30.159506, 33.539612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944077, 30.038879, 33.409317>,  <32.674961, 29.837837, 33.192158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944077, 30.038879, 33.409317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020860, -0.720631, 0.693005,
		0.739537, -0.477573, -0.474351,
		0.672792, 0.502607, 0.542896,
		33.145916, 30.189661, 33.572186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253155, 29.364254, 33.422218>,  <32.674961, 29.837837, 33.192158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253155, 29.364254, 33.422218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195717, 29.669483, 33.674282>,  <33.161255, 29.852621, 33.825520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195717, 29.669483, 33.674282>,  <33.253155, 29.364254, 33.422218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195717, 29.669483, 33.674282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018294, -0.638697, 0.769241,
		0.989468, 0.098930, 0.105672,
		-0.143593, 0.763073, 0.630160,
		33.152637, 29.898405, 33.863331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001781, 29.490334, 33.479660>,  <33.253155, 29.364254, 33.422218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001781, 29.490334, 33.479660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392521, 29.445671, 33.406666>,  <34.626965, 29.418873, 33.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392521, 29.445671, 33.406666>,  <34.001781, 29.490334, 33.479660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392521, 29.445671, 33.406666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212789, 0.419111, 0.882648,
		-0.022073, -0.901043, 0.433167,
		0.976849, -0.111656, -0.182481,
		34.685577, 29.412174, 33.351921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209270, 29.274633, 34.152397>,  <34.001781, 29.490334, 33.479660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209270, 29.274633, 34.152397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543339, 29.369825, 33.954060>,  <34.743778, 29.426941, 33.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543339, 29.369825, 33.954060>,  <34.209270, 29.274633, 34.152397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543339, 29.369825, 33.954060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401091, 0.353330, 0.845153,
		0.376326, -0.904723, 0.199639,
		0.835168, 0.237979, -0.495843,
		34.793888, 29.441219, 33.805305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811806, 29.012949, 34.466534>,  <34.209270, 29.274633, 34.152397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811806, 29.012949, 34.466534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932014, 29.343586, 34.276196>,  <35.004139, 29.541969, 34.161991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932014, 29.343586, 34.276196>,  <34.811806, 29.012949, 34.466534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932014, 29.343586, 34.276196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626450, 0.205136, 0.751984,
		0.719198, -0.524083, -0.456170,
		0.300525, 0.826593, -0.475845,
		35.022171, 29.591564, 34.133442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459015, 29.021227, 34.614052>,  <34.811806, 29.012949, 34.466534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459015, 29.021227, 34.614052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372284, 29.401104, 34.523655>,  <35.320248, 29.629030, 34.469418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372284, 29.401104, 34.523655>,  <35.459015, 29.021227, 34.614052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372284, 29.401104, 34.523655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386245, 0.296065, 0.873590,
		0.896550, 0.102126, -0.431008,
		-0.216823, 0.949692, -0.225992,
		35.307236, 29.686012, 34.455856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772175, 29.092367, 33.891483>,  <35.459015, 29.021227, 34.614052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772175, 29.092367, 33.891483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100426, 28.982845, 33.690845>,  <36.297375, 28.917133, 33.570461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100426, 28.982845, 33.690845>,  <35.772175, 29.092367, 33.891483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100426, 28.982845, 33.690845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119109, 0.776518, -0.618735,
		0.558912, 0.567496, 0.604620,
		0.820628, -0.273803, -0.501599,
		36.346615, 28.900703, 33.540367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358356, 29.559071, 33.936737>,  <35.772175, 29.092367, 33.891483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358356, 29.559071, 33.936737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 29.364397, 33.588196>,  <36.318489, 29.247593, 33.379070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 29.364397, 33.588196>,  <36.358356, 29.559071, 33.936737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333439, 29.364397, 33.588196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071452, 0.868634, -0.490275,
		0.995497, -0.092803, -0.019340,
		-0.062298, -0.486685, -0.871353,
		36.314751, 29.218391, 33.326790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851154, 29.796680, 33.539532>,  <36.358356, 29.559071, 33.936737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851154, 29.796680, 33.539532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533916, 29.660448, 33.337540>,  <36.343575, 29.578709, 33.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533916, 29.660448, 33.337540>,  <36.851154, 29.796680, 33.539532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533916, 29.660448, 33.337540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104357, 0.892781, -0.438237,
		0.600091, -0.294866, -0.743603,
		-0.793095, -0.340582, -0.504979,
		36.295986, 29.558273, 33.186047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855145, 29.999859, 32.908485>,  <36.851154, 29.796680, 33.539532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855145, 29.999859, 32.908485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468292, 29.978361, 33.007896>,  <36.236179, 29.965462, 33.067543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468292, 29.978361, 33.007896>,  <36.855145, 29.999859, 32.908485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468292, 29.978361, 33.007896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131506, 0.942261, -0.307978,
		-0.217627, -0.330538, -0.918359,
		-0.967132, -0.053745, 0.248530,
		36.178154, 29.962238, 33.082455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522015, 30.282001, 32.385330>,  <36.855145, 29.999859, 32.908485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522015, 30.282001, 32.385330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324329, 30.313900, 32.731602>,  <36.205719, 30.333038, 32.939365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324329, 30.313900, 32.731602>,  <36.522015, 30.282001, 32.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324329, 30.313900, 32.731602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196765, 0.959681, -0.200739,
		-0.846779, -0.269543, -0.458598,
		-0.494216, 0.079745, 0.865674,
		36.176064, 30.337824, 32.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971535, 30.765898, 32.183426>,  <36.522015, 30.282001, 32.385330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971535, 30.765898, 32.183426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963249, 30.781153, 32.583050>,  <35.958279, 30.790306, 32.822823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963249, 30.781153, 32.583050>,  <35.971535, 30.765898, 32.183426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963249, 30.781153, 32.583050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526326, 0.849178, -0.043328,
		-0.850030, -0.526728, 0.002484,
		-0.020713, 0.038138, 0.999058,
		35.957035, 30.792593, 32.882767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347439, 30.945099, 32.397018>,  <35.971535, 30.765898, 32.183426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347439, 30.945099, 32.397018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564911, 31.079603, 32.704613>,  <35.695396, 31.160307, 32.889168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564911, 31.079603, 32.704613>,  <35.347439, 30.945099, 32.397018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564911, 31.079603, 32.704613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712848, 0.668630, 0.211617,
		-0.443006, -0.663221, 0.603227,
		0.543685, 0.336262, 0.768983,
		35.728016, 31.180481, 32.935307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937305, 31.142437, 33.101063>,  <35.347439, 30.945099, 32.397018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937305, 31.142437, 33.101063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266441, 31.364336, 33.051762>,  <35.463924, 31.497475, 33.022179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266441, 31.364336, 33.051762>,  <34.937305, 31.142437, 33.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266441, 31.364336, 33.051762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535177, 0.829407, 0.160214,
		0.191108, -0.065866, 0.979356,
		0.822838, 0.554747, -0.123256,
		35.513294, 31.530760, 33.014786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879574, 31.731926, 33.653778>,  <34.937305, 31.142437, 33.101063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879574, 31.731926, 33.653778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083473, 31.817434, 33.320442>,  <35.205814, 31.868740, 33.120441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083473, 31.817434, 33.320442>,  <34.879574, 31.731926, 33.653778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083473, 31.817434, 33.320442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493888, 0.865837, -0.080002,
		0.704434, 0.452358, 0.546942,
		0.509752, 0.213772, -0.833339,
		35.236401, 31.881565, 33.070442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435810, 32.210007, 33.500172>,  <34.879574, 31.731926, 33.653778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435810, 32.210007, 33.500172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623371, 32.518398, 33.327789>,  <35.735909, 32.703434, 33.224361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623371, 32.518398, 33.327789>,  <35.435810, 32.210007, 33.500172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623371, 32.518398, 33.327789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841626, -0.241991, 0.482811,
		0.267949, -0.589095, -0.762345,
		0.468903, 0.770978, -0.430957,
		35.764042, 32.749691, 33.198502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013512, 31.948843, 33.336288>,  <35.435810, 32.210007, 33.500172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013512, 31.948843, 33.336288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107719, 32.337486, 33.327316>,  <36.164246, 32.570671, 33.321934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107719, 32.337486, 33.327316>,  <36.013512, 31.948843, 33.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107719, 32.337486, 33.327316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802591, -0.181433, 0.568270,
		0.548068, -0.151839, -0.822537,
		0.235521, 0.971611, -0.022427,
		36.178375, 32.628971, 33.320587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676964, 32.020805, 33.102165>,  <36.013512, 31.948843, 33.336288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676964, 32.020805, 33.102165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604301, 32.346664, 33.322475>,  <36.560703, 32.542179, 33.454662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604301, 32.346664, 33.322475>,  <36.676964, 32.020805, 33.102165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604301, 32.346664, 33.322475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842092, -0.160375, 0.514938,
		0.507822, 0.557347, -0.656872,
		-0.181654, 0.814644, 0.550779,
		36.549805, 32.591057, 33.487709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265068, 32.585804, 32.981274>,  <36.676964, 32.020805, 33.102165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265068, 32.585804, 32.981274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101086, 32.623280, 33.344185>,  <37.002697, 32.645763, 33.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101086, 32.623280, 33.344185>,  <37.265068, 32.585804, 32.981274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101086, 32.623280, 33.344185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911178, 0.086938, 0.402735,
		-0.041146, 0.991799, -0.121007,
		-0.409953, 0.093688, 0.907282,
		36.978100, 32.651386, 33.616371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859329, 32.992264, 33.421104>,  <37.265068, 32.585804, 32.981274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859329, 32.992264, 33.421104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588497, 32.852592, 33.680222>,  <37.425999, 32.768791, 33.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588497, 32.852592, 33.680222>,  <37.859329, 32.992264, 33.421104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588497, 32.852592, 33.680222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721783, -0.143477, 0.677084,
		-0.143477, 0.926009, 0.349174,
		-0.677084, -0.349174, 0.647792,
		37.385372, 32.747841, 33.874557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911976, 33.366444, 34.055935>,  <37.859329, 32.992264, 33.421104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911976, 33.366444, 34.055935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808388, 32.985512, 34.120430>,  <37.746235, 32.756950, 34.159126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808388, 32.985512, 34.120430>,  <37.911976, 33.366444, 34.055935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808388, 32.985512, 34.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727294, -0.082422, 0.681359,
		-0.635591, 0.293718, 0.713970,
		-0.258974, -0.952332, 0.161233,
		37.730694, 32.699814, 34.168800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291691, 33.215248, 34.430992>,  <37.911976, 33.366444, 34.055935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291691, 33.215248, 34.430992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266891, 33.316391, 34.044788>,  <37.252010, 33.377079, 33.813065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266891, 33.316391, 34.044788>,  <37.291691, 33.215248, 34.430992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266891, 33.316391, 34.044788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888537, -0.454596, -0.061999,
		-0.454596, 0.854051, 0.252861,
		0.061999, -0.252861, 0.965514,
		37.248291, 33.392250, 33.755135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375153, 33.889130, 34.618099>,  <37.291691, 33.215248, 34.430992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375153, 33.889130, 34.618099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441578, 34.179287, 34.885300>,  <37.481434, 34.353382, 35.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441578, 34.179287, 34.885300>,  <37.375153, 33.889130, 34.618099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441578, 34.179287, 34.885300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331397, -0.596960, 0.730626,
		0.928762, -0.342703, 0.141261,
		0.166060, 0.725391, 0.668005,
		37.491398, 34.396904, 35.085701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842686, 33.665970, 35.070301>,  <37.375153, 33.889130, 34.618099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842686, 33.665970, 35.070301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602161, 33.941135, 35.232880>,  <37.457848, 34.106236, 35.330425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602161, 33.941135, 35.232880>,  <37.842686, 33.665970, 35.070301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602161, 33.941135, 35.232880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293712, -0.663375, 0.688235,
		0.743071, 0.294468, 0.600945,
		-0.601315, 0.687912, 0.406446,
		37.421768, 34.147511, 35.354813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285625, 33.005104, 35.056305>,  <37.842686, 33.665970, 35.070301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285625, 33.005104, 35.056305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398357, 33.377514, 35.149052>,  <38.465996, 33.600960, 35.204700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398357, 33.377514, 35.149052>,  <38.285625, 33.005104, 35.056305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398357, 33.377514, 35.149052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374668, -0.329265, 0.866723,
		0.883287, -0.157395, -0.441622,
		0.281829, 0.931027, 0.231865,
		38.482906, 33.656822, 35.218613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037426, 33.152710, 35.160507>,  <38.285625, 33.005104, 35.056305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037426, 33.152710, 35.160507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789577, 33.368839, 35.388233>,  <38.640869, 33.498516, 35.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789577, 33.368839, 35.388233>,  <39.037426, 33.152710, 35.160507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789577, 33.368839, 35.388233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451618, -0.347814, 0.821625,
		0.641962, 0.766207, -0.028509,
		-0.619618, 0.540327, 0.569315,
		38.603691, 33.530937, 35.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327694, 33.725281, 35.445305>,  <39.037426, 33.152710, 35.160507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327694, 33.725281, 35.445305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049801, 33.583344, 35.695564>,  <38.883064, 33.498180, 35.845722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049801, 33.583344, 35.695564>,  <39.327694, 33.725281, 35.445305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049801, 33.583344, 35.695564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707268, -0.178762, 0.683971,
		-0.130857, 0.917678, 0.375158,
		-0.694729, -0.354840, 0.625652,
		38.841381, 33.476891, 35.883259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262920, 34.179840, 36.037380>,  <39.327694, 33.725281, 35.445305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262920, 34.179840, 36.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191669, 33.790119, 36.092525>,  <39.148918, 33.556286, 36.125614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191669, 33.790119, 36.092525>,  <39.262920, 34.179840, 36.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191669, 33.790119, 36.092525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740665, -0.040518, 0.670652,
		-0.647831, 0.221573, 0.728848,
		-0.178130, -0.974302, 0.137863,
		39.138229, 33.497829, 36.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107254, 33.911770, 36.781441>,  <39.262920, 34.179840, 36.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107254, 33.911770, 36.781441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315922, 33.643257, 36.570827>,  <39.441124, 33.482147, 36.444462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315922, 33.643257, 36.570827>,  <39.107254, 33.911770, 36.781441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315922, 33.643257, 36.570827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741246, 0.051079, 0.669287,
		-0.422387, -0.739438, 0.524233,
		0.521674, -0.671284, -0.526531,
		39.472424, 33.441872, 36.412868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485661, 33.418781, 37.184856>,  <39.107254, 33.911770, 36.781441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485661, 33.418781, 37.184856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701229, 33.433685, 36.848244>,  <39.830570, 33.442627, 36.646275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701229, 33.433685, 36.848244>,  <39.485661, 33.418781, 37.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701229, 33.433685, 36.848244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826037, -0.219078, 0.519295,
		-0.165011, -0.974995, -0.148847,
		0.538919, 0.037263, -0.841532,
		39.862904, 33.444862, 36.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700443, 32.770035, 36.940079>,  <39.485661, 33.418781, 37.184856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700443, 32.770035, 36.940079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956318, 33.067726, 36.863216>,  <40.109844, 33.246342, 36.817101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956318, 33.067726, 36.863216>,  <39.700443, 32.770035, 36.940079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956318, 33.067726, 36.863216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650430, -0.390914, 0.651251,
		0.409566, -0.541578, -0.734132,
		0.639685, 0.744231, -0.192154,
		40.148224, 33.290997, 36.805569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421024, 32.621014, 36.737713>,  <39.700443, 32.770035, 36.940079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421024, 32.621014, 36.737713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432919, 32.969975, 36.932865>,  <40.440056, 33.179352, 37.049957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432919, 32.969975, 36.932865>,  <40.421024, 32.621014, 36.737713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432919, 32.969975, 36.932865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764548, -0.334271, 0.551117,
		0.643881, 0.356621, -0.676934,
		0.029739, 0.872401, 0.487885,
		40.441841, 33.231693, 37.079231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122665, 32.991413, 36.761753>,  <40.421024, 32.621014, 36.737713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122665, 32.991413, 36.761753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883553, 33.046490, 37.077652>,  <40.740086, 33.079536, 37.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883553, 33.046490, 37.077652>,  <41.122665, 32.991413, 36.761753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883553, 33.046490, 37.077652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630026, -0.528470, 0.569023,
		0.495703, 0.837712, 0.229164,
		-0.597784, 0.137687, 0.789744,
		40.704216, 33.087795, 37.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413834, 33.394230, 37.207306>,  <41.122665, 32.991413, 36.761753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413834, 33.394230, 37.207306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167198, 33.182156, 37.440105>,  <41.019218, 33.054909, 37.579784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167198, 33.182156, 37.440105>,  <41.413834, 33.394230, 37.207306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167198, 33.182156, 37.440105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775402, -0.281009, 0.565496,
		-0.136275, 0.799958, 0.584377,
		-0.616588, -0.530190, 0.581994,
		40.982224, 33.023098, 37.614704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333836, 33.647148, 37.893082>,  <41.413834, 33.394230, 37.207306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333836, 33.647148, 37.893082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317940, 33.249004, 37.858032>,  <41.308403, 33.010117, 37.837002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317940, 33.249004, 37.858032>,  <41.333836, 33.647148, 37.893082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317940, 33.249004, 37.858032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883446, -0.075967, 0.462334,
		-0.466846, -0.059039, 0.882366,
		-0.039736, -0.995361, -0.087622,
		41.306019, 32.950397, 37.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222424, 33.270615, 38.524929>,  <41.333836, 33.647148, 37.893082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222424, 33.270615, 38.524929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450069, 33.070827, 38.263657>,  <41.586655, 32.950954, 38.106895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450069, 33.070827, 38.263657>,  <41.222424, 33.270615, 38.524929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450069, 33.070827, 38.263657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771053, 0.048225, 0.634942,
		-0.285636, -0.864987, 0.412564,
		0.569113, -0.499471, -0.653177,
		41.620804, 32.920986, 38.067703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685913, 33.033478, 38.952377>,  <41.222424, 33.270615, 38.524929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685913, 33.033478, 38.952377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844105, 32.956081, 38.593231>,  <41.939018, 32.909645, 38.377743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844105, 32.956081, 38.593231>,  <41.685913, 33.033478, 38.952377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844105, 32.956081, 38.593231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912282, -0.030578, 0.408421,
		-0.106479, -0.980626, 0.164422,
		0.395480, -0.193487, -0.897863,
		41.962749, 32.898037, 38.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160854, 32.549736, 39.012379>,  <41.685913, 33.033478, 38.952377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160854, 32.549736, 39.012379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298107, 32.741207, 38.689114>,  <42.380459, 32.856091, 38.495155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298107, 32.741207, 38.689114>,  <42.160854, 32.549736, 39.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298107, 32.741207, 38.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900398, 0.077382, 0.428130,
		0.267473, -0.874575, -0.404447,
		0.343135, 0.478677, -0.808163,
		42.401047, 32.884811, 38.446663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824394, 32.267441, 38.762646>,  <42.160854, 32.549736, 39.012379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824394, 32.267441, 38.762646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806713, 32.644421, 38.630077>,  <42.796104, 32.870609, 38.550537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806713, 32.644421, 38.630077>,  <42.824394, 32.267441, 38.762646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806713, 32.644421, 38.630077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924016, 0.164687, 0.345068,
		0.379789, -0.290987, -0.878115,
		-0.044204, 0.942446, -0.331423,
		42.793453, 32.927155, 38.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346333, 32.433933, 38.274204>,  <42.824394, 32.267441, 38.762646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346333, 32.433933, 38.274204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247730, 32.764912, 38.476021>,  <43.188568, 32.963497, 38.597111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247730, 32.764912, 38.476021>,  <43.346333, 32.433933, 38.274204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247730, 32.764912, 38.476021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936514, 0.069434, 0.343686,
		0.249349, 0.557236, -0.792031,
		-0.246508, 0.827446, 0.504546,
		43.173779, 33.013145, 38.627384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969551, 32.871037, 38.331688>,  <43.346333, 32.433933, 38.274204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969551, 32.871037, 38.331688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711590, 33.007637, 38.605175>,  <43.556812, 33.089596, 38.769268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711590, 33.007637, 38.605175>,  <43.969551, 32.871037, 38.331688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711590, 33.007637, 38.605175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735090, 0.032364, 0.677197,
		0.209136, 0.939324, -0.271906,
		-0.644907, 0.341502, 0.683719,
		43.518116, 33.110088, 38.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200932, 33.407955, 38.610798>,  <43.969551, 32.871037, 38.331688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200932, 33.407955, 38.610798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942860, 33.356747, 38.912086>,  <43.788017, 33.326019, 39.092861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942860, 33.356747, 38.912086>,  <44.200932, 33.407955, 38.610798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942860, 33.356747, 38.912086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760296, -0.010264, 0.649495,
		-0.075420, 0.991718, 0.103958,
		-0.645183, -0.128024, 0.753225,
		43.749306, 33.318340, 39.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354458, 33.958065, 39.035603>,  <44.200932, 33.407955, 38.610798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354458, 33.958065, 39.035603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173073, 33.653248, 39.220497>,  <44.064243, 33.470360, 39.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173073, 33.653248, 39.220497>,  <44.354458, 33.958065, 39.035603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173073, 33.653248, 39.220497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778443, -0.086058, 0.621789,
		-0.434049, 0.641785, 0.632229,
		-0.453463, -0.762041, 0.462239,
		44.037033, 33.424637, 39.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293201, 34.086632, 39.805199>,  <44.354458, 33.958065, 39.035603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293201, 34.086632, 39.805199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266602, 33.694725, 39.729691>,  <44.250641, 33.459579, 39.684383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266602, 33.694725, 39.729691>,  <44.293201, 34.086632, 39.805199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266602, 33.694725, 39.729691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767381, -0.171145, 0.617928,
		-0.637733, -0.103766, 0.763236,
		-0.066504, -0.979766, -0.188773,
		44.246651, 33.400795, 39.673058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013786, 33.747402, 40.427803>,  <44.293201, 34.086632, 39.805199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013786, 33.747402, 40.427803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264809, 33.560524, 40.178673>,  <44.415421, 33.448399, 40.029194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264809, 33.560524, 40.178673>,  <44.013786, 33.747402, 40.427803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264809, 33.560524, 40.178673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699340, -0.013350, 0.714665,
		-0.342202, -0.884054, 0.318350,
		0.627552, -0.467194, -0.622822,
		44.453075, 33.420364, 39.991825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277710, 33.300236, 40.879738>,  <44.013786, 33.747402, 40.427803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277710, 33.300236, 40.879738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523327, 33.391636, 40.577549>,  <44.670696, 33.446476, 40.396236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523327, 33.391636, 40.577549>,  <44.277710, 33.300236, 40.879738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523327, 33.391636, 40.577549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751332, 0.123986, 0.648172,
		0.241774, -0.965617, -0.095545,
		0.614040, 0.228497, -0.755476,
		44.707539, 33.460186, 40.350906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950039, 32.938873, 41.086102>,  <44.277710, 33.300236, 40.879738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950039, 32.938873, 41.086102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005489, 33.241470, 40.830444>,  <45.038761, 33.423027, 40.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005489, 33.241470, 40.830444>,  <44.950039, 32.938873, 41.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005489, 33.241470, 40.830444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823541, 0.270397, 0.498665,
		0.550058, -0.595486, -0.585519,
		0.138625, 0.756493, -0.639141,
		45.047077, 33.468418, 40.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675152, 33.016819, 40.641956>,  <44.950039, 32.938873, 41.086102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675152, 33.016819, 40.641956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508213, 33.360588, 40.760078>,  <45.408051, 33.566849, 40.830952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508213, 33.360588, 40.760078>,  <45.675152, 33.016819, 40.641956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508213, 33.360588, 40.760078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826529, 0.223920, 0.516439,
		0.377716, 0.459616, -0.803793,
		-0.417349, 0.859426, 0.295308,
		45.383007, 33.618416, 40.848671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085098, 33.575237, 40.512257>,  <45.675152, 33.016819, 40.641956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085098, 33.575237, 40.512257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898926, 33.562424, 40.866058>,  <45.787220, 33.554733, 41.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898926, 33.562424, 40.866058>,  <46.085098, 33.575237, 40.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898926, 33.562424, 40.866058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871508, 0.157759, 0.464312,
		-0.154413, 0.986958, -0.045505,
		-0.465435, -0.032038, 0.884502,
		45.759296, 33.552811, 41.131409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781490, 33.675510, 40.184540>,  <46.085098, 33.575237, 40.512257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781490, 33.675510, 40.184540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857796, 34.067730, 40.166077>,  <46.903580, 34.303062, 40.154999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857796, 34.067730, 40.166077>,  <46.781490, 33.675510, 40.184540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857796, 34.067730, 40.166077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751033, 0.115509, -0.650083,
		-0.632107, 0.158680, 0.758460,
		0.190764, 0.980550, -0.046160,
		46.915024, 34.361897, 40.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224796, 33.951977, 39.886784>,  <46.781490, 33.675510, 40.184540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224796, 33.951977, 39.886784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482941, 34.251400, 39.825912>,  <46.637829, 34.431053, 39.789391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482941, 34.251400, 39.825912>,  <46.224796, 33.951977, 39.886784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482941, 34.251400, 39.825912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603810, 0.377882, -0.701868,
		-0.467886, 0.544848, 0.695861,
		0.645365, 0.748563, -0.152179,
		46.676552, 34.475967, 39.780258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842033, 34.634907, 39.927013>,  <46.224796, 33.951977, 39.886784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842033, 34.634907, 39.927013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163227, 34.626011, 39.688782>,  <46.355946, 34.620674, 39.545841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163227, 34.626011, 39.688782>,  <45.842033, 34.634907, 39.927013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163227, 34.626011, 39.688782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584888, 0.162617, -0.794646,
		0.114527, 0.986439, 0.117569,
		0.802988, -0.022244, -0.595580,
		46.404125, 34.619339, 39.510109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888802, 35.218998, 39.533840>,  <45.842033, 34.634907, 39.927013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888802, 35.218998, 39.533840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056641, 34.924652, 39.321259>,  <46.157345, 34.748047, 39.193710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056641, 34.924652, 39.321259>,  <45.888802, 35.218998, 39.533840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056641, 34.924652, 39.321259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515949, 0.288363, -0.806625,
		0.746816, 0.612662, -0.258671,
		0.419597, -0.735861, -0.531457,
		46.182518, 34.703896, 39.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189545, 35.474003, 38.918648>,  <45.888802, 35.218998, 39.533840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189545, 35.474003, 38.918648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082481, 35.097919, 38.834393>,  <46.018242, 34.872269, 38.783840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082481, 35.097919, 38.834393>,  <46.189545, 35.474003, 38.918648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082481, 35.097919, 38.834393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598313, 0.333545, -0.728539,
		0.755235, -0.068974, -0.651815,
		-0.267660, -0.940208, -0.210637,
		46.002182, 34.815857, 38.771202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227615, 35.330566, 38.290550>,  <46.189545, 35.474003, 38.918648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227615, 35.330566, 38.290550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963753, 35.048592, 38.394787>,  <45.805435, 34.879406, 38.457329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963753, 35.048592, 38.394787>,  <46.227615, 35.330566, 38.290550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963753, 35.048592, 38.394787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568379, 0.241066, -0.786659,
		0.491727, -0.667043, -0.559694,
		-0.659659, -0.704940, 0.260594,
		45.765854, 34.837109, 38.472965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257557, 34.737892, 37.893829>,  <46.227615, 35.330566, 38.290550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257557, 34.737892, 37.893829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889748, 34.831287, 38.020298>,  <45.669064, 34.887325, 38.096180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889748, 34.831287, 38.020298>,  <46.257557, 34.737892, 37.893829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889748, 34.831287, 38.020298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282751, 0.165778, -0.944759,
		-0.272999, -0.958125, -0.086419,
		-0.919523, 0.233484, 0.316168,
		45.613892, 34.901333, 38.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712608, 34.481693, 37.454872>,  <46.257557, 34.737892, 37.893829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712608, 34.481693, 37.454872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560715, 34.813416, 37.618851>,  <45.469578, 35.012447, 37.717239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560715, 34.813416, 37.618851>,  <45.712608, 34.481693, 37.454872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560715, 34.813416, 37.618851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289460, 0.314375, -0.904091,
		-0.878644, -0.461977, 0.120672,
		-0.379733, 0.829304, 0.409948,
		45.446796, 35.062206, 37.741837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234524, 34.023186, 37.244202>,  <45.712608, 34.481693, 37.454872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234524, 34.023186, 37.244202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175442, 34.329288, 36.993584>,  <46.139992, 34.512951, 36.843212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175442, 34.329288, 36.993584>,  <46.234524, 34.023186, 37.244202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175442, 34.329288, 36.993584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958912, -0.044344, -0.280218,
		-0.242223, -0.642194, -0.727265,
		-0.147704, 0.765259, -0.626548,
		46.131130, 34.558865, 36.805618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484383, 33.844662, 36.621864>,  <46.234524, 34.023186, 37.244202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484383, 33.844662, 36.621864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510330, 34.240181, 36.675632>,  <46.525898, 34.477493, 36.707893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510330, 34.240181, 36.675632>,  <46.484383, 33.844662, 36.621864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510330, 34.240181, 36.675632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977821, -0.036101, -0.206306,
		-0.199143, 0.144825, -0.969210,
		0.064868, 0.988798, 0.134424,
		46.529789, 34.536819, 36.715961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822182, 34.140228, 36.054489>,  <46.484383, 33.844662, 36.621864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822182, 34.140228, 36.054489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896484, 34.358250, 36.381516>,  <46.941067, 34.489063, 36.577732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896484, 34.358250, 36.381516>,  <46.822182, 34.140228, 36.054489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896484, 34.358250, 36.381516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974485, 0.004498, -0.224409,
		-0.125992, 0.838392, -0.530306,
		0.185758, 0.545049, 0.817567,
		46.952213, 34.521763, 36.626785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163322, 34.791069, 35.881931>,  <46.822182, 34.140228, 36.054489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163322, 34.791069, 35.881931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253254, 34.733677, 36.267441>,  <47.307213, 34.699242, 36.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253254, 34.733677, 36.267441>,  <47.163322, 34.791069, 35.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253254, 34.733677, 36.267441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931543, 0.321758, -0.169408,
		-0.285797, 0.935888, 0.205994,
		0.224827, -0.143476, 0.963778,
		47.320702, 34.690636, 36.556576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.467907, 35.379631, 36.037464>,  <47.163322, 34.791069, 35.881931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.467907, 35.379631, 36.037464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585056, 35.077454, 36.271908>,  <47.655346, 34.896145, 36.412575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585056, 35.077454, 36.271908>,  <47.467907, 35.379631, 36.037464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585056, 35.077454, 36.271908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947001, 0.144588, -0.286851,
		0.131957, 0.639058, 0.757755,
		0.292876, -0.755447, 0.586109,
		47.672920, 34.850819, 36.447739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.977333, 35.070057, 35.698307>,  <47.467907, 35.379631, 36.037464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.977333, 35.070057, 35.698307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836006, 35.421432, 35.569618>,  <47.751209, 35.632259, 35.492405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836006, 35.421432, 35.569618>,  <47.977333, 35.070057, 35.698307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836006, 35.421432, 35.569618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171172, -0.277397, -0.945384,
		-0.919710, -0.389091, -0.052356,
		-0.353317, 0.878441, -0.321726,
		47.730011, 35.684963, 35.473099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375511, 34.963085, 35.183186>,  <47.977333, 35.070057, 35.698307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375511, 34.963085, 35.183186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621185, 35.268909, 35.104977>,  <47.768589, 35.452404, 35.058052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621185, 35.268909, 35.104977>,  <47.375511, 34.963085, 35.183186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621185, 35.268909, 35.104977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102189, -0.322721, -0.940962,
		-0.782516, 0.557947, -0.276340,
		0.614188, 0.764556, -0.195518,
		47.805443, 35.498276, 35.046322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.797407, 35.196953, 23.204226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154551, 35.329865, 23.082640>,  <31.368835, 35.409611, 23.009687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154551, 35.329865, 23.082640>,  <30.797407, 35.196953, 23.204226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154551, 35.329865, 23.082640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325299, -0.009102, 0.945567,
		0.311429, -0.943136, -0.116218,
		0.892856, 0.332282, -0.303967,
		31.422407, 35.429550, 22.991449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239548, 34.696487, 23.403437>,  <30.797407, 35.196953, 23.204226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239548, 34.696487, 23.403437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455765, 35.028294, 23.347269>,  <31.585495, 35.227379, 23.313568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455765, 35.028294, 23.347269>,  <31.239548, 34.696487, 23.403437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455765, 35.028294, 23.347269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278694, -0.019067, 0.960191,
		0.793816, -0.558157, -0.241488,
		0.540542, 0.829516, -0.140419,
		31.617928, 35.277149, 23.305143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898352, 34.535522, 23.646944>,  <31.239548, 34.696487, 23.403437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898352, 34.535522, 23.646944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842402, 34.931263, 23.663025>,  <31.808830, 35.168709, 23.672672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842402, 34.931263, 23.663025>,  <31.898352, 34.535522, 23.646944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842402, 34.931263, 23.663025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262529, -0.002092, 0.964922,
		0.954732, 0.145524, -0.259441,
		-0.139876, 0.989352, 0.040201,
		31.800438, 35.228069, 23.675085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571175, 34.830036, 23.930786>,  <31.898352, 34.535522, 23.646944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571175, 34.830036, 23.930786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317493, 35.135796, 23.977224>,  <32.165283, 35.319252, 24.005087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317493, 35.135796, 23.977224>,  <32.571175, 34.830036, 23.930786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317493, 35.135796, 23.977224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237504, 0.049713, 0.970114,
		0.735785, 0.642821, -0.213077,
		-0.634202, 0.764402, 0.116094,
		32.127232, 35.365116, 24.012053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879700, 35.203209, 24.393604>,  <32.571175, 34.830036, 23.930786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879700, 35.203209, 24.393604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.514114, 35.361568, 24.429224>,  <32.294762, 35.456585, 24.450596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.514114, 35.361568, 24.429224>,  <32.879700, 35.203209, 24.393604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514114, 35.361568, 24.429224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134187, 0.087764, 0.987062,
		0.382964, 0.914089, -0.133338,
		-0.913965, 0.395901, 0.089049,
		32.239925, 35.480339, 24.455938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996574, 35.757225, 24.848965>,  <32.879700, 35.203209, 24.393604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996574, 35.757225, 24.848965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602547, 35.689617, 24.862070>,  <32.366131, 35.649052, 24.869934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602547, 35.689617, 24.862070>,  <32.996574, 35.757225, 24.848965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602547, 35.689617, 24.862070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005261, 0.160660, 0.986996,
		-0.172087, 0.972430, -0.157372,
		-0.985068, -0.169021, 0.032763,
		32.307026, 35.638912, 24.871899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796059, 36.245243, 25.380262>,  <32.996574, 35.757225, 24.848965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796059, 36.245243, 25.380262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498554, 35.978947, 25.356249>,  <32.320049, 35.819168, 25.341841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498554, 35.978947, 25.356249>,  <32.796059, 36.245243, 25.380262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498554, 35.978947, 25.356249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142794, 0.070502, 0.987238,
		-0.653013, 0.742844, -0.147500,
		-0.743763, -0.665742, -0.060035,
		32.275425, 35.779224, 25.338238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308342, 36.436405, 25.879938>,  <32.796059, 36.245243, 25.380262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308342, 36.436405, 25.879938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.182102, 36.059189, 25.837833>,  <32.106358, 35.832859, 25.812571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.182102, 36.059189, 25.837833>,  <32.308342, 36.436405, 25.879938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182102, 36.059189, 25.837833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040874, -0.124339, 0.991398,
		-0.948012, 0.308581, 0.077787,
		-0.315598, -0.943036, -0.105262,
		32.087421, 35.776279, 25.806255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707645, 36.347023, 26.347622>,  <32.308342, 36.436405, 25.879938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707645, 36.347023, 26.347622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.883299, 35.995739, 26.271816>,  <31.988691, 35.784969, 26.226334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.883299, 35.995739, 26.271816>,  <31.707645, 36.347023, 26.347622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883299, 35.995739, 26.271816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045005, -0.232179, 0.971631,
		-0.897295, -0.418145, -0.141481,
		0.439132, -0.878207, -0.189515,
		32.015038, 35.732277, 26.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301121, 35.837429, 26.642080>,  <31.707645, 36.347023, 26.347622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301121, 35.837429, 26.642080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639235, 35.627094, 26.604162>,  <31.842102, 35.500893, 26.581411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639235, 35.627094, 26.604162>,  <31.301121, 35.837429, 26.642080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639235, 35.627094, 26.604162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007052, -0.188382, 0.982071,
		-0.534271, -0.829460, -0.162945,
		0.845284, -0.525841, -0.094797,
		31.892820, 35.469341, 26.575724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294489, 35.092422, 26.880817>,  <31.301121, 35.837429, 26.642080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294489, 35.092422, 26.880817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.671127, 35.220009, 26.924011>,  <31.897110, 35.296562, 26.949926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.671127, 35.220009, 26.924011>,  <31.294489, 35.092422, 26.880817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671127, 35.220009, 26.924011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001046, -0.323435, 0.946250,
		0.336746, -0.890871, -0.304878,
		0.941595, 0.318965, 0.107984,
		31.953606, 35.315697, 26.956406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630024, 34.565964, 27.069662>,  <31.294489, 35.092422, 26.880817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630024, 34.565964, 27.069662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.877501, 34.856091, 27.190416>,  <32.025986, 35.030167, 27.262869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.877501, 34.856091, 27.190416>,  <31.630024, 34.565964, 27.069662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877501, 34.856091, 27.190416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059278, -0.340065, 0.938532,
		0.783393, -0.598558, -0.167401,
		0.618693, 0.725316, 0.301886,
		32.063110, 35.073685, 27.280983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942537, 34.292030, 27.712013>,  <31.630024, 34.565964, 27.069662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942537, 34.292030, 27.712013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066208, 34.672424, 27.709604>,  <32.140411, 34.900661, 27.708158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066208, 34.672424, 27.709604>,  <31.942537, 34.292030, 27.712013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066208, 34.672424, 27.709604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144618, -0.040757, 0.988648,
		0.939944, -0.306539, -0.150130,
		0.309178, 0.950985, -0.006022,
		32.158962, 34.957722, 27.707798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626732, 34.296783, 28.049969>,  <31.942537, 34.292030, 27.712013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626732, 34.296783, 28.049969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.476913, 34.665169, 28.092949>,  <32.387024, 34.886200, 28.118736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.476913, 34.665169, 28.092949>,  <32.626732, 34.296783, 28.049969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476913, 34.665169, 28.092949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272006, -0.001651, 0.962294,
		0.886413, 0.389649, -0.249889,
		-0.374545, 0.920962, 0.107450,
		32.364552, 34.941456, 28.125183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111435, 34.717369, 28.488224>,  <32.626732, 34.296783, 28.049969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111435, 34.717369, 28.488224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.768639, 34.923317, 28.496906>,  <32.562962, 35.046886, 28.502115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.768639, 34.923317, 28.496906>,  <33.111435, 34.717369, 28.488224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768639, 34.923317, 28.496906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020210, -0.008512, 0.999760,
		0.514934, 0.857224, -0.003111,
		-0.856992, 0.514873, 0.021707,
		32.511539, 35.077778, 28.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225307, 35.130882, 29.034735>,  <33.111435, 34.717369, 28.488224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225307, 35.130882, 29.034735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.828144, 35.109703, 28.992147>,  <32.589848, 35.096996, 28.966595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.828144, 35.109703, 28.992147>,  <33.225307, 35.130882, 29.034735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828144, 35.109703, 28.992147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078112, -0.384650, 0.919751,
		-0.089654, 0.921542, 0.377785,
		-0.992905, -0.052950, -0.106469,
		32.530273, 35.093819, 28.960207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834049, 35.463451, 29.607203>,  <33.225307, 35.130882, 29.034735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834049, 35.463451, 29.607203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587559, 35.176697, 29.476759>,  <32.439667, 35.004642, 29.398493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587559, 35.176697, 29.476759>,  <32.834049, 35.463451, 29.607203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587559, 35.176697, 29.476759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047383, -0.379569, 0.923949,
		-0.786146, 0.584810, 0.199931,
		-0.616222, -0.716885, -0.326107,
		32.402691, 34.961632, 29.378927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279499, 35.457111, 30.078222>,  <32.834049, 35.463451, 29.607203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279499, 35.457111, 30.078222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.225956, 35.104805, 29.896528>,  <32.193829, 34.893421, 29.787512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.225956, 35.104805, 29.896528>,  <32.279499, 35.457111, 30.078222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225956, 35.104805, 29.896528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048672, -0.451965, 0.890707,
		-0.989805, 0.141337, 0.017631,
		-0.133859, -0.880767, -0.454237,
		32.185799, 34.840576, 29.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653202, 35.166561, 30.430403>,  <32.279499, 35.457111, 30.078222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653202, 35.166561, 30.430403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855478, 34.867992, 30.257364>,  <31.976843, 34.688850, 30.153542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855478, 34.867992, 30.257364>,  <31.653202, 35.166561, 30.430403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855478, 34.867992, 30.257364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045807, -0.523959, 0.850510,
		-0.861499, -0.410278, -0.299152,
		0.505689, -0.746417, -0.432597,
		32.007187, 34.644066, 30.127584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374781, 34.569523, 30.616123>,  <31.653202, 35.166561, 30.430403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374781, 34.569523, 30.616123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.733599, 34.432652, 30.504246>,  <31.948889, 34.350529, 30.437119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.733599, 34.432652, 30.504246>,  <31.374781, 34.569523, 30.616123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733599, 34.432652, 30.504246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098629, -0.461910, 0.881426,
		-0.430794, -0.818264, -0.380606,
		0.897045, -0.342174, -0.279693,
		32.002712, 34.329998, 30.420338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395206, 33.861290, 30.773869>,  <31.374781, 34.569523, 30.616123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395206, 33.861290, 30.773869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.773718, 33.987923, 30.747549>,  <32.000824, 34.063904, 30.731758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.773718, 33.987923, 30.747549>,  <31.395206, 33.861290, 30.773869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773718, 33.987923, 30.747549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202200, -0.420569, 0.884441,
		0.252325, -0.850234, -0.461989,
		0.946281, 0.316581, -0.065797,
		32.057602, 34.082897, 30.727810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988655, 33.594303, 31.036100>,  <31.395206, 33.861290, 30.773869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988655, 33.594303, 31.036100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848257, 33.252029, 31.188211>,  <31.764019, 33.046665, 31.279478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848257, 33.252029, 31.188211>,  <31.988655, 33.594303, 31.036100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848257, 33.252029, 31.188211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539897, -0.146876, -0.828818,
		0.765059, -0.496218, -0.410428,
		-0.350993, -0.855684, 0.380275,
		31.742960, 32.995323, 31.302294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117710, 33.061813, 30.585501>,  <31.988655, 33.594303, 31.036100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117710, 33.061813, 30.585501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.811749, 32.920322, 30.800831>,  <31.628170, 32.835426, 30.930029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.811749, 32.920322, 30.800831>,  <32.117710, 33.061813, 30.585501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811749, 32.920322, 30.800831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502685, -0.194764, -0.842244,
		0.402770, -0.914847, -0.028837,
		-0.764907, -0.353727, 0.538325,
		31.582275, 32.814205, 30.962328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003635, 32.509937, 30.220192>,  <32.117710, 33.061813, 30.585501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003635, 32.509937, 30.220192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679670, 32.602757, 30.435671>,  <31.485291, 32.658447, 30.564959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679670, 32.602757, 30.435671>,  <32.003635, 32.509937, 30.220192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679670, 32.602757, 30.435671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574649, -0.129857, -0.808032,
		-0.117545, -0.963998, 0.238517,
		-0.809914, 0.232044, 0.538697,
		31.436695, 32.672371, 30.597281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497202, 31.943293, 30.066645>,  <32.003635, 32.509937, 30.220192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497202, 31.943293, 30.066645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304100, 32.266579, 30.201542>,  <31.188238, 32.460552, 30.282480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304100, 32.266579, 30.201542>,  <31.497202, 31.943293, 30.066645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304100, 32.266579, 30.201542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546826, 0.022604, -0.836941,
		-0.684052, -0.588452, 0.431042,
		-0.482756, 0.808216, 0.337243,
		31.159273, 32.509045, 30.302715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786167, 31.718973, 30.060614>,  <31.497202, 31.943293, 30.066645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786167, 31.718973, 30.060614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.820004, 32.115643, 30.021770>,  <30.840305, 32.353645, 29.998465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.820004, 32.115643, 30.021770>,  <30.786167, 31.718973, 30.060614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820004, 32.115643, 30.021770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549471, -0.034871, -0.834785,
		-0.831219, 0.123974, 0.541946,
		0.084593, 0.991672, -0.097106,
		30.845381, 32.413143, 29.992640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126987, 31.925241, 29.876938>,  <30.786167, 31.718973, 30.060614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126987, 31.925241, 29.876938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.334270, 32.261204, 29.812414>,  <30.458641, 32.462780, 29.773699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.334270, 32.261204, 29.812414>,  <30.126987, 31.925241, 29.876938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334270, 32.261204, 29.812414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583789, 0.209537, -0.784401,
		-0.625021, 0.500654, 0.598911,
		0.518207, 0.839905, -0.161311,
		30.489733, 32.513176, 29.764021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590393, 32.315216, 29.460342>,  <30.126987, 31.925241, 29.876938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590393, 32.315216, 29.460342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923885, 32.536079, 29.461817>,  <30.123980, 32.668598, 29.462702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923885, 32.536079, 29.461817>,  <29.590393, 32.315216, 29.460342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923885, 32.536079, 29.461817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358386, 0.546193, -0.757121,
		-0.420067, 0.629913, 0.653264,
		0.833729, 0.552162, 0.003685,
		30.174004, 32.701729, 29.462923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351959, 33.013248, 29.483231>,  <29.590393, 32.315216, 29.460342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351959, 33.013248, 29.483231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.703356, 32.962608, 29.298960>,  <29.914194, 32.932224, 29.188398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.703356, 32.962608, 29.298960>,  <29.351959, 33.013248, 29.483231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703356, 32.962608, 29.298960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356232, 0.468948, -0.808200,
		0.318354, 0.874105, 0.366867,
		0.878493, -0.126604, -0.460675,
		29.966904, 32.924625, 29.160757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673571, 33.738834, 29.314678>,  <29.351959, 33.013248, 29.483231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673571, 33.738834, 29.314678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848017, 33.475533, 29.069241>,  <29.952684, 33.317551, 28.921978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848017, 33.475533, 29.069241>,  <29.673571, 33.738834, 29.314678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848017, 33.475533, 29.069241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166598, 0.611010, -0.773894,
		0.884334, 0.439732, 0.156808,
		0.436117, -0.658257, -0.613596,
		29.978851, 33.278057, 28.885162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829779, 34.212826, 28.895939>,  <29.673571, 33.738834, 29.314678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829779, 34.212826, 28.895939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.878029, 33.868019, 28.699013>,  <29.906979, 33.661133, 28.580858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.878029, 33.868019, 28.699013>,  <29.829779, 34.212826, 28.895939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878029, 33.868019, 28.699013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116396, 0.480232, -0.869385,
		0.985850, 0.162174, -0.042407,
		0.120627, -0.862019, -0.492313,
		29.914217, 33.609413, 28.551319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196749, 34.381329, 28.397274>,  <29.829779, 34.212826, 28.895939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196749, 34.381329, 28.397274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051115, 34.048664, 28.229565>,  <29.963736, 33.849068, 28.128939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051115, 34.048664, 28.229565>,  <30.196749, 34.381329, 28.397274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051115, 34.048664, 28.229565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069520, 0.424645, -0.902687,
		0.928769, -0.357800, -0.096789,
		-0.364082, -0.831658, -0.419272,
		29.941891, 33.799168, 28.103783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476351, 34.362629, 27.804073>,  <30.196749, 34.381329, 28.397274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476351, 34.362629, 27.804073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154835, 34.127609, 27.766748>,  <29.961926, 33.986599, 27.744352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154835, 34.127609, 27.766748>,  <30.476351, 34.362629, 27.804073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154835, 34.127609, 27.766748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065154, 0.242848, -0.967874,
		0.591335, -0.771887, -0.233480,
		-0.803790, -0.587550, -0.093313,
		29.913698, 33.951344, 27.738754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504421, 33.951920, 27.078655>,  <30.476351, 34.362629, 27.804073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504421, 33.951920, 27.078655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.119205, 33.924252, 27.182789>,  <29.888077, 33.907650, 27.245270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.119205, 33.924252, 27.182789>,  <30.504421, 33.951920, 27.078655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119205, 33.924252, 27.182789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261340, 0.005767, -0.965230,
		0.065269, -0.997588, -0.023632,
		-0.963038, -0.069176, 0.260333,
		29.830294, 33.903500, 27.260889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192589, 33.436726, 26.642878>,  <30.504421, 33.951920, 27.078655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192589, 33.436726, 26.642878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900103, 33.686714, 26.752222>,  <29.724609, 33.836708, 26.817829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900103, 33.686714, 26.752222>,  <30.192589, 33.436726, 26.642878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900103, 33.686714, 26.752222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195182, 0.192292, -0.961732,
		-0.653624, -0.756590, -0.018624,
		-0.731218, 0.624976, 0.273360,
		29.680737, 33.874207, 26.834230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703045, 33.246700, 26.218683>,  <30.192589, 33.436726, 26.642878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703045, 33.246700, 26.218683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.531975, 33.589352, 26.334122>,  <29.429333, 33.794941, 26.403385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.531975, 33.589352, 26.334122>,  <29.703045, 33.246700, 26.218683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531975, 33.589352, 26.334122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276568, 0.179951, -0.943996,
		-0.860584, -0.483538, 0.159955,
		-0.427673, 0.856627, 0.288594,
		29.403673, 33.846340, 26.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072777, 33.134411, 25.872601>,  <29.703045, 33.246700, 26.218683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072777, 33.134411, 25.872601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.143501, 33.515572, 25.971159>,  <29.185936, 33.744270, 26.030294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.143501, 33.515572, 25.971159>,  <29.072777, 33.134411, 25.872601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143501, 33.515572, 25.971159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242729, 0.284824, -0.927339,
		-0.953845, 0.104155, 0.281657,
		0.176810, 0.952905, 0.246396,
		29.196545, 33.801441, 26.045078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418869, 33.561295, 25.781694>,  <29.072777, 33.134411, 25.872601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418869, 33.561295, 25.781694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.737883, 33.798237, 25.735994>,  <28.929291, 33.940403, 25.708574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.737883, 33.798237, 25.735994>,  <28.418869, 33.561295, 25.781694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737883, 33.798237, 25.735994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315208, 0.247690, -0.916130,
		-0.514374, 0.766659, 0.384256,
		0.797535, 0.592354, -0.114252,
		28.977142, 33.975945, 25.701719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223112, 34.075478, 25.178558>,  <28.418869, 33.561295, 25.781694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223112, 34.075478, 25.178558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616957, 34.100056, 25.243999>,  <28.853264, 34.114803, 25.283264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616957, 34.100056, 25.243999>,  <28.223112, 34.075478, 25.178558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616957, 34.100056, 25.243999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156120, 0.111418, -0.981434,
		-0.078535, 0.991872, 0.100110,
		0.984611, 0.061448, 0.163602,
		28.912340, 34.118488, 25.293079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405296, 34.571255, 24.758131>,  <28.223112, 34.075478, 25.178558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405296, 34.571255, 24.758131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.757429, 34.394665, 24.827545>,  <28.968710, 34.288712, 24.869194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.757429, 34.394665, 24.827545>,  <28.405296, 34.571255, 24.758131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757429, 34.394665, 24.827545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270096, 0.165772, -0.948455,
		0.389951, 0.881828, 0.265175,
		0.880333, -0.441474, 0.173535,
		29.021528, 34.262222, 24.879606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.055731, 35.034630, 24.408264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202682, 34.668262, 24.472916>,  <29.290854, 34.448441, 24.511705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202682, 34.668262, 24.472916>,  <29.055731, 35.034630, 24.408264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202682, 34.668262, 24.472916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306068, -0.045042, -0.950944,
		0.878268, 0.398827, 0.263786,
		0.367380, -0.915919, 0.161627,
		29.312897, 34.393486, 24.521404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706223, 34.988850, 24.180677>,  <29.055731, 35.034630, 24.408264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706223, 34.988850, 24.180677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616632, 34.599033, 24.176401>,  <29.562878, 34.365143, 24.173836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616632, 34.599033, 24.176401>,  <29.706223, 34.988850, 24.180677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616632, 34.599033, 24.176401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358978, -0.072297, -0.930542,
		0.906074, -0.212256, 0.366030,
		-0.223976, -0.974536, -0.010688,
		29.549440, 34.306671, 24.173195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242811, 34.575092, 23.836580>,  <29.706223, 34.988850, 24.180677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242811, 34.575092, 23.836580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.930136, 34.325752, 23.828676>,  <29.742531, 34.176147, 23.823935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.930136, 34.325752, 23.828676>,  <30.242811, 34.575092, 23.836580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930136, 34.325752, 23.828676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253481, -0.288599, -0.923286,
		0.569832, -0.726732, 0.383604,
		-0.781690, -0.623354, -0.019760,
		29.695629, 34.138744, 23.822748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483694, 34.036808, 23.606834>,  <30.242811, 34.575092, 23.836580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483694, 34.036808, 23.606834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094612, 34.004684, 23.519749>,  <29.861164, 33.985409, 23.467497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094612, 34.004684, 23.519749>,  <30.483694, 34.036808, 23.606834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094612, 34.004684, 23.519749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231906, -0.302874, -0.924385,
		0.008301, -0.949641, 0.313232,
		-0.972703, -0.080314, -0.217713,
		29.802801, 33.980591, 23.454435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395510, 33.531105, 23.160322>,  <30.483694, 34.036808, 23.606834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395510, 33.531105, 23.160322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062330, 33.741100, 23.090370>,  <29.862423, 33.867096, 23.048399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062330, 33.741100, 23.090370>,  <30.395510, 33.531105, 23.160322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062330, 33.741100, 23.090370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055460, -0.235244, -0.970353,
		-0.550565, -0.817952, 0.166830,
		-0.832948, 0.524990, -0.174881,
		29.812447, 33.898598, 23.037907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917669, 33.064716, 22.874626>,  <30.395510, 33.531105, 23.160322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917669, 33.064716, 22.874626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788744, 33.427956, 22.767693>,  <29.711390, 33.645901, 22.703533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788744, 33.427956, 22.767693>,  <29.917669, 33.064716, 22.874626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788744, 33.427956, 22.767693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128988, -0.321900, -0.937946,
		-0.937805, -0.267828, 0.220886,
		-0.322312, 0.908102, -0.267333,
		29.692051, 33.700386, 22.687492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342590, 32.906029, 22.381996>,  <29.917669, 33.064716, 22.874626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342590, 32.906029, 22.381996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432817, 33.289803, 22.314352>,  <29.486954, 33.520069, 22.273766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432817, 33.289803, 22.314352>,  <29.342590, 32.906029, 22.381996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432817, 33.289803, 22.314352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270555, -0.105064, -0.956954,
		-0.935906, 0.261610, 0.235882,
		0.225566, 0.959439, -0.169110,
		29.500486, 33.577633, 22.263618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753359, 33.183937, 22.154041>,  <29.342590, 32.906029, 22.381996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753359, 33.183937, 22.154041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041693, 33.432835, 22.031921>,  <29.214693, 33.582172, 21.958649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041693, 33.432835, 22.031921>,  <28.753359, 33.183937, 22.154041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041693, 33.432835, 22.031921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337217, -0.069979, -0.938823,
		-0.605543, 0.779688, 0.159388,
		0.720835, 0.622245, -0.305299,
		29.257944, 33.619507, 21.940332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410412, 33.627491, 21.757166>,  <28.753359, 33.183937, 22.154041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410412, 33.627491, 21.757166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790972, 33.687664, 21.649679>,  <29.019308, 33.723770, 21.585188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790972, 33.687664, 21.649679>,  <28.410412, 33.627491, 21.757166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790972, 33.687664, 21.649679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299768, 0.252470, -0.919999,
		-0.070558, 0.955839, 0.285296,
		0.951399, 0.150436, -0.268716,
		29.076391, 33.732796, 21.569065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338463, 34.156071, 21.417044>,  <28.410412, 33.627491, 21.757166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338463, 34.156071, 21.417044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686106, 33.997250, 21.299059>,  <28.894691, 33.901958, 21.228268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686106, 33.997250, 21.299059>,  <28.338463, 34.156071, 21.417044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686106, 33.997250, 21.299059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199471, 0.264345, -0.943575,
		0.452620, 0.878904, 0.150544,
		0.869107, -0.397052, -0.294964,
		28.946838, 33.878136, 21.210569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555256, 34.708340, 20.910086>,  <28.338463, 34.156071, 21.417044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555256, 34.708340, 20.910086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742666, 34.364265, 20.829533>,  <28.855112, 34.157822, 20.781200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742666, 34.364265, 20.829533>,  <28.555256, 34.708340, 20.910086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742666, 34.364265, 20.829533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246396, 0.091671, -0.964824,
		0.848393, 0.501667, -0.168997,
		0.468528, -0.860190, -0.201382,
		28.883224, 34.106209, 20.769117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011187, 34.919056, 20.367304>,  <28.555256, 34.708340, 20.910086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011187, 34.919056, 20.367304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950012, 34.523808, 20.361263>,  <28.913307, 34.286659, 20.357639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950012, 34.523808, 20.361263>,  <29.011187, 34.919056, 20.367304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950012, 34.523808, 20.361263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166763, 0.040869, -0.985150,
		0.974064, -0.148147, -0.171032,
		-0.152936, -0.988121, -0.015103,
		28.904131, 34.227371, 20.356731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555969, 34.621727, 19.938013>,  <29.011187, 34.919056, 20.367304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555969, 34.621727, 19.938013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228569, 34.391930, 19.939562>,  <29.032129, 34.254051, 19.940491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228569, 34.391930, 19.939562>,  <29.555969, 34.621727, 19.938013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228569, 34.391930, 19.939562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093378, -0.139683, -0.985784,
		0.566864, -0.806504, 0.167976,
		-0.818502, -0.574491, 0.003872,
		28.983019, 34.219582, 19.940723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686550, 34.223915, 19.317066>,  <29.555969, 34.621727, 19.938013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686550, 34.223915, 19.317066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305548, 34.141712, 19.406954>,  <29.076946, 34.092392, 19.460886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305548, 34.141712, 19.406954>,  <29.686550, 34.223915, 19.317066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305548, 34.141712, 19.406954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189935, -0.175879, -0.965915,
		0.238026, -0.962722, 0.128492,
		-0.952506, -0.205507, 0.224718,
		29.019796, 34.080059, 19.474369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444160, 33.710926, 18.848112>,  <29.686550, 34.223915, 19.317066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444160, 33.710926, 18.848112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113329, 33.883259, 18.992516>,  <28.914831, 33.986660, 19.079157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113329, 33.883259, 18.992516>,  <29.444160, 33.710926, 18.848112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113329, 33.883259, 18.992516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406681, -0.015313, -0.913442,
		-0.388012, -0.902302, 0.187876,
		-0.827078, 0.430832, 0.361007,
		28.865206, 34.012508, 19.100819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943956, 33.500439, 18.363182>,  <29.444160, 33.710926, 18.848112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943956, 33.500439, 18.363182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760920, 33.799911, 18.555054>,  <28.651098, 33.979595, 18.670176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760920, 33.799911, 18.555054>,  <28.943956, 33.500439, 18.363182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760920, 33.799911, 18.555054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511411, 0.219704, -0.830776,
		-0.727371, -0.625469, 0.282347,
		-0.457591, 0.748678, 0.479678,
		28.623642, 34.024513, 18.698957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219790, 33.536949, 18.189449>,  <28.943956, 33.500439, 18.363182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219790, 33.536949, 18.189449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278913, 33.913540, 18.310625>,  <28.314388, 34.139496, 18.383329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278913, 33.913540, 18.310625>,  <28.219790, 33.536949, 18.189449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278913, 33.913540, 18.310625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504317, 0.335236, -0.795790,
		-0.850774, -0.035152, 0.524355,
		0.147809, 0.941478, 0.302938,
		28.323256, 34.195984, 18.401506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675896, 33.837147, 18.107327>,  <28.219790, 33.536949, 18.189449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675896, 33.837147, 18.107327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931541, 34.144737, 18.113165>,  <28.084929, 34.329292, 18.116667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931541, 34.144737, 18.113165>,  <27.675896, 33.837147, 18.107327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931541, 34.144737, 18.113165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149887, 0.143141, -0.978287,
		-0.754367, 0.623047, 0.206743,
		0.639112, 0.768975, 0.014594,
		28.123276, 34.375431, 18.117542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367872, 34.372437, 17.611128>,  <27.675896, 33.837147, 18.107327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367872, 34.372437, 17.611128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.756947, 34.447384, 17.665941>,  <27.990391, 34.492352, 17.698830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.756947, 34.447384, 17.665941>,  <27.367872, 34.372437, 17.611128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756947, 34.447384, 17.665941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118776, 0.105459, -0.987305,
		-0.199440, 0.976612, 0.080323,
		0.972685, 0.187368, 0.137031,
		28.048752, 34.503593, 17.707050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434866, 34.914997, 17.211805>,  <27.367872, 34.372437, 17.611128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434866, 34.914997, 17.211805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807707, 34.775558, 17.251129>,  <28.031412, 34.691895, 17.274723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807707, 34.775558, 17.251129>,  <27.434866, 34.914997, 17.211805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807707, 34.775558, 17.251129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075824, -0.077609, -0.994096,
		0.354165, 0.934055, -0.045908,
		0.932104, -0.348593, 0.098310,
		28.087337, 34.670979, 17.280622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673166, 35.061203, 16.581949>,  <27.434866, 34.914997, 17.211805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673166, 35.061203, 16.581949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.959543, 34.813301, 16.710529>,  <28.131369, 34.664558, 16.787678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.959543, 34.813301, 16.710529>,  <27.673166, 35.061203, 16.581949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959543, 34.813301, 16.710529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250397, -0.201851, -0.946867,
		0.651712, 0.758392, 0.010672,
		0.715942, -0.619756, 0.321448,
		28.174326, 34.627373, 16.806963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391430, 35.288921, 16.303055>,  <27.673166, 35.061203, 16.581949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391430, 35.288921, 16.303055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378130, 34.898209, 16.387712>,  <28.370150, 34.663780, 16.438507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378130, 34.898209, 16.387712>,  <28.391430, 35.288921, 16.303055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378130, 34.898209, 16.387712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231138, -0.213535, -0.949199,
		0.972353, 0.017359, 0.232872,
		-0.033249, -0.976781, 0.211643,
		28.368155, 34.605175, 16.451206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010765, 34.901176, 16.103823>,  <28.391430, 35.288921, 16.303055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010765, 34.901176, 16.103823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694778, 34.657253, 16.078245>,  <28.505186, 34.510899, 16.062899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694778, 34.657253, 16.078245>,  <29.010765, 34.901176, 16.103823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694778, 34.657253, 16.078245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165709, -0.111921, -0.979803,
		0.590331, -0.784610, 0.189464,
		-0.789968, -0.609804, -0.063946,
		28.457788, 34.474312, 16.059061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507952, 34.459923, 15.761911>,  <29.010765, 34.901176, 16.103823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507952, 34.459923, 15.761911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793083, 34.202896, 15.649491>,  <29.964163, 34.048679, 15.582040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793083, 34.202896, 15.649491>,  <29.507952, 34.459923, 15.761911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793083, 34.202896, 15.649491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650498, 0.455956, 0.607417,
		-0.262157, -0.615807, 0.743004,
		0.712829, -0.642562, -0.281049,
		30.006931, 34.010128, 15.565177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946167, 34.072159, 16.242533>,  <29.507952, 34.459923, 15.761911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946167, 34.072159, 16.242533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187834, 34.105129, 15.925500>,  <30.332834, 34.124912, 15.735280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187834, 34.105129, 15.925500>,  <29.946167, 34.072159, 16.242533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187834, 34.105129, 15.925500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650470, 0.523522, 0.550285,
		0.460292, -0.848016, 0.262679,
		0.604168, 0.082427, -0.792582,
		30.369085, 34.129856, 15.687725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615786, 33.749260, 16.403639>,  <29.946167, 34.072159, 16.242533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615786, 33.749260, 16.403639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693085, 34.018837, 16.118414>,  <30.739464, 34.180584, 15.947279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693085, 34.018837, 16.118414>,  <30.615786, 33.749260, 16.403639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693085, 34.018837, 16.118414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715103, 0.400853, 0.572664,
		0.671775, -0.620579, -0.404474,
		0.193248, 0.673943, -0.713061,
		30.751059, 34.221020, 15.904495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319080, 33.752941, 16.337410>,  <30.615786, 33.749260, 16.403639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319080, 33.752941, 16.337410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154387, 34.098522, 16.221439>,  <31.055571, 34.305870, 16.151857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154387, 34.098522, 16.221439>,  <31.319080, 33.752941, 16.337410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154387, 34.098522, 16.221439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630718, 0.499791, 0.593636,
		0.657777, 0.061558, -0.750693,
		-0.411733, 0.863956, -0.289926,
		31.030867, 34.357708, 16.134462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890526, 34.154282, 16.189159>,  <31.319080, 33.752941, 16.337410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890526, 34.154282, 16.189159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576572, 34.398407, 16.232018>,  <31.388201, 34.544880, 16.257732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576572, 34.398407, 16.232018>,  <31.890526, 34.154282, 16.189159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576572, 34.398407, 16.232018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502621, 0.525934, 0.686123,
		0.362397, 0.592380, -0.719552,
		-0.784882, 0.610311, 0.107146,
		31.341108, 34.581501, 16.264162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178413, 34.770813, 16.293068>,  <31.890526, 34.154282, 16.189159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178413, 34.770813, 16.293068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816196, 34.831108, 16.451694>,  <31.598866, 34.867283, 16.546871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816196, 34.831108, 16.451694>,  <32.178413, 34.770813, 16.293068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816196, 34.831108, 16.451694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418332, 0.472822, 0.775524,
		-0.070607, 0.868170, -0.491219,
		-0.905546, 0.150735, 0.396568,
		31.544533, 34.876328, 16.570665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232712, 35.412750, 16.532581>,  <32.178413, 34.770813, 16.293068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232712, 35.412750, 16.532581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915871, 35.291584, 16.744547>,  <31.725765, 35.218884, 16.871727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915871, 35.291584, 16.744547>,  <32.232712, 35.412750, 16.532581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915871, 35.291584, 16.744547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352660, 0.481479, 0.802377,
		-0.498194, 0.822448, -0.274558,
		-0.792107, -0.302914, 0.529914,
		31.678238, 35.200710, 16.903521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085125, 35.958008, 16.930840>,  <32.232712, 35.412750, 16.532581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085125, 35.958008, 16.930840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919718, 35.643711, 17.114843>,  <31.820473, 35.455132, 17.225245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919718, 35.643711, 17.114843>,  <32.085125, 35.958008, 16.930840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919718, 35.643711, 17.114843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336400, 0.337631, 0.879113,
		-0.846072, 0.518275, 0.124708,
		-0.413517, -0.785745, 0.460008,
		31.795662, 35.407986, 17.252846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846472, 36.175602, 17.664822>,  <32.085125, 35.958008, 16.930840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846472, 36.175602, 17.664822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867220, 35.778137, 17.704723>,  <31.879669, 35.539658, 17.728664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867220, 35.778137, 17.704723>,  <31.846472, 36.175602, 17.664822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867220, 35.778137, 17.704723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322477, 0.111202, 0.940023,
		-0.945155, -0.016590, 0.326200,
		0.051869, -0.993659, 0.099753,
		31.882780, 35.480038, 17.734650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454144, 36.170300, 18.283495>,  <31.846472, 36.175602, 17.664822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454144, 36.170300, 18.283495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648413, 35.824108, 18.234379>,  <31.764975, 35.616394, 18.204908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648413, 35.824108, 18.234379>,  <31.454144, 36.170300, 18.283495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648413, 35.824108, 18.234379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059616, -0.172937, 0.983127,
		-0.872106, -0.470157, -0.135587,
		0.485672, -0.865474, -0.122791,
		31.794115, 35.564465, 18.197542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048485, 35.642570, 18.574896>,  <31.454144, 36.170300, 18.283495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048485, 35.642570, 18.574896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420040, 35.494576, 18.568256>,  <31.642973, 35.405777, 18.564272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420040, 35.494576, 18.568256>,  <31.048485, 35.642570, 18.574896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420040, 35.494576, 18.568256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122601, -0.349478, 0.928888,
		-0.349478, -0.860799, -0.369987,
		-0.928888, 0.369987, 0.016600,
		31.698708, 35.383579, 18.563276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006176, 34.876896, 18.845312>,  <31.048485, 35.642570, 18.574896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006176, 34.876896, 18.845312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367315, 35.044239, 18.885000>,  <31.583998, 35.144646, 18.908813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367315, 35.044239, 18.885000>,  <31.006176, 34.876896, 18.845312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367315, 35.044239, 18.885000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007594, -0.246244, 0.969178,
		0.429896, -0.874266, -0.225498,
		0.902846, 0.418358, 0.099220,
		31.638170, 35.169746, 18.914766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533468, 34.325096, 19.046928>,  <31.006176, 34.876896, 18.845312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533468, 34.325096, 19.046928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664680, 34.688797, 19.149424>,  <31.743408, 34.907017, 19.210920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664680, 34.688797, 19.149424>,  <31.533468, 34.325096, 19.046928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664680, 34.688797, 19.149424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047464, -0.286768, 0.956824,
		0.943474, -0.301706, -0.137225,
		0.328031, 0.909252, 0.256238,
		31.763090, 34.961571, 19.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999166, 34.176632, 19.577604>,  <31.533468, 34.325096, 19.046928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999166, 34.176632, 19.577604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931332, 34.567741, 19.626905>,  <31.890631, 34.802406, 19.656487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931332, 34.567741, 19.626905>,  <31.999166, 34.176632, 19.577604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931332, 34.567741, 19.626905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086176, -0.139300, 0.986493,
		0.981740, 0.156674, 0.107884,
		-0.169586, 0.977778, 0.123255,
		31.880455, 34.861076, 19.663881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346691, 34.397057, 20.254400>,  <31.999166, 34.176632, 19.577604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346691, 34.397057, 20.254400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104057, 34.705933, 20.178741>,  <31.958477, 34.891258, 20.133347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104057, 34.705933, 20.178741>,  <32.346691, 34.397057, 20.254400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104057, 34.705933, 20.178741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175988, 0.101592, 0.979136,
		0.775293, 0.627219, 0.074272,
		-0.606588, 0.772188, -0.189147,
		31.922081, 34.937588, 20.121998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588593, 35.042778, 20.539030>,  <32.346691, 34.397057, 20.254400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588593, 35.042778, 20.539030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190113, 35.070744, 20.518253>,  <31.951025, 35.087524, 20.505787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190113, 35.070744, 20.518253>,  <32.588593, 35.042778, 20.539030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190113, 35.070744, 20.518253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026697, 0.322531, 0.946182,
		0.082903, 0.943973, -0.319439,
		-0.996200, 0.069913, -0.051940,
		31.891253, 35.091717, 20.502672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357243, 35.635929, 20.973427>,  <32.588593, 35.042778, 20.539030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357243, 35.635929, 20.973427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004776, 35.453373, 20.924006>,  <31.793297, 35.343842, 20.894352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004776, 35.453373, 20.924006>,  <32.357243, 35.635929, 20.973427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004776, 35.453373, 20.924006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315968, 0.373999, 0.871945,
		-0.351735, 0.807364, -0.473757,
		-0.881162, -0.456386, -0.123553,
		31.740427, 35.316456, 20.886940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804850, 36.107845, 21.173098>,  <32.357243, 35.635929, 20.973427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804850, 36.107845, 21.173098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629477, 35.751904, 21.223593>,  <31.524252, 35.538338, 21.253889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629477, 35.751904, 21.223593>,  <31.804850, 36.107845, 21.173098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629477, 35.751904, 21.223593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208827, 0.237471, 0.948683,
		-0.874167, 0.389572, -0.289941,
		-0.438432, -0.889855, 0.126236,
		31.497948, 35.484947, 21.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168131, 36.159645, 21.570240>,  <31.804850, 36.107845, 21.173098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168131, 36.159645, 21.570240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271971, 35.777180, 21.624426>,  <31.334274, 35.547699, 21.656937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271971, 35.777180, 21.624426>,  <31.168131, 36.159645, 21.570240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271971, 35.777180, 21.624426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045111, 0.128115, 0.990733,
		-0.964662, -0.263307, -0.009875,
		0.259602, -0.956168, 0.135465,
		31.349852, 35.490330, 21.665066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679451, 35.881901, 21.956549>,  <31.168131, 36.159645, 21.570240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679451, 35.881901, 21.956549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003002, 35.656269, 22.022913>,  <31.197134, 35.520889, 22.062733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003002, 35.656269, 22.022913>,  <30.679451, 35.881901, 21.956549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003002, 35.656269, 22.022913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030540, 0.241488, 0.969923,
		-0.587182, -0.789617, 0.178108,
		0.808879, -0.564082, 0.165913,
		31.245667, 35.487045, 22.072687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710354, 35.637280, 22.620682>,  <30.679451, 35.881901, 21.956549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710354, 35.637280, 22.620682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094023, 35.547180, 22.552275>,  <31.324224, 35.493122, 22.511230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094023, 35.547180, 22.552275>,  <30.710354, 35.637280, 22.620682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094023, 35.547180, 22.552275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231793, 0.279651, 0.931701,
		-0.162039, -0.933305, 0.320446,
		0.959174, -0.225249, -0.171019,
		31.381775, 35.479607, 22.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.579428, 33.889877, 27.530148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.971519, 33.863743, 27.455446>,  <29.206776, 33.848061, 27.410625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.971519, 33.863743, 27.455446>,  <28.579428, 33.889877, 27.530148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971519, 33.863743, 27.455446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165286, -0.248404, 0.954451,
		-0.108753, -0.966451, -0.232694,
		0.980231, -0.065338, -0.186755,
		29.265589, 33.844143, 27.399420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830399, 33.168785, 27.641016>,  <28.579428, 33.889877, 27.530148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830399, 33.168785, 27.641016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.152353, 33.403595, 27.675774>,  <29.345526, 33.544483, 27.696629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.152353, 33.403595, 27.675774>,  <28.830399, 33.168785, 27.641016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152353, 33.403595, 27.675774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302446, -0.531783, 0.791033,
		0.510569, -0.610412, -0.605571,
		0.804888, 0.587029, 0.086896,
		29.393820, 33.579704, 27.701843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283106, 32.729290, 27.769207>,  <28.830399, 33.168785, 27.641016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283106, 32.729290, 27.769207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.516294, 33.045135, 27.845795>,  <29.656208, 33.234642, 27.891747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.516294, 33.045135, 27.845795>,  <29.283106, 32.729290, 27.769207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516294, 33.045135, 27.845795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451968, -0.510989, 0.731174,
		0.675181, -0.339715, -0.654771,
		0.582972, 0.789610, 0.191470,
		29.691187, 33.282017, 27.903236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841257, 32.386742, 28.111889>,  <29.283106, 32.729290, 27.769207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841257, 32.386742, 28.111889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.908552, 32.770054, 28.204319>,  <29.948929, 33.000042, 28.259777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.908552, 32.770054, 28.204319>,  <29.841257, 32.386742, 28.111889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908552, 32.770054, 28.204319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516821, -0.285362, 0.807134,
		0.839400, -0.016364, -0.543267,
		0.168236, 0.958280, 0.231076,
		29.959023, 33.057537, 28.273642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562002, 32.408607, 28.119627>,  <29.841257, 32.386742, 28.111889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562002, 32.408607, 28.119627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.379261, 32.679813, 28.349960>,  <30.269617, 32.842537, 28.488161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.379261, 32.679813, 28.349960>,  <30.562002, 32.408607, 28.119627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379261, 32.679813, 28.349960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523392, -0.318543, 0.790311,
		0.719269, 0.662441, -0.209341,
		-0.456851, 0.678014, 0.575834,
		30.242207, 32.883217, 28.522711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122940, 32.694958, 28.536623>,  <30.562002, 32.408607, 28.119627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122940, 32.694958, 28.536623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.794975, 32.796040, 28.742102>,  <30.598196, 32.856689, 28.865389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.794975, 32.796040, 28.742102>,  <31.122940, 32.694958, 28.536623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794975, 32.796040, 28.742102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483813, -0.173835, 0.857733,
		0.306055, 0.951798, 0.020266,
		-0.819912, 0.252708, 0.513696,
		30.549002, 32.871853, 28.896210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326471, 33.275158, 29.000019>,  <31.122940, 32.694958, 28.536623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326471, 33.275158, 29.000019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.009518, 33.080647, 29.147346>,  <30.819345, 32.963940, 29.235743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.009518, 33.080647, 29.147346>,  <31.326471, 33.275158, 29.000019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009518, 33.080647, 29.147346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432092, -0.021207, 0.901580,
		-0.430610, 0.873545, 0.226922,
		-0.792384, -0.486281, 0.368320,
		30.771803, 32.934761, 29.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104900, 33.638233, 29.575598>,  <31.326471, 33.275158, 29.000019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104900, 33.638233, 29.575598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.910376, 33.293568, 29.633614>,  <30.793661, 33.086769, 29.668423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.910376, 33.293568, 29.633614>,  <31.104900, 33.638233, 29.575598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910376, 33.293568, 29.633614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382026, -0.060386, 0.922177,
		-0.785849, 0.503873, 0.358544,
		-0.486311, -0.861664, 0.145038,
		30.764482, 33.035069, 29.677124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727352, 33.750217, 30.224806>,  <31.104900, 33.638233, 29.575598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727352, 33.750217, 30.224806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.776527, 33.363232, 30.136358>,  <30.806032, 33.131039, 30.083290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.776527, 33.363232, 30.136358>,  <30.727352, 33.750217, 30.224806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776527, 33.363232, 30.136358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278992, -0.180130, 0.943248,
		-0.952392, -0.177650, 0.247772,
		0.122937, -0.967468, -0.221117,
		30.813408, 33.072990, 30.070023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412075, 33.484520, 30.736879>,  <30.727352, 33.750217, 30.224806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412075, 33.484520, 30.736879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.664019, 33.212093, 30.587521>,  <30.815186, 33.048637, 30.497906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.664019, 33.212093, 30.587521>,  <30.412075, 33.484520, 30.736879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664019, 33.212093, 30.587521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325402, -0.205135, 0.923056,
		-0.705260, -0.702900, 0.092414,
		0.629858, -0.681067, -0.373399,
		30.852976, 33.007774, 30.475500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281397, 32.933430, 31.181021>,  <30.412075, 33.484520, 30.736879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281397, 32.933430, 31.181021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649632, 32.854431, 31.046251>,  <30.870571, 32.807030, 30.965389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649632, 32.854431, 31.046251>,  <30.281397, 32.933430, 31.181021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649632, 32.854431, 31.046251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297913, -0.202715, 0.932821,
		-0.252534, -0.959114, -0.127778,
		0.920584, -0.197503, -0.336925,
		30.925806, 32.795181, 30.945173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563499, 32.314396, 31.585695>,  <30.281397, 32.933430, 31.181021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563499, 32.314396, 31.585695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.856199, 32.525246, 31.412868>,  <31.031820, 32.651756, 31.309172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.856199, 32.525246, 31.412868>,  <30.563499, 32.314396, 31.585695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856199, 32.525246, 31.412868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581560, -0.152305, 0.799119,
		0.355427, -0.836030, -0.418002,
		0.731751, 0.527122, -0.432069,
		31.075724, 32.683384, 31.283247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176931, 31.930462, 31.806833>,  <30.563499, 32.314396, 31.585695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176931, 31.930462, 31.806833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.311462, 32.276119, 31.657093>,  <31.392181, 32.483513, 31.567249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.311462, 32.276119, 31.657093>,  <31.176931, 31.930462, 31.806833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311462, 32.276119, 31.657093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505149, 0.169941, 0.846135,
		0.794800, -0.473682, -0.379366,
		0.336329, 0.864145, -0.374349,
		31.412361, 32.535362, 31.544788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799297, 31.964401, 31.897526>,  <31.176931, 31.930462, 31.806833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799297, 31.964401, 31.897526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690067, 32.348740, 31.878727>,  <31.624529, 32.579342, 31.867447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690067, 32.348740, 31.878727>,  <31.799297, 31.964401, 31.897526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690067, 32.348740, 31.878727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534215, 0.192091, 0.823234,
		0.800028, 0.199696, -0.565753,
		-0.273073, 0.960845, -0.046997,
		31.608145, 32.636993, 31.864628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620167, 31.741106, 32.654842>,  <31.799297, 31.964401, 31.897526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620167, 31.741106, 32.654842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.428812, 31.391140, 32.624718>,  <31.313999, 31.181160, 32.606644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.428812, 31.391140, 32.624718>,  <31.620167, 31.741106, 32.654842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428812, 31.391140, 32.624718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298328, -0.081259, -0.950998,
		0.825921, -0.477414, 0.299885,
		-0.478388, -0.874913, -0.075313,
		31.285295, 31.128666, 32.602123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032742, 31.394428, 32.383804>,  <31.620167, 31.741106, 32.654842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032742, 31.394428, 32.383804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.694784, 31.199217, 32.296181>,  <31.492010, 31.082090, 32.243607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.694784, 31.199217, 32.296181>,  <32.032742, 31.394428, 32.383804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694784, 31.199217, 32.296181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301383, -0.095945, -0.948664,
		0.441960, -0.867537, 0.228147,
		-0.844890, -0.488031, -0.219057,
		31.441317, 31.052807, 32.230465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126724, 30.715015, 32.212070>,  <32.032742, 31.394428, 32.383804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126724, 30.715015, 32.212070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776672, 30.790997, 32.034054>,  <31.566641, 30.836584, 31.927244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776672, 30.790997, 32.034054>,  <32.126724, 30.715015, 32.212070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776672, 30.790997, 32.034054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343445, -0.404049, -0.847815,
		-0.340856, -0.894799, 0.288362,
		-0.875136, 0.189946, -0.445036,
		31.514132, 30.847982, 31.900543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123699, 30.137533, 31.752966>,  <32.126724, 30.715015, 32.212070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123699, 30.137533, 31.752966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831139, 30.379286, 31.626612>,  <31.655603, 30.524338, 31.550800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831139, 30.379286, 31.626612>,  <32.123699, 30.137533, 31.752966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831139, 30.379286, 31.626612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200562, -0.252084, -0.946693,
		-0.651793, -0.755763, 0.063158,
		-0.731396, 0.604381, -0.315884,
		31.611719, 30.560600, 31.531847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704681, 29.722641, 31.292414>,  <32.123699, 30.137533, 31.752966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704681, 29.722641, 31.292414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.612528, 30.103245, 31.210878>,  <31.557236, 30.331608, 31.161957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.612528, 30.103245, 31.210878>,  <31.704681, 29.722641, 31.292414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612528, 30.103245, 31.210878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197935, -0.250914, -0.947557,
		-0.952757, -0.177956, 0.246144,
		-0.230384, 0.951512, -0.203837,
		31.543413, 30.388699, 31.149727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117680, 29.794512, 30.855408>,  <31.704681, 29.722641, 31.292414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117680, 29.794512, 30.855408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.287399, 30.145504, 30.765968>,  <31.389231, 30.356100, 30.712305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.287399, 30.145504, 30.765968>,  <31.117680, 29.794512, 30.855408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287399, 30.145504, 30.765968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260164, -0.118384, -0.958279,
		-0.867342, 0.464771, 0.178058,
		0.424301, 0.877481, -0.223596,
		31.414690, 30.408749, 30.698889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666945, 30.102396, 30.403278>,  <31.117680, 29.794512, 30.855408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666945, 30.102396, 30.403278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024607, 30.268497, 30.336290>,  <31.239204, 30.368158, 30.296097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024607, 30.268497, 30.336290>,  <30.666945, 30.102396, 30.403278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024607, 30.268497, 30.336290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206173, 0.049824, -0.977246,
		-0.397460, 0.908341, 0.130165,
		0.894158, 0.415253, -0.167472,
		31.292854, 30.393074, 30.286049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549080, 30.705029, 29.901802>,  <30.666945, 30.102396, 30.403278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549080, 30.705029, 29.901802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.935045, 30.605171, 29.869259>,  <31.166624, 30.545258, 29.849733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.935045, 30.605171, 29.869259>,  <30.549080, 30.705029, 29.901802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935045, 30.605171, 29.869259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077513, 0.025208, -0.996673,
		0.250861, 0.968010, 0.004973,
		0.964915, -0.249641, -0.081357,
		31.224520, 30.530279, 29.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828653, 31.142418, 29.327303>,  <30.549080, 30.705029, 29.901802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828653, 31.142418, 29.327303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.117836, 30.866320, 29.339277>,  <31.291346, 30.700661, 29.346462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.117836, 30.866320, 29.339277>,  <30.828653, 31.142418, 29.327303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117836, 30.866320, 29.339277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046167, 0.005033, -0.998921,
		0.689351, 0.723557, 0.035505,
		0.722955, -0.690246, 0.029935,
		31.334723, 30.659246, 29.348257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240244, 31.304043, 28.819391>,  <30.828653, 31.142418, 29.327303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240244, 31.304043, 28.819391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.394985, 30.941355, 28.886574>,  <31.487829, 30.723742, 28.926884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.394985, 30.941355, 28.886574>,  <31.240244, 31.304043, 28.819391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394985, 30.941355, 28.886574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189344, -0.100151, -0.976790,
		0.902494, 0.409674, 0.132938,
		0.386851, -0.906718, 0.167955,
		31.511040, 30.669340, 28.936960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013256, 31.258799, 28.442959>,  <31.240244, 31.304043, 28.819391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013256, 31.258799, 28.442959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.833588, 30.904871, 28.492508>,  <31.725786, 30.692514, 28.522238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.833588, 30.904871, 28.492508>,  <32.013256, 31.258799, 28.442959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833588, 30.904871, 28.492508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057981, -0.167220, -0.984213,
		0.891563, -0.434896, 0.126413,
		-0.449169, -0.884818, 0.123872,
		31.698837, 30.639425, 28.529669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271885, 31.009205, 27.884527>,  <32.013256, 31.258799, 28.442959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271885, 31.009205, 27.884527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.000706, 30.735762, 27.992645>,  <31.837997, 30.571695, 28.057516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.000706, 30.735762, 27.992645>,  <32.271885, 31.009205, 27.884527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000706, 30.735762, 27.992645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081095, -0.295898, -0.951771,
		0.730620, -0.667174, 0.145167,
		-0.677951, -0.683610, 0.270294,
		31.797319, 30.530678, 28.073734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408146, 30.455448, 27.441545>,  <32.271885, 31.009205, 27.884527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408146, 30.455448, 27.441545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.030922, 30.386572, 27.555376>,  <31.804586, 30.345247, 27.623674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.030922, 30.386572, 27.555376>,  <32.408146, 30.455448, 27.441545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030922, 30.386572, 27.555376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270276, -0.101973, -0.957367,
		0.193868, -0.979771, 0.049628,
		-0.943062, -0.172190, 0.284578,
		31.748003, 30.334915, 27.640749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224850, 29.817307, 27.120644>,  <32.408146, 30.455448, 27.441545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224850, 29.817307, 27.120644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897694, 30.032867, 27.201283>,  <31.701401, 30.162203, 27.249666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897694, 30.032867, 27.201283>,  <32.224850, 29.817307, 27.120644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897694, 30.032867, 27.201283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301579, -0.103130, -0.947847,
		-0.490006, -0.836032, 0.246870,
		-0.817891, 0.538901, 0.201595,
		31.652327, 30.194538, 27.261761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562145, 29.114477, 27.395838>,  <32.224850, 29.817307, 27.120644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562145, 29.114477, 27.395838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.906277, 29.128969, 27.192455>,  <33.112755, 29.137665, 27.070427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.906277, 29.128969, 27.192455>,  <32.562145, 29.114477, 27.395838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906277, 29.128969, 27.192455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509564, -0.087660, 0.855956,
		-0.013559, -0.995492, -0.093878,
		0.860326, 0.036231, -0.508454,
		33.164375, 29.139839, 27.039919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002796, 28.680006, 27.723347>,  <32.562145, 29.114477, 27.395838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002796, 28.680006, 27.723347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.277554, 28.871437, 27.504574>,  <33.442410, 28.986296, 27.373310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.277554, 28.871437, 27.504574>,  <33.002796, 28.680006, 27.723347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277554, 28.871437, 27.504574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633748, -0.026091, 0.773099,
		0.355718, -0.877657, -0.321220,
		0.686897, 0.478578, -0.546933,
		33.483624, 29.015011, 27.340494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679852, 28.477131, 28.039932>,  <33.002796, 28.680006, 27.723347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679852, 28.477131, 28.039932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765934, 28.811197, 27.837473>,  <33.817585, 29.011637, 27.715998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765934, 28.811197, 27.837473>,  <33.679852, 28.477131, 28.039932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765934, 28.811197, 27.837473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480259, 0.360777, 0.799495,
		0.850316, -0.415139, -0.323453,
		0.215208, 0.835164, -0.506148,
		33.830498, 29.061747, 27.685629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386112, 28.595808, 28.178720>,  <33.679852, 28.477131, 28.039932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386112, 28.595808, 28.178720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.196632, 28.934620, 28.082264>,  <34.082943, 29.137907, 28.024389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.196632, 28.934620, 28.082264>,  <34.386112, 28.595808, 28.178720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196632, 28.934620, 28.082264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522294, 0.490656, 0.697471,
		0.709095, 0.204447, -0.674823,
		-0.473701, 0.847029, -0.241141,
		34.054523, 29.188728, 28.009922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950947, 29.229555, 28.242062>,  <34.386112, 28.595808, 28.178720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950947, 29.229555, 28.242062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587238, 29.391855, 28.279127>,  <34.369011, 29.489235, 28.301367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587238, 29.391855, 28.279127>,  <34.950947, 29.229555, 28.242062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587238, 29.391855, 28.279127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322162, 0.545206, 0.773926,
		0.263499, 0.733565, -0.626459,
		-0.909274, 0.405750, 0.092665,
		34.314457, 29.513580, 28.306927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149338, 29.908607, 28.513937>,  <34.950947, 29.229555, 28.242062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149338, 29.908607, 28.513937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.754150, 29.872021, 28.563826>,  <34.517040, 29.850069, 28.593760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.754150, 29.872021, 28.563826>,  <35.149338, 29.908607, 28.513937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754150, 29.872021, 28.563826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022556, 0.712575, 0.701233,
		-0.153013, 0.695608, -0.701937,
		-0.987967, -0.091465, 0.124723,
		34.457760, 29.844582, 28.601242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936424, 30.593405, 28.447426>,  <35.149338, 29.908607, 28.513937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936424, 30.593405, 28.447426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664062, 30.403212, 28.670238>,  <34.500645, 30.289095, 28.803926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664062, 30.403212, 28.670238>,  <34.936424, 30.593405, 28.447426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664062, 30.403212, 28.670238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019244, 0.748707, 0.662622,
		-0.732121, 0.461900, -0.500646,
		-0.680902, -0.475485, 0.557033,
		34.459793, 30.260567, 28.837349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436775, 31.143581, 28.719805>,  <34.936424, 30.593405, 28.447426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436775, 31.143581, 28.719805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409626, 30.825134, 28.960333>,  <34.393337, 30.634066, 29.104650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409626, 30.825134, 28.960333>,  <34.436775, 31.143581, 28.719805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409626, 30.825134, 28.960333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006911, 0.602321, 0.798224,
		-0.997670, 0.058337, -0.035382,
		-0.067877, -0.796120, 0.601320,
		34.389263, 30.586298, 29.140730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857800, 31.224276, 29.138002>,  <34.436775, 31.143581, 28.719805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857800, 31.224276, 29.138002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060692, 30.941465, 29.335114>,  <34.182426, 30.771780, 29.453381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060692, 30.941465, 29.335114>,  <33.857800, 31.224276, 29.138002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060692, 30.941465, 29.335114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119527, 0.508554, 0.852693,
		-0.853481, -0.491413, 0.173446,
		0.507232, -0.707026, 0.492778,
		34.212860, 30.729357, 29.482946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390842, 31.000530, 29.667807>,  <33.857800, 31.224276, 29.138002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390842, 31.000530, 29.667807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.767994, 30.914034, 29.769178>,  <33.994286, 30.862137, 29.830002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.767994, 30.914034, 29.769178>,  <33.390842, 31.000530, 29.667807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767994, 30.914034, 29.769178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117203, 0.496777, 0.859928,
		-0.311849, -0.840507, 0.443055,
		0.942875, -0.216241, 0.253429,
		34.050858, 30.849161, 29.845207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483280, 30.642057, 30.408894>,  <33.390842, 31.000530, 29.667807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483280, 30.642057, 30.408894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.823662, 30.826855, 30.308941>,  <34.027889, 30.937733, 30.248970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.823662, 30.826855, 30.308941>,  <33.483280, 30.642057, 30.408894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823662, 30.826855, 30.308941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050280, 0.401907, 0.914299,
		0.522830, -0.790589, 0.318775,
		0.850953, 0.461994, -0.249880,
		34.078949, 30.965452, 30.233976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969772, 30.449387, 31.004017>,  <33.483280, 30.642057, 30.408894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969772, 30.449387, 31.004017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.005493, 30.809481, 30.833559>,  <34.026924, 31.025537, 30.731283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.005493, 30.809481, 30.833559>,  <33.969772, 30.449387, 31.004017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005493, 30.809481, 30.833559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304871, 0.382613, 0.872159,
		0.948198, -0.207802, -0.240289,
		0.089299, 0.900236, -0.426146,
		34.032284, 31.079552, 30.705715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.953978, 28.251005, 23.395035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310287, 28.431473, 23.373241>,  <32.524075, 28.539753, 23.360167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310287, 28.431473, 23.373241>,  <31.953978, 28.251005, 23.395035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310287, 28.431473, 23.373241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177181, -0.234395, 0.955859,
		0.418483, -0.861108, -0.288731,
		0.890774, 0.451168, -0.054482,
		32.577518, 28.566824, 23.356897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486149, 27.840002, 23.963270>,  <31.953978, 28.251005, 23.395035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486149, 27.840002, 23.963270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652496, 28.193932, 23.879232>,  <32.752304, 28.406290, 23.828810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652496, 28.193932, 23.879232>,  <32.486149, 27.840002, 23.963270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652496, 28.193932, 23.879232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339693, 0.063163, 0.938413,
		0.843602, -0.461621, -0.274302,
		0.415865, 0.884826, -0.210094,
		32.777256, 28.459379, 23.816204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136711, 27.880053, 24.335831>,  <32.486149, 27.840002, 23.963270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136711, 27.880053, 24.335831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053791, 28.256868, 24.230310>,  <33.004040, 28.482958, 24.166998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053791, 28.256868, 24.230310>,  <33.136711, 27.880053, 24.335831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053791, 28.256868, 24.230310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115730, 0.291379, 0.949581,
		0.971409, 0.166315, -0.169424,
		-0.207296, 0.942039, -0.263801,
		32.991604, 28.539480, 24.151171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712109, 28.223907, 24.484537>,  <33.136711, 27.880053, 24.335831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712109, 28.223907, 24.484537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 28.469479, 24.491001>,  <33.207024, 28.616821, 24.494879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 28.469479, 24.491001>,  <33.712109, 28.223907, 24.484537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396431, 28.469479, 24.491001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287934, 0.346640, 0.892712,
		0.542459, 0.709179, -0.450337,
		-0.789198, 0.613927, 0.016159,
		33.159672, 28.653656, 24.495850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006573, 28.875334, 24.668251>,  <33.712109, 28.223907, 24.484537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006573, 28.875334, 24.668251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614086, 28.873203, 24.745382>,  <33.378593, 28.871925, 24.791662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614086, 28.873203, 24.745382>,  <34.006573, 28.875334, 24.668251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614086, 28.873203, 24.745382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183667, 0.279812, 0.942323,
		-0.058977, 0.960040, -0.273578,
		-0.981218, -0.005328, 0.192830,
		33.319721, 28.871605, 24.803232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847301, 29.543568, 24.964975>,  <34.006573, 28.875334, 24.668251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847301, 29.543568, 24.964975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552727, 29.302158, 25.087238>,  <33.375984, 29.157312, 25.160595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552727, 29.302158, 25.087238>,  <33.847301, 29.543568, 24.964975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552727, 29.302158, 25.087238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010216, 0.461683, 0.886986,
		-0.676432, 0.650084, -0.346165,
		-0.736434, -0.603523, 0.305656,
		33.331795, 29.121101, 25.178936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396065, 29.980755, 25.337656>,  <33.847301, 29.543568, 24.964975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396065, 29.980755, 25.337656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312622, 29.604952, 25.446325>,  <33.262558, 29.379469, 25.511526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312622, 29.604952, 25.446325>,  <33.396065, 29.980755, 25.337656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312622, 29.604952, 25.446325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038135, 0.285388, 0.957653,
		-0.977257, 0.189408, -0.095361,
		-0.208602, -0.939510, 0.271674,
		33.250042, 29.323099, 25.527828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916050, 30.078569, 25.895098>,  <33.396065, 29.980755, 25.337656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916050, 30.078569, 25.895098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043362, 29.701530, 25.935499>,  <33.119751, 29.475307, 25.959740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043362, 29.701530, 25.935499>,  <32.916050, 30.078569, 25.895098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043362, 29.701530, 25.935499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055480, 0.087843, 0.994588,
		-0.946371, -0.322163, -0.024337,
		0.318282, -0.942600, 0.101006,
		33.138847, 29.418751, 25.965801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380978, 29.663818, 26.299332>,  <32.916050, 30.078569, 25.895098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380978, 29.663818, 26.299332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750099, 29.513615, 26.333803>,  <32.971573, 29.423492, 26.354486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750099, 29.513615, 26.333803>,  <32.380978, 29.663818, 26.299332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750099, 29.513615, 26.333803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043189, 0.121449, 0.991658,
		-0.382842, -0.918827, 0.095855,
		0.922804, -0.375508, 0.086179,
		33.026939, 29.400963, 26.359657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720852, 29.468895, 26.512901>,  <32.380978, 29.663818, 26.299332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720852, 29.468895, 26.512901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551844, 29.790253, 26.680727>,  <31.450439, 29.983067, 26.781422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551844, 29.790253, 26.680727>,  <31.720852, 29.468895, 26.512901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551844, 29.790253, 26.680727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502203, 0.177836, -0.846267,
		-0.754500, -0.568270, 0.328328,
		-0.422520, 0.803395, 0.419564,
		31.425087, 30.031271, 26.806597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059931, 29.403030, 26.359577>,  <31.720852, 29.468895, 26.512901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059931, 29.403030, 26.359577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107922, 29.794449, 26.426571>,  <31.136717, 30.029301, 26.466766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107922, 29.794449, 26.426571>,  <31.059931, 29.403030, 26.359577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107922, 29.794449, 26.426571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522986, 0.205692, -0.827150,
		-0.843855, 0.011648, 0.536445,
		0.119977, 0.978547, 0.167483,
		31.143915, 30.088013, 26.476816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350843, 29.780836, 26.320044>,  <31.059931, 29.403030, 26.359577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350843, 29.780836, 26.320044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654526, 30.032991, 26.255270>,  <30.836735, 30.184284, 26.216406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654526, 30.032991, 26.255270>,  <30.350843, 29.780836, 26.320044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654526, 30.032991, 26.255270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516877, 0.432761, -0.738617,
		-0.395535, 0.644462, 0.654386,
		0.759204, 0.630386, -0.161936,
		30.882286, 30.222107, 26.206690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008387, 30.479109, 26.159855>,  <30.350843, 29.780836, 26.320044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008387, 30.479109, 26.159855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389803, 30.511883, 26.043892>,  <30.618652, 30.531548, 25.974314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389803, 30.511883, 26.043892>,  <30.008387, 30.479109, 26.159855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389803, 30.511883, 26.043892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284357, 0.562605, -0.776284,
		0.099498, 0.822656, 0.559766,
		0.953541, 0.081934, -0.289906,
		30.675865, 30.536463, 25.956921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139137, 31.200439, 25.967327>,  <30.008387, 30.479109, 26.159855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139137, 31.200439, 25.967327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421139, 30.973269, 25.797419>,  <30.590340, 30.836966, 25.695473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421139, 30.973269, 25.797419>,  <30.139137, 31.200439, 25.967327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421139, 30.973269, 25.797419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270435, 0.338410, -0.901301,
		0.655620, 0.750293, 0.084993,
		0.705002, -0.567925, -0.424774,
		30.632639, 30.802891, 25.669987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340738, 31.569212, 25.367031>,  <30.139137, 31.200439, 25.967327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340738, 31.569212, 25.367031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488436, 31.207939, 25.279469>,  <30.577055, 30.991175, 25.226931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488436, 31.207939, 25.279469>,  <30.340738, 31.569212, 25.367031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488436, 31.207939, 25.279469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342885, 0.086532, -0.935383,
		0.863764, 0.420444, -0.277737,
		0.369243, -0.903182, -0.218908,
		30.599209, 30.936985, 25.213797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820995, 31.681229, 24.882032>,  <30.340738, 31.569212, 25.367031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820995, 31.681229, 24.882032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676971, 31.309509, 24.849133>,  <30.590557, 31.086477, 24.829393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676971, 31.309509, 24.849133>,  <30.820995, 31.681229, 24.882032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676971, 31.309509, 24.849133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377423, 0.225722, -0.898110,
		0.853176, -0.292331, -0.432011,
		-0.360060, -0.929297, -0.082248,
		30.568953, 31.030720, 24.824459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794685, 31.495382, 24.181570>,  <30.820995, 31.681229, 24.882032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794685, 31.495382, 24.181570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552530, 31.194719, 24.286274>,  <30.407238, 31.014322, 24.349096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552530, 31.194719, 24.286274>,  <30.794685, 31.495382, 24.181570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552530, 31.194719, 24.286274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162122, -0.205528, -0.965129,
		0.779246, -0.626713, 0.002563,
		-0.605385, -0.751658, 0.261761,
		30.370914, 30.969221, 24.364801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947077, 31.049126, 23.731544>,  <30.794685, 31.495382, 24.181570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947077, 31.049126, 23.731544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609411, 30.918058, 23.901260>,  <30.406811, 30.839418, 24.003090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609411, 30.918058, 23.901260>,  <30.947077, 31.049126, 23.731544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609411, 30.918058, 23.901260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295649, -0.375657, -0.878335,
		0.447189, -0.866900, 0.220242,
		-0.844164, -0.327668, 0.424288,
		30.356161, 30.819757, 24.028547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987989, 30.405558, 23.602911>,  <30.947077, 31.049126, 23.731544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987989, 30.405558, 23.602911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601152, 30.484848, 23.666702>,  <30.369049, 30.532423, 23.704977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601152, 30.484848, 23.666702>,  <30.987989, 30.405558, 23.602911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601152, 30.484848, 23.666702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209109, -0.262259, -0.942069,
		-0.144917, -0.944419, 0.295080,
		-0.967095, 0.198226, 0.159480,
		30.311024, 30.544317, 23.714546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656761, 29.956760, 23.079391>,  <30.987989, 30.405558, 23.602911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656761, 29.956760, 23.079391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389986, 30.231607, 23.194674>,  <30.229921, 30.396515, 23.263844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389986, 30.231607, 23.194674>,  <30.656761, 29.956760, 23.079391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389986, 30.231607, 23.194674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316712, 0.088698, -0.944365,
		-0.674455, -0.721111, 0.158463,
		-0.666937, 0.687119, 0.288208,
		30.189905, 30.437742, 23.281136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007795, 29.828796, 22.626329>,  <30.656761, 29.956760, 23.079391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007795, 29.828796, 22.626329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004356, 30.207832, 22.754076>,  <30.002293, 30.435255, 22.830725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004356, 30.207832, 22.754076>,  <30.007795, 29.828796, 22.626329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004356, 30.207832, 22.754076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347363, 0.296659, -0.889569,
		-0.937692, -0.118585, 0.326607,
		-0.008598, 0.947592, 0.319367,
		30.001778, 30.492109, 22.849886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381365, 29.982311, 22.521557>,  <30.007795, 29.828796, 22.626329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381365, 29.982311, 22.521557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568207, 30.335991, 22.522375>,  <29.680311, 30.548199, 22.522865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568207, 30.335991, 22.522375>,  <29.381365, 29.982311, 22.521557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568207, 30.335991, 22.522375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550795, 0.292780, -0.781604,
		-0.691693, 0.363964, 0.623772,
		0.467104, 0.884200, 0.002044,
		29.708338, 30.601252, 22.522987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890188, 30.460873, 22.328556>,  <29.381365, 29.982311, 22.521557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890188, 30.460873, 22.328556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237144, 30.652956, 22.276352>,  <29.445318, 30.768206, 22.245029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237144, 30.652956, 22.276352>,  <28.890188, 30.460873, 22.328556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237144, 30.652956, 22.276352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376367, 0.461486, -0.803355,
		-0.325551, 0.745941, 0.581023,
		0.867390, 0.480211, -0.130511,
		29.497362, 30.797020, 22.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.241703, 35.482780, 20.931522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061455, 35.145306, 21.048239>,  <34.953308, 34.942822, 21.118269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061455, 35.145306, 21.048239>,  <35.241703, 35.482780, 20.931522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061455, 35.145306, 21.048239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179795, 0.405929, 0.896044,
		-0.874425, 0.351310, -0.334608,
		-0.450617, -0.843684, 0.291790,
		34.926270, 34.892200, 21.135777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675289, 35.648781, 21.354795>,  <35.241703, 35.482780, 20.931522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675289, 35.648781, 21.354795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704342, 35.269184, 21.477522>,  <34.721775, 35.041424, 21.551157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704342, 35.269184, 21.477522>,  <34.675289, 35.648781, 21.354795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704342, 35.269184, 21.477522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175667, 0.290645, 0.940567,
		-0.981767, -0.122212, -0.145597,
		0.072631, -0.948994, 0.306815,
		34.726131, 34.984486, 21.569567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200237, 35.645836, 21.899443>,  <34.675289, 35.648781, 21.354795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200237, 35.645836, 21.899443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.420956, 35.314537, 21.938477>,  <34.553387, 35.115757, 21.961897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.420956, 35.314537, 21.938477>,  <34.200237, 35.645836, 21.899443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420956, 35.314537, 21.938477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079713, 0.064099, 0.994755,
		-0.830161, -0.556681, -0.030653,
		0.551796, -0.828250, 0.097587,
		34.586494, 35.066063, 21.967752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849335, 35.156944, 22.298758>,  <34.200237, 35.645836, 21.899443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849335, 35.156944, 22.298758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.236439, 35.065388, 22.340796>,  <34.468700, 35.010452, 22.366018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.236439, 35.065388, 22.340796>,  <33.849335, 35.156944, 22.298758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236439, 35.065388, 22.340796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098598, 0.039677, 0.994336,
		-0.231766, -0.972643, 0.015829,
		0.967762, -0.228893, 0.105096,
		34.526768, 34.996719, 22.372324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909733, 34.598763, 22.692930>,  <33.849335, 35.156944, 22.298758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909733, 34.598763, 22.692930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268970, 34.770191, 22.732456>,  <34.484512, 34.873047, 22.756172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268970, 34.770191, 22.732456>,  <33.909733, 34.598763, 22.692930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268970, 34.770191, 22.732456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053288, -0.116989, 0.991702,
		0.436573, -0.895903, -0.082229,
		0.898089, 0.428568, 0.098815,
		34.538399, 34.898762, 22.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358265, 34.153381, 23.093348>,  <33.909733, 34.598763, 22.692930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358265, 34.153381, 23.093348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539463, 34.508793, 23.122486>,  <34.648182, 34.722042, 23.139969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539463, 34.508793, 23.122486>,  <34.358265, 34.153381, 23.093348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539463, 34.508793, 23.122486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098432, -0.031362, 0.994649,
		0.886063, -0.457741, 0.073254,
		0.452995, 0.888532, 0.072845,
		34.675362, 34.775352, 23.144339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886490, 34.088566, 23.650499>,  <34.358265, 34.153381, 23.093348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886490, 34.088566, 23.650499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804092, 34.477581, 23.607161>,  <34.754654, 34.710991, 23.581158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804092, 34.477581, 23.607161>,  <34.886490, 34.088566, 23.650499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804092, 34.477581, 23.607161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076643, 0.126418, 0.989012,
		0.975547, 0.195429, -0.100580,
		-0.205997, 0.972536, -0.108349,
		34.742294, 34.769341, 23.574656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311283, 34.435234, 24.093908>,  <34.886490, 34.088566, 23.650499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311283, 34.435234, 24.093908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074730, 34.748322, 24.016327>,  <34.932796, 34.936172, 23.969778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074730, 34.748322, 24.016327>,  <35.311283, 34.435234, 24.093908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074730, 34.748322, 24.016327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068554, 0.190849, 0.979222,
		0.803472, 0.592391, -0.059206,
		-0.591382, 0.782719, -0.193953,
		34.897316, 34.983139, 23.958141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568203, 35.049465, 24.507984>,  <35.311283, 34.435234, 24.093908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568203, 35.049465, 24.507984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184059, 35.102127, 24.409697>,  <34.953571, 35.133724, 24.350725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184059, 35.102127, 24.409697>,  <35.568203, 35.049465, 24.507984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184059, 35.102127, 24.409697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198272, 0.297015, 0.934061,
		0.195951, 0.945754, -0.259138,
		-0.960360, 0.131650, -0.245717,
		34.895950, 35.141621, 24.335981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421066, 35.660297, 24.847900>,  <35.568203, 35.049465, 24.507984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421066, 35.660297, 24.847900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063866, 35.492588, 24.782465>,  <34.849545, 35.391964, 24.743204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063866, 35.492588, 24.782465>,  <35.421066, 35.660297, 24.847900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063866, 35.492588, 24.782465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288854, 0.255202, 0.922732,
		-0.345130, 0.871253, -0.349004,
		-0.893000, -0.419274, -0.163586,
		34.795967, 35.366806, 24.733389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898552, 36.180599, 25.027151>,  <35.421066, 35.660297, 24.847900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898552, 36.180599, 25.027151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702164, 35.832504, 25.043322>,  <34.584332, 35.623646, 25.053024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702164, 35.832504, 25.043322>,  <34.898552, 36.180599, 25.027151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702164, 35.832504, 25.043322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225736, 0.171900, 0.958902,
		-0.841424, 0.461664, -0.280842,
		-0.490967, -0.870240, 0.040427,
		34.554874, 35.571434, 25.055450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141285, 36.272514, 25.248260>,  <34.898552, 36.180599, 25.027151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141285, 36.272514, 25.248260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.281860, 35.909039, 25.338385>,  <34.366207, 35.690952, 25.392460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.281860, 35.909039, 25.338385>,  <34.141285, 36.272514, 25.248260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281860, 35.909039, 25.338385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267848, 0.133012, 0.954235,
		-0.897077, -0.395705, -0.196647,
		0.351439, -0.908694, 0.225311,
		34.387291, 35.636429, 25.405977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765488, 36.058144, 25.795553>,  <34.141285, 36.272514, 25.248260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765488, 36.058144, 25.795553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.071552, 35.804962, 25.842714>,  <34.255192, 35.653053, 25.871012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.071552, 35.804962, 25.842714>,  <33.765488, 36.058144, 25.795553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071552, 35.804962, 25.842714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068570, 0.101973, 0.992421,
		-0.640179, -0.767445, 0.034625,
		0.765159, -0.632953, 0.117905,
		34.301102, 35.615078, 25.878086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575508, 35.667450, 26.274166>,  <33.765488, 36.058144, 25.795553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575508, 35.667450, 26.274166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971756, 35.612991, 26.269361>,  <34.209503, 35.580318, 26.266478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971756, 35.612991, 26.269361>,  <33.575508, 35.667450, 26.274166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971756, 35.612991, 26.269361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011091, -0.007536, 0.999910,
		-0.136225, -0.990660, -0.005955,
		0.990616, -0.136146, -0.012014,
		34.268940, 35.572147, 26.265757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119598, 35.109680, 26.343378>,  <33.575508, 35.667450, 26.274166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119598, 35.109680, 26.343378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735081, 35.187355, 26.421555>,  <32.504368, 35.233959, 26.468460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735081, 35.187355, 26.421555>,  <33.119598, 35.109680, 26.343378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735081, 35.187355, 26.421555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214610, -0.082952, -0.973171,
		-0.172768, -0.977450, 0.121417,
		-0.961298, 0.194190, 0.195439,
		32.446690, 35.245613, 26.480186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718025, 34.668747, 25.900515>,  <33.119598, 35.109680, 26.343378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718025, 34.668747, 25.900515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502083, 34.993313, 25.990099>,  <32.372517, 35.188053, 26.043850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502083, 34.993313, 25.990099>,  <32.718025, 34.668747, 25.900515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502083, 34.993313, 25.990099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340401, 0.032891, -0.939705,
		-0.769857, -0.583544, 0.258450,
		-0.539859, 0.811415, 0.223960,
		32.340126, 35.236736, 26.057287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951134, 34.543331, 25.685452>,  <32.718025, 34.668747, 25.900515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951134, 34.543331, 25.685452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.999788, 34.939674, 25.708790>,  <32.028980, 35.177479, 25.722794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.999788, 34.939674, 25.708790>,  <31.951134, 34.543331, 25.685452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999788, 34.939674, 25.708790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220669, 0.084309, -0.971698,
		-0.967734, 0.105320, 0.228906,
		0.121638, 0.990858, 0.058348,
		32.036278, 35.236931, 25.726294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400682, 34.820679, 25.318594>,  <31.951134, 34.543331, 25.685452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400682, 34.820679, 25.318594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665371, 35.120499, 25.311758>,  <31.824184, 35.300392, 25.307657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665371, 35.120499, 25.311758>,  <31.400682, 34.820679, 25.318594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665371, 35.120499, 25.311758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193538, 0.148750, -0.969751,
		-0.724338, 0.645013, 0.243498,
		0.661723, 0.749554, -0.017089,
		31.863888, 35.345364, 25.306631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068359, 35.383633, 24.891954>,  <31.400682, 34.820679, 25.318594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068359, 35.383633, 24.891954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.463232, 35.447414, 24.889328>,  <31.700155, 35.485683, 24.887753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.463232, 35.447414, 24.889328>,  <31.068359, 35.383633, 24.891954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463232, 35.447414, 24.889328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043040, 0.226387, -0.973086,
		-0.153675, 0.960897, 0.230349,
		0.987184, 0.159453, -0.006567,
		31.759388, 35.495251, 24.887358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119831, 36.028618, 24.601460>,  <31.068359, 35.383633, 24.891954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119831, 36.028618, 24.601460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.471426, 35.845486, 24.548124>,  <31.682383, 35.735607, 24.516123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.471426, 35.845486, 24.548124>,  <31.119831, 36.028618, 24.601460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471426, 35.845486, 24.548124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004265, 0.272064, -0.962270,
		0.476829, 0.846390, 0.237188,
		0.878986, -0.457826, -0.133338,
		31.735123, 35.708138, 24.508123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329157, 36.399075, 24.083012>,  <31.119831, 36.028618, 24.601460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329157, 36.399075, 24.083012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.570610, 36.080212, 24.077841>,  <31.715483, 35.888893, 24.074738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.570610, 36.080212, 24.077841>,  <31.329157, 36.399075, 24.083012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570610, 36.080212, 24.077841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022820, -0.001066, -0.999739,
		0.796936, 0.603770, -0.018835,
		0.603633, -0.797158, -0.012929,
		31.751699, 35.841064, 24.073961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800232, 36.562431, 23.599247>,  <31.329157, 36.399075, 24.083012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800232, 36.562431, 23.599247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812267, 36.163822, 23.630325>,  <31.819489, 35.924656, 23.648972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812267, 36.163822, 23.630325>,  <31.800232, 36.562431, 23.599247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812267, 36.163822, 23.630325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161307, -0.081551, -0.983529,
		0.986445, 0.017059, -0.163200,
		0.030087, -0.996523, 0.077694,
		31.821293, 35.864864, 23.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293911, 36.341263, 23.074398>,  <31.800232, 36.562431, 23.599247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293911, 36.341263, 23.074398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.102962, 36.002090, 23.166595>,  <31.988394, 35.798588, 23.221914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.102962, 36.002090, 23.166595>,  <32.293911, 36.341263, 23.074398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102962, 36.002090, 23.166595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016556, -0.270945, -0.962452,
		0.878545, -0.455633, 0.143381,
		-0.477373, -0.847931, 0.230494,
		31.959751, 35.747711, 23.235744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642067, 35.834995, 22.648409>,  <32.293911, 36.341263, 23.074398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642067, 35.834995, 22.648409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279560, 35.697742, 22.747156>,  <32.062057, 35.615391, 22.806404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279560, 35.697742, 22.747156>,  <32.642067, 35.834995, 22.648409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279560, 35.697742, 22.747156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100714, -0.391920, -0.914470,
		0.410539, -0.853615, 0.320625,
		-0.906264, -0.343134, 0.246869,
		32.007679, 35.594803, 22.821217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627548, 35.245472, 22.446398>,  <32.642067, 35.834995, 22.648409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627548, 35.245472, 22.446398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.238091, 35.336609, 22.442387>,  <32.004414, 35.391293, 22.439980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.238091, 35.336609, 22.442387>,  <32.627548, 35.245472, 22.446398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238091, 35.336609, 22.442387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107191, -0.495995, -0.861684,
		-0.201302, -0.837900, 0.507346,
		-0.973647, 0.227842, -0.010029,
		31.945997, 35.404961, 22.439377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269581, 34.589878, 22.221254>,  <32.627548, 35.245472, 22.446398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269581, 34.589878, 22.221254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973450, 34.853523, 22.168367>,  <31.795771, 35.011711, 22.136635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.973450, 34.853523, 22.168367>,  <32.269581, 34.589878, 22.221254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973450, 34.853523, 22.168367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325130, -0.523214, -0.787742,
		-0.588389, -0.540201, 0.601649,
		-0.740330, 0.659113, -0.132218,
		31.751350, 35.051258, 22.128702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641245, 34.263336, 21.949011>,  <32.269581, 34.589878, 22.221254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641245, 34.263336, 21.949011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.556887, 34.640888, 21.847340>,  <31.506271, 34.867420, 21.786337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.556887, 34.640888, 21.847340>,  <31.641245, 34.263336, 21.949011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556887, 34.640888, 21.847340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189729, -0.294606, -0.936595,
		-0.958919, -0.149300, 0.241213,
		-0.210896, 0.943884, -0.254177,
		31.493618, 34.924053, 21.771086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962109, 34.323902, 21.455744>,  <31.641245, 34.263336, 21.949011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962109, 34.323902, 21.455744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.134556, 34.675819, 21.375641>,  <31.238024, 34.886971, 21.327579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.134556, 34.675819, 21.375641>,  <30.962109, 34.323902, 21.455744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134556, 34.675819, 21.375641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100010, -0.173979, -0.979658,
		-0.896735, 0.442378, 0.012982,
		0.431120, 0.879791, -0.200256,
		31.263891, 34.939758, 21.315565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218374, 34.426098, 21.751005>,  <30.962109, 34.323902, 21.455744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218374, 34.426098, 21.751005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.935005, 34.148518, 21.802504>,  <29.764984, 33.981972, 21.833403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.935005, 34.148518, 21.802504>,  <30.218374, 34.426098, 21.751005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935005, 34.148518, 21.802504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014757, 0.196938, 0.980305,
		-0.705636, 0.692568, -0.149756,
		-0.708421, -0.693948, 0.128746,
		29.722479, 33.940334, 21.841127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734619, 34.802845, 22.070744>,  <30.218374, 34.426098, 21.751005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734619, 34.802845, 22.070744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.689161, 34.412350, 22.144547>,  <29.661886, 34.178051, 22.188828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.689161, 34.412350, 22.144547>,  <29.734619, 34.802845, 22.070744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689161, 34.412350, 22.144547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009147, 0.184673, 0.982757,
		-0.993479, 0.113374, -0.012058,
		-0.113646, -0.976239, 0.184506,
		29.655067, 34.119476, 22.199898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047989, 34.769939, 22.542318>,  <29.734619, 34.802845, 22.070744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047989, 34.769939, 22.542318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.287003, 34.450405, 22.570045>,  <29.430410, 34.258682, 22.586681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.287003, 34.450405, 22.570045>,  <29.047989, 34.769939, 22.542318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287003, 34.450405, 22.570045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034059, 0.111657, 0.993163,
		-0.801119, -0.591089, 0.093927,
		0.597536, -0.798841, 0.069319,
		29.466263, 34.210754, 22.590841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682796, 34.488773, 23.072298>,  <29.047989, 34.769939, 22.542318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682796, 34.488773, 23.072298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.037231, 34.304726, 23.049889>,  <29.249893, 34.194298, 23.036442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.037231, 34.304726, 23.049889>,  <28.682796, 34.488773, 23.072298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037231, 34.304726, 23.049889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102042, 0.075734, 0.991893,
		-0.452147, -0.884621, 0.114059,
		0.886088, -0.460120, -0.056025,
		29.303059, 34.166691, 23.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545776, 33.863010, 23.414026>,  <28.682796, 34.488773, 23.072298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545776, 33.863010, 23.414026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.937716, 33.942760, 23.418940>,  <29.172878, 33.990608, 23.421888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.937716, 33.942760, 23.418940>,  <28.545776, 33.863010, 23.414026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937716, 33.942760, 23.418940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019727, -0.157785, 0.987276,
		0.198773, -0.967138, -0.158538,
		0.979847, 0.199371, 0.012285,
		29.231670, 34.002571, 23.422625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696756, 33.288998, 23.867147>,  <28.545776, 33.863010, 23.414026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696756, 33.288998, 23.867147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.002401, 33.546898, 23.858866>,  <29.185789, 33.701637, 23.853897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.002401, 33.546898, 23.858866>,  <28.696756, 33.288998, 23.867147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002401, 33.546898, 23.858866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010705, 0.044769, 0.998940,
		0.644994, -0.763081, 0.041111,
		0.764112, 0.644750, -0.020706,
		29.231636, 33.740322, 23.852654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327139, 33.030277, 24.229570>,  <28.696756, 33.288998, 23.867147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327139, 33.030277, 24.229570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.382984, 33.425903, 24.210581>,  <29.416492, 33.663280, 24.199188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.382984, 33.425903, 24.210581>,  <29.327139, 33.030277, 24.229570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382984, 33.425903, 24.210581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255219, 0.010379, 0.966828,
		0.956750, -0.147100, -0.250980,
		0.139615, 0.989067, -0.047473,
		29.424870, 33.722622, 24.196339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831177, 33.247215, 24.760378>,  <29.327139, 33.030277, 24.229570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831177, 33.247215, 24.760378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.641623, 33.592209, 24.689333>,  <29.527889, 33.799206, 24.646706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.641623, 33.592209, 24.689333>,  <29.831177, 33.247215, 24.760378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641623, 33.592209, 24.689333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016560, 0.210390, 0.977478,
		0.880431, 0.460272, -0.113984,
		-0.473886, 0.862489, -0.177611,
		29.499456, 33.850956, 24.636049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192957, 33.758259, 25.109983>,  <29.831177, 33.247215, 24.760378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192957, 33.758259, 25.109983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823845, 33.889633, 25.029377>,  <29.602377, 33.968456, 24.981012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823845, 33.889633, 25.029377>,  <30.192957, 33.758259, 25.109983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823845, 33.889633, 25.029377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121028, 0.249464, 0.960791,
		0.365828, 0.910987, -0.190450,
		-0.922779, 0.328435, -0.201516,
		29.547010, 33.988163, 24.968922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215225, 34.377861, 25.384651>,  <30.192957, 33.758259, 25.109983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215225, 34.377861, 25.384651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823284, 34.302116, 25.359253>,  <29.588120, 34.256672, 25.344013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823284, 34.302116, 25.359253>,  <30.215225, 34.377861, 25.384651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823284, 34.302116, 25.359253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123534, 0.324803, 0.937680,
		-0.156934, 0.926632, -0.341651,
		-0.979853, -0.189359, -0.063498,
		29.529327, 34.245308, 25.340204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833914, 34.914162, 25.701620>,  <30.215225, 34.377861, 25.384651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833914, 34.914162, 25.701620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589981, 34.597157, 25.703671>,  <29.443623, 34.406952, 25.704901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589981, 34.597157, 25.703671>,  <29.833914, 34.914162, 25.701620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589981, 34.597157, 25.703671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098255, 0.082021, 0.991776,
		-0.786418, 0.604310, -0.127888,
		-0.609830, -0.792516, 0.005126,
		29.407032, 34.359402, 25.705208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526873, 34.985130, 26.359558>,  <29.833914, 34.914162, 25.701620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526873, 34.985130, 26.359558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403093, 34.620026, 26.252890>,  <29.328827, 34.400963, 26.188889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.403093, 34.620026, 26.252890>,  <29.526873, 34.985130, 26.359558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403093, 34.620026, 26.252890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018685, -0.274545, 0.961393,
		-0.950733, 0.302482, 0.067902,
		-0.309446, -0.912759, -0.266671,
		29.310259, 34.346199, 26.172888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839417, 34.945862, 26.658991>,  <29.526873, 34.985130, 26.359558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839417, 34.945862, 26.658991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.012726, 34.591213, 26.594282>,  <29.116711, 34.378422, 26.555456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.012726, 34.591213, 26.594282>,  <28.839417, 34.945862, 26.658991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012726, 34.591213, 26.594282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042330, -0.199316, 0.979020,
		-0.900268, -0.417334, -0.123889,
		0.433272, -0.886626, -0.161772,
		29.142708, 34.325226, 26.545750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567633, 34.467289, 27.091505>,  <28.839417, 34.945862, 26.658991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567633, 34.467289, 27.091505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.912138, 34.275951, 27.022900>,  <29.118841, 34.161148, 26.981735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.912138, 34.275951, 27.022900>,  <28.567633, 34.467289, 27.091505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912138, 34.275951, 27.022900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131724, -0.115832, 0.984496,
		-0.490791, -0.870502, -0.036753,
		0.861263, -0.478341, -0.171515,
		29.170517, 34.132450, 26.971445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.568439, 31.103043, 22.198132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.947872, 31.111673, 22.071812>,  <29.175531, 31.116852, 21.996019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.947872, 31.111673, 22.071812>,  <28.568439, 31.103043, 22.198132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947872, 31.111673, 22.071812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298395, 0.393844, -0.869395,
		0.105615, 0.918924, 0.380032,
		0.948581, 0.021578, -0.315798,
		29.232447, 31.118147, 21.977072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681805, 31.719851, 21.969145>,  <28.568439, 31.103043, 22.198132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681805, 31.719851, 21.969145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.961605, 31.508244, 21.776962>,  <29.129486, 31.381279, 21.661654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.961605, 31.508244, 21.776962>,  <28.681805, 31.719851, 21.969145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961605, 31.508244, 21.776962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188934, 0.511491, -0.838261,
		0.689203, 0.677140, 0.257840,
		0.699502, -0.529017, -0.480455,
		29.171455, 31.349539, 21.632826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074759, 32.169262, 21.566999>,  <28.681805, 31.719851, 21.969145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074759, 32.169262, 21.566999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138832, 31.821981, 21.379143>,  <29.177277, 31.613613, 21.266428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138832, 31.821981, 21.379143>,  <29.074759, 32.169262, 21.566999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138832, 31.821981, 21.379143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133120, 0.452437, -0.881805,
		0.978070, 0.203769, -0.043103,
		0.160184, -0.868204, -0.469641,
		29.186888, 31.561520, 21.238251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393190, 32.321270, 20.820211>,  <29.074759, 32.169262, 21.566999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393190, 32.321270, 20.820211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291534, 31.935610, 20.789663>,  <29.230541, 31.704214, 20.771334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291534, 31.935610, 20.789663>,  <29.393190, 32.321270, 20.820211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291534, 31.935610, 20.789663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277578, 0.148351, -0.949180,
		0.926479, -0.220025, -0.305328,
		-0.254139, -0.964148, -0.076370,
		29.215292, 31.646366, 20.766752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789095, 32.098118, 20.285995>,  <29.393190, 32.321270, 20.820211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789095, 32.098118, 20.285995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470772, 31.858454, 20.321098>,  <29.279778, 31.714657, 20.342159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470772, 31.858454, 20.321098>,  <29.789095, 32.098118, 20.285995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470772, 31.858454, 20.321098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164804, 0.074845, -0.983482,
		0.582693, -0.797125, -0.158306,
		-0.795807, -0.599158, 0.087757,
		29.232029, 31.678707, 20.347425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786535, 31.497475, 19.765688>,  <29.789095, 32.098118, 20.285995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786535, 31.497475, 19.765688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.400728, 31.523779, 19.867966>,  <29.169245, 31.539562, 19.929333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.400728, 31.523779, 19.867966>,  <29.786535, 31.497475, 19.765688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400728, 31.523779, 19.867966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254953, 0.019598, -0.966755,
		-0.068588, -0.997643, -0.002136,
		-0.964518, 0.065763, 0.255696,
		29.111372, 31.543509, 19.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400606, 30.962845, 19.340757>,  <29.786535, 31.497475, 19.765688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400606, 30.962845, 19.340757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119970, 31.217079, 19.469629>,  <28.951588, 31.369619, 19.546953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119970, 31.217079, 19.469629>,  <29.400606, 30.962845, 19.340757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119970, 31.217079, 19.469629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216812, 0.240291, -0.946178,
		-0.678796, -0.733682, -0.030783,
		-0.701591, 0.635587, 0.322180,
		28.909492, 31.407755, 19.566282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808035, 30.720982, 19.088257>,  <29.400606, 30.962845, 19.340757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808035, 30.720982, 19.088257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.722925, 31.103914, 19.166483>,  <28.671860, 31.333673, 19.213419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.722925, 31.103914, 19.166483>,  <28.808035, 30.720982, 19.088257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722925, 31.103914, 19.166483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397350, 0.098076, -0.912411,
		-0.892659, -0.271845, 0.359527,
		-0.212774, 0.957330, 0.195566,
		28.659094, 31.391113, 19.225153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208115, 30.863640, 18.782791>,  <28.808035, 30.720982, 19.088257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208115, 30.863640, 18.782791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.329395, 31.242411, 18.825489>,  <28.402164, 31.469673, 18.851107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.329395, 31.242411, 18.825489>,  <28.208115, 30.863640, 18.782791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329395, 31.242411, 18.825489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380628, 0.223038, -0.897428,
		-0.873608, 0.231474, 0.428053,
		0.303203, 0.946929, 0.106743,
		28.420357, 31.526489, 18.857512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635542, 31.172838, 18.691725>,  <28.208115, 30.863640, 18.782791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635542, 31.172838, 18.691725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.929991, 31.437166, 18.633152>,  <28.106661, 31.595762, 18.598009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.929991, 31.437166, 18.633152>,  <27.635542, 31.172838, 18.691725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929991, 31.437166, 18.633152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486337, 0.365935, -0.793453,
		-0.470744, 0.655294, 0.590754,
		0.736123, 0.660818, -0.146432,
		28.150827, 31.635412, 18.589222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255217, 31.833223, 18.546425>,  <27.635542, 31.172838, 18.691725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255217, 31.833223, 18.546425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.633039, 31.874744, 18.421822>,  <27.859734, 31.899658, 18.347059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.633039, 31.874744, 18.421822>,  <27.255217, 31.833223, 18.546425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633039, 31.874744, 18.421822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327851, 0.350324, -0.877375,
		0.018054, 0.930859, 0.364933,
		0.944557, 0.103804, -0.311507,
		27.916407, 31.905886, 18.328369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232813, 32.425098, 18.221069>,  <27.255217, 31.833223, 18.546425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232813, 32.425098, 18.221069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.560474, 32.253914, 18.068316>,  <27.757071, 32.151203, 17.976664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.560474, 32.253914, 18.068316>,  <27.232813, 32.425098, 18.221069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560474, 32.253914, 18.068316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300599, 0.246725, -0.921286,
		0.488497, 0.869468, 0.073460,
		0.819153, -0.427963, -0.381885,
		27.806221, 32.125526, 17.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594185, 32.961620, 17.774416>,  <27.232813, 32.425098, 18.221069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594185, 32.961620, 17.774416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.635344, 32.575954, 17.676600>,  <27.660038, 32.344555, 17.617908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.635344, 32.575954, 17.676600>,  <27.594185, 32.961620, 17.774416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635344, 32.575954, 17.676600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178456, 0.223965, -0.958120,
		0.978553, 0.142227, -0.149015,
		0.102897, -0.964163, -0.244543,
		27.666212, 32.286705, 17.603237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930836, 32.924000, 17.173540>,  <27.594185, 32.961620, 17.774416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930836, 32.924000, 17.173540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.756760, 32.564068, 17.161423>,  <27.652313, 32.348110, 17.154152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.756760, 32.564068, 17.161423>,  <27.930836, 32.924000, 17.173540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756760, 32.564068, 17.161423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033222, 0.017574, -0.999294,
		0.899725, -0.435889, 0.022246,
		-0.435190, -0.899829, -0.030293,
		27.626202, 32.294121, 17.152334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365219, 33.351757, 16.761328>,  <27.930836, 32.924000, 17.173540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365219, 33.351757, 16.761328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.387867, 33.743259, 16.682501>,  <28.401455, 33.978161, 16.635204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.387867, 33.743259, 16.682501>,  <28.365219, 33.351757, 16.761328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387867, 33.743259, 16.682501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066635, 0.200647, 0.977395,
		0.996170, -0.042208, 0.076579,
		0.056619, 0.978754, -0.197066,
		28.404852, 34.036884, 16.623381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010094, 33.715389, 17.159407>,  <28.365219, 33.351757, 16.761328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010094, 33.715389, 17.159407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747828, 33.998123, 17.053209>,  <28.590467, 34.167763, 16.989491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747828, 33.998123, 17.053209>,  <29.010094, 33.715389, 17.159407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747828, 33.998123, 17.053209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107281, 0.435269, 0.893886,
		0.747390, 0.557609, -0.361221,
		-0.655667, 0.706833, -0.265494,
		28.551126, 34.210175, 16.973560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301294, 34.305527, 17.488319>,  <29.010094, 33.715389, 17.159407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301294, 34.305527, 17.488319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.924921, 34.419704, 17.415478>,  <28.699097, 34.488213, 17.371773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.924921, 34.419704, 17.415478>,  <29.301294, 34.305527, 17.488319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924921, 34.419704, 17.415478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112549, 0.243572, 0.963330,
		0.319334, 0.926927, -0.197058,
		-0.940935, 0.285446, -0.182106,
		28.642641, 34.505337, 17.360846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239223, 34.940208, 17.821806>,  <29.301294, 34.305527, 17.488319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239223, 34.940208, 17.821806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863268, 34.807865, 17.788010>,  <28.637693, 34.728458, 17.767731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863268, 34.807865, 17.788010>,  <29.239223, 34.940208, 17.821806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863268, 34.807865, 17.788010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140875, 0.150295, 0.978553,
		-0.311064, 0.931635, -0.187871,
		-0.939890, -0.330859, -0.084493,
		28.581301, 34.708607, 17.762661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802189, 35.459454, 18.032177>,  <29.239223, 34.940208, 17.821806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802189, 35.459454, 18.032177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.637047, 35.098042, 18.078119>,  <28.537962, 34.881195, 18.105684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.637047, 35.098042, 18.078119>,  <28.802189, 35.459454, 18.032177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637047, 35.098042, 18.078119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119571, 0.178781, 0.976596,
		-0.902914, 0.389459, -0.181846,
		-0.412855, -0.903526, 0.114856,
		28.513191, 34.826984, 18.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446007, 35.463116, 18.748993>,  <28.802189, 35.459454, 18.032177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446007, 35.463116, 18.748993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.417393, 35.074795, 18.657410>,  <28.400225, 34.841801, 18.602459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.417393, 35.074795, 18.657410>,  <28.446007, 35.463116, 18.748993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417393, 35.074795, 18.657410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020177, -0.228092, 0.973431,
		-0.997234, 0.074256, -0.003271,
		-0.071537, -0.970804, -0.228959,
		28.395931, 34.783554, 18.588722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978003, 35.090099, 19.157652>,  <28.446007, 35.463116, 18.748993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978003, 35.090099, 19.157652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.170963, 34.766300, 19.023783>,  <28.286739, 34.572021, 18.943460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.170963, 34.766300, 19.023783>,  <27.978003, 35.090099, 19.157652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170963, 34.766300, 19.023783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077262, -0.419903, 0.904274,
		-0.872537, -0.410365, -0.265105,
		0.482400, -0.809495, -0.334675,
		28.315683, 34.523453, 18.923380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718828, 34.449875, 19.373991>,  <27.978003, 35.090099, 19.157652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718828, 34.449875, 19.373991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.071934, 34.281918, 19.289694>,  <28.283798, 34.181141, 19.239117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.071934, 34.281918, 19.289694>,  <27.718828, 34.449875, 19.373991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071934, 34.281918, 19.289694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087702, -0.293398, 0.951959,
		-0.461557, -0.858838, -0.222175,
		0.882765, -0.419898, -0.210741,
		28.336763, 34.155949, 19.226471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826271, 33.924778, 19.896580>,  <27.718828, 34.449875, 19.373991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826271, 33.924778, 19.896580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.196705, 33.947437, 19.747362>,  <28.418964, 33.961033, 19.657831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.196705, 33.947437, 19.747362>,  <27.826271, 33.924778, 19.896580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196705, 33.947437, 19.747362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375961, -0.222399, 0.899551,
		-0.032006, -0.973308, -0.227257,
		0.926082, 0.056649, -0.373044,
		28.474529, 33.964432, 19.635448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202461, 33.230965, 20.203882>,  <27.826271, 33.924778, 19.896580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202461, 33.230965, 20.203882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427406, 33.533558, 20.070324>,  <28.562374, 33.715115, 19.990189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427406, 33.533558, 20.070324>,  <28.202461, 33.230965, 20.203882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427406, 33.533558, 20.070324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537149, -0.027206, 0.843048,
		0.628665, -0.653451, -0.421642,
		0.562362, 0.756480, -0.333897,
		28.596115, 33.760502, 19.970156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800058, 32.914360, 20.222588>,  <28.202461, 33.230965, 20.203882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800058, 32.914360, 20.222588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.816828, 33.311543, 20.266901>,  <28.826889, 33.549854, 20.293489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.816828, 33.311543, 20.266901>,  <28.800058, 32.914360, 20.222588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816828, 33.311543, 20.266901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628514, -0.112404, 0.769633,
		0.776668, 0.037364, -0.628801,
		0.041923, 0.992960, 0.110784,
		28.829405, 33.609432, 20.300137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511789, 33.010201, 20.382439>,  <28.800058, 32.914360, 20.222588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511789, 33.010201, 20.382439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.313595, 33.338638, 20.495781>,  <29.194679, 33.535702, 20.563787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.313595, 33.338638, 20.495781>,  <29.511789, 33.010201, 20.382439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313595, 33.338638, 20.495781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465136, -0.024691, 0.884895,
		0.733582, 0.570253, -0.369688,
		-0.495486, 0.821098, 0.283358,
		29.164949, 33.584969, 20.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054394, 33.536240, 20.664558>,  <29.511789, 33.010201, 20.382439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054394, 33.536240, 20.664558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.700863, 33.625648, 20.828939>,  <29.488745, 33.679295, 20.927568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.700863, 33.625648, 20.828939>,  <30.054394, 33.536240, 20.664558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700863, 33.625648, 20.828939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428666, 0.035195, 0.902777,
		0.187331, 0.974062, -0.126924,
		-0.883829, 0.223526, 0.410954,
		29.435715, 33.692707, 20.952225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192930, 34.107361, 21.074997>,  <30.054394, 33.536240, 20.664558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192930, 34.107361, 21.074997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857088, 33.952797, 21.227707>,  <29.655582, 33.860058, 21.319332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857088, 33.952797, 21.227707>,  <30.192930, 34.107361, 21.074997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857088, 33.952797, 21.227707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366234, 0.116371, 0.923217,
		-0.401164, 0.914958, 0.043809,
		-0.839607, -0.386406, 0.381773,
		29.605206, 33.836876, 21.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670950, 34.660892, 20.883661>,  <30.192930, 34.107361, 21.074997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670950, 34.660892, 20.883661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008192, 34.875946, 20.879145>,  <31.210537, 35.004978, 20.876434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008192, 34.875946, 20.879145>,  <30.670950, 34.660892, 20.883661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008192, 34.875946, 20.879145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034725, -0.075383, -0.996550,
		-0.536628, 0.839803, -0.082225,
		0.843104, 0.537632, -0.011290,
		31.261124, 35.037235, 20.875757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587238, 35.173710, 20.399082>,  <30.670950, 34.660892, 20.883661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587238, 35.173710, 20.399082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984829, 35.145870, 20.432934>,  <31.223385, 35.129166, 20.453245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984829, 35.145870, 20.432934>,  <30.587238, 35.173710, 20.399082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984829, 35.145870, 20.432934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084534, -0.004304, -0.996411,
		0.069711, 0.997566, 0.001605,
		0.993979, -0.069597, 0.084629,
		31.283022, 35.124992, 20.458323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971745, 35.740894, 19.904898>,  <30.587238, 35.173710, 20.399082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971745, 35.740894, 19.904898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267868, 35.480145, 19.970631>,  <31.445543, 35.323696, 20.010071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267868, 35.480145, 19.970631>,  <30.971745, 35.740894, 19.904898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267868, 35.480145, 19.970631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245964, 0.035146, -0.968642,
		0.625654, 0.757515, 0.186355,
		0.740310, -0.651871, 0.164332,
		31.489962, 35.284584, 20.019930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653002, 36.165291, 19.749800>,  <30.971745, 35.740894, 19.904898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653002, 36.165291, 19.749800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705502, 35.769211, 19.730686>,  <31.737001, 35.531563, 19.719219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705502, 35.769211, 19.730686>,  <31.653002, 36.165291, 19.749800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705502, 35.769211, 19.730686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400807, 0.097088, -0.911004,
		0.906712, 0.100419, 0.409620,
		0.131251, -0.990197, -0.047782,
		31.744877, 35.472153, 19.716352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337078, 36.090122, 19.587034>,  <31.653002, 36.165291, 19.749800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337078, 36.090122, 19.587034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161137, 35.748528, 19.475870>,  <32.055573, 35.543571, 19.409172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161137, 35.748528, 19.475870>,  <32.337078, 36.090122, 19.587034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161137, 35.748528, 19.475870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563164, -0.021235, -0.826072,
		0.699556, -0.519856, 0.490277,
		-0.439850, -0.853990, -0.277909,
		32.029182, 35.492332, 19.392498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867100, 35.601204, 19.139185>,  <32.337078, 36.090122, 19.587034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867100, 35.601204, 19.139185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510128, 35.447601, 19.044432>,  <32.295944, 35.355438, 18.987579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510128, 35.447601, 19.044432>,  <32.867100, 35.601204, 19.139185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510128, 35.447601, 19.044432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277904, -0.054211, -0.959078,
		0.355450, -0.921738, 0.155096,
		-0.892426, -0.384006, -0.236885,
		32.242401, 35.332401, 18.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010166, 35.130154, 18.629513>,  <32.867100, 35.601204, 19.139185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010166, 35.130154, 18.629513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615681, 35.189178, 18.599548>,  <32.378990, 35.224594, 18.581570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615681, 35.189178, 18.599548>,  <33.010166, 35.130154, 18.629513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615681, 35.189178, 18.599548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048863, -0.172843, -0.983736,
		-0.158102, -0.973834, 0.163251,
		-0.986213, 0.147554, -0.074911,
		32.319817, 35.233448, 18.577074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121777, 34.316097, 18.692200>,  <33.010166, 35.130154, 18.629513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121777, 34.316097, 18.692200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508923, 34.247974, 18.618198>,  <33.741211, 34.207100, 18.573797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508923, 34.247974, 18.618198>,  <33.121777, 34.316097, 18.692200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508923, 34.247974, 18.618198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212391, 0.159819, 0.964027,
		-0.134610, -0.972345, 0.190855,
		0.967869, -0.170304, -0.185003,
		33.799282, 34.196884, 18.562696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246883, 33.855221, 19.280418>,  <33.121777, 34.316097, 18.692200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246883, 33.855221, 19.280418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589806, 34.014957, 19.150459>,  <33.795559, 34.110798, 19.072483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589806, 34.014957, 19.150459>,  <33.246883, 33.855221, 19.280418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589806, 34.014957, 19.150459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288010, 0.151064, 0.945637,
		0.426711, -0.904272, 0.014494,
		0.857303, 0.399339, -0.324900,
		33.846996, 34.134758, 19.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745857, 33.559456, 19.744549>,  <33.246883, 33.855221, 19.280418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745857, 33.559456, 19.744549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924240, 33.866116, 19.559778>,  <34.031269, 34.050110, 19.448915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924240, 33.866116, 19.559778>,  <33.745857, 33.559456, 19.744549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924240, 33.866116, 19.559778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583382, 0.142439, 0.799610,
		0.678814, -0.626071, -0.383726,
		0.445955, 0.766646, -0.461928,
		34.058025, 34.096111, 19.421200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530647, 33.407578, 19.818209>,  <33.745857, 33.559456, 19.744549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530647, 33.407578, 19.818209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453484, 33.798351, 19.781565>,  <34.407185, 34.032814, 19.759579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453484, 33.798351, 19.781565>,  <34.530647, 33.407578, 19.818209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453484, 33.798351, 19.781565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394262, 0.162669, 0.904487,
		0.898523, 0.138363, -0.416547,
		-0.192907, 0.976931, -0.091610,
		34.395611, 34.091431, 19.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117069, 33.673359, 20.057369>,  <34.530647, 33.407578, 19.818209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117069, 33.673359, 20.057369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888885, 34.001884, 20.058619>,  <34.751976, 34.199001, 20.059368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888885, 34.001884, 20.058619>,  <35.117069, 33.673359, 20.057369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888885, 34.001884, 20.058619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380841, 0.261147, 0.886996,
		0.727691, 0.507187, -0.461766,
		-0.570462, 0.821318, 0.003123,
		34.717747, 34.248280, 20.059555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571541, 34.231567, 20.215841>,  <35.117069, 33.673359, 20.057369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571541, 34.231567, 20.215841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189659, 34.295074, 20.316500>,  <34.960529, 34.333179, 20.376896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189659, 34.295074, 20.316500>,  <35.571541, 34.231567, 20.215841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189659, 34.295074, 20.316500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290161, 0.309535, 0.905536,
		0.065873, 0.937540, -0.341583,
		-0.954708, 0.158764, 0.251648,
		34.903248, 34.342705, 20.391994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597881, 34.866196, 20.667480>,  <35.571541, 34.231567, 20.215841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597881, 34.866196, 20.667480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226368, 34.734200, 20.734968>,  <35.003460, 34.655003, 20.775461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226368, 34.734200, 20.734968>,  <35.597881, 34.866196, 20.667480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226368, 34.734200, 20.734968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023836, 0.401104, 0.915722,
		-0.369856, 0.854529, -0.364673,
		-0.928783, -0.329993, 0.168719,
		34.947735, 34.635201, 20.785583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.682278, 30.899044, 17.039406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348442, 30.971935, 17.247349>,  <30.148140, 31.015671, 17.372114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348442, 30.971935, 17.247349>,  <30.682278, 30.899044, 17.039406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348442, 30.971935, 17.247349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482391, -0.213939, 0.849429,
		0.266009, 0.959699, 0.090645,
		-0.834589, 0.182229, 0.519860,
		30.098066, 31.026604, 17.403307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923468, 31.227034, 17.514446>,  <30.682278, 30.899044, 17.039406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923468, 31.227034, 17.514446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577915, 31.090420, 17.662535>,  <30.370584, 31.008451, 17.751389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577915, 31.090420, 17.662535>,  <30.923468, 31.227034, 17.514446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577915, 31.090420, 17.662535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463615, -0.251810, 0.849501,
		-0.196910, 0.905508, 0.375875,
		-0.863879, -0.341537, 0.370223,
		30.318752, 30.987959, 17.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928352, 31.481236, 18.201015>,  <30.923468, 31.227034, 17.514446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928352, 31.481236, 18.201015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680481, 31.168510, 18.173409>,  <30.531757, 30.980875, 18.156843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680481, 31.168510, 18.173409>,  <30.928352, 31.481236, 18.201015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680481, 31.168510, 18.173409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332132, -0.340895, 0.879477,
		-0.711116, 0.522070, 0.470911,
		-0.619679, -0.781814, -0.069019,
		30.494577, 30.933966, 18.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621937, 31.557199, 18.848890>,  <30.928352, 31.481236, 18.201015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621937, 31.557199, 18.848890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.571018, 31.183914, 18.714483>,  <30.540468, 30.959942, 18.633839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.571018, 31.183914, 18.714483>,  <30.621937, 31.557199, 18.848890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571018, 31.183914, 18.714483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404442, -0.358166, 0.841513,
		-0.905661, -0.028779, 0.423024,
		-0.127294, -0.933214, -0.336017,
		30.532829, 30.903950, 18.613678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336231, 31.175289, 19.438210>,  <30.621937, 31.557199, 18.848890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336231, 31.175289, 19.438210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496319, 30.888128, 19.210369>,  <30.592371, 30.715832, 19.073666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496319, 30.888128, 19.210369>,  <30.336231, 31.175289, 19.438210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496319, 30.888128, 19.210369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466778, -0.375188, 0.800845,
		-0.788634, -0.586389, 0.184943,
		0.400218, -0.717900, -0.569600,
		30.616385, 30.672758, 19.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276325, 30.652142, 19.904320>,  <30.336231, 31.175289, 19.438210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276325, 30.652142, 19.904320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535467, 30.506330, 19.636768>,  <30.690952, 30.418844, 19.476236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535467, 30.506330, 19.636768>,  <30.276325, 30.652142, 19.904320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535467, 30.506330, 19.636768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465682, -0.505366, 0.726460,
		-0.602846, -0.782128, -0.157650,
		0.647855, -0.364529, -0.668881,
		30.729824, 30.396973, 19.436104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290876, 29.909836, 20.007812>,  <30.276325, 30.652142, 19.904320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290876, 29.909836, 20.007812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638437, 29.996376, 19.829735>,  <30.846973, 30.048300, 19.722889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638437, 29.996376, 19.829735>,  <30.290876, 29.909836, 20.007812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638437, 29.996376, 19.829735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482178, -0.573197, 0.662533,
		-0.111845, -0.790340, -0.602372,
		0.868904, 0.216350, -0.445195,
		30.899109, 30.061281, 19.696177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647049, 29.280582, 19.965105>,  <30.290876, 29.909836, 20.007812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647049, 29.280582, 19.965105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.927975, 29.563612, 19.933880>,  <31.096531, 29.733429, 19.915146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.927975, 29.563612, 19.933880>,  <30.647049, 29.280582, 19.965105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927975, 29.563612, 19.933880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533977, -0.451115, 0.715097,
		0.470770, -0.543906, -0.694653,
		0.702314, 0.707575, -0.078062,
		31.138668, 29.775885, 19.910461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337612, 28.893095, 19.697205>,  <30.647049, 29.280582, 19.965105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337612, 28.893095, 19.697205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423546, 29.227526, 19.899124>,  <31.475105, 29.428185, 20.020277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423546, 29.227526, 19.899124>,  <31.337612, 28.893095, 19.697205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423546, 29.227526, 19.899124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730920, -0.480453, 0.484686,
		0.647768, 0.264842, -0.714322,
		0.214833, 0.836076, 0.504801,
		31.487995, 29.478348, 20.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996368, 28.812557, 19.861572>,  <31.337612, 28.893095, 19.697205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996368, 28.812557, 19.861572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.914846, 29.115465, 20.109768>,  <31.865932, 29.297209, 20.258686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.914846, 29.115465, 20.109768>,  <31.996368, 28.812557, 19.861572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914846, 29.115465, 20.109768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585882, -0.413432, 0.697006,
		0.784350, 0.505589, -0.359409,
		-0.203807, 0.757268, 0.620490,
		31.853704, 29.342646, 20.295916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546261, 28.812393, 20.236832>,  <31.996368, 28.812557, 19.861572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546261, 28.812393, 20.236832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304211, 29.034374, 20.465166>,  <32.158981, 29.167562, 20.602167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304211, 29.034374, 20.465166>,  <32.546261, 28.812393, 20.236832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304211, 29.034374, 20.465166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492308, -0.302656, 0.816108,
		0.625667, 0.774874, -0.090063,
		-0.605122, 0.554951, 0.570839,
		32.122673, 29.200859, 20.636417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937653, 29.294954, 20.730339>,  <32.546261, 28.812393, 20.236832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937653, 29.294954, 20.730339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577854, 29.228973, 20.892179>,  <32.361977, 29.189384, 20.989283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577854, 29.228973, 20.892179>,  <32.937653, 29.294954, 20.730339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577854, 29.228973, 20.892179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430563, -0.177092, 0.885017,
		-0.074333, 0.970273, 0.230315,
		-0.899495, -0.164951, 0.404599,
		32.308006, 29.179487, 21.013559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245678, 30.004414, 20.869343>,  <32.937653, 29.294954, 20.730339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245678, 30.004414, 20.869343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608112, 30.082582, 20.719244>,  <33.825573, 30.129484, 20.629185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608112, 30.082582, 20.719244>,  <33.245678, 30.004414, 20.869343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608112, 30.082582, 20.719244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401563, 0.117948, -0.908205,
		-0.133224, 0.973601, 0.185346,
		0.906090, 0.195423, -0.375248,
		33.879940, 30.141209, 20.606670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093975, 30.362738, 20.323307>,  <33.245678, 30.004414, 20.869343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093975, 30.362738, 20.323307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480675, 30.280834, 20.262020>,  <33.712692, 30.231691, 20.225248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480675, 30.280834, 20.262020>,  <33.093975, 30.362738, 20.323307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480675, 30.280834, 20.262020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122746, 0.154083, -0.980404,
		0.224354, 0.966609, 0.123826,
		0.966747, -0.204758, -0.153216,
		33.770699, 30.219406, 20.216055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237640, 30.921759, 20.021904>,  <33.093975, 30.362738, 20.323307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237640, 30.921759, 20.021904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.501404, 30.635523, 19.929724>,  <33.659664, 30.463781, 19.874414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.501404, 30.635523, 19.929724>,  <33.237640, 30.921759, 20.021904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501404, 30.635523, 19.929724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087451, 0.231447, -0.968909,
		0.746679, 0.659062, 0.090039,
		0.659411, -0.715590, -0.230452,
		33.699226, 30.420845, 19.860588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659451, 31.275959, 19.679037>,  <33.237640, 30.921759, 20.021904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659451, 31.275959, 19.679037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.721466, 30.900700, 19.555204>,  <33.758675, 30.675545, 19.480906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.721466, 30.900700, 19.555204>,  <33.659451, 31.275959, 19.679037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721466, 30.900700, 19.555204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122978, 0.329260, -0.936197,
		0.980224, 0.107075, 0.166419,
		0.155038, -0.938149, -0.309581,
		33.767979, 30.619255, 19.462330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307205, 31.285612, 19.331131>,  <33.659451, 31.275959, 19.679037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307205, 31.285612, 19.331131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092972, 30.970701, 19.208925>,  <33.964432, 30.781755, 19.135601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092972, 30.970701, 19.208925>,  <34.307205, 31.285612, 19.331131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092972, 30.970701, 19.208925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172715, 0.252012, -0.952187,
		0.826629, -0.562746, 0.001000,
		-0.535587, -0.787278, -0.305515,
		33.932297, 30.734518, 19.117271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784042, 30.914103, 18.890474>,  <34.307205, 31.285612, 19.331131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784042, 30.914103, 18.890474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.423622, 30.785063, 18.774519>,  <34.207371, 30.707638, 18.704947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.423622, 30.785063, 18.774519>,  <34.784042, 30.914103, 18.890474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423622, 30.785063, 18.774519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268639, 0.109605, -0.956985,
		0.340498, -0.940167, -0.012097,
		-0.901051, -0.322602, -0.289886,
		34.153305, 30.688282, 18.687553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948399, 30.428799, 18.355520>,  <34.784042, 30.914103, 18.890474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948399, 30.428799, 18.355520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563503, 30.529541, 18.314215>,  <34.332565, 30.589987, 18.289431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563503, 30.529541, 18.314215>,  <34.948399, 30.428799, 18.355520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563503, 30.529541, 18.314215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142898, 0.144499, -0.979132,
		-0.231679, -0.956916, -0.175032,
		-0.962240, 0.251856, -0.103264,
		34.274830, 30.605099, 18.283236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942204, 30.174408, 17.783401>,  <34.948399, 30.428799, 18.355520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942204, 30.174408, 17.783401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.619068, 30.407421, 17.819304>,  <34.425186, 30.547228, 17.840845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.619068, 30.407421, 17.819304>,  <34.942204, 30.174408, 17.783401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619068, 30.407421, 17.819304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021089, 0.123619, -0.992106,
		-0.589029, -0.803352, -0.087579,
		-0.807837, 0.582533, 0.089757,
		34.376717, 30.582180, 17.846231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436356, 29.922176, 17.188988>,  <34.942204, 30.174408, 17.783401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436356, 29.922176, 17.188988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.324688, 30.292219, 17.291937>,  <34.257687, 30.514244, 17.353706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.324688, 30.292219, 17.291937>,  <34.436356, 29.922176, 17.188988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324688, 30.292219, 17.291937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248981, 0.189125, -0.949863,
		-0.927401, -0.329254, 0.177536,
		-0.279170, 0.925107, 0.257373,
		34.240936, 30.569752, 17.369148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669327, 29.956732, 16.954504>,  <34.436356, 29.922176, 17.188988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669327, 29.956732, 16.954504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.836826, 30.317614, 16.995834>,  <33.937328, 30.534142, 17.020632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.836826, 30.317614, 16.995834>,  <33.669327, 29.956732, 16.954504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836826, 30.317614, 16.995834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290427, 0.240861, -0.926088,
		-0.860406, 0.357793, 0.362885,
		0.418752, 0.902203, 0.103325,
		33.962452, 30.588274, 17.026833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175465, 30.408545, 16.916016>,  <33.669327, 29.956732, 16.954504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175465, 30.408545, 16.916016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504219, 30.615049, 16.819706>,  <33.701473, 30.738953, 16.761919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504219, 30.615049, 16.819706>,  <33.175465, 30.408545, 16.916016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504219, 30.615049, 16.819706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457879, 0.347257, -0.818388,
		-0.338893, 0.782869, 0.521792,
		0.821887, 0.516263, -0.240776,
		33.750786, 30.769928, 16.747473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949932, 31.131842, 16.789635>,  <33.175465, 30.408545, 16.916016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949932, 31.131842, 16.789635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.314236, 31.096245, 16.628336>,  <33.532818, 31.074886, 16.531557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.314236, 31.096245, 16.628336>,  <32.949932, 31.131842, 16.789635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314236, 31.096245, 16.628336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337187, 0.403471, -0.850597,
		0.238392, 0.910655, 0.337457,
		0.910755, -0.088990, -0.403246,
		33.587463, 31.069548, 16.507362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018867, 31.665247, 16.388247>,  <32.949932, 31.131842, 16.789635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018867, 31.665247, 16.388247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.312344, 31.443638, 16.230892>,  <33.488430, 31.310673, 16.136480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.312344, 31.443638, 16.230892>,  <33.018867, 31.665247, 16.388247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312344, 31.443638, 16.230892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340698, 0.200957, -0.918445,
		0.587892, 0.807884, -0.041313,
		0.733694, -0.554022, -0.393386,
		33.532452, 31.277431, 16.112877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320114, 32.034607, 15.734218>,  <33.018867, 31.665247, 16.388247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320114, 32.034607, 15.734218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.422852, 31.650015, 15.695046>,  <33.484493, 31.419260, 15.671544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.422852, 31.650015, 15.695046>,  <33.320114, 32.034607, 15.734218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422852, 31.650015, 15.695046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294890, 0.018530, -0.955352,
		0.920366, 0.274251, -0.278772,
		0.256841, -0.961480, -0.097928,
		33.499905, 31.361570, 15.665668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680489, 32.635044, 16.205465>,  <33.320114, 32.034607, 15.734218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680489, 32.635044, 16.205465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.616970, 33.004692, 16.066446>,  <33.578857, 33.226482, 15.983035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.616970, 33.004692, 16.066446>,  <33.680489, 32.635044, 16.205465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616970, 33.004692, 16.066446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274834, 0.379473, 0.883440,
		0.948288, 0.044769, -0.314237,
		-0.158795, 0.924119, -0.347546,
		33.569332, 33.281929, 15.962183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276661, 32.994900, 16.399731>,  <33.680489, 32.635044, 16.205465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276661, 32.994900, 16.399731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.000816, 33.274845, 16.325304>,  <33.835308, 33.442814, 16.280649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.000816, 33.274845, 16.325304>,  <34.276661, 32.994900, 16.399731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000816, 33.274845, 16.325304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248377, 0.469933, 0.847037,
		0.680249, 0.537916, -0.497903,
		-0.689616, 0.699864, -0.186065,
		33.793930, 33.484806, 16.269484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612495, 33.571110, 16.543993>,  <34.276661, 32.994900, 16.399731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612495, 33.571110, 16.543993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218857, 33.639347, 16.563801>,  <33.982674, 33.680290, 16.575686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218857, 33.639347, 16.563801>,  <34.612495, 33.571110, 16.543993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218857, 33.639347, 16.563801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113207, 0.387479, 0.914901,
		0.136891, 0.905956, -0.400629,
		-0.984096, 0.170596, 0.049518,
		33.923630, 33.690525, 16.578655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621395, 34.228649, 16.737766>,  <34.612495, 33.571110, 16.543993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621395, 34.228649, 16.737766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.276325, 34.046082, 16.824917>,  <34.069283, 33.936543, 16.877207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.276325, 34.046082, 16.824917>,  <34.621395, 34.228649, 16.737766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276325, 34.046082, 16.824917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019089, 0.401107, 0.915832,
		-0.505393, 0.794228, -0.337314,
		-0.862678, -0.456416, 0.217878,
		34.017521, 33.909157, 16.890280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219585, 34.818295, 16.970778>,  <34.621395, 34.228649, 16.737766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219585, 34.818295, 16.970778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.067074, 34.477867, 17.115175>,  <33.975567, 34.273613, 17.201813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.067074, 34.477867, 17.115175>,  <34.219585, 34.818295, 16.970778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067074, 34.477867, 17.115175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080156, 0.358584, 0.930050,
		-0.920980, 0.383540, -0.068501,
		-0.381275, -0.851067, 0.360992,
		33.952690, 34.222546, 17.223473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694889, 34.966995, 17.517550>,  <34.219585, 34.818295, 16.970778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694889, 34.966995, 17.517550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786777, 34.584709, 17.591127>,  <33.841911, 34.355339, 17.635275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786777, 34.584709, 17.591127>,  <33.694889, 34.966995, 17.517550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786777, 34.584709, 17.591127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001569, 0.189364, 0.981906,
		-0.973255, -0.225275, 0.045001,
		0.229720, -0.955716, 0.183946,
		33.855694, 34.297993, 17.646311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196934, 34.709156, 18.009922>,  <33.694889, 34.966995, 17.517550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196934, 34.709156, 18.009922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518536, 34.471714, 18.023859>,  <33.711498, 34.329250, 18.032221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518536, 34.471714, 18.023859>,  <33.196934, 34.709156, 18.009922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518536, 34.471714, 18.023859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021026, 0.086942, 0.995991,
		-0.594253, -0.800048, 0.082383,
		0.804003, -0.593603, 0.034844,
		33.759735, 34.293633, 18.034311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488026, 34.457554, 18.130276>,  <33.196934, 34.709156, 18.009922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488026, 34.457554, 18.130276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.255634, 34.781677, 18.160908>,  <32.116199, 34.976151, 18.179287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.255634, 34.781677, 18.160908>,  <32.488026, 34.457554, 18.130276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255634, 34.781677, 18.160908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375054, -0.183023, -0.908756,
		-0.722356, -0.556690, 0.410242,
		-0.580979, 0.810308, 0.076580,
		32.081341, 35.024769, 18.183882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847307, 34.193703, 17.933357>,  <32.488026, 34.457554, 18.130276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847307, 34.193703, 17.933357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859644, 34.589668, 17.878036>,  <31.867046, 34.827248, 17.844843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859644, 34.589668, 17.878036>,  <31.847307, 34.193703, 17.933357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859644, 34.589668, 17.878036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473916, -0.107344, -0.874003,
		-0.880030, 0.092500, 0.465823,
		0.030842, 0.989910, -0.138303,
		31.868896, 34.886642, 17.836546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234892, 34.381317, 17.863520>,  <31.847307, 34.193703, 17.933357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234892, 34.381317, 17.863520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.419996, 34.676777, 17.667458>,  <31.531059, 34.854053, 17.549820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.419996, 34.676777, 17.667458>,  <31.234892, 34.381317, 17.863520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419996, 34.676777, 17.667458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642190, -0.101829, -0.759751,
		-0.611099, 0.666359, 0.427228,
		0.462763, 0.738645, -0.490157,
		31.558825, 34.898369, 17.520411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686026, 34.717533, 17.516720>,  <31.234892, 34.381317, 17.863520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686026, 34.717533, 17.516720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993444, 34.883286, 17.321733>,  <31.177896, 34.982738, 17.204742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993444, 34.883286, 17.321733>,  <30.686026, 34.717533, 17.516720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993444, 34.883286, 17.321733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514459, -0.052686, -0.855895,
		-0.380353, 0.908575, 0.172693,
		0.768546, 0.414385, -0.487464,
		31.224009, 35.007603, 17.175495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338749, 35.031055, 17.058195>,  <30.686026, 34.717533, 17.516720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338749, 35.031055, 17.058195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708927, 34.983803, 16.914196>,  <30.931034, 34.955452, 16.827797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708927, 34.983803, 16.914196>,  <30.338749, 35.031055, 17.058195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708927, 34.983803, 16.914196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377844, -0.217403, -0.899983,
		0.028053, 0.968907, -0.245830,
		0.925444, -0.118132, -0.359997,
		30.986561, 34.948364, 16.806196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319576, 35.375954, 16.375240>,  <30.338749, 35.031055, 17.058195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319576, 35.375954, 16.375240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637350, 35.134689, 16.346762>,  <30.828014, 34.989929, 16.329674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637350, 35.134689, 16.346762>,  <30.319576, 35.375954, 16.375240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637350, 35.134689, 16.346762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265921, -0.240041, -0.933631,
		0.546043, 0.760640, -0.351091,
		0.794433, -0.603165, -0.071198,
		30.875679, 34.953739, 16.325403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637457, 35.484406, 15.728150>,  <30.319576, 35.375954, 16.375240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637457, 35.484406, 15.728150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.761106, 35.123535, 15.848495>,  <30.835297, 34.907013, 15.920703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.761106, 35.123535, 15.848495>,  <30.637457, 35.484406, 15.728150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761106, 35.123535, 15.848495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236381, -0.379319, -0.894562,
		0.921176, 0.205414, -0.330514,
		0.309126, -0.902176, 0.300864,
		30.853844, 34.852882, 15.938755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024117, 35.148003, 15.104123>,  <30.637457, 35.484406, 15.728150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024117, 35.148003, 15.104123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905916, 34.857868, 15.352823>,  <30.834995, 34.683788, 15.502043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905916, 34.857868, 15.352823>,  <31.024117, 35.148003, 15.104123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905916, 34.857868, 15.352823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241607, -0.572917, -0.783194,
		0.924286, -0.381653, -0.005948,
		-0.295501, -0.725332, 0.621750,
		30.817266, 34.640270, 15.539349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071100, 34.521629, 14.694949>,  <31.024117, 35.148003, 15.104123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071100, 34.521629, 14.694949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875576, 34.384346, 15.015766>,  <30.758263, 34.301975, 15.208257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875576, 34.384346, 15.015766>,  <31.071100, 34.521629, 14.694949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875576, 34.384346, 15.015766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482874, -0.659245, -0.576393,
		0.726566, -0.669032, 0.156518,
		-0.488809, -0.343210, 0.802043,
		30.728933, 34.281384, 15.256379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.075684, 34.164127, 31.319599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826748, 33.921436, 31.121784>,  <32.677387, 33.775822, 31.003096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826748, 33.921436, 31.121784>,  <33.075684, 34.164127, 31.319599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826748, 33.921436, 31.121784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024356, 0.616481, -0.786993,
		0.782365, -0.501825, -0.368886,
		-0.622344, -0.606731, -0.494536,
		32.640045, 33.739418, 30.973423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312054, 34.035587, 30.673439>,  <33.075684, 34.164127, 31.319599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312054, 34.035587, 30.673439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913082, 34.028633, 30.645630>,  <32.673698, 34.024460, 30.628944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913082, 34.028633, 30.645630>,  <33.312054, 34.035587, 30.673439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913082, 34.028633, 30.645630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046615, 0.579472, -0.813658,
		0.054432, -0.814807, -0.577171,
		-0.997429, -0.017384, -0.069525,
		32.613853, 34.023418, 30.624773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099693, 33.857212, 29.998940>,  <33.312054, 34.035587, 30.673439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099693, 33.857212, 29.998940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742680, 33.994068, 30.116459>,  <32.528469, 34.076183, 30.186970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742680, 33.994068, 30.116459>,  <33.099693, 33.857212, 29.998940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742680, 33.994068, 30.116459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130547, 0.427566, -0.894508,
		-0.431665, -0.836736, -0.336953,
		-0.892537, 0.342140, 0.293799,
		32.474918, 34.096710, 30.204599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575211, 33.591244, 29.457075>,  <33.099693, 33.857212, 29.998940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575211, 33.591244, 29.457075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389153, 33.890209, 29.646818>,  <32.277519, 34.069588, 29.760664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389153, 33.890209, 29.646818>,  <32.575211, 33.591244, 29.457075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389153, 33.890209, 29.646818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223043, 0.419616, -0.879872,
		-0.856676, -0.515069, -0.028477,
		-0.465144, 0.747413, 0.474357,
		32.249611, 34.114433, 29.789125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880650, 33.727375, 29.148487>,  <32.575211, 33.591244, 29.457075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880650, 33.727375, 29.148487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984526, 34.065472, 29.335306>,  <32.046852, 34.268330, 29.447397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984526, 34.065472, 29.335306>,  <31.880650, 33.727375, 29.148487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984526, 34.065472, 29.335306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169790, 0.516070, -0.839549,
		-0.950648, 0.138725, 0.277532,
		0.259692, 0.845238, 0.467047,
		32.062435, 34.319042, 29.475420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426558, 34.201275, 28.907600>,  <31.880650, 33.727375, 29.148487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426558, 34.201275, 28.907600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752485, 34.399391, 29.028103>,  <31.948042, 34.518261, 29.100405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752485, 34.399391, 29.028103>,  <31.426558, 34.201275, 28.907600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752485, 34.399391, 29.028103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081360, 0.612217, -0.786493,
		-0.573979, 0.616339, 0.539143,
		0.814818, 0.495295, 0.301254,
		31.996931, 34.547981, 29.118479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264990, 34.819195, 28.665510>,  <31.426558, 34.201275, 28.907600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264990, 34.819195, 28.665510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648708, 34.899075, 28.745382>,  <31.878939, 34.947002, 28.793304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648708, 34.899075, 28.745382>,  <31.264990, 34.819195, 28.665510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648708, 34.899075, 28.745382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030827, 0.628794, -0.776960,
		-0.280716, 0.751490, 0.597044,
		0.959296, 0.199700, 0.199679,
		31.936497, 34.958984, 28.805286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306543, 35.509983, 28.473490>,  <31.264990, 34.819195, 28.665510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306543, 35.509983, 28.473490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690582, 35.399666, 28.492043>,  <31.921005, 35.333477, 28.503174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690582, 35.399666, 28.492043>,  <31.306543, 35.509983, 28.473490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690582, 35.399666, 28.492043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158407, 0.399604, -0.902898,
		0.230476, 0.874218, 0.427346,
		0.960098, -0.275790, 0.046383,
		31.978611, 35.316929, 28.505957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747768, 36.054794, 28.162539>,  <31.306543, 35.509983, 28.473490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747768, 36.054794, 28.162539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911028, 35.690472, 28.137751>,  <32.008984, 35.471878, 28.122877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911028, 35.690472, 28.137751>,  <31.747768, 36.054794, 28.162539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911028, 35.690472, 28.137751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255081, 0.178960, -0.950214,
		0.876554, 0.372023, 0.305373,
		0.408151, -0.910809, -0.061972,
		32.033474, 35.417229, 28.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398827, 36.191761, 27.897255>,  <31.747768, 36.054794, 28.162539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398827, 36.191761, 27.897255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300964, 35.809814, 27.829865>,  <32.242249, 35.580647, 27.789431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300964, 35.809814, 27.829865>,  <32.398827, 36.191761, 27.897255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300964, 35.809814, 27.829865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298368, 0.091186, -0.950085,
		0.922563, -0.282708, 0.262591,
		-0.244652, -0.954862, -0.168476,
		32.227570, 35.523357, 27.779322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928471, 35.978554, 27.473057>,  <32.398827, 36.191761, 27.897255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928471, 35.978554, 27.473057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633163, 35.713501, 27.422655>,  <32.455978, 35.554470, 27.392414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633163, 35.713501, 27.422655>,  <32.928471, 35.978554, 27.473057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633163, 35.713501, 27.422655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217347, -0.056861, -0.974437,
		0.638527, -0.746785, 0.186000,
		-0.738271, -0.662630, -0.126004,
		32.411682, 35.514713, 27.384853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228092, 35.559528, 26.973194>,  <32.928471, 35.978554, 27.473057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228092, 35.559528, 26.973194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841915, 35.456696, 26.956074>,  <32.610210, 35.394997, 26.945801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841915, 35.456696, 26.956074>,  <33.228092, 35.559528, 26.973194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841915, 35.456696, 26.956074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066347, -0.083626, -0.994286,
		0.252030, -0.962765, 0.097793,
		-0.965442, -0.257079, -0.042800,
		32.552284, 35.379574, 26.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717415, 35.032860, 26.898777>,  <33.228092, 35.559528, 26.973194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717415, 35.032860, 26.898777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055302, 35.220203, 26.795172>,  <34.258034, 35.332611, 26.733009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055302, 35.220203, 26.795172>,  <33.717415, 35.032860, 26.898777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055302, 35.220203, 26.795172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360232, -0.139622, 0.922355,
		0.395830, -0.872436, -0.286660,
		0.844720, 0.468359, -0.259013,
		34.308716, 35.360710, 26.717468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237988, 34.506931, 27.013805>,  <33.717415, 35.032860, 26.898777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237988, 34.506931, 27.013805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396477, 34.873451, 27.037132>,  <34.491570, 35.093365, 27.051128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396477, 34.873451, 27.037132>,  <34.237988, 34.506931, 27.013805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396477, 34.873451, 27.037132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273367, -0.178363, 0.945229,
		0.876516, -0.358577, -0.321158,
		0.396220, 0.916302, 0.058315,
		34.515343, 35.148342, 27.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836922, 34.369183, 27.375854>,  <34.237988, 34.506931, 27.013805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836922, 34.369183, 27.375854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807602, 34.767796, 27.391594>,  <34.790012, 35.006962, 27.401037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807602, 34.767796, 27.391594>,  <34.836922, 34.369183, 27.375854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807602, 34.767796, 27.391594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278832, -0.017404, 0.960182,
		0.957539, 0.081350, -0.276590,
		-0.073297, 0.996534, 0.039347,
		34.785614, 35.066757, 27.403399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455441, 34.628887, 27.714535>,  <34.836922, 34.369183, 27.375854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455441, 34.628887, 27.714535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185001, 34.921127, 27.752739>,  <35.022739, 35.096470, 27.775661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185001, 34.921127, 27.752739>,  <35.455441, 34.628887, 27.714535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185001, 34.921127, 27.752739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277225, 0.132131, 0.951676,
		0.682671, 0.669903, -0.291873,
		-0.676096, 0.730597, 0.095512,
		34.982174, 35.140305, 27.781393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816479, 35.195217, 27.983753>,  <35.455441, 34.628887, 27.714535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816479, 35.195217, 27.983753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428905, 35.220871, 28.079304>,  <35.196362, 35.236263, 28.136633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428905, 35.220871, 28.079304>,  <35.816479, 35.195217, 27.983753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428905, 35.220871, 28.079304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247215, 0.221303, 0.943350,
		0.007633, 0.973094, -0.230281,
		-0.968930, 0.064130, 0.238875,
		35.138226, 35.240108, 28.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833950, 35.561661, 28.564037>,  <35.816479, 35.195217, 27.983753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833950, 35.561661, 28.564037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458885, 35.427227, 28.599426>,  <35.233845, 35.346565, 28.620659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458885, 35.427227, 28.599426>,  <35.833950, 35.561661, 28.564037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458885, 35.427227, 28.599426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103327, -0.026542, 0.994293,
		-0.331822, 0.941456, 0.059614,
		-0.937666, -0.336088, 0.088471,
		35.177586, 35.326401, 28.625967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509075, 35.935410, 29.176241>,  <35.833950, 35.561661, 28.564037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509075, 35.935410, 29.176241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307491, 35.600674, 29.090706>,  <35.186543, 35.399834, 29.039385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307491, 35.600674, 29.090706>,  <35.509075, 35.935410, 29.176241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307491, 35.600674, 29.090706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014689, -0.239234, 0.970851,
		-0.863602, 0.492412, 0.108272,
		-0.503961, -0.836838, -0.213836,
		35.156303, 35.349621, 29.026556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998104, 35.966419, 29.641356>,  <35.509075, 35.935410, 29.176241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998104, 35.966419, 29.641356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041222, 35.584251, 29.531410>,  <35.067093, 35.354950, 29.465443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041222, 35.584251, 29.531410>,  <34.998104, 35.966419, 29.641356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041222, 35.584251, 29.531410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116116, -0.262484, 0.957924,
		-0.987368, -0.135179, 0.082645,
		0.107798, -0.955421, -0.274865,
		35.073563, 35.297626, 29.448950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499584, 35.617599, 29.966080>,  <34.998104, 35.966419, 29.641356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499584, 35.617599, 29.966080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780247, 35.352135, 29.862360>,  <34.948643, 35.192856, 29.800129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780247, 35.352135, 29.862360>,  <34.499584, 35.617599, 29.966080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780247, 35.352135, 29.862360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047772, -0.319282, 0.946455,
		-0.710913, -0.676473, -0.192321,
		0.701655, -0.663660, -0.259298,
		34.990742, 35.153038, 29.784571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268089, 35.026649, 30.223999>,  <34.499584, 35.617599, 29.966080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268089, 35.026649, 30.223999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641258, 34.897850, 30.159536>,  <34.865158, 34.820572, 30.120859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641258, 34.897850, 30.159536>,  <34.268089, 35.026649, 30.223999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641258, 34.897850, 30.159536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005078, -0.459284, 0.888275,
		-0.360040, -0.827873, -0.430112,
		0.932923, -0.321999, -0.161156,
		34.921135, 34.801250, 30.111189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286583, 34.273872, 30.296082>,  <34.268089, 35.026649, 30.223999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286583, 34.273872, 30.296082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652939, 34.420792, 30.360874>,  <34.872753, 34.508942, 30.399750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652939, 34.420792, 30.360874>,  <34.286583, 34.273872, 30.296082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652939, 34.420792, 30.360874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050183, -0.505112, 0.861594,
		0.398278, -0.780997, -0.481059,
		0.915891, 0.367295, 0.161982,
		34.927708, 34.530979, 30.409470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779110, 33.686016, 30.461279>,  <34.286583, 34.273872, 30.296082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779110, 33.686016, 30.461279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949120, 34.016586, 30.608995>,  <35.051125, 34.214928, 30.697624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949120, 34.016586, 30.608995>,  <34.779110, 33.686016, 30.461279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949120, 34.016586, 30.608995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281465, -0.508409, 0.813817,
		0.860310, -0.241948, -0.448695,
		0.425022, 0.826427, 0.369290,
		35.076626, 34.264515, 30.719782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340168, 33.379414, 30.824211>,  <34.779110, 33.686016, 30.461279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340168, 33.379414, 30.824211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320343, 33.758240, 30.951092>,  <35.308449, 33.985535, 31.027220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320343, 33.758240, 30.951092>,  <35.340168, 33.379414, 30.824211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320343, 33.758240, 30.951092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334827, -0.283460, 0.898633,
		0.940975, 0.150743, -0.303054,
		-0.049559, 0.947062, 0.317201,
		35.305473, 34.042358, 31.046251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933487, 33.612053, 30.854164>,  <35.340168, 33.379414, 30.824211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933487, 33.612053, 30.854164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713806, 33.831085, 31.106680>,  <35.581997, 33.962505, 31.258190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713806, 33.831085, 31.106680>,  <35.933487, 33.612053, 30.854164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713806, 33.831085, 31.106680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671651, -0.160260, 0.723327,
		0.497253, 0.821260, -0.279770,
		-0.549203, 0.547585, 0.631290,
		35.549046, 33.995361, 31.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913151, 33.361340, 30.135683>,  <35.933487, 33.612053, 30.854164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913151, 33.361340, 30.135683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952465, 33.063808, 30.400124>,  <35.976055, 32.885288, 30.558788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952465, 33.063808, 30.400124>,  <35.913151, 33.361340, 30.135683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952465, 33.063808, 30.400124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508186, -0.533654, -0.675988,
		0.855620, 0.402404, 0.325552,
		0.098288, -0.743830, 0.661102,
		35.981953, 32.840660, 30.598454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653282, 33.148087, 30.191494>,  <35.913151, 33.361340, 30.135683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653282, 33.148087, 30.191494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399967, 32.845192, 30.255419>,  <36.247978, 32.663456, 30.293774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399967, 32.845192, 30.255419>,  <36.653282, 33.148087, 30.191494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399967, 32.845192, 30.255419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336533, -0.455405, -0.824228,
		0.696912, -0.468194, 0.543238,
		-0.633292, -0.757232, 0.159814,
		36.209980, 32.618023, 30.303364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094940, 32.618607, 30.131834>,  <36.653282, 33.148087, 30.191494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094940, 32.618607, 30.131834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714466, 32.525227, 30.051081>,  <36.486183, 32.469200, 30.002628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714466, 32.525227, 30.051081>,  <37.094940, 32.618607, 30.131834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714466, 32.525227, 30.051081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299310, -0.538163, -0.787905,
		0.075289, -0.809865, 0.581764,
		-0.951181, -0.233449, -0.201883,
		36.429111, 32.455193, 29.990515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148998, 31.949419, 30.014744>,  <37.094940, 32.618607, 30.131834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148998, 31.949419, 30.014744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808060, 32.058769, 29.836409>,  <36.603497, 32.124378, 29.729408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808060, 32.058769, 29.836409>,  <37.148998, 31.949419, 30.014744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808060, 32.058769, 29.836409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257691, -0.522286, -0.812904,
		-0.455085, -0.807764, 0.374721,
		-0.852346, 0.273378, -0.445837,
		36.552357, 32.140781, 29.702658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115913, 31.396658, 29.535772>,  <37.148998, 31.949419, 30.014744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115913, 31.396658, 29.535772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857704, 31.674719, 29.409243>,  <36.702778, 31.841557, 29.333324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857704, 31.674719, 29.409243>,  <37.115913, 31.396658, 29.535772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857704, 31.674719, 29.409243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039127, -0.443736, -0.895303,
		-0.762738, -0.565562, 0.313641,
		-0.645523, 0.695153, -0.316325,
		36.664047, 31.883265, 29.314344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535164, 30.936390, 29.214083>,  <37.115913, 31.396658, 29.535772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535164, 30.936390, 29.214083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501408, 31.303284, 29.058359>,  <36.481155, 31.523420, 28.964926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501408, 31.303284, 29.058359>,  <36.535164, 30.936390, 29.214083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501408, 31.303284, 29.058359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109650, -0.379779, -0.918556,
		-0.990381, -0.120204, -0.068525,
		-0.084390, 0.917234, -0.389307,
		36.476089, 31.578453, 28.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051231, 30.914333, 28.660454>,  <36.535164, 30.936390, 29.214083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051231, 30.914333, 28.660454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257664, 31.249508, 28.589443>,  <36.381523, 31.450613, 28.546837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257664, 31.249508, 28.589443>,  <36.051231, 30.914333, 28.660454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257664, 31.249508, 28.589443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102375, -0.266118, -0.958488,
		-0.850397, 0.476487, -0.223124,
		0.516085, 0.837938, -0.177525,
		36.412491, 31.500889, 28.536186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735634, 31.193449, 28.039955>,  <36.051231, 30.914333, 28.660454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735634, 31.193449, 28.039955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098339, 31.359280, 28.070677>,  <36.315964, 31.458778, 28.089109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098339, 31.359280, 28.070677>,  <35.735634, 31.193449, 28.039955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098339, 31.359280, 28.070677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121739, -0.083029, -0.989083,
		-0.403674, 0.906219, -0.125758,
		0.906767, 0.414577, 0.076806,
		36.370369, 31.483652, 28.093718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764832, 31.740107, 27.554754>,  <35.735634, 31.193449, 28.039955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764832, 31.740107, 27.554754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153011, 31.666195, 27.616831>,  <36.385918, 31.621847, 27.654078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153011, 31.666195, 27.616831>,  <35.764832, 31.740107, 27.554754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153011, 31.666195, 27.616831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152930, -0.026530, -0.987881,
		0.186659, 0.982422, 0.002513,
		0.970449, -0.184781, 0.155194,
		36.444145, 31.610760, 27.663389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027615, 32.310734, 27.349031>,  <35.764832, 31.740107, 27.554754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027615, 32.310734, 27.349031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298336, 32.016338, 27.342491>,  <36.460770, 31.839703, 27.338568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298336, 32.016338, 27.342491>,  <36.027615, 32.310734, 27.349031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298336, 32.016338, 27.342491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088353, -0.059157, -0.994331,
		0.730845, 0.674409, -0.105064,
		0.676801, -0.735985, -0.016351,
		36.501377, 31.795544, 27.337585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567806, 32.507671, 26.878330>,  <36.027615, 32.310734, 27.349031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567806, 32.507671, 26.878330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603214, 32.109840, 26.900179>,  <36.624458, 31.871141, 26.913288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603214, 32.109840, 26.900179>,  <36.567806, 32.507671, 26.878330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603214, 32.109840, 26.900179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002748, -0.054593, -0.998505,
		0.996071, 0.088539, -0.002099,
		0.088522, -0.994576, 0.054622,
		36.629772, 31.811468, 26.916565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727173, 32.435970, 26.164694>,  <36.567806, 32.507671, 26.878330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727173, 32.435970, 26.164694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658150, 32.065559, 26.298977>,  <36.616737, 31.843313, 26.379547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658150, 32.065559, 26.298977>,  <36.727173, 32.435970, 26.164694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658150, 32.065559, 26.298977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046426, -0.348089, -0.936311,
		0.983905, -0.145980, 0.103057,
		-0.172556, -0.926026, 0.335709,
		36.606384, 31.787752, 26.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177502, 31.967180, 25.864407>,  <36.727173, 32.435970, 26.164694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177502, 31.967180, 25.864407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875851, 31.732567, 25.982576>,  <36.694862, 31.591799, 26.053478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875851, 31.732567, 25.982576>,  <37.177502, 31.967180, 25.864407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875851, 31.732567, 25.982576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070212, -0.375257, -0.924258,
		0.652968, -0.717747, 0.241808,
		-0.754124, -0.586533, 0.295426,
		36.649612, 31.556606, 26.071203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249249, 31.475189, 25.455172>,  <37.177502, 31.967180, 25.864407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249249, 31.475189, 25.455172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869202, 31.430510, 25.571655>,  <36.641174, 31.403702, 25.641546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869202, 31.430510, 25.571655>,  <37.249249, 31.475189, 25.455172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869202, 31.430510, 25.571655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232298, -0.369617, -0.899678,
		0.208129, -0.922446, 0.325232,
		-0.950116, -0.111699, 0.291210,
		36.584167, 31.396999, 25.659018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035019, 30.825001, 25.189192>,  <37.249249, 31.475189, 25.455172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035019, 30.825001, 25.189192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709766, 31.033583, 25.292654>,  <36.514614, 31.158731, 25.354731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709766, 31.033583, 25.292654>,  <37.035019, 30.825001, 25.189192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709766, 31.033583, 25.292654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402089, -0.181891, -0.897352,
		-0.420880, -0.833668, 0.357572,
		-0.813132, 0.521453, 0.258654,
		36.465828, 31.190018, 25.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613968, 30.369495, 24.957850>,  <37.035019, 30.825001, 25.189192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613968, 30.369495, 24.957850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426079, 30.721735, 24.982857>,  <36.313347, 30.933079, 24.997862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426079, 30.721735, 24.982857>,  <36.613968, 30.369495, 24.957850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426079, 30.721735, 24.982857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502959, -0.208740, -0.838725,
		-0.725529, -0.425413, 0.540954,
		-0.469723, 0.880597, 0.062519,
		36.285160, 30.985914, 25.001612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996738, 30.245710, 24.795322>,  <36.613968, 30.369495, 24.957850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996738, 30.245710, 24.795322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014633, 30.639994, 24.730358>,  <36.025368, 30.876564, 24.691380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014633, 30.639994, 24.730358>,  <35.996738, 30.245710, 24.795322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014633, 30.639994, 24.730358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408272, -0.130338, -0.903508,
		-0.911764, 0.106724, 0.396607,
		0.044733, 0.985709, -0.162410,
		36.028053, 30.935707, 24.681635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271805, 30.510477, 24.559179>,  <35.996738, 30.245710, 24.795322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271805, 30.510477, 24.559179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536869, 30.777239, 24.422873>,  <35.695908, 30.937296, 24.341089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536869, 30.777239, 24.422873>,  <35.271805, 30.510477, 24.559179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536869, 30.777239, 24.422873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522135, 0.085205, -0.848596,
		-0.536899, 0.740254, 0.404677,
		0.662657, 0.666906, -0.340766,
		35.735664, 30.977310, 24.320642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824177, 30.892092, 24.197742>,  <35.271805, 30.510477, 24.559179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824177, 30.892092, 24.197742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182846, 31.020050, 24.075333>,  <35.398048, 31.096825, 24.001886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182846, 31.020050, 24.075333>,  <34.824177, 30.892092, 24.197742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182846, 31.020050, 24.075333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376141, 0.185979, -0.907706,
		-0.233455, 0.929021, 0.287087,
		0.896670, 0.319894, -0.306025,
		35.451847, 31.116018, 23.983524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675674, 31.520693, 23.691353>,  <34.824177, 30.892092, 24.197742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675674, 31.520693, 23.691353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033649, 31.361551, 23.610552>,  <35.248432, 31.266066, 23.562071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033649, 31.361551, 23.610552>,  <34.675674, 31.520693, 23.691353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033649, 31.361551, 23.610552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197776, 0.052122, -0.978860,
		0.399974, 0.915966, -0.032041,
		0.894933, -0.397856, -0.202004,
		35.302128, 31.242195, 23.549952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856640, 31.891575, 23.072109>,  <34.675674, 31.520693, 23.691353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856640, 31.891575, 23.072109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065708, 31.553015, 23.112947>,  <35.191147, 31.349878, 23.137451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065708, 31.553015, 23.112947>,  <34.856640, 31.891575, 23.072109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065708, 31.553015, 23.112947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308581, -0.299457, -0.902831,
		0.794731, 0.440375, -0.417700,
		0.522667, -0.846402, 0.102096,
		35.222507, 31.299095, 23.143576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152550, 31.778271, 22.454363>,  <34.856640, 31.891575, 23.072109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152550, 31.778271, 22.454363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144745, 31.422272, 22.636581>,  <35.140060, 31.208672, 22.745913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144745, 31.422272, 22.636581>,  <35.152550, 31.778271, 22.454363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144745, 31.422272, 22.636581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295243, -0.430186, -0.853095,
		0.955223, -0.151144, -0.254371,
		-0.019513, -0.889997, 0.455548,
		35.138889, 31.155273, 22.773245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223713, 31.333963, 21.903067>,  <35.152550, 31.778271, 22.454363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223713, 31.333963, 21.903067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136860, 31.063793, 22.184961>,  <35.084747, 30.901691, 22.354097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136860, 31.063793, 22.184961>,  <35.223713, 31.333963, 21.903067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136860, 31.063793, 22.184961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358433, -0.616361, -0.701159,
		0.907954, -0.404844, -0.108265,
		-0.217129, -0.675426, 0.704737,
		35.071720, 30.861166, 22.396383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572746, 30.681257, 21.765572>,  <35.223713, 31.333963, 21.903067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572746, 30.681257, 21.765572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246277, 30.632446, 21.991482>,  <35.050396, 30.603159, 22.127028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246277, 30.632446, 21.991482>,  <35.572746, 30.681257, 21.765572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246277, 30.632446, 21.991482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493616, -0.360811, -0.791302,
		0.300339, -0.924621, 0.234249,
		-0.816174, -0.122030, 0.564773,
		35.001423, 30.595837, 22.160913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465481, 30.026506, 21.698618>,  <35.572746, 30.681257, 21.765572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465481, 30.026506, 21.698618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121071, 30.187927, 21.822409>,  <34.914425, 30.284779, 21.896683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121071, 30.187927, 21.822409>,  <35.465481, 30.026506, 21.698618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121071, 30.187927, 21.822409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485560, -0.471434, -0.736194,
		-0.151193, -0.784154, 0.601866,
		-0.861029, 0.403550, 0.309477,
		34.862762, 30.308992, 21.915251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998806, 29.526125, 21.639688>,  <35.465481, 30.026506, 21.698618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998806, 29.526125, 21.639688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822903, 29.885187, 21.628157>,  <34.717361, 30.100624, 21.621239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822903, 29.885187, 21.628157>,  <34.998806, 29.526125, 21.639688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822903, 29.885187, 21.628157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433984, -0.240490, -0.868229,
		-0.786302, -0.369300, 0.495325,
		-0.439758, 0.897654, -0.028827,
		34.690975, 30.154484, 21.619509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349266, 29.346767, 21.528448>,  <34.998806, 29.526125, 21.639688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349266, 29.346767, 21.528448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357334, 29.735357, 21.433939>,  <34.362175, 29.968512, 21.377234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357334, 29.735357, 21.433939>,  <34.349266, 29.346767, 21.528448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357334, 29.735357, 21.433939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476506, -0.198413, -0.856490,
		-0.878940, 0.129865, 0.458912,
		0.020174, 0.971477, -0.236275,
		34.363388, 30.026800, 21.363056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667999, 29.497606, 21.208069>,  <34.349266, 29.346767, 21.528448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667999, 29.497606, 21.208069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938755, 29.769043, 21.093992>,  <34.101208, 29.931906, 21.025547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938755, 29.769043, 21.093992>,  <33.667999, 29.497606, 21.208069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938755, 29.769043, 21.093992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219341, -0.183896, -0.958161,
		-0.702647, 0.711122, 0.024366,
		0.676888, 0.678593, -0.285192,
		34.141823, 29.972620, 21.008434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972389, 29.535976, 21.394529>,  <33.667999, 29.497606, 21.208069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972389, 29.535976, 21.394529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647778, 29.302252, 21.395599>,  <32.453011, 29.162018, 21.396242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647778, 29.302252, 21.395599>,  <32.972389, 29.535976, 21.394529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647778, 29.302252, 21.395599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184656, -0.252111, 0.949917,
		-0.554371, 0.771377, 0.312491,
		-0.811526, -0.584310, 0.002676,
		32.404320, 29.126959, 21.396402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638649, 29.851057, 21.922569>,  <32.972389, 29.535976, 21.394529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638649, 29.851057, 21.922569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530811, 29.467478, 21.887396>,  <32.466106, 29.237329, 21.866291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530811, 29.467478, 21.887396>,  <32.638649, 29.851057, 21.922569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530811, 29.467478, 21.887396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062798, -0.108629, 0.992097,
		-0.960923, 0.261946, 0.089506,
		-0.269599, -0.958949, -0.087934,
		32.449932, 29.179792, 21.861015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197609, 29.879343, 22.516296>,  <32.638649, 29.851057, 21.922569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197609, 29.879343, 22.516296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258999, 29.503672, 22.393404>,  <32.295834, 29.278269, 22.319668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258999, 29.503672, 22.393404>,  <32.197609, 29.879343, 22.516296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258999, 29.503672, 22.393404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291196, -0.254121, 0.922294,
		-0.944272, -0.231016, 0.234483,
		0.153478, -0.939177, -0.307230,
		32.305042, 29.221918, 22.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843937, 29.498079, 23.031380>,  <32.197609, 29.879343, 22.516296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843937, 29.498079, 23.031380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113365, 29.254992, 22.863104>,  <32.275021, 29.109138, 22.762138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113365, 29.254992, 22.863104>,  <31.843937, 29.498079, 23.031380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113365, 29.254992, 22.863104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323121, -0.269787, 0.907088,
		-0.664752, -0.746921, 0.014647,
		0.673571, -0.607721, -0.420687,
		32.315437, 29.072676, 22.736898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713179, 28.927151, 23.327265>,  <31.843937, 29.498079, 23.031380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713179, 28.927151, 23.327265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090385, 28.875879, 23.204439>,  <32.316711, 28.845116, 23.130743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090385, 28.875879, 23.204439>,  <31.713179, 28.927151, 23.327265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090385, 28.875879, 23.204439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288796, -0.143077, 0.946639,
		-0.165279, -0.981375, -0.097904,
		0.943016, -0.128186, -0.307065,
		32.373291, 28.837425, 23.112320>
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
