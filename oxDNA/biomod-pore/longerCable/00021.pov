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
	<24.325832, 34.836338, 35.225136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188524, 35.132206, 34.993603>,  <24.106140, 35.309727, 34.854683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188524, 35.132206, 34.993603>,  <24.325832, 34.836338, 35.225136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188524, 35.132206, 34.993603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887957, 0.054723, -0.456659,
		-0.306102, -0.670739, -0.675582,
		-0.343269, 0.739672, -0.578836,
		24.085543, 35.354107, 34.819950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365442, 34.675419, 34.499466>,  <24.325832, 34.836338, 35.225136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365442, 34.675419, 34.499466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408485, 35.065422, 34.577217>,  <24.434311, 35.299423, 34.623867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408485, 35.065422, 34.577217>,  <24.365442, 34.675419, 34.499466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408485, 35.065422, 34.577217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922768, -0.025179, -0.384534,
		-0.370028, 0.220747, -0.902413,
		0.107607, 0.975006, 0.194381,
		24.440767, 35.357925, 34.635532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799231, 35.047043, 33.911434>,  <24.365442, 34.675419, 34.499466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799231, 35.047043, 33.911434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860281, 35.252129, 34.249390>,  <24.896912, 35.375179, 34.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860281, 35.252129, 34.249390>,  <24.799231, 35.047043, 33.911434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860281, 35.252129, 34.249390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988126, -0.063897, -0.139729,
		-0.017655, 0.856181, -0.516374,
		0.152628, 0.512710, 0.844887,
		24.906069, 35.405941, 34.502857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134424, 35.638256, 33.901276>,  <24.799231, 35.047043, 33.911434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134424, 35.638256, 33.901276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263573, 35.496258, 34.252213>,  <25.341061, 35.411057, 34.462776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263573, 35.496258, 34.252213>,  <25.134424, 35.638256, 33.901276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263573, 35.496258, 34.252213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925663, -0.074738, -0.370893,
		0.197237, 0.931875, 0.304478,
		0.322870, -0.354998, 0.877343,
		25.360434, 35.389759, 34.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670959, 36.059429, 34.385460>,  <25.134424, 35.638256, 33.901276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670959, 36.059429, 34.385460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679468, 35.659523, 34.383701>,  <25.684574, 35.419579, 34.382645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679468, 35.659523, 34.383701>,  <25.670959, 36.059429, 34.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679468, 35.659523, 34.383701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974632, 0.021718, -0.222758,
		0.222801, 0.000455, 0.974864,
		0.021273, -0.999764, -0.004395,
		25.685850, 35.359592, 34.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163912, 35.899879, 34.861534>,  <25.670959, 36.059429, 34.385460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163912, 35.899879, 34.861534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116007, 35.644363, 34.557533>,  <26.087265, 35.491055, 34.375134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116007, 35.644363, 34.557533>,  <26.163912, 35.899879, 34.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116007, 35.644363, 34.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945661, 0.159691, -0.283239,
		0.302296, -0.752627, 0.584953,
		-0.119761, -0.638789, -0.760004,
		26.080078, 35.452728, 34.329533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741402, 35.458965, 34.903969>,  <26.163912, 35.899879, 34.861534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741402, 35.458965, 34.903969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591621, 35.479244, 34.533627>,  <26.501753, 35.491413, 34.311420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591621, 35.479244, 34.533627>,  <26.741402, 35.458965, 34.903969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591621, 35.479244, 34.533627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924928, 0.090994, -0.369092,
		0.065535, -0.994560, -0.080966,
		-0.374451, 0.050699, -0.925859,
		26.479286, 35.494453, 34.255867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923672, 34.831734, 34.554626>,  <26.741402, 35.458965, 34.903969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923672, 34.831734, 34.554626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904043, 35.157902, 34.323910>,  <26.892265, 35.353603, 34.185478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904043, 35.157902, 34.323910>,  <26.923672, 34.831734, 34.554626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904043, 35.157902, 34.323910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931119, -0.171608, -0.321820,
		-0.361399, -0.552853, -0.750829,
		-0.049071, 0.815417, -0.576791,
		26.889322, 35.402527, 34.150871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306574, 34.613663, 33.896019>,  <26.923672, 34.831734, 34.554626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306574, 34.613663, 33.896019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294209, 35.011814, 33.932377>,  <27.286789, 35.250706, 33.954189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294209, 35.011814, 33.932377>,  <27.306574, 34.613663, 33.896019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294209, 35.011814, 33.932377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932511, 0.061458, -0.355873,
		-0.359815, 0.073754, -0.930104,
		-0.030915, 0.995381, 0.090890,
		27.284933, 35.310429, 33.959644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544062, 34.863438, 33.228489>,  <27.306574, 34.613663, 33.896019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544062, 34.863438, 33.228489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584761, 35.177299, 33.473099>,  <27.609180, 35.365616, 33.619865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584761, 35.177299, 33.473099>,  <27.544062, 34.863438, 33.228489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584761, 35.177299, 33.473099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904672, 0.182704, -0.384951,
		-0.413782, 0.592398, -0.691266,
		0.101748, 0.784655, 0.611526,
		27.615284, 35.412697, 33.656555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751968, 35.467838, 32.854641>,  <27.544062, 34.863438, 33.228489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751968, 35.467838, 32.854641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868221, 35.566067, 33.224556>,  <27.937973, 35.625004, 33.446507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868221, 35.566067, 33.224556>,  <27.751968, 35.467838, 32.854641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868221, 35.566067, 33.224556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907674, 0.235060, -0.347670,
		-0.302757, 0.940448, -0.154581,
		0.290630, 0.245569, 0.924787,
		27.955410, 35.639736, 33.501991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055197, 36.111351, 32.877659>,  <27.751968, 35.467838, 32.854641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055197, 36.111351, 32.877659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207964, 35.876293, 33.162983>,  <28.299623, 35.735260, 33.334179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207964, 35.876293, 33.162983>,  <28.055197, 36.111351, 32.877659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207964, 35.876293, 33.162983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922550, 0.196353, -0.332185,
		0.055144, 0.784936, 0.617118,
		0.381917, -0.587640, 0.713315,
		28.322538, 35.700001, 33.376976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500834, 36.533039, 32.701180>,  <28.055197, 36.111351, 32.877659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500834, 36.533039, 32.701180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849363, 36.519211, 32.896973>,  <29.058481, 36.510914, 33.014450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849363, 36.519211, 32.896973>,  <28.500834, 36.533039, 32.701180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849363, 36.519211, 32.896973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459823, -0.405809, 0.789862,
		0.171335, -0.913304, -0.369486,
		0.871325, -0.034567, 0.489487,
		29.110762, 36.508839, 33.043819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830673, 35.800381, 32.899212>,  <28.500834, 36.533039, 32.701180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830673, 35.800381, 32.899212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916321, 36.083450, 33.168537>,  <28.967709, 36.253292, 33.330132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916321, 36.083450, 33.168537>,  <28.830673, 35.800381, 32.899212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916321, 36.083450, 33.168537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585107, -0.459037, 0.668532,
		0.782179, -0.537103, 0.315779,
		0.214117, 0.707677, 0.673312,
		28.980556, 36.295753, 33.370529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055328, 35.492413, 33.552681>,  <28.830673, 35.800381, 32.899212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055328, 35.492413, 33.552681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867538, 35.845181, 33.569706>,  <28.754864, 36.056843, 33.579922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867538, 35.845181, 33.569706>,  <29.055328, 35.492413, 33.552681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867538, 35.845181, 33.569706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654931, -0.380158, 0.653104,
		0.592165, 0.278742, 0.756071,
		-0.469474, 0.881920, 0.042559,
		28.726696, 36.109756, 33.582474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929892, 35.430206, 34.285736>,  <29.055328, 35.492413, 33.552681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929892, 35.430206, 34.285736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695101, 35.676384, 34.075336>,  <28.554226, 35.824093, 33.949097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695101, 35.676384, 34.075336>,  <28.929892, 35.430206, 34.285736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695101, 35.676384, 34.075336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808727, -0.415520, 0.416298,
		0.037645, 0.669751, 0.741631,
		-0.586978, 0.615448, -0.526003,
		28.519007, 35.861019, 33.917534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386633, 35.823910, 34.682014>,  <28.929892, 35.430206, 34.285736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386633, 35.823910, 34.682014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236561, 35.833889, 34.311367>,  <28.146519, 35.839878, 34.088978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236561, 35.833889, 34.311367>,  <28.386633, 35.823910, 34.682014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236561, 35.833889, 34.311367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926723, -0.032333, 0.374352,
		-0.020621, 0.999166, 0.035250,
		-0.375179, 0.024948, -0.926617,
		28.124006, 35.841373, 34.033382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832857, 36.448689, 34.403976>,  <28.386633, 35.823910, 34.682014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832857, 36.448689, 34.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772293, 36.111084, 34.198170>,  <27.735954, 35.908524, 34.074688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772293, 36.111084, 34.198170>,  <27.832857, 36.448689, 34.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772293, 36.111084, 34.198170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984526, 0.175222, 0.002295,
		0.088217, 0.506900, -0.857479,
		-0.151412, -0.844008, -0.514514,
		27.726870, 35.857880, 34.043816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340248, 36.592602, 33.904484>,  <27.832857, 36.448689, 34.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340248, 36.592602, 33.904484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329947, 36.193504, 33.929256>,  <27.323765, 35.954044, 33.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329947, 36.193504, 33.929256>,  <27.340248, 36.592602, 33.904484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329947, 36.193504, 33.929256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998351, 0.022492, -0.052809,
		0.051297, -0.063187, -0.996682,
		-0.025754, -0.997748, 0.061929,
		27.322220, 35.894180, 33.947834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805508, 36.439396, 33.415581>,  <27.340248, 36.592602, 33.904484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805508, 36.439396, 33.415581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839830, 36.117298, 33.650265>,  <26.860424, 35.924042, 33.791073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839830, 36.117298, 33.650265>,  <26.805508, 36.439396, 33.415581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839830, 36.117298, 33.650265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996116, -0.081019, 0.034488,
		0.019763, -0.587388, -0.809064,
		0.085808, -0.805240, 0.586708,
		26.865572, 35.875725, 33.826279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161470, 36.704155, 33.707954>,  <26.805508, 36.439396, 33.415581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161470, 36.704155, 33.707954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170223, 36.693283, 34.107712>,  <26.175474, 36.686760, 34.347565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170223, 36.693283, 34.107712>,  <26.161470, 36.704155, 33.707954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170223, 36.693283, 34.107712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636887, 0.770925, 0.007020,
		-0.770646, 0.636346, 0.034173,
		0.021878, -0.027174, 0.999391,
		26.176786, 36.685131, 34.407528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053225, 37.341011, 34.064041>,  <26.161470, 36.704155, 33.707954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053225, 37.341011, 34.064041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333906, 37.156673, 34.281384>,  <26.502316, 37.046070, 34.411789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333906, 37.156673, 34.281384>,  <26.053225, 37.341011, 34.064041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333906, 37.156673, 34.281384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615130, 0.776663, -0.135682,
		-0.359477, 0.429444, 0.828465,
		0.701706, -0.460840, 0.543356,
		26.544418, 37.018421, 34.444389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248138, 37.766148, 34.398941>,  <26.053225, 37.341011, 34.064041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248138, 37.766148, 34.398941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590734, 37.562489, 34.432850>,  <26.796293, 37.440292, 34.453194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590734, 37.562489, 34.432850>,  <26.248138, 37.766148, 34.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590734, 37.562489, 34.432850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513742, 0.825027, -0.235373,
		0.049905, 0.245144, 0.968202,
		0.856492, -0.509152, 0.084768,
		26.847683, 37.409744, 34.458279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103903, 37.863415, 34.270451>,  <26.248138, 37.766148, 34.398941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103903, 37.863415, 34.270451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471952, 37.706772, 34.272049>,  <27.692781, 37.612785, 34.273006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471952, 37.706772, 34.272049>,  <27.103903, 37.863415, 34.270451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471952, 37.706772, 34.272049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205197, 0.473388, -0.856620,
		0.333570, 0.789015, 0.515932,
		0.920122, -0.391610, 0.003995,
		27.747990, 37.589287, 34.273247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380783, 38.551682, 34.479801>,  <27.103903, 37.863415, 34.270451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380783, 38.551682, 34.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606779, 38.223053, 34.510269>,  <27.742376, 38.025875, 34.528549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606779, 38.223053, 34.510269>,  <27.380783, 38.551682, 34.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606779, 38.223053, 34.510269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434764, 0.217971, -0.873767,
		0.701262, 0.526785, 0.480342,
		0.564988, -0.821575, 0.076172,
		27.776276, 37.976582, 34.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453455, 38.966270, 35.112667>,  <27.380783, 38.551682, 34.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453455, 38.966270, 35.112667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598976, 38.626358, 35.265259>,  <27.686289, 38.422413, 35.356812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598976, 38.626358, 35.265259>,  <27.453455, 38.966270, 35.112667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598976, 38.626358, 35.265259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927608, 0.293229, -0.231430,
		0.084805, 0.438055, 0.894939,
		0.363802, -0.849779, 0.381476,
		27.708117, 38.371426, 35.379700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966143, 39.051109, 35.725235>,  <27.453455, 38.966270, 35.112667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966143, 39.051109, 35.725235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055933, 38.697964, 35.560234>,  <28.109806, 38.486076, 35.461231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055933, 38.697964, 35.560234>,  <27.966143, 39.051109, 35.725235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055933, 38.697964, 35.560234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973758, 0.186925, 0.129825,
		-0.037510, -0.430822, 0.901657,
		0.224474, -0.882865, -0.412505,
		28.123276, 38.433105, 35.436481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340446, 38.626087, 36.231365>,  <27.966143, 39.051109, 35.725235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340446, 38.626087, 36.231365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428703, 38.493229, 35.864540>,  <28.481657, 38.413513, 35.644447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428703, 38.493229, 35.864540>,  <28.340446, 38.626087, 36.231365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428703, 38.493229, 35.864540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970909, 0.164469, 0.174030,
		0.093026, -0.928780, 0.358768,
		0.220642, -0.332142, -0.917060,
		28.494896, 38.393585, 35.589420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740654, 37.984009, 36.292343>,  <28.340446, 38.626087, 36.231365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740654, 37.984009, 36.292343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776199, 38.266361, 36.011250>,  <28.797525, 38.435772, 35.842594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776199, 38.266361, 36.011250>,  <28.740654, 37.984009, 36.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776199, 38.266361, 36.011250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814685, 0.354401, 0.459008,
		0.573055, -0.613294, -0.543580,
		0.088861, 0.705883, -0.702732,
		28.802858, 38.478127, 35.800430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386469, 37.824680, 35.921795>,  <28.740654, 37.984009, 36.292343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386469, 37.824680, 35.921795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312950, 38.217812, 35.915318>,  <29.268839, 38.453690, 35.911430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312950, 38.217812, 35.915318>,  <29.386469, 37.824680, 35.921795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312950, 38.217812, 35.915318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915914, 0.177216, 0.360133,
		0.356819, 0.051362, -0.932761,
		-0.183797, 0.982831, -0.016190,
		29.257811, 38.512661, 35.910461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833424, 38.102711, 35.543083>,  <29.386469, 37.824680, 35.921795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833424, 38.102711, 35.543083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711494, 38.360413, 35.823662>,  <29.638336, 38.515034, 35.992008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711494, 38.360413, 35.823662>,  <29.833424, 38.102711, 35.543083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711494, 38.360413, 35.823662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949378, 0.146830, 0.277709,
		0.075922, 0.750588, -0.656395,
		-0.304824, 0.644251, 0.701444,
		29.620047, 38.553688, 36.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276638, 38.739208, 35.550961>,  <29.833424, 38.102711, 35.543083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276638, 38.739208, 35.550961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112850, 38.729446, 35.915760>,  <30.014578, 38.723591, 36.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112850, 38.729446, 35.915760>,  <30.276638, 38.739208, 35.550961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112850, 38.729446, 35.915760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830658, 0.403420, 0.383744,
		-0.377282, 0.914690, -0.144918,
		-0.409469, -0.024402, 0.911997,
		29.990009, 38.722126, 36.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306919, 39.431896, 35.808010>,  <30.276638, 38.739208, 35.550961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306919, 39.431896, 35.808010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314606, 39.167339, 36.107925>,  <30.319218, 39.008606, 36.287876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314606, 39.167339, 36.107925>,  <30.306919, 39.431896, 35.808010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314606, 39.167339, 36.107925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838428, 0.419204, 0.348292,
		-0.544674, 0.621954, 0.562587,
		0.019217, -0.661394, 0.749793,
		30.320372, 38.968922, 36.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327383, 39.759102, 36.400833>,  <30.306919, 39.431896, 35.808010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327383, 39.759102, 36.400833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508873, 39.403797, 36.429485>,  <30.617767, 39.190617, 36.446678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508873, 39.403797, 36.429485>,  <30.327383, 39.759102, 36.400833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508873, 39.403797, 36.429485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829514, 0.450354, 0.330284,
		-0.325638, -0.090436, 0.941159,
		0.453725, -0.888258, 0.071634,
		30.644991, 39.137321, 36.450977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483847, 39.676453, 37.156010>,  <30.327383, 39.759102, 36.400833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483847, 39.676453, 37.156010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736807, 39.468990, 36.925854>,  <30.888582, 39.344513, 36.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736807, 39.468990, 36.925854>,  <30.483847, 39.676453, 37.156010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736807, 39.468990, 36.925854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774036, 0.452451, 0.442895,
		0.030624, -0.725456, 0.687587,
		0.632400, -0.518654, -0.575386,
		30.926527, 39.313393, 36.753239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971083, 39.378479, 37.536747>,  <30.483847, 39.676453, 37.156010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971083, 39.378479, 37.536747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120228, 39.450195, 37.172588>,  <31.209715, 39.493225, 36.954094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120228, 39.450195, 37.172588>,  <30.971083, 39.378479, 37.536747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120228, 39.450195, 37.172588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822135, 0.391057, 0.413725,
		0.430196, -0.902734, -0.001591,
		0.372861, 0.179291, -0.910400,
		31.232086, 39.503983, 36.899467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687786, 39.259178, 37.435654>,  <30.971083, 39.378479, 37.536747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687786, 39.259178, 37.435654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648844, 39.501167, 37.119545>,  <31.625479, 39.646362, 36.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648844, 39.501167, 37.119545>,  <31.687786, 39.259178, 37.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648844, 39.501167, 37.119545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931894, 0.334192, 0.141028,
		0.349420, -0.722718, -0.596309,
		-0.097358, 0.604975, -0.790270,
		31.619637, 39.682659, 36.882465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370632, 39.493671, 37.563477>,  <31.687786, 39.259178, 37.435654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370632, 39.493671, 37.563477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127850, 39.607258, 37.860386>,  <31.982180, 39.675411, 38.038532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127850, 39.607258, 37.860386>,  <32.370632, 39.493671, 37.563477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127850, 39.607258, 37.860386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433617, 0.664387, -0.608742,
		-0.666019, -0.691341, -0.280119,
		-0.606955, 0.283969, 0.742271,
		31.945763, 39.692448, 38.083069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223225, 39.100845, 36.958828>,  <32.370632, 39.493671, 37.563477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223225, 39.100845, 36.958828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117096, 39.483204, 36.908451>,  <32.053417, 39.712620, 36.878227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117096, 39.483204, 36.908451>,  <32.223225, 39.100845, 36.958828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117096, 39.483204, 36.908451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962547, 0.270162, 0.022708,
		0.055730, -0.115198, -0.991778,
		-0.265325, 0.955898, -0.125940,
		32.037498, 39.769974, 36.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546185, 39.356850, 36.382488>,  <32.223225, 39.100845, 36.958828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546185, 39.356850, 36.382488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496456, 39.669559, 36.626904>,  <32.466618, 39.857185, 36.773552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496456, 39.669559, 36.626904>,  <32.546185, 39.356850, 36.382488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496456, 39.669559, 36.626904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966825, 0.233934, -0.102586,
		-0.223143, 0.578016, -0.784924,
		-0.124324, 0.781775, 0.611041,
		32.459160, 39.904091, 36.810215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793404, 39.915596, 35.993599>,  <32.546185, 39.356850, 36.382488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793404, 39.915596, 35.993599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803772, 39.983860, 36.387596>,  <32.809994, 40.024818, 36.623993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803772, 39.983860, 36.387596>,  <32.793404, 39.915596, 35.993599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803772, 39.983860, 36.387596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968846, 0.238483, -0.066814,
		-0.246305, 0.956034, -0.159162,
		0.025919, 0.170660, 0.984989,
		32.811546, 40.035057, 36.683094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062386, 40.579529, 36.157307>,  <32.793404, 39.915596, 35.993599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062386, 40.579529, 36.157307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146542, 40.285404, 36.415009>,  <33.197033, 40.108929, 36.569630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146542, 40.285404, 36.415009>,  <33.062386, 40.579529, 36.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146542, 40.285404, 36.415009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976530, 0.189150, -0.103011,
		-0.046115, 0.650803, 0.757845,
		0.210386, -0.735308, 0.644252,
		33.209656, 40.064812, 36.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397358, 40.821976, 36.756767>,  <33.062386, 40.579529, 36.157307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397358, 40.821976, 36.756767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528500, 40.460751, 36.645779>,  <33.607185, 40.244015, 36.579185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528500, 40.460751, 36.645779>,  <33.397358, 40.821976, 36.756767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528500, 40.460751, 36.645779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829966, 0.415625, -0.372038,
		0.451299, -0.108321, 0.885774,
		0.327851, -0.903063, -0.277474,
		33.626854, 40.189831, 36.562538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128090, 40.771397, 36.965343>,  <33.397358, 40.821976, 36.756767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128090, 40.771397, 36.965343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054291, 40.476627, 36.705219>,  <34.010010, 40.299767, 36.549145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054291, 40.476627, 36.705219>,  <34.128090, 40.771397, 36.965343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054291, 40.476627, 36.705219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910247, 0.121434, -0.395859,
		0.370688, -0.664975, 0.648381,
		-0.184501, -0.736927, -0.650306,
		33.998940, 40.255550, 36.510128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521580, 40.151604, 37.072784>,  <34.128090, 40.771397, 36.965343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521580, 40.151604, 37.072784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430580, 40.204498, 36.686882>,  <34.375980, 40.236237, 36.455341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430580, 40.204498, 36.686882>,  <34.521580, 40.151604, 37.072784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430580, 40.204498, 36.686882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971884, -0.030949, -0.233418,
		-0.060726, -0.990735, -0.121480,
		-0.227496, 0.132239, -0.964758,
		34.362331, 40.244171, 36.397453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737854, 39.552395, 36.768440>,  <34.521580, 40.151604, 37.072784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737854, 39.552395, 36.768440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751053, 39.887943, 36.551109>,  <34.758972, 40.089272, 36.420712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751053, 39.887943, 36.551109>,  <34.737854, 39.552395, 36.768440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751053, 39.887943, 36.551109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998805, -0.047294, -0.012354,
		-0.036060, -0.542271, -0.839429,
		0.033000, 0.838871, -0.543328,
		34.760952, 40.139606, 36.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082481, 39.501820, 36.123383>,  <34.737854, 39.552395, 36.768440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082481, 39.501820, 36.123383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118946, 39.881008, 36.245392>,  <35.140823, 40.108521, 36.318600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118946, 39.881008, 36.245392>,  <35.082481, 39.501820, 36.123383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118946, 39.881008, 36.245392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987599, -0.046747, -0.149878,
		-0.127821, 0.314906, -0.940476,
		0.091162, 0.947971, 0.305026,
		35.146294, 40.165398, 36.336899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453407, 39.802021, 35.547581>,  <35.082481, 39.501820, 36.123383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453407, 39.802021, 35.547581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511227, 40.043919, 35.860859>,  <35.545918, 40.189056, 36.048824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511227, 40.043919, 35.860859>,  <35.453407, 39.802021, 35.547581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511227, 40.043919, 35.860859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989494, -0.090615, -0.112652,
		0.002843, 0.791248, -0.611488,
		0.144545, 0.604744, 0.783193,
		35.554592, 40.225342, 36.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768166, 40.495255, 35.437618>,  <35.453407, 39.802021, 35.547581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768166, 40.495255, 35.437618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843582, 40.313797, 35.786022>,  <35.888832, 40.204922, 35.995064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843582, 40.313797, 35.786022>,  <35.768166, 40.495255, 35.437618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843582, 40.313797, 35.786022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937197, -0.181911, -0.297608,
		0.293454, 0.872420, 0.390856,
		0.188538, -0.453644, 0.871011,
		35.900143, 40.177704, 36.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416054, 40.774632, 35.968643>,  <35.768166, 40.495255, 35.437618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416054, 40.774632, 35.968643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321568, 40.386810, 35.942841>,  <36.264874, 40.154118, 35.927361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321568, 40.386810, 35.942841>,  <36.416054, 40.774632, 35.968643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321568, 40.386810, 35.942841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949466, -0.216186, -0.227547,
		0.206675, -0.114994, 0.971628,
		-0.236219, -0.969556, -0.064503,
		36.250702, 40.095943, 35.923489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842823, 40.370544, 36.484173>,  <36.416054, 40.774632, 35.968643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842823, 40.370544, 36.484173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742672, 40.158321, 36.160244>,  <36.682579, 40.030987, 35.965885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742672, 40.158321, 36.160244>,  <36.842823, 40.370544, 36.484173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742672, 40.158321, 36.160244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959342, -0.248520, -0.133790,
		-0.130274, -0.810396, 0.571215,
		-0.250382, -0.530561, -0.809823,
		36.667557, 39.999153, 35.917297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938465, 39.595245, 36.519596>,  <36.842823, 40.370544, 36.484173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938465, 39.595245, 36.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992565, 39.757156, 36.157852>,  <37.025024, 39.854301, 35.940807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992565, 39.757156, 36.157852>,  <36.938465, 39.595245, 36.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992565, 39.757156, 36.157852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892387, -0.446371, -0.066327,
		-0.430527, -0.798068, -0.421586,
		0.135250, 0.404773, -0.904360,
		37.033138, 39.878590, 35.886543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180340, 39.097546, 36.041245>,  <36.938465, 39.595245, 36.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180340, 39.097546, 36.041245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344025, 39.457794, 35.982700>,  <37.442234, 39.673943, 35.947575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344025, 39.457794, 35.982700>,  <37.180340, 39.097546, 36.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344025, 39.457794, 35.982700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893586, -0.428008, -0.135330,
		-0.184524, -0.075406, -0.979931,
		0.409214, 0.900624, -0.146360,
		37.466789, 39.727982, 35.938793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442398, 39.194515, 35.352711>,  <37.180340, 39.097546, 36.041245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442398, 39.194515, 35.352711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651508, 39.396420, 35.627495>,  <37.776974, 39.517563, 35.792366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651508, 39.396420, 35.627495>,  <37.442398, 39.194515, 35.352711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651508, 39.396420, 35.627495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753139, -0.650995, -0.094798,
		0.399359, 0.566937, -0.720482,
		0.522774, 0.504765, 0.686964,
		37.808342, 39.547848, 35.833584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148746, 39.321217, 35.144779>,  <37.442398, 39.194515, 35.352711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148746, 39.321217, 35.144779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140610, 39.339863, 35.544262>,  <38.135727, 39.351051, 35.783951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140610, 39.339863, 35.544262>,  <38.148746, 39.321217, 35.144779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140610, 39.339863, 35.544262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784790, -0.618137, 0.044842,
		0.619428, 0.784687, -0.024009,
		-0.020346, 0.046618, 0.998706,
		38.134506, 39.353848, 35.843872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594212, 39.871887, 34.904350>,  <38.148746, 39.321217, 35.144779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594212, 39.871887, 34.904350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958282, 39.799179, 35.053234>,  <39.176723, 39.755554, 35.142567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958282, 39.799179, 35.053234>,  <38.594212, 39.871887, 34.904350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958282, 39.799179, 35.053234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093490, 0.965532, 0.242913,
		-0.403539, -0.186295, 0.895796,
		0.910174, -0.181773, 0.372213,
		39.231335, 39.744648, 35.164898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416557, 40.602772, 34.713310>,  <38.594212, 39.871887, 34.904350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416557, 40.602772, 34.713310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148170, 40.779659, 34.951385>,  <37.987137, 40.885792, 35.094231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148170, 40.779659, 34.951385>,  <38.416557, 40.602772, 34.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148170, 40.779659, 34.951385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332751, 0.896904, -0.291272,
		-0.662629, 0.002614, -0.748943,
		-0.670969, 0.442217, 0.595185,
		37.946880, 40.912323, 35.129940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737839, 40.758915, 34.140461>,  <38.416557, 40.602772, 34.713310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737839, 40.758915, 34.140461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046871, 40.660027, 34.374382>,  <39.232292, 40.600693, 34.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046871, 40.660027, 34.374382>,  <38.737839, 40.758915, 34.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046871, 40.660027, 34.374382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092474, -0.867443, -0.488867,
		0.628145, 0.431769, -0.647310,
		0.772582, -0.247220, 0.584807,
		39.278645, 40.585861, 34.549824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472057, 40.680058, 33.752533>,  <38.737839, 40.758915, 34.140461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472057, 40.680058, 33.752533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378510, 40.434135, 34.053814>,  <39.322380, 40.286583, 34.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378510, 40.434135, 34.053814>,  <39.472057, 40.680058, 33.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378510, 40.434135, 34.053814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112974, -0.786623, -0.607010,
		0.965683, -0.056868, 0.253423,
		-0.233867, -0.614809, 0.753204,
		39.308350, 40.249691, 34.279774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048157, 40.262997, 33.723709>,  <39.472057, 40.680058, 33.752533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048157, 40.262997, 33.723709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706047, 40.108692, 33.862095>,  <39.500782, 40.016109, 33.945126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706047, 40.108692, 33.862095>,  <40.048157, 40.262997, 33.723709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706047, 40.108692, 33.862095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055495, -0.732017, -0.679022,
		0.515191, -0.561553, 0.647485,
		-0.855276, -0.385759, 0.345965,
		39.449463, 39.992966, 33.965885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122536, 39.535694, 33.892490>,  <40.048157, 40.262997, 33.723709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122536, 39.535694, 33.892490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745686, 39.614326, 33.783855>,  <39.519577, 39.661507, 33.718674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745686, 39.614326, 33.783855>,  <40.122536, 39.535694, 33.892490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745686, 39.614326, 33.783855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099930, -0.608594, -0.787164,
		-0.320027, -0.768745, 0.553727,
		-0.942124, 0.196580, -0.271587,
		39.463047, 39.673302, 33.702377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503025, 39.004360, 33.953629>,  <40.122536, 39.535694, 33.892490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503025, 39.004360, 33.953629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563942, 39.266037, 33.657291>,  <39.600491, 39.423042, 33.479488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563942, 39.266037, 33.657291>,  <39.503025, 39.004360, 33.953629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563942, 39.266037, 33.657291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449007, -0.713557, -0.537799,
		-0.880454, -0.250741, -0.402404,
		0.152290, 0.654190, -0.740839,
		39.609631, 39.462296, 33.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092068, 38.941330, 33.423897>,  <39.503025, 39.004360, 33.953629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092068, 38.941330, 33.423897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446907, 39.068401, 33.289951>,  <39.659813, 39.144646, 33.209583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446907, 39.068401, 33.289951>,  <39.092068, 38.941330, 33.423897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446907, 39.068401, 33.289951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112320, -0.852241, -0.510949,
		-0.447702, 0.415651, -0.791705,
		0.887100, 0.317677, -0.334864,
		39.713036, 39.163704, 33.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812798, 38.744568, 34.200985>,  <39.092068, 38.941330, 33.423897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812798, 38.744568, 34.200985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971043, 38.482033, 33.944016>,  <39.065990, 38.324512, 33.789833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971043, 38.482033, 33.944016>,  <38.812798, 38.744568, 34.200985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971043, 38.482033, 33.944016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340251, -0.754460, 0.561265,
		-0.853066, -0.003456, -0.521792,
		0.395611, -0.656336, -0.642428,
		39.089725, 38.285133, 33.751286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411747, 38.203594, 33.738426>,  <38.812798, 38.744568, 34.200985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411747, 38.203594, 33.738426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209011, 38.548325, 33.730827>,  <38.087368, 38.755165, 33.726269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209011, 38.548325, 33.730827>,  <38.411747, 38.203594, 33.738426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209011, 38.548325, 33.730827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090314, 0.031177, -0.995425,
		-0.857294, -0.506240, -0.093637,
		-0.506843, 0.861829, -0.018993,
		38.056957, 38.806873, 33.725128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760269, 38.170654, 33.344315>,  <38.411747, 38.203594, 33.738426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760269, 38.170654, 33.344315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933002, 38.531300, 33.334385>,  <38.036644, 38.747684, 33.328426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933002, 38.531300, 33.334385>,  <37.760269, 38.170654, 33.344315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933002, 38.531300, 33.334385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110077, -0.079999, -0.990698,
		-0.895210, 0.425086, -0.133793,
		0.431835, 0.901611, -0.024823,
		38.062553, 38.801785, 33.326939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382545, 38.646759, 32.920918>,  <37.760269, 38.170654, 33.344315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382545, 38.646759, 32.920918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775162, 38.719025, 32.895802>,  <38.010731, 38.762383, 32.880733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775162, 38.719025, 32.895802>,  <37.382545, 38.646759, 32.920918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775162, 38.719025, 32.895802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066529, 0.014725, -0.997676,
		-0.179316, 0.983435, 0.026472,
		0.981539, 0.180661, -0.062786,
		38.069622, 38.773224, 32.876965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480019, 39.124966, 32.365688>,  <37.382545, 38.646759, 32.920918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480019, 39.124966, 32.365688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845230, 38.967628, 32.408894>,  <38.064358, 38.873226, 32.434818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845230, 38.967628, 32.408894>,  <37.480019, 39.124966, 32.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845230, 38.967628, 32.408894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138942, 0.050928, -0.988990,
		0.383511, 0.917980, 0.101150,
		0.913025, -0.393343, 0.108014,
		38.119137, 38.849625, 32.441299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994549, 39.540497, 32.049698>,  <37.480019, 39.124966, 32.365688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994549, 39.540497, 32.049698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 39.162075, 32.072556>,  <38.198669, 38.935024, 32.086269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 39.162075, 32.072556>,  <37.994549, 39.540497, 32.049698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122124, 39.162075, 32.072556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376008, 0.070956, -0.923896,
		0.869998, 0.316152, 0.378354,
		0.318938, -0.946051, 0.057144,
		38.217804, 38.878258, 32.089699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659340, 39.528046, 31.745310>,  <37.994549, 39.540497, 32.049698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659340, 39.528046, 31.745310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541546, 39.145798, 31.742100>,  <38.470867, 38.916447, 31.740173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541546, 39.145798, 31.742100>,  <38.659340, 39.528046, 31.745310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541546, 39.145798, 31.742100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468323, -0.136989, -0.872873,
		0.833037, -0.260808, 0.487881,
		-0.294487, -0.955622, -0.008025,
		38.453201, 38.859112, 31.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207382, 39.177971, 31.496622>,  <38.659340, 39.528046, 31.745310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207382, 39.177971, 31.496622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904133, 38.921764, 31.447666>,  <38.722183, 38.768040, 31.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904133, 38.921764, 31.447666>,  <39.207382, 39.177971, 31.496622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904133, 38.921764, 31.447666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378701, -0.279653, -0.882258,
		0.530877, -0.715213, 0.454578,
		-0.758126, -0.640519, -0.122390,
		38.676697, 38.729607, 31.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520206, 38.557762, 31.277346>,  <39.207382, 39.177971, 31.496622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520206, 38.557762, 31.277346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145023, 38.552235, 31.138754>,  <38.919914, 38.548916, 31.055599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145023, 38.552235, 31.138754>,  <39.520206, 38.557762, 31.277346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145023, 38.552235, 31.138754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323136, -0.397315, -0.858909,
		-0.125789, -0.917579, 0.377130,
		-0.937956, -0.013823, -0.346480,
		38.863636, 38.548088, 31.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412254, 37.911057, 31.077475>,  <39.520206, 38.557762, 31.277346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412254, 37.911057, 31.077475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123425, 38.083439, 30.860998>,  <38.950127, 38.186871, 30.731112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123425, 38.083439, 30.860998>,  <39.412254, 37.911057, 31.077475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123425, 38.083439, 30.860998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276147, -0.537706, -0.796627,
		-0.634315, -0.724670, 0.269255,
		-0.722072, 0.430958, -0.541191,
		38.906803, 38.212727, 30.698641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161747, 37.406799, 30.633410>,  <39.412254, 37.911057, 31.077475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161747, 37.406799, 30.633410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069405, 37.753551, 30.456671>,  <39.014000, 37.961601, 30.350628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069405, 37.753551, 30.456671>,  <39.161747, 37.406799, 30.633410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069405, 37.753551, 30.456671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219911, -0.395874, -0.891584,
		-0.947810, -0.302995, -0.099246,
		-0.230857, 0.866878, -0.441846,
		39.000149, 38.013615, 30.324118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726654, 37.140656, 29.985329>,  <39.161747, 37.406799, 30.633410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726654, 37.140656, 29.985329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826412, 37.522106, 29.917933>,  <38.886269, 37.750977, 29.877495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826412, 37.522106, 29.917933>,  <38.726654, 37.140656, 29.985329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826412, 37.522106, 29.917933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316936, -0.244783, -0.916315,
		-0.915070, 0.175124, -0.363288,
		0.249396, 0.953631, -0.168490,
		38.901230, 37.808197, 29.867386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409710, 37.300510, 29.419323>,  <38.726654, 37.140656, 29.985329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409710, 37.300510, 29.419323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711765, 37.562363, 29.433348>,  <38.892998, 37.719475, 29.441763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711765, 37.562363, 29.433348>,  <38.409710, 37.300510, 29.419323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711765, 37.562363, 29.433348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265930, -0.256992, -0.929105,
		-0.599209, 0.710925, -0.368150,
		0.755135, 0.654631, 0.035064,
		38.938305, 37.758751, 29.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373543, 37.685661, 28.699614>,  <38.409710, 37.300510, 29.419323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373543, 37.685661, 28.699614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726311, 37.735641, 28.881432>,  <38.937969, 37.765629, 28.990522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726311, 37.735641, 28.881432>,  <38.373543, 37.685661, 28.699614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726311, 37.735641, 28.881432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471259, -0.257734, -0.843498,
		0.011758, 0.958103, -0.286183,
		0.881917, 0.124948, 0.454545,
		38.990887, 37.773125, 29.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737759, 38.102436, 28.207144>,  <38.373543, 37.685661, 28.699614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737759, 38.102436, 28.207144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016701, 37.916847, 28.425657>,  <39.184067, 37.805496, 28.556765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016701, 37.916847, 28.425657>,  <38.737759, 38.102436, 28.207144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016701, 37.916847, 28.425657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421494, -0.350981, -0.836155,
		0.579685, 0.813354, -0.049199,
		0.697358, -0.463969, 0.546282,
		39.225906, 37.777657, 28.589542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403790, 38.191422, 27.856520>,  <38.737759, 38.102436, 28.207144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403790, 38.191422, 27.856520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487789, 37.881416, 28.094933>,  <39.538189, 37.695412, 28.237980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487789, 37.881416, 28.094933>,  <39.403790, 38.191422, 27.856520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487789, 37.881416, 28.094933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640443, -0.351583, -0.682804,
		0.738737, 0.525115, 0.422518,
		0.210000, -0.775012, 0.596034,
		39.550789, 37.648914, 28.273743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032921, 38.103874, 27.699598>,  <39.403790, 38.191422, 27.856520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032921, 38.103874, 27.699598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954414, 37.751488, 27.871822>,  <39.907310, 37.540058, 27.975157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954414, 37.751488, 27.871822>,  <40.032921, 38.103874, 27.699598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954414, 37.751488, 27.871822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592053, -0.456494, -0.664143,
		0.781634, 0.124563, 0.611173,
		-0.196270, -0.880964, 0.430559,
		39.895535, 37.487198, 28.000990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633858, 37.746063, 27.735840>,  <40.032921, 38.103874, 27.699598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633858, 37.746063, 27.735840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366173, 37.450024, 27.762396>,  <40.205563, 37.272400, 27.778330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366173, 37.450024, 27.762396>,  <40.633858, 37.746063, 27.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366173, 37.450024, 27.762396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545566, -0.550032, -0.632315,
		0.504492, -0.386934, 0.771861,
		-0.669213, -0.740099, 0.066389,
		40.165409, 37.227993, 27.782312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990990, 37.084087, 27.834997>,  <40.633858, 37.746063, 27.735840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990990, 37.084087, 27.834997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627274, 36.993511, 27.695330>,  <40.409046, 36.939163, 27.611528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627274, 36.993511, 27.695330>,  <40.990990, 37.084087, 27.834997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627274, 36.993511, 27.695330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414979, -0.556739, -0.719607,
		-0.031446, -0.799228, 0.600205,
		-0.909287, -0.226444, -0.349170,
		40.354488, 36.925579, 27.590578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160389, 36.557121, 27.566172>,  <40.990990, 37.084087, 27.834997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160389, 36.557121, 27.566172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793568, 36.619007, 27.419159>,  <40.573475, 36.656139, 27.330952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793568, 36.619007, 27.419159>,  <41.160389, 36.557121, 27.566172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793568, 36.619007, 27.419159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219273, -0.574172, -0.788826,
		-0.333070, -0.803984, 0.492620,
		-0.917052, 0.154716, -0.367532,
		40.518452, 36.665421, 27.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709938, 35.886944, 27.494539>,  <41.160389, 36.557121, 27.566172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709938, 35.886944, 27.494539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598392, 36.158581, 27.222933>,  <40.531467, 36.321564, 27.059969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598392, 36.158581, 27.222933>,  <40.709938, 35.886944, 27.494539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598392, 36.158581, 27.222933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281841, -0.618056, -0.733875,
		-0.918042, -0.396024, -0.019046,
		-0.278861, 0.679096, -0.679017,
		40.514732, 36.362309, 27.019228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442997, 35.458485, 26.910913>,  <40.709938, 35.886944, 27.494539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442997, 35.458485, 26.910913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501743, 35.812012, 26.733240>,  <40.536991, 36.024128, 26.626637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501743, 35.812012, 26.733240>,  <40.442997, 35.458485, 26.910913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501743, 35.812012, 26.733240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343634, -0.466672, -0.814943,
		-0.927548, -0.032947, -0.372249,
		0.146868, 0.883816, -0.444182,
		40.545803, 36.077156, 26.599985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049133, 35.525284, 26.244501>,  <40.442997, 35.458485, 26.910913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049133, 35.525284, 26.244501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338959, 35.799175, 26.213118>,  <40.512856, 35.963509, 26.194288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338959, 35.799175, 26.213118>,  <40.049133, 35.525284, 26.244501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338959, 35.799175, 26.213118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303176, -0.418891, -0.855929,
		-0.618940, 0.596391, -0.511107,
		0.724567, 0.684724, -0.078457,
		40.556328, 36.004593, 26.189581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125240, 35.633560, 25.514940>,  <40.049133, 35.525284, 26.244501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125240, 35.633560, 25.514940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447498, 35.841656, 25.628281>,  <40.640854, 35.966515, 25.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447498, 35.841656, 25.628281>,  <40.125240, 35.633560, 25.514940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447498, 35.841656, 25.628281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405455, -0.135514, -0.904014,
		-0.431909, 0.843199, -0.320111,
		0.805643, 0.520242, 0.283349,
		40.689190, 35.997730, 25.713285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248611, 36.280159, 25.067041>,  <40.125240, 35.633560, 25.514940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248611, 36.280159, 25.067041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569759, 36.118599, 25.242434>,  <40.762447, 36.021664, 25.347668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569759, 36.118599, 25.242434>,  <40.248611, 36.280159, 25.067041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569759, 36.118599, 25.242434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411689, -0.156330, -0.897816,
		0.431178, 0.901345, 0.040770,
		0.802869, -0.403903, 0.438479,
		40.810619, 35.997429, 25.373978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663784, 36.340393, 24.620266>,  <40.248611, 36.280159, 25.067041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663784, 36.340393, 24.620266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883244, 36.116409, 24.868599>,  <41.014919, 35.982018, 25.017599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883244, 36.116409, 24.868599>,  <40.663784, 36.340393, 24.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883244, 36.116409, 24.868599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610538, -0.238957, -0.755078,
		0.571166, 0.793311, 0.210775,
		0.548646, -0.559962, 0.620831,
		41.047836, 35.948421, 25.054848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269539, 36.518597, 24.455635>,  <40.663784, 36.340393, 24.620266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269539, 36.518597, 24.455635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308109, 36.155331, 24.618574>,  <41.331253, 35.937370, 24.716337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308109, 36.155331, 24.618574>,  <41.269539, 36.518597, 24.455635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308109, 36.155331, 24.618574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589821, -0.277520, -0.758349,
		0.801756, 0.313388, 0.508897,
		0.096428, -0.908169, 0.407346,
		41.337036, 35.882881, 24.740778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976738, 36.337650, 24.591505>,  <41.269539, 36.518597, 24.455635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976738, 36.337650, 24.591505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784912, 35.986984, 24.576111>,  <41.669815, 35.776585, 24.566875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784912, 35.986984, 24.576111>,  <41.976738, 36.337650, 24.591505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784912, 35.986984, 24.576111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562646, -0.273539, -0.780132,
		0.673386, -0.395775, 0.624430,
		-0.479563, -0.876663, -0.038484,
		41.641045, 35.723984, 24.564566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473656, 35.773521, 24.482397>,  <41.976738, 36.337650, 24.591505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473656, 35.773521, 24.482397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124886, 35.605743, 24.381351>,  <41.915623, 35.505077, 24.320724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124886, 35.605743, 24.381351>,  <42.473656, 35.773521, 24.482397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124886, 35.605743, 24.381351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395346, -0.298698, -0.868609,
		0.288879, -0.857230, 0.426269,
		-0.871923, -0.419446, -0.252615,
		41.863308, 35.479908, 24.305567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724678, 35.182823, 24.105259>,  <42.473656, 35.773521, 24.482397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724678, 35.182823, 24.105259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334557, 35.168552, 24.018066>,  <42.100483, 35.159992, 23.965752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334557, 35.168552, 24.018066>,  <42.724678, 35.182823, 24.105259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334557, 35.168552, 24.018066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198300, -0.576092, -0.792966,
		-0.097289, -0.816606, 0.568937,
		-0.975301, -0.035673, -0.217981,
		42.041965, 35.157852, 23.952673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528522, 34.466133, 24.033976>,  <42.724678, 35.182823, 24.105259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528522, 34.466133, 24.033976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279518, 34.704334, 23.830856>,  <42.130116, 34.847256, 23.708984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279518, 34.704334, 23.830856>,  <42.528522, 34.466133, 24.033976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279518, 34.704334, 23.830856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155909, -0.541480, -0.826131,
		-0.766927, -0.593443, 0.244232,
		-0.622508, 0.595504, -0.507799,
		42.092766, 34.882984, 23.678516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100948, 34.048584, 23.668161>,  <42.528522, 34.466133, 24.033976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100948, 34.048584, 23.668161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038746, 34.389324, 23.468092>,  <42.001423, 34.593769, 23.348049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038746, 34.389324, 23.468092>,  <42.100948, 34.048584, 23.668161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038746, 34.389324, 23.468092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162335, -0.477413, -0.863553,
		-0.974404, -0.215487, -0.064041,
		-0.155511, 0.851846, -0.500174,
		41.992092, 34.644878, 23.318039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726128, 33.792000, 23.085993>,  <42.100948, 34.048584, 23.668161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726128, 33.792000, 23.085993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868996, 34.151546, 22.984425>,  <41.954716, 34.367275, 22.923483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868996, 34.151546, 22.984425>,  <41.726128, 33.792000, 23.085993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868996, 34.151546, 22.984425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241821, -0.351572, -0.904389,
		-0.902194, 0.261615, -0.342934,
		0.357168, 0.898863, -0.253922,
		41.976147, 34.421204, 22.908249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285339, 33.988750, 22.589397>,  <41.726128, 33.792000, 23.085993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285339, 33.988750, 22.589397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628170, 34.188450, 22.538527>,  <41.833870, 34.308270, 22.508005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628170, 34.188450, 22.538527>,  <41.285339, 33.988750, 22.589397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628170, 34.188450, 22.538527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023172, -0.283959, -0.958556,
		-0.514667, 0.818610, -0.254944,
		0.857077, 0.499244, -0.127176,
		41.885292, 34.338223, 22.500374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193657, 34.249065, 21.902153>,  <41.285339, 33.988750, 22.589397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193657, 34.249065, 21.902153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585529, 34.279385, 21.976418>,  <41.820652, 34.297577, 22.020977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585529, 34.279385, 21.976418>,  <41.193657, 34.249065, 21.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585529, 34.279385, 21.976418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200127, -0.428906, -0.880902,
		0.012860, 0.900163, -0.435362,
		0.979686, 0.075800, 0.185662,
		41.879436, 34.302124, 22.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587112, 34.564983, 21.362335>,  <41.193657, 34.249065, 21.902153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587112, 34.564983, 21.362335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871155, 34.373329, 21.568703>,  <42.041580, 34.258335, 21.692524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871155, 34.373329, 21.568703>,  <41.587112, 34.564983, 21.362335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871155, 34.373329, 21.568703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265972, -0.495912, -0.826638,
		0.651923, 0.724223, -0.224715,
		0.710109, -0.479137, 0.515919,
		42.084187, 34.229588, 21.723478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147186, 34.668800, 20.896544>,  <41.587112, 34.564983, 21.362335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147186, 34.668800, 20.896544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293919, 34.393360, 21.146749>,  <42.381958, 34.228096, 21.296873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293919, 34.393360, 21.146749>,  <42.147186, 34.668800, 20.896544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293919, 34.393360, 21.146749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594275, -0.343858, -0.727048,
		0.715732, 0.638431, 0.283080,
		0.366831, -0.688598, 0.625514,
		42.403969, 34.186779, 21.334404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998547, 34.656811, 20.767101>,  <42.147186, 34.668800, 20.896544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998547, 34.656811, 20.767101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901146, 34.311283, 20.943521>,  <42.842705, 34.103966, 21.049374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901146, 34.311283, 20.943521>,  <42.998547, 34.656811, 20.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901146, 34.311283, 20.943521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468956, -0.502909, -0.726060,
		0.848992, 0.030036, 0.527551,
		-0.243502, -0.863818, 0.441051,
		42.828094, 34.052139, 21.075836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597343, 34.374222, 20.832500>,  <42.998547, 34.656811, 20.767101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597343, 34.374222, 20.832500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334526, 34.073627, 20.856371>,  <43.176838, 33.893269, 20.870693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334526, 34.073627, 20.856371>,  <43.597343, 34.374222, 20.832500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334526, 34.073627, 20.856371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477621, -0.476220, -0.738304,
		0.583245, -0.456595, 0.671823,
		-0.657041, -0.751489, 0.059674,
		43.137413, 33.848179, 20.874273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964100, 33.793732, 20.944084>,  <43.597343, 34.374222, 20.832500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964100, 33.793732, 20.944084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619423, 33.654633, 20.796274>,  <43.412617, 33.571171, 20.707588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619423, 33.654633, 20.796274>,  <43.964100, 33.793732, 20.944084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619423, 33.654633, 20.796274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506776, -0.626640, -0.592031,
		-0.025681, -0.697417, 0.716205,
		-0.861695, -0.347751, -0.369527,
		43.360916, 33.550308, 20.685415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107342, 33.005821, 20.943909>,  <43.964100, 33.793732, 20.944084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107342, 33.005821, 20.943909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797012, 33.105713, 20.712141>,  <43.610813, 33.165646, 20.573080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797012, 33.105713, 20.712141>,  <44.107342, 33.005821, 20.943909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797012, 33.105713, 20.712141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335850, -0.613975, -0.714311,
		-0.534132, -0.748780, 0.392468,
		-0.775827, 0.249726, -0.579421,
		43.564262, 33.180630, 20.538315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854248, 32.349384, 20.737953>,  <44.107342, 33.005821, 20.943909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854248, 32.349384, 20.737953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711395, 32.625256, 20.485987>,  <43.625683, 32.790779, 20.334806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711395, 32.625256, 20.485987>,  <43.854248, 32.349384, 20.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711395, 32.625256, 20.485987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155782, -0.620966, -0.768201,
		-0.920972, -0.372479, 0.114327,
		-0.357132, 0.689681, -0.629918,
		43.604256, 32.832161, 20.297010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319042, 31.970827, 20.296921>,  <43.854248, 32.349384, 20.737953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319042, 31.970827, 20.296921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451046, 32.297661, 20.107832>,  <43.530251, 32.493759, 19.994379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451046, 32.297661, 20.107832>,  <43.319042, 31.970827, 20.296921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451046, 32.297661, 20.107832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094882, -0.526953, -0.844582,
		-0.939196, 0.233870, -0.251427,
		0.330013, 0.817084, -0.472722,
		43.550049, 32.542786, 19.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870487, 32.155918, 19.693050>,  <43.319042, 31.970827, 20.296921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870487, 32.155918, 19.693050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230736, 32.319210, 19.633417>,  <43.446884, 32.417187, 19.597637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230736, 32.319210, 19.633417>,  <42.870487, 32.155918, 19.693050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230736, 32.319210, 19.633417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179897, -0.662443, -0.727190,
		-0.395622, 0.628104, -0.670051,
		0.900622, 0.408233, -0.149083,
		43.500923, 32.441681, 19.588692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010151, 31.994196, 18.980047>,  <42.870487, 32.155918, 19.693050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010151, 31.994196, 18.980047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375065, 32.110130, 19.095793>,  <43.594013, 32.179691, 19.165239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375065, 32.110130, 19.095793>,  <43.010151, 31.994196, 18.980047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375065, 32.110130, 19.095793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409512, -0.635207, -0.654837,
		-0.005992, 0.715895, -0.698182,
		0.912285, 0.289838, 0.289362,
		43.648750, 32.197083, 19.182602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402534, 32.156929, 18.350100>,  <43.010151, 31.994196, 18.980047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402534, 32.156929, 18.350100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666672, 32.067532, 18.636873>,  <43.825153, 32.013893, 18.808937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666672, 32.067532, 18.636873>,  <43.402534, 32.156929, 18.350100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666672, 32.067532, 18.636873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486724, -0.599647, -0.635234,
		0.571879, 0.768423, -0.287194,
		0.660343, -0.223493, 0.716936,
		43.864777, 32.000484, 18.851954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984055, 31.969643, 18.025944>,  <43.402534, 32.156929, 18.350100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984055, 31.969643, 18.025944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072460, 31.811462, 18.382544>,  <44.125504, 31.716555, 18.596504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072460, 31.811462, 18.382544>,  <43.984055, 31.969643, 18.025944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072460, 31.811462, 18.382544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361565, -0.815741, -0.451484,
		0.905771, 0.422121, -0.037312,
		0.221018, -0.395450, 0.891499,
		44.138767, 31.692827, 18.649994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741596, 31.706463, 18.088789>,  <43.984055, 31.969643, 18.025944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741596, 31.706463, 18.088789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455963, 31.535046, 18.310219>,  <44.284584, 31.432196, 18.443077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455963, 31.535046, 18.310219>,  <44.741596, 31.706463, 18.088789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455963, 31.535046, 18.310219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154394, -0.867679, -0.472542,
		0.682827, -0.251965, 0.685756,
		-0.714079, -0.428541, 0.553573,
		44.241741, 31.406483, 18.476290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960064, 31.182800, 18.673279>,  <44.741596, 31.706463, 18.088789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960064, 31.182800, 18.673279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592804, 31.078066, 18.554327>,  <44.372448, 31.015224, 18.482956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592804, 31.078066, 18.554327>,  <44.960064, 31.182800, 18.673279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592804, 31.078066, 18.554327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352284, -0.882985, -0.310216,
		-0.181355, -0.389588, 0.902957,
		-0.918154, -0.261838, -0.297379,
		44.317356, 30.999516, 18.465113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340038, 30.578661, 19.134933>,  <44.960064, 31.182800, 18.673279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340038, 30.578661, 19.134933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544601, 30.306868, 19.345369>,  <45.667339, 30.143791, 19.471630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544601, 30.306868, 19.345369>,  <45.340038, 30.578661, 19.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544601, 30.306868, 19.345369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271687, -0.452953, -0.849129,
		0.815260, 0.577181, -0.047037,
		0.511407, -0.679482, 0.526088,
		45.698025, 30.103024, 19.503195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056408, 30.427681, 18.731583>,  <45.340038, 30.578661, 19.134933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056408, 30.427681, 18.731583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947334, 30.121395, 18.964590>,  <45.881889, 29.937624, 19.104395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947334, 30.121395, 18.964590>,  <46.056408, 30.427681, 18.731583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947334, 30.121395, 18.964590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199028, -0.637261, -0.744504,
		0.941293, -0.087077, 0.326169,
		-0.272683, -0.765713, 0.582518,
		45.865528, 29.891682, 19.139345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904942, 30.354721, 18.074116>,  <46.056408, 30.427681, 18.731583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904942, 30.354721, 18.074116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519638, 30.438297, 18.141623>,  <45.288456, 30.488443, 18.182127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519638, 30.438297, 18.141623>,  <45.904942, 30.354721, 18.074116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519638, 30.438297, 18.141623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267727, -0.696780, -0.665448,
		-0.021447, -0.686179, 0.727116,
		-0.963256, 0.208941, 0.168765,
		45.230659, 30.500980, 18.192251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450863, 29.748085, 18.281366>,  <45.904942, 30.354721, 18.074116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450863, 29.748085, 18.281366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276649, 30.045755, 18.078779>,  <45.172123, 30.224358, 17.957228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276649, 30.045755, 18.078779>,  <45.450863, 29.748085, 18.281366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276649, 30.045755, 18.078779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203801, -0.629543, -0.749760,
		-0.876798, -0.223328, 0.425852,
		-0.435535, 0.744177, -0.506468,
		45.145988, 30.269009, 17.926840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007328, 29.193413, 18.603233>,  <45.450863, 29.748085, 18.281366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007328, 29.193413, 18.603233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401051, 29.142662, 18.652302>,  <45.637283, 29.112211, 18.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401051, 29.142662, 18.652302>,  <45.007328, 29.193413, 18.603233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401051, 29.142662, 18.652302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034079, 0.545365, 0.837506,
		-0.173160, -0.828541, 0.532481,
		0.984304, -0.126876, 0.122671,
		45.696342, 29.104599, 18.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121437, 28.811714, 19.221521>,  <45.007328, 29.193413, 18.603233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121437, 28.811714, 19.221521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444443, 29.041847, 19.169508>,  <45.638248, 29.179928, 19.138300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444443, 29.041847, 19.169508>,  <45.121437, 28.811714, 19.221521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444443, 29.041847, 19.169508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155365, 0.420133, 0.894064,
		0.569016, -0.701769, 0.428651,
		0.807517, 0.575334, -0.130032,
		45.686699, 29.214447, 19.130499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555920, 28.837677, 19.851715>,  <45.121437, 28.811714, 19.221521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555920, 28.837677, 19.851715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625549, 29.159651, 19.624815>,  <45.667328, 29.352835, 19.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625549, 29.159651, 19.624815>,  <45.555920, 28.837677, 19.851715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625549, 29.159651, 19.624815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076994, 0.563159, 0.822754,
		0.981718, -0.186896, 0.036057,
		0.174075, 0.804936, -0.567253,
		45.677773, 29.401133, 19.454639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013756, 29.074102, 20.216915>,  <45.555920, 28.837677, 19.851715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013756, 29.074102, 20.216915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906246, 29.394156, 20.002422>,  <45.841740, 29.586187, 19.873726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906246, 29.394156, 20.002422>,  <46.013756, 29.074102, 20.216915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906246, 29.394156, 20.002422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068138, 0.571118, 0.818035,
		0.960791, 0.183327, -0.208021,
		-0.268772, 0.800135, -0.536233,
		45.825615, 29.634195, 19.841553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375542, 29.624464, 20.546110>,  <46.013756, 29.074102, 20.216915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375542, 29.624464, 20.546110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052784, 29.766819, 20.357531>,  <45.859131, 29.852232, 20.244383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052784, 29.766819, 20.357531>,  <46.375542, 29.624464, 20.546110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052784, 29.766819, 20.357531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142402, 0.657389, 0.739974,
		0.573274, 0.664217, -0.479764,
		-0.806895, 0.355888, -0.471450,
		45.810715, 29.873585, 20.216095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458752, 30.274418, 20.619331>,  <46.375542, 29.624464, 20.546110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458752, 30.274418, 20.619331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066929, 30.217581, 20.562372>,  <45.831837, 30.183479, 20.528196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066929, 30.217581, 20.562372>,  <46.458752, 30.274418, 20.619331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066929, 30.217581, 20.562372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198148, 0.559443, 0.804836,
		-0.034697, 0.816599, -0.576162,
		-0.979558, -0.142091, -0.142397,
		45.773060, 30.174953, 20.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099442, 31.006350, 20.741356>,  <46.458752, 30.274418, 20.619331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099442, 31.006350, 20.741356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816925, 30.728989, 20.798401>,  <45.647415, 30.562572, 20.832628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816925, 30.728989, 20.798401>,  <46.099442, 31.006350, 20.741356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816925, 30.728989, 20.798401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270082, 0.450155, 0.851126,
		-0.654372, 0.562630, -0.505218,
		-0.706295, -0.693403, 0.142613,
		45.605038, 30.520967, 20.841185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603783, 31.403677, 20.996050>,  <46.099442, 31.006350, 20.741356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603783, 31.403677, 20.996050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482948, 31.039848, 21.110189>,  <45.410446, 30.821552, 21.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482948, 31.039848, 21.110189>,  <45.603783, 31.403677, 20.996050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482948, 31.039848, 21.110189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418522, 0.395491, 0.817573,
		-0.856493, 0.127555, -0.500149,
		-0.302090, -0.909570, 0.285351,
		45.392323, 30.766977, 21.195795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936737, 31.534533, 21.229002>,  <45.603783, 31.403677, 20.996050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936737, 31.534533, 21.229002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062531, 31.183674, 21.374168>,  <45.138008, 30.973158, 21.461267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062531, 31.183674, 21.374168>,  <44.936737, 31.534533, 21.229002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062531, 31.183674, 21.374168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206551, 0.309922, 0.928054,
		-0.926517, -0.366822, -0.083709,
		0.314488, -0.877149, 0.362916,
		45.156876, 30.920528, 21.483044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306892, 31.230015, 21.630362>,  <44.936737, 31.534533, 21.229002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306892, 31.230015, 21.630362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615597, 31.020288, 21.774296>,  <44.800819, 30.894453, 21.860657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615597, 31.020288, 21.774296>,  <44.306892, 31.230015, 21.630362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615597, 31.020288, 21.774296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291390, 0.211375, 0.932959,
		-0.565225, -0.824872, 0.010350,
		0.771760, -0.524316, 0.359834,
		44.847126, 30.862993, 21.882246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071121, 30.877403, 22.087440>,  <44.306892, 31.230015, 21.630362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071121, 30.877403, 22.087440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454746, 30.857830, 22.199009>,  <44.684921, 30.846087, 22.265949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454746, 30.857830, 22.199009>,  <44.071121, 30.877403, 22.087440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454746, 30.857830, 22.199009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268887, 0.151619, 0.951163,
		-0.088836, -0.987227, 0.132254,
		0.959066, -0.048936, 0.278921,
		44.742466, 30.843149, 22.282684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090931, 30.386055, 22.713228>,  <44.071121, 30.877403, 22.087440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090931, 30.386055, 22.713228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403053, 30.635056, 22.689178>,  <44.590328, 30.784456, 22.674749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403053, 30.635056, 22.689178>,  <44.090931, 30.386055, 22.713228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403053, 30.635056, 22.689178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212348, 0.354144, 0.910764,
		0.588246, -0.697906, 0.408527,
		0.780305, 0.622503, -0.060125,
		44.637146, 30.821806, 22.671141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544498, 30.300959, 23.330437>,  <44.090931, 30.386055, 22.713228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544498, 30.300959, 23.330437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588638, 30.668812, 23.179651>,  <44.615124, 30.889523, 23.089180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588638, 30.668812, 23.179651>,  <44.544498, 30.300959, 23.330437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588638, 30.668812, 23.179651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229503, 0.392605, 0.890612,
		0.967032, -0.011765, 0.254382,
		0.110350, 0.919632, -0.376962,
		44.621742, 30.944702, 23.066563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938965, 30.631029, 23.950874>,  <44.544498, 30.300959, 23.330437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938965, 30.631029, 23.950874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796795, 30.911446, 23.703581>,  <44.711491, 31.079695, 23.555204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796795, 30.911446, 23.703581>,  <44.938965, 30.631029, 23.950874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796795, 30.911446, 23.703581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347647, 0.514823, 0.783645,
		0.867648, 0.493455, 0.060733,
		-0.355427, 0.701042, -0.618233,
		44.690166, 31.121758, 23.518110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142731, 31.150398, 24.285927>,  <44.938965, 30.631029, 23.950874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142731, 31.150398, 24.285927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864670, 31.304434, 24.043121>,  <44.697834, 31.396856, 23.897438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864670, 31.304434, 24.043121>,  <45.142731, 31.150398, 24.285927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864670, 31.304434, 24.043121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336500, 0.571869, 0.748154,
		0.635239, 0.724342, -0.267954,
		-0.695154, 0.385090, -0.607014,
		44.656124, 31.419960, 23.861017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111790, 31.907730, 24.409708>,  <45.142731, 31.150398, 24.285927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111790, 31.907730, 24.409708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759892, 31.809851, 24.246651>,  <44.548752, 31.751123, 24.148815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759892, 31.809851, 24.246651>,  <45.111790, 31.907730, 24.409708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759892, 31.809851, 24.246651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451852, 0.697052, 0.556729,
		0.147919, 0.673974, -0.723795,
		-0.879744, -0.244697, -0.407644,
		44.495968, 31.736441, 24.124357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811871, 32.462223, 24.112967>,  <45.111790, 31.907730, 24.409708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811871, 32.462223, 24.112967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489021, 32.236786, 24.183290>,  <44.295311, 32.101524, 24.225485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489021, 32.236786, 24.183290>,  <44.811871, 32.462223, 24.112967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489021, 32.236786, 24.183290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446424, 0.777499, 0.442946,
		-0.386336, 0.279026, -0.879141,
		-0.807125, -0.563595, 0.175812,
		44.246883, 32.067707, 24.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371006, 32.926117, 24.177620>,  <44.811871, 32.462223, 24.112967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371006, 32.926117, 24.177620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164917, 32.604710, 24.296888>,  <44.041264, 32.411865, 24.368450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164917, 32.604710, 24.296888>,  <44.371006, 32.926117, 24.177620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164917, 32.604710, 24.296888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590915, 0.585032, 0.555479,
		-0.620775, 0.110003, -0.776233,
		-0.515226, -0.803515, 0.298170,
		44.010349, 32.363655, 24.386339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627411, 33.070889, 24.045891>,  <44.371006, 32.926117, 24.177620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627411, 33.070889, 24.045891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696503, 32.833630, 24.360430>,  <43.737957, 32.691273, 24.549152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696503, 32.833630, 24.360430>,  <43.627411, 33.070889, 24.045891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696503, 32.833630, 24.360430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622738, 0.552771, 0.553753,
		-0.763126, -0.585339, -0.273893,
		0.172733, -0.593146, 0.786346,
		43.748322, 32.655685, 24.596334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996819, 33.126598, 24.417984>,  <43.627411, 33.070889, 24.045891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996819, 33.126598, 24.417984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244659, 32.952713, 24.679399>,  <43.393364, 32.848381, 24.836248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244659, 32.952713, 24.679399>,  <42.996819, 33.126598, 24.417984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244659, 32.952713, 24.679399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539608, 0.368749, 0.756867,
		-0.570012, -0.821613, -0.006097,
		0.619604, -0.434714, 0.653540,
		43.430542, 32.822300, 24.875462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560558, 32.819466, 24.910128>,  <42.996819, 33.126598, 24.417984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560558, 32.819466, 24.910128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916874, 32.844269, 25.090191>,  <43.130665, 32.859150, 25.198229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916874, 32.844269, 25.090191>,  <42.560558, 32.819466, 24.910128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916874, 32.844269, 25.090191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428168, 0.446313, 0.785797,
		-0.152185, -0.892726, 0.424122,
		0.890793, 0.062009, 0.450159,
		43.184113, 32.862873, 25.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529331, 32.546173, 25.594320>,  <42.560558, 32.819466, 24.910128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529331, 32.546173, 25.594320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834259, 32.805000, 25.599514>,  <43.017216, 32.960297, 25.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834259, 32.805000, 25.599514>,  <42.529331, 32.546173, 25.594320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834259, 32.805000, 25.599514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331110, 0.372694, 0.866871,
		0.556087, -0.665132, 0.498363,
		0.762321, 0.647069, 0.012981,
		43.062954, 32.999123, 25.603409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890282, 32.450348, 26.332418>,  <42.529331, 32.546173, 25.594320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890282, 32.450348, 26.332418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954910, 32.799427, 26.148113>,  <42.993687, 33.008873, 26.037531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954910, 32.799427, 26.148113>,  <42.890282, 32.450348, 26.332418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954910, 32.799427, 26.148113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365275, 0.486621, 0.793583,
		0.916771, 0.040084, 0.397397,
		0.161571, 0.872693, -0.460761,
		43.003380, 33.061234, 26.009886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958355, 32.891323, 26.896135>,  <42.890282, 32.450348, 26.332418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958355, 32.891323, 26.896135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949535, 33.177483, 26.616789>,  <42.944244, 33.349178, 26.449181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949535, 33.177483, 26.616789>,  <42.958355, 32.891323, 26.896135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949535, 33.177483, 26.616789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325865, 0.655246, 0.681516,
		0.945159, 0.242601, 0.218676,
		-0.022050, 0.715400, -0.698367,
		42.942921, 33.392101, 26.407278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421471, 33.507248, 27.175779>,  <42.958355, 32.891323, 26.896135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421471, 33.507248, 27.175779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148991, 33.637794, 26.913651>,  <42.985500, 33.716122, 26.756372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148991, 33.637794, 26.913651>,  <43.421471, 33.507248, 27.175779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148991, 33.637794, 26.913651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352249, 0.638593, 0.684193,
		0.641781, 0.696911, -0.320049,
		-0.681203, 0.326365, -0.655323,
		42.944630, 33.735703, 26.717054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475246, 34.239746, 27.274185>,  <43.421471, 33.507248, 27.175779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475246, 34.239746, 27.274185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135685, 34.185352, 27.069885>,  <42.931946, 34.152714, 26.947306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135685, 34.185352, 27.069885>,  <43.475246, 34.239746, 27.274185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135685, 34.185352, 27.069885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428443, 0.742919, 0.514303,
		0.309506, 0.655422, -0.688932,
		-0.848907, -0.135988, -0.510749,
		42.881012, 34.144554, 26.916660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196266, 34.905746, 27.031456>,  <43.475246, 34.239746, 27.274185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196266, 34.905746, 27.031456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876537, 34.668076, 27.067337>,  <42.684700, 34.525475, 27.088865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876537, 34.668076, 27.067337>,  <43.196266, 34.905746, 27.031456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876537, 34.668076, 27.067337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405570, 0.643587, 0.649083,
		-0.443400, 0.482443, -0.755410,
		-0.799318, -0.594176, 0.089702,
		42.636742, 34.489822, 27.094248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495331, 35.352249, 26.859018>,  <43.196266, 34.905746, 27.031456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495331, 35.352249, 26.859018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419209, 35.042240, 27.100060>,  <42.373535, 34.856236, 27.244684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419209, 35.042240, 27.100060>,  <42.495331, 35.352249, 26.859018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419209, 35.042240, 27.100060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563810, 0.588780, 0.579186,
		-0.803680, -0.229529, -0.549013,
		-0.190308, -0.775019, 0.602602,
		42.362118, 34.809734, 27.280840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799377, 35.624855, 27.159027>,  <42.495331, 35.352249, 26.859018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799377, 35.624855, 27.159027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874149, 35.283108, 27.352980>,  <41.919014, 35.078060, 27.469351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874149, 35.283108, 27.352980>,  <41.799377, 35.624855, 27.159027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874149, 35.283108, 27.352980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534183, 0.325830, 0.780053,
		-0.824443, -0.404832, -0.395481,
		0.186931, -0.854369, 0.484882,
		41.930229, 35.026798, 27.498444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121677, 35.284328, 27.389481>,  <41.799377, 35.624855, 27.159027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121677, 35.284328, 27.389481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427105, 35.173122, 27.622604>,  <41.610363, 35.106400, 27.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427105, 35.173122, 27.622604>,  <41.121677, 35.284328, 27.389481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427105, 35.173122, 27.622604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564980, 0.149382, 0.811470,
		-0.312660, -0.948891, -0.043007,
		0.763572, -0.278012, 0.582810,
		41.656178, 35.089718, 27.797447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773167, 35.005386, 27.860605>,  <41.121677, 35.284328, 27.389481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773167, 35.005386, 27.860605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137299, 35.028282, 28.024565>,  <41.355778, 35.042019, 28.122940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137299, 35.028282, 28.024565>,  <40.773167, 35.005386, 27.860605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137299, 35.028282, 28.024565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413633, 0.159959, 0.896282,
		-0.014267, -0.985463, 0.169291,
		0.910332, 0.057236, 0.409902,
		41.410397, 35.045456, 28.147535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717304, 34.572266, 28.499033>,  <40.773167, 35.005386, 27.860605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717304, 34.572266, 28.499033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036560, 34.808548, 28.546427>,  <41.228115, 34.950317, 28.574863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036560, 34.808548, 28.546427>,  <40.717304, 34.572266, 28.499033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036560, 34.808548, 28.546427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263191, 0.164957, 0.950537,
		0.541941, -0.789847, 0.287127,
		0.798142, 0.590704, 0.118484,
		41.276001, 34.985760, 28.581972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058163, 34.360195, 29.107510>,  <40.717304, 34.572266, 28.499033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058163, 34.360195, 29.107510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205513, 34.728672, 29.057379>,  <41.293922, 34.949757, 29.027300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205513, 34.728672, 29.057379>,  <41.058163, 34.360195, 29.107510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205513, 34.728672, 29.057379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193336, 0.207769, 0.958881,
		0.909353, -0.328995, 0.254636,
		0.368372, 0.921192, -0.125329,
		41.316025, 35.005028, 29.019779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655712, 34.482983, 29.668610>,  <41.058163, 34.360195, 29.107510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655712, 34.482983, 29.668610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525734, 34.845474, 29.560421>,  <41.447746, 35.062969, 29.495508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525734, 34.845474, 29.560421>,  <41.655712, 34.482983, 29.668610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525734, 34.845474, 29.560421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187647, 0.218526, 0.957619,
		0.926929, 0.361931, 0.099042,
		-0.324949, 0.906230, -0.270473,
		41.428249, 35.117344, 29.479279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064777, 35.021439, 29.998951>,  <41.655712, 34.482983, 29.668610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064777, 35.021439, 29.998951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718487, 35.193264, 29.896200>,  <41.510712, 35.296360, 29.834551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718487, 35.193264, 29.896200>,  <42.064777, 35.021439, 29.998951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718487, 35.193264, 29.896200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135428, 0.293038, 0.946461,
		0.481840, 0.854168, -0.195517,
		-0.865731, 0.429565, -0.256875,
		41.458767, 35.322132, 29.819138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084938, 35.466087, 30.425392>,  <42.064777, 35.021439, 29.998951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084938, 35.466087, 30.425392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708187, 35.500858, 30.295584>,  <41.482136, 35.521721, 30.217699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708187, 35.500858, 30.295584>,  <42.084938, 35.466087, 30.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708187, 35.500858, 30.295584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292982, 0.260195, 0.920033,
		0.164415, 0.961635, -0.219603,
		-0.941875, 0.086927, -0.324522,
		41.425625, 35.526936, 30.198227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871777, 36.076607, 30.722317>,  <42.084938, 35.466087, 30.425392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871777, 36.076607, 30.722317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528130, 35.884377, 30.651930>,  <41.321941, 35.769039, 30.609697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528130, 35.884377, 30.651930>,  <41.871777, 36.076607, 30.722317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528130, 35.884377, 30.651930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363689, 0.331392, 0.870580,
		-0.360067, 0.811927, -0.459486,
		-0.859117, -0.480577, -0.175965,
		41.270393, 35.740204, 30.599140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358269, 36.602840, 30.726641>,  <41.871777, 36.076607, 30.722317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358269, 36.602840, 30.726641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187885, 36.243645, 30.770794>,  <41.085655, 36.028130, 30.797285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187885, 36.243645, 30.770794>,  <41.358269, 36.602840, 30.726641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187885, 36.243645, 30.770794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359607, 0.279991, 0.890105,
		-0.830207, 0.339452, -0.442186,
		-0.425956, -0.897985, 0.110381,
		41.060097, 35.974251, 30.803907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586781, 36.710812, 30.657345>,  <41.358269, 36.602840, 30.726641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586781, 36.710812, 30.657345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638645, 36.362213, 30.846523>,  <40.669765, 36.153053, 30.960030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638645, 36.362213, 30.846523>,  <40.586781, 36.710812, 30.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638645, 36.362213, 30.846523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681542, 0.268106, 0.680896,
		-0.720200, -0.410620, -0.559199,
		0.129665, -0.871499, 0.472944,
		40.677544, 36.100765, 30.988407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943501, 36.536469, 30.719360>,  <40.586781, 36.710812, 30.657345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943501, 36.536469, 30.719360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133522, 36.339214, 31.010878>,  <40.247536, 36.220860, 31.185789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133522, 36.339214, 31.010878>,  <39.943501, 36.536469, 30.719360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133522, 36.339214, 31.010878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745211, 0.214985, 0.631222,
		-0.467960, -0.842968, -0.265363,
		0.475051, -0.493139, 0.728794,
		40.276039, 36.191273, 31.229515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342255, 36.139015, 31.116278>,  <39.943501, 36.536469, 30.719360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342255, 36.139015, 31.116278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652447, 36.132252, 31.368736>,  <39.838562, 36.128193, 31.520212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652447, 36.132252, 31.368736>,  <39.342255, 36.139015, 31.116278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652447, 36.132252, 31.368736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619506, 0.172535, 0.765796,
		-0.121841, -0.984858, 0.123325,
		0.775479, -0.016905, 0.631147,
		39.885090, 36.127182, 31.558081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143612, 35.837456, 31.723763>,  <39.342255, 36.139015, 31.116278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143612, 35.837456, 31.723763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456543, 36.043808, 31.863379>,  <39.644302, 36.167618, 31.947147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456543, 36.043808, 31.863379>,  <39.143612, 35.837456, 31.723763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456543, 36.043808, 31.863379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504324, 0.195775, 0.841029,
		0.365538, -0.833990, 0.413332,
		0.782329, 0.515881, 0.349039,
		39.691242, 36.198570, 31.968090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481190, 35.284035, 32.132202>,  <39.143612, 35.837456, 31.723763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481190, 35.284035, 32.132202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311367, 35.088692, 32.437164>,  <39.209473, 34.971485, 32.620140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311367, 35.088692, 32.437164>,  <39.481190, 35.284035, 32.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311367, 35.088692, 32.437164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191521, -0.871445, -0.451557,
		0.884915, -0.045693, 0.463506,
		-0.424553, -0.488361, 0.762403,
		39.184002, 34.942184, 32.665886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837322, 34.710896, 32.327251>,  <39.481190, 35.284035, 32.132202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837322, 34.710896, 32.327251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458553, 34.653168, 32.442154>,  <39.231293, 34.618530, 32.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458553, 34.653168, 32.442154>,  <39.837322, 34.710896, 32.327251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458553, 34.653168, 32.442154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008771, -0.881630, -0.471859,
		0.321356, -0.449332, 0.833565,
		-0.946918, -0.144324, 0.287258,
		39.174477, 34.609871, 32.528332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709576, 34.149029, 32.950836>,  <39.837322, 34.710896, 32.327251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709576, 34.149029, 32.950836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372429, 34.183186, 32.738316>,  <39.170139, 34.203682, 32.610802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372429, 34.183186, 32.738316>,  <39.709576, 34.149029, 32.950836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372429, 34.183186, 32.738316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242094, -0.821596, -0.516111,
		-0.480591, -0.563638, 0.671822,
		-0.842866, 0.085394, -0.531305,
		39.119568, 34.208805, 32.578922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580849, 33.472755, 32.775955>,  <39.709576, 34.149029, 32.950836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580849, 33.472755, 32.775955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296898, 33.634834, 32.545513>,  <39.126530, 33.732082, 32.407249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296898, 33.634834, 32.545513>,  <39.580849, 33.472755, 32.775955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296898, 33.634834, 32.545513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078281, -0.767493, -0.636260,
		-0.699964, -0.496763, 0.513105,
		-0.709875, 0.405193, -0.576105,
		39.083935, 33.756393, 32.372681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154709, 32.947193, 32.591705>,  <39.580849, 33.472755, 32.775955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154709, 32.947193, 32.591705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126900, 33.222031, 32.302410>,  <39.110214, 33.386932, 32.128834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126900, 33.222031, 32.302410>,  <39.154709, 32.947193, 32.591705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126900, 33.222031, 32.302410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076239, -0.719210, -0.690597,
		-0.994663, -0.103154, -0.002379,
		-0.069527, 0.687093, -0.723235,
		39.106041, 33.428158, 32.085438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755840, 32.637775, 32.105167>,  <39.154709, 32.947193, 32.591705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755840, 32.637775, 32.105167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868443, 32.956551, 31.891386>,  <38.936005, 33.147816, 31.763119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868443, 32.956551, 31.891386>,  <38.755840, 32.637775, 32.105167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868443, 32.956551, 31.891386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112185, -0.580489, -0.806503,
		-0.952978, 0.167082, -0.252818,
		0.281510, 0.796942, -0.534449,
		38.952896, 33.195633, 31.731050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377277, 32.727249, 31.449745>,  <38.755840, 32.637775, 32.105167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377277, 32.727249, 31.449745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734516, 32.893917, 31.381903>,  <38.948860, 32.993919, 31.341198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734516, 32.893917, 31.381903>,  <38.377277, 32.727249, 31.449745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734516, 32.893917, 31.381903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105888, -0.561123, -0.820931,
		-0.437227, 0.715211, -0.545257,
		0.893096, 0.416669, -0.169606,
		39.002445, 33.018917, 31.331020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424217, 32.749756, 30.706408>,  <38.377277, 32.727249, 31.449745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424217, 32.749756, 30.706408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794109, 32.790245, 30.853176>,  <39.016045, 32.814537, 30.941236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794109, 32.790245, 30.853176>,  <38.424217, 32.749756, 30.706408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794109, 32.790245, 30.853176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335957, -0.670173, -0.661817,
		0.178910, 0.735271, -0.653734,
		0.924729, 0.101221, 0.366920,
		39.071529, 32.820610, 30.963253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715427, 32.961628, 30.112255>,  <38.424217, 32.749756, 30.706408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715427, 32.961628, 30.112255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002411, 32.817547, 30.350754>,  <39.174599, 32.731098, 30.493853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002411, 32.817547, 30.350754>,  <38.715427, 32.961628, 30.112255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002411, 32.817547, 30.350754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270414, -0.644803, -0.714916,
		0.641976, 0.674155, -0.365215,
		0.717456, -0.360200, 0.596249,
		39.217648, 32.709488, 30.529629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337624, 33.090759, 29.703625>,  <38.715427, 32.961628, 30.112255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337624, 33.090759, 29.703625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417850, 32.809891, 29.976894>,  <39.465988, 32.641369, 30.140856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417850, 32.809891, 29.976894>,  <39.337624, 33.090759, 29.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417850, 32.809891, 29.976894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401527, -0.577165, -0.711096,
		0.893615, 0.416936, 0.166179,
		0.200569, -0.702172, 0.683174,
		39.478020, 32.599239, 30.181847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973484, 32.817410, 29.441652>,  <39.337624, 33.090759, 29.703625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973484, 32.817410, 29.441652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844631, 32.536945, 29.696087>,  <39.767319, 32.368668, 29.848747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844631, 32.536945, 29.696087>,  <39.973484, 32.817410, 29.441652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844631, 32.536945, 29.696087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208994, -0.707996, -0.674584,
		0.923339, -0.084364, 0.374604,
		-0.322129, -0.701159, 0.636089,
		39.747993, 32.326599, 29.886913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539135, 32.365391, 29.556335>,  <39.973484, 32.817410, 29.441652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539135, 32.365391, 29.556335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225388, 32.144436, 29.669212>,  <40.037140, 32.011864, 29.736938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225388, 32.144436, 29.669212>,  <40.539135, 32.365391, 29.556335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225388, 32.144436, 29.669212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258522, -0.704654, -0.660779,
		0.563856, -0.445340, 0.695513,
		-0.784368, -0.552390, 0.282193,
		39.990078, 31.978720, 29.753870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821945, 31.686962, 29.660995>,  <40.539135, 32.365391, 29.556335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821945, 31.686962, 29.660995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427078, 31.631556, 29.629200>,  <40.190159, 31.598312, 29.610123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427078, 31.631556, 29.629200>,  <40.821945, 31.686962, 29.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427078, 31.631556, 29.629200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153777, -0.690109, -0.707179,
		0.043100, -0.710326, 0.702552,
		-0.987165, -0.138516, -0.079488,
		40.130928, 31.590000, 29.605354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614082, 30.970543, 29.710361>,  <40.821945, 31.686962, 29.660995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614082, 30.970543, 29.710361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334698, 31.146690, 29.484715>,  <40.167068, 31.252378, 29.349325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334698, 31.146690, 29.484715>,  <40.614082, 30.970543, 29.710361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334698, 31.146690, 29.484715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263609, -0.574525, -0.774875,
		-0.665330, -0.689926, 0.285198,
		-0.698460, 0.440367, -0.564119,
		40.125160, 31.278801, 29.315479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272861, 30.386955, 29.330015>,  <40.614082, 30.970543, 29.710361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272861, 30.386955, 29.330015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183971, 30.709455, 29.110716>,  <40.130638, 30.902956, 28.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183971, 30.709455, 29.110716>,  <40.272861, 30.386955, 29.330015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183971, 30.709455, 29.110716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160309, -0.524440, -0.836220,
		-0.961726, -0.273717, -0.012706,
		-0.222224, 0.806252, -0.548247,
		40.117306, 30.951330, 28.946241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948456, 30.171139, 28.655415>,  <40.272861, 30.386955, 29.330015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948456, 30.171139, 28.655415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054264, 30.551661, 28.592102>,  <40.117748, 30.779974, 28.554113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054264, 30.551661, 28.592102>,  <39.948456, 30.171139, 28.655415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054264, 30.551661, 28.592102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409732, -0.259440, -0.874535,
		-0.873012, 0.166477, -0.458405,
		0.264519, 0.951302, -0.158283,
		40.133621, 30.837051, 28.544617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609253, 30.365881, 27.979555>,  <39.948456, 30.171139, 28.655415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609253, 30.365881, 27.979555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941811, 30.569326, 28.069088>,  <40.141346, 30.691395, 28.122807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941811, 30.569326, 28.069088>,  <39.609253, 30.365881, 27.979555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941811, 30.569326, 28.069088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318233, -0.105584, -0.942114,
		-0.455540, 0.854496, -0.249640,
		0.831391, 0.508615, 0.223831,
		40.191227, 30.721910, 28.136238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667126, 30.653059, 27.391096>,  <39.609253, 30.365881, 27.979555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667126, 30.653059, 27.391096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018906, 30.645823, 27.581356>,  <40.229973, 30.641481, 27.695513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018906, 30.645823, 27.581356>,  <39.667126, 30.653059, 27.391096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018906, 30.645823, 27.581356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473719, -0.064335, -0.878323,
		0.046491, 0.997764, -0.048009,
		0.879448, -0.018091, 0.475651,
		40.282742, 30.640396, 27.724051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152115, 31.210968, 27.212275>,  <39.667126, 30.653059, 27.391096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152115, 31.210968, 27.212275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423859, 30.960283, 27.364958>,  <40.586906, 30.809874, 27.456568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423859, 30.960283, 27.364958>,  <40.152115, 31.210968, 27.212275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423859, 30.960283, 27.364958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674013, 0.327273, -0.662268,
		0.290127, 0.707196, 0.644748,
		0.679362, -0.626710, 0.381709,
		40.627666, 30.772270, 27.479471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688774, 31.477816, 26.976673>,  <40.152115, 31.210968, 27.212275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688774, 31.477816, 26.976673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854645, 31.143816, 27.121349>,  <40.954166, 30.943417, 27.208155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854645, 31.143816, 27.121349>,  <40.688774, 31.477816, 26.976673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854645, 31.143816, 27.121349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723638, 0.061606, -0.687425,
		0.551717, 0.546792, 0.629783,
		0.414677, -0.834999, 0.361691,
		40.979050, 30.893316, 27.229856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365238, 31.600651, 26.937410>,  <40.688774, 31.477816, 26.976673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365238, 31.600651, 26.937410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330719, 31.202427, 26.952475>,  <41.310009, 30.963493, 26.961514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330719, 31.202427, 26.952475>,  <41.365238, 31.600651, 26.937410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330719, 31.202427, 26.952475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603458, -0.082314, -0.793135,
		0.792712, -0.045717, 0.607880,
		-0.086297, -0.995557, 0.037663,
		41.304829, 30.903759, 26.963774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035934, 31.335375, 26.709545>,  <41.365238, 31.600651, 26.937410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035934, 31.335375, 26.709545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810230, 31.006058, 26.684893>,  <41.674809, 30.808468, 26.670101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810230, 31.006058, 26.684893>,  <42.035934, 31.335375, 26.709545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810230, 31.006058, 26.684893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443865, -0.239570, -0.863476,
		0.696129, -0.514581, 0.500611,
		-0.564259, -0.823294, -0.061633,
		41.640953, 30.759069, 26.666403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456104, 30.826723, 26.516714>,  <42.035934, 31.335375, 26.709545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456104, 30.826723, 26.516714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080799, 30.755262, 26.398228>,  <41.855618, 30.712385, 26.327135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080799, 30.755262, 26.398228>,  <42.456104, 30.826723, 26.516714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080799, 30.755262, 26.398228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299783, 0.007333, -0.953979,
		0.172602, -0.983885, 0.046676,
		-0.938264, -0.178652, -0.296218,
		41.799320, 30.701668, 26.309362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529362, 30.119802, 26.171247>,  <42.456104, 30.826723, 26.516714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529362, 30.119802, 26.171247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203434, 30.303070, 26.029181>,  <42.007877, 30.413031, 25.943941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203434, 30.303070, 26.029181>,  <42.529362, 30.119802, 26.171247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203434, 30.303070, 26.029181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253650, -0.269128, -0.929103,
		-0.521272, -0.847143, 0.103077,
		-0.814823, 0.458169, -0.355167,
		41.958988, 30.440521, 25.922630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339264, 29.729771, 25.610722>,  <42.529362, 30.119802, 26.171247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339264, 29.729771, 25.610722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102848, 30.045132, 25.542492>,  <41.960999, 30.234348, 25.501554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102848, 30.045132, 25.542492>,  <42.339264, 29.729771, 25.610722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102848, 30.045132, 25.542492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145241, -0.103992, -0.983916,
		-0.793460, -0.606306, -0.053045,
		-0.591038, 0.788403, -0.170574,
		41.925537, 30.281652, 25.491320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005890, 29.455339, 25.116226>,  <42.339264, 29.729771, 25.610722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005890, 29.455339, 25.116226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958252, 29.851723, 25.091494>,  <41.929668, 30.089552, 25.076654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958252, 29.851723, 25.091494>,  <42.005890, 29.455339, 25.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958252, 29.851723, 25.091494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085042, -0.051864, -0.995027,
		-0.989235, -0.123756, -0.078096,
		-0.119090, 0.990956, -0.061830,
		41.922523, 30.149010, 25.072945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500706, 29.681641, 24.600088>,  <42.005890, 29.455339, 25.116226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500706, 29.681641, 24.600088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697914, 30.027870, 24.635227>,  <41.816238, 30.235607, 24.656311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697914, 30.027870, 24.635227>,  <41.500706, 29.681641, 24.600088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697914, 30.027870, 24.635227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006660, 0.097215, -0.995241,
		-0.869994, 0.491257, 0.042164,
		0.493018, 0.865573, 0.087848,
		41.845821, 30.287542, 24.661581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262875, 30.082186, 24.008945>,  <41.500706, 29.681641, 24.600088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262875, 30.082186, 24.008945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599808, 30.245569, 24.149590>,  <41.801968, 30.343599, 24.233976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599808, 30.245569, 24.149590>,  <41.262875, 30.082186, 24.008945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599808, 30.245569, 24.149590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184613, 0.394257, -0.900266,
		-0.506349, 0.823238, 0.256690,
		0.842336, 0.408460, 0.351612,
		41.852509, 30.368107, 24.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145584, 30.835335, 23.961254>,  <41.262875, 30.082186, 24.008945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145584, 30.835335, 23.961254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528313, 30.719286, 23.954163>,  <41.757950, 30.649656, 23.949907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528313, 30.719286, 23.954163>,  <41.145584, 30.835335, 23.961254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528313, 30.719286, 23.954163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058994, 0.253568, -0.965517,
		0.284615, 0.922785, 0.259735,
		0.956825, -0.290124, -0.017731,
		41.815361, 30.632248, 23.948843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620628, 31.348217, 23.598402>,  <41.145584, 30.835335, 23.961254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620628, 31.348217, 23.598402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811920, 30.997066, 23.588392>,  <41.926697, 30.786375, 23.582386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811920, 30.997066, 23.588392>,  <41.620628, 31.348217, 23.598402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811920, 30.997066, 23.588392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211535, 0.142797, -0.966883,
		0.852378, 0.457099, 0.253992,
		0.478231, -0.877878, -0.025024,
		41.955391, 30.733704, 23.580885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094627, 31.448828, 23.069653>,  <41.620628, 31.348217, 23.598402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094627, 31.448828, 23.069653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166019, 31.059427, 23.126833>,  <42.208855, 30.825787, 23.161140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166019, 31.059427, 23.126833>,  <42.094627, 31.448828, 23.069653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166019, 31.059427, 23.126833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500459, -0.035267, -0.865041,
		0.847162, 0.225936, 0.480904,
		0.178484, -0.973503, 0.142949,
		42.219566, 30.767376, 23.169718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765289, 31.295635, 22.769657>,  <42.094627, 31.448828, 23.069653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765289, 31.295635, 22.769657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587677, 30.937466, 22.756699>,  <42.481110, 30.722563, 22.748924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587677, 30.937466, 22.756699>,  <42.765289, 31.295635, 22.769657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587677, 30.937466, 22.756699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259143, -0.093729, -0.961281,
		0.857719, -0.435233, 0.273661,
		-0.444031, -0.895426, -0.032395,
		42.454468, 30.668839, 22.746981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300621, 30.817936, 22.477400>,  <42.765289, 31.295635, 22.769657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300621, 30.817936, 22.477400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933537, 30.671595, 22.415476>,  <42.713287, 30.583790, 22.378323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933537, 30.671595, 22.415476>,  <43.300621, 30.817936, 22.477400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933537, 30.671595, 22.415476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187743, -0.055991, -0.980621,
		0.350096, -0.928987, 0.120069,
		-0.917707, -0.365853, -0.154809,
		42.658226, 30.561838, 22.369034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409081, 30.189568, 22.093899>,  <43.300621, 30.817936, 22.477400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409081, 30.189568, 22.093899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023678, 30.269665, 22.022844>,  <42.792435, 30.317722, 21.980211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023678, 30.269665, 22.022844>,  <43.409081, 30.189568, 22.093899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023678, 30.269665, 22.022844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137120, -0.200723, -0.970004,
		-0.229899, -0.958963, 0.165940,
		-0.963506, 0.200250, -0.177639,
		42.734627, 30.329737, 21.969553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127293, 29.633238, 21.698441>,  <43.409081, 30.189568, 22.093899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127293, 29.633238, 21.698441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899525, 29.955267, 21.631964>,  <42.762863, 30.148485, 21.592077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899525, 29.955267, 21.631964>,  <43.127293, 29.633238, 21.698441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899525, 29.955267, 21.631964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049821, -0.168001, -0.984527,
		-0.820536, -0.568889, 0.055554,
		-0.569419, 0.805072, -0.166193,
		42.728699, 30.196789, 21.582106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751335, 29.347345, 21.214521>,  <43.127293, 29.633238, 21.698441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751335, 29.347345, 21.214521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690945, 29.739807, 21.166281>,  <42.654709, 29.975285, 21.137337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690945, 29.739807, 21.166281>,  <42.751335, 29.347345, 21.214521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690945, 29.739807, 21.166281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042377, -0.128314, -0.990828,
		-0.987629, -0.144481, 0.060951,
		-0.150977, 0.981153, -0.120604,
		42.645653, 30.034153, 21.130100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062328, 29.460695, 20.878181>,  <42.751335, 29.347345, 21.214521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062328, 29.460695, 20.878181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298088, 29.774494, 20.801062>,  <42.439545, 29.962774, 20.754789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298088, 29.774494, 20.801062>,  <42.062328, 29.460695, 20.878181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298088, 29.774494, 20.801062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094508, -0.170059, -0.980892,
		-0.802293, 0.596360, -0.026091,
		0.589401, 0.784497, -0.192798,
		42.474907, 30.009844, 20.743223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766701, 29.742132, 20.220165>,  <42.062328, 29.460695, 20.878181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766701, 29.742132, 20.220165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118797, 29.926285, 20.266172>,  <42.330055, 30.036777, 20.293777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118797, 29.926285, 20.266172>,  <41.766701, 29.742132, 20.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118797, 29.926285, 20.266172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127194, 0.004611, -0.991867,
		-0.457170, 0.887708, -0.054500,
		0.880237, 0.460384, 0.115019,
		42.382870, 30.064400, 20.300678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778297, 30.234236, 19.662148>,  <41.766701, 29.742132, 20.220165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778297, 30.234236, 19.662148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164974, 30.202625, 19.759521>,  <42.396980, 30.183659, 19.817945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164974, 30.202625, 19.759521>,  <41.778297, 30.234236, 19.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164974, 30.202625, 19.759521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235228, -0.100489, -0.966731,
		0.100860, 0.991795, -0.078552,
		0.966693, -0.079027, 0.243433,
		42.454983, 30.178917, 19.832552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622757, 30.897503, 19.904528>,  <41.778297, 30.234236, 19.662148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622757, 30.897503, 19.904528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379292, 30.823795, 19.595835>,  <41.233212, 30.779572, 19.410618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379292, 30.823795, 19.595835>,  <41.622757, 30.897503, 19.904528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379292, 30.823795, 19.595835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754671, -0.165826, 0.634802,
		-0.244946, 0.968787, -0.038129,
		-0.608665, -0.184267, -0.771734,
		41.196693, 30.768515, 19.364315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119907, 31.494373, 19.920527>,  <41.622757, 30.897503, 19.904528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119907, 31.494373, 19.920527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986336, 31.157969, 19.750261>,  <40.906193, 30.956125, 19.648102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986336, 31.157969, 19.750261>,  <41.119907, 31.494373, 19.920527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986336, 31.157969, 19.750261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732928, -0.052296, 0.678293,
		-0.592714, 0.538482, -0.598939,
		-0.333927, -0.841013, -0.425665,
		40.886158, 30.905664, 19.622562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409275, 31.553640, 19.834023>,  <41.119907, 31.494373, 19.920527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409275, 31.553640, 19.834023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468979, 31.159454, 19.801582>,  <40.504799, 30.922943, 19.782118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468979, 31.159454, 19.801582>,  <40.409275, 31.553640, 19.834023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468979, 31.159454, 19.801582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592709, -0.154816, 0.790398,
		-0.791466, -0.069904, -0.607202,
		0.149257, -0.985467, -0.081099,
		40.513756, 30.863813, 19.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752506, 31.295321, 19.879696>,  <40.409275, 31.553640, 19.834023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752506, 31.295321, 19.879696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975658, 30.975348, 19.968130>,  <40.109550, 30.783363, 20.021191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975658, 30.975348, 19.968130>,  <39.752506, 31.295321, 19.879696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975658, 30.975348, 19.968130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608154, -0.212762, 0.764775,
		-0.564731, -0.561105, -0.605178,
		0.557878, -0.799933, 0.221085,
		40.143021, 30.735367, 20.034456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253918, 30.791786, 20.070330>,  <39.752506, 31.295321, 19.879696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253918, 30.791786, 20.070330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601555, 30.660322, 20.218203>,  <39.810135, 30.581444, 20.306927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601555, 30.660322, 20.218203>,  <39.253918, 30.791786, 20.070330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601555, 30.660322, 20.218203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444895, -0.192686, 0.874609,
		-0.216214, -0.924585, -0.313679,
		0.869091, -0.328657, 0.369682,
		39.862282, 30.561724, 20.329107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953754, 30.368010, 20.598978>,  <39.253918, 30.791786, 20.070330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953754, 30.368010, 20.598978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344345, 30.409286, 20.674713>,  <39.578697, 30.434052, 20.720154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344345, 30.409286, 20.674713>,  <38.953754, 30.368010, 20.598978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344345, 30.409286, 20.674713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156725, -0.263433, 0.951862,
		0.148102, -0.959143, -0.241063,
		0.976475, 0.103192, 0.189337,
		39.637287, 30.440245, 20.731514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091545, 29.960205, 21.186026>,  <38.953754, 30.368010, 20.598978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091545, 29.960205, 21.186026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414532, 30.195332, 21.166185>,  <39.608326, 30.336409, 21.154282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414532, 30.195332, 21.166185>,  <39.091545, 29.960205, 21.186026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414532, 30.195332, 21.166185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048687, 0.017389, 0.998663,
		0.587895, -0.808806, -0.014578,
		0.807471, 0.587818, -0.049601,
		39.656773, 30.371677, 21.151304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556873, 29.688419, 21.656101>,  <39.091545, 29.960205, 21.186026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556873, 29.688419, 21.656101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665916, 30.070700, 21.611704>,  <39.731342, 30.300068, 21.585066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665916, 30.070700, 21.611704>,  <39.556873, 29.688419, 21.656101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665916, 30.070700, 21.611704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004151, 0.114191, 0.993450,
		0.962116, -0.271285, 0.027163,
		0.272610, 0.955701, -0.110991,
		39.747700, 30.357410, 21.578407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131615, 29.689968, 22.120359>,  <39.556873, 29.688419, 21.656101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131615, 29.689968, 22.120359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022812, 30.071375, 22.068491>,  <39.957531, 30.300219, 22.037371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022812, 30.071375, 22.068491>,  <40.131615, 29.689968, 22.120359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022812, 30.071375, 22.068491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028404, 0.142649, 0.989366,
		0.961875, 0.265436, -0.065886,
		-0.272012, 0.953517, -0.129671,
		39.941208, 30.357430, 22.029591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451267, 30.006414, 22.588537>,  <40.131615, 29.689968, 22.120359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451267, 30.006414, 22.588537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156010, 30.254395, 22.482094>,  <39.978855, 30.403183, 22.418228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156010, 30.254395, 22.482094>,  <40.451267, 30.006414, 22.588537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156010, 30.254395, 22.482094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196690, 0.179550, 0.963885,
		0.645340, 0.763822, -0.010595,
		-0.738139, 0.619950, -0.266107,
		39.934566, 30.440380, 22.402262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577908, 30.660570, 22.972887>,  <40.451267, 30.006414, 22.588537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577908, 30.660570, 22.972887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186806, 30.630766, 22.894468>,  <39.952145, 30.612883, 22.847416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186806, 30.630766, 22.894468>,  <40.577908, 30.660570, 22.972887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186806, 30.630766, 22.894468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208630, 0.249940, 0.945517,
		-0.021451, 0.965390, -0.259926,
		-0.977759, -0.074511, -0.196048,
		39.893478, 30.608412, 22.835653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347839, 31.186893, 23.298834>,  <40.577908, 30.660570, 22.972887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347839, 31.186893, 23.298834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002522, 30.997581, 23.228712>,  <39.795330, 30.883995, 23.186640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002522, 30.997581, 23.228712>,  <40.347839, 31.186893, 23.298834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002522, 30.997581, 23.228712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378224, 0.376694, 0.845605,
		-0.334171, 0.796310, -0.504203,
		-0.863294, -0.473278, -0.175303,
		39.743534, 30.855598, 23.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786915, 31.664537, 23.424833>,  <40.347839, 31.186893, 23.298834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786915, 31.664537, 23.424833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649601, 31.289299, 23.443296>,  <39.567211, 31.064156, 23.454374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649601, 31.289299, 23.443296>,  <39.786915, 31.664537, 23.424833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649601, 31.289299, 23.443296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235722, 0.133623, 0.962591,
		-0.909169, 0.319565, -0.267001,
		-0.343288, -0.938095, 0.046157,
		39.546616, 31.007870, 23.457144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224560, 31.790991, 23.739283>,  <39.786915, 31.664537, 23.424833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224560, 31.790991, 23.739283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244503, 31.391565, 23.747141>,  <39.256470, 31.151911, 23.751856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244503, 31.391565, 23.747141>,  <39.224560, 31.790991, 23.739283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244503, 31.391565, 23.747141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150444, 0.011937, 0.988546,
		-0.987361, -0.052238, -0.149633,
		0.049854, -0.998563, 0.019645,
		39.259460, 31.091997, 23.753035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546070, 31.591866, 24.057844>,  <39.224560, 31.790991, 23.739283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546070, 31.591866, 24.057844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810066, 31.295273, 24.106201>,  <38.968464, 31.117317, 24.135216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810066, 31.295273, 24.106201>,  <38.546070, 31.591866, 24.057844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810066, 31.295273, 24.106201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354316, -0.165315, 0.920398,
		-0.662474, -0.650288, -0.371825,
		0.659992, -0.741482, 0.120890,
		39.008064, 31.072828, 24.142467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102055, 31.036345, 24.212990>,  <38.546070, 31.591866, 24.057844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102055, 31.036345, 24.212990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470478, 30.960569, 24.349089>,  <38.691532, 30.915104, 24.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470478, 30.960569, 24.349089>,  <38.102055, 31.036345, 24.212990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470478, 30.960569, 24.349089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349846, -0.018700, 0.936621,
		-0.171070, -0.981714, -0.083498,
		0.921055, -0.189439, 0.340249,
		38.746796, 30.903738, 24.451164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962299, 30.631706, 24.813923>,  <38.102055, 31.036345, 24.212990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962299, 30.631706, 24.813923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340317, 30.754282, 24.859510>,  <38.567127, 30.827827, 24.886864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340317, 30.754282, 24.859510>,  <37.962299, 30.631706, 24.813923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340317, 30.754282, 24.859510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075980, -0.133197, 0.988173,
		0.317998, -0.942524, -0.102593,
		0.945042, 0.306442, 0.113969,
		38.623829, 30.846214, 24.893702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204002, 30.191410, 25.257980>,  <37.962299, 30.631706, 24.813923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204002, 30.191410, 25.257980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429577, 30.521439, 25.272020>,  <38.564922, 30.719456, 25.280445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429577, 30.521439, 25.272020>,  <38.204002, 30.191410, 25.257980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429577, 30.521439, 25.272020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060033, -0.083350, 0.994710,
		0.823634, -0.558846, -0.096536,
		0.563936, 0.825072, 0.035100,
		38.598759, 30.768961, 25.282551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679726, 30.034578, 25.823950>,  <38.204002, 30.191410, 25.257980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679726, 30.034578, 25.823950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667797, 30.430599, 25.768950>,  <38.660641, 30.668211, 25.735949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667797, 30.430599, 25.768950>,  <38.679726, 30.034578, 25.823950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667797, 30.430599, 25.768950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110498, 0.133453, 0.984876,
		0.993429, 0.044566, 0.105419,
		-0.029823, 0.990053, -0.137501,
		38.658852, 30.727615, 25.727699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187565, 30.369080, 26.250168>,  <38.679726, 30.034578, 25.823950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187565, 30.369080, 26.250168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946865, 30.674627, 26.156870>,  <38.802444, 30.857956, 26.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946865, 30.674627, 26.156870>,  <39.187565, 30.369080, 26.250168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946865, 30.674627, 26.156870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136018, 0.189758, 0.972364,
		0.787020, 0.616842, -0.010286,
		-0.601747, 0.763870, -0.233245,
		38.766342, 30.903788, 26.086897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295670, 30.910368, 26.778784>,  <39.187565, 30.369080, 26.250168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295670, 30.910368, 26.778784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969097, 31.027971, 26.579985>,  <38.773155, 31.098534, 26.460705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969097, 31.027971, 26.579985>,  <39.295670, 30.910368, 26.778784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969097, 31.027971, 26.579985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342893, 0.445668, 0.826924,
		0.464618, 0.845541, -0.263042,
		-0.816428, 0.294009, -0.496996,
		38.724171, 31.116175, 26.430885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159351, 31.557888, 27.006388>,  <39.295670, 30.910368, 26.778784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159351, 31.557888, 27.006388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810303, 31.413609, 26.874678>,  <38.600872, 31.327042, 26.795652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810303, 31.413609, 26.874678>,  <39.159351, 31.557888, 27.006388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810303, 31.413609, 26.874678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476938, 0.484224, 0.733524,
		-0.105139, 0.797135, -0.594577,
		-0.872626, -0.360699, -0.329273,
		38.548515, 31.305399, 26.775896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698231, 32.200840, 26.968401>,  <39.159351, 31.557888, 27.006388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698231, 32.200840, 26.968401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473415, 31.872358, 27.007849>,  <38.338524, 31.675268, 27.031517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473415, 31.872358, 27.007849>,  <38.698231, 32.200840, 26.968401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473415, 31.872358, 27.007849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366176, 0.353963, 0.860596,
		-0.741635, 0.447580, -0.499649,
		-0.562043, -0.821208, 0.098619,
		38.304802, 31.625996, 27.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111099, 32.385525, 27.358391>,  <38.698231, 32.200840, 26.968401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111099, 32.385525, 27.358391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066505, 31.988634, 27.380507>,  <38.039749, 31.750500, 27.393776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066505, 31.988634, 27.380507>,  <38.111099, 32.385525, 27.358391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066505, 31.988634, 27.380507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329150, 0.089367, 0.940039,
		-0.937673, 0.086605, -0.336555,
		-0.111489, -0.992226, 0.055291,
		38.033058, 31.690966, 27.397095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436665, 32.266819, 27.707912>,  <38.111099, 32.385525, 27.358391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436665, 32.266819, 27.707912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631123, 31.918432, 27.736439>,  <37.747799, 31.709402, 27.753555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631123, 31.918432, 27.736439>,  <37.436665, 32.266819, 27.707912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631123, 31.918432, 27.736439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277128, -0.076258, 0.957802,
		-0.828771, -0.485396, -0.278440,
		0.486146, -0.870963, 0.071316,
		37.776966, 31.657143, 27.757833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964645, 31.684002, 27.981506>,  <37.436665, 32.266819, 27.707912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964645, 31.684002, 27.981506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346222, 31.607069, 28.073595>,  <37.575169, 31.560909, 28.128849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346222, 31.607069, 28.073595>,  <36.964645, 31.684002, 27.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346222, 31.607069, 28.073595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245769, -0.061001, 0.967407,
		-0.172021, -0.979432, -0.105461,
		0.953942, -0.192333, 0.230221,
		37.632404, 31.549370, 28.142662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008701, 30.996918, 28.390299>,  <36.964645, 31.684002, 27.981506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008701, 30.996918, 28.390299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306210, 31.248440, 28.480995>,  <37.484715, 31.399353, 28.535414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306210, 31.248440, 28.480995>,  <37.008701, 30.996918, 28.390299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306210, 31.248440, 28.480995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223235, -0.086068, 0.970957,
		0.630058, -0.772784, 0.076356,
		0.743769, 0.628805, 0.226740,
		37.529339, 31.437080, 28.549017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459930, 30.571589, 28.876892>,  <37.008701, 30.996918, 28.390299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459930, 30.571589, 28.876892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550583, 30.957998, 28.926586>,  <37.604973, 31.189844, 28.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550583, 30.957998, 28.926586>,  <37.459930, 30.571589, 28.876892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550583, 30.957998, 28.926586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111678, -0.100939, 0.988604,
		0.967556, -0.237924, 0.085008,
		0.226633, 0.966024, 0.124235,
		37.618572, 31.247807, 28.963858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905895, 30.530203, 29.430660>,  <37.459930, 30.571589, 28.876892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905895, 30.530203, 29.430660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802238, 30.916346, 29.418478>,  <37.740044, 31.148031, 29.411169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802238, 30.916346, 29.418478>,  <37.905895, 30.530203, 29.430660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802238, 30.916346, 29.418478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151782, -0.009565, 0.988368,
		0.953838, 0.260753, 0.149002,
		-0.259145, 0.965358, -0.030455,
		37.724495, 31.205954, 29.409342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279423, 30.865704, 30.117615>,  <37.905895, 30.530203, 29.430660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279423, 30.865704, 30.117615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978851, 31.098080, 29.992481>,  <37.798508, 31.237505, 29.917402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978851, 31.098080, 29.992481>,  <38.279423, 30.865704, 30.117615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978851, 31.098080, 29.992481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277646, 0.151703, 0.948630,
		0.598553, 0.799686, 0.047301,
		-0.751430, 0.580938, -0.312832,
		37.753422, 31.272362, 29.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303169, 31.469213, 30.515171>,  <38.279423, 30.865704, 30.117615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303169, 31.469213, 30.515171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922230, 31.435831, 30.397829>,  <37.693665, 31.415802, 30.327423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922230, 31.435831, 30.397829>,  <38.303169, 31.469213, 30.515171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922230, 31.435831, 30.397829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304715, 0.219028, 0.926917,
		-0.013102, 0.972143, -0.234022,
		-0.952353, -0.083455, -0.293357,
		37.636524, 31.410795, 30.309822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085495, 32.117367, 30.694572>,  <38.303169, 31.469213, 30.515171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085495, 32.117367, 30.694572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761719, 31.885235, 30.658747>,  <37.567451, 31.745956, 30.637251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761719, 31.885235, 30.658747>,  <38.085495, 32.117367, 30.694572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761719, 31.885235, 30.658747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391406, 0.419529, 0.819022,
		-0.437726, 0.698008, -0.566728,
		-0.809443, -0.580328, -0.089566,
		37.518887, 31.711136, 30.631878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504021, 32.561535, 30.857841>,  <38.085495, 32.117367, 30.694572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504021, 32.561535, 30.857841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 32.198025, 30.908028>,  <37.249310, 31.979919, 30.938139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 32.198025, 30.908028>,  <37.504021, 32.561535, 30.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344826, 32.198025, 30.908028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573307, 0.353144, 0.739330,
		-0.716189, 0.222313, -0.661551,
		-0.397986, -0.908772, 0.125464,
		37.225430, 31.925394, 30.945667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802288, 32.705673, 30.817705>,  <37.504021, 32.561535, 30.857841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802288, 32.705673, 30.817705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848110, 32.348305, 30.991449>,  <36.875603, 32.133884, 31.095695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848110, 32.348305, 30.991449>,  <36.802288, 32.705673, 30.817705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848110, 32.348305, 30.991449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628376, 0.273486, 0.728250,
		-0.769428, -0.356369, -0.530077,
		0.114557, -0.893424, 0.434362,
		36.882477, 32.080276, 31.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137794, 32.514076, 31.118721>,  <36.802288, 32.705673, 30.817705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137794, 32.514076, 31.118721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394348, 32.284977, 31.322908>,  <36.548283, 32.147518, 31.445421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394348, 32.284977, 31.322908>,  <36.137794, 32.514076, 31.118721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394348, 32.284977, 31.322908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494937, 0.199498, 0.845717,
		-0.586223, -0.795082, -0.155520,
		0.641389, -0.572752, 0.510466,
		36.586765, 32.113152, 31.476048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740860, 32.111565, 31.567400>,  <36.137794, 32.514076, 31.118721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740860, 32.111565, 31.567400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105694, 32.137707, 31.729300>,  <36.324596, 32.153393, 31.826439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105694, 32.137707, 31.729300>,  <35.740860, 32.111565, 31.567400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105694, 32.137707, 31.729300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401681, 0.340222, 0.850236,
		-0.082135, -0.938071, 0.336566,
		0.912089, 0.065359, 0.404750,
		36.379322, 32.157314, 31.850725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639595, 31.884836, 32.244720>,  <35.740860, 32.111565, 31.567400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639595, 31.884836, 32.244720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977989, 32.098049, 32.250221>,  <36.181026, 32.225975, 32.253521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977989, 32.098049, 32.250221>,  <35.639595, 31.884836, 32.244720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977989, 32.098049, 32.250221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310418, 0.471369, 0.825501,
		0.433530, -0.702633, 0.564233,
		0.845986, 0.533027, 0.013758,
		36.231785, 32.257957, 32.254349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887341, 31.778904, 32.954529>,  <35.639595, 31.884836, 32.244720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887341, 31.778904, 32.954529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047478, 32.112755, 32.803204>,  <36.143559, 32.313065, 32.712406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047478, 32.112755, 32.803204>,  <35.887341, 31.778904, 32.954529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047478, 32.112755, 32.803204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276434, 0.503609, 0.818512,
		0.873676, -0.223106, 0.432335,
		0.400343, 0.834627, -0.378318,
		36.167580, 32.363144, 32.689709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282558, 31.977745, 33.468342>,  <35.887341, 31.778904, 32.954529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282558, 31.977745, 33.468342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202702, 32.321426, 33.279915>,  <36.154785, 32.527637, 33.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202702, 32.321426, 33.279915>,  <36.282558, 31.977745, 33.468342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202702, 32.321426, 33.279915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339150, 0.390443, 0.855880,
		0.919303, 0.330637, 0.213449,
		-0.199646, 0.859205, -0.471071,
		36.142807, 32.579189, 33.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637371, 32.395184, 33.867676>,  <36.282558, 31.977745, 33.468342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637371, 32.395184, 33.867676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412159, 32.671066, 33.685555>,  <36.277031, 32.836597, 33.576283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412159, 32.671066, 33.685555>,  <36.637371, 32.395184, 33.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412159, 32.671066, 33.685555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608657, 0.026623, 0.792987,
		0.559051, 0.723599, 0.404805,
		-0.563027, 0.689707, -0.455307,
		36.243252, 32.877979, 33.548962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178654, 32.743771, 34.177311>,  <36.637371, 32.395184, 33.867676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178654, 32.743771, 34.177311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521667, 32.616291, 34.338833>,  <37.727478, 32.539803, 34.435745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521667, 32.616291, 34.338833>,  <37.178654, 32.743771, 34.177311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521667, 32.616291, 34.338833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445489, -0.067565, 0.892734,
		-0.257232, -0.945444, -0.199917,
		0.857538, -0.318701, 0.403805,
		37.778931, 32.520679, 34.459976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009037, 32.200974, 34.633778>,  <37.178654, 32.743771, 34.177311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009037, 32.200974, 34.633778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359493, 32.328789, 34.778149>,  <37.569767, 32.405479, 34.864773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359493, 32.328789, 34.778149>,  <37.009037, 32.200974, 34.633778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359493, 32.328789, 34.778149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369624, -0.035300, 0.928511,
		0.309435, -0.946916, 0.087181,
		0.876144, 0.319538, 0.360926,
		37.622337, 32.424648, 34.886425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156013, 31.775772, 35.206482>,  <37.009037, 32.200974, 34.633778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156013, 31.775772, 35.206482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421112, 32.062393, 35.293491>,  <37.580173, 32.234367, 35.345695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421112, 32.062393, 35.293491>,  <37.156013, 31.775772, 35.206482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421112, 32.062393, 35.293491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405213, 0.098889, 0.908858,
		0.629733, -0.690488, 0.355895,
		0.662750, 0.716552, 0.217521,
		37.619938, 32.277359, 35.358749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445908, 31.604336, 35.860882>,  <37.156013, 31.775772, 35.206482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445908, 31.604336, 35.860882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510616, 31.992838, 35.791035>,  <37.549442, 32.225941, 35.749126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510616, 31.992838, 35.791035>,  <37.445908, 31.604336, 35.860882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510616, 31.992838, 35.791035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122749, 0.195381, 0.973016,
		0.979165, -0.135970, 0.150827,
		0.161770, 0.971256, -0.174620,
		37.559147, 32.284214, 35.738647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934170, 31.825279, 36.403435>,  <37.445908, 31.604336, 35.860882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934170, 31.825279, 36.403435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752735, 32.152023, 36.260891>,  <37.643875, 32.348068, 36.175365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752735, 32.152023, 36.260891>,  <37.934170, 31.825279, 36.403435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752735, 32.152023, 36.260891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251726, 0.266150, 0.930483,
		0.854921, 0.511764, 0.084902,
		-0.453591, 0.816861, -0.356361,
		37.616657, 32.397083, 36.153984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073982, 32.355652, 36.874214>,  <37.934170, 31.825279, 36.403435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073982, 32.355652, 36.874214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759758, 32.530930, 36.699459>,  <37.571224, 32.636097, 36.594604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759758, 32.530930, 36.699459>,  <38.073982, 32.355652, 36.874214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759758, 32.530930, 36.699459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336582, 0.289862, 0.895931,
		0.519230, 0.850861, -0.080217,
		-0.785565, 0.438195, -0.436890,
		37.524090, 32.662388, 36.568394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105328, 33.122017, 36.910591>,  <38.073982, 32.355652, 36.874214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105328, 33.122017, 36.910591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727818, 32.992504, 36.883884>,  <37.501312, 32.914795, 36.867863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727818, 32.992504, 36.883884>,  <38.105328, 33.122017, 36.910591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727818, 32.992504, 36.883884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222990, 0.474369, 0.851616,
		-0.244071, 0.818619, -0.519897,
		-0.943771, -0.323787, -0.066764,
		37.444687, 32.895367, 36.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701920, 33.724701, 37.072483>,  <38.105328, 33.122017, 36.910591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701920, 33.724701, 37.072483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471725, 33.399731, 37.109955>,  <37.333607, 33.204746, 37.132439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471725, 33.399731, 37.109955>,  <37.701920, 33.724701, 37.072483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471725, 33.399731, 37.109955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477479, 0.426782, 0.768030,
		-0.663949, 0.397263, -0.633525,
		-0.575487, -0.812428, 0.093678,
		37.299080, 33.156002, 37.138058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048553, 34.042988, 37.334343>,  <37.701920, 33.724701, 37.072483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048553, 34.042988, 37.334343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007088, 33.648434, 37.385395>,  <36.982208, 33.411701, 37.416027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007088, 33.648434, 37.385395>,  <37.048553, 34.042988, 37.334343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007088, 33.648434, 37.385395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613613, 0.164416, 0.772299,
		-0.782772, 0.001749, -0.622306,
		-0.103668, -0.986389, 0.127627,
		36.975986, 33.352516, 37.423683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384064, 34.022160, 37.566177>,  <37.048553, 34.042988, 37.334343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384064, 34.022160, 37.566177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526897, 33.655346, 37.637207>,  <36.612598, 33.435257, 37.679825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526897, 33.655346, 37.637207>,  <36.384064, 34.022160, 37.566177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526897, 33.655346, 37.637207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543026, -0.049126, 0.838278,
		-0.760009, -0.395761, -0.515518,
		0.357083, -0.917038, 0.177573,
		36.634022, 33.380234, 37.690479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772949, 33.809883, 37.905514>,  <36.384064, 34.022160, 37.566177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772949, 33.809883, 37.905514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080914, 33.575508, 38.006641>,  <36.265694, 33.434883, 38.067318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080914, 33.575508, 38.006641>,  <35.772949, 33.809883, 37.905514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080914, 33.575508, 38.006641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274350, 0.053777, 0.960125,
		-0.576167, -0.808571, -0.119348,
		0.769911, -0.585936, 0.252816,
		36.311886, 33.399727, 38.082485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508011, 33.278770, 38.313427>,  <35.772949, 33.809883, 37.905514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508011, 33.278770, 38.313427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883987, 33.346195, 38.432148>,  <36.109573, 33.386650, 38.503380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883987, 33.346195, 38.432148>,  <35.508011, 33.278770, 38.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883987, 33.346195, 38.432148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308453, 0.047117, 0.950072,
		0.146169, -0.984563, 0.096284,
		0.939942, 0.168570, 0.296804,
		36.165970, 33.396767, 38.521191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468704, 33.071026, 39.046169>,  <35.508011, 33.278770, 38.313427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468704, 33.071026, 39.046169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799740, 33.292561, 39.009594>,  <35.998360, 33.425480, 38.987648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799740, 33.292561, 39.009594>,  <35.468704, 33.071026, 39.046169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799740, 33.292561, 39.009594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109874, 0.319573, 0.941170,
		0.550475, -0.768855, 0.325328,
		0.827590, 0.553836, -0.091439,
		36.048016, 33.458710, 38.982162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887096, 32.838818, 39.607441>,  <35.468704, 33.071026, 39.046169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887096, 32.838818, 39.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035015, 33.197838, 39.511398>,  <36.123768, 33.413250, 39.453773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035015, 33.197838, 39.511398>,  <35.887096, 32.838818, 39.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035015, 33.197838, 39.511398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164907, 0.317724, 0.933733,
		0.914361, -0.305697, 0.265506,
		0.369797, 0.897553, -0.240103,
		36.145954, 33.467102, 39.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356674, 32.853416, 40.052788>,  <35.887096, 32.838818, 39.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356674, 32.853416, 40.052788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267315, 33.226456, 39.939400>,  <36.213699, 33.450279, 39.871368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267315, 33.226456, 39.939400>,  <36.356674, 32.853416, 40.052788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267315, 33.226456, 39.939400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050897, 0.279262, 0.958865,
		0.973398, 0.228635, -0.014920,
		-0.223397, 0.932598, -0.283470,
		36.200294, 33.506233, 39.854359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811596, 33.231140, 40.471642>,  <36.356674, 32.853416, 40.052788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811596, 33.231140, 40.471642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517334, 33.470791, 40.345242>,  <36.340778, 33.614582, 40.269402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517334, 33.470791, 40.345242>,  <36.811596, 33.231140, 40.471642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517334, 33.470791, 40.345242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026788, 0.491889, 0.870246,
		0.676826, 0.631736, -0.377910,
		-0.735655, 0.599129, -0.316001,
		36.296638, 33.650528, 40.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050591, 33.931992, 40.652576>,  <36.811596, 33.231140, 40.471642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050591, 33.931992, 40.652576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658367, 33.967522, 40.582596>,  <36.423031, 33.988842, 40.540607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658367, 33.967522, 40.582596>,  <37.050591, 33.931992, 40.652576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658367, 33.967522, 40.582596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098881, 0.546413, 0.831658,
		0.169467, 0.832792, -0.527009,
		-0.980563, 0.088828, -0.174947,
		36.364197, 33.994171, 40.530113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801270, 34.670052, 40.712631>,  <37.050591, 33.931992, 40.652576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801270, 34.670052, 40.712631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471279, 34.457657, 40.790070>,  <36.273285, 34.330219, 40.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471279, 34.457657, 40.790070>,  <36.801270, 34.670052, 40.712631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471279, 34.457657, 40.790070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190707, 0.583980, 0.789049,
		-0.532026, 0.614024, -0.583029,
		-0.824972, -0.530982, 0.193593,
		36.223789, 34.298363, 40.848148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263901, 35.123470, 40.780621>,  <36.801270, 34.670052, 40.712631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263901, 35.123470, 40.780621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110359, 34.792011, 40.943592>,  <36.018234, 34.593136, 41.041374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110359, 34.792011, 40.943592>,  <36.263901, 35.123470, 40.780621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110359, 34.792011, 40.943592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319408, 0.533146, 0.783412,
		-0.866394, 0.170576, -0.469325,
		-0.383850, -0.828649, 0.407431,
		35.995205, 34.543415, 41.065823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635033, 35.712006, 40.818649>,  <36.263901, 35.123470, 40.780621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635033, 35.712006, 40.818649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799515, 35.539265, 41.139748>,  <36.898205, 35.435619, 41.332409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799515, 35.539265, 41.139748>,  <36.635033, 35.712006, 40.818649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799515, 35.539265, 41.139748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828126, 0.545018, -0.131003,
		-0.380939, 0.718649, 0.581747,
		0.411208, -0.431856, 0.802751,
		36.922878, 35.409706, 41.380573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447411, 36.294441, 41.129951>,  <36.635033, 35.712006, 40.818649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447411, 36.294441, 41.129951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742138, 36.539436, 41.244457>,  <36.918976, 36.686436, 41.313160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742138, 36.539436, 41.244457>,  <36.447411, 36.294441, 41.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742138, 36.539436, 41.244457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456672, -0.763102, 0.457303,
		0.498542, -0.206223, -0.841979,
		0.736822, 0.612492, 0.286262,
		36.963184, 36.723183, 41.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453793, 35.816982, 41.709999>,  <36.447411, 36.294441, 41.129951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453793, 35.816982, 41.709999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356823, 36.109337, 41.965199>,  <36.298641, 36.284748, 42.118317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356823, 36.109337, 41.965199>,  <36.453793, 35.816982, 41.709999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356823, 36.109337, 41.965199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155772, -0.619760, 0.769176,
		0.957584, 0.285847, 0.036392,
		-0.242421, 0.730882, 0.638000,
		36.284096, 36.328602, 42.156597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824612, 35.724430, 42.201263>,  <36.453793, 35.816982, 41.709999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824612, 35.724430, 42.201263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532627, 35.941555, 42.367401>,  <36.357437, 36.071831, 42.467083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532627, 35.941555, 42.367401>,  <36.824612, 35.724430, 42.201263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532627, 35.941555, 42.367401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188067, -0.424704, 0.885583,
		0.657105, 0.724553, 0.207932,
		-0.729961, 0.542816, 0.415340,
		36.313641, 36.104401, 42.492004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243732, 35.181175, 42.265789>,  <36.824612, 35.724430, 42.201263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243732, 35.181175, 42.265789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945450, 34.935360, 42.368752>,  <35.766479, 34.787868, 42.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945450, 34.935360, 42.368752>,  <36.243732, 35.181175, 42.265789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945450, 34.935360, 42.368752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066780, -0.453329, -0.888838,
		0.662916, -0.645625, 0.379091,
		-0.745709, -0.614541, 0.257404,
		35.721737, 34.750999, 42.445972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436172, 34.452690, 42.221500>,  <36.243732, 35.181175, 42.265789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436172, 34.452690, 42.221500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039009, 34.478527, 42.181591>,  <35.800709, 34.494030, 42.157646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039009, 34.478527, 42.181591>,  <36.436172, 34.452690, 42.221500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039009, 34.478527, 42.181591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042977, -0.587551, -0.808045,
		-0.110812, -0.806605, 0.580611,
		-0.992912, 0.064589, -0.099773,
		35.741135, 34.497902, 42.151657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073925, 33.797913, 41.998569>,  <36.436172, 34.452690, 42.221500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073925, 33.797913, 41.998569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869228, 34.096840, 41.829037>,  <35.746410, 34.276196, 41.727318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869228, 34.096840, 41.829037>,  <36.073925, 33.797913, 41.998569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869228, 34.096840, 41.829037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106957, -0.434070, -0.894507,
		-0.852453, -0.503092, 0.142203,
		-0.511746, 0.747316, -0.423834,
		35.715706, 34.321033, 41.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527924, 33.466915, 41.650398>,  <36.073925, 33.797913, 41.998569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527924, 33.466915, 41.650398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644493, 33.805916, 41.472946>,  <35.714436, 34.009315, 41.366474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644493, 33.805916, 41.472946>,  <35.527924, 33.466915, 41.650398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644493, 33.805916, 41.472946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039985, -0.474145, -0.879538,
		-0.955758, 0.238580, -0.172065,
		0.291424, 0.847506, -0.443629,
		35.731922, 34.060169, 41.339859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105980, 33.660126, 40.992130>,  <35.527924, 33.466915, 41.650398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105980, 33.660126, 40.992130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464993, 33.831764, 40.951523>,  <35.680401, 33.934746, 40.927158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464993, 33.831764, 40.951523>,  <35.105980, 33.660126, 40.992130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464993, 33.831764, 40.951523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078751, -0.382527, -0.920582,
		-0.433853, 0.818260, -0.377123,
		0.897535, 0.429096, -0.101522,
		35.734253, 33.960491, 40.921066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067337, 33.350456, 40.205898>,  <35.105980, 33.660126, 40.992130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067337, 33.350456, 40.205898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844746, 33.560558, 39.948391>,  <34.711189, 33.686619, 39.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844746, 33.560558, 39.948391>,  <35.067337, 33.350456, 40.205898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844746, 33.560558, 39.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545573, 0.815378, 0.193674,
		0.626644, -0.243449, -0.740304,
		-0.556478, 0.525254, -0.643771,
		34.677803, 33.718136, 39.755260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088890, 34.092457, 40.240730>,  <35.067337, 33.350456, 40.205898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088890, 34.092457, 40.240730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476566, 34.062321, 40.334538>,  <35.709171, 34.044239, 40.390823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476566, 34.062321, 40.334538>,  <35.088890, 34.092457, 40.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476566, 34.062321, 40.334538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211533, -0.233238, -0.949133,
		0.126206, 0.969497, -0.210114,
		0.969188, -0.075341, 0.234517,
		35.767323, 34.039719, 40.404892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416019, 34.531574, 39.736450>,  <35.088890, 34.092457, 40.240730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416019, 34.531574, 39.736450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684856, 34.270805, 39.876900>,  <35.846161, 34.114346, 39.961170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684856, 34.270805, 39.876900>,  <35.416019, 34.531574, 39.736450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684856, 34.270805, 39.876900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295481, -0.198677, -0.934462,
		0.678953, 0.731799, 0.059099,
		0.672097, -0.651918, 0.351125,
		35.886486, 34.075230, 39.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076721, 34.702587, 39.412224>,  <35.416019, 34.531574, 39.736450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076721, 34.702587, 39.412224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159096, 34.340290, 39.560402>,  <36.208519, 34.122913, 39.649307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159096, 34.340290, 39.560402>,  <36.076721, 34.702587, 39.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159096, 34.340290, 39.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474040, -0.238841, -0.847491,
		0.856083, 0.350132, 0.380171,
		0.205933, -0.905739, 0.370444,
		36.220875, 34.068569, 39.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663174, 34.660213, 39.145760>,  <36.076721, 34.702587, 39.412224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663174, 34.660213, 39.145760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557159, 34.289219, 39.251232>,  <36.493549, 34.066624, 39.314514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557159, 34.289219, 39.251232>,  <36.663174, 34.660213, 39.145760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557159, 34.289219, 39.251232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394523, -0.353830, -0.848031,
		0.879833, -0.120734, 0.459693,
		-0.265039, -0.927485, 0.263678,
		36.477646, 34.010975, 39.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212784, 34.123718, 39.119656>,  <36.663174, 34.660213, 39.145760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212784, 34.123718, 39.119656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861118, 33.945221, 39.052807>,  <36.650120, 33.838123, 39.012699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861118, 33.945221, 39.052807>,  <37.212784, 34.123718, 39.119656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861118, 33.945221, 39.052807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374948, -0.431394, -0.820557,
		0.294075, -0.784069, 0.546586,
		-0.879167, -0.446246, -0.167123,
		36.597366, 33.811348, 39.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390118, 33.467785, 38.926731>,  <37.212784, 34.123718, 39.119656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390118, 33.467785, 38.926731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022511, 33.467125, 38.769051>,  <36.801945, 33.466728, 38.674442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022511, 33.467125, 38.769051>,  <37.390118, 33.467785, 38.926731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022511, 33.467125, 38.769051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313332, -0.609860, -0.727939,
		-0.239209, -0.792508, 0.560991,
		-0.919022, -0.001647, -0.394202,
		36.746803, 33.466633, 38.650791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426273, 32.876854, 38.468025>,  <37.390118, 33.467785, 38.926731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426273, 32.876854, 38.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072834, 33.034790, 38.367332>,  <36.860771, 33.129551, 38.306919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072834, 33.034790, 38.367332>,  <37.426273, 32.876854, 38.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072834, 33.034790, 38.367332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087601, -0.388711, -0.917186,
		-0.459990, -0.832471, 0.308873,
		-0.883592, 0.394838, -0.251728,
		36.807755, 33.153240, 38.291813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259121, 32.346035, 38.120079>,  <37.426273, 32.876854, 38.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259121, 32.346035, 38.120079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047379, 32.664913, 38.003963>,  <36.920334, 32.856239, 37.934296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047379, 32.664913, 38.003963>,  <37.259121, 32.346035, 38.120079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047379, 32.664913, 38.003963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225448, -0.197683, -0.953989,
		-0.817897, -0.570444, -0.075081,
		-0.529355, 0.797192, -0.290290,
		36.888573, 32.904072, 37.916878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678692, 32.146496, 37.625038>,  <37.259121, 32.346035, 38.120079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678692, 32.146496, 37.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799942, 32.521950, 37.559212>,  <36.872692, 32.747223, 37.519718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799942, 32.521950, 37.559212>,  <36.678692, 32.146496, 37.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799942, 32.521950, 37.559212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079905, -0.197114, -0.977119,
		-0.949596, 0.283036, -0.134751,
		0.303122, 0.938635, -0.164563,
		36.890877, 32.803539, 37.509842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235279, 32.279770, 37.115433>,  <36.678692, 32.146496, 37.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235279, 32.279770, 37.115433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548443, 32.528141, 37.099888>,  <36.736340, 32.677162, 37.090561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548443, 32.528141, 37.099888>,  <36.235279, 32.279770, 37.115433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548443, 32.528141, 37.099888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121269, -0.213581, -0.969369,
		-0.610208, 0.754211, -0.242513,
		0.782905, 0.620926, -0.038866,
		36.783314, 32.714420, 37.088226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225548, 32.828888, 36.480774>,  <36.235279, 32.279770, 37.115433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225548, 32.828888, 36.480774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608219, 32.819004, 36.596809>,  <36.837822, 32.813076, 36.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608219, 32.819004, 36.596809>,  <36.225548, 32.828888, 36.480774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608219, 32.819004, 36.596809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289815, -0.014073, -0.956979,
		0.027727, 0.999596, -0.006303,
		0.956681, -0.024707, 0.290088,
		36.895222, 32.811592, 36.683834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488426, 32.966225, 35.932510>,  <36.225548, 32.828888, 36.480774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488426, 32.966225, 35.932510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831047, 32.904148, 36.129375>,  <37.036621, 32.866901, 36.247494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831047, 32.904148, 36.129375>,  <36.488426, 32.966225, 35.932510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831047, 32.904148, 36.129375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487820, -0.067642, -0.870320,
		0.168353, 0.985567, 0.017764,
		0.856556, -0.155187, 0.492167,
		37.088013, 32.857594, 36.277027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023773, 33.376030, 35.583649>,  <36.488426, 32.966225, 35.932510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023773, 33.376030, 35.583649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210926, 33.097095, 35.800835>,  <37.323215, 32.929737, 35.931149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210926, 33.097095, 35.800835>,  <37.023773, 33.376030, 35.583649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210926, 33.097095, 35.800835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643680, -0.152115, -0.750025,
		0.605612, 0.700418, 0.377688,
		0.467879, -0.697334, 0.542968,
		37.351292, 32.887894, 35.963726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697075, 33.532356, 35.554169>,  <37.023773, 33.376030, 35.583649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697075, 33.532356, 35.554169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691608, 33.141506, 35.639061>,  <37.688328, 32.906998, 35.689995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691608, 33.141506, 35.639061>,  <37.697075, 33.532356, 35.554169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691608, 33.141506, 35.639061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493676, -0.191168, -0.848374,
		0.869539, 0.093176, 0.484996,
		-0.013668, -0.977125, 0.212227,
		37.687508, 32.848370, 35.702728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393906, 33.338379, 35.476654>,  <37.697075, 33.532356, 35.554169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393906, 33.338379, 35.476654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170273, 33.008183, 35.445671>,  <38.036095, 32.810066, 35.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170273, 33.008183, 35.445671>,  <38.393906, 33.338379, 35.476654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170273, 33.008183, 35.445671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536960, -0.289309, -0.792448,
		0.631745, -0.484636, 0.605001,
		-0.559081, -0.825487, -0.077460,
		38.002548, 32.760536, 35.422432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779800, 32.794422, 35.325825>,  <38.393906, 33.338379, 35.476654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779800, 32.794422, 35.325825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421967, 32.689270, 35.181263>,  <38.207268, 32.626179, 35.094524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421967, 32.689270, 35.181263>,  <38.779800, 32.794422, 35.325825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421967, 32.689270, 35.181263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422547, -0.234220, -0.875554,
		0.145519, -0.935967, 0.320609,
		-0.894583, -0.262882, -0.361407,
		38.153591, 32.610405, 35.072842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904095, 32.178089, 34.985561>,  <38.779800, 32.794422, 35.325825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904095, 32.178089, 34.985561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584209, 32.360256, 34.829075>,  <38.392277, 32.469555, 34.735184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584209, 32.360256, 34.829075>,  <38.904095, 32.178089, 34.985561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584209, 32.360256, 34.829075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344608, -0.185397, -0.920257,
		-0.491631, -0.870760, -0.008675,
		-0.799715, 0.455417, -0.391218,
		38.344296, 32.496880, 34.711708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789471, 31.790838, 34.394810>,  <38.904095, 32.178089, 34.985561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789471, 31.790838, 34.394810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621819, 32.153339, 34.372765>,  <38.521229, 32.370838, 34.359535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621819, 32.153339, 34.372765>,  <38.789471, 31.790838, 34.394810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621819, 32.153339, 34.372765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309085, 0.085340, -0.947198,
		-0.853696, -0.414034, -0.315877,
		-0.419130, 0.906252, -0.055117,
		38.496078, 32.425217, 34.356228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654747, 31.941442, 34.602577>,  <38.789471, 31.790838, 34.394810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654747, 31.941442, 34.602577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002628, 31.988213, 34.410767>,  <40.211357, 32.016273, 34.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002628, 31.988213, 34.410767>,  <39.654747, 31.941442, 34.602577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002628, 31.988213, 34.410767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478154, 0.041346, 0.877303,
		0.122408, -0.992279, -0.019951,
		0.869704, 0.116929, -0.479523,
		40.263538, 32.023293, 34.266911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120739, 31.408663, 34.650150>,  <39.654747, 31.941442, 34.602577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120739, 31.408663, 34.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375671, 31.715504, 34.620861>,  <40.528629, 31.899609, 34.603287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375671, 31.715504, 34.620861>,  <40.120739, 31.408663, 34.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375671, 31.715504, 34.620861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339314, -0.194049, 0.920441,
		0.691863, -0.611473, -0.383962,
		0.637332, 0.767102, -0.073226,
		40.566872, 31.945635, 34.598892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741547, 31.337416, 35.022072>,  <40.120739, 31.408663, 34.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741547, 31.337416, 35.022072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682529, 31.733030, 35.024403>,  <40.647118, 31.970400, 35.025803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682529, 31.733030, 35.024403>,  <40.741547, 31.337416, 35.022072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682529, 31.733030, 35.024403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222086, 0.027385, 0.974643,
		0.963799, 0.145096, -0.223692,
		-0.147543, 0.989039, 0.005830,
		40.638268, 32.029743, 35.026150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420017, 31.672403, 35.258759>,  <40.741547, 31.337416, 35.022072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420017, 31.672403, 35.258759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082970, 31.874468, 35.333393>,  <40.880741, 31.995707, 35.378174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082970, 31.874468, 35.333393>,  <41.420017, 31.672403, 35.258759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082970, 31.874468, 35.333393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261785, 0.081448, 0.961683,
		0.470606, 0.859174, -0.200872,
		-0.842614, 0.505159, 0.186589,
		40.830185, 32.026016, 35.389370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643532, 32.335506, 35.509346>,  <41.420017, 31.672403, 35.258759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643532, 32.335506, 35.509346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295963, 32.218845, 35.669304>,  <41.087421, 32.148849, 35.765278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295963, 32.218845, 35.669304>,  <41.643532, 32.335506, 35.509346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295963, 32.218845, 35.669304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410710, 0.026021, 0.911395,
		-0.276218, 0.956170, 0.097175,
		-0.868920, -0.291654, 0.399896,
		41.035286, 32.131348, 35.789272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418743, 32.444916, 35.747189>,  <41.643532, 32.335506, 35.509346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418743, 32.444916, 35.747189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794819, 32.472912, 35.613838>,  <43.020466, 32.489712, 35.533829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794819, 32.472912, 35.613838>,  <42.418743, 32.444916, 35.747189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794819, 32.472912, 35.613838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306223, -0.602351, 0.737157,
		-0.149212, -0.795157, -0.587760,
		0.940193, 0.069993, -0.333373,
		43.076878, 32.493908, 35.513824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848671, 31.721369, 35.757092>,  <42.418743, 32.444916, 35.747189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848671, 31.721369, 35.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064850, 32.056923, 35.782974>,  <43.194557, 32.258255, 35.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064850, 32.056923, 35.782974>,  <42.848671, 31.721369, 35.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064850, 32.056923, 35.782974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585569, -0.430247, 0.687020,
		0.604169, -0.333411, -0.723752,
		0.540452, 0.838883, 0.064707,
		43.226986, 32.308586, 35.802387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631779, 31.597546, 35.775986>,  <42.848671, 31.721369, 35.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631779, 31.597546, 35.775986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579170, 31.956108, 35.945293>,  <43.547607, 32.171246, 36.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579170, 31.956108, 35.945293>,  <43.631779, 31.597546, 35.775986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579170, 31.956108, 35.945293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686340, -0.225750, 0.691357,
		0.715290, 0.381433, -0.585549,
		-0.131519, 0.896407, 0.423270,
		43.539715, 32.225029, 36.072273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382755, 31.872723, 35.881969>,  <43.631779, 31.597546, 35.775986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382755, 31.872723, 35.881969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099804, 32.043510, 36.107288>,  <43.930031, 32.145985, 36.242481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099804, 32.043510, 36.107288>,  <44.382755, 31.872723, 35.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099804, 32.043510, 36.107288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605765, -0.044447, 0.794401,
		0.364224, 0.903172, -0.227203,
		-0.707382, 0.426972, 0.563299,
		43.887589, 32.171600, 36.276279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761158, 32.170502, 36.511574>,  <44.382755, 31.872723, 35.881969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761158, 32.170502, 36.511574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388775, 32.091194, 36.634220>,  <44.165344, 32.043610, 36.707809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388775, 32.091194, 36.634220>,  <44.761158, 32.170502, 36.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388775, 32.091194, 36.634220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351163, -0.256113, 0.900606,
		-0.100032, 0.946095, 0.308054,
		-0.930955, -0.198267, 0.306615,
		44.109489, 32.031715, 36.726204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699192, 32.834171, 36.260941>,  <44.761158, 32.170502, 36.511574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699192, 32.834171, 36.260941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831921, 33.200668, 36.350727>,  <44.911556, 33.420567, 36.404598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831921, 33.200668, 36.350727>,  <44.699192, 32.834171, 36.260941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831921, 33.200668, 36.350727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601626, -0.022263, -0.798468,
		-0.726596, 0.399995, -0.558625,
		0.331820, 0.916247, 0.224471,
		44.931465, 33.475544, 36.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635178, 33.138718, 35.660427>,  <44.699192, 32.834171, 36.260941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635178, 33.138718, 35.660427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896378, 33.352997, 35.874577>,  <45.053097, 33.481564, 36.003067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896378, 33.352997, 35.874577>,  <44.635178, 33.138718, 35.660427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896378, 33.352997, 35.874577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636114, -0.004286, -0.771583,
		-0.411037, 0.844402, -0.343561,
		0.652999, 0.535693, 0.535374,
		45.092278, 33.513706, 36.035191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831676, 33.849865, 35.304348>,  <44.635178, 33.138718, 35.660427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831676, 33.849865, 35.304348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095978, 33.687580, 35.556950>,  <45.254559, 33.590210, 35.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095978, 33.687580, 35.556950>,  <44.831676, 33.849865, 35.304348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095978, 33.687580, 35.556950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740180, 0.212499, -0.637947,
		0.124630, 0.888954, 0.440712,
		0.660757, -0.405714, 0.631503,
		45.294205, 33.565865, 35.746399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409340, 34.377392, 35.456997>,  <44.831676, 33.849865, 35.304348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409340, 34.377392, 35.456997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527763, 34.000927, 35.522190>,  <45.598816, 33.775047, 35.561306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527763, 34.000927, 35.522190>,  <45.409340, 34.377392, 35.456997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527763, 34.000927, 35.522190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842721, 0.177046, -0.508406,
		0.449636, 0.287869, 0.845552,
		0.296056, -0.941162, 0.162987,
		45.616581, 33.718578, 35.571087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078648, 34.229275, 35.855194>,  <45.409340, 34.377392, 35.456997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078648, 34.229275, 35.855194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004230, 33.973846, 35.556499>,  <45.959579, 33.820587, 35.377285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004230, 33.973846, 35.556499>,  <46.078648, 34.229275, 35.855194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004230, 33.973846, 35.556499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735425, 0.413490, -0.536821,
		0.651567, -0.649038, 0.392696,
		-0.186041, -0.638573, -0.746735,
		45.948418, 33.782276, 35.332478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627914, 33.694893, 36.276741>,  <46.078648, 34.229275, 35.855194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627914, 33.694893, 36.276741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477036, 33.499718, 36.591610>,  <46.386509, 33.382610, 36.780529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477036, 33.499718, 36.591610>,  <46.627914, 33.694893, 36.276741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477036, 33.499718, 36.591610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739775, -0.670094, -0.060883,
		0.557186, 0.559364, 0.613723,
		-0.377196, -0.487940, 0.787171,
		46.363876, 33.353336, 36.827763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279713, 34.026222, 35.868340>,  <46.627914, 33.694893, 36.276741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279713, 34.026222, 35.868340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580547, 34.053787, 35.606159>,  <47.761047, 34.070328, 35.448853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580547, 34.053787, 35.606159>,  <47.279713, 34.026222, 35.868340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580547, 34.053787, 35.606159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308368, 0.915738, -0.257550,
		0.582470, 0.395820, 0.709969,
		0.752089, 0.068917, -0.655448,
		47.806175, 34.074463, 35.409523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661221, 34.608734, 36.003441>,  <47.279713, 34.026222, 35.868340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661221, 34.608734, 36.003441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705322, 34.535915, 35.612606>,  <47.731785, 34.492226, 35.378105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705322, 34.535915, 35.612606>,  <47.661221, 34.608734, 36.003441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705322, 34.535915, 35.612606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396731, 0.893307, -0.211204,
		0.911289, 0.410928, 0.026273,
		0.110259, -0.182045, -0.977089,
		47.738400, 34.481300, 35.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.916866, 35.222336, 35.616627>,  <47.661221, 34.608734, 36.003441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.916866, 35.222336, 35.616627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763317, 34.987114, 35.331856>,  <47.671188, 34.845982, 35.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763317, 34.987114, 35.331856>,  <47.916866, 35.222336, 35.616627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763317, 34.987114, 35.331856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454840, 0.791390, -0.408440,
		0.803592, 0.167021, -0.571265,
		-0.383876, -0.588053, -0.711922,
		47.648155, 34.810699, 35.118279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.991364, 35.564430, 34.991062>,  <47.916866, 35.222336, 35.616627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.991364, 35.564430, 34.991062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688564, 35.307728, 34.941906>,  <47.506886, 35.153706, 34.912411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688564, 35.307728, 34.941906>,  <47.991364, 35.564430, 34.991062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688564, 35.307728, 34.941906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524449, 0.708931, -0.471562,
		0.389748, -0.292522, -0.873228,
		-0.757000, -0.641754, -0.122891,
		47.461464, 35.115200, 34.905037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.106834, 33.579983, 24.093924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404705, 33.832962, 24.008627>,  <38.583427, 33.984749, 23.957449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404705, 33.832962, 24.008627>,  <38.106834, 33.579983, 24.093924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404705, 33.832962, 24.008627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042030, 0.363300, 0.930723,
		0.666105, -0.684121, 0.297122,
		0.744672, 0.632448, -0.213243,
		38.628105, 34.022697, 23.944654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354813, 33.534847, 24.781641>,  <38.106834, 33.579983, 24.093924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354813, 33.534847, 24.781641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509388, 33.856594, 24.601126>,  <38.602135, 34.049641, 24.492817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509388, 33.856594, 24.601126>,  <38.354813, 33.534847, 24.781641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509388, 33.856594, 24.601126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009312, 0.485874, 0.873979,
		0.922267, -0.341944, 0.180272,
		0.386441, 0.804364, -0.451290,
		38.625320, 34.097904, 24.465738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909725, 33.651939, 25.141922>,  <38.354813, 33.534847, 24.781641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909725, 33.651939, 25.141922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829681, 34.000271, 24.962318>,  <38.781654, 34.209270, 24.854555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829681, 34.000271, 24.962318>,  <38.909725, 33.651939, 25.141922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829681, 34.000271, 24.962318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067063, 0.445031, 0.893000,
		0.977475, 0.208811, -0.030655,
		-0.200111, 0.870830, -0.449011,
		38.769650, 34.261520, 24.827616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157482, 34.196239, 25.604757>,  <38.909725, 33.651939, 25.141922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157482, 34.196239, 25.604757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896248, 34.380138, 25.364056>,  <38.739506, 34.490479, 25.219635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896248, 34.380138, 25.364056>,  <39.157482, 34.196239, 25.604757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896248, 34.380138, 25.364056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171280, 0.684356, 0.708745,
		0.737656, 0.565943, -0.368201,
		-0.653090, 0.459745, -0.601754,
		38.700321, 34.518063, 25.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413067, 34.850128, 25.561344>,  <39.157482, 34.196239, 25.604757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413067, 34.850128, 25.561344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024391, 34.869537, 25.468861>,  <38.791183, 34.881184, 25.413370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024391, 34.869537, 25.468861>,  <39.413067, 34.850128, 25.561344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024391, 34.869537, 25.468861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140432, 0.668360, 0.730462,
		0.189974, 0.742254, -0.642627,
		-0.971694, 0.048523, -0.231207,
		38.732883, 34.884094, 25.399498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092274, 35.616035, 25.455748>,  <39.413067, 34.850128, 25.561344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092274, 35.616035, 25.455748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765285, 35.399414, 25.534189>,  <38.569092, 35.269444, 25.581255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765285, 35.399414, 25.534189>,  <39.092274, 35.616035, 25.455748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765285, 35.399414, 25.534189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222873, 0.611385, 0.759300,
		-0.531095, 0.577002, -0.620489,
		-0.817475, -0.541551, 0.196106,
		38.520042, 35.236950, 25.593021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496609, 36.064888, 25.667755>,  <39.092274, 35.616035, 25.455748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496609, 36.064888, 25.667755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415211, 35.697247, 25.802715>,  <38.366371, 35.476662, 25.883692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415211, 35.697247, 25.802715>,  <38.496609, 36.064888, 25.667755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415211, 35.697247, 25.802715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355075, 0.390428, 0.849405,
		-0.912421, 0.053047, -0.405801,
		-0.203494, -0.919104, 0.337399,
		38.354164, 35.421516, 25.903934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842869, 36.048157, 25.992905>,  <38.496609, 36.064888, 25.667755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842869, 36.048157, 25.992905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004353, 35.714199, 26.142551>,  <38.101242, 35.513824, 26.232340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004353, 35.714199, 26.142551>,  <37.842869, 36.048157, 25.992905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004353, 35.714199, 26.142551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224961, 0.305778, 0.925144,
		-0.886797, -0.457655, -0.064372,
		0.403713, -0.834896, 0.374117,
		38.125465, 35.463730, 26.254787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352413, 35.618900, 26.276693>,  <37.842869, 36.048157, 25.992905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352413, 35.618900, 26.276693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695255, 35.514107, 26.454117>,  <37.900959, 35.451229, 26.560570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695255, 35.514107, 26.454117>,  <37.352413, 35.618900, 26.276693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695255, 35.514107, 26.454117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360865, 0.309130, 0.879895,
		-0.367634, -0.914223, 0.170415,
		0.857101, -0.261983, 0.443557,
		37.952385, 35.435513, 26.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114395, 35.348965, 26.942356>,  <37.352413, 35.618900, 26.276693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114395, 35.348965, 26.942356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504482, 35.392719, 27.019279>,  <37.738533, 35.418972, 27.065434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504482, 35.392719, 27.019279>,  <37.114395, 35.348965, 26.942356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504482, 35.392719, 27.019279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197882, 0.042524, 0.979303,
		0.098945, -0.993089, 0.063116,
		0.975219, 0.109386, 0.192307,
		37.797047, 35.425537, 27.076971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334347, 34.848862, 27.490156>,  <37.114395, 35.348965, 26.942356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334347, 34.848862, 27.490156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611183, 35.137585, 27.491253>,  <37.777287, 35.310818, 27.491911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611183, 35.137585, 27.491253>,  <37.334347, 34.848862, 27.490156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611183, 35.137585, 27.491253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114145, 0.105691, 0.987826,
		0.712729, -0.683978, 0.155538,
		0.692090, 0.721806, 0.002744,
		37.818810, 35.354126, 27.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816189, 34.728943, 28.005913>,  <37.334347, 34.848862, 27.490156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816189, 34.728943, 28.005913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849560, 35.121887, 27.938972>,  <37.869583, 35.357655, 27.898808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849560, 35.121887, 27.938972>,  <37.816189, 34.728943, 28.005913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849560, 35.121887, 27.938972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167126, 0.179350, 0.969486,
		0.982400, -0.052910, 0.179140,
		0.083424, 0.982361, -0.167351,
		37.874588, 35.416595, 27.888767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419312, 34.983234, 28.421629>,  <37.816189, 34.728943, 28.005913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419312, 34.983234, 28.421629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153355, 35.271904, 28.344578>,  <37.993778, 35.445107, 28.298347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153355, 35.271904, 28.344578>,  <38.419312, 34.983234, 28.421629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153355, 35.271904, 28.344578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071178, 0.195499, 0.978118,
		0.743538, 0.664055, -0.078619,
		-0.664894, 0.721672, -0.192627,
		37.953888, 35.488407, 28.286789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600231, 35.521286, 28.868361>,  <38.419312, 34.983234, 28.421629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600231, 35.521286, 28.868361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228542, 35.614029, 28.753265>,  <38.005531, 35.669674, 28.684208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228542, 35.614029, 28.753265>,  <38.600231, 35.521286, 28.868361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228542, 35.614029, 28.753265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222294, 0.271296, 0.936474,
		0.295187, 0.934154, -0.200554,
		-0.929220, 0.231853, -0.287740,
		37.949776, 35.683586, 28.666943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421246, 36.128048, 29.277317>,  <38.600231, 35.521286, 28.868361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421246, 36.128048, 29.277317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075359, 35.960896, 29.165855>,  <37.867828, 35.860603, 29.098978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075359, 35.960896, 29.165855>,  <38.421246, 36.128048, 29.277317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075359, 35.960896, 29.165855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408382, 0.261974, 0.874411,
		-0.292401, 0.869911, -0.397187,
		-0.864712, -0.417882, -0.278654,
		37.815945, 35.835529, 29.082258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962315, 36.658611, 29.455198>,  <38.421246, 36.128048, 29.277317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962315, 36.658611, 29.455198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734821, 36.331371, 29.421144>,  <37.598324, 36.135025, 29.400711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734821, 36.331371, 29.421144>,  <37.962315, 36.658611, 29.455198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734821, 36.331371, 29.421144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429073, 0.206785, 0.879282,
		-0.701737, 0.536609, -0.468632,
		-0.568736, -0.818102, -0.085136,
		37.564201, 36.085941, 29.395603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400265, 36.854042, 29.856091>,  <37.962315, 36.658611, 29.455198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400265, 36.854042, 29.856091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347759, 36.461285, 29.801466>,  <37.316254, 36.225628, 29.768692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347759, 36.461285, 29.801466>,  <37.400265, 36.854042, 29.856091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347759, 36.461285, 29.801466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475500, -0.058510, 0.877768,
		-0.869867, 0.180157, -0.459211,
		-0.131268, -0.981896, -0.136560,
		37.308380, 36.166718, 29.760498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648438, 36.703171, 29.924044>,  <37.400265, 36.854042, 29.856091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648438, 36.703171, 29.924044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850842, 36.369705, 30.012556>,  <36.972282, 36.169628, 30.065664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850842, 36.369705, 30.012556>,  <36.648438, 36.703171, 29.924044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850842, 36.369705, 30.012556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523020, -0.092564, 0.847279,
		-0.685861, -0.544465, -0.482859,
		0.506009, -0.833660, 0.221280,
		37.002644, 36.119606, 30.078939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177895, 36.242157, 30.049788>,  <36.648438, 36.703171, 29.924044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177895, 36.242157, 30.049788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493942, 36.066154, 30.220484>,  <36.683571, 35.960552, 30.322901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493942, 36.066154, 30.220484>,  <36.177895, 36.242157, 30.049788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493942, 36.066154, 30.220484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585193, -0.334356, 0.738752,
		-0.182371, -0.833428, -0.521669,
		0.790120, -0.440004, 0.426740,
		36.730980, 35.934155, 30.348505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871807, 35.651012, 30.221848>,  <36.177895, 36.242157, 30.049788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871807, 35.651012, 30.221848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209888, 35.715134, 30.425781>,  <36.412739, 35.753609, 30.548141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209888, 35.715134, 30.425781>,  <35.871807, 35.651012, 30.221848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209888, 35.715134, 30.425781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426137, -0.373586, 0.823918,
		0.322547, -0.913638, -0.247444,
		0.845204, 0.160307, 0.509834,
		36.463451, 35.763226, 30.578732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825844, 35.086956, 30.741976>,  <35.871807, 35.651012, 30.221848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825844, 35.086956, 30.741976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101795, 35.325985, 30.905430>,  <36.267365, 35.469402, 31.003502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101795, 35.325985, 30.905430>,  <35.825844, 35.086956, 30.741976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101795, 35.325985, 30.905430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319854, -0.254776, 0.912569,
		0.649435, -0.760262, 0.015372,
		0.689875, 0.597571, 0.408634,
		36.308758, 35.505257, 31.028021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227055, 34.947086, 31.275517>,  <35.825844, 35.086956, 30.741976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227055, 34.947086, 31.275517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969414, 34.667843, 31.400595>,  <34.814827, 34.500298, 31.475641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969414, 34.667843, 31.400595>,  <35.227055, 34.947086, 31.275517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969414, 34.667843, 31.400595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143773, -0.511984, -0.846878,
		0.751304, -0.500521, 0.430140,
		-0.644105, -0.698105, 0.312694,
		34.776184, 34.458412, 31.494404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569153, 34.265903, 31.031641>,  <35.227055, 34.947086, 31.275517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569153, 34.265903, 31.031641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180744, 34.196671, 31.097561>,  <34.947701, 34.155132, 31.137114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180744, 34.196671, 31.097561>,  <35.569153, 34.265903, 31.031641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180744, 34.196671, 31.097561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018699, -0.632443, -0.774381,
		0.238256, -0.755023, 0.610880,
		-0.971022, -0.173078, 0.164802,
		34.889439, 34.144749, 31.147001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466782, 33.635593, 30.788458>,  <35.569153, 34.265903, 31.031641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466782, 33.635593, 30.788458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081558, 33.743206, 30.783634>,  <34.850426, 33.807774, 30.780741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081558, 33.743206, 30.783634>,  <35.466782, 33.635593, 30.788458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081558, 33.743206, 30.783634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152173, -0.580597, -0.799844,
		-0.222182, -0.768460, 0.600087,
		-0.963057, 0.269028, -0.012059,
		34.792641, 33.823914, 30.780016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997932, 33.039955, 30.705128>,  <35.466782, 33.635593, 30.788458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997932, 33.039955, 30.705128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815582, 33.371025, 30.574200>,  <34.706173, 33.569668, 30.495642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815582, 33.371025, 30.574200>,  <34.997932, 33.039955, 30.705128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815582, 33.371025, 30.574200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219169, -0.460825, -0.860003,
		-0.862637, -0.320315, 0.391478,
		-0.455875, 0.827670, -0.327322,
		34.678818, 33.619328, 30.476004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494480, 32.711926, 30.356886>,  <34.997932, 33.039955, 30.705128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494480, 32.711926, 30.356886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512886, 33.089817, 30.227045>,  <34.523930, 33.316551, 30.149139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512886, 33.089817, 30.227045>,  <34.494480, 32.711926, 30.356886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512886, 33.089817, 30.227045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047555, -0.322508, -0.945371,
		-0.997808, 0.058940, 0.030086,
		0.046017, 0.944730, -0.324604,
		34.526691, 33.373238, 30.129663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044937, 32.695068, 29.713890>,  <34.494480, 32.711926, 30.356886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044937, 32.695068, 29.713890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271687, 33.023945, 29.693306>,  <34.407738, 33.221272, 29.680956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271687, 33.023945, 29.693306>,  <34.044937, 32.695068, 29.713890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271687, 33.023945, 29.693306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093638, -0.126370, -0.987554,
		-0.818464, 0.555002, -0.148625,
		0.566876, 0.822194, -0.051460,
		34.441750, 33.270603, 29.677868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704704, 33.165035, 29.214809>,  <34.044937, 32.695068, 29.713890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704704, 33.165035, 29.214809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090275, 33.266033, 29.248508>,  <34.321617, 33.326633, 29.268728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090275, 33.266033, 29.248508>,  <33.704704, 33.165035, 29.214809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090275, 33.266033, 29.248508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114034, -0.105736, -0.987834,
		-0.240517, 0.961803, -0.130715,
		0.963923, 0.252497, 0.084247,
		34.379452, 33.341782, 29.273783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855022, 33.629944, 28.640459>,  <33.704704, 33.165035, 29.214809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855022, 33.629944, 28.640459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214584, 33.502201, 28.760445>,  <34.430321, 33.425556, 28.832436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214584, 33.502201, 28.760445>,  <33.855022, 33.629944, 28.640459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214584, 33.502201, 28.760445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242009, -0.208800, -0.947541,
		0.365240, 0.924344, -0.110403,
		0.898906, -0.319361, 0.299962,
		34.484257, 33.406391, 28.850433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327698, 34.004536, 28.285305>,  <33.855022, 33.629944, 28.640459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327698, 34.004536, 28.285305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545494, 33.684849, 28.387121>,  <34.676170, 33.493038, 28.448210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545494, 33.684849, 28.387121>,  <34.327698, 34.004536, 28.285305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545494, 33.684849, 28.387121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390036, -0.027409, -0.920392,
		0.742566, 0.600423, 0.296797,
		0.544489, -0.799213, 0.254539,
		34.708839, 33.445084, 28.463484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024982, 34.081997, 27.913807>,  <34.327698, 34.004536, 28.285305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024982, 34.081997, 27.913807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005493, 33.694965, 28.012930>,  <34.993801, 33.462746, 28.072405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005493, 33.694965, 28.012930>,  <35.024982, 34.081997, 27.913807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005493, 33.694965, 28.012930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354749, -0.248693, -0.901280,
		0.933691, 0.043996, 0.355366,
		-0.048724, -0.967583, 0.247810,
		34.990875, 33.404690, 28.087273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642986, 33.874142, 27.662031>,  <35.024982, 34.081997, 27.913807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642986, 33.874142, 27.662031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393944, 33.563145, 27.697508>,  <35.244518, 33.376549, 27.718794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393944, 33.563145, 27.697508>,  <35.642986, 33.874142, 27.662031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393944, 33.563145, 27.697508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263215, -0.314809, -0.911928,
		0.736937, -0.544429, 0.400651,
		-0.622609, -0.777491, 0.088693,
		35.207161, 33.329899, 27.724115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064274, 33.237690, 27.521185>,  <35.642986, 33.874142, 27.662031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064274, 33.237690, 27.521185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683640, 33.137135, 27.450438>,  <35.455257, 33.076801, 27.407990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683640, 33.137135, 27.450438>,  <36.064274, 33.237690, 27.521185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683640, 33.137135, 27.450438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277941, -0.458049, -0.844358,
		0.131245, -0.852641, 0.505745,
		-0.951590, -0.251385, -0.176867,
		35.398163, 33.061718, 27.397377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080715, 32.544373, 27.374050>,  <36.064274, 33.237690, 27.521185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080715, 32.544373, 27.374050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727169, 32.674335, 27.239458>,  <35.515041, 32.752316, 27.158703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727169, 32.674335, 27.239458>,  <36.080715, 32.544373, 27.374050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727169, 32.674335, 27.239458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122182, -0.534015, -0.836600,
		-0.451504, -0.780552, 0.432299,
		-0.883864, 0.324909, -0.336479,
		35.462009, 32.771809, 27.138514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733490, 31.902596, 27.103586>,  <36.080715, 32.544373, 27.374050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733490, 31.902596, 27.103586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 32.235828, 26.933626>,  <35.506824, 32.435768, 26.831650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 32.235828, 26.933626>,  <35.733490, 31.902596, 27.103586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591824, 32.235828, 26.933626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216163, -0.369121, -0.903893,
		-0.909857, -0.411977, -0.049351,
		-0.354167, 0.833081, -0.424902,
		35.485573, 32.485752, 26.806156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461445, 31.690725, 26.516901>,  <35.733490, 31.902596, 27.103586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461445, 31.690725, 26.516901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448605, 32.079247, 26.422632>,  <35.440899, 32.312359, 26.366072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448605, 32.079247, 26.422632>,  <35.461445, 31.690725, 26.516901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448605, 32.079247, 26.422632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249911, -0.220500, -0.942828,
		-0.967736, -0.089165, -0.235660,
		-0.032104, 0.971303, -0.235670,
		35.438972, 32.370636, 26.351931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015476, 31.783619, 25.908918>,  <35.461445, 31.690725, 26.516901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015476, 31.783619, 25.908918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247658, 32.108765, 25.889631>,  <35.386967, 32.303852, 25.878059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247658, 32.108765, 25.889631>,  <35.015476, 31.783619, 25.908918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247658, 32.108765, 25.889631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149852, -0.164832, -0.974872,
		-0.800386, 0.558642, -0.217487,
		0.580453, 0.812865, -0.048216,
		35.421795, 32.352623, 25.875166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746876, 32.037136, 25.204878>,  <35.015476, 31.783619, 25.908918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746876, 32.037136, 25.204878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099548, 32.195263, 25.307919>,  <35.311153, 32.290138, 25.369743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099548, 32.195263, 25.307919>,  <34.746876, 32.037136, 25.204878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099548, 32.195263, 25.307919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211518, 0.156882, -0.964701,
		-0.421780, 0.905047, 0.054702,
		0.881681, 0.395321, 0.257603,
		35.364052, 32.313858, 25.385201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848503, 32.655811, 24.787766>,  <34.746876, 32.037136, 25.204878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848503, 32.655811, 24.787766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228264, 32.596001, 24.898233>,  <35.456120, 32.560112, 24.964514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228264, 32.596001, 24.898233>,  <34.848503, 32.655811, 24.787766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228264, 32.596001, 24.898233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282068, 0.019359, -0.959199,
		0.138082, 0.988568, 0.060557,
		0.949406, -0.149529, 0.276170,
		35.513084, 32.551144, 24.981085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263603, 33.003654, 24.283688>,  <34.848503, 32.655811, 24.787766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263603, 33.003654, 24.283688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520634, 32.735874, 24.432783>,  <35.674850, 32.575207, 24.522240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520634, 32.735874, 24.432783>,  <35.263603, 33.003654, 24.283688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520634, 32.735874, 24.432783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459287, -0.052859, -0.886714,
		0.613314, 0.740974, 0.273504,
		0.642574, -0.669450, 0.372739,
		35.713406, 32.535038, 24.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.963219, 33.280525, 24.182713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989353, 32.883949, 24.227930>,  <36.005035, 32.646004, 24.255060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989353, 32.883949, 24.227930>,  <35.963219, 33.280525, 24.182713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989353, 32.883949, 24.227930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671692, -0.040079, -0.739745,
		0.737943, 0.124265, 0.663324,
		0.065339, -0.991439, 0.113044,
		36.008953, 32.586517, 24.261843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604618, 33.197815, 24.079916>,  <35.963219, 33.280525, 24.182713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604618, 33.197815, 24.079916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478874, 32.819035, 24.053196>,  <36.403427, 32.591766, 24.037165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478874, 32.819035, 24.053196>,  <36.604618, 33.197815, 24.079916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478874, 32.819035, 24.053196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541566, -0.121100, -0.831890,
		0.779670, -0.297689, 0.550905,
		-0.314360, -0.946951, -0.066800,
		36.384567, 32.534950, 24.033155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149578, 32.825436, 24.025436>,  <36.604618, 33.197815, 24.079916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149578, 32.825436, 24.025436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886688, 32.569145, 23.866678>,  <36.728954, 32.415371, 23.771423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886688, 32.569145, 23.866678>,  <37.149578, 32.825436, 24.025436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886688, 32.569145, 23.866678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553929, -0.053525, -0.830842,
		0.511102, -0.765898, 0.390096,
		-0.657220, -0.640730, -0.396896,
		36.689522, 32.376926, 23.747610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488262, 32.327137, 23.662663>,  <37.149578, 32.825436, 24.025436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488262, 32.327137, 23.662663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126167, 32.305828, 23.494040>,  <36.908909, 32.293045, 23.392866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126167, 32.305828, 23.494040>,  <37.488262, 32.327137, 23.662663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126167, 32.305828, 23.494040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422925, -0.017191, -0.906002,
		0.041014, -0.998432, 0.038090,
		-0.905236, -0.053268, -0.421557,
		36.854595, 32.289848, 23.367573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586853, 31.811287, 23.123396>,  <37.488262, 32.327137, 23.662663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586853, 31.811287, 23.123396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261162, 32.032253, 23.051985>,  <37.065746, 32.164833, 23.009138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261162, 32.032253, 23.051985>,  <37.586853, 31.811287, 23.123396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261162, 32.032253, 23.051985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248669, 0.053987, -0.967083,
		-0.524592, -0.831819, -0.181326,
		-0.814227, 0.552415, -0.178527,
		37.016895, 32.197979, 22.998426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315823, 31.476444, 22.591324>,  <37.586853, 31.811287, 23.123396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315823, 31.476444, 22.591324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144489, 31.837585, 22.576416>,  <37.041691, 32.054272, 22.567471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144489, 31.837585, 22.576416>,  <37.315823, 31.476444, 22.591324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144489, 31.837585, 22.576416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265619, 0.086378, -0.960201,
		-0.863702, -0.421181, -0.276814,
		-0.428329, 0.902854, -0.037269,
		37.015991, 32.108440, 22.565235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817863, 31.445028, 22.046764>,  <37.315823, 31.476444, 22.591324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817863, 31.445028, 22.046764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923389, 31.824312, 22.117537>,  <36.986706, 32.051884, 22.160000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923389, 31.824312, 22.117537>,  <36.817863, 31.445028, 22.046764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923389, 31.824312, 22.117537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205283, 0.124035, -0.970811,
		-0.942476, 0.292434, -0.161929,
		0.263814, 0.948208, 0.176932,
		37.002533, 32.108776, 22.170616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492104, 31.858335, 21.592752>,  <36.817863, 31.445028, 22.046764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492104, 31.858335, 21.592752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788071, 32.099087, 21.712931>,  <36.965652, 32.243538, 21.785038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788071, 32.099087, 21.712931>,  <36.492104, 31.858335, 21.592752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788071, 32.099087, 21.712931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232236, 0.190620, -0.953798,
		-0.631339, 0.775506, 0.001266,
		0.739917, 0.601876, 0.300446,
		37.010044, 32.279648, 21.803064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370049, 32.404907, 21.237074>,  <36.492104, 31.858335, 21.592752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370049, 32.404907, 21.237074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758938, 32.405300, 21.330694>,  <36.992271, 32.405537, 21.386868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758938, 32.405300, 21.330694>,  <36.370049, 32.404907, 21.237074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758938, 32.405300, 21.330694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231491, 0.143545, -0.962188,
		-0.034545, 0.989643, 0.139330,
		0.972223, 0.000985, 0.234052,
		37.050606, 32.405594, 21.400909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683064, 32.947598, 20.811623>,  <36.370049, 32.404907, 21.237074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683064, 32.947598, 20.811623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991386, 32.713074, 20.911295>,  <37.176380, 32.572357, 20.971098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991386, 32.713074, 20.911295>,  <36.683064, 32.947598, 20.811623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991386, 32.713074, 20.911295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376720, 0.104071, -0.920463,
		0.513745, 0.803373, 0.301094,
		0.770810, -0.586311, 0.249180,
		37.222630, 32.537182, 20.986050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194195, 33.166775, 20.440186>,  <36.683064, 32.947598, 20.811623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194195, 33.166775, 20.440186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361378, 32.817623, 20.540901>,  <37.461689, 32.608131, 20.601330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361378, 32.817623, 20.540901>,  <37.194195, 33.166775, 20.440186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361378, 32.817623, 20.540901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506190, -0.006385, -0.862399,
		0.754374, 0.487902, 0.439172,
		0.417962, -0.872875, 0.251788,
		37.486767, 32.555759, 20.616438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875851, 33.277287, 20.307489>,  <37.194195, 33.166775, 20.440186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875851, 33.277287, 20.307489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853863, 32.878159, 20.322107>,  <37.840668, 32.638683, 20.330877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853863, 32.878159, 20.322107>,  <37.875851, 33.277287, 20.307489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853863, 32.878159, 20.322107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589550, -0.061977, -0.805351,
		0.805859, -0.022728, 0.591671,
		-0.054974, -0.997819, 0.036545,
		37.837372, 32.578812, 20.333071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537876, 33.086712, 20.376387>,  <37.875851, 33.277287, 20.307489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537876, 33.086712, 20.376387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373112, 32.741455, 20.259556>,  <38.274254, 32.534302, 20.189457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373112, 32.741455, 20.259556>,  <38.537876, 33.086712, 20.376387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373112, 32.741455, 20.259556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521365, 0.039638, -0.852413,
		0.747334, -0.503396, 0.433687,
		-0.411910, -0.863146, -0.292076,
		38.249538, 32.482510, 20.171932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068439, 32.735897, 20.107647>,  <38.537876, 33.086712, 20.376387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068439, 32.735897, 20.107647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733303, 32.600994, 19.935932>,  <38.532223, 32.520050, 19.832903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733303, 32.600994, 19.935932>,  <39.068439, 32.735897, 20.107647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733303, 32.600994, 19.935932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466459, -0.033718, -0.883900,
		0.283630, -0.940807, 0.185568,
		-0.837837, -0.337260, -0.429285,
		38.481953, 32.499817, 19.807146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334824, 32.235580, 19.704462>,  <39.068439, 32.735897, 20.107647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334824, 32.235580, 19.704462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968460, 32.323879, 19.570366>,  <38.748642, 32.376858, 19.489908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968460, 32.323879, 19.570366>,  <39.334824, 32.235580, 19.704462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968460, 32.323879, 19.570366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329059, -0.065333, -0.942046,
		-0.229860, -0.973139, -0.012801,
		-0.915906, 0.220751, -0.335238,
		38.693687, 32.390106, 19.469795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064671, 31.683044, 19.337080>,  <39.334824, 32.235580, 19.704462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064671, 31.683044, 19.337080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845802, 31.981503, 19.185362>,  <38.714481, 32.160580, 19.094332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845802, 31.981503, 19.185362>,  <39.064671, 31.683044, 19.337080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845802, 31.981503, 19.185362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239970, -0.294286, -0.925100,
		-0.801883, -0.597210, -0.018028,
		-0.547174, 0.746148, -0.379296,
		38.681652, 32.205345, 19.071573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700714, 31.411560, 18.687696>,  <39.064671, 31.683044, 19.337080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700714, 31.411560, 18.687696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633274, 31.804876, 18.660242>,  <38.592808, 32.040867, 18.643770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633274, 31.804876, 18.660242>,  <38.700714, 31.411560, 18.687696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633274, 31.804876, 18.660242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041236, -0.076608, -0.996208,
		-0.984821, -0.165134, 0.053463,
		-0.168604, 0.983291, -0.068636,
		38.582691, 32.099865, 18.639652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166683, 31.519110, 18.151884>,  <38.700714, 31.411560, 18.687696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166683, 31.519110, 18.151884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381588, 31.856432, 18.157351>,  <38.510529, 32.058826, 18.160631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381588, 31.856432, 18.157351>,  <38.166683, 31.519110, 18.151884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381588, 31.856432, 18.157351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058596, -0.021155, -0.998058,
		-0.841379, 0.537017, -0.060780,
		0.537259, 0.843306, 0.013667,
		38.542767, 32.109425, 18.161451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000420, 31.926851, 17.622133>,  <38.166683, 31.519110, 18.151884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000420, 31.926851, 17.622133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375305, 32.048870, 17.689754>,  <38.600235, 32.122082, 17.730328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375305, 32.048870, 17.689754>,  <38.000420, 31.926851, 17.622133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375305, 32.048870, 17.689754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154200, 0.072336, -0.985388,
		-0.312816, 0.949587, 0.020756,
		0.937213, 0.305045, 0.169054,
		38.656467, 32.140385, 17.740471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286182, 32.057354, 16.991356>,  <38.000420, 31.926851, 17.622133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286182, 32.057354, 16.991356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629223, 32.155880, 17.171955>,  <38.835045, 32.214996, 17.280315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629223, 32.155880, 17.171955>,  <38.286182, 32.057354, 16.991356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629223, 32.155880, 17.171955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365606, 0.325469, -0.872010,
		-0.361739, 0.912906, 0.189067,
		0.857600, 0.246316, 0.451499,
		38.886501, 32.229774, 17.307405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306648, 32.792591, 17.024122>,  <38.286182, 32.057354, 16.991356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306648, 32.792591, 17.024122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675621, 32.638943, 17.039993>,  <38.897003, 32.546753, 17.049517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675621, 32.638943, 17.039993>,  <38.306648, 32.792591, 17.024122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675621, 32.638943, 17.039993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207110, 0.405381, -0.890377,
		0.325930, 0.829528, 0.453490,
		0.922429, -0.384123, 0.039678,
		38.952351, 32.523705, 17.051897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786922, 33.383568, 16.901731>,  <38.306648, 32.792591, 17.024122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786922, 33.383568, 16.901731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968124, 33.034321, 16.829664>,  <39.076843, 32.824772, 16.786425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968124, 33.034321, 16.829664>,  <38.786922, 33.383568, 16.901731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968124, 33.034321, 16.829664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416719, 0.386033, -0.822997,
		0.788120, 0.297742, 0.538717,
		0.453003, -0.873114, -0.180166,
		39.104027, 32.772385, 16.775614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478954, 33.492615, 16.973175>,  <38.786922, 33.383568, 16.901731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478954, 33.492615, 16.973175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386494, 33.197392, 16.719610>,  <39.331017, 33.020260, 16.567471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386494, 33.197392, 16.719610>,  <39.478954, 33.492615, 16.973175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386494, 33.197392, 16.719610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395346, 0.524084, -0.754345,
		0.888971, -0.424983, 0.170643,
		-0.231152, -0.738055, -0.633911,
		39.317146, 32.975975, 16.529436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064106, 33.174370, 16.573566>,  <39.478954, 33.492615, 16.973175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064106, 33.174370, 16.573566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711060, 33.172615, 16.385538>,  <39.499229, 33.171562, 16.272722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711060, 33.172615, 16.385538>,  <40.064106, 33.174370, 16.573566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711060, 33.172615, 16.385538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354050, 0.651616, -0.670854,
		0.309246, -0.758536, -0.573576,
		-0.882619, -0.004385, -0.470069,
		39.446274, 33.171299, 16.244516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685795, 32.831295, 16.768097>,  <40.064106, 33.174370, 16.573566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685795, 32.831295, 16.768097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498993, 32.715496, 17.102306>,  <40.386913, 32.646015, 17.302832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498993, 32.715496, 17.102306>,  <40.685795, 32.831295, 16.768097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498993, 32.715496, 17.102306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751897, 0.367262, 0.547512,
		-0.465359, 0.883917, 0.046160,
		-0.467003, -0.289497, 0.835524,
		40.358891, 32.628647, 17.352962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377777, 32.456543, 17.020496>,  <40.685795, 32.831295, 16.768097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377777, 32.456543, 17.020496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414444, 32.854736, 17.010660>,  <41.436443, 33.093655, 17.004759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414444, 32.854736, 17.010660>,  <41.377777, 32.456543, 17.020496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414444, 32.854736, 17.010660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416467, -0.015896, 0.909012,
		0.904518, -0.093569, -0.416044,
		0.091669, 0.995486, -0.024590,
		41.441944, 33.153381, 17.003283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990494, 32.635353, 17.417521>,  <41.377777, 32.456543, 17.020496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990494, 32.635353, 17.417521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791161, 32.982136, 17.414675>,  <41.671562, 33.190205, 17.412968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791161, 32.982136, 17.414675>,  <41.990494, 32.635353, 17.417521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791161, 32.982136, 17.414675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098970, 0.065035, 0.992963,
		0.861321, 0.494118, -0.118212,
		-0.498329, 0.866959, -0.007113,
		41.641663, 33.242222, 17.412540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295208, 33.024925, 17.854622>,  <41.990494, 32.635353, 17.417521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295208, 33.024925, 17.854622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927132, 33.180382, 17.835798>,  <41.706287, 33.273655, 17.824505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927132, 33.180382, 17.835798>,  <42.295208, 33.024925, 17.854622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927132, 33.180382, 17.835798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024559, 0.062661, 0.997733,
		0.390710, 0.919256, -0.048115,
		-0.920186, 0.388642, -0.047059,
		41.651077, 33.296974, 17.821680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353989, 33.535957, 18.360853>,  <42.295208, 33.024925, 17.854622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353989, 33.535957, 18.360853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964676, 33.458645, 18.311264>,  <41.731091, 33.412258, 18.281509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964676, 33.458645, 18.311264>,  <42.353989, 33.535957, 18.360853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964676, 33.458645, 18.311264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138307, 0.062460, 0.988418,
		-0.183300, 0.979153, -0.087523,
		-0.973279, -0.193282, -0.123975,
		41.672691, 33.400661, 18.274071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122894, 33.813782, 18.947065>,  <42.353989, 33.535957, 18.360853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122894, 33.813782, 18.947065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800640, 33.621193, 18.809006>,  <41.607288, 33.505638, 18.726170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800640, 33.621193, 18.809006>,  <42.122894, 33.813782, 18.947065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800640, 33.621193, 18.809006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386186, -0.014961, 0.922300,
		-0.449227, 0.876333, -0.173885,
		-0.805640, -0.481474, -0.345148,
		41.558949, 33.476749, 18.705462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591999, 34.237305, 19.113533>,  <42.122894, 33.813782, 18.947065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591999, 34.237305, 19.113533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460693, 33.860172, 19.090517>,  <41.381912, 33.633892, 19.076708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460693, 33.860172, 19.090517>,  <41.591999, 34.237305, 19.113533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460693, 33.860172, 19.090517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373893, 0.073751, 0.924535,
		-0.867438, 0.325004, -0.376728,
		-0.328262, -0.942833, -0.057542,
		41.362213, 33.577324, 19.073254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003193, 34.228619, 19.419954>,  <41.591999, 34.237305, 19.113533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003193, 34.228619, 19.419954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067123, 33.834381, 19.442062>,  <41.105480, 33.597839, 19.455328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067123, 33.834381, 19.442062>,  <41.003193, 34.228619, 19.419954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067123, 33.834381, 19.442062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516747, -0.035828, 0.855389,
		-0.841088, -0.165273, -0.515030,
		0.159825, -0.985597, 0.055270,
		41.115070, 33.538704, 19.458643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331963, 33.944546, 19.686075>,  <41.003193, 34.228619, 19.419954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331963, 33.944546, 19.686075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624359, 33.679195, 19.750057>,  <40.799797, 33.519985, 19.788446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624359, 33.679195, 19.750057>,  <40.331963, 33.944546, 19.686075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624359, 33.679195, 19.750057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432129, -0.268592, 0.860885,
		-0.528128, -0.698419, -0.483003,
		0.730989, -0.663377, 0.159957,
		40.843655, 33.480183, 19.798044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874554, 33.367538, 19.936497>,  <40.331963, 33.944546, 19.686075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874554, 33.367538, 19.936497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259190, 33.332405, 20.040525>,  <40.489971, 33.311325, 20.102942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259190, 33.332405, 20.040525>,  <39.874554, 33.367538, 19.936497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259190, 33.332405, 20.040525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273820, -0.240237, 0.931294,
		-0.019317, -0.966733, -0.255058,
		0.961587, -0.087830, 0.260070,
		40.547665, 33.306057, 20.118546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891075, 32.714474, 20.272621>,  <39.874554, 33.367538, 19.936497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891075, 32.714474, 20.272621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182987, 32.962971, 20.386797>,  <40.358135, 33.112068, 20.455303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182987, 32.962971, 20.386797>,  <39.891075, 32.714474, 20.272621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182987, 32.962971, 20.386797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231365, -0.168459, 0.958171,
		0.643339, -0.765299, 0.020794,
		0.729784, 0.621240, 0.285439,
		40.401924, 33.149342, 20.472429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191387, 32.342003, 20.834925>,  <39.891075, 32.714474, 20.272621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191387, 32.342003, 20.834925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310646, 32.720379, 20.885986>,  <40.382202, 32.947407, 20.916624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310646, 32.720379, 20.885986>,  <40.191387, 32.342003, 20.834925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310646, 32.720379, 20.885986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501634, 0.041502, 0.864084,
		0.812077, -0.321663, 0.486892,
		0.298150, 0.945944, 0.127654,
		40.400093, 33.004162, 20.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293453, 32.478554, 21.490616>,  <40.191387, 32.342003, 20.834925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293453, 32.478554, 21.490616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271179, 32.854431, 21.355629>,  <40.257816, 33.079956, 21.274637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271179, 32.854431, 21.355629>,  <40.293453, 32.478554, 21.490616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271179, 32.854431, 21.355629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379480, 0.292710, 0.877676,
		0.923523, 0.176932, 0.340295,
		-0.055681, 0.939689, -0.337467,
		40.254475, 33.136337, 21.254389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480171, 32.944344, 22.065800>,  <40.293453, 32.478554, 21.490616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480171, 32.944344, 22.065800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232121, 33.144691, 21.824280>,  <40.083290, 33.264900, 21.679367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232121, 33.144691, 21.824280>,  <40.480171, 32.944344, 22.065800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232121, 33.144691, 21.824280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463385, 0.387189, 0.797094,
		0.633026, 0.774089, -0.008010,
		-0.620123, 0.500869, -0.603802,
		40.046085, 33.294952, 21.643139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410042, 33.611500, 22.359478>,  <40.480171, 32.944344, 22.065800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410042, 33.611500, 22.359478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099167, 33.584381, 22.109238>,  <39.912640, 33.568111, 21.959093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099167, 33.584381, 22.109238>,  <40.410042, 33.611500, 22.359478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099167, 33.584381, 22.109238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578750, 0.467288, 0.668349,
		0.247027, 0.881502, -0.402407,
		-0.777191, -0.067793, -0.625602,
		39.866009, 33.564045, 21.921556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078358, 34.274166, 22.352661>,  <40.410042, 33.611500, 22.359478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078358, 34.274166, 22.352661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807137, 34.000252, 22.245850>,  <39.644402, 33.835903, 22.181763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807137, 34.000252, 22.245850>,  <40.078358, 34.274166, 22.352661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807137, 34.000252, 22.245850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698848, 0.488090, 0.522857,
		-0.227713, 0.541138, -0.809516,
		-0.678055, -0.684790, -0.267029,
		39.603722, 33.794815, 22.165741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531666, 34.729366, 22.147358>,  <40.078358, 34.274166, 22.352661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531666, 34.729366, 22.147358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.309906, 34.398582, 22.184839>,  <39.176849, 34.200111, 22.207327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.309906, 34.398582, 22.184839>,  <39.531666, 34.729366, 22.147358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309906, 34.398582, 22.184839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560067, 0.453994, 0.692975,
		-0.615602, 0.331707, -0.714846,
		-0.554400, -0.826958, 0.093702,
		39.143585, 34.150494, 22.212950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717228, 34.837704, 22.103649>,  <39.531666, 34.729366, 22.147358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717228, 34.837704, 22.103649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796886, 34.500408, 22.303366>,  <38.844681, 34.298031, 22.423195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796886, 34.500408, 22.303366>,  <38.717228, 34.837704, 22.103649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796886, 34.500408, 22.303366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509575, 0.346091, 0.787753,
		-0.837062, -0.411305, -0.360769,
		0.199148, -0.843237, 0.499290,
		38.856632, 34.247437, 22.453154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191322, 34.777653, 22.564209>,  <38.717228, 34.837704, 22.103649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191322, 34.777653, 22.564209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452084, 34.527119, 22.735191>,  <38.608540, 34.376797, 22.837782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452084, 34.527119, 22.735191>,  <38.191322, 34.777653, 22.564209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452084, 34.527119, 22.735191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417632, 0.173954, 0.891809,
		-0.632933, -0.759894, -0.148177,
		0.651905, -0.626339, 0.427457,
		38.647655, 34.339218, 22.863428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819462, 34.267586, 22.988810>,  <38.191322, 34.777653, 22.564209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819462, 34.267586, 22.988810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187866, 34.283421, 23.143818>,  <38.408909, 34.292923, 23.236822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187866, 34.283421, 23.143818>,  <37.819462, 34.267586, 22.988810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187866, 34.283421, 23.143818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389181, 0.050996, 0.919749,
		0.016648, -0.997914, 0.062374,
		0.921011, 0.039587, 0.387520,
		38.464169, 34.295296, 23.260075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.302715, 33.276928, 26.753817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659653, 33.117344, 26.838242>,  <34.873817, 33.021595, 26.888897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659653, 33.117344, 26.838242>,  <34.302715, 33.276928, 26.753817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659653, 33.117344, 26.838242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142324, 0.195043, 0.970413,
		-0.428324, -0.895984, 0.117264,
		0.892347, -0.398962, 0.211062,
		34.927357, 32.997654, 26.901560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184818, 32.677288, 27.163641>,  <34.302715, 33.276928, 26.753817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184818, 32.677288, 27.163641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.547134, 32.836010, 27.223099>,  <34.764523, 32.931244, 27.258774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.547134, 32.836010, 27.223099>,  <34.184818, 32.677288, 27.163641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547134, 32.836010, 27.223099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220009, 0.140602, 0.965312,
		0.362145, -0.907069, 0.214656,
		0.905785, 0.396809, 0.148645,
		34.818871, 32.955051, 27.267693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400383, 32.312206, 27.730793>,  <34.184818, 32.677288, 27.163641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400383, 32.312206, 27.730793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.641087, 32.631638, 27.735701>,  <34.785511, 32.823296, 27.738646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.641087, 32.631638, 27.735701>,  <34.400383, 32.312206, 27.730793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641087, 32.631638, 27.735701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267558, 0.187096, 0.945203,
		0.752526, -0.572070, 0.326254,
		0.601762, 0.798581, 0.012267,
		34.821617, 32.871212, 27.739380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854237, 32.125347, 28.326105>,  <34.400383, 32.312206, 27.730793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854237, 32.125347, 28.326105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.883228, 32.519520, 28.264555>,  <34.900623, 32.756023, 28.227625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.883228, 32.519520, 28.264555>,  <34.854237, 32.125347, 28.326105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883228, 32.519520, 28.264555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092788, 0.160272, 0.982702,
		0.993044, -0.056947, 0.103052,
		0.072478, 0.985429, -0.153873,
		34.904972, 32.815147, 28.218393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475842, 32.436855, 28.767748>,  <34.854237, 32.125347, 28.326105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475842, 32.436855, 28.767748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.221657, 32.733295, 28.681074>,  <35.069145, 32.911160, 28.629070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.221657, 32.733295, 28.681074>,  <35.475842, 32.436855, 28.767748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221657, 32.733295, 28.681074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007231, 0.274905, 0.961444,
		0.772098, 0.612529, -0.169332,
		-0.635462, 0.741105, -0.216683,
		35.031017, 32.955627, 28.616070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714478, 32.992714, 29.214146>,  <35.475842, 32.436855, 28.767748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714478, 32.992714, 29.214146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.348473, 33.120224, 29.115238>,  <35.128872, 33.196732, 29.055893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.348473, 33.120224, 29.115238>,  <35.714478, 32.992714, 29.214146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348473, 33.120224, 29.115238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024580, 0.567724, 0.822852,
		0.402685, 0.758994, -0.511637,
		-0.915008, 0.318774, -0.247270,
		35.073971, 33.215855, 29.041058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646381, 33.740356, 29.385748>,  <35.714478, 32.992714, 29.214146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646381, 33.740356, 29.385748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.266842, 33.635822, 29.314873>,  <35.039120, 33.573101, 29.272346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.266842, 33.635822, 29.314873>,  <35.646381, 33.740356, 29.385748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266842, 33.635822, 29.314873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287798, 0.485036, 0.825780,
		-0.129862, 0.834532, -0.535437,
		-0.948846, -0.261335, -0.177189,
		34.982189, 33.557423, 29.261717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095131, 34.401772, 29.471188>,  <35.646381, 33.740356, 29.385748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095131, 34.401772, 29.471188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.906887, 34.059803, 29.558491>,  <34.793941, 33.854622, 29.610872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.906887, 34.059803, 29.558491>,  <35.095131, 34.401772, 29.471188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906887, 34.059803, 29.558491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331461, 0.400543, 0.854224,
		-0.817716, 0.329662, -0.471872,
		-0.470610, -0.854920, 0.218260,
		34.765705, 33.803326, 29.623968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557552, 34.704449, 29.803547>,  <35.095131, 34.401772, 29.471188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557552, 34.704449, 29.803547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538322, 34.310501, 29.870146>,  <34.526787, 34.074131, 29.910105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538322, 34.310501, 29.870146>,  <34.557552, 34.704449, 29.803547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538322, 34.310501, 29.870146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235587, 0.173168, 0.956301,
		-0.970664, 0.006747, -0.240347,
		-0.048073, -0.984869, 0.166498,
		34.523899, 34.015041, 29.920095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900833, 34.582439, 30.136379>,  <34.557552, 34.704449, 29.803547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900833, 34.582439, 30.136379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154785, 34.291710, 30.241192>,  <34.307156, 34.117271, 30.304079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154785, 34.291710, 30.241192>,  <33.900833, 34.582439, 30.136379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154785, 34.291710, 30.241192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255612, 0.122457, 0.958993,
		-0.729102, -0.675824, -0.108038,
		0.634880, -0.726820, 0.262032,
		34.345249, 34.073666, 30.319801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581409, 34.212585, 30.706234>,  <33.900833, 34.582439, 30.136379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581409, 34.212585, 30.706234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955212, 34.076954, 30.749550>,  <34.179493, 33.995575, 30.775539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955212, 34.076954, 30.749550>,  <33.581409, 34.212585, 30.706234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955212, 34.076954, 30.749550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026103, 0.238122, 0.970884,
		-0.354997, -0.910121, 0.213674,
		0.934503, -0.339083, 0.108289,
		34.235561, 33.975227, 30.782036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650513, 33.810020, 31.339436>,  <33.581409, 34.212585, 30.706234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650513, 33.810020, 31.339436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032330, 33.910999, 31.276033>,  <34.261417, 33.971588, 31.237993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032330, 33.910999, 31.276033>,  <33.650513, 33.810020, 31.339436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032330, 33.910999, 31.276033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110700, 0.193494, 0.974836,
		0.276766, -0.948066, 0.156751,
		0.954540, 0.252449, -0.158504,
		34.318691, 33.986732, 31.228483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001808, 33.566006, 31.922977>,  <33.650513, 33.810020, 31.339436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001808, 33.566006, 31.922977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.225571, 33.865089, 31.779873>,  <34.359829, 34.044540, 31.694010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.225571, 33.865089, 31.779873>,  <34.001808, 33.566006, 31.922977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225571, 33.865089, 31.779873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115557, 0.357049, 0.926910,
		0.820800, -0.559861, 0.113331,
		0.559406, 0.747711, -0.357761,
		34.393391, 34.089401, 31.672544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805244, 33.646442, 32.311573>,  <34.001808, 33.566006, 31.922977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805244, 33.646442, 32.311573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661301, 34.003159, 32.201870>,  <34.574936, 34.217186, 32.136047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661301, 34.003159, 32.201870>,  <34.805244, 33.646442, 32.311573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661301, 34.003159, 32.201870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045266, 0.310287, 0.949564,
		0.931907, 0.329296, -0.152028,
		-0.359860, 0.891788, -0.274253,
		34.553341, 34.270695, 32.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421780, 33.531609, 32.790115>,  <34.805244, 33.646442, 32.311573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421780, 33.531609, 32.790115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.673042, 33.334759, 33.031193>,  <35.823799, 33.216648, 33.175838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.673042, 33.334759, 33.031193>,  <35.421780, 33.531609, 32.790115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673042, 33.334759, 33.031193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706831, 0.037087, -0.706409,
		0.325290, 0.869734, 0.371145,
		0.628153, -0.492125, 0.602692,
		35.861488, 33.187122, 33.212002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080055, 33.719765, 32.591602>,  <35.421780, 33.531609, 32.790115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080055, 33.719765, 32.591602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095055, 33.355904, 32.757072>,  <36.104053, 33.137589, 32.856354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095055, 33.355904, 32.757072>,  <36.080055, 33.719765, 32.591602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095055, 33.355904, 32.757072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619218, -0.303765, -0.724083,
		0.784323, 0.283309, 0.551881,
		0.037497, -0.909650, 0.413680,
		36.106304, 33.083008, 32.881176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726646, 33.520161, 32.350239>,  <36.080055, 33.719765, 32.591602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726646, 33.520161, 32.350239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565144, 33.167812, 32.449066>,  <36.468243, 32.956402, 32.508362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565144, 33.167812, 32.449066>,  <36.726646, 33.520161, 32.350239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565144, 33.167812, 32.449066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605307, -0.459710, -0.649823,
		0.685991, -0.112820, 0.718811,
		-0.403757, -0.880874, 0.247066,
		36.444016, 32.903549, 32.523186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270115, 33.021446, 32.385693>,  <36.726646, 33.520161, 32.350239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270115, 33.021446, 32.385693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 32.808727, 32.325974>,  <36.736607, 32.681095, 32.290142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 32.808727, 32.325974>,  <37.270115, 33.021446, 32.385693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936672, 32.808727, 32.325974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510875, -0.639556, -0.574435,
		0.209998, -0.555126, 0.804821,
		-0.833611, -0.531793, -0.149294,
		36.686588, 32.649189, 32.281185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517056, 32.286308, 32.472530>,  <37.270115, 33.021446, 32.385693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517056, 32.286308, 32.472530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175522, 32.250008, 32.267502>,  <36.970604, 32.228226, 32.144485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175522, 32.250008, 32.267502>,  <37.517056, 32.286308, 32.472530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175522, 32.250008, 32.267502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478537, -0.524386, -0.704287,
		-0.204871, -0.846630, 0.491167,
		-0.853832, -0.090754, -0.512576,
		36.919373, 32.222782, 32.113728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482555, 31.593969, 32.217510>,  <37.517056, 32.286308, 32.472530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482555, 31.593969, 32.217510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230907, 31.780607, 31.968836>,  <37.079918, 31.892590, 31.819632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230907, 31.780607, 31.968836>,  <37.482555, 31.593969, 32.217510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230907, 31.780607, 31.968836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416488, -0.472954, -0.776435,
		-0.656312, -0.747397, 0.103213,
		-0.629120, 0.466597, -0.621687,
		37.042171, 31.920586, 31.782330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235527, 31.037924, 31.751120>,  <37.482555, 31.593969, 32.217510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235527, 31.037924, 31.751120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.124054, 31.370821, 31.559408>,  <37.057171, 31.570559, 31.444382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.124054, 31.370821, 31.559408>,  <37.235527, 31.037924, 31.751120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124054, 31.370821, 31.559408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300660, -0.398360, -0.866552,
		-0.912108, -0.385592, -0.139206,
		-0.278681, 0.832243, -0.479279,
		37.040451, 31.620493, 31.415625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805267, 30.741196, 31.135347>,  <37.235527, 31.037924, 31.751120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805267, 30.741196, 31.135347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957802, 31.106462, 31.077784>,  <37.049324, 31.325623, 31.043245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957802, 31.106462, 31.077784>,  <36.805267, 30.741196, 31.135347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957802, 31.106462, 31.077784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059043, -0.179413, -0.982000,
		-0.922548, 0.365976, -0.122333,
		0.381337, 0.913166, -0.143909,
		37.072205, 31.380413, 31.034611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507992, 30.921202, 30.512011>,  <36.805267, 30.741196, 31.135347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507992, 30.921202, 30.512011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.801331, 31.189642, 30.555511>,  <36.977333, 31.350706, 30.581612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.801331, 31.189642, 30.555511>,  <36.507992, 30.921202, 30.512011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801331, 31.189642, 30.555511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246592, -0.113501, -0.962450,
		-0.633556, 0.732628, -0.248723,
		0.733348, 0.671099, 0.108750,
		37.021336, 31.390972, 30.588137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448410, 31.305721, 29.847336>,  <36.507992, 30.921202, 30.512011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448410, 31.305721, 29.847336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814137, 31.376513, 29.993050>,  <37.033573, 31.418987, 30.080479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814137, 31.376513, 29.993050>,  <36.448410, 31.305721, 29.847336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814137, 31.376513, 29.993050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320956, 0.231943, -0.918253,
		-0.247006, 0.956494, 0.155267,
		0.914317, 0.176980, 0.364284,
		37.088432, 31.429607, 30.102335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704136, 31.949871, 29.480448>,  <36.448410, 31.305721, 29.847336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704136, 31.949871, 29.480448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021816, 31.742472, 29.607199>,  <37.212425, 31.618032, 29.683249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021816, 31.742472, 29.607199>,  <36.704136, 31.949871, 29.480448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021816, 31.742472, 29.607199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383991, 0.024067, -0.923023,
		0.470959, 0.854740, 0.218212,
		0.794197, -0.518498, 0.316878,
		37.260075, 31.586922, 29.702263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217220, 32.385925, 29.227142>,  <36.704136, 31.949871, 29.480448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217220, 32.385925, 29.227142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.398144, 32.038059, 29.306229>,  <37.506699, 31.829338, 29.353680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.398144, 32.038059, 29.306229>,  <37.217220, 32.385925, 29.227142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398144, 32.038059, 29.306229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506801, 0.068212, -0.859360,
		0.733873, 0.488899, 0.471602,
		0.452309, -0.869669, 0.197716,
		37.533836, 31.777159, 29.365543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964272, 32.502815, 29.127068>,  <37.217220, 32.385925, 29.227142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964272, 32.502815, 29.127068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869026, 32.116394, 29.086983>,  <37.811878, 31.884541, 29.062931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869026, 32.116394, 29.086983>,  <37.964272, 32.502815, 29.127068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869026, 32.116394, 29.086983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371283, 0.004805, -0.928507,
		0.897469, -0.258297, 0.357536,
		-0.238113, -0.966054, -0.100214,
		37.797592, 31.826578, 29.056919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593754, 32.101452, 28.859440>,  <37.964272, 32.502815, 29.127068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593754, 32.101452, 28.859440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255665, 31.921835, 28.743538>,  <38.052811, 31.814064, 28.673998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255665, 31.921835, 28.743538>,  <38.593754, 32.101452, 28.859440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255665, 31.921835, 28.743538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332532, -0.017476, -0.942930,
		0.418353, -0.893339, 0.164093,
		-0.845224, -0.449044, -0.289753,
		38.002098, 31.787121, 28.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870171, 31.532019, 29.333900>,  <38.593754, 32.101452, 28.859440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870171, 31.532019, 29.333900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261292, 31.543530, 29.416912>,  <39.495964, 31.550436, 29.466719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261292, 31.543530, 29.416912>,  <38.870171, 31.532019, 29.333900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261292, 31.543530, 29.416912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206725, 0.293655, 0.933291,
		-0.034084, -0.955478, 0.293086,
		0.977805, 0.028778, 0.207530,
		39.554634, 31.552162, 29.479172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938992, 31.313435, 30.047148>,  <38.870171, 31.532019, 29.333900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938992, 31.313435, 30.047148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280529, 31.507689, 29.972195>,  <39.485451, 31.624241, 29.927223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280529, 31.507689, 29.972195>,  <38.938992, 31.313435, 30.047148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280529, 31.507689, 29.972195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130520, 0.548225, 0.826084,
		0.503899, -0.680890, 0.531483,
		0.853844, 0.485632, -0.187380,
		39.536682, 31.653378, 29.915981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261524, 31.387905, 30.677134>,  <38.938992, 31.313435, 30.047148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261524, 31.387905, 30.677134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421555, 31.675417, 30.449699>,  <39.517574, 31.847925, 30.313238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421555, 31.675417, 30.449699>,  <39.261524, 31.387905, 30.677134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421555, 31.675417, 30.449699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265393, 0.684683, 0.678805,
		0.877214, -0.120675, 0.464686,
		0.400078, 0.718781, -0.568587,
		39.541576, 31.891052, 30.279123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730648, 31.691088, 31.140074>,  <39.261524, 31.387905, 30.677134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730648, 31.691088, 31.140074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646709, 31.948452, 30.845596>,  <39.596348, 32.102871, 30.668909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646709, 31.948452, 30.845596>,  <39.730648, 31.691088, 31.140074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646709, 31.948452, 30.845596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189094, 0.712038, 0.676199,
		0.959274, 0.281110, -0.027754,
		-0.209848, 0.643413, -0.736196,
		39.583755, 32.141476, 30.624737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145996, 32.309074, 31.370031>,  <39.730648, 31.691088, 31.140074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145996, 32.309074, 31.370031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872757, 32.424679, 31.101746>,  <39.708813, 32.494041, 30.940775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872757, 32.424679, 31.101746>,  <40.145996, 32.309074, 31.370031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872757, 32.424679, 31.101746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185127, 0.819854, 0.541819,
		0.706478, 0.494280, -0.506534,
		-0.683094, 0.289010, -0.670713,
		39.667828, 32.511383, 30.900532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317188, 33.036522, 31.241026>,  <40.145996, 32.309074, 31.370031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317188, 33.036522, 31.241026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 32.980865, 31.168386>,  <39.694160, 32.947472, 31.124804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 32.980865, 31.168386>,  <40.317188, 33.036522, 31.241026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927795, 32.980865, 31.168386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225901, 0.710101, 0.666877,
		0.036160, 0.690214, -0.722701,
		-0.973479, -0.139145, -0.181598,
		39.635754, 32.939121, 31.113907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031101, 33.759304, 31.213524>,  <40.317188, 33.036522, 31.241026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031101, 33.759304, 31.213524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696388, 33.541000, 31.231121>,  <39.495560, 33.410019, 31.241678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696388, 33.541000, 31.231121>,  <40.031101, 33.759304, 31.213524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696388, 33.541000, 31.231121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376645, 0.632073, 0.677216,
		-0.397406, 0.550115, -0.734468,
		-0.836784, -0.545764, 0.043991,
		39.445354, 33.377270, 31.244318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489368, 34.163181, 31.082739>,  <40.031101, 33.759304, 31.213524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489368, 34.163181, 31.082739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315704, 33.858734, 31.275488>,  <39.211506, 33.676067, 31.391138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315704, 33.858734, 31.275488>,  <39.489368, 34.163181, 31.082739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315704, 33.858734, 31.275488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365025, 0.637676, 0.678326,
		-0.823566, 0.118606, -0.554681,
		-0.434161, -0.761119, 0.481874,
		39.185455, 33.630398, 31.420050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801147, 34.358028, 31.201433>,  <39.489368, 34.163181, 31.082739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801147, 34.358028, 31.201433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910072, 34.082500, 31.470169>,  <38.975426, 33.917183, 31.631411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910072, 34.082500, 31.470169>,  <38.801147, 34.358028, 31.201433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910072, 34.082500, 31.470169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457087, 0.521810, 0.720268,
		-0.846710, -0.503227, -0.172756,
		0.272313, -0.688823, 0.671841,
		38.991768, 33.875854, 31.671721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234119, 34.137878, 31.503607>,  <38.801147, 34.358028, 31.201433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234119, 34.137878, 31.503607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502808, 34.045826, 31.785271>,  <38.664021, 33.990597, 31.954269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502808, 34.045826, 31.785271>,  <38.234119, 34.137878, 31.503607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502808, 34.045826, 31.785271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373795, 0.715365, 0.590365,
		-0.639589, -0.659768, 0.394502,
		0.671717, -0.230128, 0.704157,
		38.704323, 33.976788, 31.996517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924126, 34.296440, 32.120815>,  <38.234119, 34.137878, 31.503607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924126, 34.296440, 32.120815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298035, 34.253166, 32.256165>,  <38.522381, 34.227200, 32.337372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298035, 34.253166, 32.256165>,  <37.924126, 34.296440, 32.120815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298035, 34.253166, 32.256165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138373, 0.766385, 0.627302,
		-0.327190, -0.633206, 0.701425,
		0.934773, -0.108189, 0.338372,
		38.578468, 34.220711, 32.357677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058964, 34.098812, 32.905540>,  <37.924126, 34.296440, 32.120815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058964, 34.098812, 32.905540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331181, 34.338291, 32.736580>,  <38.494511, 34.481979, 32.635204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331181, 34.338291, 32.736580>,  <38.058964, 34.098812, 32.905540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331181, 34.338291, 32.736580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225759, 0.719784, 0.656463,
		0.697054, -0.351396, 0.625009,
		0.680550, 0.598691, -0.422398,
		38.535343, 34.517899, 32.609859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.906055, 29.721617, 26.433790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136681, 30.041424, 26.501127>,  <41.275055, 30.233309, 26.541529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136681, 30.041424, 26.501127>,  <40.906055, 29.721617, 26.433790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136681, 30.041424, 26.501127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364784, 0.067531, 0.928640,
		0.731097, -0.596832, 0.330588,
		0.576567, 0.799519, 0.168343,
		41.309650, 30.281281, 26.551630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247868, 29.619387, 27.023914>,  <40.906055, 29.721617, 26.433790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247868, 29.619387, 27.023914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285042, 30.017319, 27.007528>,  <41.307346, 30.256079, 26.997696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285042, 30.017319, 27.007528>,  <41.247868, 29.619387, 27.023914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285042, 30.017319, 27.007528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467779, 0.079943, 0.880223,
		0.878946, -0.062638, 0.472789,
		0.092931, 0.994829, -0.040965,
		41.312920, 30.315767, 26.995239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498211, 29.764267, 27.675423>,  <41.247868, 29.619387, 27.023914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498211, 29.764267, 27.675423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352318, 30.103050, 27.520695>,  <41.264782, 30.306320, 27.427858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352318, 30.103050, 27.520695>,  <41.498211, 29.764267, 27.675423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352318, 30.103050, 27.520695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441254, 0.208599, 0.872801,
		0.819917, 0.489024, 0.297642,
		-0.364733, 0.846960, -0.386818,
		41.242897, 30.357138, 27.404650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456146, 30.201138, 28.226595>,  <41.498211, 29.764267, 27.675423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456146, 30.201138, 28.226595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225388, 30.396221, 27.964500>,  <41.086933, 30.513271, 27.807243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225388, 30.396221, 27.964500>,  <41.456146, 30.201138, 28.226595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225388, 30.396221, 27.964500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450121, 0.479572, 0.753261,
		0.681605, 0.729486, -0.057134,
		-0.576893, 0.487710, -0.655235,
		41.052319, 30.542534, 27.767929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521038, 30.930494, 28.368156>,  <41.456146, 30.201138, 28.226595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521038, 30.930494, 28.368156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173698, 30.836842, 28.193274>,  <40.965294, 30.780649, 28.088343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173698, 30.836842, 28.193274>,  <41.521038, 30.930494, 28.368156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173698, 30.836842, 28.193274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493564, 0.494376, 0.715532,
		0.048617, 0.837122, -0.544851,
		-0.868349, -0.234132, -0.437209,
		40.913193, 30.766602, 28.062111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173332, 31.567669, 28.293720>,  <41.521038, 30.930494, 28.368156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173332, 31.567669, 28.293720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887371, 31.289328, 28.266281>,  <40.715794, 31.122324, 28.249819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887371, 31.289328, 28.266281>,  <41.173332, 31.567669, 28.293720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887371, 31.289328, 28.266281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584469, 0.540840, 0.604887,
		-0.383812, 0.472527, -0.793351,
		-0.714901, -0.695852, -0.068596,
		40.672901, 31.080572, 28.245703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541889, 31.974642, 28.105047>,  <41.173332, 31.567669, 28.293720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541889, 31.974642, 28.105047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424461, 31.628006, 28.266460>,  <40.354004, 31.420025, 28.363308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424461, 31.628006, 28.266460>,  <40.541889, 31.974642, 28.105047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424461, 31.628006, 28.266460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597034, 0.495893, 0.630588,
		-0.746569, -0.055798, -0.662964,
		-0.293574, -0.866590, 0.403531,
		40.336388, 31.368029, 28.387520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777702, 31.943569, 28.149380>,  <40.541889, 31.974642, 28.105047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777702, 31.943569, 28.149380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871857, 31.657066, 28.412155>,  <39.928349, 31.485165, 28.569820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871857, 31.657066, 28.412155>,  <39.777702, 31.943569, 28.149380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871857, 31.657066, 28.412155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572109, 0.444300, 0.689412,
		-0.785673, -0.538122, -0.305193,
		0.235390, -0.716256, 0.656939,
		39.942474, 31.442190, 28.609238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172195, 31.715164, 28.562267>,  <39.777702, 31.943569, 28.149380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172195, 31.715164, 28.562267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473907, 31.602650, 28.799564>,  <39.654934, 31.535141, 28.941942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473907, 31.602650, 28.799564>,  <39.172195, 31.715164, 28.562267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473907, 31.602650, 28.799564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444814, 0.445660, 0.776870,
		-0.482910, -0.849861, 0.211032,
		0.754280, -0.281288, 0.593244,
		39.700191, 31.518263, 28.977537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786171, 31.064508, 28.407568>,  <39.172195, 31.715164, 28.562267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786171, 31.064508, 28.407568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428616, 31.219679, 28.317698>,  <38.214081, 31.312780, 28.263775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428616, 31.219679, 28.317698>,  <38.786171, 31.064508, 28.407568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428616, 31.219679, 28.317698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262777, 0.047372, -0.963693,
		-0.363197, -0.920473, -0.144283,
		-0.893888, 0.387925, -0.224674,
		38.160450, 31.336056, 28.250296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491566, 30.613708, 27.996151>,  <38.786171, 31.064508, 28.407568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491566, 30.613708, 27.996151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249371, 30.920013, 27.909439>,  <38.104053, 31.103796, 27.857412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249371, 30.920013, 27.909439>,  <38.491566, 30.613708, 27.996151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249371, 30.920013, 27.909439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202675, -0.115043, -0.972465,
		-0.769616, -0.632750, -0.085544,
		-0.605486, 0.765762, -0.216782,
		38.067726, 31.149742, 27.844404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077785, 30.399698, 27.456442>,  <38.491566, 30.613708, 27.996151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077785, 30.399698, 27.456442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081863, 30.799370, 27.440777>,  <38.084312, 31.039173, 27.431377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081863, 30.799370, 27.440777>,  <38.077785, 30.399698, 27.456442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081863, 30.799370, 27.440777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104595, -0.040015, -0.993710,
		-0.994463, 0.006037, -0.104917,
		0.010197, 0.999181, -0.039162,
		38.084923, 31.099125, 27.429028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569351, 30.541956, 27.018515>,  <38.077785, 30.399698, 27.456442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569351, 30.541956, 27.018515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792034, 30.874239, 27.018881>,  <37.925644, 31.073608, 27.019100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792034, 30.874239, 27.018881>,  <37.569351, 30.541956, 27.018515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792034, 30.874239, 27.018881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017344, 0.012727, -0.999769,
		-0.830525, 0.556567, 0.021493,
		0.556711, 0.830706, 0.000917,
		37.959049, 31.123451, 27.019156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327301, 30.969776, 26.527891>,  <37.569351, 30.541956, 27.018515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327301, 30.969776, 26.527891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708771, 31.078989, 26.578432>,  <37.937653, 31.144518, 26.608757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708771, 31.078989, 26.578432>,  <37.327301, 30.969776, 26.527891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708771, 31.078989, 26.578432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127123, 0.014948, -0.991774,
		-0.272677, 0.961888, -0.020454,
		0.953670, 0.273034, 0.126354,
		37.994873, 31.160900, 26.616339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488453, 31.507126, 26.059790>,  <37.327301, 30.969776, 26.527891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488453, 31.507126, 26.059790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856274, 31.379404, 26.151417>,  <38.076965, 31.302771, 26.206394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856274, 31.379404, 26.151417>,  <37.488453, 31.507126, 26.059790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856274, 31.379404, 26.151417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287092, 0.147810, -0.946431,
		0.268340, 0.936054, 0.227588,
		0.919550, -0.319303, 0.229070,
		38.132137, 31.283613, 26.220139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047195, 31.962042, 25.774193>,  <37.488453, 31.507126, 26.059790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047195, 31.962042, 25.774193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245743, 31.624592, 25.856085>,  <38.364872, 31.422121, 25.905220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245743, 31.624592, 25.856085>,  <38.047195, 31.962042, 25.774193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245743, 31.624592, 25.856085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469595, 0.062580, -0.880662,
		0.730136, 0.533273, 0.427225,
		0.496369, -0.843625, 0.204730,
		38.394653, 31.371504, 25.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793575, 32.019981, 25.715349>,  <38.047195, 31.962042, 25.774193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793575, 32.019981, 25.715349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749088, 31.622547, 25.723574>,  <38.722397, 31.384087, 25.728508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749088, 31.622547, 25.723574>,  <38.793575, 32.019981, 25.715349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749088, 31.622547, 25.723574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532321, -0.077035, -0.843030,
		0.839205, -0.082817, 0.537473,
		-0.111221, -0.993583, 0.020563,
		38.715721, 31.324472, 25.729742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480526, 31.734634, 25.477762>,  <38.793575, 32.019981, 25.715349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480526, 31.734634, 25.477762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241043, 31.422787, 25.404285>,  <39.097355, 31.235678, 25.360199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241043, 31.422787, 25.404285>,  <39.480526, 31.734634, 25.477762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241043, 31.422787, 25.404285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457076, -0.144219, -0.877658,
		0.657746, -0.609422, 0.442690,
		-0.598709, -0.779619, -0.183693,
		39.061432, 31.188902, 25.349178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830227, 31.247578, 25.049042>,  <39.480526, 31.734634, 25.477762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830227, 31.247578, 25.049042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467636, 31.082420, 25.013676>,  <39.250080, 30.983326, 24.992456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467636, 31.082420, 25.013676>,  <39.830227, 31.247578, 25.049042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467636, 31.082420, 25.013676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233754, -0.316312, -0.919405,
		0.351650, -0.854088, 0.383245,
		-0.906478, -0.412894, -0.088415,
		39.195694, 30.958553, 24.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018578, 30.639332, 24.793987>,  <39.830227, 31.247578, 25.049042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018578, 30.639332, 24.793987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630131, 30.689657, 24.712889>,  <39.397064, 30.719852, 24.664230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630131, 30.689657, 24.712889>,  <40.018578, 30.639332, 24.793987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630131, 30.689657, 24.712889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183926, -0.146614, -0.971944,
		-0.152048, -0.981155, 0.119231,
		-0.971109, 0.125853, -0.202752,
		39.338795, 30.727402, 24.652065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849602, 30.026201, 24.268196>,  <40.018578, 30.639332, 24.793987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849602, 30.026201, 24.268196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583324, 30.322823, 24.234859>,  <39.423557, 30.500795, 24.214857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583324, 30.322823, 24.234859>,  <39.849602, 30.026201, 24.268196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583324, 30.322823, 24.234859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114151, -0.009173, -0.993421,
		-0.737439, -0.670832, -0.078543,
		-0.665698, 0.741553, -0.083340,
		39.383614, 30.545288, 24.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393757, 29.785608, 23.819771>,  <39.849602, 30.026201, 24.268196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393757, 29.785608, 23.819771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345963, 30.182709, 23.814550>,  <39.317287, 30.420969, 23.811419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345963, 30.182709, 23.814550>,  <39.393757, 29.785608, 23.819771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345963, 30.182709, 23.814550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170925, 0.007621, -0.985255,
		-0.978013, -0.119950, -0.170596,
		-0.119482, 0.992751, -0.013049,
		39.310120, 30.480534, 23.810637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877602, 29.859430, 23.292305>,  <39.393757, 29.785608, 23.819771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877602, 29.859430, 23.292305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057751, 30.209030, 23.365282>,  <39.165840, 30.418791, 23.409067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057751, 30.209030, 23.365282>,  <38.877602, 29.859430, 23.292305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057751, 30.209030, 23.365282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228567, 0.084665, -0.969840,
		-0.863086, 0.478493, -0.161636,
		0.450377, 0.874000, 0.182440,
		39.192863, 30.471230, 23.420013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.811176, 35.798183, 22.763903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867386, 35.439960, 22.932774>,  <41.901112, 35.225029, 23.034096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867386, 35.439960, 22.932774>,  <41.811176, 35.798183, 22.763903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867386, 35.439960, 22.932774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367326, 0.348819, 0.862204,
		-0.919416, -0.276235, -0.279945,
		0.140521, -0.895555, 0.422179,
		41.909542, 35.171295, 23.059427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160362, 35.578285, 23.080873>,  <41.811176, 35.798183, 22.763903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160362, 35.578285, 23.080873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434589, 35.349648, 23.261219>,  <41.599125, 35.212467, 23.369427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434589, 35.349648, 23.261219>,  <41.160362, 35.578285, 23.080873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434589, 35.349648, 23.261219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436530, 0.172861, 0.882927,
		-0.582609, -0.802125, -0.131007,
		0.685572, -0.571590, 0.450862,
		41.640263, 35.178169, 23.396477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840446, 35.275581, 23.626509>,  <41.160362, 35.578285, 23.080873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840446, 35.275581, 23.626509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.214195, 35.173260, 23.725714>,  <41.438446, 35.111866, 23.785236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.214195, 35.173260, 23.725714>,  <40.840446, 35.275581, 23.626509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214195, 35.173260, 23.725714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244459, 0.046135, 0.968562,
		-0.259203, -0.965628, -0.019426,
		0.934373, -0.255803, 0.248015,
		41.494507, 35.096519, 23.800117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774231, 34.772465, 24.030874>,  <40.840446, 35.275581, 23.626509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774231, 34.772465, 24.030874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112843, 34.962204, 24.127529>,  <41.316010, 35.076046, 24.185522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112843, 34.962204, 24.127529>,  <40.774231, 34.772465, 24.030874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112843, 34.962204, 24.127529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364094, 0.184753, 0.912854,
		0.388369, -0.860732, 0.329105,
		0.846525, 0.474350, 0.241635,
		41.366798, 35.104507, 24.200020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004734, 34.619198, 24.651205>,  <40.774231, 34.772465, 24.030874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004734, 34.619198, 24.651205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.230545, 34.949162, 24.639730>,  <41.366032, 35.147141, 24.632845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.230545, 34.949162, 24.639730>,  <41.004734, 34.619198, 24.651205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230545, 34.949162, 24.639730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153471, 0.139052, 0.978321,
		0.811019, -0.547889, 0.205100,
		0.564531, 0.824913, -0.028689,
		41.399906, 35.196636, 24.631124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355415, 34.670704, 25.256594>,  <41.004734, 34.619198, 24.651205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355415, 34.670704, 25.256594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.351669, 35.038002, 25.098234>,  <41.349422, 35.258381, 25.003218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.351669, 35.038002, 25.098234>,  <41.355415, 34.670704, 25.256594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351669, 35.038002, 25.098234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236721, 0.382626, 0.893063,
		0.971533, 0.102082, 0.213784,
		-0.009366, 0.918247, -0.395898,
		41.348858, 35.313477, 24.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620876, 35.003399, 25.829544>,  <41.355415, 34.670704, 25.256594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620876, 35.003399, 25.829544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.465137, 35.288372, 25.596012>,  <41.371696, 35.459354, 25.455893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.465137, 35.288372, 25.596012>,  <41.620876, 35.003399, 25.829544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465137, 35.288372, 25.596012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243577, 0.531646, 0.811186,
		0.888303, 0.458037, -0.033461,
		-0.389342, 0.712429, -0.583830,
		41.348335, 35.502102, 25.420862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939484, 35.678783, 26.057737>,  <41.620876, 35.003399, 25.829544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939484, 35.678783, 26.057737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.607521, 35.766975, 25.852741>,  <41.408344, 35.819889, 25.729744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.607521, 35.766975, 25.852741>,  <41.939484, 35.678783, 26.057737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607521, 35.766975, 25.852741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341299, 0.526018, 0.778987,
		0.441330, 0.821397, -0.361295,
		-0.829906, 0.220481, -0.512489,
		41.358551, 35.833118, 25.698994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805355, 36.326912, 26.224409>,  <41.939484, 35.678783, 26.057737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805355, 36.326912, 26.224409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455544, 36.219879, 26.062622>,  <41.245655, 36.155659, 25.965549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455544, 36.219879, 26.062622>,  <41.805355, 36.326912, 26.224409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455544, 36.219879, 26.062622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483054, 0.406644, 0.775435,
		-0.043019, 0.873522, -0.484880,
		-0.874533, -0.267581, -0.404465,
		41.193184, 36.139606, 25.941282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419598, 36.953915, 26.134621>,  <41.805355, 36.326912, 26.224409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419598, 36.953915, 26.134621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163399, 36.648052, 26.163094>,  <41.009682, 36.464535, 26.180178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163399, 36.648052, 26.163094>,  <41.419598, 36.953915, 26.134621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163399, 36.648052, 26.163094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581067, 0.543138, 0.606104,
		-0.502124, 0.346843, -0.792194,
		-0.640494, -0.764657, 0.071184,
		40.971252, 36.418655, 26.184448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837585, 37.221684, 26.039583>,  <41.419598, 36.953915, 26.134621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837585, 37.221684, 26.039583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710056, 36.881607, 26.207169>,  <40.633537, 36.677563, 26.307720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710056, 36.881607, 26.207169>,  <40.837585, 37.221684, 26.039583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710056, 36.881607, 26.207169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601942, 0.523067, 0.603379,
		-0.732133, -0.059821, -0.678530,
		-0.318822, -0.850190, 0.418963,
		40.614410, 36.626549, 26.332857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097702, 37.185741, 26.119360>,  <40.837585, 37.221684, 26.039583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097702, 37.185741, 26.119360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227558, 36.939510, 26.406601>,  <40.305470, 36.791771, 26.578945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227558, 36.939510, 26.406601>,  <40.097702, 37.185741, 26.119360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227558, 36.939510, 26.406601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572964, 0.476077, 0.667130,
		-0.752544, -0.628024, -0.198152,
		0.324638, -0.615579, 0.718104,
		40.324951, 36.754837, 26.622032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478367, 37.047657, 26.576612>,  <40.097702, 37.185741, 26.119360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478367, 37.047657, 26.576612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778179, 36.910423, 26.803061>,  <39.958069, 36.828083, 26.938929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778179, 36.910423, 26.803061>,  <39.478367, 37.047657, 26.576612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778179, 36.910423, 26.803061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490910, 0.285627, 0.823058,
		-0.444081, -0.894823, 0.045662,
		0.749533, -0.343088, 0.566119,
		40.003040, 36.807495, 26.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196476, 36.609558, 27.132839>,  <39.478367, 37.047657, 26.576612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196476, 36.609558, 27.132839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.549911, 36.729378, 27.276808>,  <39.761971, 36.801270, 27.363190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.549911, 36.729378, 27.276808>,  <39.196476, 36.609558, 27.132839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549911, 36.729378, 27.276808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446160, 0.305160, 0.841320,
		0.142182, -0.903962, 0.403282,
		0.883587, 0.299549, 0.359923,
		39.814987, 36.819244, 27.384785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060177, 35.803764, 27.264402>,  <39.196476, 36.609558, 27.132839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060177, 35.803764, 27.264402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680099, 35.687664, 27.218994>,  <38.452053, 35.618004, 27.191750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680099, 35.687664, 27.218994>,  <39.060177, 35.803764, 27.264402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680099, 35.687664, 27.218994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237619, -0.439000, -0.866496,
		0.201664, -0.850314, 0.486104,
		-0.950194, -0.290249, -0.113521,
		38.395042, 35.600590, 27.184938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042450, 34.994892, 27.091921>,  <39.060177, 35.803764, 27.264402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042450, 34.994892, 27.091921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702908, 35.147484, 26.945541>,  <38.499184, 35.239040, 26.857714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702908, 35.147484, 26.945541>,  <39.042450, 34.994892, 27.091921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702908, 35.147484, 26.945541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195258, -0.417042, -0.887665,
		-0.491242, -0.824954, 0.279522,
		-0.848855, 0.381480, -0.365947,
		38.448250, 35.261929, 26.835756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614582, 34.423550, 26.807489>,  <39.042450, 34.994892, 27.091921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614582, 34.423550, 26.807489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488190, 34.758003, 26.628141>,  <38.412354, 34.958675, 26.520533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488190, 34.758003, 26.628141>,  <38.614582, 34.423550, 26.807489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488190, 34.758003, 26.628141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007659, -0.474816, -0.880051,
		-0.948733, -0.274649, 0.156439,
		-0.315985, 0.836132, -0.448371,
		38.393394, 35.008842, 26.493629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041237, 34.220821, 26.344913>,  <38.614582, 34.423550, 26.807489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041237, 34.220821, 26.344913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147793, 34.575050, 26.192705>,  <38.211727, 34.787586, 26.101379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147793, 34.575050, 26.192705>,  <38.041237, 34.220821, 26.344913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147793, 34.575050, 26.192705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076549, -0.412978, -0.907518,
		-0.960820, 0.212627, -0.177803,
		0.266392, 0.885572, -0.380522,
		38.227711, 34.840721, 26.078548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617062, 34.373329, 25.805229>,  <38.041237, 34.220821, 26.344913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617062, 34.373329, 25.805229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902107, 34.645855, 25.738316>,  <38.073135, 34.809372, 25.698168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902107, 34.645855, 25.738316>,  <37.617062, 34.373329, 25.805229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902107, 34.645855, 25.738316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010858, -0.227711, -0.973668,
		-0.701471, 0.695667, -0.154873,
		0.712615, 0.681318, -0.167286,
		38.115891, 34.850250, 25.688129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435177, 34.788795, 25.150782>,  <37.617062, 34.373329, 25.805229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435177, 34.788795, 25.150782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825085, 34.834225, 25.227638>,  <38.059029, 34.861481, 25.273752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825085, 34.834225, 25.227638>,  <37.435177, 34.788795, 25.150782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825085, 34.834225, 25.227638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218591, -0.311782, -0.924667,
		-0.045111, 0.943341, -0.328743,
		0.974773, 0.113573, 0.192142,
		38.117516, 34.868298, 25.285280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771496, 35.030407, 24.532986>,  <37.435177, 34.788795, 25.150782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771496, 35.030407, 24.532986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096119, 34.905735, 24.730667>,  <38.290894, 34.830933, 24.849276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096119, 34.905735, 24.730667>,  <37.771496, 35.030407, 24.532986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096119, 34.905735, 24.730667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423906, -0.268012, -0.865144,
		0.402101, 0.911606, -0.085383,
		0.811553, -0.311681, 0.494203,
		38.339584, 34.812229, 24.878927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326267, 35.313698, 24.209063>,  <37.771496, 35.030407, 24.532986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326267, 35.313698, 24.209063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473236, 34.989990, 24.392399>,  <38.561417, 34.795765, 24.502399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473236, 34.989990, 24.392399>,  <38.326267, 35.313698, 24.209063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473236, 34.989990, 24.392399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298532, -0.364110, -0.882214,
		0.880839, 0.460977, 0.107811,
		0.367426, -0.809273, 0.458339,
		38.583466, 34.747208, 24.529902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001259, 35.219669, 23.836008>,  <38.326267, 35.313698, 24.209063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001259, 35.219669, 23.836008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901028, 34.878822, 24.019796>,  <38.840889, 34.674316, 24.130070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901028, 34.878822, 24.019796>,  <39.001259, 35.219669, 23.836008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901028, 34.878822, 24.019796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229051, -0.513319, -0.827067,
		0.940610, -0.102003, 0.323803,
		-0.250577, -0.852114, 0.459469,
		38.825855, 34.623188, 24.157637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600361, 34.822388, 23.642786>,  <39.001259, 35.219669, 23.836008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600361, 34.822388, 23.642786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287739, 34.594131, 23.743616>,  <39.100166, 34.457176, 23.804113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287739, 34.594131, 23.743616>,  <39.600361, 34.822388, 23.642786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287739, 34.594131, 23.743616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068965, -0.480624, -0.874211,
		0.620016, -0.665857, 0.414987,
		-0.781552, -0.570644, 0.252074,
		39.053272, 34.422939, 23.819239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769466, 34.128677, 23.572952>,  <39.600361, 34.822388, 23.642786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769466, 34.128677, 23.572952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377144, 34.153362, 23.498964>,  <39.141750, 34.168175, 23.454573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377144, 34.153362, 23.498964>,  <39.769466, 34.128677, 23.572952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377144, 34.153362, 23.498964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126807, -0.518743, -0.845474,
		-0.148129, -0.852700, 0.500960,
		-0.980805, 0.061714, -0.184969,
		39.082901, 34.171875, 23.443474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444630, 33.484821, 23.395918>,  <39.769466, 34.128677, 23.572952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444630, 33.484821, 23.395918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212044, 33.755363, 23.215055>,  <39.072491, 33.917690, 23.106539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212044, 33.755363, 23.215055>,  <39.444630, 33.484821, 23.395918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212044, 33.755363, 23.215055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102714, -0.490290, -0.865486,
		-0.807063, -0.549691, 0.215614,
		-0.581463, 0.676355, -0.452156,
		39.037605, 33.958271, 23.079409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948826, 33.091236, 23.004997>,  <39.444630, 33.484821, 23.395918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948826, 33.091236, 23.004997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945301, 33.457912, 22.845198>,  <38.943188, 33.677917, 22.749317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945301, 33.457912, 22.845198>,  <38.948826, 33.091236, 23.004997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945301, 33.457912, 22.845198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219883, -0.387962, -0.895063,
		-0.975486, -0.095731, -0.198146,
		-0.008812, 0.916690, -0.399501,
		38.942657, 33.732918, 22.725348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602425, 32.996902, 22.401560>,  <38.948826, 33.091236, 23.004997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602425, 32.996902, 22.401560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828514, 33.326683, 22.390211>,  <38.964169, 33.524551, 22.383402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828514, 33.326683, 22.390211>,  <38.602425, 32.996902, 22.401560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828514, 33.326683, 22.390211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330320, -0.257705, -0.908007,
		-0.755919, 0.503854, -0.417993,
		0.565222, 0.824451, -0.028371,
		38.998081, 33.574017, 22.381701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916550, 33.065681, 22.216524>,  <38.602425, 32.996902, 22.401560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916550, 33.065681, 22.216524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616352, 32.830647, 22.095528>,  <37.436234, 32.689625, 22.022930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616352, 32.830647, 22.095528>,  <37.916550, 33.065681, 22.216524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616352, 32.830647, 22.095528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477811, 0.166221, 0.862593,
		-0.456566, 0.791906, -0.405503,
		-0.750496, -0.587584, -0.302490,
		37.391205, 32.654373, 22.004780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200771, 33.383774, 22.457050>,  <37.916550, 33.065681, 22.216524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200771, 33.383774, 22.457050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124191, 33.001923, 22.365812>,  <37.078243, 32.772812, 22.311069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124191, 33.001923, 22.365812>,  <37.200771, 33.383774, 22.457050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124191, 33.001923, 22.365812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625731, -0.060330, 0.777703,
		-0.756179, 0.291620, -0.585791,
		-0.191453, -0.954630, -0.228096,
		37.066757, 32.715534, 22.297384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450291, 33.307327, 22.583769>,  <37.200771, 33.383774, 22.457050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450291, 33.307327, 22.583769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630650, 32.950310, 22.586737>,  <36.738865, 32.736099, 22.588518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630650, 32.950310, 22.586737>,  <36.450291, 33.307327, 22.583769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630650, 32.950310, 22.586737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526295, -0.259139, 0.809852,
		-0.720908, -0.369063, -0.586587,
		0.450894, -0.892547, 0.007421,
		36.765919, 32.682545, 22.588963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943485, 32.891701, 22.789143>,  <36.450291, 33.307327, 22.583769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943485, 32.891701, 22.789143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273067, 32.671974, 22.844782>,  <36.470818, 32.540138, 22.878166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273067, 32.671974, 22.844782>,  <35.943485, 32.891701, 22.789143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273067, 32.671974, 22.844782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375652, -0.345733, 0.859857,
		-0.424245, -0.760736, -0.491221,
		0.823955, -0.549318, 0.139097,
		36.520256, 32.507179, 22.886511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642292, 32.232807, 23.033005>,  <35.943485, 32.891701, 22.789143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642292, 32.232807, 23.033005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032425, 32.243568, 23.120649>,  <36.266502, 32.250023, 23.173237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032425, 32.243568, 23.120649>,  <35.642292, 32.232807, 23.033005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032425, 32.243568, 23.120649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194492, -0.364851, 0.910525,
		0.104437, -0.930677, -0.350618,
		0.975329, 0.026901, 0.219113,
		36.325024, 32.251640, 23.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649181, 31.700222, 23.458122>,  <35.642292, 32.232807, 23.033005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649181, 31.700222, 23.458122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978909, 31.916962, 23.523724>,  <36.176746, 32.047005, 23.563086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978909, 31.916962, 23.523724>,  <35.649181, 31.700222, 23.458122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978909, 31.916962, 23.523724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200961, 0.009236, 0.979556,
		0.529258, -0.840424, 0.116504,
		0.824318, 0.541851, 0.164004,
		36.226204, 32.079517, 23.572926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940220, 31.318081, 23.973490>,  <35.649181, 31.700222, 23.458122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940220, 31.318081, 23.973490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.093563, 31.687010, 23.992914>,  <36.185570, 31.908367, 24.004568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.093563, 31.687010, 23.992914>,  <35.940220, 31.318081, 23.973490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093563, 31.687010, 23.992914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492707, 0.159755, 0.855405,
		0.781200, -0.351855, 0.515678,
		0.383361, 0.922321, 0.048560,
		36.208572, 31.963707, 24.007483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127483, 31.352793, 24.695824>,  <35.940220, 31.318081, 23.973490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127483, 31.352793, 24.695824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127491, 31.724669, 24.548485>,  <36.127495, 31.947794, 24.460081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127491, 31.724669, 24.548485>,  <36.127483, 31.352793, 24.695824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127491, 31.724669, 24.548485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356415, 0.344164, 0.868631,
		0.934328, 0.131268, 0.331361,
		0.000019, 0.929688, -0.368348,
		36.127499, 32.003574, 24.437981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574680, 31.692247, 25.031801>,  <36.127483, 31.352793, 24.695824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574680, 31.692247, 25.031801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295292, 31.936176, 24.881998>,  <36.127659, 32.082535, 24.792116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295292, 31.936176, 24.881998>,  <36.574680, 31.692247, 25.031801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295292, 31.936176, 24.881998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250551, 0.281813, 0.926178,
		0.670343, 0.740743, -0.044048,
		-0.698473, 0.609820, -0.374506,
		36.085751, 32.119122, 24.769646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669998, 32.289928, 25.421366>,  <36.574680, 31.692247, 25.031801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669998, 32.289928, 25.421366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298336, 32.343716, 25.283615>,  <36.075340, 32.375988, 25.200964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298336, 32.343716, 25.283615>,  <36.669998, 32.289928, 25.421366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298336, 32.343716, 25.283615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279647, 0.353652, 0.892596,
		0.241815, 0.925661, -0.290992,
		-0.929152, 0.134468, -0.344377,
		36.019592, 32.384056, 25.180302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498352, 32.882259, 25.636137>,  <36.669998, 32.289928, 25.421366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498352, 32.882259, 25.636137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151028, 32.703995, 25.549032>,  <35.942631, 32.597038, 25.496769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151028, 32.703995, 25.549032>,  <36.498352, 32.882259, 25.636137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151028, 32.703995, 25.549032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396927, 0.361032, 0.843863,
		-0.297454, 0.819174, -0.490383,
		-0.868314, -0.445657, -0.217762,
		35.890533, 32.570297, 25.483704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051662, 33.429455, 25.753216>,  <36.498352, 32.882259, 25.636137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051662, 33.429455, 25.753216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.857285, 33.081348, 25.785437>,  <35.740658, 32.872482, 25.804770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.857285, 33.081348, 25.785437>,  <36.051662, 33.429455, 25.753216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857285, 33.081348, 25.785437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506268, 0.355420, 0.785728,
		-0.712424, 0.341043, -0.613304,
		-0.485948, -0.870268, 0.080551,
		35.711502, 32.820267, 25.809603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454472, 33.677124, 26.116974>,  <36.051662, 33.429455, 25.753216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454472, 33.677124, 26.116974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446404, 33.280880, 26.171053>,  <35.441563, 33.043133, 26.203501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446404, 33.280880, 26.171053>,  <35.454472, 33.677124, 26.116974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446404, 33.280880, 26.171053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508716, 0.126580, 0.851578,
		-0.860698, -0.051597, -0.506494,
		-0.020173, -0.990614, 0.135195,
		35.440353, 32.983696, 26.211611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812721, 33.534275, 26.292471>,  <35.454472, 33.677124, 26.116974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812721, 33.534275, 26.292471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007687, 33.211636, 26.426229>,  <35.124664, 33.018051, 26.506485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007687, 33.211636, 26.426229>,  <34.812721, 33.534275, 26.292471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007687, 33.211636, 26.426229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513120, 0.045274, 0.857122,
		-0.706495, -0.589360, -0.391816,
		0.487415, -0.806601, 0.334398,
		35.153912, 32.969654, 26.526548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.627007, 30.301352, 22.792933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974747, 30.461637, 22.908630>,  <39.183392, 30.557808, 22.978048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974747, 30.461637, 22.908630>,  <38.627007, 30.301352, 22.792933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974747, 30.461637, 22.908630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346528, -0.076976, -0.934876,
		-0.352352, 0.912964, -0.205777,
		0.869348, 0.400713, 0.289245,
		39.235550, 30.581852, 22.995403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707375, 30.994360, 22.427092>,  <38.627007, 30.301352, 22.792933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707375, 30.994360, 22.427092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057606, 30.847984, 22.553234>,  <39.267746, 30.760159, 22.628920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057606, 30.847984, 22.553234>,  <38.707375, 30.994360, 22.427092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057606, 30.847984, 22.553234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361829, 0.064274, -0.930026,
		0.320065, 0.928416, 0.188685,
		0.875579, -0.365940, 0.315356,
		39.320278, 30.738203, 22.647840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072655, 31.437893, 22.239876>,  <38.707375, 30.994360, 22.427092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072655, 31.437893, 22.239876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310760, 31.119701, 22.285254>,  <39.453625, 30.928787, 22.312481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310760, 31.119701, 22.285254>,  <39.072655, 31.437893, 22.239876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310760, 31.119701, 22.285254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416876, 0.185039, -0.889929,
		0.686927, 0.577040, 0.441764,
		0.595269, -0.795478, 0.113446,
		39.489342, 30.881058, 22.319288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610085, 31.678232, 21.967793>,  <39.072655, 31.437893, 22.239876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610085, 31.678232, 21.967793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693821, 31.287132, 21.973225>,  <39.744064, 31.052473, 21.976484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693821, 31.287132, 21.973225>,  <39.610085, 31.678232, 21.967793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693821, 31.287132, 21.973225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316723, 0.054661, -0.946942,
		0.925128, 0.202539, 0.321118,
		0.209345, -0.977748, 0.013581,
		39.756626, 30.993809, 21.977299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059490, 31.620384, 21.431053>,  <39.610085, 31.678232, 21.967793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059490, 31.620384, 21.431053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.962894, 31.235785, 21.483517>,  <39.904938, 31.005026, 21.514996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.962894, 31.235785, 21.483517>,  <40.059490, 31.620384, 21.431053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962894, 31.235785, 21.483517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213180, -0.184423, -0.959449,
		0.946698, -0.203738, 0.249509,
		-0.241492, -0.961498, 0.131160,
		39.890446, 30.947334, 21.522865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521969, 31.389425, 21.147711>,  <40.059490, 31.620384, 21.431053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521969, 31.389425, 21.147711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255119, 31.091496, 21.153168>,  <40.095009, 30.912737, 21.156443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255119, 31.091496, 21.153168>,  <40.521969, 31.389425, 21.147711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255119, 31.091496, 21.153168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343452, -0.323768, -0.881598,
		0.661054, -0.583446, 0.471803,
		-0.667120, -0.744826, 0.013642,
		40.054985, 30.868048, 21.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869312, 30.737492, 21.091190>,  <40.521969, 31.389425, 21.147711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869312, 30.737492, 21.091190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.495811, 30.645977, 20.981085>,  <40.271713, 30.591068, 20.915022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.495811, 30.645977, 20.981085>,  <40.869312, 30.737492, 21.091190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495811, 30.645977, 20.981085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347770, -0.397979, -0.848922,
		0.084675, -0.888408, 0.451178,
		-0.933749, -0.228788, -0.275263,
		40.215687, 30.577341, 20.898506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898270, 29.994177, 20.904819>,  <40.869312, 30.737492, 21.091190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898270, 29.994177, 20.904819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.596905, 30.177368, 20.716084>,  <40.416088, 30.287283, 20.602842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.596905, 30.177368, 20.716084>,  <40.898270, 29.994177, 20.904819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596905, 30.177368, 20.716084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409695, -0.234316, -0.881616,
		-0.514321, -0.857526, -0.011096,
		-0.753408, 0.457979, -0.471837,
		40.370884, 30.314762, 20.574532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807308, 29.602535, 20.275604>,  <40.898270, 29.994177, 20.904819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807308, 29.602535, 20.275604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607952, 29.939814, 20.194981>,  <40.488338, 30.142179, 20.146606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607952, 29.939814, 20.194981>,  <40.807308, 29.602535, 20.275604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607952, 29.939814, 20.194981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323615, -0.034745, -0.945551,
		-0.804286, -0.536485, -0.255554,
		-0.498394, 0.843194, -0.201560,
		40.458435, 30.192772, 20.134512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701401, 29.613184, 19.551542>,  <40.807308, 29.602535, 20.275604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701401, 29.613184, 19.551542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646069, 30.001083, 19.631994>,  <40.612869, 30.233824, 19.680265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646069, 30.001083, 19.631994>,  <40.701401, 29.613184, 19.551542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646069, 30.001083, 19.631994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323982, 0.236217, -0.916099,
		-0.935896, -0.061558, -0.346856,
		-0.138326, 0.969748, 0.201131,
		40.604572, 30.292007, 19.692333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344704, 29.881102, 18.995533>,  <40.701401, 29.613184, 19.551542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344704, 29.881102, 18.995533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513058, 30.205145, 19.158789>,  <40.614071, 30.399570, 19.256742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513058, 30.205145, 19.158789>,  <40.344704, 29.881102, 18.995533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513058, 30.205145, 19.158789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363221, 0.261782, -0.894171,
		-0.831218, 0.524591, -0.184068,
		0.420888, 0.810108, 0.408140,
		40.639324, 30.448177, 19.281231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351391, 30.519011, 18.470432>,  <40.344704, 29.881102, 18.995533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351391, 30.519011, 18.470432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619999, 30.584988, 18.759390>,  <40.781162, 30.624575, 18.932764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619999, 30.584988, 18.759390>,  <40.351391, 30.519011, 18.470432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619999, 30.584988, 18.759390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644496, 0.351043, -0.679260,
		-0.365631, 0.921717, 0.129426,
		0.671520, 0.164944, 0.722395,
		40.821453, 30.634470, 18.976109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639278, 31.196810, 18.292759>,  <40.351391, 30.519011, 18.470432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639278, 31.196810, 18.292759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895824, 30.994638, 18.523651>,  <41.049751, 30.873335, 18.662188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895824, 30.994638, 18.523651>,  <40.639278, 31.196810, 18.292759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895824, 30.994638, 18.523651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762306, 0.334616, -0.554005,
		0.086858, 0.795346, 0.599900,
		0.641362, -0.505427, 0.577233,
		41.088234, 30.843010, 18.696821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451565, 30.913988, 17.701464>,  <40.639278, 31.196810, 18.292759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451565, 30.913988, 17.701464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.698547, 30.624201, 17.824030>,  <40.846737, 30.450329, 17.897570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.698547, 30.624201, 17.824030>,  <40.451565, 30.913988, 17.701464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698547, 30.624201, 17.824030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640500, -0.236932, 0.730495,
		-0.456620, -0.647311, -0.610317,
		0.617461, -0.724467, 0.306415,
		40.883785, 30.406860, 17.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155453, 31.316168, 17.154816>,  <40.451565, 30.913988, 17.701464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155453, 31.316168, 17.154816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463730, 31.208214, 16.923923>,  <40.648697, 31.143440, 16.785389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463730, 31.208214, 16.923923>,  <40.155453, 31.316168, 17.154816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463730, 31.208214, 16.923923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473739, -0.363149, 0.802305,
		-0.426152, -0.891787, -0.152020,
		0.770692, -0.269886, -0.577231,
		40.694939, 31.127249, 16.750753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175758, 32.100521, 17.062500>,  <40.155453, 31.316168, 17.154816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175758, 32.100521, 17.062500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791130, 32.210213, 17.057205>,  <39.560352, 32.276028, 17.054029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791130, 32.210213, 17.057205>,  <40.175758, 32.100521, 17.062500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791130, 32.210213, 17.057205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039076, -0.088981, 0.995266,
		0.271752, 0.957539, 0.096278,
		-0.961574, 0.274228, -0.013236,
		39.502659, 32.292480, 17.053234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089512, 32.237354, 17.763750>,  <40.175758, 32.100521, 17.062500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089512, 32.237354, 17.763750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718159, 32.247723, 17.615463>,  <39.495346, 32.253944, 17.526491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718159, 32.247723, 17.615463>,  <40.089512, 32.237354, 17.763750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718159, 32.247723, 17.615463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369192, 0.049548, 0.928031,
		0.042421, 0.998435, -0.036431,
		-0.928384, 0.025918, -0.370716,
		39.439644, 32.255497, 17.504248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713734, 32.745907, 18.174706>,  <40.089512, 32.237354, 17.763750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713734, 32.745907, 18.174706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391354, 32.579578, 18.006168>,  <39.197926, 32.479782, 17.905046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391354, 32.579578, 18.006168>,  <39.713734, 32.745907, 18.174706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391354, 32.579578, 18.006168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534148, 0.203994, 0.820410,
		-0.255196, 0.886271, -0.386522,
		-0.805954, -0.415825, -0.421341,
		39.149567, 32.454830, 17.879766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164192, 33.265854, 18.204865>,  <39.713734, 32.745907, 18.174706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164192, 33.265854, 18.204865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976910, 32.912533, 18.195412>,  <38.864540, 32.700539, 18.189739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976910, 32.912533, 18.195412>,  <39.164192, 33.265854, 18.204865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976910, 32.912533, 18.195412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401559, 0.188876, 0.896145,
		-0.787103, 0.429072, -0.443132,
		-0.468208, -0.883302, -0.023633,
		38.836449, 32.647541, 18.188322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567600, 33.378536, 18.461336>,  <39.164192, 33.265854, 18.204865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567600, 33.378536, 18.461336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581699, 32.982918, 18.518675>,  <38.590160, 32.745548, 18.553078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581699, 32.982918, 18.518675>,  <38.567600, 33.378536, 18.461336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581699, 32.982918, 18.518675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431653, 0.114298, 0.894769,
		-0.901351, -0.093414, -0.422896,
		0.035247, -0.989045, 0.143345,
		38.592274, 32.686203, 18.561678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906944, 33.112926, 18.591438>,  <38.567600, 33.378536, 18.461336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906944, 33.112926, 18.591438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143539, 32.838314, 18.760580>,  <38.285496, 32.673546, 18.862066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143539, 32.838314, 18.760580>,  <37.906944, 33.112926, 18.591438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143539, 32.838314, 18.760580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674428, -0.133827, 0.726111,
		-0.441913, -0.714673, -0.542176,
		0.591490, -0.686537, 0.422856,
		38.320988, 32.632355, 18.887438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545330, 32.740829, 18.995365>,  <37.906944, 33.112926, 18.591438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545330, 32.740829, 18.995365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891209, 32.602837, 19.141396>,  <38.098736, 32.520039, 19.229013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891209, 32.602837, 19.141396>,  <37.545330, 32.740829, 18.995365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891209, 32.602837, 19.141396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450709, -0.212095, 0.867108,
		-0.221708, -0.914331, -0.338886,
		0.864700, -0.344984, 0.365074,
		38.150620, 32.499340, 19.250917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413879, 32.066257, 19.232185>,  <37.545330, 32.740829, 18.995365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413879, 32.066257, 19.232185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746967, 32.189751, 19.416040>,  <37.946819, 32.263847, 19.526354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746967, 32.189751, 19.416040>,  <37.413879, 32.066257, 19.232185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746967, 32.189751, 19.416040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393359, -0.254371, 0.883495,
		0.389685, -0.916503, -0.090374,
		0.832715, 0.308736, 0.459639,
		37.996780, 32.282372, 19.553932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551510, 31.525148, 19.655701>,  <37.413879, 32.066257, 19.232185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551510, 31.525148, 19.655701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768330, 31.826200, 19.805222>,  <37.898422, 32.006832, 19.894934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768330, 31.826200, 19.805222>,  <37.551510, 31.525148, 19.655701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768330, 31.826200, 19.805222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224255, -0.299136, 0.927484,
		0.809869, -0.586573, 0.006633,
		0.542053, 0.752629, 0.373803,
		37.930946, 32.051991, 19.917362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801105, 31.292768, 20.197464>,  <37.551510, 31.525148, 19.655701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801105, 31.292768, 20.197464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792633, 31.687050, 20.264330>,  <37.787552, 31.923618, 20.304449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792633, 31.687050, 20.264330>,  <37.801105, 31.292768, 20.197464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792633, 31.687050, 20.264330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168350, -0.168333, 0.971248,
		0.985500, -0.007575, 0.169507,
		-0.021177, 0.985701, 0.167167,
		37.786282, 31.982759, 20.314480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983177, 31.390783, 20.903439>,  <37.801105, 31.292768, 20.197464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983177, 31.390783, 20.903439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.860497, 31.762541, 20.821310>,  <37.786888, 31.985596, 20.772032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.860497, 31.762541, 20.821310>,  <37.983177, 31.390783, 20.903439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860497, 31.762541, 20.821310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176244, 0.156535, 0.971820,
		0.935345, 0.334248, 0.115791,
		-0.306704, 0.929395, -0.205323,
		37.768486, 32.041359, 20.759712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276512, 31.865221, 21.322048>,  <37.983177, 31.390783, 20.903439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276512, 31.865221, 21.322048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935982, 32.050877, 21.224216>,  <37.731663, 32.162270, 21.165518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935982, 32.050877, 21.224216>,  <38.276512, 31.865221, 21.322048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935982, 32.050877, 21.224216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171496, 0.194384, 0.965818,
		0.495815, 0.864171, -0.085886,
		-0.851327, 0.464137, -0.244580,
		37.680584, 32.190117, 21.150843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306236, 32.463173, 21.732128>,  <38.276512, 31.865221, 21.322048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306236, 32.463173, 21.732128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922127, 32.429104, 21.625828>,  <37.691662, 32.408665, 21.562048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922127, 32.429104, 21.625828>,  <38.306236, 32.463173, 21.732128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922127, 32.429104, 21.625828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276549, 0.162909, 0.947091,
		-0.037369, 0.982958, -0.179991,
		-0.960273, -0.085168, -0.265749,
		37.634045, 32.403553, 21.546103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603054, 33.124958, 21.669302>,  <38.306236, 32.463173, 21.732128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603054, 33.124958, 21.669302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920513, 33.301331, 21.836969>,  <39.110989, 33.407154, 21.937569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920513, 33.301331, 21.836969>,  <38.603054, 33.124958, 21.669302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920513, 33.301331, 21.836969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515286, -0.120913, -0.848446,
		-0.323425, 0.889358, -0.323169,
		0.793647, 0.440933, 0.419167,
		39.158607, 33.433609, 21.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881279, 33.491035, 21.072947>,  <38.603054, 33.124958, 21.669302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881279, 33.491035, 21.072947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.181652, 33.507156, 21.336607>,  <39.361877, 33.516830, 21.494802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.181652, 33.507156, 21.336607>,  <38.881279, 33.491035, 21.072947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181652, 33.507156, 21.336607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652439, -0.199610, -0.731081,
		0.102107, 0.979046, -0.176189,
		0.750931, 0.040304, 0.659150,
		39.406933, 33.519249, 21.534351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314434, 33.963482, 20.790318>,  <38.881279, 33.491035, 21.072947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314434, 33.963482, 20.790318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.531498, 33.742241, 21.043173>,  <39.661736, 33.609497, 21.194887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.531498, 33.742241, 21.043173>,  <39.314434, 33.963482, 20.790318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531498, 33.742241, 21.043173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618838, -0.245605, -0.746135,
		0.567947, 0.796087, 0.209003,
		0.542656, -0.553104, 0.632140,
		39.694294, 33.576309, 21.232815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975163, 34.343620, 20.970907>,  <39.314434, 33.963482, 20.790318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975163, 34.343620, 20.970907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035793, 33.953419, 21.034670>,  <40.072170, 33.719296, 21.072927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035793, 33.953419, 21.034670>,  <39.975163, 34.343620, 20.970907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035793, 33.953419, 21.034670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699598, -0.008049, -0.714491,
		0.698274, 0.219821, 0.681243,
		0.151577, -0.975507, 0.159407,
		40.081264, 33.660767, 21.082493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651485, 34.320869, 21.046682>,  <39.975163, 34.343620, 20.970907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651485, 34.320869, 21.046682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571651, 33.934418, 20.981243>,  <40.523750, 33.702549, 20.941978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571651, 33.934418, 20.981243>,  <40.651485, 34.320869, 21.046682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571651, 33.934418, 20.981243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795484, -0.062267, -0.602767,
		0.572162, -0.250447, 0.780965,
		-0.199590, -0.966126, -0.163599,
		40.511776, 33.644581, 20.932163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335148, 33.851170, 21.057058>,  <40.651485, 34.320869, 21.046682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335148, 33.851170, 21.057058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053822, 33.651627, 20.854483>,  <40.885025, 33.531898, 20.732937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053822, 33.651627, 20.854483>,  <41.335148, 33.851170, 21.057058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053822, 33.651627, 20.854483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662457, -0.201522, -0.721485,
		0.257863, -0.842927, 0.472208,
		-0.703319, -0.498861, -0.506438,
		40.842827, 33.501968, 20.702551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699276, 33.318058, 20.690153>,  <41.335148, 33.851170, 21.057058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699276, 33.318058, 20.690153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346062, 33.319660, 20.502438>,  <41.134132, 33.320621, 20.389809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.346062, 33.319660, 20.502438>,  <41.699276, 33.318058, 20.690153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346062, 33.319660, 20.502438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455923, -0.229760, -0.859851,
		-0.111268, -0.973239, 0.201060,
		-0.883036, 0.004007, -0.469287,
		41.081150, 33.320862, 20.361652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250908, 32.853611, 20.953684>,  <41.699276, 33.318058, 20.690153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250908, 32.853611, 20.953684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536575, 33.132965, 20.934841>,  <42.707977, 33.300575, 20.923534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536575, 33.132965, 20.934841>,  <42.250908, 32.853611, 20.953684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536575, 33.132965, 20.934841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367903, 0.431772, 0.823541,
		0.595487, -0.570819, 0.565297,
		0.714172, 0.698383, -0.047108,
		42.750828, 33.342480, 20.920710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472118, 32.892384, 21.613935>,  <42.250908, 32.853611, 20.953684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472118, 32.892384, 21.613935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.568256, 33.242825, 21.446754>,  <42.625938, 33.453087, 21.346447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.568256, 33.242825, 21.446754>,  <42.472118, 32.892384, 21.613935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568256, 33.242825, 21.446754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241780, 0.471034, 0.848334,
		0.940094, -0.102841, 0.325034,
		0.240346, 0.876100, -0.417951,
		42.640362, 33.505653, 21.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819134, 33.163780, 22.086826>,  <42.472118, 32.892384, 21.613935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819134, 33.163780, 22.086826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.710152, 33.478905, 21.865875>,  <42.644764, 33.667980, 21.733305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.710152, 33.478905, 21.865875>,  <42.819134, 33.163780, 22.086826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710152, 33.478905, 21.865875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231621, 0.503512, 0.832363,
		0.933875, 0.354722, 0.045290,
		-0.272453, 0.787812, -0.552378,
		42.628414, 33.715248, 21.700161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061848, 33.761902, 22.349617>,  <42.819134, 33.163780, 22.086826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061848, 33.761902, 22.349617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.770584, 33.913509, 22.121189>,  <42.595825, 34.004475, 21.984133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.770584, 33.913509, 22.121189>,  <43.061848, 33.761902, 22.349617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770584, 33.913509, 22.121189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116910, 0.752295, 0.648371,
		0.675359, 0.538884, -0.503482,
		-0.728164, 0.379021, -0.571070,
		42.552135, 34.027214, 21.949867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185192, 34.402588, 22.193226>,  <43.061848, 33.761902, 22.349617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185192, 34.402588, 22.193226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.788223, 34.356087, 22.177269>,  <42.550041, 34.328186, 22.167694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.788223, 34.356087, 22.177269>,  <43.185192, 34.402588, 22.193226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788223, 34.356087, 22.177269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118787, 0.823898, 0.554150,
		-0.031553, 0.554687, -0.831460,
		-0.992418, -0.116252, -0.039894,
		42.490498, 34.321213, 22.165300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961342, 35.039879, 22.317778>,  <43.185192, 34.402588, 22.193226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961342, 35.039879, 22.317778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624771, 34.833153, 22.380909>,  <42.422829, 34.709118, 22.418787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624771, 34.833153, 22.380909>,  <42.961342, 35.039879, 22.317778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624771, 34.833153, 22.380909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275098, 0.661068, 0.698076,
		-0.465111, 0.543960, -0.698412,
		-0.841423, -0.516815, 0.157827,
		42.372345, 34.678108, 22.428257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517685, 35.532490, 22.573994>,  <42.961342, 35.039879, 22.317778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517685, 35.532490, 22.573994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345448, 35.187664, 22.680908>,  <42.242104, 34.980770, 22.745056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345448, 35.187664, 22.680908>,  <42.517685, 35.532490, 22.573994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345448, 35.187664, 22.680908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432529, 0.457020, 0.777207,
		-0.792154, 0.219051, -0.569656,
		-0.430592, -0.862061, 0.267284,
		42.216270, 34.929047, 22.761093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.628960, 29.890686, 20.199411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246964, 29.974373, 20.115288>,  <43.017765, 30.024586, 20.064814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246964, 29.974373, 20.115288>,  <43.628960, 29.890686, 20.199411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246964, 29.974373, 20.115288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030383, 0.636233, 0.770899,
		0.295089, 0.742588, -0.601237,
		-0.954987, 0.209216, -0.210307,
		42.960468, 30.037138, 20.052197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577110, 30.632740, 20.331049>,  <43.628960, 29.890686, 20.199411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577110, 30.632740, 20.331049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206440, 30.482468, 20.326479>,  <42.984035, 30.392305, 20.323736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206440, 30.482468, 20.326479>,  <43.577110, 30.632740, 20.331049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206440, 30.482468, 20.326479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170888, 0.394061, 0.903058,
		-0.334758, 0.838797, -0.429367,
		-0.926679, -0.375680, -0.011426,
		42.928436, 30.369764, 20.323051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086571, 31.165339, 20.495739>,  <43.577110, 30.632740, 20.331049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086571, 31.165339, 20.495739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.904739, 30.815861, 20.565035>,  <42.795639, 30.606174, 20.606613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.904739, 30.815861, 20.565035>,  <43.086571, 31.165339, 20.495739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904739, 30.815861, 20.565035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363462, 0.359523, 0.859441,
		-0.813174, 0.327718, -0.480987,
		-0.454580, -0.873696, 0.173242,
		42.768364, 30.553753, 20.617008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538712, 31.303175, 20.959249>,  <43.086571, 31.165339, 20.495739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538712, 31.303175, 20.959249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.557972, 30.908640, 21.022268>,  <42.569530, 30.671919, 21.060080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.557972, 30.908640, 21.022268>,  <42.538712, 31.303175, 20.959249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557972, 30.908640, 21.022268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357204, 0.130295, 0.924894,
		-0.932784, -0.100813, -0.346050,
		0.048153, -0.986337, 0.157548,
		42.572418, 30.612740, 21.069532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897221, 31.125982, 21.280802>,  <42.538712, 31.303175, 20.959249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897221, 31.125982, 21.280802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156845, 30.837837, 21.378614>,  <42.312622, 30.664951, 21.437302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156845, 30.837837, 21.378614>,  <41.897221, 31.125982, 21.280802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156845, 30.837837, 21.378614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383105, -0.031818, 0.923157,
		-0.657226, -0.692869, -0.296626,
		0.649064, -0.720361, 0.244530,
		42.351566, 30.621729, 21.451973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532658, 30.650486, 21.687723>,  <41.897221, 31.125982, 21.280802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532658, 30.650486, 21.687723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916996, 30.581650, 21.774582>,  <42.147598, 30.540348, 21.826696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916996, 30.581650, 21.774582>,  <41.532658, 30.650486, 21.687723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916996, 30.581650, 21.774582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249631, -0.197642, 0.947957,
		-0.120216, -0.965051, -0.232863,
		0.960850, -0.172089, 0.217147,
		42.205250, 30.530022, 21.839725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493481, 30.007141, 22.149023>,  <41.532658, 30.650486, 21.687723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493481, 30.007141, 22.149023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.845913, 30.180767, 22.224159>,  <42.057373, 30.284943, 22.269241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.845913, 30.180767, 22.224159>,  <41.493481, 30.007141, 22.149023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845913, 30.180767, 22.224159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085923, -0.243640, 0.966052,
		0.465096, -0.867309, -0.177370,
		0.881080, 0.434067, 0.187838,
		42.110237, 30.310987, 22.280510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789356, 29.549002, 22.579966>,  <41.493481, 30.007141, 22.149023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789356, 29.549002, 22.579966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.972931, 29.900673, 22.631222>,  <42.083076, 30.111675, 22.661976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.972931, 29.900673, 22.631222>,  <41.789356, 29.549002, 22.579966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972931, 29.900673, 22.631222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012689, -0.150697, 0.988499,
		0.888378, -0.452033, -0.080316,
		0.458938, 0.879179, 0.128140,
		42.110611, 30.164427, 22.669664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216774, 29.482336, 23.096582>,  <41.789356, 29.549002, 22.579966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216774, 29.482336, 23.096582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224388, 29.879797, 23.140938>,  <42.228958, 30.118273, 23.167551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224388, 29.879797, 23.140938>,  <42.216774, 29.482336, 23.096582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224388, 29.879797, 23.140938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078161, -0.112051, 0.990624,
		0.996759, -0.010192, -0.079798,
		0.019038, 0.993650, 0.110891,
		42.230099, 30.177893, 23.174206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709381, 29.643827, 23.643841>,  <42.216774, 29.482336, 23.096582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709381, 29.643827, 23.643841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.487411, 29.976013, 23.624306>,  <42.354229, 30.175325, 23.612585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.487411, 29.976013, 23.624306>,  <42.709381, 29.643827, 23.643841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487411, 29.976013, 23.624306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041394, 0.031070, 0.998660,
		0.830871, 0.556202, 0.017135,
		-0.554924, 0.830466, -0.048838,
		42.320934, 30.225153, 23.609653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052700, 30.173292, 24.015804>,  <42.709381, 29.643827, 23.643841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052700, 30.173292, 24.015804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670265, 30.288210, 23.992599>,  <42.440804, 30.357161, 23.978676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670265, 30.288210, 23.992599>,  <43.052700, 30.173292, 24.015804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670265, 30.288210, 23.992599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033754, 0.088687, 0.995487,
		0.291141, 0.953728, -0.075095,
		-0.956084, 0.287293, -0.058013,
		42.383438, 30.374397, 23.975195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085983, 30.818497, 24.393087>,  <43.052700, 30.173292, 24.015804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085983, 30.818497, 24.393087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.718651, 30.662674, 24.365036>,  <42.498253, 30.569181, 24.348206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.718651, 30.662674, 24.365036>,  <43.085983, 30.818497, 24.393087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718651, 30.662674, 24.365036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134035, 0.139353, 0.981130,
		-0.372432, 0.910400, -0.180186,
		-0.918329, -0.389555, -0.070126,
		42.443153, 30.545807, 24.343998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068119, 31.576542, 24.333759>,  <43.085983, 30.818497, 24.393087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068119, 31.576542, 24.333759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.440357, 31.720682, 24.308041>,  <43.663700, 31.807167, 24.292610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.440357, 31.720682, 24.308041>,  <43.068119, 31.576542, 24.333759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440357, 31.720682, 24.308041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186392, -0.617676, -0.764025,
		-0.315033, 0.699016, -0.641975,
		0.930598, 0.360352, -0.064297,
		43.719536, 31.828787, 24.288752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338886, 31.571697, 23.600422>,  <43.068119, 31.576542, 24.333759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338886, 31.571697, 23.600422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.703907, 31.635212, 23.751173>,  <43.922920, 31.673321, 23.841623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.703907, 31.635212, 23.751173>,  <43.338886, 31.571697, 23.600422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703907, 31.635212, 23.751173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408664, -0.389171, -0.825554,
		0.015580, 0.907377, -0.420030,
		0.912552, 0.158789, 0.376876,
		43.977673, 31.682848, 23.864235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786186, 31.876232, 23.035351>,  <43.338886, 31.571697, 23.600422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786186, 31.876232, 23.035351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.045925, 31.744717, 23.309647>,  <44.201771, 31.665808, 23.474224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.045925, 31.744717, 23.309647>,  <43.786186, 31.876232, 23.035351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045925, 31.744717, 23.309647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566755, -0.392026, -0.724641,
		0.507083, 0.859193, -0.068219,
		0.649350, -0.328789, 0.685742,
		44.240730, 31.646080, 23.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337627, 32.143570, 22.765493>,  <43.786186, 31.876232, 23.035351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337627, 32.143570, 22.765493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.463623, 31.835232, 22.986971>,  <44.539219, 31.650229, 23.119858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.463623, 31.835232, 22.986971>,  <44.337627, 32.143570, 22.765493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463623, 31.835232, 22.986971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525022, -0.344478, -0.778259,
		0.790654, 0.535844, 0.296205,
		0.314989, -0.770847, 0.553693,
		44.558121, 31.603977, 23.153078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131351, 32.091454, 22.763924>,  <44.337627, 32.143570, 22.765493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131351, 32.091454, 22.763924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.947746, 31.745441, 22.844948>,  <44.837582, 31.537834, 22.893562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.947746, 31.745441, 22.844948>,  <45.131351, 32.091454, 22.763924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947746, 31.745441, 22.844948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507143, -0.442322, -0.739701,
		0.729459, -0.236806, 0.641726,
		-0.459015, -0.865028, 0.202562,
		44.810043, 31.485933, 22.905716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685753, 31.576914, 22.736530>,  <45.131351, 32.091454, 22.763924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685753, 31.576914, 22.736530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.347271, 31.364250, 22.722260>,  <45.144180, 31.236652, 22.713697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.347271, 31.364250, 22.722260>,  <45.685753, 31.576914, 22.736530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347271, 31.364250, 22.722260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354808, -0.512234, -0.782130,
		0.397552, -0.674502, 0.622092,
		-0.846205, -0.531661, -0.035679,
		45.093410, 31.204752, 22.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941219, 30.962599, 22.647375>,  <45.685753, 31.576914, 22.736530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941219, 30.962599, 22.647375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.562138, 30.914169, 22.529257>,  <45.334690, 30.885111, 22.458385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.562138, 30.914169, 22.529257>,  <45.941219, 30.962599, 22.647375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562138, 30.914169, 22.529257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304839, -0.617391, -0.725191,
		-0.094509, -0.777283, 0.622011,
		-0.947703, -0.121076, -0.295295,
		45.277828, 30.877846, 22.440668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933872, 30.303589, 22.360949>,  <45.941219, 30.962599, 22.647375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933872, 30.303589, 22.360949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.592960, 30.457439, 22.219141>,  <45.388412, 30.549749, 22.134056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.592960, 30.457439, 22.219141>,  <45.933872, 30.303589, 22.360949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592960, 30.457439, 22.219141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140545, -0.484441, -0.863461,
		-0.503866, -0.785729, 0.358816,
		-0.852271, 0.384639, -0.354524,
		45.337276, 30.572826, 22.112785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572060, 29.799875, 22.064116>,  <45.933872, 30.303589, 22.360949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572060, 29.799875, 22.064116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.427761, 30.133038, 21.896244>,  <45.341183, 30.332935, 21.795521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.427761, 30.133038, 21.896244>,  <45.572060, 29.799875, 22.064116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427761, 30.133038, 21.896244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091817, -0.416078, -0.904682,
		-0.928134, -0.364893, 0.073623,
		-0.360745, 0.832906, -0.419679,
		45.319538, 30.382910, 21.770340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035515, 29.602465, 21.521233>,  <45.572060, 29.799875, 22.064116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035515, 29.602465, 21.521233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.163723, 29.971556, 21.435591>,  <45.240646, 30.193010, 21.384205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.163723, 29.971556, 21.435591>,  <45.035515, 29.602465, 21.521233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163723, 29.971556, 21.435591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051241, -0.208811, -0.976613,
		-0.945856, 0.323992, -0.019646,
		0.320517, 0.922728, -0.214107,
		45.259880, 30.248375, 21.371359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555412, 29.775061, 20.925941>,  <45.035515, 29.602465, 21.521233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555412, 29.775061, 20.925941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.882957, 30.004622, 20.921860>,  <45.079483, 30.142359, 20.919411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.882957, 30.004622, 20.921860>,  <44.555412, 29.775061, 20.925941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882957, 30.004622, 20.921860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180961, -0.274990, -0.944264,
		-0.544721, 0.771373, -0.329032,
		0.818860, 0.573902, -0.010205,
		45.128616, 30.176792, 20.918798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506832, 30.184740, 20.370554>,  <44.555412, 29.775061, 20.925941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506832, 30.184740, 20.370554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.904026, 30.167645, 20.414652>,  <45.142342, 30.157387, 20.441111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.904026, 30.167645, 20.414652>,  <44.506832, 30.184740, 20.370554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904026, 30.167645, 20.414652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097145, -0.236644, -0.966728,
		0.067404, 0.970656, -0.230832,
		0.992985, -0.042737, 0.110245,
		45.201923, 30.154823, 20.447725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739315, 30.544384, 19.726919>,  <44.506832, 30.184740, 20.370554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739315, 30.544384, 19.726919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.044933, 30.324310, 19.861696>,  <45.228306, 30.192266, 19.942562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.044933, 30.324310, 19.861696>,  <44.739315, 30.544384, 19.726919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044933, 30.324310, 19.861696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133590, -0.376027, -0.916928,
		0.631181, 0.745586, -0.213802,
		0.764045, -0.550186, 0.336944,
		45.274147, 30.159254, 19.962780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347176, 31.134590, 19.795687>,  <44.739315, 30.544384, 19.726919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347176, 31.134590, 19.795687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.301098, 31.316618, 19.442497>,  <44.273453, 31.425835, 19.230583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.301098, 31.316618, 19.442497>,  <44.347176, 31.134590, 19.795687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301098, 31.316618, 19.442497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141673, 0.872277, 0.468040,
		0.983189, 0.179008, -0.036007,
		-0.115191, 0.455071, -0.882973,
		44.266541, 31.453138, 19.177605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741470, 31.750937, 19.766579>,  <44.347176, 31.134590, 19.795687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741470, 31.750937, 19.766579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.458298, 31.820406, 19.492741>,  <44.288395, 31.862087, 19.328438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.458298, 31.820406, 19.492741>,  <44.741470, 31.750937, 19.766579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458298, 31.820406, 19.492741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121746, 0.924779, 0.360501,
		0.695710, 0.338557, -0.633536,
		-0.707931, 0.173674, -0.684596,
		44.245918, 31.872509, 19.287361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838238, 32.442581, 19.486929>,  <44.741470, 31.750937, 19.766579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838238, 32.442581, 19.486929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.448540, 32.370579, 19.432610>,  <44.214722, 32.327377, 19.400019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.448540, 32.370579, 19.432610>,  <44.838238, 32.442581, 19.486929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448540, 32.370579, 19.432610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223218, 0.855151, 0.467857,
		0.031910, 0.486120, -0.873309,
		-0.974246, -0.180009, -0.135799,
		44.156265, 32.316578, 19.391870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550400, 33.085339, 19.371563>,  <44.838238, 32.442581, 19.486929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550400, 33.085339, 19.371563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.231228, 32.858349, 19.452839>,  <44.039726, 32.722157, 19.501604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.231228, 32.858349, 19.452839>,  <44.550400, 33.085339, 19.371563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231228, 32.858349, 19.452839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358980, 0.718200, 0.596089,
		-0.484195, 0.402694, -0.776783,
		-0.797927, -0.567473, 0.203190,
		43.991848, 32.688107, 19.513796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105282, 33.629253, 19.502069>,  <44.550400, 33.085339, 19.371563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105282, 33.629253, 19.502069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.941238, 33.291958, 19.641075>,  <43.842812, 33.089581, 19.724478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.941238, 33.291958, 19.641075>,  <44.105282, 33.629253, 19.502069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941238, 33.291958, 19.641075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295451, 0.483314, 0.824085,
		-0.862856, 0.235290, -0.447346,
		-0.410108, -0.843235, 0.347514,
		43.818207, 33.038986, 19.745329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457504, 33.820293, 19.501560>,  <44.105282, 33.629253, 19.502069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457504, 33.820293, 19.501560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.477322, 33.494743, 19.733131>,  <43.489212, 33.299416, 19.872074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.477322, 33.494743, 19.733131>,  <43.457504, 33.820293, 19.501560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477322, 33.494743, 19.733131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679108, 0.397580, 0.617044,
		-0.732365, -0.423727, -0.533008,
		0.049545, -0.813871, 0.578929,
		43.492184, 33.250584, 19.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716930, 33.720020, 19.676683>,  <43.457504, 33.820293, 19.501560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716930, 33.720020, 19.676683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.945145, 33.484585, 19.905785>,  <43.082073, 33.343323, 20.043245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.945145, 33.484585, 19.905785>,  <42.716930, 33.720020, 19.676683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945145, 33.484585, 19.905785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525798, 0.273948, 0.805288,
		-0.630889, -0.760601, -0.153181,
		0.570540, -0.588590, 0.572754,
		43.116306, 33.308006, 20.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285809, 33.198326, 20.031584>,  <42.716930, 33.720020, 19.676683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285809, 33.198326, 20.031584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.608265, 33.292686, 20.248650>,  <42.801739, 33.349304, 20.378889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.608265, 33.292686, 20.248650>,  <42.285809, 33.198326, 20.031584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608265, 33.292686, 20.248650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572675, 0.080246, 0.815846,
		0.148915, -0.968458, 0.199785,
		0.806144, 0.235903, 0.542662,
		42.850109, 33.363457, 20.411448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765450, 32.659660, 20.165174>,  <42.285809, 33.198326, 20.031584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765450, 32.659660, 20.165174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465378, 32.887779, 20.031311>,  <41.285336, 33.024651, 19.950993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465378, 32.887779, 20.031311>,  <41.765450, 32.659660, 20.165174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465378, 32.887779, 20.031311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361758, -0.069683, -0.929664,
		-0.553506, -0.818476, -0.154035,
		-0.750175, 0.570299, -0.334660,
		41.240326, 33.058868, 19.930912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454041, 32.331226, 19.531607>,  <41.765450, 32.659660, 20.165174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454041, 32.331226, 19.531607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.329391, 32.710785, 19.511677>,  <41.254601, 32.938519, 19.499720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.329391, 32.710785, 19.511677>,  <41.454041, 32.331226, 19.531607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329391, 32.710785, 19.511677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207464, 0.016776, -0.978099,
		-0.927280, -0.315137, -0.202090,
		-0.311626, 0.948898, -0.049824,
		41.235905, 32.995453, 19.496729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061890, 32.326473, 18.912487>,  <41.454041, 32.331226, 19.531607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061890, 32.326473, 18.912487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121700, 32.718437, 18.965265>,  <41.157589, 32.953617, 18.996933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121700, 32.718437, 18.965265>,  <41.061890, 32.326473, 18.912487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121700, 32.718437, 18.965265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234106, 0.094566, -0.967601,
		-0.960643, 0.175576, -0.215263,
		0.149531, 0.979913, 0.131948,
		41.166561, 33.012413, 19.004850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716908, 32.590691, 18.349855>,  <41.061890, 32.326473, 18.912487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716908, 32.590691, 18.349855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966381, 32.880508, 18.467192>,  <41.116066, 33.054398, 18.537594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966381, 32.880508, 18.467192>,  <40.716908, 32.590691, 18.349855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966381, 32.880508, 18.467192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152407, 0.255354, -0.954760,
		-0.766671, 0.640180, 0.048836,
		0.623688, 0.724544, 0.293341,
		41.153488, 33.097870, 18.555195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371544, 33.210293, 18.104374>,  <40.716908, 32.590691, 18.349855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371544, 33.210293, 18.104374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765480, 33.266308, 18.145332>,  <41.001842, 33.299915, 18.169907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765480, 33.266308, 18.145332>,  <40.371544, 33.210293, 18.104374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765480, 33.266308, 18.145332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032269, 0.432071, -0.901262,
		-0.170454, 0.890900, 0.421001,
		0.984837, 0.140038, 0.102397,
		41.060932, 33.308319, 18.176052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487511, 33.887550, 17.846403>,  <40.371544, 33.210293, 18.104374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487511, 33.887550, 17.846403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838013, 33.695274, 17.833082>,  <41.048313, 33.579906, 17.825089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838013, 33.695274, 17.833082>,  <40.487511, 33.887550, 17.846403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838013, 33.695274, 17.833082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082654, 0.218044, -0.972432,
		0.474702, 0.849348, 0.230794,
		0.876257, -0.480692, -0.033304,
		41.100891, 33.551067, 17.823092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939587, 34.302593, 17.455618>,  <40.487511, 33.887550, 17.846403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939587, 34.302593, 17.455618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.125835, 33.949131, 17.436268>,  <41.237587, 33.737053, 17.424658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.125835, 33.949131, 17.436268>,  <40.939587, 34.302593, 17.455618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125835, 33.949131, 17.436268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006510, 0.051238, -0.998665,
		0.884958, 0.465319, 0.018105,
		0.465626, -0.883659, -0.048373,
		41.265522, 33.684032, 17.421757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575600, 34.396168, 16.994349>,  <40.939587, 34.302593, 17.455618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575600, 34.396168, 16.994349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.482861, 34.007122, 17.000971>,  <41.427216, 33.773697, 17.004944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.482861, 34.007122, 17.000971>,  <41.575600, 34.396168, 16.994349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482861, 34.007122, 17.000971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001514, -0.016658, -0.999860,
		0.972750, -0.231843, 0.002390,
		-0.231850, -0.972611, 0.016555,
		41.413307, 33.715340, 17.005938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047470, 33.987438, 16.628534>,  <41.575600, 34.396168, 16.994349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047470, 33.987438, 16.628534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689003, 33.810059, 16.622538>,  <41.473923, 33.703629, 16.618938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689003, 33.810059, 16.622538>,  <42.047470, 33.987438, 16.628534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689003, 33.810059, 16.622538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026492, 0.087207, -0.995838,
		0.442916, -0.892044, -0.089900,
		-0.896172, -0.443455, -0.014994,
		41.420151, 33.677021, 16.618040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.586384, 36.640999, 31.864895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531734, 36.272541, 31.719114>,  <36.498943, 36.051468, 31.631647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531734, 36.272541, 31.719114>,  <36.586384, 36.640999, 31.864895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531734, 36.272541, 31.719114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563790, 0.230202, -0.793188,
		0.814539, -0.313842, 0.487882,
		-0.136625, -0.921146, -0.364450,
		36.490746, 35.996197, 31.609779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144936, 36.468922, 31.476353>,  <36.586384, 36.640999, 31.864895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144936, 36.468922, 31.476353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900639, 36.181210, 31.343910>,  <36.754063, 36.008583, 31.264444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900639, 36.181210, 31.343910>,  <37.144936, 36.468922, 31.476353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900639, 36.181210, 31.343910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558252, -0.094577, -0.824264,
		0.561563, -0.688251, 0.459302,
		-0.610739, -0.719282, -0.331106,
		36.717415, 35.965424, 31.244577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549843, 35.945992, 31.293638>,  <37.144936, 36.468922, 31.476353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549843, 35.945992, 31.293638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219437, 35.888935, 31.075521>,  <37.021191, 35.854702, 30.944651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219437, 35.888935, 31.075521>,  <37.549843, 35.945992, 31.293638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219437, 35.888935, 31.075521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562986, -0.162148, -0.810404,
		0.027179, -0.976402, 0.214242,
		-0.826020, -0.142641, -0.545294,
		36.971630, 35.846142, 30.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762058, 35.434219, 30.885344>,  <37.549843, 35.945992, 31.293638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762058, 35.434219, 30.885344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435749, 35.591068, 30.715284>,  <37.239964, 35.685177, 30.613249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435749, 35.591068, 30.715284>,  <37.762058, 35.434219, 30.885344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435749, 35.591068, 30.715284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400866, -0.146541, -0.904341,
		-0.416917, -0.908164, -0.037646,
		-0.815773, 0.392126, -0.425148,
		37.191017, 35.708706, 30.587740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645943, 35.036869, 30.298969>,  <37.762058, 35.434219, 30.885344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645943, 35.036869, 30.298969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426529, 35.363884, 30.228823>,  <37.294880, 35.560093, 30.186735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426529, 35.363884, 30.228823>,  <37.645943, 35.036869, 30.298969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426529, 35.363884, 30.228823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307583, 0.002271, -0.951518,
		-0.777500, -0.575877, -0.252705,
		-0.548531, 0.817533, -0.175364,
		37.261971, 35.609142, 30.176214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216476, 34.817810, 29.667059>,  <37.645943, 35.036869, 30.298969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216476, 34.817810, 29.667059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236904, 35.215969, 29.699488>,  <37.249161, 35.454865, 29.718945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236904, 35.215969, 29.699488>,  <37.216476, 34.817810, 29.667059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236904, 35.215969, 29.699488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345381, 0.058564, -0.936633,
		-0.937072, 0.075835, -0.340801,
		0.051071, 0.995399, 0.081070,
		37.252224, 35.514587, 29.723808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872738, 35.058258, 29.072260>,  <37.216476, 34.817810, 29.667059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872738, 35.058258, 29.072260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088226, 35.371452, 29.196657>,  <37.217522, 35.559368, 29.271296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088226, 35.371452, 29.196657>,  <36.872738, 35.058258, 29.072260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088226, 35.371452, 29.196657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345473, 0.131363, -0.929189,
		-0.768391, 0.608015, -0.199731,
		0.538724, 0.782982, 0.310991,
		37.249844, 35.606346, 29.289955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643490, 35.527668, 28.704906>,  <36.872738, 35.058258, 29.072260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643490, 35.527668, 28.704906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009224, 35.644470, 28.817141>,  <37.228664, 35.714550, 28.884481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009224, 35.644470, 28.817141>,  <36.643490, 35.527668, 28.704906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009224, 35.644470, 28.817141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259501, 0.109434, -0.959522,
		-0.310891, 0.950135, 0.024283,
		0.914333, 0.292006, 0.280583,
		37.283524, 35.732071, 28.901316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772373, 36.088097, 28.261648>,  <36.643490, 35.527668, 28.704906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772373, 36.088097, 28.261648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136116, 35.980217, 28.388348>,  <37.354362, 35.915489, 28.464367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136116, 35.980217, 28.388348>,  <36.772373, 36.088097, 28.261648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136116, 35.980217, 28.388348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322229, -0.024950, -0.946333,
		0.263131, 0.962620, 0.064218,
		0.909357, -0.269703, 0.316749,
		37.408924, 35.899307, 28.483372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310520, 36.535706, 27.814690>,  <36.772373, 36.088097, 28.261648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310520, 36.535706, 27.814690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490395, 36.214466, 27.971056>,  <37.598320, 36.021721, 28.064875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490395, 36.214466, 27.971056>,  <37.310520, 36.535706, 27.814690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490395, 36.214466, 27.971056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595754, -0.056395, -0.801184,
		0.665475, 0.593172, 0.453089,
		0.449688, -0.803098, 0.390914,
		37.625301, 35.973537, 28.088331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009907, 36.665043, 27.684544>,  <37.310520, 36.535706, 27.814690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009907, 36.665043, 27.684544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980114, 36.271557, 27.749975>,  <37.962238, 36.035465, 27.789234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980114, 36.271557, 27.749975>,  <38.009907, 36.665043, 27.684544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980114, 36.271557, 27.749975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398225, -0.179726, -0.899509,
		0.914259, -0.001855, 0.405126,
		-0.074480, -0.983715, 0.163578,
		37.957771, 35.976444, 27.799049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647083, 36.335571, 27.595562>,  <38.009907, 36.665043, 27.684544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647083, 36.335571, 27.595562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373672, 36.046467, 27.554750>,  <38.209625, 35.873005, 27.530264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373672, 36.046467, 27.554750>,  <38.647083, 36.335571, 27.595562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373672, 36.046467, 27.554750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522274, -0.386622, -0.760101,
		0.509923, -0.572837, 0.641745,
		-0.683527, -0.722759, -0.102031,
		38.168613, 35.829639, 27.524141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274780, 36.325092, 27.809813>,  <38.647083, 36.335571, 27.595562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274780, 36.325092, 27.809813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.562984, 36.602161, 27.822893>,  <39.735909, 36.768402, 27.830742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.562984, 36.602161, 27.822893>,  <39.274780, 36.325092, 27.809813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562984, 36.602161, 27.822893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399014, 0.375566, 0.836504,
		0.567139, -0.615760, 0.546985,
		0.720514, 0.692668, 0.032699,
		39.779140, 36.809963, 27.832703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518143, 36.365135, 28.518110>,  <39.274780, 36.325092, 27.809813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518143, 36.365135, 28.518110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640965, 36.721687, 28.384747>,  <39.714657, 36.935619, 28.304728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640965, 36.721687, 28.384747>,  <39.518143, 36.365135, 28.518110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640965, 36.721687, 28.384747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294875, 0.422202, 0.857201,
		0.904857, -0.164895, 0.392484,
		0.307056, 0.891378, -0.333409,
		39.733082, 36.989101, 28.284723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877609, 36.652664, 29.068449>,  <39.518143, 36.365135, 28.518110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877609, 36.652664, 29.068449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782497, 36.966961, 28.840042>,  <39.725430, 37.155540, 28.702997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782497, 36.966961, 28.840042>,  <39.877609, 36.652664, 29.068449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782497, 36.966961, 28.840042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322262, 0.490763, 0.809506,
		0.916300, 0.376505, 0.136520,
		-0.237784, 0.785745, -0.571019,
		39.711163, 37.202686, 28.668736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183441, 37.287468, 29.343746>,  <39.877609, 36.652664, 29.068449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183441, 37.287468, 29.343746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888775, 37.423389, 29.109871>,  <39.711975, 37.504944, 28.969545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888775, 37.423389, 29.109871>,  <40.183441, 37.287468, 29.343746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888775, 37.423389, 29.109871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286825, 0.625975, 0.725180,
		0.612418, 0.701917, -0.363671,
		-0.736665, 0.339803, -0.584686,
		39.667774, 37.525330, 28.934465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213345, 38.012726, 29.545347>,  <40.183441, 37.287468, 29.343746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213345, 38.012726, 29.545347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858570, 37.936989, 29.376829>,  <39.645706, 37.891548, 29.275719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858570, 37.936989, 29.376829>,  <40.213345, 38.012726, 29.545347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858570, 37.936989, 29.376829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449744, 0.561787, 0.694353,
		0.105208, 0.805323, -0.583426,
		-0.886939, -0.189341, -0.421294,
		39.592487, 37.880188, 29.250441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863487, 38.678623, 29.487993>,  <40.213345, 38.012726, 29.545347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863487, 38.678623, 29.487993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583138, 38.393368, 29.482162>,  <39.414928, 38.222214, 29.478664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583138, 38.393368, 29.482162>,  <39.863487, 38.678623, 29.487993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583138, 38.393368, 29.482162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544717, 0.521932, 0.656408,
		-0.460503, 0.467997, -0.754265,
		-0.700872, -0.713139, -0.014575,
		39.372875, 38.179428, 29.477791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219101, 39.044922, 29.517958>,  <39.863487, 38.678623, 29.487993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219101, 39.044922, 29.517958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122993, 38.673550, 29.631296>,  <39.065327, 38.450726, 29.699299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122993, 38.673550, 29.631296>,  <39.219101, 39.044922, 29.517958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122993, 38.673550, 29.631296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470738, 0.366719, 0.802448,
		-0.848926, 0.059424, -0.525160,
		-0.240271, -0.928432, 0.283344,
		39.050911, 38.395020, 29.716299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479866, 39.008938, 29.711197>,  <39.219101, 39.044922, 29.517958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479866, 39.008938, 29.711197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620682, 38.692451, 29.911213>,  <38.705173, 38.502560, 30.031223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620682, 38.692451, 29.911213>,  <38.479866, 39.008938, 29.711197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620682, 38.692451, 29.911213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430294, 0.337628, 0.837171,
		-0.831212, -0.509885, -0.221597,
		0.352043, -0.791218, 0.500041,
		38.726295, 38.455086, 30.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958858, 38.783718, 30.079428>,  <38.479866, 39.008938, 29.711197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958858, 38.783718, 30.079428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265709, 38.607979, 30.266396>,  <38.449821, 38.502533, 30.378576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265709, 38.607979, 30.266396>,  <37.958858, 38.783718, 30.079428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265709, 38.607979, 30.266396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344889, 0.331901, 0.878006,
		-0.540891, -0.834752, 0.103083,
		0.767130, -0.439353, 0.467419,
		38.495850, 38.476173, 30.406622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669243, 38.388180, 30.668060>,  <37.958858, 38.783718, 30.079428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669243, 38.388180, 30.668060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051960, 38.459541, 30.759897>,  <38.281590, 38.502357, 30.814999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051960, 38.459541, 30.759897>,  <37.669243, 38.388180, 30.668060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051960, 38.459541, 30.759897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249868, 0.100735, 0.963025,
		0.148688, -0.978786, 0.140962,
		0.956796, 0.178412, 0.229590,
		38.339001, 38.513062, 30.828773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656658, 37.963604, 31.089113>,  <37.669243, 38.388180, 30.668060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656658, 37.963604, 31.089113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969067, 38.194218, 31.185127>,  <38.156513, 38.332584, 31.242735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969067, 38.194218, 31.185127>,  <37.656658, 37.963604, 31.089113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969067, 38.194218, 31.185127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195139, -0.139815, 0.970759,
		0.593233, -0.805024, 0.003306,
		0.781022, 0.576532, 0.240034,
		38.203373, 38.367176, 31.257137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991203, 37.650532, 31.667303>,  <37.656658, 37.963604, 31.089113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991203, 37.650532, 31.667303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127052, 38.026531, 31.680300>,  <38.208561, 38.252132, 31.688097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127052, 38.026531, 31.680300>,  <37.991203, 37.650532, 31.667303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127052, 38.026531, 31.680300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115124, 0.007261, 0.993324,
		0.933489, -0.341097, 0.110683,
		0.339624, 0.940000, 0.032490,
		38.228939, 38.308533, 31.690046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571583, 37.590897, 32.119949>,  <37.991203, 37.650532, 31.667303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571583, 37.590897, 32.119949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454704, 37.973434, 32.118103>,  <38.384575, 38.202957, 32.116997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454704, 37.973434, 32.118103>,  <38.571583, 37.590897, 32.119949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454704, 37.973434, 32.118103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028867, 0.013644, 0.999490,
		0.955922, 0.291918, -0.031594,
		-0.292200, 0.956346, -0.004615,
		38.367043, 38.260338, 32.116718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082062, 37.947865, 32.642990>,  <38.571583, 37.590897, 32.119949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082062, 37.947865, 32.642990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733009, 38.137318, 32.595345>,  <38.523579, 38.250988, 32.566757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733009, 38.137318, 32.595345>,  <39.082062, 37.947865, 32.642990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733009, 38.137318, 32.595345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105289, 0.055711, 0.992880,
		0.476893, 0.878960, 0.001252,
		-0.872632, 0.473630, -0.119113,
		38.471218, 38.279408, 32.559612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246010, 37.748165, 31.881968>,  <39.082062, 37.947865, 32.642990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246010, 37.748165, 31.881968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077209, 38.081673, 31.739559>,  <38.975929, 38.281776, 31.654114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077209, 38.081673, 31.739559>,  <39.246010, 37.748165, 31.881968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077209, 38.081673, 31.739559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199981, -0.468633, -0.860459,
		-0.884265, -0.291915, 0.364500,
		-0.421998, 0.833767, -0.356019,
		38.950611, 38.331802, 31.632753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400597, 37.105400, 31.995010>,  <39.246010, 37.748165, 31.881968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400597, 37.105400, 31.995010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497341, 36.941822, 32.346981>,  <39.555389, 36.843678, 32.558163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497341, 36.941822, 32.346981>,  <39.400597, 37.105400, 31.995010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497341, 36.941822, 32.346981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850231, -0.347659, -0.395273,
		0.467558, 0.843741, 0.263611,
		0.241861, -0.408943, 0.879925,
		39.569901, 36.819138, 32.610958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119530, 37.354038, 32.101486>,  <39.400597, 37.105400, 31.995010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119530, 37.354038, 32.101486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.006516, 37.008953, 32.269249>,  <39.938705, 36.801903, 32.369907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.006516, 37.008953, 32.269249>,  <40.119530, 37.354038, 32.101486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006516, 37.008953, 32.269249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630458, -0.496532, -0.596640,
		0.722977, 0.095846, 0.684191,
		-0.282537, -0.862711, 0.419408,
		39.921753, 36.750141, 32.395073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728184, 36.937458, 32.318584>,  <40.119530, 37.354038, 32.101486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728184, 36.937458, 32.318584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413078, 36.712818, 32.217358>,  <40.224014, 36.578033, 32.156624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413078, 36.712818, 32.217358>,  <40.728184, 36.937458, 32.318584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413078, 36.712818, 32.217358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594168, -0.584418, -0.552649,
		0.162471, -0.585718, 0.794064,
		-0.787761, -0.561597, -0.253064,
		40.176750, 36.544338, 32.141438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012493, 36.218121, 32.245502>,  <40.728184, 36.937458, 32.318584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012493, 36.218121, 32.245502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664082, 36.216290, 32.049015>,  <40.455036, 36.215191, 31.931124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664082, 36.216290, 32.049015>,  <41.012493, 36.218121, 32.245502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664082, 36.216290, 32.049015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382533, -0.633673, -0.672404,
		-0.308193, -0.773587, 0.553697,
		-0.871026, -0.004577, -0.491216,
		40.402775, 36.214916, 31.901649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887234, 35.537647, 32.174267>,  <41.012493, 36.218121, 32.245502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887234, 35.537647, 32.174267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706387, 35.736481, 31.878023>,  <40.597878, 35.855782, 31.700277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706387, 35.736481, 31.878023>,  <40.887234, 35.537647, 32.174267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706387, 35.736481, 31.878023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436206, -0.601033, -0.669689,
		-0.778022, -0.625834, 0.054904,
		-0.452113, 0.497084, -0.740609,
		40.570751, 35.885605, 31.655840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863342, 34.986916, 31.623293>,  <40.887234, 35.537647, 32.174267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863342, 34.986916, 31.623293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.774765, 35.321838, 31.423338>,  <40.721619, 35.522793, 31.303366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.774765, 35.321838, 31.423338>,  <40.863342, 34.986916, 31.623293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774765, 35.321838, 31.423338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311514, -0.425017, -0.849894,
		-0.924080, -0.343921, -0.166717,
		-0.221439, 0.837304, -0.499886,
		40.708332, 35.573029, 31.273373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591793, 34.778706, 30.983805>,  <40.863342, 34.986916, 31.623293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591793, 34.778706, 30.983805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710064, 35.155140, 30.918167>,  <40.781025, 35.381001, 30.878784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710064, 35.155140, 30.918167>,  <40.591793, 34.778706, 30.983805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710064, 35.155140, 30.918167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343916, -0.265121, -0.900796,
		-0.891234, 0.209910, -0.402045,
		0.295676, 0.941089, -0.164093,
		40.798767, 35.437466, 30.868938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225517, 35.071110, 30.346739>,  <40.591793, 34.778706, 30.983805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225517, 35.071110, 30.346739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555946, 35.285538, 30.416292>,  <40.754204, 35.414192, 30.458025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555946, 35.285538, 30.416292>,  <40.225517, 35.071110, 30.346739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555946, 35.285538, 30.416292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253575, -0.078012, -0.964165,
		-0.503292, 0.840563, -0.200377,
		0.826073, 0.536067, 0.173883,
		40.803768, 35.446358, 30.468456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207981, 35.464802, 29.786875>,  <40.225517, 35.071110, 30.346739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207981, 35.464802, 29.786875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579086, 35.517899, 29.926378>,  <40.801750, 35.549755, 30.010080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579086, 35.517899, 29.926378>,  <40.207981, 35.464802, 29.786875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579086, 35.517899, 29.926378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332546, 0.129947, -0.934091,
		-0.169311, 0.982596, 0.076418,
		0.927764, 0.132739, 0.348760,
		40.857414, 35.557720, 30.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444012, 35.960518, 29.383066>,  <40.207981, 35.464802, 29.786875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444012, 35.960518, 29.383066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753078, 35.745609, 29.518307>,  <40.938519, 35.616665, 29.599451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753078, 35.745609, 29.518307>,  <40.444012, 35.960518, 29.383066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753078, 35.745609, 29.518307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329213, -0.116242, -0.937074,
		0.542769, 0.835358, 0.087061,
		0.772672, -0.537276, 0.338103,
		40.984879, 35.584427, 29.619738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039585, 36.292908, 29.100145>,  <40.444012, 35.960518, 29.383066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039585, 36.292908, 29.100145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161125, 35.923862, 29.195200>,  <41.234047, 35.702435, 29.252232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161125, 35.923862, 29.195200>,  <41.039585, 36.292908, 29.100145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161125, 35.923862, 29.195200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468267, -0.072599, -0.880600,
		0.829701, 0.378844, 0.409968,
		0.303847, -0.922609, 0.237635,
		41.252277, 35.647079, 29.266491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692535, 36.257507, 28.808115>,  <41.039585, 36.292908, 29.100145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692535, 36.257507, 28.808115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.593479, 35.879688, 28.894373>,  <41.534046, 35.652996, 28.946127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.593479, 35.879688, 28.894373>,  <41.692535, 36.257507, 28.808115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593479, 35.879688, 28.894373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464376, -0.311064, -0.829213,
		0.850310, -0.105211, 0.515659,
		-0.247645, -0.944547, 0.215643,
		41.519184, 35.596325, 28.959066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244778, 35.878571, 28.635855>,  <41.692535, 36.257507, 28.808115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244778, 35.878571, 28.635855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954662, 35.603214, 28.639225>,  <41.780594, 35.438000, 28.641247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954662, 35.603214, 28.639225>,  <42.244778, 35.878571, 28.635855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954662, 35.603214, 28.639225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461877, -0.495641, -0.735533,
		0.510511, -0.529583, 0.677436,
		-0.725291, -0.688390, 0.008428,
		41.737076, 35.396698, 28.641754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577587, 35.263744, 28.617302>,  <42.244778, 35.878571, 28.635855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577587, 35.263744, 28.617302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.209702, 35.174786, 28.487894>,  <41.988972, 35.121410, 28.410250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.209702, 35.174786, 28.487894>,  <42.577587, 35.263744, 28.617302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209702, 35.174786, 28.487894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392461, -0.541767, -0.743279,
		-0.009970, -0.810573, 0.585552,
		-0.919715, -0.222396, -0.323519,
		41.933788, 35.108067, 28.390839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566082, 34.575813, 28.541725>,  <42.577587, 35.263744, 28.617302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566082, 34.575813, 28.541725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.288002, 34.741291, 28.306589>,  <42.121155, 34.840576, 28.165506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.288002, 34.741291, 28.306589>,  <42.566082, 34.575813, 28.541725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288002, 34.741291, 28.306589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415112, -0.436585, -0.798170,
		-0.586838, -0.798908, 0.131786,
		-0.695200, 0.413691, -0.587841,
		42.079441, 34.865398, 28.130238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283073, 33.966446, 28.201406>,  <42.566082, 34.575813, 28.541725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283073, 33.966446, 28.201406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.185871, 34.295895, 27.996429>,  <42.127552, 34.493565, 27.873444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.185871, 34.295895, 27.996429>,  <42.283073, 33.966446, 28.201406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185871, 34.295895, 27.996429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145798, -0.491266, -0.858720,
		-0.959006, -0.283384, -0.000704,
		-0.243001, 0.823621, -0.512444,
		42.112972, 34.542980, 27.842695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864231, 33.755211, 27.717541>,  <42.283073, 33.966446, 28.201406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864231, 33.755211, 27.717541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.997631, 34.101570, 27.568411>,  <42.077671, 34.309387, 27.478933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.997631, 34.101570, 27.568411>,  <41.864231, 33.755211, 27.717541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997631, 34.101570, 27.568411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100054, -0.425743, -0.899296,
		-0.937426, 0.262612, -0.228622,
		0.333500, 0.865897, -0.372827,
		42.097683, 34.361340, 27.456562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542698, 33.817535, 26.958113>,  <41.864231, 33.755211, 27.717541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542698, 33.817535, 26.958113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.873146, 34.040916, 26.988211>,  <42.071415, 34.174946, 27.006269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.873146, 34.040916, 26.988211>,  <41.542698, 33.817535, 26.958113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873146, 34.040916, 26.988211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324595, -0.362460, -0.873648,
		-0.460614, 0.746162, -0.480705,
		0.826119, 0.558449, 0.075246,
		42.120983, 34.208450, 27.010784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718372, 34.289501, 26.318373>,  <41.542698, 33.817535, 26.958113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718372, 34.289501, 26.318373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.065361, 34.207336, 26.499615>,  <42.273552, 34.158039, 26.608360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.065361, 34.207336, 26.499615>,  <41.718372, 34.289501, 26.318373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065361, 34.207336, 26.499615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325019, -0.455537, -0.828763,
		0.376643, 0.866194, -0.328402,
		0.867469, -0.205411, 0.453105,
		42.325603, 34.145714, 26.635546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134628, 34.146961, 25.778215>,  <41.718372, 34.289501, 26.318373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134628, 34.146961, 25.778215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378059, 34.010216, 26.064646>,  <42.524120, 33.928169, 26.236504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378059, 34.010216, 26.064646>,  <42.134628, 34.146961, 25.778215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378059, 34.010216, 26.064646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514489, -0.517031, -0.684091,
		0.604095, 0.784736, -0.138773,
		0.608580, -0.341859, 0.716074,
		42.560635, 33.907658, 26.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756149, 34.252094, 25.447552>,  <42.134628, 34.146961, 25.778215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756149, 34.252094, 25.447552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.803055, 33.994141, 25.749643>,  <42.831196, 33.839367, 25.930899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.803055, 33.994141, 25.749643>,  <42.756149, 34.252094, 25.447552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803055, 33.994141, 25.749643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630407, -0.539276, -0.558363,
		0.767357, 0.541576, 0.343304,
		0.117260, -0.644885, 0.755230,
		42.838234, 33.800674, 25.976212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462589, 34.195213, 25.599253>,  <42.756149, 34.252094, 25.447552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462589, 34.195213, 25.599253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.300121, 33.848450, 25.714840>,  <43.202641, 33.640392, 25.784193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.300121, 33.848450, 25.714840>,  <43.462589, 34.195213, 25.599253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300121, 33.848450, 25.714840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566435, -0.486998, -0.664819,
		0.717061, -0.106349, 0.688850,
		-0.406171, -0.866904, 0.288967,
		43.178268, 33.588379, 25.801531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025482, 33.769676, 25.741110>,  <43.462589, 34.195213, 25.599253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025482, 33.769676, 25.741110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.722263, 33.515778, 25.681158>,  <43.540333, 33.363438, 25.645187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.722263, 33.515778, 25.681158>,  <44.025482, 33.769676, 25.741110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722263, 33.515778, 25.681158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606871, -0.602298, -0.518599,
		0.238908, -0.484078, 0.841779,
		-0.758044, -0.634748, -0.149879,
		43.494850, 33.325352, 25.636194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412323, 33.057640, 25.717844>,  <44.025482, 33.769676, 25.741110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412323, 33.057640, 25.717844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042015, 33.019619, 25.571470>,  <43.819828, 32.996807, 25.483646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042015, 33.019619, 25.571470>,  <44.412323, 33.057640, 25.717844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042015, 33.019619, 25.571470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341755, -0.624349, -0.702418,
		-0.161701, -0.775340, 0.610492,
		-0.925773, -0.095057, -0.365934,
		43.764282, 32.991100, 25.461689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410248, 32.378799, 25.694042>,  <44.412323, 33.057640, 25.717844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410248, 32.378799, 25.694042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.137974, 32.543835, 25.451908>,  <43.974609, 32.642857, 25.306627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.137974, 32.543835, 25.451908>,  <44.410248, 32.378799, 25.694042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137974, 32.543835, 25.451908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307240, -0.589347, -0.747177,
		-0.665032, -0.694578, 0.274397,
		-0.680688, 0.412591, -0.605336,
		43.933765, 32.667610, 25.270308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892490, 31.844202, 25.605747>,  <44.410248, 32.378799, 25.694042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892490, 31.844202, 25.605747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.869373, 32.102505, 25.301207>,  <43.855503, 32.257488, 25.118483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.869373, 32.102505, 25.301207>,  <43.892490, 31.844202, 25.605747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869373, 32.102505, 25.301207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266052, -0.725086, -0.635191,
		-0.962225, -0.239266, -0.129902,
		-0.057790, 0.645757, -0.761353,
		43.852036, 32.296230, 25.072802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460655, 31.588200, 25.107498>,  <43.892490, 31.844202, 25.605747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460655, 31.588200, 25.107498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.713348, 31.817266, 24.898516>,  <43.864964, 31.954706, 24.773127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.713348, 31.817266, 24.898516>,  <43.460655, 31.588200, 25.107498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713348, 31.817266, 24.898516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091969, -0.724589, -0.683017,
		-0.769707, 0.383437, -0.510418,
		0.631737, 0.572666, -0.522458,
		43.902870, 31.989067, 24.741779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689816, 31.233278, 24.995138>,  <43.460655, 31.588200, 25.107498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689816, 31.233278, 24.995138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.428844, 30.954952, 24.875021>,  <42.272263, 30.787956, 24.802950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.428844, 30.954952, 24.875021>,  <42.689816, 31.233278, 24.995138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428844, 30.954952, 24.875021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300877, -0.125854, 0.945322,
		-0.695562, 0.707109, -0.127243,
		-0.652431, -0.695814, -0.300292,
		42.233116, 30.746208, 24.784933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924332, 31.474075, 25.132868>,  <42.689816, 31.233278, 24.995138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924332, 31.474075, 25.132868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.922695, 31.075237, 25.102448>,  <41.921715, 30.835934, 25.084196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.922695, 31.075237, 25.102448>,  <41.924332, 31.474075, 25.132868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922695, 31.075237, 25.102448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467827, -0.065305, 0.881404,
		-0.883810, 0.039185, -0.466201,
		-0.004092, -0.997096, -0.076048,
		41.921467, 30.776108, 25.079634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195026, 31.347857, 25.305510>,  <41.924332, 31.474075, 25.132868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195026, 31.347857, 25.305510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.423485, 31.026707, 25.373842>,  <41.560558, 30.834017, 25.414841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.423485, 31.026707, 25.373842>,  <41.195026, 31.347857, 25.305510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423485, 31.026707, 25.373842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330995, -0.034819, 0.942990,
		-0.751155, -0.595129, -0.285635,
		0.571146, -0.802876, 0.170830,
		41.594830, 30.785845, 25.425091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742115, 30.894938, 25.501402>,  <41.195026, 31.347857, 25.305510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742115, 30.894938, 25.501402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110771, 30.801289, 25.625185>,  <41.331966, 30.745100, 25.699455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110771, 30.801289, 25.625185>,  <40.742115, 30.894938, 25.501402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110771, 30.801289, 25.625185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356455, -0.195644, 0.913599,
		-0.153351, -0.952318, -0.263767,
		0.921642, -0.234123, 0.309457,
		41.387264, 30.731052, 25.718021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643860, 30.342356, 25.842545>,  <40.742115, 30.894938, 25.501402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643860, 30.342356, 25.842545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001068, 30.445244, 25.990250>,  <41.215393, 30.506977, 26.078873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001068, 30.445244, 25.990250>,  <40.643860, 30.342356, 25.842545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001068, 30.445244, 25.990250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321968, -0.208098, 0.923597,
		0.314412, -0.943680, -0.103018,
		0.893019, 0.257221, 0.369263,
		41.268974, 30.522409, 26.101028>
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
