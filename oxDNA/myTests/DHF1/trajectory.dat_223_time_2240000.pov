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
	<2.045258, 3.281401, 0.425280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.112228, 3.671021, 0.364357>,  <2.152411, 3.904792, 0.327803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.112228, 3.671021, 0.364357>,  <2.045258, 3.281401, 0.425280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.112228, 3.671021, 0.364357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979981, -0.147544, 0.133669,
		0.107728, -0.171637, -0.979252,
		0.167426, 0.974049, -0.152307,
		2.162456, 3.963235, 0.318665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.678214, 3.374705, 0.080163>,  <2.045258, 3.281401, 0.425280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.678214, 3.374705, 0.080163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.610523, 3.739578, 0.229446>,  <2.569909, 3.958502, 0.319017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.610523, 3.739578, 0.229446>,  <2.678214, 3.374705, 0.080163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.610523, 3.739578, 0.229446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983590, 0.180341, 0.005215,
		-0.062548, 0.367967, -0.927733,
		-0.169227, 0.912183, 0.373209,
		2.559755, 4.013233, 0.341409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.947692, 3.956019, -0.341856>,  <2.678214, 3.374705, 0.080163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.947692, 3.956019, -0.341856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922333, 4.034744, 0.049500>,  <2.907117, 4.081979, 0.284313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922333, 4.034744, 0.049500>,  <2.947692, 3.956019, -0.341856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922333, 4.034744, 0.049500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971912, 0.234818, 0.015742,
		-0.226645, 0.951906, -0.206172,
		-0.063398, 0.196813, 0.978389,
		2.903313, 4.093788, 0.343016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483743, 4.552229, -0.177895>,  <2.947692, 3.956019, -0.341856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483743, 4.552229, -0.177895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417297, 4.333252, 0.150181>,  <3.377430, 4.201866, 0.347026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417297, 4.333252, 0.150181>,  <3.483743, 4.552229, -0.177895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.417297, 4.333252, 0.150181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979180, 0.006839, 0.202879,
		-0.116674, 0.836815, 0.534909,
		-0.166114, -0.547443, 0.820190,
		3.367463, 4.169019, 0.396238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695894, 4.972061, 0.409450>,  <3.483743, 4.552229, -0.177895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695894, 4.972061, 0.409450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720264, 4.587753, 0.517681>,  <3.734887, 4.357169, 0.582620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.720264, 4.587753, 0.517681>,  <3.695894, 4.972061, 0.409450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.720264, 4.587753, 0.517681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975856, 0.114299, 0.186122,
		-0.209747, 0.252705, 0.944535,
		0.060926, -0.960768, 0.270578,
		3.738542, 4.299523, 0.598854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.868693, 4.918085, 1.119621>,  <3.695894, 4.972061, 0.409450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.868693, 4.918085, 1.119621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.970726, 4.587311, 0.919178>,  <4.031946, 4.388846, 0.798912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.970726, 4.587311, 0.919178>,  <3.868693, 4.918085, 1.119621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.970726, 4.587311, 0.919178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946934, 0.108819, 0.302449,
		-0.195576, -0.551665, 0.810812,
		0.255082, -0.826936, -0.501108,
		4.047251, 4.339230, 0.768846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451354, 4.630973, 1.483737>,  <3.868693, 4.918085, 1.119621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451354, 4.630973, 1.483737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471416, 4.430801, 1.138008>,  <4.483454, 4.310698, 0.930571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471416, 4.430801, 1.138008>,  <4.451354, 4.630973, 1.483737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.471416, 4.430801, 1.138008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998717, 0.031162, 0.039913,
		0.006960, -0.865216, 0.501351,
		0.050156, -0.500430, -0.864323,
		4.486464, 4.280673, 0.878711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.960956, 4.121339, 1.619056>,  <4.451354, 4.630973, 1.483737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.960956, 4.121339, 1.619056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933865, 4.153442, 1.221268>,  <4.917610, 4.172705, 0.982595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933865, 4.153442, 1.221268>,  <4.960956, 4.121339, 1.619056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.933865, 4.153442, 1.221268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992867, 0.103452, -0.059270,
		0.098123, -0.991391, -0.086694,
		-0.067729, 0.080259, -0.994470,
		4.913546, 4.177520, 0.922927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.397990, 4.087124, 1.174163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.462812, 4.268814, 0.823753>,  <1.501706, 4.377828, 0.613508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.462812, 4.268814, 0.823753>,  <1.397990, 4.087124, 1.174163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.462812, 4.268814, 0.823753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891637, -0.312928, -0.327201,
		-0.422755, 0.834119, 0.354292,
		0.162057, 0.454226, -0.876023,
		1.511430, 4.405082, 0.560946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.849037, 4.650772, 1.001245>,  <1.397990, 4.087124, 1.174163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.849037, 4.650772, 1.001245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007097, 4.489655, 0.671005>,  <1.101933, 4.392984, 0.472861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007097, 4.489655, 0.671005>,  <0.849037, 4.650772, 1.001245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.007097, 4.489655, 0.671005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918613, -0.170790, -0.356343,
		0.002528, 0.899215, -0.437499,
		0.395149, -0.402794, -0.825599,
		1.125642, 4.368816, 0.423325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.854454, 5.061030, 0.377970>,  <0.849037, 4.650772, 1.001245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.854454, 5.061030, 0.377970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813782, 4.665054, 0.338615>,  <0.789379, 4.427469, 0.315003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813782, 4.665054, 0.338615>,  <0.854454, 5.061030, 0.377970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813782, 4.665054, 0.338615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984820, 0.114150, -0.130766,
		0.140681, 0.083597, -0.986519,
		-0.101680, -0.989940, -0.098386,
		0.783278, 4.368073, 0.309099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.377524, 4.890656, -0.196455>,  <0.854454, 5.061030, 0.377970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.377524, 4.890656, -0.196455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334042, 4.583939, 0.056595>,  <0.307952, 4.399909, 0.208425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334042, 4.583939, 0.056595>,  <0.377524, 4.890656, -0.196455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.334042, 4.583939, 0.056595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986294, 0.162657, 0.027675,
		-0.124121, -0.620945, -0.773965,
		-0.108706, -0.766792, 0.632623,
		0.301430, 4.353901, 0.246382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.107221, 4.382642, -0.469525>,  <0.377524, 4.890656, -0.196455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.107221, 4.382642, -0.469525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.128424, 4.338379, -0.072548>,  <-0.141146, 4.311821, 0.165639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.128424, 4.338379, -0.072548>,  <-0.107221, 4.382642, -0.469525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.128424, 4.338379, -0.072548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967645, -0.239819, -0.078423,
		0.246686, -0.964490, -0.094369,
		-0.053007, -0.110661, 0.992444,
		-0.144326, 4.305182, 0.225185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.522700, 3.814022, -0.314499>,  <-0.107221, 4.382642, -0.469525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.522700, 3.814022, -0.314499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.510117, 3.925354, 0.069489>,  <-0.502566, 3.992153, 0.299881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.510117, 3.925354, 0.069489>,  <-0.522700, 3.814022, -0.314499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.510117, 3.925354, 0.069489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900928, -0.408015, 0.147823,
		0.432826, -0.869514, 0.237921,
		0.031459, 0.278332, 0.959970,
		-0.500679, 4.008853, 0.357479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.699893, 3.258719, 0.165836>,  <-0.522700, 3.814022, -0.314499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.699893, 3.258719, 0.165836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.779003, 3.588577, 0.377815>,  <-0.826469, 3.786492, 0.505002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.779003, 3.588577, 0.377815>,  <-0.699893, 3.258719, 0.165836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.779003, 3.588577, 0.377815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870821, -0.396025, 0.291263,
		0.450061, -0.403884, 0.796443,
		-0.197775, 0.824646, 0.529947,
		-0.838336, 3.835971, 0.536799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.075804, 2.994812, 0.727925>,  <-0.699893, 3.258719, 0.165836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.075804, 2.994812, 0.727925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.145630, 3.383957, 0.667175>,  <-1.187525, 3.617444, 0.630726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.145630, 3.383957, 0.667175>,  <-1.075804, 2.994812, 0.727925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.145630, 3.383957, 0.667175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984183, -0.167665, 0.057208,
		0.030191, 0.159458, 0.986743,
		-0.174565, 0.972863, -0.151874,
		-1.197999, 3.675816, 0.621613>
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
