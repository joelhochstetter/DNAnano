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
	<3.062961, 2.229075, 1.982430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.452828, 2.170069, 2.049674>,  <3.686749, 2.134666, 2.090021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.452828, 2.170069, 2.049674>,  <3.062961, 2.229075, 1.982430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452828, 2.170069, 2.049674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169414, 0.003775, 0.985538,
		-0.146017, -0.989053, -0.021312,
		0.974668, -0.147516, 0.168111,
		3.745229, 2.125815, 2.100107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.084712, 1.652664, 2.332411>,  <3.062961, 2.229075, 1.982430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.084712, 1.652664, 2.332411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429650, 1.833973, 2.422657>,  <3.636613, 1.942759, 2.476805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429650, 1.833973, 2.422657>,  <3.084712, 1.652664, 2.332411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429650, 1.833973, 2.422657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254967, 0.003777, 0.966942,
		0.437438, -0.891363, 0.118827,
		0.862346, 0.453275, 0.225616,
		3.688354, 1.969956, 2.490342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.498307, 1.260790, 2.927308>,  <3.084712, 1.652664, 2.332411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.498307, 1.260790, 2.927308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625594, 1.638950, 2.899160>,  <3.701967, 1.865847, 2.882272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625594, 1.638950, 2.899160>,  <3.498307, 1.260790, 2.927308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625594, 1.638950, 2.899160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134813, 0.118600, 0.983748,
		0.938383, -0.303560, 0.165193,
		0.318218, 0.945402, -0.070369,
		3.721060, 1.922571, 2.878050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.810240, 1.424904, 3.476649>,  <3.498307, 1.260790, 2.927308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.810240, 1.424904, 3.476649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710459, 1.788126, 3.342065>,  <3.650590, 2.006060, 3.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710459, 1.788126, 3.342065>,  <3.810240, 1.424904, 3.476649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710459, 1.788126, 3.342065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212260, 0.287724, 0.933896,
		0.944838, 0.304381, 0.120970,
		-0.249454, 0.908057, -0.336461,
		3.635623, 2.060544, 3.241127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.279828, 1.932853, 3.874663>,  <3.810240, 1.424904, 3.476649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.279828, 1.932853, 3.874663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.972357, 2.145653, 3.732615>,  <3.787874, 2.273334, 3.647387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.972357, 2.145653, 3.732615>,  <4.279828, 1.932853, 3.874663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.972357, 2.145653, 3.732615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081450, 0.469257, 0.879297,
		0.634428, 0.704821, -0.317376,
		-0.768678, 0.532001, -0.355118,
		3.741753, 2.305254, 3.626080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.397109, 2.583082, 4.026666>,  <4.279828, 1.932853, 3.874663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.397109, 2.583082, 4.026666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.001288, 2.540564, 3.987699>,  <3.763796, 2.515053, 3.964318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.001288, 2.540564, 3.987699>,  <4.397109, 2.583082, 4.026666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.001288, 2.540564, 3.987699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139828, 0.542627, 0.828253,
		-0.035177, 0.833221, -0.551821,
		-0.989551, -0.106295, -0.097419,
		3.704423, 2.508676, 3.958473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.153271, 3.218394, 4.181498>,  <4.397109, 2.583082, 4.026666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.153271, 3.218394, 4.181498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.830215, 2.985224, 4.217093>,  <3.636382, 2.845323, 4.238451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.830215, 2.985224, 4.217093>,  <4.153271, 3.218394, 4.181498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.830215, 2.985224, 4.217093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200866, 0.413849, 0.887909,
		-0.554411, 0.699235, -0.451330,
		-0.807639, -0.582924, 0.088990,
		3.587924, 2.810347, 4.243791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.792737, 3.624140, 4.737483>,  <4.153271, 3.218394, 4.181498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.792737, 3.624140, 4.737483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.643974, 3.258451, 4.673132>,  <3.554716, 3.039038, 4.634521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.643974, 3.258451, 4.673132>,  <3.792737, 3.624140, 4.737483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.643974, 3.258451, 4.673132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197967, -0.091208, 0.975956,
		-0.906914, 0.394814, -0.147065,
		-0.371908, -0.914223, -0.160878,
		3.532402, 2.984184, 4.624868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.356226, 2.918728, 6.154360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011230, 2.928457, 5.952164>,  <2.804233, 2.934295, 5.830846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011230, 2.928457, 5.952164>,  <3.356226, 2.918728, 6.154360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.011230, 2.928457, 5.952164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446977, -0.431801, -0.783428,
		-0.237325, -0.901641, 0.361553,
		-0.862489, 0.024322, -0.505490,
		2.752484, 2.935754, 5.800517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.267904, 2.252884, 5.877920>,  <3.356226, 2.918728, 6.154360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.267904, 2.252884, 5.877920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094162, 2.543409, 5.664827>,  <2.989917, 2.717725, 5.536972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094162, 2.543409, 5.664827>,  <3.267904, 2.252884, 5.877920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.094162, 2.543409, 5.664827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488910, -0.306623, -0.816670,
		-0.756507, -0.615183, -0.221920,
		-0.434355, 0.726315, -0.532731,
		2.963855, 2.761304, 5.505008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.336610, 2.024250, 5.208238>,  <3.267904, 2.252884, 5.877920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.336610, 2.024250, 5.208238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.171932, 2.383694, 5.147562>,  <3.073125, 2.599360, 5.111156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.171932, 2.383694, 5.147562>,  <3.336610, 2.024250, 5.208238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.171932, 2.383694, 5.147562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145940, -0.099294, -0.984298,
		-0.899560, -0.427368, -0.090264,
		-0.411695, 0.898608, -0.151691,
		3.048424, 2.653276, 5.102055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.811089, 1.917798, 4.800109>,  <3.336610, 2.024250, 5.208238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.811089, 1.917798, 4.800109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914043, 2.295128, 4.716308>,  <2.975816, 2.521526, 4.666028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914043, 2.295128, 4.716308>,  <2.811089, 1.917798, 4.800109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.914043, 2.295128, 4.716308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109612, -0.243910, -0.963584,
		-0.960072, 0.225048, -0.166178,
		0.257386, 0.943325, -0.209503,
		2.991259, 2.578125, 4.653457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.417877, 2.208917, 4.318136>,  <2.811089, 1.917798, 4.800109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.417877, 2.208917, 4.318136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775501, 2.385889, 4.290106>,  <2.990076, 2.492072, 4.273287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775501, 2.385889, 4.290106>,  <2.417877, 2.208917, 4.318136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.775501, 2.385889, 4.290106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113538, -0.375153, -0.919983,
		-0.433317, 0.814565, -0.385642,
		0.894061, 0.442429, -0.070076,
		3.043720, 2.518618, 4.269083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444738, 2.302110, 3.645473>,  <2.417877, 2.208917, 4.318136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444738, 2.302110, 3.645473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.821922, 2.382172, 3.751879>,  <3.048233, 2.430208, 3.815722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.821922, 2.382172, 3.751879>,  <2.444738, 2.302110, 3.645473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.821922, 2.382172, 3.751879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299473, -0.161006, -0.940421,
		-0.145398, 0.966445, -0.211763,
		0.942961, 0.200153, 0.266015,
		3.104810, 2.442218, 3.831683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.690713, 2.898391, 3.224587>,  <2.444738, 2.302110, 3.645473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.690713, 2.898391, 3.224587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020821, 2.705673, 3.342436>,  <3.218885, 2.590042, 3.413146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020821, 2.705673, 3.342436>,  <2.690713, 2.898391, 3.224587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.020821, 2.705673, 3.342436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221747, -0.203347, -0.953666,
		0.519383, 0.852363, -0.060979,
		0.825270, -0.481795, 0.294624,
		3.268401, 2.561135, 3.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263079, 3.197360, 2.908115>,  <2.690713, 2.898391, 3.224587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263079, 3.197360, 2.908115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339741, 2.816008, 3.001354>,  <3.385738, 2.587196, 3.057297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339741, 2.816008, 3.001354>,  <3.263079, 3.197360, 2.908115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339741, 2.816008, 3.001354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195515, -0.195653, -0.960986,
		0.961791, 0.229752, 0.148902,
		0.191655, -0.953380, 0.233097,
		3.397237, 2.529994, 3.071283>
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
