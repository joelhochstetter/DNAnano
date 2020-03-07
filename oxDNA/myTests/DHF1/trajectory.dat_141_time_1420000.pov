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
	<3.445359, 1.376507, 0.990666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689884, 1.518612, 1.273533>,  <3.836599, 1.603875, 1.443253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689884, 1.518612, 1.273533>,  <3.445359, 1.376507, 0.990666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689884, 1.518612, 1.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393724, 0.638612, -0.661178,
		-0.686498, 0.682615, 0.250515,
		0.611312, 0.355263, 0.707168,
		3.873278, 1.625191, 1.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.333630, 2.068597, 1.142996>,  <3.445359, 1.376507, 0.990666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.333630, 2.068597, 1.142996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719215, 1.990269, 1.215027>,  <3.950567, 1.943272, 1.258245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719215, 1.990269, 1.215027>,  <3.333630, 2.068597, 1.142996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719215, 1.990269, 1.215027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263500, 0.795983, -0.544958,
		-0.036625, 0.572770, 0.818898,
		0.963964, -0.195820, 0.180077,
		4.008405, 1.931523, 1.269050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814329, 2.598431, 1.578038>,  <3.333630, 2.068597, 1.142996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814329, 2.598431, 1.578038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.976631, 2.391922, 1.276356>,  <4.074012, 2.268017, 1.095346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.976631, 2.391922, 1.276356>,  <3.814329, 2.598431, 1.578038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.976631, 2.391922, 1.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213414, 0.855893, -0.471065,
		0.888717, 0.030180, 0.457462,
		0.405755, -0.516272, -0.754205,
		4.098358, 2.237040, 1.050094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354075, 2.881840, 1.434211>,  <3.814329, 2.598431, 1.578038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354075, 2.881840, 1.434211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225517, 2.689983, 1.107616>,  <4.148382, 2.574869, 0.911660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225517, 2.689983, 1.107616>,  <4.354075, 2.881840, 1.434211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.225517, 2.689983, 1.107616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063395, 0.849399, -0.523930,
		0.944821, -0.220150, -0.242586,
		-0.321395, -0.479641, -0.816486,
		4.129099, 2.546091, 0.862671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743926, 2.933499, 0.731056>,  <4.354075, 2.881840, 1.434211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743926, 2.933499, 0.731056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.354378, 2.911987, 0.642796>,  <4.120649, 2.899081, 0.589839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.354378, 2.911987, 0.642796>,  <4.743926, 2.933499, 0.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.354378, 2.911987, 0.642796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071148, 0.850410, -0.521288,
		0.215677, -0.523365, -0.824362,
		-0.973870, -0.053778, -0.220650,
		4.062217, 2.895854, 0.576600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.616894, 2.901717, -0.061356>,  <4.743926, 2.933499, 0.731056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.616894, 2.901717, -0.061356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345875, 3.084961, 0.168797>,  <4.183263, 3.194907, 0.306888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345875, 3.084961, 0.168797>,  <4.616894, 2.901717, -0.061356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345875, 3.084961, 0.168797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056852, 0.812604, -0.580036,
		-0.733278, -0.360291, -0.576623,
		-0.677548, 0.458110, 0.575381,
		4.142611, 3.222394, 0.341411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.036960, 3.140968, -0.488463>,  <4.616894, 2.901717, -0.061356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.036960, 3.140968, -0.488463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.090054, 3.351437, -0.152481>,  <4.121910, 3.477718, 0.049108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.090054, 3.351437, -0.152481>,  <4.036960, 3.140968, -0.488463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.090054, 3.351437, -0.152481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056107, 0.842106, -0.536386,
		-0.989562, 0.118324, 0.082255,
		0.132735, 0.526172, 0.839955,
		4.129874, 3.509288, 0.099505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.551159, 3.730756, -0.559895>,  <4.036960, 3.140968, -0.488463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.551159, 3.730756, -0.559895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.818138, 3.874054, -0.298767>,  <3.978326, 3.960032, -0.142090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.818138, 3.874054, -0.298767>,  <3.551159, 3.730756, -0.559895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.818138, 3.874054, -0.298767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185932, 0.768731, -0.611950,
		-0.721070, 0.529825, 0.446479,
		0.667449, 0.358244, 0.652820,
		4.018373, 3.981527, -0.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.031923, 5.004803, -1.259836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.336952, 5.114853, -1.025642>,  <4.519969, 5.180883, -0.885126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.336952, 5.114853, -1.025642>,  <4.031923, 5.004803, -1.259836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.336952, 5.114853, -1.025642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235393, -0.724999, 0.647276,
		0.602558, -0.631412, -0.488101,
		0.762571, 0.275126, 0.585484,
		4.565723, 5.197391, -0.849997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.295196, 4.425597, -1.027293>,  <4.031923, 5.004803, -1.259836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.295196, 4.425597, -1.027293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.391537, 4.710281, -0.763336>,  <4.449341, 4.881092, -0.604962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.391537, 4.710281, -0.763336>,  <4.295196, 4.425597, -1.027293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.391537, 4.710281, -0.763336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114864, -0.654228, 0.747524,
		0.963741, -0.255841, -0.075823,
		0.240853, 0.711710, 0.659893,
		4.463793, 4.923794, -0.565368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.799217, 4.130584, -0.418847>,  <4.295196, 4.425597, -1.027293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.799217, 4.130584, -0.418847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607413, 4.461998, -0.303192>,  <4.492331, 4.660847, -0.233799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607413, 4.461998, -0.303192>,  <4.799217, 4.130584, -0.418847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607413, 4.461998, -0.303192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312955, -0.469279, 0.825734,
		0.819835, 0.305460, 0.484318,
		-0.479509, 0.828535, 0.289136,
		4.463560, 4.710558, -0.216451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.145534, 4.395238, 0.175661>,  <4.799217, 4.130584, -0.418847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.145534, 4.395238, 0.175661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751467, 4.429794, 0.116356>,  <4.515027, 4.450528, 0.080773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751467, 4.429794, 0.116356>,  <5.145534, 4.395238, 0.175661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.751467, 4.429794, 0.116356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165685, -0.703719, 0.690889,
		-0.044648, 0.705206, 0.707595,
		-0.985168, 0.086391, -0.148262,
		4.455917, 4.455711, 0.071877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.826612, 4.342932, 0.790312>,  <5.145534, 4.395238, 0.175661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.826612, 4.342932, 0.790312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551661, 4.243927, 0.517181>,  <4.386691, 4.184524, 0.353303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551661, 4.243927, 0.517181>,  <4.826612, 4.342932, 0.790312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551661, 4.243927, 0.517181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224795, -0.821477, 0.524064,
		-0.690637, 0.513726, 0.509025,
		-0.687377, -0.247511, -0.682826,
		4.345448, 4.169673, 0.312334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.240858, 4.109809, 1.242691>,  <4.826612, 4.342932, 0.790312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.240858, 4.109809, 1.242691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.187135, 3.939682, 0.884682>,  <4.154902, 3.837605, 0.669876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.187135, 3.939682, 0.884682>,  <4.240858, 4.109809, 1.242691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.187135, 3.939682, 0.884682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281527, -0.849612, 0.445985,
		-0.950108, 0.311871, -0.005631,
		-0.134306, -0.425319, -0.895023,
		4.146843, 3.812086, 0.616175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.480060, 3.849230, 1.257840>,  <4.240858, 4.109809, 1.242691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.480060, 3.849230, 1.257840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.696388, 3.650276, 0.986511>,  <3.826185, 3.530904, 0.823714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.696388, 3.650276, 0.986511>,  <3.480060, 3.849230, 1.257840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.696388, 3.650276, 0.986511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255292, -0.865456, 0.431059,
		-0.801460, -0.059956, -0.595035,
		0.540821, -0.497385, -0.678322,
		3.858634, 3.501061, 0.783014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027006, 3.285760, 0.921644>,  <3.480060, 3.849230, 1.257840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027006, 3.285760, 0.921644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.418544, 3.204315, 0.929695>,  <3.653467, 3.155448, 0.934526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.418544, 3.204315, 0.929695>,  <3.027006, 3.285760, 0.921644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.418544, 3.204315, 0.929695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196613, -0.908819, 0.367956,
		-0.056628, -0.364130, -0.929625,
		0.978845, -0.203613, 0.020128,
		3.712198, 3.143231, 0.935733>
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
