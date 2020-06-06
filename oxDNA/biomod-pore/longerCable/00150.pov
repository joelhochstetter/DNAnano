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
	<24.628922, 34.751579, 35.360622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544815, 35.087860, 35.161018>,  <24.494350, 35.289627, 35.041256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544815, 35.087860, 35.161018>,  <24.628922, 34.751579, 35.360622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544815, 35.087860, 35.161018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506541, 0.530253, 0.679889,
		0.836184, -0.109812, -0.537343,
		-0.210267, 0.840698, -0.499013,
		24.481735, 35.340069, 35.011314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151848, 35.211765, 35.119682>,  <24.628922, 34.751579, 35.360622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151848, 35.211765, 35.119682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837543, 35.447151, 35.195881>,  <24.648960, 35.588383, 35.241600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837543, 35.447151, 35.195881>,  <25.151848, 35.211765, 35.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837543, 35.447151, 35.195881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511446, 0.444943, 0.735152,
		0.347854, 0.675080, -0.650588,
		-0.785761, 0.588467, 0.190492,
		24.601816, 35.623692, 35.253029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682552, 35.692188, 35.466988>,  <25.151848, 35.211765, 35.119682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682552, 35.692188, 35.466988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962996, 35.894238, 35.265675>,  <26.131262, 36.015469, 35.144886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962996, 35.894238, 35.265675>,  <25.682552, 35.692188, 35.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962996, 35.894238, 35.265675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693260, 0.317737, -0.646865,
		-0.166838, 0.802428, 0.572953,
		0.701110, 0.505126, -0.503281,
		26.173328, 36.045776, 35.114689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492090, 36.408939, 35.303925>,  <25.682552, 35.692188, 35.466988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492090, 36.408939, 35.303925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740534, 36.259384, 35.028408>,  <25.889601, 36.169651, 34.863098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740534, 36.259384, 35.028408>,  <25.492090, 36.408939, 35.303925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740534, 36.259384, 35.028408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640817, 0.263689, -0.720987,
		0.451195, 0.889199, -0.075814,
		0.621110, -0.373888, -0.688789,
		25.926867, 36.147217, 34.821770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976643, 35.943092, 34.972305>,  <25.492090, 36.408939, 35.303925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976643, 35.943092, 34.972305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200777, 36.099678, 34.680340>,  <25.335258, 36.193630, 34.505161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200777, 36.099678, 34.680340>,  <24.976643, 35.943092, 34.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200777, 36.099678, 34.680340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790132, 0.011676, 0.612825,
		0.248422, -0.920119, -0.302767,
		0.560337, 0.391465, -0.729916,
		25.368877, 36.217117, 34.461365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544611, 36.144592, 34.396580>,  <24.976643, 35.943092, 34.972305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544611, 36.144592, 34.396580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859684, 36.224369, 34.163418>,  <25.048729, 36.272236, 34.023521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859684, 36.224369, 34.163418>,  <24.544611, 36.144592, 34.396580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859684, 36.224369, 34.163418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276608, -0.730934, -0.623878,
		-0.550493, 0.652654, -0.520577,
		0.787684, 0.199444, -0.582903,
		25.095989, 36.284203, 33.988548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422606, 35.608154, 33.984688>,  <24.544611, 36.144592, 34.396580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422606, 35.608154, 33.984688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710123, 35.814880, 33.798679>,  <24.882633, 35.938915, 33.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710123, 35.814880, 33.798679>,  <24.422606, 35.608154, 33.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710123, 35.814880, 33.798679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074105, -0.722018, -0.687894,
		-0.691263, 0.459994, -0.557280,
		0.718794, 0.516813, -0.465016,
		24.925760, 35.969925, 33.659176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263662, 35.711113, 33.248363>,  <24.422606, 35.608154, 33.984688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263662, 35.711113, 33.248363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663031, 35.723167, 33.267326>,  <24.902651, 35.730400, 33.278702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663031, 35.723167, 33.267326>,  <24.263662, 35.711113, 33.248363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663031, 35.723167, 33.267326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055481, -0.397206, -0.916051,
		-0.008777, 0.917235, -0.398251,
		0.998421, 0.030135, 0.047403,
		24.962557, 35.732208, 33.281548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585262, 35.912868, 32.533890>,  <24.263662, 35.711113, 33.248363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585262, 35.912868, 32.533890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893513, 35.727634, 32.709019>,  <25.078463, 35.616493, 32.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893513, 35.727634, 32.709019>,  <24.585262, 35.912868, 32.533890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893513, 35.727634, 32.709019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235296, -0.431718, -0.870778,
		0.592259, 0.774063, -0.223732,
		0.770626, -0.463083, 0.437823,
		25.124701, 35.588711, 32.840366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229452, 36.123100, 32.251610>,  <24.585262, 35.912868, 32.533890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229452, 36.123100, 32.251610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281988, 35.754230, 32.397129>,  <25.313511, 35.532909, 32.484440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281988, 35.754230, 32.397129>,  <25.229452, 36.123100, 32.251610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281988, 35.754230, 32.397129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391698, -0.288842, -0.873581,
		0.910671, 0.257237, 0.323275,
		0.131342, -0.922171, 0.363800,
		25.321390, 35.477581, 32.506268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997742, 35.985676, 32.094185>,  <25.229452, 36.123100, 32.251610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997742, 35.985676, 32.094185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839493, 35.630207, 32.186909>,  <25.744543, 35.416924, 32.242542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839493, 35.630207, 32.186909>,  <25.997742, 35.985676, 32.094185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839493, 35.630207, 32.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381118, -0.388505, -0.838935,
		0.835602, -0.243554, 0.492392,
		-0.395623, -0.888676, 0.231813,
		25.720806, 35.363605, 32.256454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402948, 35.512173, 31.885954>,  <25.997742, 35.985676, 32.094185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402948, 35.512173, 31.885954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042933, 35.338425, 31.900078>,  <25.826923, 35.234177, 31.908552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042933, 35.338425, 31.900078>,  <26.402948, 35.512173, 31.885954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042933, 35.338425, 31.900078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226329, -0.535120, -0.813893,
		0.372427, -0.724546, 0.579941,
		-0.900041, -0.434373, 0.035308,
		25.772921, 35.208115, 31.910669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543139, 34.825359, 31.688143>,  <26.402948, 35.512173, 31.885954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543139, 34.825359, 31.688143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156540, 34.910538, 31.630816>,  <25.924582, 34.961643, 31.596418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156540, 34.910538, 31.630816>,  <26.543139, 34.825359, 31.688143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156540, 34.910538, 31.630816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088332, -0.248324, -0.964641,
		-0.240981, -0.944987, 0.221198,
		-0.966502, 0.212921, -0.143314,
		25.866590, 34.974422, 31.587820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323004, 34.386276, 31.198801>,  <26.543139, 34.825359, 31.688143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323004, 34.386276, 31.198801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075550, 34.700546, 31.198719>,  <25.927078, 34.889111, 31.198669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075550, 34.700546, 31.198719>,  <26.323004, 34.386276, 31.198801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075550, 34.700546, 31.198719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281187, 0.221162, -0.933821,
		-0.733638, -0.577751, -0.357741,
		-0.618635, 0.785679, -0.000203,
		25.889959, 34.936249, 31.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535347, 34.360561, 31.341635>,  <26.323004, 34.386276, 31.198801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535347, 34.360561, 31.341635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793211, 34.433010, 31.638716>,  <25.947929, 34.476479, 31.816965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793211, 34.433010, 31.638716>,  <25.535347, 34.360561, 31.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793211, 34.433010, 31.638716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724253, 0.455664, 0.517521,
		-0.244690, -0.871531, 0.424925,
		0.644659, 0.181121, 0.742705,
		25.986609, 34.487347, 31.861526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094318, 34.311859, 31.923309>,  <25.535347, 34.360561, 31.341635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094318, 34.311859, 31.923309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426859, 34.504795, 32.033730>,  <25.626383, 34.620556, 32.099983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426859, 34.504795, 32.033730>,  <25.094318, 34.311859, 31.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426859, 34.504795, 32.033730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478042, 0.367330, 0.797837,
		0.283425, -0.795248, 0.535958,
		0.831352, 0.482337, 0.276052,
		25.676264, 34.649498, 32.116547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293631, 34.166321, 32.641781>,  <25.094318, 34.311859, 31.923309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293631, 34.166321, 32.641781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455233, 34.517704, 32.539722>,  <25.552195, 34.728535, 32.478489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455233, 34.517704, 32.539722>,  <25.293631, 34.166321, 32.641781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455233, 34.517704, 32.539722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401972, 0.421032, 0.813112,
		0.821705, -0.225941, 0.523213,
		0.404005, 0.878455, -0.255142,
		25.576433, 34.781242, 32.463181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659075, 34.428215, 33.221401>,  <25.293631, 34.166321, 32.641781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659075, 34.428215, 33.221401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602592, 34.755714, 32.998795>,  <25.568703, 34.952213, 32.865231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602592, 34.755714, 32.998795>,  <25.659075, 34.428215, 33.221401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602592, 34.755714, 32.998795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138161, 0.540352, 0.830019,
		0.980292, 0.194093, 0.036817,
		-0.141207, 0.818747, -0.556519,
		25.560230, 35.001339, 32.831841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108042, 35.041821, 33.516937>,  <25.659075, 34.428215, 33.221401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108042, 35.041821, 33.516937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812017, 35.209675, 33.306713>,  <25.634403, 35.310387, 33.180580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812017, 35.209675, 33.306713>,  <26.108042, 35.041821, 33.516937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812017, 35.209675, 33.306713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023815, 0.764614, 0.644049,
		0.672117, 0.489152, -0.555868,
		-0.740062, 0.419638, -0.525559,
		25.589998, 35.335567, 33.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238478, 35.744373, 33.406445>,  <26.108042, 35.041821, 33.516937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238478, 35.744373, 33.406445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840389, 35.714897, 33.380821>,  <25.601536, 35.697212, 33.365448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840389, 35.714897, 33.380821>,  <26.238478, 35.744373, 33.406445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840389, 35.714897, 33.380821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097625, 0.737625, 0.668115,
		-0.001985, 0.671176, -0.741295,
		-0.995221, -0.073695, -0.064059,
		25.541822, 35.692787, 33.361603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004629, 35.836620, 33.150955>,  <26.238478, 35.744373, 33.406445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004629, 35.836620, 33.150955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353474, 36.031704, 33.166782>,  <27.562780, 36.148754, 33.176277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353474, 36.031704, 33.166782>,  <27.004629, 35.836620, 33.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353474, 36.031704, 33.166782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276656, -0.558173, 0.782243,
		0.403591, -0.671256, -0.621715,
		0.872110, 0.487707, 0.039566,
		27.615107, 36.178017, 33.178654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471592, 35.221817, 33.206303>,  <27.004629, 35.836620, 33.150955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471592, 35.221817, 33.206303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579861, 35.564335, 33.382256>,  <27.644823, 35.769844, 33.487827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579861, 35.564335, 33.382256>,  <27.471592, 35.221817, 33.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579861, 35.564335, 33.382256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275842, -0.506765, 0.816763,
		0.922305, -0.099739, -0.373370,
		0.270674, 0.856295, 0.439879,
		27.661062, 35.821224, 33.514221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149912, 35.137363, 33.394138>,  <27.471592, 35.221817, 33.206303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149912, 35.137363, 33.394138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936842, 35.383415, 33.626644>,  <27.809000, 35.531048, 33.766148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936842, 35.383415, 33.626644>,  <28.149912, 35.137363, 33.394138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936842, 35.383415, 33.626644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148726, -0.608087, 0.779815,
		0.833149, 0.501837, 0.232427,
		-0.532676, 0.615134, 0.581263,
		27.777039, 35.567955, 33.801022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745192, 34.550087, 33.529434>,  <28.149912, 35.137363, 33.394138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745192, 34.550087, 33.529434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734049, 34.384953, 33.165283>,  <27.727364, 34.285873, 32.946793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734049, 34.384953, 33.165283>,  <27.745192, 34.550087, 33.529434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734049, 34.384953, 33.165283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960113, -0.264535, 0.090583,
		-0.278223, -0.871542, 0.403740,
		-0.027857, -0.412838, -0.910379,
		27.725693, 34.261101, 32.892170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996338, 33.765369, 33.437992>,  <27.745192, 34.550087, 33.529434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996338, 33.765369, 33.437992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022573, 33.918438, 33.069370>,  <28.038315, 34.010281, 32.848198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022573, 33.918438, 33.069370>,  <27.996338, 33.765369, 33.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022573, 33.918438, 33.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918226, -0.384649, -0.094371,
		-0.390588, -0.840005, -0.376608,
		0.065589, 0.382671, -0.921553,
		28.042250, 34.033237, 32.792904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632549, 33.426167, 33.174522>,  <27.996338, 33.765369, 33.437992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632549, 33.426167, 33.174522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559376, 33.717552, 32.910442>,  <28.515471, 33.892384, 32.751995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559376, 33.717552, 32.910442>,  <28.632549, 33.426167, 33.174522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559376, 33.717552, 32.910442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938268, -0.071166, -0.338508,
		-0.293576, -0.681374, -0.670479,
		-0.182935, 0.728467, -0.660205,
		28.504496, 33.936092, 32.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831038, 33.140583, 32.427208>,  <28.632549, 33.426167, 33.174522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831038, 33.140583, 32.427208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867565, 33.535610, 32.478394>,  <28.889482, 33.772625, 32.509106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867565, 33.535610, 32.478394>,  <28.831038, 33.140583, 32.427208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867565, 33.535610, 32.478394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978036, -0.064767, -0.198119,
		-0.187367, 0.143248, -0.971789,
		0.091320, 0.987565, 0.127966,
		28.894960, 33.831879, 32.516785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408932, 33.147144, 32.961815>,  <28.831038, 33.140583, 32.427208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408932, 33.147144, 32.961815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323830, 33.329887, 32.616325>,  <29.272768, 33.439533, 32.409031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323830, 33.329887, 32.616325>,  <29.408932, 33.147144, 32.961815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323830, 33.329887, 32.616325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867309, -0.318813, -0.382272,
		-0.450010, -0.830446, -0.328405,
		-0.212757, 0.456855, -0.863723,
		29.260002, 33.466946, 32.357208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649126, 32.667927, 32.528728>,  <29.408932, 33.147144, 32.961815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649126, 32.667927, 32.528728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587368, 33.000313, 32.314941>,  <29.550314, 33.199745, 32.186668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587368, 33.000313, 32.314941>,  <29.649126, 32.667927, 32.528728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587368, 33.000313, 32.314941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788465, -0.222357, -0.573481,
		-0.595387, -0.509948, -0.620860,
		-0.154393, 0.830970, -0.534464,
		29.541050, 33.249603, 32.154602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713106, 32.517479, 31.880131>,  <29.649126, 32.667927, 32.528728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713106, 32.517479, 31.880131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792086, 32.906445, 31.830446>,  <29.839474, 33.139824, 31.800636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792086, 32.906445, 31.830446>,  <29.713106, 32.517479, 31.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792086, 32.906445, 31.830446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743363, -0.231118, -0.627691,
		-0.639082, 0.031603, -0.768489,
		0.197449, 0.972412, -0.124211,
		29.851320, 33.198170, 31.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729979, 32.777737, 31.145498>,  <29.713106, 32.517479, 31.880131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729979, 32.777737, 31.145498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981470, 32.970772, 31.389404>,  <30.132364, 33.086594, 31.535748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981470, 32.970772, 31.389404>,  <29.729979, 32.777737, 31.145498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981470, 32.970772, 31.389404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749710, -0.167963, -0.640096,
		-0.206483, 0.859593, -0.467402,
		0.628728, 0.482585, 0.609764,
		30.170088, 33.115547, 31.572334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202345, 32.167049, 31.121572>,  <29.729979, 32.777737, 31.145498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202345, 32.167049, 31.121572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240179, 31.854042, 31.367733>,  <30.262880, 31.666237, 31.515429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240179, 31.854042, 31.367733>,  <30.202345, 32.167049, 31.121572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240179, 31.854042, 31.367733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995465, 0.080649, -0.050452,
		-0.010152, 0.617383, 0.786597,
		0.094587, -0.782517, 0.615402,
		30.268555, 31.619287, 31.552353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639851, 32.512798, 31.626690>,  <30.202345, 32.167049, 31.121572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639851, 32.512798, 31.626690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636595, 32.113327, 31.606365>,  <30.634642, 31.873646, 31.594170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636595, 32.113327, 31.606365>,  <30.639851, 32.512798, 31.626690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636595, 32.113327, 31.606365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999072, -0.005973, -0.042657,
		0.042297, -0.051113, 0.997797,
		-0.008140, -0.998675, -0.050813,
		30.634153, 31.813725, 31.591122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238550, 32.217518, 32.122566>,  <30.639851, 32.512798, 31.626690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238550, 32.217518, 32.122566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140734, 31.941050, 31.850542>,  <31.082045, 31.775167, 31.687328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140734, 31.941050, 31.850542>,  <31.238550, 32.217518, 32.122566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140734, 31.941050, 31.850542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968777, -0.144591, -0.201405,
		0.040876, -0.708077, 0.704952,
		-0.244540, -0.691174, -0.680058,
		31.067371, 31.733698, 31.646524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004047, 32.059441, 32.052166>,  <31.238550, 32.217518, 32.122566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004047, 32.059441, 32.052166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973965, 32.444885, 31.949556>,  <31.955914, 32.676151, 31.887991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973965, 32.444885, 31.949556>,  <32.004047, 32.059441, 32.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973965, 32.444885, 31.949556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781260, -0.102918, -0.615662,
		-0.619658, -0.246716, -0.745088,
		-0.075211, 0.963607, -0.256523,
		31.951401, 32.733967, 31.872599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683849, 32.156342, 31.355188>,  <32.004047, 32.059441, 32.052166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683849, 32.156342, 31.355188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979639, 32.388157, 31.492195>,  <32.157112, 32.527245, 31.574398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979639, 32.388157, 31.492195>,  <31.683849, 32.156342, 31.355188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979639, 32.388157, 31.492195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669607, -0.580830, -0.462885,
		-0.069315, 0.571642, -0.817570,
		0.739474, 0.579536, 0.342515,
		32.201481, 32.562019, 31.594950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047710, 32.430389, 30.752254>,  <31.683849, 32.156342, 31.355188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047710, 32.430389, 30.752254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294865, 32.437904, 31.066671>,  <32.443157, 32.442413, 31.255322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294865, 32.437904, 31.066671>,  <32.047710, 32.430389, 30.752254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294865, 32.437904, 31.066671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565251, -0.705526, -0.427462,
		0.546543, 0.708434, -0.446555,
		0.617885, 0.018789, 0.786044,
		32.480228, 32.443542, 31.302485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734924, 32.120827, 30.290125>,  <32.047710, 32.430389, 30.752254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734924, 32.120827, 30.290125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851669, 32.486809, 30.178648>,  <32.921715, 32.706398, 30.111761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851669, 32.486809, 30.178648>,  <32.734924, 32.120827, 30.290125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851669, 32.486809, 30.178648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873939, -0.373507, -0.311003,
		-0.388649, -0.152790, -0.908629,
		0.291861, 0.914958, -0.278692,
		32.939228, 32.761295, 30.095039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012344, 32.071335, 29.715359>,  <32.734924, 32.120827, 30.290125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012344, 32.071335, 29.715359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178997, 32.425144, 29.799297>,  <33.278988, 32.637428, 29.849661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178997, 32.425144, 29.799297>,  <33.012344, 32.071335, 29.715359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178997, 32.425144, 29.799297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907852, -0.392867, -0.146492,
		-0.047133, 0.251544, -0.966697,
		0.416633, 0.884523, 0.209848,
		33.303986, 32.690502, 29.862251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627907, 32.005623, 29.319746>,  <33.012344, 32.071335, 29.715359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627907, 32.005623, 29.319746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689812, 32.285793, 29.598444>,  <33.726955, 32.453896, 29.765663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689812, 32.285793, 29.598444>,  <33.627907, 32.005623, 29.319746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689812, 32.285793, 29.598444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986536, -0.071820, -0.146930,
		-0.052873, 0.710104, -0.702109,
		0.154760, 0.700425, 0.696746,
		33.736240, 32.495922, 29.807468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933910, 32.124508, 30.099869>,  <33.627907, 32.005623, 29.319746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933910, 32.124508, 30.099869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148075, 32.331028, 29.832506>,  <34.276573, 32.454941, 29.672089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148075, 32.331028, 29.832506>,  <33.933910, 32.124508, 30.099869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148075, 32.331028, 29.832506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247827, 0.852598, 0.460064,
		0.807412, -0.080676, 0.584446,
		0.535414, 0.516303, -0.668404,
		34.308697, 32.485920, 29.631985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359509, 32.525520, 30.600210>,  <33.933910, 32.124508, 30.099869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359509, 32.525520, 30.600210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295887, 32.687992, 30.240273>,  <34.257713, 32.785477, 30.024309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295887, 32.687992, 30.240273>,  <34.359509, 32.525520, 30.600210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295887, 32.687992, 30.240273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676329, 0.619159, 0.399024,
		0.719223, 0.672056, 0.176235,
		-0.159049, 0.406180, -0.899845,
		34.248173, 32.809845, 29.970320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247887, 33.311825, 30.745499>,  <34.359509, 32.525520, 30.600210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247887, 33.311825, 30.745499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096836, 33.230633, 30.384125>,  <34.006207, 33.181915, 30.167301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096836, 33.230633, 30.384125>,  <34.247887, 33.311825, 30.745499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096836, 33.230633, 30.384125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727747, 0.668325, 0.154032,
		0.572522, 0.715639, -0.400099,
		-0.377628, -0.202984, -0.903435,
		33.983547, 33.169739, 30.113094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805153, 33.796101, 30.372578>,  <34.247887, 33.311825, 30.745499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805153, 33.796101, 30.372578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651295, 33.494865, 30.159069>,  <33.558979, 33.314125, 30.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651295, 33.494865, 30.159069>,  <33.805153, 33.796101, 30.372578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651295, 33.494865, 30.159069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919767, 0.263877, 0.290511,
		-0.077930, 0.602689, -0.794162,
		-0.384649, -0.753084, -0.533770,
		33.535900, 33.268940, 29.998938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335903, 33.990726, 29.820492>,  <33.805153, 33.796101, 30.372578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335903, 33.990726, 29.820492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217712, 33.620968, 29.916983>,  <33.146797, 33.399113, 29.974876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217712, 33.620968, 29.916983>,  <33.335903, 33.990726, 29.820492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217712, 33.620968, 29.916983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928699, 0.337149, 0.154429,
		-0.224082, -0.178397, -0.958103,
		-0.295474, -0.924395, 0.241226,
		33.129070, 33.343651, 29.989351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646389, 33.826107, 29.568302>,  <33.335903, 33.990726, 29.820492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646389, 33.826107, 29.568302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667839, 33.585846, 29.887386>,  <32.680710, 33.441689, 30.078836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667839, 33.585846, 29.887386>,  <32.646389, 33.826107, 29.568302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667839, 33.585846, 29.887386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885080, 0.341286, 0.316476,
		-0.462339, -0.723009, -0.513323,
		0.053625, -0.600651, 0.797711,
		32.683926, 33.405651, 30.126699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100338, 33.292667, 29.716934>,  <32.646389, 33.826107, 29.568302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100338, 33.292667, 29.716934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250969, 33.404465, 30.070221>,  <32.341347, 33.471542, 30.282192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250969, 33.404465, 30.070221>,  <32.100338, 33.292667, 29.716934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250969, 33.404465, 30.070221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876019, 0.417518, 0.241390,
		-0.301293, -0.864618, 0.402067,
		0.376581, 0.279489, 0.883217,
		32.363945, 33.488312, 30.335186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715437, 33.096329, 30.318768>,  <32.100338, 33.292667, 29.716934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715437, 33.096329, 30.318768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892323, 33.447273, 30.393257>,  <31.998455, 33.657841, 30.437952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892323, 33.447273, 30.393257>,  <31.715437, 33.096329, 30.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892323, 33.447273, 30.393257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890440, 0.404566, 0.208428,
		0.107527, -0.257993, 0.960145,
		0.442215, 0.877363, 0.186225,
		32.024986, 33.710484, 30.449125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570923, 33.347488, 31.022116>,  <31.715437, 33.096329, 30.318768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570923, 33.347488, 31.022116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658199, 33.674942, 30.809612>,  <31.710566, 33.871414, 30.682110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658199, 33.674942, 30.809612>,  <31.570923, 33.347488, 31.022116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658199, 33.674942, 30.809612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875078, 0.405098, 0.264828,
		0.432009, 0.407113, 0.804753,
		0.218189, 0.818629, -0.531262,
		31.723656, 33.920532, 30.650234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287285, 33.961422, 31.315289>,  <31.570923, 33.347488, 31.022116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287285, 33.961422, 31.315289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344406, 34.115425, 30.950571>,  <31.378679, 34.207829, 30.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344406, 34.115425, 30.950571>,  <31.287285, 33.961422, 31.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344406, 34.115425, 30.950571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826986, 0.552557, 0.103799,
		0.543783, 0.739219, 0.397310,
		0.142806, 0.385014, -0.911796,
		31.387247, 34.230930, 30.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078039, 34.638428, 31.341986>,  <31.287285, 33.961422, 31.315289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078039, 34.638428, 31.341986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062614, 34.543480, 30.953724>,  <31.053360, 34.486511, 30.720768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062614, 34.543480, 30.953724>,  <31.078039, 34.638428, 31.341986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062614, 34.543480, 30.953724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905152, 0.419820, -0.066708,
		0.423334, 0.876016, -0.231048,
		-0.038562, -0.237374, -0.970653,
		31.051046, 34.472267, 30.662529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056585, 35.286850, 30.956694>,  <31.078039, 34.638428, 31.341986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056585, 35.286850, 30.956694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897718, 35.003830, 30.722898>,  <30.802399, 34.834019, 30.582621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897718, 35.003830, 30.722898>,  <31.056585, 35.286850, 30.956694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897718, 35.003830, 30.722898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841993, 0.534299, -0.074653,
		0.365112, 0.462485, -0.807961,
		-0.397166, -0.707554, -0.584488,
		30.778568, 34.791565, 30.547552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799253, 35.592331, 30.349010>,  <31.056585, 35.286850, 30.956694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799253, 35.592331, 30.349010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593542, 35.252541, 30.396175>,  <30.470116, 35.048664, 30.424475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593542, 35.252541, 30.396175>,  <30.799253, 35.592331, 30.349010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593542, 35.252541, 30.396175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857567, 0.507772, -0.082143,
		0.009907, -0.143360, -0.989621,
		-0.514278, -0.849480, 0.117910,
		30.439259, 34.997696, 30.431549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361111, 35.522869, 29.740021>,  <30.799253, 35.592331, 30.349010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361111, 35.522869, 29.740021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209105, 35.354092, 30.069275>,  <30.117901, 35.252827, 30.266829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209105, 35.354092, 30.069275>,  <30.361111, 35.522869, 29.740021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209105, 35.354092, 30.069275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781592, 0.622388, -0.041800,
		-0.494673, -0.659242, -0.566303,
		-0.380016, -0.421941, 0.823136,
		30.095100, 35.227509, 30.316216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553122, 35.591187, 29.743345>,  <30.361111, 35.522869, 29.740021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553122, 35.591187, 29.743345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632532, 35.558933, 30.134054>,  <29.680178, 35.539581, 30.368479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632532, 35.558933, 30.134054>,  <29.553122, 35.591187, 29.743345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632532, 35.558933, 30.134054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769737, 0.604101, 0.206318,
		-0.606706, -0.792818, 0.057862,
		0.198527, -0.080636, 0.976773,
		29.692091, 35.534744, 30.427086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010483, 35.387295, 30.184080>,  <29.553122, 35.591187, 29.743345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010483, 35.387295, 30.184080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262167, 35.636444, 30.370039>,  <29.413177, 35.785934, 30.481613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262167, 35.636444, 30.370039>,  <29.010483, 35.387295, 30.184080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262167, 35.636444, 30.370039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755972, 0.629403, 0.179883,
		-0.180563, -0.464633, 0.866899,
		0.629209, 0.622871, 0.464896,
		29.450930, 35.823307, 30.509508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751095, 35.548607, 30.793043>,  <29.010483, 35.387295, 30.184080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751095, 35.548607, 30.793043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972086, 35.864166, 30.685413>,  <29.104681, 36.053501, 30.620834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972086, 35.864166, 30.685413>,  <28.751095, 35.548607, 30.793043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972086, 35.864166, 30.685413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755978, 0.610225, 0.236901,
		0.351089, 0.072533, 0.933528,
		0.552479, 0.788901, -0.269077,
		29.137829, 36.100838, 30.604691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092636, 35.970325, 31.318611>,  <28.751095, 35.548607, 30.793043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092636, 35.970325, 31.318611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015331, 35.583328, 31.253370>,  <28.968948, 35.351128, 31.214226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015331, 35.583328, 31.253370>,  <29.092636, 35.970325, 31.318611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015331, 35.583328, 31.253370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876838, -0.095725, -0.471160,
		0.440233, -0.234072, 0.866837,
		-0.193264, -0.967495, -0.163102,
		28.957352, 35.293079, 31.204439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765541, 35.628399, 31.289919>,  <29.092636, 35.970325, 31.318611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765541, 35.628399, 31.289919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499531, 35.393791, 31.104990>,  <29.339926, 35.253029, 30.994032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499531, 35.393791, 31.104990>,  <29.765541, 35.628399, 31.289919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499531, 35.393791, 31.104990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739752, -0.432355, -0.515593,
		0.102517, -0.684886, 0.721403,
		-0.665025, -0.586516, -0.462322,
		29.300024, 35.217838, 30.966293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899307, 34.841312, 31.399183>,  <29.765541, 35.628399, 31.289919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899307, 34.841312, 31.399183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701157, 34.883301, 31.054258>,  <29.582266, 34.908493, 30.847303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701157, 34.883301, 31.054258>,  <29.899307, 34.841312, 31.399183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701157, 34.883301, 31.054258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753697, -0.441618, -0.486739,
		-0.431909, -0.891041, 0.139646,
		-0.495374, 0.104976, -0.862313,
		29.552544, 34.914791, 30.795565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660078, 34.178768, 31.110777>,  <29.899307, 34.841312, 31.399183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660078, 34.178768, 31.110777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761934, 34.449551, 30.834549>,  <29.823048, 34.612022, 30.668812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761934, 34.449551, 30.834549>,  <29.660078, 34.178768, 31.110777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761934, 34.449551, 30.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870937, -0.470891, -0.140462,
		-0.420270, -0.565676, -0.709496,
		0.254639, 0.676958, -0.690570,
		29.838326, 34.652637, 30.627378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903391, 33.841740, 30.508066>,  <29.660078, 34.178768, 31.110777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903391, 33.841740, 30.508066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066124, 34.206253, 30.482624>,  <30.163763, 34.424961, 30.467358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066124, 34.206253, 30.482624>,  <29.903391, 33.841740, 30.508066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066124, 34.206253, 30.482624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882360, -0.410034, -0.230895,
		-0.236492, 0.037811, -0.970897,
		0.406832, 0.911286, -0.063607,
		30.188173, 34.479637, 30.463543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196972, 33.874249, 29.876331>,  <29.903391, 33.841740, 30.508066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196972, 33.874249, 29.876331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380108, 34.133606, 30.119633>,  <30.489988, 34.289219, 30.265614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380108, 34.133606, 30.119633>,  <30.196972, 33.874249, 29.876331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380108, 34.133606, 30.119633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887287, -0.376148, -0.266898,
		0.055737, 0.661889, -0.747526,
		0.457838, 0.648394, 0.608251,
		30.517460, 34.328125, 30.302109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841166, 34.048248, 29.482374>,  <30.196972, 33.874249, 29.876331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841166, 34.048248, 29.482374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920233, 34.203728, 29.842339>,  <30.967672, 34.297016, 30.058317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920233, 34.203728, 29.842339>,  <30.841166, 34.048248, 29.482374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920233, 34.203728, 29.842339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966733, -0.229333, -0.113289,
		0.162345, 0.892368, -0.421099,
		0.197667, 0.388698, 0.899912,
		30.979532, 34.320335, 30.112312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349945, 34.504253, 29.450504>,  <30.841166, 34.048248, 29.482374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349945, 34.504253, 29.450504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375544, 34.436691, 29.843925>,  <31.390903, 34.396152, 30.079979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375544, 34.436691, 29.843925>,  <31.349945, 34.504253, 29.450504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375544, 34.436691, 29.843925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964317, -0.243245, -0.104517,
		0.256898, 0.955145, 0.147312,
		0.063996, -0.168906, 0.983552,
		31.394743, 34.386021, 30.138990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890066, 34.903927, 29.856060>,  <31.349945, 34.504253, 29.450504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890066, 34.903927, 29.856060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846487, 34.560177, 30.055901>,  <31.820339, 34.353928, 30.175806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846487, 34.560177, 30.055901>,  <31.890066, 34.903927, 29.856060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846487, 34.560177, 30.055901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993122, -0.115781, 0.017407,
		0.042885, 0.498064, 0.866079,
		-0.108945, -0.859376, 0.499604,
		31.813803, 34.302364, 30.205782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439430, 34.913883, 30.317577>,  <31.890066, 34.903927, 29.856060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439430, 34.913883, 30.317577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302193, 34.538250, 30.309429>,  <32.219849, 34.312870, 30.304541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302193, 34.538250, 30.309429>,  <32.439430, 34.913883, 30.317577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302193, 34.538250, 30.309429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917162, -0.339612, 0.208512,
		-0.202726, 0.052858, 0.977808,
		-0.343097, -0.939079, -0.020369,
		32.199265, 34.256527, 30.303318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957382, 35.399044, 30.218779>,  <32.439430, 34.913883, 30.317577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957382, 35.399044, 30.218779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016666, 35.794056, 30.197563>,  <33.052238, 36.031063, 30.184834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016666, 35.794056, 30.197563>,  <32.957382, 35.399044, 30.218779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016666, 35.794056, 30.197563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002038, -0.053328, -0.998575,
		-0.988954, 0.148108, -0.005892,
		0.148211, 0.987532, -0.053041,
		33.061131, 36.090317, 30.181650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521584, 35.626511, 29.688669>,  <32.957382, 35.399044, 30.218779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521584, 35.626511, 29.688669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814854, 35.893707, 29.739637>,  <32.990818, 36.054024, 29.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814854, 35.893707, 29.739637>,  <32.521584, 35.626511, 29.688669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814854, 35.893707, 29.739637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112854, 0.065256, -0.991466,
		-0.670606, 0.741302, -0.027542,
		0.733179, 0.667991, 0.127420,
		33.034809, 36.094105, 29.777863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361458, 36.154297, 29.192938>,  <32.521584, 35.626511, 29.688669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361458, 36.154297, 29.192938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748974, 36.204311, 29.278561>,  <32.981483, 36.234322, 29.329935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748974, 36.204311, 29.278561>,  <32.361458, 36.154297, 29.192938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748974, 36.204311, 29.278561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206601, 0.069994, -0.975918,
		-0.137007, 0.989680, 0.041977,
		0.968785, 0.125035, 0.214059,
		33.039608, 36.241821, 29.342779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557510, 36.692329, 28.689123>,  <32.361458, 36.154297, 29.192938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557510, 36.692329, 28.689123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911900, 36.548042, 28.805695>,  <33.124535, 36.461472, 28.875637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911900, 36.548042, 28.805695>,  <32.557510, 36.692329, 28.689123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911900, 36.548042, 28.805695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245984, -0.167176, -0.954748,
		0.393113, 0.917570, -0.059384,
		0.885976, -0.360717, 0.291427,
		33.177692, 36.439827, 28.893124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960804, 36.984615, 28.302851>,  <32.557510, 36.692329, 28.689123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960804, 36.984615, 28.302851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197094, 36.684967, 28.422760>,  <33.338867, 36.505180, 28.494705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197094, 36.684967, 28.422760>,  <32.960804, 36.984615, 28.302851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197094, 36.684967, 28.422760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324560, -0.119533, -0.938282,
		0.738716, 0.651563, 0.172522,
		0.590728, -0.749118, 0.299772,
		33.374313, 36.460232, 28.512691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542492, 37.077446, 27.973597>,  <32.960804, 36.984615, 28.302851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542492, 37.077446, 27.973597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568169, 36.689758, 28.068663>,  <33.583576, 36.457146, 28.125702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568169, 36.689758, 28.068663>,  <33.542492, 37.077446, 27.973597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568169, 36.689758, 28.068663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344695, -0.201966, -0.916731,
		0.936517, 0.140769, 0.321121,
		0.064192, -0.969223, 0.237667,
		33.587425, 36.398991, 28.139963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252724, 36.857494, 27.751684>,  <33.542492, 37.077446, 27.973597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252724, 36.857494, 27.751684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062267, 36.507332, 27.785046>,  <33.947994, 36.297234, 27.805063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062267, 36.507332, 27.785046>,  <34.252724, 36.857494, 27.751684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062267, 36.507332, 27.785046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357497, -0.279353, -0.891155,
		0.803419, -0.394502, 0.445967,
		-0.476145, -0.875403, 0.083404,
		33.919422, 36.244713, 27.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754147, 36.302002, 27.723881>,  <34.252724, 36.857494, 27.751684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754147, 36.302002, 27.723881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398010, 36.174778, 27.593571>,  <34.184330, 36.098442, 27.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398010, 36.174778, 27.593571>,  <34.754147, 36.302002, 27.723881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398010, 36.174778, 27.593571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404904, -0.225938, -0.886005,
		0.208199, -0.920754, 0.329946,
		-0.890340, -0.318061, -0.325777,
		34.130909, 36.079361, 27.495838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978561, 35.776325, 27.328569>,  <34.754147, 36.302002, 27.723881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978561, 35.776325, 27.328569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592075, 35.822342, 27.236315>,  <34.360184, 35.849953, 27.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592075, 35.822342, 27.236315>,  <34.978561, 35.776325, 27.328569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592075, 35.822342, 27.236315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170565, -0.385459, -0.906824,
		-0.193220, -0.915526, 0.352815,
		-0.966216, 0.115038, -0.230635,
		34.302212, 35.856853, 27.167124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849487, 35.175087, 27.021391>,  <34.978561, 35.776325, 27.328569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849487, 35.175087, 27.021391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566074, 35.423367, 26.887104>,  <34.396027, 35.572334, 26.806532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566074, 35.423367, 26.887104>,  <34.849487, 35.175087, 27.021391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566074, 35.423367, 26.887104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003860, -0.479143, -0.877728,
		-0.705665, -0.620605, 0.341886,
		-0.708535, 0.620702, -0.335719,
		34.353512, 35.609577, 26.786388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383514, 34.794559, 26.693312>,  <34.849487, 35.175087, 27.021391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383514, 34.794559, 26.693312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309853, 35.152004, 26.529581>,  <34.265656, 35.366470, 26.431343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309853, 35.152004, 26.529581>,  <34.383514, 34.794559, 26.693312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309853, 35.152004, 26.529581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029169, -0.411295, -0.911035,
		-0.982464, -0.179712, 0.049676,
		-0.184155, 0.893611, -0.409325,
		34.254604, 35.420086, 26.406784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783943, 34.755604, 26.233927>,  <34.383514, 34.794559, 26.693312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783943, 34.755604, 26.233927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009911, 35.064327, 26.117182>,  <34.145493, 35.249561, 26.047134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009911, 35.064327, 26.117182>,  <33.783943, 34.755604, 26.233927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009911, 35.064327, 26.117182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034806, -0.331105, -0.942952,
		-0.824412, 0.542849, -0.160184,
		0.564918, 0.771806, -0.291862,
		34.179386, 35.295868, 26.029623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604824, 34.726635, 25.540297>,  <33.783943, 34.755604, 26.233927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604824, 34.726635, 25.540297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903458, 34.992737, 25.543255>,  <34.082638, 35.152397, 25.545031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903458, 34.992737, 25.543255>,  <33.604824, 34.726635, 25.540297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903458, 34.992737, 25.543255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179548, -0.190770, -0.965075,
		-0.640607, 0.721836, -0.261871,
		0.746582, 0.665252, 0.007396,
		34.127434, 35.192314, 25.545473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434048, 35.190014, 24.969976>,  <33.604824, 34.726635, 25.540297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434048, 35.190014, 24.969976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818668, 35.270477, 25.044752>,  <34.049442, 35.318756, 25.089617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818668, 35.270477, 25.044752>,  <33.434048, 35.190014, 24.969976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818668, 35.270477, 25.044752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188003, 0.013977, -0.982069,
		-0.200163, 0.979459, -0.024379,
		0.961556, 0.201157, 0.186939,
		34.107136, 35.330826, 25.100834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638409, 35.688736, 24.548712>,  <33.434048, 35.190014, 24.969976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638409, 35.688736, 24.548712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976826, 35.496620, 24.641256>,  <34.179878, 35.381351, 24.696783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976826, 35.496620, 24.641256>,  <33.638409, 35.688736, 24.548712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976826, 35.496620, 24.641256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257041, -0.012698, -0.966317,
		0.467051, 0.877018, 0.112711,
		0.846046, -0.480290, 0.231360,
		34.230640, 35.352531, 24.710665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176311, 36.135818, 24.330572>,  <33.638409, 35.688736, 24.548712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176311, 36.135818, 24.330572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328022, 35.765770, 24.337564>,  <34.419048, 35.543743, 24.341761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328022, 35.765770, 24.337564>,  <34.176311, 36.135818, 24.330572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328022, 35.765770, 24.337564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326520, 0.116142, -0.938028,
		0.865756, 0.361481, 0.346119,
		0.379278, -0.925117, 0.017480,
		34.441807, 35.488235, 24.342808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910351, 36.141994, 24.029680>,  <34.176311, 36.135818, 24.330572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910351, 36.141994, 24.029680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816692, 35.753235, 24.020048>,  <34.760498, 35.519978, 24.014269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816692, 35.753235, 24.020048>,  <34.910351, 36.141994, 24.029680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816692, 35.753235, 24.020048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249803, -0.036209, -0.967620,
		0.939560, -0.232581, 0.251262,
		-0.234148, -0.971903, -0.024079,
		34.746449, 35.461662, 24.012825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450848, 35.794891, 23.568031>,  <34.910351, 36.141994, 24.029680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450848, 35.794891, 23.568031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118244, 35.573925, 23.591452>,  <34.918682, 35.441345, 23.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118244, 35.573925, 23.591452>,  <35.450848, 35.794891, 23.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118244, 35.573925, 23.591452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118373, -0.279178, -0.952915,
		0.542751, -0.785428, 0.297530,
		-0.831511, -0.552415, 0.058551,
		34.868790, 35.408199, 23.609016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617172, 35.152676, 23.154680>,  <35.450848, 35.794891, 23.568031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617172, 35.152676, 23.154680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220898, 35.187279, 23.196758>,  <34.983135, 35.208042, 23.222004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220898, 35.187279, 23.196758>,  <35.617172, 35.152676, 23.154680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220898, 35.187279, 23.196758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120827, -0.201815, -0.971942,
		-0.062850, -0.975596, 0.210387,
		-0.990682, 0.086507, 0.105194,
		34.923695, 35.213230, 23.228317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394020, 34.611595, 22.754734>,  <35.617172, 35.152676, 23.154680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394020, 34.611595, 22.754734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068077, 34.841293, 22.786360>,  <34.872509, 34.979111, 22.805336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068077, 34.841293, 22.786360>,  <35.394020, 34.611595, 22.754734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068077, 34.841293, 22.786360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208431, -0.162991, -0.964360,
		-0.540889, -0.802297, 0.252504,
		-0.814859, 0.574242, 0.079063,
		34.823620, 35.013565, 22.810080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936565, 34.169983, 22.481615>,  <35.394020, 34.611595, 22.754734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936565, 34.169983, 22.481615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803108, 34.545128, 22.443451>,  <34.723034, 34.770214, 22.420551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803108, 34.545128, 22.443451>,  <34.936565, 34.169983, 22.481615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803108, 34.545128, 22.443451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156925, -0.155054, -0.975363,
		-0.929547, -0.310449, 0.198906,
		-0.333642, 0.937859, -0.095413,
		34.703014, 34.826485, 22.414827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238628, 34.191589, 22.184643>,  <34.936565, 34.169983, 22.481615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238628, 34.191589, 22.184643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369347, 34.559135, 22.096193>,  <34.447777, 34.779663, 22.043123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369347, 34.559135, 22.096193>,  <34.238628, 34.191589, 22.184643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369347, 34.559135, 22.096193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236737, -0.146924, -0.960400,
		-0.914965, 0.366201, 0.169515,
		0.326794, 0.918863, -0.221124,
		34.467384, 34.834793, 22.029856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825188, 34.398666, 21.700125>,  <34.238628, 34.191589, 22.184643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825188, 34.398666, 21.700125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121899, 34.665356, 21.671173>,  <34.299927, 34.825371, 21.653803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121899, 34.665356, 21.671173>,  <33.825188, 34.398666, 21.700125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121899, 34.665356, 21.671173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086939, -0.011414, -0.996148,
		-0.664986, 0.745214, 0.049498,
		0.741779, 0.666728, -0.072378,
		34.344433, 34.865376, 21.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661385, 34.803406, 21.152601>,  <33.825188, 34.398666, 21.700125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661385, 34.803406, 21.152601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047913, 34.901894, 21.182522>,  <34.279831, 34.960987, 21.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047913, 34.901894, 21.182522>,  <33.661385, 34.803406, 21.152601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047913, 34.901894, 21.182522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054053, 0.089984, -0.994475,
		-0.251591, 0.965028, 0.073645,
		0.966323, 0.246220, 0.074802,
		34.337811, 34.975761, 21.204962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789326, 35.308685, 20.598213>,  <33.661385, 34.803406, 21.152601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789326, 35.308685, 20.598213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155380, 35.182205, 20.698244>,  <34.375011, 35.106316, 20.758263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155380, 35.182205, 20.698244>,  <33.789326, 35.308685, 20.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155380, 35.182205, 20.698244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238979, -0.074078, -0.968195,
		0.324672, 0.945795, 0.007775,
		0.915138, -0.316204, 0.250076,
		34.429920, 35.087345, 20.773268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281902, 35.863262, 20.390661>,  <33.789326, 35.308685, 20.598213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281902, 35.863262, 20.390661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481941, 35.517567, 20.412527>,  <34.601963, 35.310150, 20.425646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481941, 35.517567, 20.412527>,  <34.281902, 35.863262, 20.390661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481941, 35.517567, 20.412527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311925, 0.120891, -0.942384,
		0.807840, 0.488334, 0.330036,
		0.500097, -0.864243, 0.054663,
		34.631969, 35.258293, 20.428926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929882, 35.988483, 20.109285>,  <34.281902, 35.863262, 20.390661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929882, 35.988483, 20.109285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945015, 35.589027, 20.123652>,  <34.954094, 35.349354, 20.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945015, 35.589027, 20.123652>,  <34.929882, 35.988483, 20.109285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945015, 35.589027, 20.123652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453789, -0.014856, -0.890985,
		0.890306, 0.050003, 0.452609,
		0.037828, -0.998639, 0.035917,
		34.956364, 35.289436, 20.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560261, 35.824177, 19.915499>,  <34.929882, 35.988483, 20.109285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560261, 35.824177, 19.915499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342873, 35.498558, 19.833546>,  <35.212440, 35.303188, 19.784374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342873, 35.498558, 19.833546>,  <35.560261, 35.824177, 19.915499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342873, 35.498558, 19.833546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474903, -0.096908, -0.874686,
		0.692178, -0.572662, 0.439258,
		-0.543468, -0.814044, -0.204881,
		35.179832, 35.254345, 19.772081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007645, 35.281082, 19.740618>,  <35.560261, 35.824177, 19.915499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007645, 35.281082, 19.740618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649036, 35.196289, 19.585018>,  <35.433872, 35.145412, 19.491659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649036, 35.196289, 19.585018>,  <36.007645, 35.281082, 19.740618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649036, 35.196289, 19.585018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419590, -0.124598, -0.899122,
		0.142130, -0.969298, 0.200650,
		-0.896517, -0.211983, -0.388998,
		35.380081, 35.132694, 19.468319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066654, 34.582924, 19.333305>,  <36.007645, 35.281082, 19.740618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066654, 34.582924, 19.333305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749844, 34.795094, 19.212420>,  <35.559757, 34.922398, 19.139889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749844, 34.795094, 19.212420>,  <36.066654, 34.582924, 19.333305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749844, 34.795094, 19.212420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326837, -0.049692, -0.943774,
		-0.515621, -0.846273, -0.134006,
		-0.792031, 0.530427, -0.302215,
		35.512234, 34.954220, 19.121756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887711, 34.236061, 18.767229>,  <36.066654, 34.582924, 19.333305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887711, 34.236061, 18.767229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728527, 34.602089, 18.741062>,  <35.633015, 34.821705, 18.725363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728527, 34.602089, 18.741062>,  <35.887711, 34.236061, 18.767229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728527, 34.602089, 18.741062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232636, 0.031685, -0.972048,
		-0.887416, -0.402056, -0.225487,
		-0.397962, 0.915066, -0.065415,
		35.609138, 34.876610, 18.721437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536606, 34.251225, 18.043142>,  <35.887711, 34.236061, 18.767229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536606, 34.251225, 18.043142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581474, 34.631844, 18.157667>,  <35.608395, 34.860214, 18.226381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581474, 34.631844, 18.157667>,  <35.536606, 34.251225, 18.043142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581474, 34.631844, 18.157667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147270, 0.269029, -0.951806,
		-0.982715, 0.148934, -0.109956,
		0.112175, 0.951547, 0.286312,
		35.615128, 34.917309, 18.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177711, 34.641109, 17.518570>,  <35.536606, 34.251225, 18.043142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177711, 34.641109, 17.518570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417099, 34.913662, 17.687119>,  <35.560734, 35.077194, 17.788248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417099, 34.913662, 17.687119>,  <35.177711, 34.641109, 17.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417099, 34.913662, 17.687119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231590, 0.356364, -0.905191,
		-0.766941, 0.639315, 0.055472,
		0.598471, 0.681382, 0.421369,
		35.596642, 35.118076, 17.813530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035900, 35.196568, 17.165028>,  <35.177711, 34.641109, 17.518570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035900, 35.196568, 17.165028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391964, 35.296978, 17.317133>,  <35.605602, 35.357224, 17.408396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391964, 35.296978, 17.317133>,  <35.035900, 35.196568, 17.165028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391964, 35.296978, 17.317133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259379, 0.406969, -0.875842,
		-0.374618, 0.878271, 0.297155,
		0.890159, 0.251030, 0.380263,
		35.659012, 35.372288, 17.431211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157707, 35.849293, 16.943909>,  <35.035900, 35.196568, 17.165028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157707, 35.849293, 16.943909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524193, 35.726669, 17.047115>,  <35.744083, 35.653095, 17.109039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524193, 35.726669, 17.047115>,  <35.157707, 35.849293, 16.943909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524193, 35.726669, 17.047115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368417, 0.391326, -0.843287,
		0.157550, 0.867689, 0.471481,
		0.916213, -0.306561, 0.258017,
		35.799057, 35.634701, 17.124521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580643, 36.441040, 16.960974>,  <35.157707, 35.849293, 16.943909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580643, 36.441040, 16.960974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813961, 36.122147, 16.898777>,  <35.953953, 35.930809, 16.861460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813961, 36.122147, 16.898777>,  <35.580643, 36.441040, 16.960974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813961, 36.122147, 16.898777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399649, 0.448345, -0.799542,
		0.707137, 0.404230, 0.580134,
		0.583299, -0.797236, -0.155492,
		35.988953, 35.882977, 16.852129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345459, 36.683292, 16.915468>,  <35.580643, 36.441040, 16.960974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345459, 36.683292, 16.915468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309162, 36.330669, 16.730160>,  <36.287384, 36.119095, 16.618975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309162, 36.330669, 16.730160>,  <36.345459, 36.683292, 16.915468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309162, 36.330669, 16.730160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210597, 0.437685, -0.874117,
		0.973352, -0.176882, 0.145937,
		-0.090741, -0.881558, -0.463273,
		36.281940, 36.066200, 16.591179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013554, 36.542107, 16.534582>,  <36.345459, 36.683292, 16.915468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013554, 36.542107, 16.534582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723526, 36.321102, 16.370144>,  <36.549507, 36.188499, 16.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723526, 36.321102, 16.370144>,  <37.013554, 36.542107, 16.534582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723526, 36.321102, 16.370144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301921, 0.281483, -0.910830,
		0.618962, -0.784536, -0.037280,
		-0.725072, -0.552513, -0.411095,
		36.506004, 36.155350, 16.246815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372906, 36.172108, 15.977894>,  <37.013554, 36.542107, 16.534582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372906, 36.172108, 15.977894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983749, 36.179100, 15.885652>,  <36.750256, 36.183296, 15.830306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983749, 36.179100, 15.885652>,  <37.372906, 36.172108, 15.977894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983749, 36.179100, 15.885652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228679, 0.221499, -0.947968,
		0.034503, -0.975004, -0.219493,
		-0.972890, 0.017486, -0.230605,
		36.691883, 36.184345, 15.816470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358452, 35.860672, 15.243810>,  <37.372906, 36.172108, 15.977894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358452, 35.860672, 15.243810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006565, 36.043968, 15.294583>,  <36.795433, 36.153946, 15.325047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006565, 36.043968, 15.294583>,  <37.358452, 35.860672, 15.243810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006565, 36.043968, 15.294583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057826, 0.161865, -0.985117,
		-0.471966, -0.873965, -0.115898,
		-0.879718, 0.458240, 0.126933,
		36.742649, 36.181438, 15.332664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097111, 35.590698, 14.656126>,  <37.358452, 35.860672, 15.243810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097111, 35.590698, 14.656126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853230, 35.882793, 14.779428>,  <36.706902, 36.058048, 14.853409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853230, 35.882793, 14.779428>,  <37.097111, 35.590698, 14.656126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853230, 35.882793, 14.779428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208255, 0.227655, -0.951212,
		-0.764784, -0.644150, 0.013274,
		-0.609701, 0.730236, 0.308254,
		36.670319, 36.101864, 14.871903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508877, 35.426197, 14.304689>,  <37.097111, 35.590698, 14.656126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508877, 35.426197, 14.304689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490326, 35.816765, 14.389033>,  <36.479195, 36.051105, 14.439640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490326, 35.816765, 14.389033>,  <36.508877, 35.426197, 14.304689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490326, 35.816765, 14.389033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273746, 0.190585, -0.942730,
		-0.960684, -0.101439, 0.258452,
		-0.046373, 0.976416, 0.210860,
		36.476414, 36.109688, 14.452291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835052, 35.812450, 14.116497>,  <36.508877, 35.426197, 14.304689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835052, 35.812450, 14.116497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119545, 36.093521, 14.108534>,  <36.290241, 36.262165, 14.103756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119545, 36.093521, 14.108534>,  <35.835052, 35.812450, 14.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119545, 36.093521, 14.108534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189891, 0.164780, -0.967879,
		-0.676824, 0.692167, 0.250628,
		0.711232, 0.702675, -0.019909,
		36.332916, 36.304325, 14.102561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584850, 36.263489, 13.571334>,  <35.835052, 35.812450, 14.116497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584850, 36.263489, 13.571334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961926, 36.385204, 13.626094>,  <36.188171, 36.458233, 13.658950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961926, 36.385204, 13.626094>,  <35.584850, 36.263489, 13.571334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961926, 36.385204, 13.626094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007807, 0.430298, -0.902653,
		-0.333572, 0.849855, 0.408015,
		0.942692, 0.304285, 0.136901,
		36.244732, 36.476490, 13.667164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643234, 37.031136, 13.658106>,  <35.584850, 36.263489, 13.571334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643234, 37.031136, 13.658106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991726, 36.875481, 13.538415>,  <36.200821, 36.782089, 13.466600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991726, 36.875481, 13.538415>,  <35.643234, 37.031136, 13.658106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991726, 36.875481, 13.538415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167314, 0.337667, -0.926276,
		0.461489, 0.857060, 0.229076,
		0.871226, -0.389138, -0.299228,
		36.253094, 36.758739, 13.448647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084797, 37.545994, 13.276159>,  <35.643234, 37.031136, 13.658106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084797, 37.545994, 13.276159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172371, 37.179131, 13.142961>,  <36.224915, 36.959011, 13.063042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172371, 37.179131, 13.142961>,  <36.084797, 37.545994, 13.276159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172371, 37.179131, 13.142961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107143, 0.316615, -0.942484,
		0.969840, 0.242017, -0.028951,
		0.218931, -0.917160, -0.332996,
		36.238049, 36.903984, 13.043062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034416, 38.282017, 12.975574>,  <36.084797, 37.545994, 13.276159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034416, 38.282017, 12.975574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071877, 38.588516, 12.721300>,  <36.094353, 38.772415, 12.568736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071877, 38.588516, 12.721300>,  <36.034416, 38.282017, 12.975574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071877, 38.588516, 12.721300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921352, 0.175248, 0.346983,
		0.377277, -0.618186, -0.689570,
		0.093654, 0.766246, -0.635685,
		36.099972, 38.818390, 12.530595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675011, 38.181343, 12.794333>,  <36.034416, 38.282017, 12.975574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675011, 38.181343, 12.794333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552845, 38.554520, 12.718076>,  <36.479546, 38.778427, 12.672321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552845, 38.554520, 12.718076>,  <36.675011, 38.181343, 12.794333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552845, 38.554520, 12.718076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905010, 0.346651, 0.246555,
		0.296109, -0.097235, -0.950192,
		-0.305411, 0.932941, -0.190645,
		36.461220, 38.834400, 12.660882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209972, 38.074863, 13.298547>,  <36.675011, 38.181343, 12.794333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209972, 38.074863, 13.298547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515656, 38.083050, 13.040690>,  <37.699066, 38.087963, 12.885977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515656, 38.083050, 13.040690>,  <37.209972, 38.074863, 13.298547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515656, 38.083050, 13.040690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486972, 0.637043, 0.597523,
		0.422892, -0.770556, 0.476870,
		0.764213, 0.020465, -0.644640,
		37.744919, 38.089188, 12.847299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829773, 37.780350, 13.588862>,  <37.209972, 38.074863, 13.298547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829773, 37.780350, 13.588862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896530, 38.071903, 13.323268>,  <37.936584, 38.246834, 13.163911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896530, 38.071903, 13.323268>,  <37.829773, 37.780350, 13.588862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896530, 38.071903, 13.323268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496540, 0.519668, 0.695265,
		0.851818, -0.445733, -0.275188,
		0.166897, 0.728881, -0.663987,
		37.946598, 38.290569, 13.124072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542145, 38.014427, 13.343547>,  <37.829773, 37.780350, 13.588862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542145, 38.014427, 13.343547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249195, 38.280796, 13.400369>,  <38.073425, 38.440617, 13.434462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249195, 38.280796, 13.400369>,  <38.542145, 38.014427, 13.343547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249195, 38.280796, 13.400369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332874, 0.168161, 0.927856,
		0.593989, 0.726824, -0.344824,
		-0.732374, 0.665919, 0.142055,
		38.029484, 38.480572, 13.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822601, 38.389076, 13.916959>,  <38.542145, 38.014427, 13.343547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822601, 38.389076, 13.916959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468838, 38.565533, 13.856009>,  <38.256580, 38.671406, 13.819440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468838, 38.565533, 13.856009>,  <38.822601, 38.389076, 13.916959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468838, 38.565533, 13.856009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064110, 0.438215, 0.896581,
		0.462292, 0.783174, -0.415842,
		-0.884407, 0.441142, -0.152374,
		38.203514, 38.697876, 13.810297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775234, 39.068855, 14.343998>,  <38.822601, 38.389076, 13.916959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775234, 39.068855, 14.343998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430721, 38.877682, 14.274987>,  <38.224014, 38.762978, 14.233581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430721, 38.877682, 14.274987>,  <38.775234, 39.068855, 14.343998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430721, 38.877682, 14.274987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361734, 0.338278, 0.868744,
		-0.356843, 0.810645, -0.464240,
		-0.861285, -0.477937, -0.172526,
		38.172337, 38.734303, 14.223229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192070, 39.479065, 14.466001>,  <38.775234, 39.068855, 14.343998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192070, 39.479065, 14.466001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069775, 39.104729, 14.536115>,  <37.996399, 38.880127, 14.578183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069775, 39.104729, 14.536115>,  <38.192070, 39.479065, 14.466001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069775, 39.104729, 14.536115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468404, 0.308122, 0.828045,
		-0.828928, 0.171060, -0.532556,
		-0.305737, -0.935842, 0.175286,
		37.978054, 38.823975, 14.588700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481365, 39.584522, 14.664654>,  <38.192070, 39.479065, 14.466001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481365, 39.584522, 14.664654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604374, 39.226940, 14.795054>,  <37.678181, 39.012390, 14.873295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604374, 39.226940, 14.795054>,  <37.481365, 39.584522, 14.664654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604374, 39.226940, 14.795054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375145, 0.200952, 0.904922,
		-0.874469, -0.400582, -0.273565,
		0.307522, -0.893954, 0.326003,
		37.696632, 38.958755, 14.892856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992096, 39.434559, 15.066812>,  <37.481365, 39.584522, 14.664654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992096, 39.434559, 15.066812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273304, 39.187458, 15.207746>,  <37.442028, 39.039196, 15.292306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273304, 39.187458, 15.207746>,  <36.992096, 39.434559, 15.066812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273304, 39.187458, 15.207746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261739, 0.235902, 0.935865,
		-0.661249, -0.750155, 0.004155,
		0.703024, -0.617752, 0.352335,
		37.484211, 39.002132, 15.313446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608421, 38.914703, 15.493000>,  <36.992096, 39.434559, 15.066812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608421, 38.914703, 15.493000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991810, 38.904087, 15.606578>,  <37.221844, 38.897717, 15.674725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991810, 38.904087, 15.606578>,  <36.608421, 38.914703, 15.493000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991810, 38.904087, 15.606578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285178, -0.083099, 0.954866,
		-0.001744, -0.996188, -0.087216,
		0.958473, -0.026537, 0.283946,
		37.279350, 38.896126, 15.691761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702011, 38.296165, 15.966506>,  <36.608421, 38.914703, 15.493000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702011, 38.296165, 15.966506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018532, 38.526215, 16.049530>,  <37.208443, 38.664242, 16.099344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018532, 38.526215, 16.049530>,  <36.702011, 38.296165, 15.966506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018532, 38.526215, 16.049530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143443, -0.155374, 0.977386,
		0.594364, -0.803178, -0.040451,
		0.791300, 0.575120, 0.207559,
		37.255920, 38.698750, 16.111797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004284, 37.950966, 16.506378>,  <36.702011, 38.296165, 15.966506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004284, 37.950966, 16.506378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129852, 38.330688, 16.513042>,  <37.205193, 38.558521, 16.517040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129852, 38.330688, 16.513042>,  <37.004284, 37.950966, 16.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129852, 38.330688, 16.513042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086372, 0.011080, 0.996201,
		0.945514, -0.314163, 0.085471,
		0.313917, 0.949304, 0.016658,
		37.224026, 38.615479, 16.518040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478920, 37.959373, 17.017662>,  <37.004284, 37.950966, 16.506378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478920, 37.959373, 17.017662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345661, 38.333759, 16.972073>,  <37.265705, 38.558392, 16.944719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345661, 38.333759, 16.972073>,  <37.478920, 37.959373, 17.017662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345661, 38.333759, 16.972073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054193, 0.101671, 0.993341,
		0.941315, 0.337109, 0.016851,
		-0.333151, 0.935960, -0.113974,
		37.245716, 38.614548, 16.937880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809990, 38.341072, 17.546387>,  <37.478920, 37.959373, 17.017662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809990, 38.341072, 17.546387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514469, 38.589664, 17.442127>,  <37.337158, 38.738819, 17.379572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514469, 38.589664, 17.442127>,  <37.809990, 38.341072, 17.546387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514469, 38.589664, 17.442127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126117, 0.252430, 0.959361,
		0.662021, 0.741646, -0.108115,
		-0.738798, 0.621482, -0.260648,
		37.292831, 38.776108, 17.363934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867275, 38.794720, 18.023834>,  <37.809990, 38.341072, 17.546387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867275, 38.794720, 18.023834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504471, 38.855232, 17.866638>,  <37.286789, 38.891541, 17.772320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504471, 38.855232, 17.866638>,  <37.867275, 38.794720, 18.023834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504471, 38.855232, 17.866638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349645, 0.249546, 0.903037,
		0.234686, 0.956472, -0.173445,
		-0.907012, 0.151286, -0.392991,
		37.232368, 38.900620, 17.748741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654266, 39.421940, 18.284140>,  <37.867275, 38.794720, 18.023834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654266, 39.421940, 18.284140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310841, 39.248081, 18.175364>,  <37.104786, 39.143764, 18.110098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310841, 39.248081, 18.175364>,  <37.654266, 39.421940, 18.284140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310841, 39.248081, 18.175364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421038, 0.295044, 0.857716,
		-0.292571, 0.850899, -0.436317,
		-0.858562, -0.434649, -0.271940,
		37.053272, 39.117687, 18.093782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074703, 39.938702, 18.381966>,  <37.654266, 39.421940, 18.284140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074703, 39.938702, 18.381966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941711, 39.562439, 18.409138>,  <36.861916, 39.336681, 18.425442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941711, 39.562439, 18.409138>,  <37.074703, 39.938702, 18.381966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941711, 39.562439, 18.409138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238862, 0.153668, 0.958818,
		-0.912360, 0.302563, -0.275779,
		-0.332481, -0.940660, 0.067930,
		36.841969, 39.280239, 18.429516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409328, 39.938461, 18.724150>,  <37.074703, 39.938702, 18.381966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409328, 39.938461, 18.724150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547737, 39.565758, 18.768137>,  <36.630783, 39.342136, 18.794529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547737, 39.565758, 18.768137>,  <36.409328, 39.938461, 18.724150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547737, 39.565758, 18.768137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152657, 0.059737, 0.986472,
		-0.925725, -0.358125, -0.121570,
		0.346018, -0.931761, 0.109970,
		36.651543, 39.286228, 18.801128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913040, 39.604240, 19.253000>,  <36.409328, 39.938461, 18.724150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913040, 39.604240, 19.253000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230167, 39.360508, 19.247976>,  <36.420444, 39.214268, 19.244963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230167, 39.360508, 19.247976>,  <35.913040, 39.604240, 19.253000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230167, 39.360508, 19.247976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125663, -0.183595, 0.974937,
		-0.596368, -0.771366, -0.222128,
		0.792814, -0.609334, -0.012558,
		36.468010, 39.177708, 19.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657475, 39.094482, 19.682379>,  <35.913040, 39.604240, 19.253000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657475, 39.094482, 19.682379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053528, 39.041142, 19.665123>,  <36.291161, 39.009136, 19.654770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053528, 39.041142, 19.665123>,  <35.657475, 39.094482, 19.682379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053528, 39.041142, 19.665123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023344, -0.146591, 0.988922,
		-0.138193, -0.980168, -0.142032,
		0.990130, -0.133347, -0.043139,
		36.350567, 39.001137, 19.652182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786507, 38.375591, 19.911432>,  <35.657475, 39.094482, 19.682379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786507, 38.375591, 19.911432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096066, 38.624607, 19.957941>,  <36.281803, 38.774017, 19.985847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096066, 38.624607, 19.957941>,  <35.786507, 38.375591, 19.911432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096066, 38.624607, 19.957941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063320, -0.106614, 0.992282,
		0.630136, -0.775289, -0.043089,
		0.773899, 0.622544, 0.116273,
		36.328236, 38.811371, 19.992823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186829, 38.046528, 20.344543>,  <35.786507, 38.375591, 19.911432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186829, 38.046528, 20.344543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335117, 38.416969, 20.372532>,  <36.424091, 38.639233, 20.389326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335117, 38.416969, 20.372532>,  <36.186829, 38.046528, 20.344543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335117, 38.416969, 20.372532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144544, -0.131956, 0.980660,
		0.917427, -0.353438, -0.182782,
		0.370721, 0.926104, 0.069973,
		36.446335, 38.694801, 20.393524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772858, 37.917984, 20.681665>,  <36.186829, 38.046528, 20.344543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772858, 37.917984, 20.681665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689327, 38.305359, 20.736094>,  <36.639210, 38.537785, 20.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689327, 38.305359, 20.736094>,  <36.772858, 37.917984, 20.681665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689327, 38.305359, 20.736094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186295, -0.097197, 0.977674,
		0.960046, 0.229509, -0.160119,
		-0.208822, 0.968441, 0.136069,
		36.626682, 38.595890, 20.776915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993145, 38.033920, 21.346270>,  <36.772858, 37.917984, 20.681665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993145, 38.033920, 21.346270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781670, 38.368320, 21.287508>,  <36.654785, 38.568962, 21.252251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781670, 38.368320, 21.287508>,  <36.993145, 38.033920, 21.346270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781670, 38.368320, 21.287508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311482, -0.030084, 0.949776,
		0.789597, 0.547898, 0.276305,
		-0.528693, 0.836004, -0.146906,
		36.623062, 38.619122, 21.243437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208904, 38.536777, 21.935129>,  <36.993145, 38.033920, 21.346270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208904, 38.536777, 21.935129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853588, 38.622784, 21.772789>,  <36.640400, 38.674385, 21.675385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853588, 38.622784, 21.772789>,  <37.208904, 38.536777, 21.935129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853588, 38.622784, 21.772789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392561, 0.103275, 0.913909,
		0.238417, 0.971135, -0.007332,
		-0.888287, 0.215013, -0.405852,
		36.587101, 38.687286, 21.651033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080986, 39.219814, 22.164110>,  <37.208904, 38.536777, 21.935129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080986, 39.219814, 22.164110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736225, 39.046818, 22.058228>,  <36.529369, 38.943020, 21.994698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736225, 39.046818, 22.058228>,  <37.080986, 39.219814, 22.164110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736225, 39.046818, 22.058228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351879, 0.134271, 0.926365,
		-0.365103, 0.891584, -0.267914,
		-0.861905, -0.432492, -0.264707,
		36.477654, 38.917068, 21.978815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564594, 39.710567, 22.397345>,  <37.080986, 39.219814, 22.164110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564594, 39.710567, 22.397345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384834, 39.354904, 22.362858>,  <36.276978, 39.141506, 22.342165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384834, 39.354904, 22.362858>,  <36.564594, 39.710567, 22.397345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384834, 39.354904, 22.362858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367972, 0.096305, 0.924836,
		-0.814022, 0.447351, -0.370465,
		-0.449404, -0.889158, -0.086218,
		36.250011, 39.088158, 22.336992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910954, 39.819946, 22.553188>,  <36.564594, 39.710567, 22.397345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910954, 39.819946, 22.553188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934448, 39.424397, 22.607859>,  <35.948544, 39.187065, 22.640661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934448, 39.424397, 22.607859>,  <35.910954, 39.819946, 22.553188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934448, 39.424397, 22.607859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575921, 0.078266, 0.813751,
		-0.815393, -0.126510, -0.564915,
		0.058734, -0.988873, 0.136677,
		35.952068, 39.127735, 22.648863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288612, 39.571934, 22.785038>,  <35.910954, 39.819946, 22.553188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288612, 39.571934, 22.785038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549091, 39.289650, 22.896690>,  <35.705379, 39.120281, 22.963682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549091, 39.289650, 22.896690>,  <35.288612, 39.571934, 22.785038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549091, 39.289650, 22.896690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394400, -0.000464, 0.918939,
		-0.648372, -0.708504, -0.278632,
		0.651201, -0.705707, 0.279133,
		35.744453, 39.077938, 22.980431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895367, 38.893349, 23.054188>,  <35.288612, 39.571934, 22.785038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895367, 38.893349, 23.054188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252750, 38.864010, 23.231430>,  <35.467182, 38.846405, 23.337776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252750, 38.864010, 23.231430>,  <34.895367, 38.893349, 23.054188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252750, 38.864010, 23.231430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446578, -0.039929, 0.893853,
		-0.047866, -0.996507, -0.068429,
		0.893464, -0.073344, 0.443107,
		35.520790, 38.842007, 23.364363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728905, 38.470856, 23.572922>,  <34.895367, 38.893349, 23.054188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728905, 38.470856, 23.572922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091206, 38.590881, 23.692638>,  <35.308586, 38.662899, 23.764467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091206, 38.590881, 23.692638>,  <34.728905, 38.470856, 23.572922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091206, 38.590881, 23.692638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279297, -0.108525, 0.954052,
		0.318762, -0.947724, -0.014489,
		0.905751, 0.300069, 0.299290,
		35.362930, 38.680901, 23.782425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038525, 37.960060, 24.068460>,  <34.728905, 38.470856, 23.572922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038525, 37.960060, 24.068460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223686, 38.310337, 24.123423>,  <35.334782, 38.520504, 24.156401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223686, 38.310337, 24.123423>,  <35.038525, 37.960060, 24.068460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223686, 38.310337, 24.123423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136902, -0.082525, 0.987141,
		0.875775, -0.475758, 0.081684,
		0.462899, 0.875696, 0.137406,
		35.362556, 38.573048, 24.164644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529583, 37.840290, 24.594273>,  <35.038525, 37.960060, 24.068460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529583, 37.840290, 24.594273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479691, 38.237118, 24.600483>,  <35.449757, 38.475216, 24.604208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479691, 38.237118, 24.600483>,  <35.529583, 37.840290, 24.594273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479691, 38.237118, 24.600483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003379, -0.016071, 0.999865,
		0.992185, 0.124659, 0.005357,
		-0.124729, 0.992069, 0.015525,
		35.442272, 38.534740, 24.605141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092571, 38.146183, 24.954460>,  <35.529583, 37.840290, 24.594273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092571, 38.146183, 24.954460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778881, 38.394035, 24.967426>,  <35.590668, 38.542747, 24.975206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778881, 38.394035, 24.967426>,  <36.092571, 38.146183, 24.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778881, 38.394035, 24.967426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037466, -0.004859, 0.999286,
		0.619347, 0.784878, -0.019405,
		-0.784223, 0.619631, 0.032416,
		35.543613, 38.579926, 24.977152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274837, 38.640888, 25.426929>,  <36.092571, 38.146183, 24.954460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274837, 38.640888, 25.426929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877224, 38.672924, 25.397326>,  <35.638657, 38.692146, 25.379562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877224, 38.672924, 25.397326>,  <36.274837, 38.640888, 25.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877224, 38.672924, 25.397326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059698, 0.168319, 0.983923,
		0.091255, 0.982474, -0.162535,
		-0.994037, 0.080085, -0.074011,
		35.579014, 38.696949, 25.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175362, 39.067406, 26.002937>,  <36.274837, 38.640888, 25.426929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175362, 39.067406, 26.002937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808403, 38.964329, 25.881628>,  <35.588226, 38.902481, 25.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808403, 38.964329, 25.881628>,  <36.175362, 39.067406, 26.002937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808403, 38.964329, 25.881628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323243, 0.037956, 0.945554,
		-0.232154, 0.965480, -0.118119,
		-0.917397, -0.257696, -0.303273,
		35.533184, 38.887020, 25.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738235, 39.577934, 26.297331>,  <36.175362, 39.067406, 26.002937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738235, 39.577934, 26.297331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538361, 39.236008, 26.241333>,  <35.418434, 39.030853, 26.207733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538361, 39.236008, 26.241333>,  <35.738235, 39.577934, 26.297331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538361, 39.236008, 26.241333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374217, 0.067279, 0.924898,
		-0.781198, 0.514553, -0.353506,
		-0.499692, -0.854815, -0.139996,
		35.388454, 38.979565, 26.199335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053406, 39.718529, 26.411343>,  <35.738235, 39.577934, 26.297331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053406, 39.718529, 26.411343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081928, 39.320717, 26.441875>,  <35.099041, 39.082031, 26.460196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081928, 39.320717, 26.441875>,  <35.053406, 39.718529, 26.411343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081928, 39.320717, 26.441875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321278, 0.049549, 0.945688,
		-0.944297, -0.091957, -0.315987,
		0.071306, -0.994530, 0.076333,
		35.103321, 39.022358, 26.464775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426025, 39.454910, 26.925808>,  <35.053406, 39.718529, 26.411343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426025, 39.454910, 26.925808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677444, 39.144203, 26.941658>,  <34.828297, 38.957779, 26.951168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677444, 39.144203, 26.941658>,  <34.426025, 39.454910, 26.925808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677444, 39.144203, 26.941658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172036, -0.089162, 0.981047,
		-0.758510, -0.623448, -0.189674,
		0.628543, -0.776765, 0.039625,
		34.866009, 38.911175, 26.953547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050098, 38.919434, 27.286926>,  <34.426025, 39.454910, 26.925808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050098, 38.919434, 27.286926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434330, 38.808353, 27.292046>,  <34.664871, 38.741707, 27.295118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434330, 38.808353, 27.292046>,  <34.050098, 38.919434, 27.286926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434330, 38.808353, 27.292046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105177, -0.320424, 0.941417,
		-0.257322, -0.905658, -0.337001,
		0.960585, -0.277692, 0.012802,
		34.722504, 38.725044, 27.295885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098381, 38.221642, 27.634113>,  <34.050098, 38.919434, 27.286926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098381, 38.221642, 27.634113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481392, 38.328560, 27.677359>,  <34.711201, 38.392712, 27.703306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481392, 38.328560, 27.677359>,  <34.098381, 38.221642, 27.634113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481392, 38.328560, 27.677359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041938, -0.241860, 0.969404,
		0.285265, -0.932769, -0.220379,
		0.957531, 0.267294, 0.108113,
		34.768650, 38.408749, 27.709793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458443, 37.679646, 27.937700>,  <34.098381, 38.221642, 27.634113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458443, 37.679646, 27.937700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692917, 37.992371, 28.022697>,  <34.833603, 38.180004, 28.073696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692917, 37.992371, 28.022697>,  <34.458443, 37.679646, 27.937700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692917, 37.992371, 28.022697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092766, -0.195783, 0.976250,
		0.804847, -0.591978, -0.042240,
		0.586188, 0.781813, 0.212491,
		34.868774, 38.226913, 28.086445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951225, 37.386829, 28.504526>,  <34.458443, 37.679646, 27.937700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951225, 37.386829, 28.504526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949913, 37.786819, 28.507236>,  <34.949127, 38.026814, 28.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949913, 37.786819, 28.507236>,  <34.951225, 37.386829, 28.504526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949913, 37.786819, 28.507236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254696, -0.005715, 0.967004,
		0.967016, 0.004896, -0.254670,
		-0.003279, 0.999972, 0.006774,
		34.948929, 38.086811, 28.509268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522652, 37.606682, 28.970100>,  <34.951225, 37.386829, 28.504526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522652, 37.606682, 28.970100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291965, 37.933319, 28.960495>,  <35.153553, 38.129299, 28.954731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291965, 37.933319, 28.960495>,  <35.522652, 37.606682, 28.970100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291965, 37.933319, 28.960495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185453, 0.159492, 0.969623,
		0.795616, 0.554745, -0.243421,
		-0.576717, 0.816591, -0.024015,
		35.118950, 38.178295, 28.953291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961338, 38.156464, 29.345472>,  <35.522652, 37.606682, 28.970100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961338, 38.156464, 29.345472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576462, 38.265232, 29.339066>,  <35.345535, 38.330494, 29.335220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576462, 38.265232, 29.339066>,  <35.961338, 38.156464, 29.345472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576462, 38.265232, 29.339066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036481, 0.186916, 0.981698,
		0.269939, 0.943992, -0.189768,
		-0.962186, 0.271921, -0.016018,
		35.287807, 38.346809, 29.334261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600071, 38.447739, 29.392267>,  <35.961338, 38.156464, 29.345472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600071, 38.447739, 29.392267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972420, 38.545841, 29.500578>,  <37.195831, 38.604702, 29.565565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972420, 38.545841, 29.500578>,  <36.600071, 38.447739, 29.392267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972420, 38.545841, 29.500578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254779, 0.095396, -0.962282,
		-0.261834, 0.964754, 0.026316,
		0.930876, 0.245254, 0.270777,
		37.251682, 38.619419, 29.581812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710342, 39.153870, 29.071257>,  <36.600071, 38.447739, 29.392267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710342, 39.153870, 29.071257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076488, 39.024590, 29.167292>,  <37.296177, 38.947021, 29.224913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076488, 39.024590, 29.167292>,  <36.710342, 39.153870, 29.071257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076488, 39.024590, 29.167292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348334, 0.336706, -0.874810,
		0.201902, 0.884403, 0.420792,
		0.915368, -0.323202, 0.240086,
		37.351097, 38.927628, 29.239317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133148, 39.751469, 28.766441>,  <36.710342, 39.153870, 29.071257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133148, 39.751469, 28.766441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333580, 39.408936, 28.816420>,  <37.453838, 39.203415, 28.846407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333580, 39.408936, 28.816420>,  <37.133148, 39.751469, 28.766441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333580, 39.408936, 28.816420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276366, 0.021524, -0.960811,
		0.820089, 0.515970, 0.247447,
		0.501075, -0.856336, 0.124945,
		37.483902, 39.152035, 28.853903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696381, 39.884220, 28.448000>,  <37.133148, 39.751469, 28.766441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696381, 39.884220, 28.448000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705631, 39.484356, 28.452951>,  <37.711182, 39.244438, 28.455923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705631, 39.484356, 28.452951>,  <37.696381, 39.884220, 28.448000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705631, 39.484356, 28.452951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396906, -0.002187, -0.917857,
		0.917568, 0.026138, 0.396719,
		0.023123, -0.999656, 0.012381,
		37.712566, 39.184460, 28.456665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332527, 39.715073, 28.212175>,  <37.696381, 39.884220, 28.448000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332527, 39.715073, 28.212175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127323, 39.379696, 28.138594>,  <38.004200, 39.178471, 28.094444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127323, 39.379696, 28.138594>,  <38.332527, 39.715073, 28.212175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127323, 39.379696, 28.138594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393527, -0.039268, -0.918474,
		0.762863, -0.543575, 0.350094,
		-0.513007, -0.838442, -0.183956,
		37.973419, 39.128162, 28.083406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857834, 39.201202, 27.894581>,  <38.332527, 39.715073, 28.212175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857834, 39.201202, 27.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490860, 39.070480, 27.803789>,  <38.270676, 38.992046, 27.749313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490860, 39.070480, 27.803789>,  <38.857834, 39.201202, 27.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490860, 39.070480, 27.803789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265607, -0.078241, -0.960901,
		0.296269, -0.941847, 0.158582,
		-0.917430, -0.326806, -0.226981,
		38.215630, 38.972439, 27.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986458, 38.844280, 27.353069>,  <38.857834, 39.201202, 27.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986458, 38.844280, 27.353069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590908, 38.888966, 27.313797>,  <38.353577, 38.915775, 27.290234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590908, 38.888966, 27.313797>,  <38.986458, 38.844280, 27.353069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590908, 38.888966, 27.313797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103891, 0.046491, -0.993501,
		-0.106425, -0.992652, -0.057580,
		-0.988878, 0.111716, -0.098180,
		38.294243, 38.922482, 27.284344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778625, 38.368401, 26.761549>,  <38.986458, 38.844280, 27.353069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778625, 38.368401, 26.761549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516445, 38.666222, 26.812187>,  <38.359135, 38.844913, 26.842571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516445, 38.666222, 26.812187>,  <38.778625, 38.368401, 26.761549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516445, 38.666222, 26.812187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036291, 0.198483, -0.979432,
		-0.754362, -0.637379, -0.157117,
		-0.655455, 0.744548, 0.126597,
		38.319809, 38.889587, 26.850166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348972, 38.233086, 26.199930>,  <38.778625, 38.368401, 26.761549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348972, 38.233086, 26.199930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286705, 38.614223, 26.304131>,  <38.249344, 38.842907, 26.366650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286705, 38.614223, 26.304131>,  <38.348972, 38.233086, 26.199930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286705, 38.614223, 26.304131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103277, 0.277969, -0.955022,
		-0.982396, -0.121764, -0.141678,
		-0.155669, 0.952842, 0.260500,
		38.240005, 38.900078, 26.382280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844200, 38.535614, 25.823421>,  <38.348972, 38.233086, 26.199930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844200, 38.535614, 25.823421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020588, 38.867809, 25.959564>,  <38.126419, 39.067127, 26.041250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020588, 38.867809, 25.959564>,  <37.844200, 38.535614, 25.823421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020588, 38.867809, 25.959564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077861, 0.342389, -0.936327,
		-0.894141, 0.439387, 0.086319,
		0.440965, 0.830487, 0.340355,
		38.152878, 39.116955, 26.061670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523006, 39.048141, 25.476357>,  <37.844200, 38.535614, 25.823421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523006, 39.048141, 25.476357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846489, 39.244938, 25.605314>,  <38.040577, 39.363014, 25.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846489, 39.244938, 25.605314>,  <37.523006, 39.048141, 25.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846489, 39.244938, 25.605314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011889, 0.534311, -0.845204,
		-0.588093, 0.687355, 0.426251,
		0.808706, 0.491991, 0.322397,
		38.089100, 39.392536, 25.702034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359222, 39.653412, 25.235470>,  <37.523006, 39.048141, 25.476357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359222, 39.653412, 25.235470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752781, 39.685287, 25.299456>,  <37.988918, 39.704414, 25.337847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752781, 39.685287, 25.299456>,  <37.359222, 39.653412, 25.235470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752781, 39.685287, 25.299456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076928, 0.619070, -0.781559,
		-0.161310, 0.781282, 0.602974,
		0.983901, 0.079688, 0.159965,
		38.047951, 39.709194, 25.347445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628319, 40.365471, 25.094372>,  <37.359222, 39.653412, 25.235470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628319, 40.365471, 25.094372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946598, 40.124310, 25.071138>,  <38.137566, 39.979610, 25.057199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946598, 40.124310, 25.071138>,  <37.628319, 40.365471, 25.094372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946598, 40.124310, 25.071138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307147, 0.484284, -0.819225,
		0.522044, 0.634013, 0.570523,
		0.795695, -0.602906, -0.058082,
		38.185307, 39.943439, 25.053713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221893, 40.758289, 24.941008>,  <37.628319, 40.365471, 25.094372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221893, 40.758289, 24.941008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333416, 40.390232, 24.831022>,  <38.400330, 40.169399, 24.765032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333416, 40.390232, 24.831022>,  <38.221893, 40.758289, 24.941008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333416, 40.390232, 24.831022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288782, 0.353394, -0.889785,
		0.915900, 0.168673, 0.364249,
		0.278806, -0.920143, -0.274963,
		38.417057, 40.114189, 24.748533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746250, 40.888153, 24.433292>,  <38.221893, 40.758289, 24.941008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746250, 40.888153, 24.433292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667961, 40.501030, 24.369986>,  <38.620987, 40.268757, 24.332001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667961, 40.501030, 24.369986>,  <38.746250, 40.888153, 24.433292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667961, 40.501030, 24.369986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073362, 0.146487, -0.986489,
		0.977911, -0.204691, 0.042329,
		-0.195725, -0.967803, -0.158268,
		38.609245, 40.210690, 24.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317764, 40.550350, 24.042135>,  <38.746250, 40.888153, 24.433292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317764, 40.550350, 24.042135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023991, 40.286930, 23.976498>,  <38.847729, 40.128880, 23.937115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023991, 40.286930, 23.976498>,  <39.317764, 40.550350, 24.042135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023991, 40.286930, 23.976498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288942, -0.084623, -0.953599,
		0.614106, -0.747765, 0.252432,
		-0.734430, -0.658549, -0.164093,
		38.803661, 40.089367, 23.927269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573280, 39.958454, 23.632364>,  <39.317764, 40.550350, 24.042135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573280, 39.958454, 23.632364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176403, 39.961048, 23.582546>,  <38.938278, 39.962605, 23.552654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176403, 39.961048, 23.582546>,  <39.573280, 39.958454, 23.632364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176403, 39.961048, 23.582546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122841, -0.121631, -0.984945,
		-0.021536, -0.992554, 0.119884,
		-0.992193, 0.006485, -0.124546,
		38.878746, 39.962994, 23.545183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355320, 39.362785, 23.176527>,  <39.573280, 39.958454, 23.632364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355320, 39.362785, 23.176527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056976, 39.621468, 23.112692>,  <38.877968, 39.776676, 23.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056976, 39.621468, 23.112692>,  <39.355320, 39.362785, 23.176527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056976, 39.621468, 23.112692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018200, -0.219710, -0.975396,
		-0.665852, -0.730414, 0.152103,
		-0.745862, 0.646701, -0.159588,
		38.833218, 39.815479, 23.064816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902813, 39.012638, 22.759611>,  <39.355320, 39.362785, 23.176527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902813, 39.012638, 22.759611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790627, 39.391254, 22.695869>,  <38.723316, 39.618423, 22.657625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790627, 39.391254, 22.695869>,  <38.902813, 39.012638, 22.759611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790627, 39.391254, 22.695869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028781, -0.174236, -0.984283,
		-0.959433, -0.271470, 0.076110,
		-0.280465, 0.946544, -0.159355,
		38.706486, 39.675217, 22.648064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375061, 38.921513, 22.271938>,  <38.902813, 39.012638, 22.759611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375061, 38.921513, 22.271938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480282, 39.307365, 22.265022>,  <38.543415, 39.538876, 22.260872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480282, 39.307365, 22.265022>,  <38.375061, 38.921513, 22.271938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480282, 39.307365, 22.265022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209899, 0.039726, -0.976916,
		-0.941673, 0.260607, 0.212924,
		0.263050, 0.964627, -0.017292,
		38.559196, 39.596752, 22.259834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880150, 39.266853, 21.803780>,  <38.375061, 38.921513, 22.271938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880150, 39.266853, 21.803780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187389, 39.522984, 21.804792>,  <38.371735, 39.676662, 21.805401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187389, 39.522984, 21.804792>,  <37.880150, 39.266853, 21.803780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187389, 39.522984, 21.804792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068669, -0.078438, -0.994551,
		-0.636636, 0.764090, -0.104219,
		0.768101, 0.640324, 0.002532,
		38.417820, 39.715080, 21.805552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732792, 39.852097, 21.337202>,  <37.880150, 39.266853, 21.803780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732792, 39.852097, 21.337202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130928, 39.825195, 21.364838>,  <38.369808, 39.809055, 21.381418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130928, 39.825195, 21.364838>,  <37.732792, 39.852097, 21.337202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130928, 39.825195, 21.364838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066796, -0.035773, -0.997125,
		0.069529, 0.997095, -0.031114,
		0.995341, -0.067250, 0.069089,
		38.429531, 39.805019, 21.385565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039955, 40.361267, 20.889542>,  <37.732792, 39.852097, 21.337202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039955, 40.361267, 20.889542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306042, 40.067657, 20.944246>,  <38.465694, 39.891491, 20.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306042, 40.067657, 20.944246>,  <38.039955, 40.361267, 20.889542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306042, 40.067657, 20.944246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127612, -0.068703, -0.989442,
		0.735666, 0.675644, 0.047968,
		0.665215, -0.734020, 0.136763,
		38.505608, 39.847450, 20.985275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332584, 40.390457, 20.261440>,  <38.039955, 40.361267, 20.889542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332584, 40.390457, 20.261440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537609, 40.071270, 20.388262>,  <38.660625, 39.879757, 20.464355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537609, 40.071270, 20.388262>,  <38.332584, 40.390457, 20.261440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537609, 40.071270, 20.388262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170781, -0.267128, -0.948407,
		0.841494, 0.540266, -0.000642,
		0.512564, -0.797970, 0.317053,
		38.691380, 39.831879, 20.483377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926544, 40.335865, 19.842127>,  <38.332584, 40.390457, 20.261440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926544, 40.335865, 19.842127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879890, 39.965179, 19.985012>,  <38.851898, 39.742767, 20.070744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879890, 39.965179, 19.985012>,  <38.926544, 40.335865, 19.842127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879890, 39.965179, 19.985012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047087, -0.364421, -0.930043,
		0.992058, -0.091656, 0.086141,
		-0.116635, -0.926712, 0.357211,
		38.844898, 39.687164, 20.092175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521751, 39.968136, 19.650934>,  <38.926544, 40.335865, 19.842127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521751, 39.968136, 19.650934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233322, 39.695107, 19.698524>,  <39.060265, 39.531288, 19.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233322, 39.695107, 19.698524>,  <39.521751, 39.968136, 19.650934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233322, 39.695107, 19.698524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391672, -0.543210, -0.742641,
		0.571531, -0.488899, 0.659037,
		-0.721072, -0.682569, 0.118973,
		39.017002, 39.490337, 19.734217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922066, 39.404598, 19.604851>,  <39.521751, 39.968136, 19.650934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922066, 39.404598, 19.604851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543560, 39.313393, 19.513113>,  <39.316456, 39.258671, 19.458071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543560, 39.313393, 19.513113>,  <39.922066, 39.404598, 19.604851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543560, 39.313393, 19.513113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316483, -0.506961, -0.801766,
		0.066546, -0.831264, 0.551880,
		-0.946261, -0.228015, -0.229345,
		39.259682, 39.244987, 19.444309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014301, 38.661373, 19.404087>,  <39.922066, 39.404598, 19.604851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014301, 38.661373, 19.404087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675575, 38.817520, 19.259573>,  <39.472340, 38.911209, 19.172865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675575, 38.817520, 19.259573>,  <40.014301, 38.661373, 19.404087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675575, 38.817520, 19.259573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188329, -0.415185, -0.890030,
		-0.497439, -0.821727, 0.278065,
		-0.846810, 0.390368, -0.361284,
		39.421532, 38.934631, 19.151188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664803, 38.130489, 19.052357>,  <40.014301, 38.661373, 19.404087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664803, 38.130489, 19.052357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452293, 38.418488, 18.873758>,  <39.324787, 38.591286, 18.766600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452293, 38.418488, 18.873758>,  <39.664803, 38.130489, 19.052357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452293, 38.418488, 18.873758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294296, -0.337363, -0.894190,
		-0.794445, -0.606458, -0.032662,
		-0.531270, 0.719997, -0.446494,
		39.292912, 38.634487, 18.739809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179256, 37.777481, 18.602076>,  <39.664803, 38.130489, 19.052357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179256, 37.777481, 18.602076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206692, 38.141724, 18.439054>,  <39.223152, 38.360268, 18.341242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206692, 38.141724, 18.439054>,  <39.179256, 37.777481, 18.602076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206692, 38.141724, 18.439054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097641, -0.412680, -0.905628,
		-0.992855, 0.022326, -0.117219,
		0.068593, 0.910603, -0.407551,
		39.227268, 38.414906, 18.316790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740593, 37.802994, 17.943615>,  <39.179256, 37.777481, 18.602076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740593, 37.802994, 17.943615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013916, 38.093380, 17.912453>,  <39.177910, 38.267612, 17.893755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013916, 38.093380, 17.912453>,  <38.740593, 37.802994, 17.943615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013916, 38.093380, 17.912453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009357, -0.097985, -0.995144,
		-0.730074, 0.680715, -0.060160,
		0.683304, 0.725966, -0.077906,
		39.218906, 38.311169, 17.889082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646469, 38.222649, 17.295881>,  <38.740593, 37.802994, 17.943615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646469, 38.222649, 17.295881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019588, 38.317028, 17.404848>,  <39.243462, 38.373657, 17.470228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019588, 38.317028, 17.404848>,  <38.646469, 38.222649, 17.295881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019588, 38.317028, 17.404848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315272, -0.168018, -0.934009,
		-0.174608, 0.957130, -0.231115,
		0.932800, 0.235950, 0.272419,
		39.299427, 38.387814, 17.486574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005268, 38.697880, 16.791876>,  <38.646469, 38.222649, 17.295881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005268, 38.697880, 16.791876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312267, 38.509869, 16.966244>,  <39.496468, 38.397064, 17.070864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312267, 38.509869, 16.966244>,  <39.005268, 38.697880, 16.791876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312267, 38.509869, 16.966244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401361, -0.177906, -0.898476,
		0.499857, 0.864539, 0.052107,
		0.767497, -0.470023, 0.435920,
		39.542515, 38.368862, 17.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478016, 38.758099, 16.276079>,  <39.005268, 38.697880, 16.791876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478016, 38.758099, 16.276079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636497, 38.483944, 16.520464>,  <39.731586, 38.319450, 16.667095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636497, 38.483944, 16.520464>,  <39.478016, 38.758099, 16.276079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636497, 38.483944, 16.520464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450774, -0.434504, -0.779750,
		0.799893, 0.584343, 0.136802,
		0.396200, -0.685383, 0.610963,
		39.755356, 38.278328, 16.703753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161869, 38.640049, 16.008787>,  <39.478016, 38.758099, 16.276079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161869, 38.640049, 16.008787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072491, 38.307404, 16.212154>,  <40.018864, 38.107815, 16.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072491, 38.307404, 16.212154>,  <40.161869, 38.640049, 16.008787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072491, 38.307404, 16.212154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382355, -0.554579, -0.739085,
		0.896592, 0.029252, 0.441890,
		-0.223443, -0.831616, 0.508416,
		40.005459, 38.057919, 16.364679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740730, 38.249840, 15.861919>,  <40.161869, 38.640049, 16.008787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740730, 38.249840, 15.861919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456509, 38.008259, 16.006338>,  <40.285976, 37.863308, 16.092989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456509, 38.008259, 16.006338>,  <40.740730, 38.249840, 15.861919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456509, 38.008259, 16.006338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297189, -0.722683, -0.624025,
		0.637806, -0.336102, 0.692992,
		-0.710550, -0.603957, 0.361046,
		40.243343, 37.827072, 16.114653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049438, 37.651752, 16.045422>,  <40.740730, 38.249840, 15.861919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049438, 37.651752, 16.045422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671062, 37.537544, 15.983874>,  <40.444038, 37.469021, 15.946946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671062, 37.537544, 15.983874>,  <41.049438, 37.651752, 16.045422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671062, 37.537544, 15.983874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318818, -0.731342, -0.602905,
		0.059611, -0.619368, 0.782835,
		-0.945939, -0.285522, -0.153869,
		40.387280, 37.451889, 15.937714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209126, 37.198437, 15.396069>,  <41.049438, 37.651752, 16.045422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209126, 37.198437, 15.396069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348682, 36.827015, 15.446752>,  <41.432419, 36.604160, 15.477161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348682, 36.827015, 15.446752>,  <41.209126, 37.198437, 15.396069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348682, 36.827015, 15.446752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238547, 0.218744, 0.946175,
		-0.906293, -0.299890, 0.297823,
		0.348895, -0.928556, 0.126708,
		41.453350, 36.548447, 15.484764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890682, 36.941189, 15.986852>,  <41.209126, 37.198437, 15.396069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890682, 36.941189, 15.986852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219666, 36.715656, 15.956754>,  <41.417053, 36.580338, 15.938695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219666, 36.715656, 15.956754>,  <40.890682, 36.941189, 15.986852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219666, 36.715656, 15.956754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163476, 0.107589, 0.980663,
		-0.544831, -0.818853, 0.180660,
		0.822457, -0.563830, -0.075245,
		41.466404, 36.546509, 15.934180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829742, 36.350208, 16.320333>,  <40.890682, 36.941189, 15.986852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829742, 36.350208, 16.320333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226864, 36.396786, 16.309118>,  <41.465137, 36.424732, 16.302389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226864, 36.396786, 16.309118>,  <40.829742, 36.350208, 16.320333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226864, 36.396786, 16.309118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007397, 0.174033, 0.984712,
		0.119539, -0.977832, 0.171919,
		0.992802, 0.116439, -0.028037,
		41.524704, 36.431717, 16.300707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137863, 35.792564, 16.851389>,  <40.829742, 36.350208, 16.320333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137863, 35.792564, 16.851389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400059, 36.091740, 16.809582>,  <41.557377, 36.271244, 16.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400059, 36.091740, 16.809582>,  <41.137863, 35.792564, 16.851389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400059, 36.091740, 16.809582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147273, 0.009146, 0.989054,
		0.740707, -0.663705, -0.104157,
		0.655487, 0.747939, -0.104520,
		41.596706, 36.316120, 16.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708500, 35.648361, 17.267120>,  <41.137863, 35.792564, 16.851389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708500, 35.648361, 17.267120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809666, 36.025974, 17.182423>,  <41.870365, 36.252541, 17.131605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809666, 36.025974, 17.182423>,  <41.708500, 35.648361, 17.267120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809666, 36.025974, 17.182423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440800, 0.082386, 0.893816,
		0.861238, -0.319394, -0.395294,
		0.252912, 0.944034, -0.211743,
		41.885540, 36.309185, 17.118900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392918, 35.743221, 17.584057>,  <41.708500, 35.648361, 17.267120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392918, 35.743221, 17.584057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207737, 36.095570, 17.544580>,  <42.096630, 36.306980, 17.520895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207737, 36.095570, 17.544580>,  <42.392918, 35.743221, 17.584057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207737, 36.095570, 17.544580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284304, 0.253021, 0.924744,
		0.839554, 0.400050, -0.367571,
		-0.462948, 0.880875, -0.098689,
		42.068851, 36.359833, 17.514975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927059, 36.237854, 17.791803>,  <42.392918, 35.743221, 17.584057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927059, 36.237854, 17.791803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569130, 36.416340, 17.797207>,  <42.354374, 36.523434, 17.800449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569130, 36.416340, 17.797207>,  <42.927059, 36.237854, 17.791803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569130, 36.416340, 17.797207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189847, 0.352979, 0.916168,
		0.404042, 0.822372, -0.400567,
		-0.894823, 0.446217, 0.013507,
		42.300682, 36.550205, 17.801258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039543, 36.763260, 18.225254>,  <42.927059, 36.237854, 17.791803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039543, 36.763260, 18.225254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639648, 36.757656, 18.217928>,  <42.399712, 36.754295, 18.213533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639648, 36.757656, 18.217928>,  <43.039543, 36.763260, 18.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639648, 36.757656, 18.217928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021354, 0.262852, 0.964600,
		-0.008701, 0.964734, -0.263081,
		-0.999734, -0.014011, -0.018314,
		42.339729, 36.753452, 18.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811317, 37.402554, 18.527336>,  <43.039543, 36.763260, 18.225254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811317, 37.402554, 18.527336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532543, 37.116482, 18.548494>,  <42.365276, 36.944839, 18.561190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532543, 37.116482, 18.548494>,  <42.811317, 37.402554, 18.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532543, 37.116482, 18.548494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134553, 0.202858, 0.969920,
		-0.704396, 0.668856, -0.237609,
		-0.696938, -0.715178, 0.052896,
		42.323463, 36.901928, 18.564363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335945, 37.710033, 18.871412>,  <42.811317, 37.402554, 18.527336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335945, 37.710033, 18.871412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222668, 37.327007, 18.892839>,  <42.154701, 37.097191, 18.905695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222668, 37.327007, 18.892839>,  <42.335945, 37.710033, 18.871412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222668, 37.327007, 18.892839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151386, 0.099783, 0.983425,
		-0.947041, 0.270387, -0.173220,
		-0.283190, -0.957567, 0.053566,
		42.137711, 37.039738, 18.908909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618458, 37.724541, 19.190641>,  <42.335945, 37.710033, 18.871412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618458, 37.724541, 19.190641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769184, 37.360229, 19.258165>,  <41.859619, 37.141644, 19.298679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769184, 37.360229, 19.258165>,  <41.618458, 37.724541, 19.190641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769184, 37.360229, 19.258165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238553, 0.080674, 0.967773,
		-0.895042, -0.404945, -0.186869,
		0.376820, -0.910775, 0.168808,
		41.882229, 37.086998, 19.308807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173050, 37.489548, 19.628113>,  <41.618458, 37.724541, 19.190641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173050, 37.489548, 19.628113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504688, 37.272068, 19.680246>,  <41.703671, 37.141579, 19.711527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504688, 37.272068, 19.680246>,  <41.173050, 37.489548, 19.628113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504688, 37.272068, 19.680246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063090, 0.140640, 0.988049,
		-0.555532, -0.827412, 0.082302,
		0.829098, -0.543700, 0.130332,
		41.753418, 37.108959, 19.719345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034771, 37.296181, 20.278124>,  <41.173050, 37.489548, 19.628113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034771, 37.296181, 20.278124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422081, 37.209507, 20.228350>,  <41.654469, 37.157505, 20.198484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422081, 37.209507, 20.228350>,  <41.034771, 37.296181, 20.278124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422081, 37.209507, 20.228350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106818, -0.091252, 0.990082,
		-0.225890, -0.971968, -0.065212,
		0.968278, -0.216684, -0.124437,
		41.712566, 37.144501, 20.191019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190971, 36.731121, 20.682308>,  <41.034771, 37.296181, 20.278124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190971, 36.731121, 20.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559959, 36.880447, 20.642935>,  <41.781353, 36.970043, 20.619310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559959, 36.880447, 20.642935>,  <41.190971, 36.731121, 20.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559959, 36.880447, 20.642935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121171, -0.037876, 0.991909,
		0.366564, -0.926932, -0.080174,
		0.922468, 0.373313, -0.098433,
		41.836700, 36.992443, 20.613405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640156, 36.265720, 20.905487>,  <41.190971, 36.731121, 20.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640156, 36.265720, 20.905487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778816, 36.639858, 20.933676>,  <41.862011, 36.864342, 20.950588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778816, 36.639858, 20.933676>,  <41.640156, 36.265720, 20.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778816, 36.639858, 20.933676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003274, -0.076335, 0.997077,
		0.937989, -0.345405, -0.029523,
		0.346649, 0.935344, 0.070471,
		41.882812, 36.920460, 20.954817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185139, 36.205868, 21.467449>,  <41.640156, 36.265720, 20.905487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185139, 36.205868, 21.467449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093655, 36.593689, 21.432434>,  <42.038765, 36.826382, 21.411425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093655, 36.593689, 21.432434>,  <42.185139, 36.205868, 21.467449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093655, 36.593689, 21.432434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065960, 0.105148, 0.992266,
		0.971258, 0.221163, -0.087999,
		-0.228706, 0.969552, -0.087538,
		42.025043, 36.884556, 21.406172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431217, 36.558182, 22.126932>,  <42.185139, 36.205868, 21.467449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431217, 36.558182, 22.126932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207390, 36.849838, 21.969332>,  <42.073093, 37.024830, 21.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207390, 36.849838, 21.969332>,  <42.431217, 36.558182, 22.126932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207390, 36.849838, 21.969332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218709, 0.328632, 0.918786,
		0.799402, 0.600299, -0.024425,
		-0.559573, 0.729138, -0.394000,
		42.039516, 37.068581, 21.851131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612061, 37.231861, 22.427258>,  <42.431217, 36.558182, 22.126932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612061, 37.231861, 22.427258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238701, 37.277424, 22.291142>,  <42.014687, 37.304760, 22.209471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238701, 37.277424, 22.291142>,  <42.612061, 37.231861, 22.427258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238701, 37.277424, 22.291142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273574, 0.387806, 0.880207,
		0.232229, 0.914676, -0.330814,
		-0.933396, 0.113907, -0.340291,
		41.958683, 37.311596, 22.189054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420750, 37.805798, 22.632948>,  <42.612061, 37.231861, 22.427258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420750, 37.805798, 22.632948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066471, 37.630596, 22.571379>,  <41.853905, 37.525475, 22.534437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066471, 37.630596, 22.571379>,  <42.420750, 37.805798, 22.632948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066471, 37.630596, 22.571379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385964, 0.510410, 0.768448,
		-0.258022, 0.740020, -0.621123,
		-0.885695, -0.438008, -0.153924,
		41.800762, 37.499195, 22.525202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973118, 38.277355, 22.636135>,  <42.420750, 37.805798, 22.632948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973118, 38.277355, 22.636135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749905, 37.953136, 22.707243>,  <41.615974, 37.758606, 22.749908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749905, 37.953136, 22.707243>,  <41.973118, 38.277355, 22.636135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749905, 37.953136, 22.707243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401767, 0.451355, 0.796782,
		-0.726070, 0.373212, -0.577525,
		-0.558037, -0.810550, 0.177771,
		41.582493, 37.709972, 22.760574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269089, 38.601391, 22.747663>,  <41.973118, 38.277355, 22.636135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269089, 38.601391, 22.747663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303291, 38.233635, 22.901241>,  <41.323814, 38.012981, 22.993387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303291, 38.233635, 22.901241>,  <41.269089, 38.601391, 22.747663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303291, 38.233635, 22.901241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416188, 0.317167, 0.852169,
		-0.905249, -0.232658, -0.355519,
		0.085505, -0.919389, 0.383945,
		41.328941, 37.957817, 23.016424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659946, 38.590591, 23.095543>,  <41.269089, 38.601391, 22.747663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659946, 38.590591, 23.095543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837036, 38.262531, 23.240507>,  <40.943291, 38.065693, 23.327486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837036, 38.262531, 23.240507>,  <40.659946, 38.590591, 23.095543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837036, 38.262531, 23.240507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379769, 0.194625, 0.904376,
		-0.812262, -0.538023, -0.225304,
		0.442725, -0.820154, 0.362411,
		40.969852, 38.016483, 23.349230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088413, 38.050556, 23.382193>,  <40.659946, 38.590591, 23.095543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088413, 38.050556, 23.382193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451977, 38.007004, 23.543200>,  <40.670116, 37.980873, 23.639805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451977, 38.007004, 23.543200>,  <40.088413, 38.050556, 23.382193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451977, 38.007004, 23.543200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394717, 0.086580, 0.914715,
		-0.134447, -0.990277, 0.035716,
		0.908913, -0.108883, 0.402519,
		40.724651, 37.974339, 23.663956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113483, 37.529148, 23.988205>,  <40.088413, 38.050556, 23.382193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113483, 37.529148, 23.988205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446648, 37.743626, 24.042982>,  <40.646545, 37.872311, 24.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446648, 37.743626, 24.042982>,  <40.113483, 37.529148, 23.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446648, 37.743626, 24.042982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170839, 0.013761, 0.985203,
		0.526373, -0.843984, 0.103065,
		0.832914, 0.536192, 0.136942,
		40.696522, 37.904484, 24.084064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408821, 37.305382, 24.672960>,  <40.113483, 37.529148, 23.988205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408821, 37.305382, 24.672960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565407, 37.666344, 24.600937>,  <40.659359, 37.882919, 24.557722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565407, 37.666344, 24.600937>,  <40.408821, 37.305382, 24.672960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565407, 37.666344, 24.600937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208186, 0.277455, 0.937911,
		0.896333, -0.329675, 0.296482,
		0.391466, 0.902404, -0.180059,
		40.682846, 37.937065, 24.546919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759190, 37.468273, 25.290323>,  <40.408821, 37.305382, 24.672960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759190, 37.468273, 25.290323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733650, 37.818153, 25.098145>,  <40.718327, 38.028080, 24.982838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733650, 37.818153, 25.098145>,  <40.759190, 37.468273, 25.290323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733650, 37.818153, 25.098145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022440, 0.480051, 0.876953,
		0.997707, 0.066770, -0.011021,
		-0.063845, 0.874696, -0.480449,
		40.714497, 38.080563, 24.954010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241856, 37.934132, 25.667004>,  <40.759190, 37.468273, 25.290323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241856, 37.934132, 25.667004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004986, 38.188038, 25.468447>,  <40.862865, 38.340382, 25.349314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004986, 38.188038, 25.468447>,  <41.241856, 37.934132, 25.667004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004986, 38.188038, 25.468447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229111, 0.457961, 0.858941,
		0.772551, 0.622373, -0.125763,
		-0.592176, 0.634763, -0.496391,
		40.827332, 38.378468, 25.319529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531551, 38.697357, 25.732244>,  <41.241856, 37.934132, 25.667004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531551, 38.697357, 25.732244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144131, 38.711456, 25.633720>,  <40.911678, 38.719913, 25.574606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144131, 38.711456, 25.633720>,  <41.531551, 38.697357, 25.732244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144131, 38.711456, 25.633720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160041, 0.669730, 0.725154,
		0.190519, 0.741768, -0.643026,
		-0.968550, 0.035245, -0.246310,
		40.853565, 38.722031, 25.559828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347908, 39.338100, 25.602333>,  <41.531551, 38.697357, 25.732244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347908, 39.338100, 25.602333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015575, 39.149456, 25.720520>,  <40.816177, 39.036270, 25.791433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015575, 39.149456, 25.720520>,  <41.347908, 39.338100, 25.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015575, 39.149456, 25.720520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089662, 0.637418, 0.765284,
		-0.549252, 0.609330, -0.571873,
		-0.830833, -0.471609, 0.295469,
		40.766327, 39.007973, 25.809160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878521, 39.850159, 25.946318>,  <41.347908, 39.338100, 25.602333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878521, 39.850159, 25.946318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739147, 39.506111, 26.095335>,  <40.655521, 39.299683, 26.184746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739147, 39.506111, 26.095335>,  <40.878521, 39.850159, 25.946318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739147, 39.506111, 26.095335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197568, 0.455915, 0.867818,
		-0.916274, 0.228779, -0.328790,
		-0.348439, -0.860118, 0.372544,
		40.634617, 39.248077, 26.207098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248341, 40.075573, 26.412857>,  <40.878521, 39.850159, 25.946318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248341, 40.075573, 26.412857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391552, 39.719883, 26.526768>,  <40.477478, 39.506470, 26.595114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391552, 39.719883, 26.526768>,  <40.248341, 40.075573, 26.412857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391552, 39.719883, 26.526768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045652, 0.287959, 0.956554,
		-0.932593, -0.355477, 0.062503,
		0.358031, -0.889222, 0.284777,
		40.498962, 39.453117, 26.612200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796638, 39.872494, 27.019001>,  <40.248341, 40.075573, 26.412857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796638, 39.872494, 27.019001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134018, 39.660461, 27.053892>,  <40.336445, 39.533241, 27.074827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134018, 39.660461, 27.053892>,  <39.796638, 39.872494, 27.019001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134018, 39.660461, 27.053892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073666, 0.274957, 0.958630,
		-0.532139, -0.802127, 0.270960,
		0.843446, -0.530085, 0.087226,
		40.387051, 39.501434, 27.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740955, 39.622635, 27.701540>,  <39.796638, 39.872494, 27.019001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740955, 39.622635, 27.701540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124496, 39.546864, 27.616953>,  <40.354622, 39.501400, 27.566200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124496, 39.546864, 27.616953>,  <39.740955, 39.622635, 27.701540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124496, 39.546864, 27.616953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230635, 0.085358, 0.969289,
		-0.165566, -0.978176, 0.125535,
		0.958851, -0.189434, -0.211469,
		40.412151, 39.490032, 27.553513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959873, 39.073559, 28.144173>,  <39.740955, 39.622635, 27.701540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959873, 39.073559, 28.144173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267620, 39.297741, 28.021563>,  <40.452271, 39.432251, 27.947996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267620, 39.297741, 28.021563>,  <39.959873, 39.073559, 28.144173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267620, 39.297741, 28.021563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301930, 0.103818, 0.947661,
		0.562944, -0.821652, -0.089343,
		0.769371, 0.560455, -0.306525,
		40.498432, 39.465878, 27.929605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493362, 38.826267, 28.466797>,  <39.959873, 39.073559, 28.144173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493362, 38.826267, 28.466797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615063, 39.192204, 28.360590>,  <40.688084, 39.411766, 28.296865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615063, 39.192204, 28.360590>,  <40.493362, 38.826267, 28.466797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615063, 39.192204, 28.360590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547515, 0.060150, 0.834631,
		0.779524, -0.399313, -0.482588,
		0.304251, 0.914839, -0.265519,
		40.706337, 39.466656, 28.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161110, 38.804729, 28.738577>,  <40.493362, 38.826267, 28.466797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161110, 38.804729, 28.738577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083725, 39.189964, 28.663710>,  <41.037296, 39.421104, 28.618790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083725, 39.189964, 28.663710>,  <41.161110, 38.804729, 28.738577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083725, 39.189964, 28.663710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550888, 0.264490, 0.791560,
		0.811847, 0.050028, -0.581723,
		-0.193460, 0.963090, -0.187166,
		41.025688, 39.478889, 28.607559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821789, 39.175087, 28.779921>,  <41.161110, 38.804729, 28.738577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821789, 39.175087, 28.779921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552433, 39.466454, 28.830427>,  <41.390820, 39.641273, 28.860731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552433, 39.466454, 28.830427>,  <41.821789, 39.175087, 28.779921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552433, 39.466454, 28.830427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508598, 0.332506, 0.794209,
		0.536534, 0.599034, -0.594381,
		-0.673394, 0.728421, 0.126267,
		41.350414, 39.684978, 28.868307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204479, 39.650997, 28.958576>,  <41.821789, 39.175087, 28.779921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204479, 39.650997, 28.958576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840340, 39.737720, 29.099577>,  <41.621857, 39.789753, 29.184177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840340, 39.737720, 29.099577>,  <42.204479, 39.650997, 28.958576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840340, 39.737720, 29.099577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400183, 0.244179, 0.883306,
		0.105433, 0.945183, -0.309051,
		-0.910350, 0.216807, 0.352502,
		41.567234, 39.802761, 29.205328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376228, 40.176670, 29.408848>,  <42.204479, 39.650997, 28.958576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376228, 40.176670, 29.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003716, 40.070362, 29.508505>,  <41.780205, 40.006577, 29.568298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003716, 40.070362, 29.508505>,  <42.376228, 40.176670, 29.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003716, 40.070362, 29.508505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196956, 0.208003, 0.958094,
		-0.306453, 0.941330, -0.141365,
		-0.931287, -0.265768, 0.249143,
		41.724331, 39.990631, 29.583248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005009, 40.793274, 29.697489>,  <42.376228, 40.176670, 29.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005009, 40.793274, 29.697489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865711, 40.452648, 29.854237>,  <41.782131, 40.248272, 29.948286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865711, 40.452648, 29.854237>,  <42.005009, 40.793274, 29.697489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865711, 40.452648, 29.854237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388681, 0.249237, 0.887022,
		-0.853025, 0.461215, 0.244191,
		-0.348246, -0.851564, 0.391871,
		41.761238, 40.197178, 29.971798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972321, 40.877094, 30.332766>,  <42.005009, 40.793274, 29.697489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972321, 40.877094, 30.332766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861500, 40.496967, 30.389532>,  <41.795006, 40.268890, 30.423592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861500, 40.496967, 30.389532>,  <41.972321, 40.877094, 30.332766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861500, 40.496967, 30.389532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170363, 0.096772, 0.980618,
		-0.945630, 0.295862, 0.135088,
		-0.277055, -0.950316, 0.141915,
		41.778381, 40.211872, 30.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596687, 40.884834, 30.932884>,  <41.972321, 40.877094, 30.332766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596687, 40.884834, 30.932884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703941, 40.500351, 30.907007>,  <41.768295, 40.269661, 30.891481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703941, 40.500351, 30.907007>,  <41.596687, 40.884834, 30.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703941, 40.500351, 30.907007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244089, 0.002825, 0.969749,
		-0.931945, -0.275818, 0.235378,
		0.268140, -0.961206, -0.064691,
		41.784382, 40.211990, 30.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420345, 40.685951, 31.604555>,  <41.596687, 40.884834, 30.932884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420345, 40.685951, 31.604555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689793, 40.422577, 31.470272>,  <41.851460, 40.264553, 31.389702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689793, 40.422577, 31.470272>,  <41.420345, 40.685951, 31.604555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689793, 40.422577, 31.470272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343984, -0.122720, 0.930922,
		-0.654152, -0.742563, 0.143825,
		0.673617, -0.658438, -0.335707,
		41.891876, 40.225044, 31.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359131, 40.014778, 31.951429>,  <41.420345, 40.685951, 31.604555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359131, 40.014778, 31.951429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734234, 40.042301, 31.815268>,  <41.959297, 40.058815, 31.733570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734234, 40.042301, 31.815268>,  <41.359131, 40.014778, 31.951429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734234, 40.042301, 31.815268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347274, -0.176168, 0.921068,
		0.003408, -0.981952, -0.189098,
		0.937758, 0.068808, -0.340406,
		42.015560, 40.062943, 31.713146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743801, 39.456261, 32.291340>,  <41.359131, 40.014778, 31.951429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743801, 39.456261, 32.291340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016323, 39.728897, 32.184566>,  <42.179836, 39.892479, 32.120502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016323, 39.728897, 32.184566>,  <41.743801, 39.456261, 32.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016323, 39.728897, 32.184566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481525, -0.142652, 0.864745,
		0.551327, -0.717690, -0.425394,
		0.681302, 0.681595, -0.266937,
		42.220715, 39.933376, 32.104485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333736, 39.253998, 32.624657>,  <41.743801, 39.456261, 32.291340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333736, 39.253998, 32.624657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422344, 39.630489, 32.522671>,  <42.475510, 39.856384, 32.461479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422344, 39.630489, 32.522671>,  <42.333736, 39.253998, 32.624657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422344, 39.630489, 32.522671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517256, 0.108234, 0.848959,
		0.826664, -0.319948, -0.462882,
		0.221523, 0.941232, -0.254969,
		42.488800, 39.912861, 32.446178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026749, 39.375343, 32.858765>,  <42.333736, 39.253998, 32.624657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026749, 39.375343, 32.858765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856346, 39.734383, 32.813457>,  <42.754105, 39.949806, 32.786274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856346, 39.734383, 32.813457>,  <43.026749, 39.375343, 32.858765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856346, 39.734383, 32.813457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396971, 0.297952, 0.868123,
		0.812978, 0.324860, -0.483252,
		-0.426004, 0.897603, -0.113269,
		42.728546, 40.003662, 32.779476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570862, 39.894585, 33.028992>,  <43.026749, 39.375343, 32.858765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570862, 39.894585, 33.028992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248928, 40.131790, 33.038597>,  <43.055767, 40.274113, 33.044361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248928, 40.131790, 33.038597>,  <43.570862, 39.894585, 33.028992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248928, 40.131790, 33.038597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334690, 0.420082, 0.843513,
		0.490124, 0.686927, -0.536572,
		-0.804836, 0.593011, 0.024015,
		43.007477, 40.309692, 33.045803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815212, 40.538837, 33.208050>,  <43.570862, 39.894585, 33.028992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815212, 40.538837, 33.208050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427013, 40.539436, 33.304497>,  <43.194096, 40.539795, 33.362366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427013, 40.539436, 33.304497>,  <43.815212, 40.538837, 33.208050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427013, 40.539436, 33.304497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225983, 0.354437, 0.907362,
		-0.084099, 0.935079, -0.344318,
		-0.970494, 0.001502, 0.241119,
		43.135864, 40.539886, 33.376831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717781, 41.167488, 33.548771>,  <43.815212, 40.538837, 33.208050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717781, 41.167488, 33.548771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450199, 40.893219, 33.663563>,  <43.289650, 40.728657, 33.732437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450199, 40.893219, 33.663563>,  <43.717781, 41.167488, 33.548771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450199, 40.893219, 33.663563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193051, 0.212563, 0.957887,
		-0.717795, 0.696185, -0.009826,
		-0.668956, -0.685670, 0.286976,
		43.249512, 40.687519, 33.749657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142635, 41.491615, 33.941818>,  <43.717781, 41.167488, 33.548771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142635, 41.491615, 33.941818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194675, 41.105762, 34.033527>,  <43.225899, 40.874252, 34.088554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194675, 41.105762, 34.033527>,  <43.142635, 41.491615, 33.941818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194675, 41.105762, 34.033527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099863, 0.242813, 0.964919,
		-0.986458, -0.102644, 0.127922,
		0.130105, -0.964627, 0.229275,
		43.233707, 40.816376, 34.102310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698219, 41.394554, 34.503792>,  <43.142635, 41.491615, 33.941818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698219, 41.394554, 34.503792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976311, 41.107040, 34.502884>,  <43.143166, 40.934532, 34.502338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976311, 41.107040, 34.502884>,  <42.698219, 41.394554, 34.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976311, 41.107040, 34.502884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202844, 0.193163, 0.959970,
		-0.689570, -0.667863, 0.280094,
		0.695232, -0.718782, -0.002273,
		43.184879, 40.891407, 34.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812504, 41.364979, 35.201714>,  <42.698219, 41.394554, 34.503792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812504, 41.364979, 35.201714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102684, 41.106575, 35.106720>,  <43.276791, 40.951534, 35.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102684, 41.106575, 35.106720>,  <42.812504, 41.364979, 35.201714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102684, 41.106575, 35.106720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349229, 0.048158, 0.935799,
		-0.593095, -0.761812, 0.260540,
		0.725450, -0.646006, -0.237484,
		43.320320, 40.912773, 35.035473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780239, 40.860054, 35.733574>,  <42.812504, 41.364979, 35.201714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780239, 40.860054, 35.733574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145676, 40.865578, 35.571011>,  <43.364937, 40.868893, 35.473473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145676, 40.865578, 35.571011>,  <42.780239, 40.860054, 35.733574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145676, 40.865578, 35.571011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403822, 0.086728, 0.910717,
		0.047820, -0.996137, 0.073658,
		0.913587, 0.013805, -0.406409,
		43.419750, 40.869720, 35.449089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156101, 40.568779, 36.222900>,  <42.780239, 40.860054, 35.733574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156101, 40.568779, 36.222900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415169, 40.768242, 35.992470>,  <43.570610, 40.887920, 35.854210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415169, 40.768242, 35.992470>,  <43.156101, 40.568779, 36.222900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415169, 40.768242, 35.992470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490651, 0.305485, 0.816052,
		0.582917, -0.811182, -0.046817,
		0.647664, 0.498661, -0.576079,
		43.609467, 40.917839, 35.819645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790146, 40.277809, 36.371452>,  <43.156101, 40.568779, 36.222900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790146, 40.277809, 36.371452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877495, 40.639385, 36.224377>,  <43.929905, 40.856331, 36.136131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877495, 40.639385, 36.224377>,  <43.790146, 40.277809, 36.371452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877495, 40.639385, 36.224377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677716, 0.130624, 0.723628,
		0.702149, -0.407214, -0.584092,
		0.218375, 0.903944, -0.367693,
		43.943008, 40.910568, 36.114067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576836, 40.386917, 36.470856>,  <43.790146, 40.277809, 36.371452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576836, 40.386917, 36.470856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427036, 40.750217, 36.396206>,  <44.337158, 40.968197, 36.351418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427036, 40.750217, 36.396206>,  <44.576836, 40.386917, 36.470856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427036, 40.750217, 36.396206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641705, 0.399160, 0.654894,
		0.669302, 0.125500, -0.732315,
		-0.374500, 0.908252, -0.186625,
		44.314686, 41.022694, 36.340218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143810, 40.857883, 36.466984>,  <44.576836, 40.386917, 36.470856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143810, 40.857883, 36.466984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825043, 41.080288, 36.561459>,  <44.633781, 41.213730, 36.618141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825043, 41.080288, 36.561459>,  <45.143810, 40.857883, 36.466984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825043, 41.080288, 36.561459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545952, 0.495535, 0.675560,
		0.258580, 0.667308, -0.698453,
		-0.796914, 0.556009, 0.236183,
		44.585968, 41.247089, 36.632313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364399, 41.525608, 36.442795>,  <45.143810, 40.857883, 36.466984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364399, 41.525608, 36.442795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030132, 41.506306, 36.661644>,  <44.829575, 41.494724, 36.792953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030132, 41.506306, 36.661644>,  <45.364399, 41.525608, 36.442795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030132, 41.506306, 36.661644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487189, 0.394817, 0.778953,
		-0.253603, 0.917492, -0.306422,
		-0.835663, -0.048259, 0.547118,
		44.779434, 41.491829, 36.825779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306019, 42.195618, 36.753891>,  <45.364399, 41.525608, 36.442795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306019, 42.195618, 36.753891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088856, 41.935616, 36.966583>,  <44.958557, 41.779613, 37.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088856, 41.935616, 36.966583>,  <45.306019, 42.195618, 36.753891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088856, 41.935616, 36.966583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510918, 0.246858, 0.823422,
		-0.666492, 0.718716, 0.198078,
		-0.542910, -0.650006, 0.531734,
		44.925983, 41.740612, 37.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244122, 42.397369, 37.367989>,  <45.306019, 42.195618, 36.753891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244122, 42.397369, 37.367989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228893, 42.005905, 37.448750>,  <45.219757, 41.771027, 37.497208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228893, 42.005905, 37.448750>,  <45.244122, 42.397369, 37.367989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228893, 42.005905, 37.448750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278969, 0.183609, 0.942584,
		-0.959545, 0.092212, 0.266027,
		-0.038072, -0.978665, 0.201905,
		45.217472, 41.712307, 37.509319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921959, 42.240040, 37.934532>,  <45.244122, 42.397369, 37.367989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921959, 42.240040, 37.934532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185066, 41.943871, 37.879238>,  <45.342930, 41.766171, 37.846062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185066, 41.943871, 37.879238>,  <44.921959, 42.240040, 37.934532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185066, 41.943871, 37.879238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428626, 0.217041, 0.877025,
		-0.619366, -0.636135, 0.460129,
		0.657773, -0.740423, -0.138236,
		45.382397, 41.721745, 37.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836349, 41.646996, 38.443073>,  <44.921959, 42.240040, 37.934532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836349, 41.646996, 38.443073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217094, 41.704288, 38.334667>,  <45.445541, 41.738663, 38.269623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217094, 41.704288, 38.334667>,  <44.836349, 41.646996, 38.443073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217094, 41.704288, 38.334667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252920, 0.132545, 0.958365,
		0.173191, -0.980773, 0.089938,
		0.951860, 0.143233, -0.271012,
		45.502651, 41.747257, 38.253365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268429, 41.128765, 38.745651>,  <44.836349, 41.646996, 38.443073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268429, 41.128765, 38.745651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476158, 41.462524, 38.671814>,  <45.600796, 41.662781, 38.627510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476158, 41.462524, 38.671814>,  <45.268429, 41.128765, 38.745651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476158, 41.462524, 38.671814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280092, 0.037879, 0.959226,
		0.807372, -0.549853, -0.214038,
		0.519325, 0.834402, -0.184592,
		45.631954, 41.712845, 38.616436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718559, 40.718765, 38.323071>,  <45.268429, 41.128765, 38.745651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718559, 40.718765, 38.323071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045414, 40.897942, 38.468201>,  <46.241528, 41.005447, 38.555279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045414, 40.897942, 38.468201>,  <45.718559, 40.718765, 38.323071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045414, 40.897942, 38.468201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573206, 0.698074, 0.429100,
		-0.061068, -0.558606, 0.827182,
		0.817132, 0.447942, 0.362826,
		46.290554, 41.032326, 38.577049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561611, 40.518566, 37.564152>,  <45.718559, 40.718765, 38.323071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561611, 40.518566, 37.564152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498638, 40.861439, 37.760300>,  <45.460854, 41.067162, 37.877987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498638, 40.861439, 37.760300>,  <45.561611, 40.518566, 37.564152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498638, 40.861439, 37.760300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666253, 0.274328, -0.693434,
		-0.728919, -0.435876, 0.527911,
		-0.157431, 0.857179, 0.490366,
		45.451408, 41.118591, 37.907410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814850, 40.541893, 37.699799>,  <45.561611, 40.518566, 37.564152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814850, 40.541893, 37.699799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902836, 40.931782, 37.715450>,  <44.955627, 41.165714, 37.724842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902836, 40.931782, 37.715450>,  <44.814850, 40.541893, 37.699799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902836, 40.931782, 37.715450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660709, 0.178371, -0.729142,
		-0.717691, 0.134529, 0.683243,
		0.219961, 0.974723, 0.039131,
		44.968822, 41.224197, 37.727188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185535, 40.851494, 37.734833>,  <44.814850, 40.541893, 37.699799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185535, 40.851494, 37.734833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426567, 41.113708, 37.552769>,  <44.571186, 41.271038, 37.443531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426567, 41.113708, 37.552769>,  <44.185535, 40.851494, 37.734833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426567, 41.113708, 37.552769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655031, 0.080453, -0.751306,
		-0.455888, 0.750868, 0.477874,
		0.602578, 0.655534, -0.455164,
		44.607342, 41.310368, 37.416218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709023, 41.289890, 37.549278>,  <44.185535, 40.851494, 37.734833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709023, 41.289890, 37.549278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040119, 41.364590, 37.337627>,  <44.238777, 41.409409, 37.210636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040119, 41.364590, 37.337627>,  <43.709023, 41.289890, 37.549278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040119, 41.364590, 37.337627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558906, 0.190795, -0.806983,
		-0.049749, 0.963702, 0.262304,
		0.827738, 0.186750, -0.529126,
		44.288441, 41.420616, 37.178890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593082, 41.918705, 37.022449>,  <43.709023, 41.289890, 37.549278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593082, 41.918705, 37.022449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891941, 41.685143, 36.895439>,  <44.071255, 41.545006, 36.819233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891941, 41.685143, 36.895439>,  <43.593082, 41.918705, 37.022449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891941, 41.685143, 36.895439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312986, 0.112365, -0.943087,
		0.586355, 0.804006, -0.098802,
		0.747147, -0.583907, -0.317528,
		44.116085, 41.509972, 36.800182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940777, 42.201702, 36.328453>,  <43.593082, 41.918705, 37.022449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940777, 42.201702, 36.328453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021580, 41.809959, 36.331196>,  <44.070061, 41.574913, 36.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021580, 41.809959, 36.331196>,  <43.940777, 42.201702, 36.328453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021580, 41.809959, 36.331196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256148, -0.059595, -0.964799,
		0.945293, 0.193143, -0.262900,
		0.202012, -0.979359, 0.006861,
		44.082184, 41.516151, 36.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949413, 42.113655, 35.609306>,  <43.940777, 42.201702, 36.328453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949413, 42.113655, 35.609306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964031, 41.746090, 35.766415>,  <43.972801, 41.525551, 35.860680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964031, 41.746090, 35.766415>,  <43.949413, 42.113655, 35.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964031, 41.746090, 35.766415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320743, -0.383021, -0.866267,
		0.946461, -0.094321, -0.308731,
		0.036544, -0.918911, 0.392767,
		43.974995, 41.470417, 35.884243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400612, 41.724297, 35.188965>,  <43.949413, 42.113655, 35.609306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400612, 41.724297, 35.188965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178780, 41.443008, 35.366917>,  <44.045681, 41.274235, 35.473686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178780, 41.443008, 35.366917>,  <44.400612, 41.724297, 35.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178780, 41.443008, 35.366917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140265, -0.447974, -0.882975,
		0.820223, -0.552081, 0.149800,
		-0.554580, -0.703225, 0.444877,
		44.012405, 41.232040, 35.500381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389885, 41.179951, 34.764008>,  <44.400612, 41.724297, 35.188965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389885, 41.179951, 34.764008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078270, 41.086784, 34.996853>,  <43.891300, 41.030884, 35.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078270, 41.086784, 34.996853>,  <44.389885, 41.179951, 34.764008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078270, 41.086784, 34.996853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385793, -0.553795, -0.737886,
		0.494235, -0.799414, 0.341569,
		-0.779035, -0.232914, 0.582113,
		43.844559, 41.016911, 35.171486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421894, 40.448990, 34.781345>,  <44.389885, 41.179951, 34.764008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421894, 40.448990, 34.781345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049961, 40.594193, 34.805485>,  <43.826801, 40.681313, 34.819969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049961, 40.594193, 34.805485>,  <44.421894, 40.448990, 34.781345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049961, 40.594193, 34.805485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196824, -0.352033, -0.915059,
		-0.310920, -0.862731, 0.398779,
		-0.929833, 0.362999, 0.060352,
		43.771011, 40.703094, 34.823589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016972, 39.867577, 34.509186>,  <44.421894, 40.448990, 34.781345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016972, 39.867577, 34.509186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770401, 40.182484, 34.515095>,  <43.622459, 40.371429, 34.518642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770401, 40.182484, 34.515095>,  <44.016972, 39.867577, 34.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770401, 40.182484, 34.515095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541225, -0.409999, -0.734150,
		-0.571917, -0.460549, 0.678827,
		-0.616430, 0.787271, 0.014775,
		43.585472, 40.418667, 34.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348305, 39.591785, 34.525330>,  <44.016972, 39.867577, 34.509186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348305, 39.591785, 34.525330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292793, 39.968098, 34.401608>,  <43.259487, 40.193886, 34.327374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292793, 39.968098, 34.401608>,  <43.348305, 39.591785, 34.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292793, 39.968098, 34.401608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480253, -0.337075, -0.809776,
		-0.866082, 0.036163, 0.498593,
		-0.138779, 0.940783, -0.309302,
		43.251160, 40.250332, 34.308819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591297, 39.721626, 34.409531>,  <43.348305, 39.591785, 34.525330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591297, 39.721626, 34.409531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780758, 39.992134, 34.183857>,  <42.894436, 40.154438, 34.048454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780758, 39.992134, 34.183857>,  <42.591297, 39.721626, 34.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780758, 39.992134, 34.183857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451401, -0.363646, -0.814861,
		-0.756232, 0.640638, 0.133027,
		0.473656, 0.676273, -0.564185,
		42.922855, 40.195015, 34.014603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931072, 40.161285, 34.009335>,  <42.591297, 39.721626, 34.409531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931072, 40.161285, 34.009335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275066, 40.348503, 33.927994>,  <42.481464, 40.460835, 33.879189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275066, 40.348503, 33.927994>,  <41.931072, 40.161285, 34.009335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275066, 40.348503, 33.927994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274567, 0.088495, -0.957487,
		-0.430152, 0.879263, 0.204614,
		0.859990, 0.468045, -0.203350,
		42.533062, 40.488918, 33.866989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836071, 40.845894, 33.570461>,  <41.931072, 40.161285, 34.009335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836071, 40.845894, 33.570461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214157, 40.722271, 33.528408>,  <42.441010, 40.648098, 33.503178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214157, 40.722271, 33.528408>,  <41.836071, 40.845894, 33.570461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214157, 40.722271, 33.528408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097515, 0.040040, -0.994428,
		0.311541, 0.950202, 0.007709,
		0.945216, -0.309053, -0.105133,
		42.497723, 40.629555, 33.496868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983459, 41.059822, 32.933994>,  <41.836071, 40.845894, 33.570461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983459, 41.059822, 32.933994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289860, 40.808323, 32.987534>,  <42.473701, 40.657425, 33.019657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289860, 40.808323, 32.987534>,  <41.983459, 41.059822, 32.933994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289860, 40.808323, 32.987534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027808, -0.175617, -0.984066,
		0.642236, 0.757519, -0.117039,
		0.766002, -0.628748, 0.133852,
		42.519661, 40.619698, 33.027691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505249, 41.246315, 32.514011>,  <41.983459, 41.059822, 32.933994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505249, 41.246315, 32.514011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526302, 40.851440, 32.574261>,  <42.538933, 40.614513, 32.610409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526302, 40.851440, 32.574261>,  <42.505249, 41.246315, 32.514011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526302, 40.851440, 32.574261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094825, -0.145211, -0.984846,
		0.994101, 0.066120, 0.085967,
		0.052635, -0.987189, 0.150624,
		42.542091, 40.555283, 32.619450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829666, 41.071854, 31.910360>,  <42.505249, 41.246315, 32.514011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829666, 41.071854, 31.910360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729469, 40.717434, 32.066399>,  <42.669350, 40.504784, 32.160023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729469, 40.717434, 32.066399>,  <42.829666, 41.071854, 31.910360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729469, 40.717434, 32.066399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173849, -0.355225, -0.918472,
		0.952381, -0.297891, -0.065056,
		-0.250495, -0.886045, 0.390098,
		42.654320, 40.451622, 32.183430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065105, 40.574257, 31.404238>,  <42.829666, 41.071854, 31.910360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065105, 40.574257, 31.404238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800613, 40.399742, 31.648344>,  <42.641918, 40.295033, 31.794807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800613, 40.399742, 31.648344>,  <43.065105, 40.574257, 31.404238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800613, 40.399742, 31.648344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453728, -0.415244, -0.788482,
		0.597411, -0.798266, 0.076619,
		-0.661234, -0.436284, 0.610267,
		42.602242, 40.268856, 31.831425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206367, 39.894207, 31.217577>,  <43.065105, 40.574257, 31.404238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206367, 39.894207, 31.217577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842045, 39.969967, 31.364307>,  <42.623451, 40.015423, 31.452345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842045, 39.969967, 31.364307>,  <43.206367, 39.894207, 31.217577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842045, 39.969967, 31.364307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410440, -0.511030, -0.755240,
		0.044416, -0.838436, 0.543187,
		-0.910805, 0.189401, 0.366825,
		42.568802, 40.026787, 31.474356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840919, 39.313606, 31.088167>,  <43.206367, 39.894207, 31.217577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840919, 39.313606, 31.088167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550056, 39.582031, 31.146008>,  <42.375538, 39.743088, 31.180712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550056, 39.582031, 31.146008>,  <42.840919, 39.313606, 31.088167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550056, 39.582031, 31.146008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515162, -0.394235, -0.761043,
		-0.453708, -0.627889, 0.632380,
		-0.727157, 0.671070, 0.144597,
		42.331909, 39.783352, 31.189388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174458, 38.963547, 30.948784>,  <42.840919, 39.313606, 31.088167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174458, 38.963547, 30.948784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102192, 39.355652, 30.916685>,  <42.058834, 39.590916, 30.897427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102192, 39.355652, 30.916685>,  <42.174458, 38.963547, 30.948784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102192, 39.355652, 30.916685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528077, -0.165508, -0.832912,
		-0.829757, -0.108099, 0.547557,
		-0.180662, 0.980266, -0.080247,
		42.047993, 39.649731, 30.892611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467686, 38.366848, 31.068031>,  <42.174458, 38.963547, 30.948784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467686, 38.366848, 31.068031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245426, 38.468830, 30.751486>,  <42.112072, 38.530022, 30.561558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245426, 38.468830, 30.751486>,  <42.467686, 38.366848, 31.068031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245426, 38.468830, 30.751486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155863, 0.903004, 0.400363,
		0.816680, 0.345803, -0.462011,
		-0.555645, 0.254958, -0.791363,
		42.078732, 38.545319, 30.514076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680904, 38.407406, 31.783205>,  <42.467686, 38.366848, 31.068031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680904, 38.407406, 31.783205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383633, 38.436459, 32.049259>,  <42.205269, 38.453888, 32.208893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383633, 38.436459, 32.049259>,  <42.680904, 38.407406, 31.783205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383633, 38.436459, 32.049259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298593, -0.853610, 0.426840,
		0.598767, 0.515825, 0.612701,
		-0.743183, 0.072630, 0.665135,
		42.160679, 38.458248, 32.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904942, 38.297661, 32.561848>,  <42.680904, 38.407406, 31.783205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904942, 38.297661, 32.561848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537498, 38.192345, 32.443970>,  <42.317032, 38.129154, 32.373241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537498, 38.192345, 32.443970>,  <42.904942, 38.297661, 32.561848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537498, 38.192345, 32.443970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195496, -0.950852, 0.240128,
		-0.343433, 0.162972, 0.924929,
		-0.918605, -0.263288, -0.294693,
		42.261917, 38.113358, 32.355560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889771, 37.660793, 32.833763>,  <42.904942, 38.297661, 32.561848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889771, 37.660793, 32.833763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546062, 37.656265, 32.629204>,  <42.339836, 37.653549, 32.506470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546062, 37.656265, 32.629204>,  <42.889771, 37.660793, 32.833763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546062, 37.656265, 32.629204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012966, -0.999916, 0.000349,
		-0.511357, -0.006331, 0.859345,
		-0.859271, -0.011320, -0.511396,
		42.288280, 37.652870, 32.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283600, 37.242832, 33.209255>,  <42.889771, 37.660793, 32.833763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283600, 37.242832, 33.209255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283813, 37.228622, 32.809509>,  <42.283943, 37.220097, 32.569660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283813, 37.228622, 32.809509>,  <42.283600, 37.242832, 33.209255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283813, 37.228622, 32.809509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037375, -0.998671, 0.035476,
		-0.999301, 0.037333, -0.001861,
		0.000534, -0.035521, -0.999369,
		42.283974, 37.217968, 32.509697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668980, 36.876892, 32.921082>,  <42.283600, 37.242832, 33.209255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668980, 36.876892, 32.921082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012497, 36.833282, 32.720848>,  <42.218609, 36.807117, 32.600708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012497, 36.833282, 32.720848>,  <41.668980, 36.876892, 32.921082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012497, 36.833282, 32.720848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058693, -0.949726, 0.307533,
		-0.508941, -0.293489, -0.809224,
		0.858798, -0.109021, -0.500580,
		42.270138, 36.800575, 32.570675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796783, 36.126354, 32.793472>,  <41.668980, 36.876892, 32.921082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796783, 36.126354, 32.793472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168282, 36.271606, 32.763615>,  <42.391178, 36.358757, 32.745701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168282, 36.271606, 32.763615>,  <41.796783, 36.126354, 32.793472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168282, 36.271606, 32.763615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369511, -0.890472, 0.265557,
		0.029961, -0.274217, -0.961201,
		0.928743, 0.363131, -0.074647,
		42.446903, 36.380547, 32.741222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362011, 35.720249, 32.409637>,  <41.796783, 36.126354, 32.793472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362011, 35.720249, 32.409637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550816, 35.936581, 32.688122>,  <42.664101, 36.066380, 32.855213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550816, 35.936581, 32.688122>,  <42.362011, 35.720249, 32.409637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550816, 35.936581, 32.688122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439986, -0.828852, 0.345568,
		0.763947, 0.143209, -0.629187,
		0.472014, 0.540829, 0.696209,
		42.692421, 36.098831, 32.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172089, 35.527702, 32.581825>,  <42.362011, 35.720249, 32.409637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172089, 35.527702, 32.581825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989422, 35.646744, 32.917179>,  <42.879822, 35.718170, 33.118393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989422, 35.646744, 32.917179>,  <43.172089, 35.527702, 32.581825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989422, 35.646744, 32.917179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157875, -0.900321, 0.405582,
		0.875520, 0.317575, 0.364159,
		-0.456662, 0.297604, 0.838386,
		42.852425, 35.736027, 33.168694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610844, 35.479107, 33.162354>,  <43.172089, 35.527702, 32.581825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610844, 35.479107, 33.162354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221470, 35.410126, 33.222588>,  <42.987846, 35.368736, 33.258728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221470, 35.410126, 33.222588>,  <43.610844, 35.479107, 33.162354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221470, 35.410126, 33.222588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223648, -0.856939, 0.464367,
		0.048965, 0.485712, 0.872746,
		-0.973439, -0.172451, 0.150589,
		42.929440, 35.358391, 33.267765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361332, 35.546700, 32.977779>,  <43.610844, 35.479107, 33.162354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361332, 35.546700, 32.977779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613449, 35.853832, 33.023674>,  <44.764721, 36.038113, 33.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613449, 35.853832, 33.023674>,  <44.361332, 35.546700, 32.977779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613449, 35.853832, 33.023674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580600, -0.564302, 0.586913,
		0.515395, -0.303314, -0.801479,
		0.630295, 0.767831, 0.114735,
		44.802536, 36.084183, 33.058094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034760, 35.441826, 32.653610>,  <44.361332, 35.546700, 32.977779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034760, 35.441826, 32.653610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013889, 35.679626, 32.974571>,  <45.001369, 35.822308, 33.167149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013889, 35.679626, 32.974571>,  <45.034760, 35.441826, 32.653610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013889, 35.679626, 32.974571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561188, -0.647171, 0.515983,
		0.826043, 0.477216, -0.299864,
		-0.052172, 0.594503, 0.802399,
		44.998238, 35.857979, 33.215290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683372, 35.714954, 32.814915>,  <45.034760, 35.441826, 32.653610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683372, 35.714954, 32.814915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459377, 35.680016, 33.144470>,  <45.324982, 35.659050, 33.342201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459377, 35.680016, 33.144470>,  <45.683372, 35.714954, 32.814915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459377, 35.680016, 33.144470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656470, -0.653439, 0.376915,
		0.505435, 0.751923, 0.423258,
		-0.559984, -0.087350, 0.823886,
		45.291382, 35.653812, 33.391636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915646, 35.976246, 33.358162>,  <45.683372, 35.714954, 32.814915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915646, 35.976246, 33.358162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690723, 35.683376, 33.511909>,  <45.555771, 35.507656, 33.604156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690723, 35.683376, 33.511909>,  <45.915646, 35.976246, 33.358162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690723, 35.683376, 33.511909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808816, -0.390204, 0.439951,
		-0.172138, 0.558270, 0.811605,
		-0.562303, -0.732172, 0.384369,
		45.522034, 35.463726, 33.627220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825806, 36.005714, 34.028961>,  <45.915646, 35.976246, 33.358162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825806, 36.005714, 34.028961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772057, 35.614372, 33.966019>,  <45.739807, 35.379566, 33.928253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772057, 35.614372, 33.966019>,  <45.825806, 36.005714, 34.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772057, 35.614372, 33.966019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799469, -0.200856, 0.566132,
		-0.585486, -0.049733, 0.809155,
		-0.134369, -0.978357, -0.157359,
		45.731747, 35.320866, 33.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738022, 35.554993, 34.712826>,  <45.825806, 36.005714, 34.028961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738022, 35.554993, 34.712826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868397, 35.313725, 34.421635>,  <45.946621, 35.168964, 34.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868397, 35.313725, 34.421635>,  <45.738022, 35.554993, 34.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868397, 35.313725, 34.421635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800857, -0.233039, 0.551652,
		-0.502386, -0.762812, 0.407094,
		0.325938, -0.603167, -0.727979,
		45.966179, 35.132774, 34.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888348, 34.853580, 34.986702>,  <45.738022, 35.554993, 34.712826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888348, 34.853580, 34.986702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089554, 34.931248, 34.649830>,  <46.210278, 34.977848, 34.447704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089554, 34.931248, 34.649830>,  <45.888348, 34.853580, 34.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089554, 34.931248, 34.649830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848946, -0.293732, 0.439332,
		-0.162072, -0.935959, -0.312591,
		0.503015, 0.194169, -0.842185,
		46.240459, 34.989498, 34.397175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500294, 34.397945, 35.011097>,  <45.888348, 34.853580, 34.986702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500294, 34.397945, 35.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590836, 34.687248, 34.750126>,  <46.645161, 34.860828, 34.593544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590836, 34.687248, 34.750126>,  <46.500294, 34.397945, 35.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590836, 34.687248, 34.750126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940524, 0.011922, 0.339520,
		0.253337, -0.690479, -0.677539,
		0.226353, 0.723254, -0.652432,
		46.658741, 34.904224, 34.554398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063549, 34.203793, 34.600826>,  <46.500294, 34.397945, 35.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063549, 34.203793, 34.600826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035114, 34.600338, 34.644917>,  <47.018055, 34.838264, 34.671371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035114, 34.600338, 34.644917>,  <47.063549, 34.203793, 34.600826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.035114, 34.600338, 34.644917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920351, 0.022583, 0.390440,
		0.384578, 0.129201, -0.914006,
		-0.071087, 0.991361, 0.110225,
		47.013790, 34.897747, 34.677982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.680714, 34.598286, 34.416985>,  <47.063549, 34.203793, 34.600826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.680714, 34.598286, 34.416985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485985, 34.845592, 34.663807>,  <47.369148, 34.993977, 34.811901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485985, 34.845592, 34.663807>,  <47.680714, 34.598286, 34.416985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485985, 34.845592, 34.663807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842753, 0.146662, 0.517937,
		0.229724, 0.772166, -0.592441,
		-0.486822, 0.618264, 0.617053,
		47.339939, 35.031071, 34.848923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.960438, 35.171356, 34.493767>,  <47.680714, 34.598286, 34.416985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.960438, 35.171356, 34.493767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772911, 35.184902, 34.846825>,  <47.660393, 35.193027, 35.058659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772911, 35.184902, 34.846825>,  <47.960438, 35.171356, 34.493767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772911, 35.184902, 34.846825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840309, 0.325025, 0.433865,
		-0.272190, 0.945099, -0.180834,
		-0.468821, 0.033863, 0.882644,
		47.632263, 35.195061, 35.111618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.888130, 33.326675, 21.931856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494080, 33.390224, 21.905670>,  <37.257648, 33.428352, 21.889957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494080, 33.390224, 21.905670>,  <37.888130, 33.326675, 21.931856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494080, 33.390224, 21.905670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003210, 0.363904, 0.931431,
		0.171802, 0.917787, -0.357981,
		-0.985126, 0.158873, -0.065466,
		37.198544, 33.437885, 21.886030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865337, 33.942242, 22.320349>,  <37.888130, 33.326675, 21.931856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865337, 33.942242, 22.320349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495338, 33.794144, 22.286179>,  <37.273338, 33.705284, 22.265676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495338, 33.794144, 22.286179>,  <37.865337, 33.942242, 22.320349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495338, 33.794144, 22.286179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237371, 0.387504, 0.890784,
		-0.296702, 0.844252, -0.446325,
		-0.924999, -0.370242, -0.085427,
		37.217838, 33.683071, 22.260550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380360, 34.409962, 22.350006>,  <37.865337, 33.942242, 22.320349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380360, 34.409962, 22.350006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.156120, 34.093857, 22.448975>,  <37.021576, 33.904194, 22.508356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.156120, 34.093857, 22.448975>,  <37.380360, 34.409962, 22.350006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156120, 34.093857, 22.448975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185430, 0.410999, 0.892578,
		-0.807057, 0.454501, -0.376945,
		-0.560602, -0.790258, 0.247422,
		36.987938, 33.856781, 22.523201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652527, 34.585110, 22.683599>,  <37.380360, 34.409962, 22.350006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652527, 34.585110, 22.683599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736385, 34.217766, 22.817865>,  <36.786701, 33.997360, 22.898424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736385, 34.217766, 22.817865>,  <36.652527, 34.585110, 22.683599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736385, 34.217766, 22.817865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250001, 0.281538, 0.926410,
		-0.945276, -0.278135, -0.170567,
		0.209647, -0.918356, 0.335665,
		36.799278, 33.942261, 22.918566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117062, 34.337429, 22.946882>,  <36.652527, 34.585110, 22.683599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117062, 34.337429, 22.946882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389263, 34.096451, 23.113722>,  <36.552586, 33.951862, 23.213825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389263, 34.096451, 23.113722>,  <36.117062, 34.337429, 22.946882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389263, 34.096451, 23.113722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304795, 0.284919, 0.908802,
		-0.666343, -0.745574, 0.010267,
		0.680505, -0.602445, 0.417101,
		36.593414, 33.915718, 23.238852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888714, 34.164589, 23.606895>,  <36.117062, 34.337429, 22.946882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888714, 34.164589, 23.606895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264030, 34.047092, 23.679913>,  <36.489220, 33.976593, 23.723722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264030, 34.047092, 23.679913>,  <35.888714, 34.164589, 23.606895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264030, 34.047092, 23.679913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185199, 0.018991, 0.982518,
		-0.292073, -0.955696, -0.036582,
		0.938294, -0.293742, 0.182541,
		36.545517, 33.958969, 23.734674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951206, 33.623390, 24.155512>,  <35.888714, 34.164589, 23.606895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951206, 33.623390, 24.155512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319138, 33.778931, 24.176331>,  <36.539898, 33.872257, 24.188822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319138, 33.778931, 24.176331>,  <35.951206, 33.623390, 24.155512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319138, 33.778931, 24.176331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012542, -0.103452, 0.994555,
		0.392122, -0.915472, -0.090281,
		0.919828, 0.388855, 0.052047,
		36.595085, 33.895588, 24.191944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449772, 33.176331, 24.528828>,  <35.951206, 33.623390, 24.155512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449772, 33.176331, 24.528828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581371, 33.552864, 24.558867>,  <36.660332, 33.778786, 24.576889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581371, 33.552864, 24.558867>,  <36.449772, 33.176331, 24.528828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581371, 33.552864, 24.558867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073744, -0.104890, 0.991746,
		0.941445, -0.320750, -0.103927,
		0.329003, 0.941338, 0.075095,
		36.680073, 33.835266, 24.581394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808151, 33.200439, 25.194059>,  <36.449772, 33.176331, 24.528828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808151, 33.200439, 25.194059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783150, 33.593441, 25.123884>,  <36.768150, 33.829243, 25.081779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783150, 33.593441, 25.123884>,  <36.808151, 33.200439, 25.194059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783150, 33.593441, 25.123884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095833, 0.180878, 0.978825,
		0.993433, 0.044366, -0.105462,
		-0.062502, 0.982504, -0.175439,
		36.764400, 33.888191, 25.071253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308323, 33.505466, 25.657984>,  <36.808151, 33.200439, 25.194059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308323, 33.505466, 25.657984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085110, 33.821171, 25.555475>,  <36.951183, 34.010593, 25.493971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085110, 33.821171, 25.555475>,  <37.308323, 33.505466, 25.657984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085110, 33.821171, 25.555475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096307, 0.245141, 0.964692,
		0.824212, 0.563010, -0.060785,
		-0.558032, 0.789257, -0.256270,
		36.917702, 34.057949, 25.478594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687092, 34.098598, 25.930950>,  <37.308323, 33.505466, 25.657984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687092, 34.098598, 25.930950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.312393, 34.231270, 25.886234>,  <37.087574, 34.310871, 25.859406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.312393, 34.231270, 25.886234>,  <37.687092, 34.098598, 25.930950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312393, 34.231270, 25.886234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009051, 0.296328, 0.955044,
		0.349895, 0.895644, -0.274581,
		-0.936745, 0.331680, -0.111790,
		37.031368, 34.330772, 25.852697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741714, 34.767277, 26.167019>,  <37.687092, 34.098598, 25.930950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741714, 34.767277, 26.167019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364594, 34.636814, 26.194584>,  <37.138321, 34.558537, 26.211123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364594, 34.636814, 26.194584>,  <37.741714, 34.767277, 26.167019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364594, 34.636814, 26.194584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034772, 0.301821, 0.952730,
		-0.331535, 0.895840, -0.295899,
		-0.942802, -0.326152, 0.068914,
		37.081753, 34.538967, 26.215258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370049, 35.309624, 26.389059>,  <37.741714, 34.767277, 26.167019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370049, 35.309624, 26.389059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 35.006851, 26.502150>,  <36.992985, 34.825188, 26.570004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 35.006851, 26.502150>,  <37.370049, 35.309624, 26.389059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134384, 35.006851, 26.502150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065705, 0.393625, 0.916920,
		-0.805338, 0.521639, -0.281644,
		-0.589164, -0.756936, 0.282727,
		36.957634, 34.779770, 26.586967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843613, 35.649490, 26.751677>,  <37.370049, 35.309624, 26.389059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843613, 35.649490, 26.751677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811367, 35.273022, 26.882948>,  <36.792019, 35.047142, 26.961710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811367, 35.273022, 26.882948>,  <36.843613, 35.649490, 26.751677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811367, 35.273022, 26.882948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099215, 0.335191, 0.936912,
		-0.991795, 0.042966, -0.120399,
		-0.080611, -0.941170, 0.328178,
		36.787182, 34.990669, 26.981401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399334, 35.779728, 27.209967>,  <36.843613, 35.649490, 26.751677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399334, 35.779728, 27.209967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552151, 35.418877, 27.290174>,  <36.643841, 35.202366, 27.338299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552151, 35.418877, 27.290174>,  <36.399334, 35.779728, 27.209967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552151, 35.418877, 27.290174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057082, 0.193527, 0.979433,
		-0.922380, -0.385630, 0.022440,
		0.382042, -0.902129, 0.200518,
		36.666763, 35.148239, 27.350330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974438, 35.440910, 27.810364>,  <36.399334, 35.779728, 27.209967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974438, 35.440910, 27.810364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349209, 35.301128, 27.807751>,  <36.574074, 35.217258, 27.806183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349209, 35.301128, 27.807751>,  <35.974438, 35.440910, 27.810364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349209, 35.301128, 27.807751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095967, 0.239241, 0.966206,
		-0.336081, -0.905895, 0.257688,
		0.936931, -0.349454, -0.006532,
		36.630287, 35.196293, 27.805792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125755, 35.408569, 28.417862>,  <35.974438, 35.440910, 27.810364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125755, 35.408569, 28.417862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498577, 35.320232, 28.302971>,  <36.722271, 35.267231, 28.234037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498577, 35.320232, 28.302971>,  <36.125755, 35.408569, 28.417862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498577, 35.320232, 28.302971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354212, 0.388715, 0.850549,
		-0.076191, -0.894499, 0.440530,
		0.932056, -0.220846, -0.287226,
		36.778194, 35.253979, 28.216803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373276, 35.141697, 28.969828>,  <36.125755, 35.408569, 28.417862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373276, 35.141697, 28.969828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688141, 35.262814, 28.754908>,  <36.877060, 35.335484, 28.625956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688141, 35.262814, 28.754908>,  <36.373276, 35.141697, 28.969828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688141, 35.262814, 28.754908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428134, 0.358806, 0.829433,
		0.443936, -0.882934, 0.152801,
		0.787161, 0.302795, -0.537301,
		36.924290, 35.353653, 28.593718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001656, 34.910213, 29.385117>,  <36.373276, 35.141697, 28.969828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001656, 34.910213, 29.385117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119293, 35.201839, 29.137899>,  <37.189877, 35.376816, 28.989569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119293, 35.201839, 29.137899>,  <37.001656, 34.910213, 29.385117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119293, 35.201839, 29.137899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513807, 0.424657, 0.745432,
		0.805922, -0.536782, -0.249709,
		0.294094, 0.729063, -0.618042,
		37.207520, 35.420559, 28.952486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750790, 35.008442, 29.464607>,  <37.001656, 34.910213, 29.385117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750790, 35.008442, 29.464607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653572, 35.351063, 29.282509>,  <37.595242, 35.556637, 29.173250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653572, 35.351063, 29.282509>,  <37.750790, 35.008442, 29.464607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653572, 35.351063, 29.282509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564180, 0.506597, 0.651967,
		0.789070, -0.098384, -0.606374,
		-0.243045, 0.856551, -0.455247,
		37.580658, 35.608028, 29.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331848, 35.427158, 29.552280>,  <37.750790, 35.008442, 29.464607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331848, 35.427158, 29.552280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048321, 35.685169, 29.438076>,  <37.878204, 35.839977, 29.369555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048321, 35.685169, 29.438076>,  <38.331848, 35.427158, 29.552280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048321, 35.685169, 29.438076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245986, 0.605372, 0.756978,
		0.661112, 0.466328, -0.587766,
		-0.708817, 0.645029, -0.285509,
		37.835674, 35.878677, 29.352423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724880, 36.036129, 29.354368>,  <38.331848, 35.427158, 29.552280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724880, 36.036129, 29.354368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350029, 36.097691, 29.479654>,  <38.125118, 36.134628, 29.554825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350029, 36.097691, 29.479654>,  <38.724880, 36.036129, 29.354368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350029, 36.097691, 29.479654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342267, 0.580555, 0.738789,
		-0.068136, 0.799543, -0.596731,
		-0.937129, 0.153903, 0.313213,
		38.068890, 36.143860, 29.573618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064915, 36.413143, 29.908533>,  <38.724880, 36.036129, 29.354368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064915, 36.413143, 29.908533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440239, 36.551178, 29.917326>,  <39.665436, 36.633999, 29.922602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440239, 36.551178, 29.917326>,  <39.064915, 36.413143, 29.908533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440239, 36.551178, 29.917326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076786, 0.269935, -0.959812,
		-0.337149, 0.898917, 0.279782,
		0.938315, 0.345083, 0.021984,
		39.721733, 36.654701, 29.923922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091331, 36.982063, 29.450886>,  <39.064915, 36.413143, 29.908533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091331, 36.982063, 29.450886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471230, 36.859039, 29.474154>,  <39.699169, 36.785225, 29.488115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471230, 36.859039, 29.474154>,  <39.091331, 36.982063, 29.450886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471230, 36.859039, 29.474154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086977, 0.080785, -0.992930,
		0.300684, 0.948094, 0.103475,
		0.949749, -0.307558, 0.058171,
		39.756153, 36.766773, 29.491606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472839, 37.522987, 29.145657>,  <39.091331, 36.982063, 29.450886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472839, 37.522987, 29.145657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689995, 37.187592, 29.126867>,  <39.820290, 36.986355, 29.115593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689995, 37.187592, 29.126867>,  <39.472839, 37.522987, 29.145657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689995, 37.187592, 29.126867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118861, 0.132087, -0.984086,
		0.831351, 0.528665, 0.171372,
		0.542888, -0.838491, -0.046973,
		39.852859, 36.936043, 29.112776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894814, 37.673954, 28.672857>,  <39.472839, 37.522987, 29.145657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894814, 37.673954, 28.672857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972221, 37.281570, 28.666325>,  <40.018665, 37.046139, 28.662405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972221, 37.281570, 28.666325>,  <39.894814, 37.673954, 28.672857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972221, 37.281570, 28.666325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306545, 0.076272, -0.948795,
		0.931976, 0.178608, 0.315469,
		0.193524, -0.980960, -0.016332,
		40.030277, 36.987282, 28.661425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569592, 37.526062, 28.281960>,  <39.894814, 37.673954, 28.672857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569592, 37.526062, 28.281960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 37.206814, 28.269156>,  <40.184540, 37.015266, 28.261473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 37.206814, 28.269156>,  <40.569592, 37.526062, 28.281960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328934, 37.206814, 28.269156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337606, -0.217771, -0.915750,
		0.723907, -0.561766, 0.400471,
		-0.601648, -0.798120, -0.032010,
		40.148438, 36.967377, 28.259552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881672, 37.167274, 27.811802>,  <40.569592, 37.526062, 28.281960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881672, 37.167274, 27.811802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550751, 36.943565, 27.832899>,  <40.352200, 36.809341, 27.845558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550751, 36.943565, 27.832899>,  <40.881672, 37.167274, 27.811802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550751, 36.943565, 27.832899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168965, -0.337281, -0.926117,
		0.535743, -0.757267, 0.373531,
		-0.827303, -0.559274, 0.052744,
		40.302559, 36.775784, 27.848722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960030, 36.366676, 27.617655>,  <40.881672, 37.167274, 27.811802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960030, 36.366676, 27.617655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577881, 36.467323, 27.555756>,  <40.348591, 36.527710, 27.518616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577881, 36.467323, 27.555756>,  <40.960030, 36.366676, 27.617655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577881, 36.467323, 27.555756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052054, -0.372265, -0.926666,
		-0.290770, -0.893369, 0.342556,
		-0.955376, 0.251615, -0.154747,
		40.291267, 36.542809, 27.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721317, 35.703007, 27.318541>,  <40.960030, 36.366676, 27.617655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721317, 35.703007, 27.318541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435165, 35.975483, 27.256292>,  <40.263474, 36.138969, 27.218945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435165, 35.975483, 27.256292>,  <40.721317, 35.703007, 27.318541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435165, 35.975483, 27.256292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252046, -0.459288, -0.851779,
		-0.651696, -0.570120, 0.500255,
		-0.715377, 0.681189, -0.155619,
		40.220551, 36.179840, 27.209606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060730, 35.291454, 27.221100>,  <40.721317, 35.703007, 27.318541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060730, 35.291454, 27.221100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008709, 35.653458, 27.059093>,  <39.977497, 35.870659, 26.961889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008709, 35.653458, 27.059093>,  <40.060730, 35.291454, 27.221100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008709, 35.653458, 27.059093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403170, -0.421462, -0.812295,
		-0.905837, 0.057648, 0.419687,
		-0.130055, 0.905012, -0.405018,
		39.969692, 35.924961, 26.937588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442802, 35.270409, 27.015783>,  <40.060730, 35.291454, 27.221100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442802, 35.270409, 27.015783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614040, 35.555412, 26.793411>,  <39.716782, 35.726414, 26.659988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614040, 35.555412, 26.793411>,  <39.442802, 35.270409, 27.015783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614040, 35.555412, 26.793411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335918, -0.445621, -0.829808,
		-0.838984, 0.541984, 0.048578,
		0.428095, 0.712514, -0.555931,
		39.742470, 35.769165, 26.626633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979042, 35.393135, 26.449123>,  <39.442802, 35.270409, 27.015783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979042, 35.393135, 26.449123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335400, 35.519245, 26.318336>,  <39.549213, 35.594910, 26.239864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335400, 35.519245, 26.318336>,  <38.979042, 35.393135, 26.449123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335400, 35.519245, 26.318336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147536, -0.479959, -0.864796,
		-0.429580, 0.818681, -0.381079,
		0.890895, 0.315277, -0.326966,
		39.602669, 35.613827, 26.220247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918552, 35.710911, 25.738808>,  <38.979042, 35.393135, 26.449123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918552, 35.710911, 25.738808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314732, 35.656212, 25.731815>,  <39.552441, 35.623394, 25.727621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314732, 35.656212, 25.731815>,  <38.918552, 35.710911, 25.738808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314732, 35.656212, 25.731815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043240, -0.187765, -0.981262,
		0.130900, 0.972649, -0.191885,
		0.990452, -0.136744, -0.017479,
		39.611866, 35.615189, 25.726572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158546, 36.148918, 25.201199>,  <38.918552, 35.710911, 25.738808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158546, 36.148918, 25.201199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424206, 35.858341, 25.271841>,  <39.583603, 35.683994, 25.314226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424206, 35.858341, 25.271841>,  <39.158546, 36.148918, 25.201199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424206, 35.858341, 25.271841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110882, -0.137903, -0.984219,
		0.739333, 0.673249, -0.011039,
		0.664147, -0.726442, 0.176608,
		39.623451, 35.640408, 25.324823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546787, 36.284184, 24.707521>,  <39.158546, 36.148918, 25.201199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546787, 36.284184, 24.707521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.632408, 35.903706, 24.796440>,  <39.683781, 35.675419, 24.849791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.632408, 35.903706, 24.796440>,  <39.546787, 36.284184, 24.707521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632408, 35.903706, 24.796440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250803, -0.166426, -0.953625,
		0.944077, 0.259876, 0.202938,
		0.214050, -0.951193, 0.222296,
		39.696625, 35.618347, 24.863129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208534, 36.139420, 24.354959>,  <39.546787, 36.284184, 24.707521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208534, 36.139420, 24.354959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 35.783627, 24.410061>,  <39.929676, 35.570152, 24.443121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 35.783627, 24.410061>,  <40.208534, 36.139420, 24.354959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034248, 35.783627, 24.410061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186869, -0.239103, -0.952843,
		0.880475, -0.389422, 0.270397,
		-0.435711, -0.889483, 0.137753,
		39.903534, 35.516781, 24.451387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496166, 35.660976, 23.933458>,  <40.208534, 36.139420, 24.354959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496166, 35.660976, 23.933458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178429, 35.440079, 24.034681>,  <39.987785, 35.307541, 24.095415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178429, 35.440079, 24.034681>,  <40.496166, 35.660976, 23.933458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178429, 35.440079, 24.034681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009108, -0.405705, -0.913959,
		0.607395, -0.728306, 0.317241,
		-0.794348, -0.552245, 0.253056,
		39.940125, 35.274406, 24.110598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704716, 35.017082, 23.706728>,  <40.496166, 35.660976, 23.933458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704716, 35.017082, 23.706728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307228, 35.034817, 23.747835>,  <40.068737, 35.045456, 23.772499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307228, 35.034817, 23.747835>,  <40.704716, 35.017082, 23.706728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307228, 35.034817, 23.747835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111045, -0.275688, -0.954811,
		-0.014000, -0.960224, 0.278880,
		-0.993717, 0.044336, 0.102768,
		40.009113, 35.048119, 23.778666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449905, 34.381237, 23.655550>,  <40.704716, 35.017082, 23.706728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449905, 34.381237, 23.655550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157063, 34.622868, 23.529619>,  <39.981358, 34.767845, 23.454060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157063, 34.622868, 23.529619>,  <40.449905, 34.381237, 23.655550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157063, 34.622868, 23.529619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105227, -0.356337, -0.928413,
		-0.673015, -0.712825, 0.197311,
		-0.732105, 0.604073, -0.314828,
		39.937431, 34.804089, 23.435171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.844021, 34.115604, 23.271603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560604, 34.390469, 23.207363>,  <39.390556, 34.555386, 23.168819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560604, 34.390469, 23.207363>,  <39.844021, 34.115604, 23.271603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560604, 34.390469, 23.207363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076512, -0.301046, -0.950535,
		-0.701514, -0.661202, 0.265878,
		-0.708537, 0.687156, -0.160598,
		39.348042, 34.596615, 23.159184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203442, 33.825500, 22.958431>,  <39.844021, 34.115604, 23.271603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203442, 33.825500, 22.958431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311829, 34.190914, 22.837090>,  <39.376862, 34.410164, 22.764284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311829, 34.190914, 22.837090>,  <39.203442, 33.825500, 22.958431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311829, 34.190914, 22.837090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036430, -0.324654, -0.945131,
		-0.961898, 0.245052, -0.121252,
		0.270972, 0.913537, -0.303356,
		39.393120, 34.464973, 22.746082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725002, 34.038494, 22.415007>,  <39.203442, 33.825500, 22.958431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725002, 34.038494, 22.415007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054024, 34.264557, 22.389706>,  <39.251438, 34.400196, 22.374525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054024, 34.264557, 22.389706>,  <38.725002, 34.038494, 22.415007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054024, 34.264557, 22.389706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015663, -0.133694, -0.990899,
		-0.568471, 0.814077, -0.118823,
		0.822554, 0.565159, -0.063250,
		39.300789, 34.434105, 22.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547825, 34.525330, 21.969614>,  <38.725002, 34.038494, 22.415007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547825, 34.525330, 21.969614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947559, 34.511497, 21.965094>,  <39.187401, 34.503201, 21.962381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947559, 34.511497, 21.965094>,  <38.547825, 34.525330, 21.969614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947559, 34.511497, 21.965094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014876, -0.104984, -0.994363,
		0.033197, 0.993872, -0.105429,
		0.999338, -0.034578, -0.011300,
		39.247360, 34.501125, 21.961704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836155, 35.019978, 21.534828>,  <38.547825, 34.525330, 21.969614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836155, 35.019978, 21.534828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155323, 34.778873, 21.534866>,  <39.346825, 34.634212, 21.534889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155323, 34.778873, 21.534866>,  <38.836155, 35.019978, 21.534828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155323, 34.778873, 21.534866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089577, 0.118425, -0.988914,
		0.596068, 0.789084, 0.148487,
		0.797921, -0.602762, 0.000094,
		39.394699, 34.598045, 21.534895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272301, 35.289383, 21.027155>,  <38.836155, 35.019978, 21.534828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272301, 35.289383, 21.027155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384758, 34.910194, 21.086906>,  <39.452232, 34.682682, 21.122757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384758, 34.910194, 21.086906>,  <39.272301, 35.289383, 21.027155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384758, 34.910194, 21.086906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025417, -0.162957, -0.986306,
		0.959329, 0.273496, -0.069909,
		0.281143, -0.947969, 0.149378,
		39.469101, 34.625805, 21.131720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972153, 35.132156, 20.693995>,  <39.272301, 35.289383, 21.027155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972153, 35.132156, 20.693995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783184, 34.779922, 20.708944>,  <39.669804, 34.568584, 20.717915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783184, 34.779922, 20.708944>,  <39.972153, 35.132156, 20.693995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783184, 34.779922, 20.708944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295674, -0.198286, -0.934484,
		0.830300, -0.430417, 0.354039,
		-0.472419, -0.880581, 0.037374,
		39.641457, 34.515747, 20.720156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329254, 34.839272, 20.223839>,  <39.972153, 35.132156, 20.693995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329254, 34.839272, 20.223839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043610, 34.568153, 20.293858>,  <39.872223, 34.405483, 20.335869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043610, 34.568153, 20.293858>,  <40.329254, 34.839272, 20.223839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043610, 34.568153, 20.293858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160816, -0.402208, -0.901314,
		0.681308, -0.615490, 0.396222,
		-0.714113, -0.677791, 0.175047,
		39.829376, 34.364815, 20.346373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615311, 34.102417, 20.121145>,  <40.329254, 34.839272, 20.223839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615311, 34.102417, 20.121145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220772, 34.060341, 20.070469>,  <39.984047, 34.035095, 20.040064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220772, 34.060341, 20.070469>,  <40.615311, 34.102417, 20.121145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220772, 34.060341, 20.070469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159715, -0.423918, -0.891507,
		0.040070, -0.899572, 0.434931,
		-0.986349, -0.105188, -0.126689,
		39.924866, 34.028786, 20.032461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622414, 33.439289, 19.933540>,  <40.615311, 34.102417, 20.121145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622414, 33.439289, 19.933540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283054, 33.604549, 19.801167>,  <40.079437, 33.703705, 19.721743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283054, 33.604549, 19.801167>,  <40.622414, 33.439289, 19.933540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283054, 33.604549, 19.801167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131924, -0.440422, -0.888046,
		-0.512654, -0.797076, 0.319148,
		-0.848400, 0.413157, -0.330937,
		40.028534, 33.728497, 19.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334507, 32.911121, 19.660559>,  <40.622414, 33.439289, 19.933540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334507, 32.911121, 19.660559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.166359, 33.232944, 19.492762>,  <40.065468, 33.426037, 19.392082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.166359, 33.232944, 19.492762>,  <40.334507, 32.911121, 19.660559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166359, 33.232944, 19.492762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137313, -0.400595, -0.905908,
		-0.896901, -0.438421, 0.057922,
		-0.420372, 0.804556, -0.419495,
		40.040249, 33.474312, 19.366913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876675, 32.642319, 19.205532>,  <40.334507, 32.911121, 19.660559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876675, 32.642319, 19.205532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999119, 33.012794, 19.117464>,  <40.072586, 33.235081, 19.064623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999119, 33.012794, 19.117464>,  <39.876675, 32.642319, 19.205532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999119, 33.012794, 19.117464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330754, -0.320335, -0.887686,
		-0.892692, 0.198906, -0.404398,
		0.306109, 0.926186, -0.220172,
		40.090950, 33.290649, 19.051413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834229, 32.595181, 18.555212>,  <39.876675, 32.642319, 19.205532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834229, 32.595181, 18.555212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.038960, 32.938236, 18.575180>,  <40.161797, 33.144070, 18.587160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.038960, 32.938236, 18.575180>,  <39.834229, 32.595181, 18.555212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038960, 32.938236, 18.575180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321571, -0.137378, -0.936867,
		-0.796632, 0.495569, -0.346105,
		0.511829, 0.857636, 0.049921,
		40.192509, 33.195526, 18.590157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585205, 33.096489, 17.976635>,  <39.834229, 32.595181, 18.555212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585205, 33.096489, 17.976635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961998, 33.179771, 18.081942>,  <40.188076, 33.229740, 18.145126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961998, 33.179771, 18.081942>,  <39.585205, 33.096489, 17.976635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961998, 33.179771, 18.081942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305694, -0.208276, -0.929071,
		-0.138607, 0.955652, -0.259841,
		0.941987, 0.208208, 0.263269,
		40.244595, 33.242233, 18.160923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760696, 33.679218, 17.674854>,  <39.585205, 33.096489, 17.976635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760696, 33.679218, 17.674854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117775, 33.520332, 17.760004>,  <40.332024, 33.424999, 17.811094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117775, 33.520332, 17.760004>,  <39.760696, 33.679218, 17.674854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117775, 33.520332, 17.760004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300259, 0.171988, -0.938224,
		0.336066, 0.901465, 0.272800,
		0.892695, -0.397216, 0.212874,
		40.385582, 33.401169, 17.823866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152729, 34.074848, 17.259855>,  <39.760696, 33.679218, 17.674854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152729, 34.074848, 17.259855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383087, 33.765102, 17.364708>,  <40.521301, 33.579254, 17.427620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383087, 33.765102, 17.364708>,  <40.152729, 34.074848, 17.259855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383087, 33.765102, 17.364708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399149, -0.013498, -0.916787,
		0.713463, 0.632599, 0.301312,
		0.575891, -0.774362, 0.262131,
		40.555855, 33.532795, 17.443348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797176, 34.365829, 17.125002>,  <40.152729, 34.074848, 17.259855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797176, 34.365829, 17.125002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839439, 33.968086, 17.121243>,  <40.864796, 33.729439, 17.118986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839439, 33.968086, 17.121243>,  <40.797176, 34.365829, 17.125002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839439, 33.968086, 17.121243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374416, 0.048536, -0.925990,
		0.921222, 0.094315, 0.377431,
		0.105653, -0.994359, -0.009399,
		40.871136, 33.669777, 17.118423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452988, 34.304691, 16.849535>,  <40.797176, 34.365829, 17.125002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452988, 34.304691, 16.849535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255657, 33.961758, 16.790745>,  <41.137257, 33.755997, 16.755470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255657, 33.961758, 16.790745>,  <41.452988, 34.304691, 16.849535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255657, 33.961758, 16.790745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376036, -0.057840, -0.924798,
		0.784361, -0.511497, 0.350924,
		-0.493329, -0.857336, -0.146974,
		41.107658, 33.704556, 16.746653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846035, 34.030422, 16.326170>,  <41.452988, 34.304691, 16.849535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846035, 34.030422, 16.326170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495522, 33.837849, 16.318651>,  <41.285213, 33.722305, 16.314140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495522, 33.837849, 16.318651>,  <41.846035, 34.030422, 16.326170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495522, 33.837849, 16.318651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097561, -0.139105, -0.985460,
		0.471816, -0.865376, 0.168864,
		-0.876283, -0.481430, -0.018795,
		41.232635, 33.693420, 16.313013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934204, 33.498688, 15.915724>,  <41.846035, 34.030422, 16.326170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934204, 33.498688, 15.915724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.535408, 33.529030, 15.922160>,  <41.296131, 33.547234, 15.926023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.535408, 33.529030, 15.922160>,  <41.934204, 33.498688, 15.915724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535408, 33.529030, 15.922160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002557, 0.175249, -0.984521,
		-0.077498, -0.981598, -0.174528,
		-0.996989, 0.075852, 0.016092,
		41.236313, 33.551785, 15.926988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470276, 32.968014, 15.522208>,  <41.934204, 33.498688, 15.915724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470276, 32.968014, 15.522208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222134, 33.281139, 15.541615>,  <41.073246, 33.469017, 15.553259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222134, 33.281139, 15.541615>,  <41.470276, 32.968014, 15.522208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222134, 33.281139, 15.541615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081846, -0.003092, -0.996640,
		-0.780037, -0.622244, 0.065988,
		-0.620358, 0.782817, 0.048516,
		41.036026, 33.515984, 15.556170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910641, 32.778198, 15.186443>,  <41.470276, 32.968014, 15.522208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910641, 32.778198, 15.186443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867836, 33.175888, 15.189455>,  <40.842152, 33.414501, 15.191262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867836, 33.175888, 15.189455>,  <40.910641, 32.778198, 15.186443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867836, 33.175888, 15.189455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120761, -0.005479, -0.992667,
		-0.986897, -0.107137, 0.120650,
		-0.107012, 0.994229, 0.007530,
		40.835732, 33.474155, 15.191714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220051, 33.031616, 14.900764>,  <40.910641, 32.778198, 15.186443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220051, 33.031616, 14.900764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506878, 33.306366, 14.853401>,  <40.678974, 33.471214, 14.824984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506878, 33.306366, 14.853401>,  <40.220051, 33.031616, 14.900764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506878, 33.306366, 14.853401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300527, 0.151404, -0.941680,
		-0.628887, 0.710832, 0.314991,
		0.717066, 0.686874, -0.118408,
		40.721996, 33.512428, 14.817879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963867, 33.769001, 14.792555>,  <40.220051, 33.031616, 14.900764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963867, 33.769001, 14.792555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.306911, 33.695694, 14.600340>,  <40.512737, 33.651711, 14.485011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.306911, 33.695694, 14.600340>,  <39.963867, 33.769001, 14.792555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306911, 33.695694, 14.600340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400210, 0.349015, -0.847361,
		0.323009, 0.919022, 0.225974,
		0.857612, -0.183268, -0.480536,
		40.564194, 33.640713, 14.456179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282684, 33.552464, 14.613090>,  <39.963867, 33.769001, 14.792555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282684, 33.552464, 14.613090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945297, 33.560440, 14.398368>,  <38.742863, 33.565228, 14.269535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945297, 33.560440, 14.398368>,  <39.282684, 33.552464, 14.613090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945297, 33.560440, 14.398368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516310, 0.245704, 0.820399,
		0.148257, 0.969140, -0.196947,
		-0.843472, 0.019944, -0.536804,
		38.692257, 33.566422, 14.237327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838303, 34.232075, 14.777098>,  <39.282684, 33.552464, 14.613090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838303, 34.232075, 14.777098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597500, 33.952335, 14.622955>,  <38.453018, 33.784492, 14.530470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597500, 33.952335, 14.622955>,  <38.838303, 34.232075, 14.777098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597500, 33.952335, 14.622955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665782, 0.173198, 0.725766,
		-0.440822, 0.693477, -0.569882,
		-0.602005, -0.699351, -0.385355,
		38.416897, 33.742531, 14.507349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241276, 34.450821, 14.944372>,  <38.838303, 34.232075, 14.777098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241276, 34.450821, 14.944372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117283, 34.080051, 14.859782>,  <38.042889, 33.857590, 14.809029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117283, 34.080051, 14.859782>,  <38.241276, 34.450821, 14.944372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117283, 34.080051, 14.859782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526411, -0.017892, 0.850042,
		-0.791709, 0.374821, -0.482397,
		-0.309983, -0.926925, -0.211475,
		38.024288, 33.801975, 14.796340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562336, 34.492168, 15.114664>,  <38.241276, 34.450821, 14.944372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562336, 34.492168, 15.114664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655697, 34.103222, 15.112731>,  <37.711716, 33.869854, 15.111571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655697, 34.103222, 15.112731>,  <37.562336, 34.492168, 15.114664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655697, 34.103222, 15.112731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354334, -0.089679, 0.930809,
		-0.905522, -0.215544, -0.365475,
		0.233406, -0.972368, -0.004832,
		37.725719, 33.811512, 15.111281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969070, 34.114624, 15.151938>,  <37.562336, 34.492168, 15.114664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969070, 34.114624, 15.151938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268608, 33.901825, 15.310037>,  <37.448330, 33.774147, 15.404896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268608, 33.901825, 15.310037>,  <36.969070, 34.114624, 15.151938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268608, 33.901825, 15.310037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398592, 0.114946, 0.909896,
		-0.529492, -0.838910, -0.125972,
		0.748841, -0.531994, 0.395246,
		37.493259, 33.742226, 15.428611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663456, 33.780407, 15.629568>,  <36.969070, 34.114624, 15.151938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663456, 33.780407, 15.629568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034664, 33.720024, 15.765794>,  <37.257389, 33.683796, 15.847529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034664, 33.720024, 15.765794>,  <36.663456, 33.780407, 15.629568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034664, 33.720024, 15.765794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325222, 0.117520, 0.938307,
		-0.181665, -0.981530, 0.059967,
		0.928024, -0.150955, 0.340565,
		37.313072, 33.674736, 15.867963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698257, 33.226952, 16.103580>,  <36.663456, 33.780407, 15.629568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698257, 33.226952, 16.103580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044106, 33.404274, 16.198160>,  <37.251614, 33.510670, 16.254908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044106, 33.404274, 16.198160>,  <36.698257, 33.226952, 16.103580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044106, 33.404274, 16.198160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256797, -0.014576, 0.966355,
		0.431840, -0.896251, 0.101238,
		0.864621, 0.443309, 0.236449,
		37.303493, 33.537266, 16.269094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886337, 32.919403, 16.704762>,  <36.698257, 33.226952, 16.103580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886337, 32.919403, 16.704762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119617, 33.244328, 16.706503>,  <37.259586, 33.439281, 16.707548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119617, 33.244328, 16.706503>,  <36.886337, 32.919403, 16.704762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119617, 33.244328, 16.706503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084788, 0.055540, 0.994850,
		0.807890, -0.580567, 0.101265,
		0.583202, 0.812315, 0.004354,
		37.294579, 33.488022, 16.707809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324677, 32.782585, 17.239389>,  <36.886337, 32.919403, 16.704762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324677, 32.782585, 17.239389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321918, 33.179260, 17.188002>,  <37.320263, 33.417267, 17.157169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321918, 33.179260, 17.188002>,  <37.324677, 32.782585, 17.239389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321918, 33.179260, 17.188002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002670, 0.128452, 0.991712,
		0.999973, 0.007182, 0.001762,
		-0.006896, 0.991690, -0.128468,
		37.319851, 33.476768, 17.149462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795033, 32.967281, 17.740631>,  <37.324677, 32.782585, 17.239389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795033, 32.967281, 17.740631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561146, 33.274677, 17.636690>,  <37.420815, 33.459114, 17.574326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561146, 33.274677, 17.636690>,  <37.795033, 32.967281, 17.740631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561146, 33.274677, 17.636690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070890, 0.270691, 0.960053,
		0.808133, 0.579782, -0.103800,
		-0.584719, 0.768492, -0.259855,
		37.385731, 33.505226, 17.558733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181576, 33.657093, 17.888298>,  <37.795033, 32.967281, 17.740631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181576, 33.657093, 17.888298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786137, 33.709763, 17.917494>,  <37.548874, 33.741364, 17.935011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786137, 33.709763, 17.917494>,  <38.181576, 33.657093, 17.888298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786137, 33.709763, 17.917494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111911, 0.318405, 0.941326,
		0.100710, 0.938765, -0.329512,
		-0.988602, 0.131677, 0.072991,
		37.489555, 33.749264, 17.939392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125256, 34.018917, 18.469635>,  <38.181576, 33.657093, 17.888298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125256, 34.018917, 18.469635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741581, 33.920486, 18.413918>,  <37.511375, 33.861427, 18.380487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741581, 33.920486, 18.413918>,  <38.125256, 34.018917, 18.469635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741581, 33.920486, 18.413918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125833, -0.069679, 0.989601,
		-0.253225, 0.966742, 0.035871,
		-0.959189, -0.246078, -0.139293,
		37.453823, 33.846664, 18.372129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665215, 34.508835, 18.912355>,  <38.125256, 34.018917, 18.469635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665215, 34.508835, 18.912355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444084, 34.185776, 18.830297>,  <37.311405, 33.991940, 18.781063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444084, 34.185776, 18.830297>,  <37.665215, 34.508835, 18.912355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444084, 34.185776, 18.830297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228986, -0.089470, 0.969309,
		-0.801214, 0.582839, -0.135478,
		-0.552830, -0.807647, -0.205147,
		37.278236, 33.943481, 18.768753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027473, 34.688648, 19.311636>,  <37.665215, 34.508835, 18.912355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027473, 34.688648, 19.311636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043530, 34.296085, 19.236561>,  <37.053162, 34.060547, 19.191515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043530, 34.296085, 19.236561>,  <37.027473, 34.688648, 19.311636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043530, 34.296085, 19.236561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086259, -0.190544, 0.977882,
		-0.995464, -0.023063, -0.092304,
		0.040140, -0.981408, -0.187690,
		37.055573, 34.001663, 19.180254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646957, 34.351883, 19.809465>,  <37.027473, 34.688648, 19.311636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646957, 34.351883, 19.809465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847607, 34.039421, 19.660778>,  <36.967999, 33.851944, 19.571566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847607, 34.039421, 19.660778>,  <36.646957, 34.351883, 19.809465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847607, 34.039421, 19.660778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009956, -0.424450, 0.905396,
		-0.865028, -0.457871, -0.205138,
		0.501625, -0.781151, -0.371720,
		36.998093, 33.805077, 19.549263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224869, 33.711304, 19.928381>,  <36.646957, 34.351883, 19.809465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224869, 33.711304, 19.928381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611523, 33.617523, 19.887091>,  <36.843513, 33.561256, 19.862316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611523, 33.617523, 19.887091>,  <36.224869, 33.711304, 19.928381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611523, 33.617523, 19.887091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008486, -0.373432, 0.927619,
		-0.256026, -0.897542, -0.358982,
		0.966632, -0.234448, -0.103224,
		36.901512, 33.547188, 19.856123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311001, 33.059994, 20.232431>,  <36.224869, 33.711304, 19.928381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311001, 33.059994, 20.232431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662106, 33.251621, 20.234426>,  <36.872768, 33.366596, 20.235624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662106, 33.251621, 20.234426>,  <36.311001, 33.059994, 20.232431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662106, 33.251621, 20.234426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153460, -0.291008, 0.944333,
		0.453849, -0.828137, -0.328954,
		0.877765, 0.479066, 0.004988,
		36.925434, 33.395340, 20.235924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837440, 32.580891, 20.445002>,  <36.311001, 33.059994, 20.232431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837440, 32.580891, 20.445002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969566, 32.953751, 20.504314>,  <37.048843, 33.177467, 20.539902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969566, 32.953751, 20.504314>,  <36.837440, 32.580891, 20.445002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969566, 32.953751, 20.504314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156142, -0.208898, 0.965392,
		0.930866, -0.295732, -0.214551,
		0.330317, 0.932150, 0.148280,
		37.068661, 33.233395, 20.548798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371677, 32.515503, 21.012716>,  <36.837440, 32.580891, 20.445002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371677, 32.515503, 21.012716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239960, 32.893192, 21.011890>,  <37.160931, 33.119808, 21.011395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239960, 32.893192, 21.011890>,  <37.371677, 32.515503, 21.012716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239960, 32.893192, 21.011890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046572, -0.014056, 0.998816,
		0.943079, 0.328998, 0.048603,
		-0.329292, 0.944226, -0.002066,
		37.141171, 33.176460, 21.011271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638218, 32.705002, 21.645185>,  <37.371677, 32.515503, 21.012716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638218, 32.705002, 21.645185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387413, 33.004055, 21.557646>,  <37.236931, 33.183487, 21.505123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387413, 33.004055, 21.557646>,  <37.638218, 32.705002, 21.645185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387413, 33.004055, 21.557646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035565, 0.308112, 0.950685,
		0.778194, 0.588311, -0.219781,
		-0.627016, 0.747634, -0.218847,
		37.199306, 33.228344, 21.491991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.876724, 35.398518, 25.710611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.479679, 35.440723, 25.734596>,  <40.241451, 35.466045, 25.748987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.479679, 35.440723, 25.734596>,  <40.876724, 35.398518, 25.710611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479679, 35.440723, 25.734596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104656, 0.494019, 0.863130,
		0.061451, 0.863025, -0.501410,
		-0.992608, 0.105515, 0.059963,
		40.181896, 35.472378, 25.752584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789486, 36.075272, 25.947828>,  <40.876724, 35.398518, 25.710611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789486, 36.075272, 25.947828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432671, 35.913647, 26.028824>,  <40.218582, 35.816673, 26.077421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432671, 35.913647, 26.028824>,  <40.789486, 36.075272, 25.947828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432671, 35.913647, 26.028824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024722, 0.490978, 0.870821,
		-0.451284, 0.771800, -0.447960,
		-0.892038, -0.404062, 0.202490,
		40.165058, 35.792427, 26.089571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504784, 36.710045, 26.194044>,  <40.789486, 36.075272, 25.947828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504784, 36.710045, 26.194044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302853, 36.382019, 26.301851>,  <40.181694, 36.185204, 26.366535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302853, 36.382019, 26.301851>,  <40.504784, 36.710045, 26.194044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302853, 36.382019, 26.301851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213162, 0.420984, 0.881666,
		-0.836486, 0.387641, -0.387332,
		-0.504830, -0.820065, 0.269517,
		40.151405, 36.135998, 26.382706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952751, 37.083855, 26.386402>,  <40.504784, 36.710045, 26.194044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952751, 37.083855, 26.386402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951740, 36.720451, 26.553549>,  <39.951134, 36.502411, 26.653837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951740, 36.720451, 26.553549>,  <39.952751, 37.083855, 26.386402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951740, 36.720451, 26.553549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000372, 0.417868, 0.908508,
		-0.999997, 0.002139, -0.001394,
		-0.002526, -0.908505, 0.417866,
		39.950981, 36.447899, 26.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302635, 37.145557, 26.864904>,  <39.952751, 37.083855, 26.386402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302635, 37.145557, 26.864904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560078, 36.859642, 26.974339>,  <39.714542, 36.688095, 27.039999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560078, 36.859642, 26.974339>,  <39.302635, 37.145557, 26.864904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560078, 36.859642, 26.974339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280002, 0.112780, 0.953352,
		-0.712297, -0.690191, -0.127555,
		0.643609, -0.714785, 0.273588,
		39.753159, 36.645206, 27.056416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032600, 36.779266, 27.439739>,  <39.302635, 37.145557, 26.864904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032600, 36.779266, 27.439739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422035, 36.687958, 27.441324>,  <39.655697, 36.633171, 27.442276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422035, 36.687958, 27.441324>,  <39.032600, 36.779266, 27.439739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422035, 36.687958, 27.441324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003927, 0.000613, 0.999992,
		-0.228273, -0.973597, -0.000300,
		0.973589, -0.228273, 0.003964,
		39.714111, 36.619476, 27.442513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058903, 36.380650, 27.996733>,  <39.032600, 36.779266, 27.439739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058903, 36.380650, 27.996733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442131, 36.467789, 27.922285>,  <39.672070, 36.520073, 27.877617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442131, 36.467789, 27.922285>,  <39.058903, 36.380650, 27.996733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442131, 36.467789, 27.922285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237942, -0.243035, 0.940382,
		0.159626, -0.945239, -0.284680,
		0.958072, 0.217846, -0.186118,
		39.729553, 36.533142, 27.866449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493771, 35.824287, 28.300426>,  <39.058903, 36.380650, 27.996733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493771, 35.824287, 28.300426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677387, 36.179508, 28.290314>,  <39.787556, 36.392643, 28.284246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677387, 36.179508, 28.290314>,  <39.493771, 35.824287, 28.300426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677387, 36.179508, 28.290314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272335, -0.113572, 0.955476,
		0.845646, -0.445485, -0.293983,
		0.459039, 0.888056, -0.025280,
		39.815098, 36.445927, 28.282730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105568, 35.672001, 28.632330>,  <39.493771, 35.824287, 28.300426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105568, 35.672001, 28.632330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057095, 36.068676, 28.649618>,  <40.028011, 36.306683, 28.659992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057095, 36.068676, 28.649618>,  <40.105568, 35.672001, 28.632330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057095, 36.068676, 28.649618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237188, -0.013352, 0.971372,
		0.963875, 0.127969, -0.233598,
		-0.121187, 0.991688, 0.043222,
		40.020737, 36.366184, 28.662584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650566, 35.850433, 29.042891>,  <40.105568, 35.672001, 28.632330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650566, 35.850433, 29.042891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389015, 36.151974, 29.068682>,  <40.232086, 36.332897, 29.084156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389015, 36.151974, 29.068682>,  <40.650566, 35.850433, 29.042891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389015, 36.151974, 29.068682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258098, 0.142132, 0.955606,
		0.711220, 0.641489, -0.287504,
		-0.653875, 0.753850, 0.064480,
		40.192852, 36.378128, 29.088026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967365, 36.406647, 29.381498>,  <40.650566, 35.850433, 29.042891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967365, 36.406647, 29.381498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588753, 36.521492, 29.440344>,  <40.361584, 36.590401, 29.475651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588753, 36.521492, 29.440344>,  <40.967365, 36.406647, 29.381498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588753, 36.521492, 29.440344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157969, 0.014882, 0.987332,
		0.281290, 0.957780, -0.059442,
		-0.946531, 0.287117, 0.147113,
		40.304794, 36.607628, 29.484478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008419, 36.923611, 29.945356>,  <40.967365, 36.406647, 29.381498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008419, 36.923611, 29.945356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620972, 36.824223, 29.942844>,  <40.388504, 36.764591, 29.941338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620972, 36.824223, 29.942844>,  <41.008419, 36.923611, 29.945356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620972, 36.824223, 29.942844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020989, 0.056599, 0.998176,
		-0.247663, 0.966984, -0.060038,
		-0.968619, -0.248471, -0.006279,
		40.330387, 36.749680, 29.940960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507877, 37.556919, 30.003416>,  <41.008419, 36.923611, 29.945356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507877, 37.556919, 30.003416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154217, 37.642647, 30.169476>,  <40.942020, 37.694084, 30.269112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154217, 37.642647, 30.169476>,  <41.507877, 37.556919, 30.003416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154217, 37.642647, 30.169476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466141, 0.344642, 0.814822,
		0.031556, 0.913941, -0.404619,
		-0.884148, 0.214322, 0.415149,
		40.888973, 37.706944, 30.294020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695808, 38.099907, 30.371325>,  <41.507877, 37.556919, 30.003416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695808, 38.099907, 30.371325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.311504, 38.153042, 30.468721>,  <41.080921, 38.184921, 30.527161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.311504, 38.153042, 30.468721>,  <41.695808, 38.099907, 30.371325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311504, 38.153042, 30.468721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276690, 0.520517, 0.807778,
		-0.019440, 0.843455, -0.536847,
		-0.960763, 0.132837, 0.243494,
		41.023277, 38.192894, 30.541769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512573, 38.891441, 30.618814>,  <41.695808, 38.099907, 30.371325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512573, 38.891441, 30.618814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620064, 39.272224, 30.560087>,  <41.684559, 39.500694, 30.524851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620064, 39.272224, 30.560087>,  <41.512573, 38.891441, 30.618814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620064, 39.272224, 30.560087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320051, -0.055517, -0.945772,
		-0.908489, 0.301145, 0.289757,
		0.268728, 0.951961, -0.146819,
		41.700684, 39.557812, 30.516041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971317, 39.263691, 30.503353>,  <41.512573, 38.891441, 30.618814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971317, 39.263691, 30.503353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254238, 39.480530, 30.321867>,  <41.423992, 39.610634, 30.212975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254238, 39.480530, 30.321867>,  <40.971317, 39.263691, 30.503353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254238, 39.480530, 30.321867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503126, -0.064825, -0.861778,
		-0.496577, 0.837814, 0.226891,
		0.707302, 0.542094, -0.453717,
		41.466427, 39.643158, 30.185753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551918, 39.553913, 29.961685>,  <40.971317, 39.263691, 30.503353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551918, 39.553913, 29.961685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904362, 39.703423, 29.845798>,  <41.115829, 39.793129, 29.776266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904362, 39.703423, 29.845798>,  <40.551918, 39.553913, 29.961685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904362, 39.703423, 29.845798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363721, 0.144079, -0.920298,
		-0.302238, 0.916262, 0.262898,
		0.881112, 0.373770, -0.289718,
		41.168697, 39.815556, 29.758883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408966, 40.146648, 29.637850>,  <40.551918, 39.553913, 29.961685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408966, 40.146648, 29.637850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766640, 40.046585, 29.489338>,  <40.981243, 39.986546, 29.400230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766640, 40.046585, 29.489338>,  <40.408966, 40.146648, 29.637850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766640, 40.046585, 29.489338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325225, 0.206953, -0.922713,
		0.307664, 0.945828, 0.103696,
		0.894188, -0.250162, -0.371279,
		41.034897, 39.971535, 29.377954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492275, 40.611927, 29.054583>,  <40.408966, 40.146648, 29.637850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492275, 40.611927, 29.054583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760113, 40.320992, 28.994417>,  <40.920815, 40.146431, 28.958317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760113, 40.320992, 28.994417>,  <40.492275, 40.611927, 29.054583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760113, 40.320992, 28.994417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207757, 0.011014, -0.978118,
		0.713077, 0.686194, -0.143734,
		0.669596, -0.727335, -0.150416,
		40.960991, 40.102791, 28.949293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774872, 40.767262, 28.449377>,  <40.492275, 40.611927, 29.054583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774872, 40.767262, 28.449377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854870, 40.376587, 28.480600>,  <40.902870, 40.142181, 28.499334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854870, 40.376587, 28.480600>,  <40.774872, 40.767262, 28.449377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854870, 40.376587, 28.480600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048893, -0.069619, -0.996375,
		0.978576, 0.203089, 0.033830,
		0.199998, -0.976682, 0.078057,
		40.914867, 40.083584, 28.504017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069180, 40.609726, 27.888710>,  <40.774872, 40.767262, 28.449377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069180, 40.609726, 27.888710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973362, 40.242661, 28.015522>,  <40.915871, 40.022423, 28.091610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973362, 40.242661, 28.015522>,  <41.069180, 40.609726, 27.888710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973362, 40.242661, 28.015522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124966, -0.352965, -0.927254,
		0.962809, -0.182503, 0.199229,
		-0.239547, -0.917665, 0.317031,
		40.901497, 39.967361, 28.110632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547314, 40.066853, 27.657570>,  <41.069180, 40.609726, 27.888710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547314, 40.066853, 27.657570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215229, 39.856453, 27.731407>,  <41.015980, 39.730213, 27.775709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215229, 39.856453, 27.731407>,  <41.547314, 40.066853, 27.657570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215229, 39.856453, 27.731407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097038, -0.462451, -0.881319,
		0.548938, -0.713768, 0.434974,
		-0.830211, -0.525999, 0.184594,
		40.966167, 39.698654, 27.786785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701756, 39.443058, 27.348862>,  <41.547314, 40.066853, 27.657570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701756, 39.443058, 27.348862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303326, 39.454220, 27.382441>,  <41.064266, 39.460918, 27.402588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303326, 39.454220, 27.382441>,  <41.701756, 39.443058, 27.348862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303326, 39.454220, 27.382441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087605, -0.443081, -0.892191,
		0.012300, -0.896047, 0.443788,
		-0.996079, 0.027904, 0.083948,
		41.004501, 39.462593, 27.407625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405746, 38.772476, 27.195791>,  <41.701756, 39.443058, 27.348862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405746, 38.772476, 27.195791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.060356, 38.972427, 27.168875>,  <40.853123, 39.092400, 27.152725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.060356, 38.972427, 27.168875>,  <41.405746, 38.772476, 27.195791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060356, 38.972427, 27.168875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197287, -0.457498, -0.867049,
		-0.464232, -0.735386, 0.493657,
		-0.863462, 0.499904, -0.067304,
		40.801315, 39.122391, 27.148687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917347, 38.290375, 26.880024>,  <41.405746, 38.772476, 27.195791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917347, 38.290375, 26.880024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.768097, 38.652809, 26.800238>,  <40.678547, 38.870270, 26.752365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.768097, 38.652809, 26.800238>,  <40.917347, 38.290375, 26.880024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768097, 38.652809, 26.800238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172273, -0.278919, -0.944736,
		-0.911645, -0.318146, 0.260166,
		-0.373129, 0.906084, -0.199468,
		40.656158, 38.924633, 26.740396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221523, 38.135834, 26.603327>,  <40.917347, 38.290375, 26.880024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221523, 38.135834, 26.603327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.358913, 38.494999, 26.493217>,  <40.441349, 38.710499, 26.427153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.358913, 38.494999, 26.493217>,  <40.221523, 38.135834, 26.603327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358913, 38.494999, 26.493217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221152, -0.207534, -0.952902,
		-0.912751, 0.388178, 0.127292,
		0.343478, 0.897913, -0.275273,
		40.461956, 38.764374, 26.410635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679062, 38.431435, 26.189686>,  <40.221523, 38.135834, 26.603327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679062, 38.431435, 26.189686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026459, 38.590225, 26.070932>,  <40.234898, 38.685497, 25.999681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026459, 38.590225, 26.070932>,  <39.679062, 38.431435, 26.189686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026459, 38.590225, 26.070932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197660, -0.271907, -0.941805,
		-0.454595, 0.876629, -0.157683,
		0.868489, 0.396973, -0.296882,
		40.287006, 38.709316, 25.981867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542721, 38.822227, 25.506069>,  <39.679062, 38.431435, 26.189686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542721, 38.822227, 25.506069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936867, 38.755585, 25.520468>,  <40.173355, 38.715599, 25.529108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936867, 38.755585, 25.520468>,  <39.542721, 38.822227, 25.506069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936867, 38.755585, 25.520468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019668, -0.320917, -0.946903,
		0.169314, 0.932338, -0.319497,
		0.985366, -0.166607, 0.035999,
		40.232475, 38.705601, 25.531267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343773, 39.635479, 25.404032>,  <39.542721, 38.822227, 25.506069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343773, 39.635479, 25.404032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944088, 39.647827, 25.414011>,  <38.704277, 39.655235, 25.419998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944088, 39.647827, 25.414011>,  <39.343773, 39.635479, 25.404032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944088, 39.647827, 25.414011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016051, -0.260621, 0.965308,
		0.036297, 0.964948, 0.259920,
		-0.999212, 0.030866, 0.024949,
		38.644325, 39.657085, 25.421495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116886, 40.077610, 26.037395>,  <39.343773, 39.635479, 25.404032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116886, 40.077610, 26.037395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807674, 39.854187, 25.917105>,  <38.622147, 39.720135, 25.844931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807674, 39.854187, 25.917105>,  <39.116886, 40.077610, 26.037395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807674, 39.854187, 25.917105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166895, -0.278287, 0.945887,
		-0.612022, 0.781389, 0.121904,
		-0.773030, -0.558558, -0.300728,
		38.575764, 39.686619, 25.826887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660641, 40.242222, 26.498898>,  <39.116886, 40.077610, 26.037395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660641, 40.242222, 26.498898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484455, 39.912304, 26.357077>,  <38.378742, 39.714355, 26.271984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484455, 39.912304, 26.357077>,  <38.660641, 40.242222, 26.498898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484455, 39.912304, 26.357077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335301, -0.215212, 0.917201,
		-0.832803, 0.522879, -0.181759,
		-0.440468, -0.824791, -0.354551,
		38.352314, 39.664867, 26.250711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018486, 40.135338, 26.764412>,  <38.660641, 40.242222, 26.498898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018486, 40.135338, 26.764412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103302, 39.760887, 26.652187>,  <38.154190, 39.536217, 26.584852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103302, 39.760887, 26.652187>,  <38.018486, 40.135338, 26.764412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103302, 39.760887, 26.652187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328485, -0.338655, 0.881709,
		-0.920401, -0.094797, -0.379310,
		0.212038, -0.936123, -0.280559,
		38.166912, 39.480049, 26.568020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399017, 39.778362, 26.930075>,  <38.018486, 40.135338, 26.764412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399017, 39.778362, 26.930075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705528, 39.521858, 26.914083>,  <37.889435, 39.367954, 26.904488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705528, 39.521858, 26.914083>,  <37.399017, 39.778362, 26.930075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705528, 39.521858, 26.914083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305235, -0.418082, 0.855593,
		-0.565377, -0.643418, -0.516103,
		0.766277, -0.641265, -0.039981,
		37.935413, 39.329479, 26.902090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039009, 39.167679, 27.121019>,  <37.399017, 39.778362, 26.930075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039009, 39.167679, 27.121019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426105, 39.079662, 27.170109>,  <37.658363, 39.026852, 27.199562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426105, 39.079662, 27.170109>,  <37.039009, 39.167679, 27.121019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426105, 39.079662, 27.170109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218703, -0.491804, 0.842792,
		-0.125090, -0.842444, -0.524062,
		0.967740, -0.220039, 0.122725,
		37.716427, 39.013649, 27.206926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054047, 38.495522, 27.411480>,  <37.039009, 39.167679, 27.121019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054047, 38.495522, 27.411480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410927, 38.655861, 27.494720>,  <37.625053, 38.752064, 27.544664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410927, 38.655861, 27.494720>,  <37.054047, 38.495522, 27.411480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410927, 38.655861, 27.494720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056098, -0.358838, 0.931712,
		0.448147, -0.842946, -0.297668,
		0.892198, 0.400846, 0.208100,
		37.678585, 38.776115, 27.557150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267319, 38.083263, 27.865734>,  <37.054047, 38.495522, 27.411480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267319, 38.083263, 27.865734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481998, 38.412777, 27.938763>,  <37.610806, 38.610485, 27.982580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481998, 38.412777, 27.938763>,  <37.267319, 38.083263, 27.865734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481998, 38.412777, 27.938763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083147, -0.163689, 0.983002,
		0.839667, -0.542757, -0.019357,
		0.536700, 0.823784, 0.182573,
		37.643009, 38.659912, 27.993534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815014, 37.892654, 28.419416>,  <37.267319, 38.083263, 27.865734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815014, 37.892654, 28.419416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764133, 38.289307, 28.428310>,  <37.733604, 38.527298, 28.433647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764133, 38.289307, 28.428310>,  <37.815014, 37.892654, 28.419416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764133, 38.289307, 28.428310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066306, -0.030866, 0.997322,
		0.989658, 0.125388, 0.069677,
		-0.127203, 0.991628, 0.022233,
		37.725971, 38.586796, 28.434980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293911, 38.092304, 28.915363>,  <37.815014, 37.892654, 28.419416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293911, 38.092304, 28.915363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033939, 38.396145, 28.905581>,  <37.877956, 38.578449, 28.899712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033939, 38.396145, 28.905581>,  <38.293911, 38.092304, 28.915363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033939, 38.396145, 28.905581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006511, 0.037744, 0.999266,
		0.759970, 0.649289, -0.029477,
		-0.649926, 0.759604, -0.024457,
		37.838963, 38.624027, 28.898243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565193, 38.542500, 29.356775>,  <38.293911, 38.092304, 28.915363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565193, 38.542500, 29.356775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181152, 38.652916, 29.338858>,  <37.950729, 38.719166, 29.328108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181152, 38.652916, 29.338858>,  <38.565193, 38.542500, 29.356775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181152, 38.652916, 29.338858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023697, 0.079296, 0.996569,
		0.278647, 0.957869, -0.069590,
		-0.960101, 0.276042, -0.044794,
		37.893124, 38.735729, 29.325418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469246, 39.007805, 29.884537>,  <38.565193, 38.542500, 29.356775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469246, 39.007805, 29.884537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110195, 38.865749, 29.780119>,  <37.894764, 38.780514, 29.717468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110195, 38.865749, 29.780119>,  <38.469246, 39.007805, 29.884537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110195, 38.865749, 29.780119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295674, 0.045945, 0.954184,
		-0.326877, 0.933683, -0.146248,
		-0.897624, -0.355142, -0.261047,
		37.840908, 38.759209, 29.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.449287, 40.433132, 21.849264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112728, 40.220276, 21.811573>,  <38.910793, 40.092564, 21.788960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112728, 40.220276, 21.811573>,  <39.449287, 40.433132, 21.849264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112728, 40.220276, 21.811573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240188, 0.212042, 0.947284,
		-0.484105, 0.819676, -0.306225,
		-0.841399, -0.532137, -0.094226,
		38.860310, 40.060635, 21.783306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931358, 40.838356, 22.172812>,  <39.449287, 40.433132, 21.849264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931358, 40.838356, 22.172812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781174, 40.468002, 22.189606>,  <38.691063, 40.245789, 22.199682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781174, 40.468002, 22.189606>,  <38.931358, 40.838356, 22.172812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781174, 40.468002, 22.189606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225716, 0.135280, 0.964755,
		-0.898931, 0.352756, -0.259780,
		-0.375466, -0.925885, 0.041984,
		38.668533, 40.190235, 22.202202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248032, 40.875633, 22.573164>,  <38.931358, 40.838356, 22.172812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248032, 40.875633, 22.573164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388962, 40.501408, 22.582874>,  <38.473522, 40.276875, 22.588701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388962, 40.501408, 22.582874>,  <38.248032, 40.875633, 22.573164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388962, 40.501408, 22.582874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348931, -0.107249, 0.930991,
		-0.868396, -0.336486, -0.364233,
		0.352329, -0.935561, 0.024276,
		38.494659, 40.220737, 22.590157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813587, 40.613316, 23.037943>,  <38.248032, 40.875633, 22.573164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813587, 40.613316, 23.037943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111855, 40.346870, 23.044544>,  <38.290813, 40.187004, 23.048506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111855, 40.346870, 23.044544>,  <37.813587, 40.613316, 23.037943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111855, 40.346870, 23.044544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110296, -0.098964, 0.988960,
		-0.657127, -0.739255, -0.147264,
		0.745667, -0.666114, 0.016505,
		38.335556, 40.147038, 23.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580967, 40.092838, 23.469936>,  <37.813587, 40.613316, 23.037943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580967, 40.092838, 23.469936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980026, 40.065586, 23.472883>,  <38.219463, 40.049232, 23.474651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980026, 40.065586, 23.472883>,  <37.580967, 40.092838, 23.469936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980026, 40.065586, 23.472883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015252, -0.115976, 0.993135,
		-0.066804, -0.990913, -0.116743,
		0.997649, -0.068126, 0.007366,
		38.279320, 40.045147, 23.475092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705284, 39.473743, 23.698746>,  <37.580967, 40.092838, 23.469936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705284, 39.473743, 23.698746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045544, 39.668591, 23.777859>,  <38.249699, 39.785500, 23.825327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045544, 39.668591, 23.777859>,  <37.705284, 39.473743, 23.698746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045544, 39.668591, 23.777859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110018, -0.202934, 0.972992,
		0.514094, -0.849434, -0.119034,
		0.850648, 0.487114, 0.197781,
		38.300739, 39.814724, 23.837193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162949, 39.038094, 24.146090>,  <37.705284, 39.473743, 23.698746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162949, 39.038094, 24.146090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294811, 39.412956, 24.191805>,  <38.373928, 39.637875, 24.219234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294811, 39.412956, 24.191805>,  <38.162949, 39.038094, 24.146090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294811, 39.412956, 24.191805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085883, -0.150321, 0.984900,
		0.940186, -0.314866, -0.130041,
		0.329659, 0.937157, 0.114288,
		38.393707, 39.694103, 24.226091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790775, 38.960434, 24.321354>,  <38.162949, 39.038094, 24.146090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790775, 38.960434, 24.321354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692966, 39.323521, 24.457743>,  <38.634281, 39.541374, 24.539576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692966, 39.323521, 24.457743>,  <38.790775, 38.960434, 24.321354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692966, 39.323521, 24.457743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007337, -0.349903, 0.936757,
		0.969617, 0.231558, 0.078898,
		-0.244520, 0.907716, 0.340971,
		38.619610, 39.595837, 24.560034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154922, 39.042908, 24.847198>,  <38.790775, 38.960434, 24.321354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154922, 39.042908, 24.847198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869709, 39.315811, 24.911840>,  <38.698582, 39.479553, 24.950624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869709, 39.315811, 24.911840>,  <39.154922, 39.042908, 24.847198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869709, 39.315811, 24.911840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169752, -0.391616, 0.904335,
		0.680273, 0.617386, 0.395048,
		-0.713031, 0.682254, 0.161604,
		38.655800, 39.520489, 24.960321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927807, 39.044895, 24.690475>,  <39.154922, 39.042908, 24.847198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927807, 39.044895, 24.690475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222988, 38.850887, 24.878170>,  <40.400097, 38.734482, 24.990788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222988, 38.850887, 24.878170>,  <39.927807, 39.044895, 24.690475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222988, 38.850887, 24.878170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384681, -0.268972, -0.882992,
		0.554481, 0.832111, -0.011909,
		0.737950, -0.485021, 0.469237,
		40.444374, 38.705379, 25.018942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605858, 39.231640, 24.401905>,  <39.927807, 39.044895, 24.690475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605858, 39.231640, 24.401905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641186, 38.870506, 24.570232>,  <40.662380, 38.653828, 24.671228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641186, 38.870506, 24.570232>,  <40.605858, 39.231640, 24.401905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641186, 38.870506, 24.570232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313671, -0.375769, -0.872014,
		0.945415, 0.209013, 0.250006,
		0.088317, -0.902835, 0.420819,
		40.667683, 38.599655, 24.696478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272774, 38.998016, 24.152109>,  <40.605858, 39.231640, 24.401905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272774, 38.998016, 24.152109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096664, 38.669449, 24.297123>,  <40.990997, 38.472309, 24.384132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096664, 38.669449, 24.297123>,  <41.272774, 38.998016, 24.152109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096664, 38.669449, 24.297123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337191, -0.525489, -0.781130,
		0.832142, -0.221668, 0.508334,
		-0.440276, -0.821416, 0.362537,
		40.964581, 38.423023, 24.405884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798935, 38.514080, 24.211750>,  <41.272774, 38.998016, 24.152109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798935, 38.514080, 24.211750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437145, 38.349850, 24.165539>,  <41.220070, 38.251312, 24.137812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437145, 38.349850, 24.165539>,  <41.798935, 38.514080, 24.211750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437145, 38.349850, 24.165539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286589, -0.384414, -0.877549,
		0.315888, -0.826834, 0.465360,
		-0.904478, -0.410575, -0.115530,
		41.165802, 38.226677, 24.130880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885296, 37.752724, 24.198647>,  <41.798935, 38.514080, 24.211750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885296, 37.752724, 24.198647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534790, 37.834225, 24.023998>,  <41.324486, 37.883125, 23.919209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534790, 37.834225, 24.023998>,  <41.885296, 37.752724, 24.198647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534790, 37.834225, 24.023998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195737, -0.677506, -0.708995,
		-0.440274, -0.706732, 0.553794,
		-0.876268, 0.203754, -0.436622,
		41.271908, 37.895351, 23.893011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678864, 37.144958, 23.921509>,  <41.885296, 37.752724, 24.198647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678864, 37.144958, 23.921509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462868, 37.418182, 23.724802>,  <41.333271, 37.582119, 23.606777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462868, 37.418182, 23.724802>,  <41.678864, 37.144958, 23.921509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462868, 37.418182, 23.724802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004311, -0.582024, -0.813160,
		-0.841660, -0.441219, 0.311343,
		-0.539991, 0.683062, -0.491768,
		41.300869, 37.623100, 23.577272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302448, 36.731644, 23.504623>,  <41.678864, 37.144958, 23.921509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302448, 36.731644, 23.504623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291100, 37.096710, 23.341537>,  <41.284290, 37.315750, 23.243685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291100, 37.096710, 23.341537>,  <41.302448, 36.731644, 23.504623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291100, 37.096710, 23.341537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021383, -0.408341, -0.912579,
		-0.999369, -0.017173, 0.031101,
		-0.028372, 0.912668, -0.407716,
		41.282589, 37.370510, 23.219223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849937, 36.652428, 22.974110>,  <41.302448, 36.731644, 23.504623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849937, 36.652428, 22.974110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066422, 36.982449, 22.909140>,  <41.196312, 37.180462, 22.870157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066422, 36.982449, 22.909140>,  <40.849937, 36.652428, 22.974110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066422, 36.982449, 22.909140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177571, -0.300938, -0.936966,
		-0.821925, 0.478254, -0.309375,
		0.541210, 0.825051, -0.162424,
		41.228783, 37.229965, 22.860413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670853, 36.944389, 22.311466>,  <40.849937, 36.652428, 22.974110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670853, 36.944389, 22.311466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029766, 37.110870, 22.370342>,  <41.245113, 37.210758, 22.405668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029766, 37.110870, 22.370342>,  <40.670853, 36.944389, 22.311466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029766, 37.110870, 22.370342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131486, 0.066329, -0.989097,
		-0.421424, 0.906851, 0.004792,
		0.897281, 0.416199, 0.147191,
		41.298950, 37.235729, 22.414499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786701, 37.565269, 21.766726>,  <40.670853, 36.944389, 22.311466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786701, 37.565269, 21.766726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163273, 37.508701, 21.889174>,  <41.389217, 37.474762, 21.962643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163273, 37.508701, 21.889174>,  <40.786701, 37.565269, 21.766726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163273, 37.508701, 21.889174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300196, -0.062006, -0.951860,
		0.153592, 0.988006, -0.015921,
		0.941431, -0.141419, 0.306119,
		41.445702, 37.466274, 21.981009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276680, 38.023376, 21.430086>,  <40.786701, 37.565269, 21.766726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276680, 38.023376, 21.430086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490940, 37.709206, 21.554144>,  <41.619495, 37.520702, 21.628578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490940, 37.709206, 21.554144>,  <41.276680, 38.023376, 21.430086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490940, 37.709206, 21.554144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410610, -0.078677, -0.908410,
		0.737888, 0.613938, 0.280359,
		0.535649, -0.785424, 0.310144,
		41.651634, 37.473579, 21.647186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880608, 38.193970, 21.254658>,  <41.276680, 38.023376, 21.430086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880608, 38.193970, 21.254658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914970, 37.799706, 21.312742>,  <41.935589, 37.563145, 21.347593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914970, 37.799706, 21.312742>,  <41.880608, 38.193970, 21.254658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914970, 37.799706, 21.312742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471749, -0.088134, -0.877317,
		0.877538, 0.143873, 0.457415,
		0.085908, -0.985664, 0.145212,
		41.940742, 37.504005, 21.356306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480927, 38.066032, 20.900503>,  <41.880608, 38.193970, 21.254658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480927, 38.066032, 20.900503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310051, 37.705341, 20.927015>,  <42.207527, 37.488926, 20.942923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310051, 37.705341, 20.927015>,  <42.480927, 38.066032, 20.900503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310051, 37.705341, 20.927015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206509, -0.168675, -0.963796,
		0.880266, -0.398031, 0.258271,
		-0.427184, -0.901732, 0.066282,
		42.181896, 37.434822, 20.946899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897301, 37.694199, 20.355062>,  <42.480927, 38.066032, 20.900503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897301, 37.694199, 20.355062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578903, 37.469563, 20.445404>,  <42.387863, 37.334782, 20.499609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578903, 37.469563, 20.445404>,  <42.897301, 37.694199, 20.355062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578903, 37.469563, 20.445404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033730, -0.331389, -0.942891,
		0.604363, -0.758155, 0.244841,
		-0.795995, -0.561590, 0.225852,
		42.340103, 37.301086, 20.513159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.494045, 34.206390, 19.498764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704102, 34.535732, 19.584854>,  <34.830135, 34.733337, 19.636507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704102, 34.535732, 19.584854>,  <34.494045, 34.206390, 19.498764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704102, 34.535732, 19.584854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187958, -0.134443, 0.972932,
		0.830001, -0.551377, 0.084155,
		0.525138, 0.823352, 0.215224,
		34.861645, 34.782738, 19.649422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970901, 34.035240, 20.039520>,  <34.494045, 34.206390, 19.498764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970901, 34.035240, 20.039520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955284, 34.432629, 20.082382>,  <34.945915, 34.671062, 20.108099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955284, 34.432629, 20.082382>,  <34.970901, 34.035240, 20.039520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955284, 34.432629, 20.082382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066435, -0.109579, 0.991756,
		0.997027, 0.031604, 0.070280,
		-0.039044, 0.993476, 0.107154,
		34.943569, 34.730671, 20.114529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297752, 34.163586, 20.746845>,  <34.970901, 34.035240, 20.039520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297752, 34.163586, 20.746845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114151, 34.503513, 20.643213>,  <35.003990, 34.707470, 20.581034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114151, 34.503513, 20.643213>,  <35.297752, 34.163586, 20.746845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114151, 34.503513, 20.643213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203820, 0.183109, 0.961732,
		0.864741, 0.494240, 0.089164,
		-0.458999, 0.849823, -0.259078,
		34.976452, 34.758461, 20.565491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646820, 34.632359, 21.114326>,  <35.297752, 34.163586, 20.746845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646820, 34.632359, 21.114326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281525, 34.753941, 21.005802>,  <35.062347, 34.826889, 20.940687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281525, 34.753941, 21.005802>,  <35.646820, 34.632359, 21.114326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281525, 34.753941, 21.005802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189339, 0.273024, 0.943191,
		0.360760, 0.912727, -0.191786,
		-0.913238, 0.303953, -0.271311,
		35.007553, 34.845127, 20.924410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604443, 35.294136, 21.319632>,  <35.646820, 34.632359, 21.114326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604443, 35.294136, 21.319632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217964, 35.192272, 21.303532>,  <34.986076, 35.131153, 21.293871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217964, 35.192272, 21.303532>,  <35.604443, 35.294136, 21.319632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217964, 35.192272, 21.303532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087078, 0.175386, 0.980641,
		-0.242669, 0.950994, -0.191631,
		-0.966193, -0.254658, -0.040250,
		34.928104, 35.115875, 21.291456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246250, 35.812187, 21.603540>,  <35.604443, 35.294136, 21.319632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246250, 35.812187, 21.603540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963493, 35.529755, 21.620342>,  <34.793839, 35.360294, 21.630424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963493, 35.529755, 21.620342>,  <35.246250, 35.812187, 21.603540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963493, 35.529755, 21.620342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174588, 0.231723, 0.956987,
		-0.685440, 0.669148, -0.287075,
		-0.706888, -0.706077, 0.042007,
		34.751427, 35.317932, 21.632944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807255, 36.058575, 22.056435>,  <35.246250, 35.812187, 21.603540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807255, 36.058575, 22.056435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693333, 35.675606, 22.037523>,  <34.624977, 35.445824, 22.026176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693333, 35.675606, 22.037523>,  <34.807255, 36.058575, 22.056435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693333, 35.675606, 22.037523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230957, 0.020668, 0.972744,
		-0.930346, 0.287964, -0.227009,
		-0.284807, -0.957418, -0.047279,
		34.607891, 35.388382, 22.023340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278156, 36.055206, 22.520805>,  <34.807255, 36.058575, 22.056435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278156, 36.055206, 22.520805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.421383, 35.683968, 22.479956>,  <34.507320, 35.461224, 22.455446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.421383, 35.683968, 22.479956>,  <34.278156, 36.055206, 22.520805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421383, 35.683968, 22.479956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020012, -0.116980, 0.992933,
		-0.933482, -0.353492, -0.060460,
		0.358066, -0.928095, -0.102125,
		34.528801, 35.405540, 22.449318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716732, 35.638184, 22.770969>,  <34.278156, 36.055206, 22.520805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716732, 35.638184, 22.770969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062675, 35.438889, 22.795568>,  <34.270241, 35.319309, 22.810328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062675, 35.438889, 22.795568>,  <33.716732, 35.638184, 22.770969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062675, 35.438889, 22.795568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021230, 0.086092, 0.996061,
		-0.501573, -0.862754, 0.063879,
		0.864855, -0.498241, 0.061498,
		34.322132, 35.289417, 22.814018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601723, 35.212627, 23.310499>,  <33.716732, 35.638184, 22.770969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601723, 35.212627, 23.310499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000530, 35.196445, 23.284216>,  <34.239815, 35.186737, 23.268446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000530, 35.196445, 23.284216>,  <33.601723, 35.212627, 23.310499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000530, 35.196445, 23.284216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065326, -0.010740, 0.997806,
		-0.041072, -0.999124, -0.008066,
		0.997018, -0.040455, -0.065710,
		34.299637, 35.184307, 23.264503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836456, 34.674290, 23.741613>,  <33.601723, 35.212627, 23.310499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836456, 34.674290, 23.741613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.165043, 34.897297, 23.693670>,  <34.362194, 35.031101, 23.664906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.165043, 34.897297, 23.693670>,  <33.836456, 34.674290, 23.741613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165043, 34.897297, 23.693670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226933, -0.126779, 0.965623,
		0.523155, -0.820428, -0.230664,
		0.821468, 0.557516, -0.119857,
		34.411484, 35.064552, 23.657713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419056, 34.242226, 23.968687>,  <33.836456, 34.674290, 23.741613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419056, 34.242226, 23.968687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.512848, 34.630775, 23.983957>,  <34.569122, 34.863903, 23.993118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.512848, 34.630775, 23.983957>,  <34.419056, 34.242226, 23.968687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512848, 34.630775, 23.983957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090122, -0.060821, 0.994072,
		0.967933, -0.229654, -0.101803,
		0.234484, 0.971370, 0.038174,
		34.583195, 34.922188, 23.995409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025200, 34.277149, 24.467979>,  <34.419056, 34.242226, 23.968687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025200, 34.277149, 24.467979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872326, 34.644077, 24.423336>,  <34.780602, 34.864235, 24.396549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872326, 34.644077, 24.423336>,  <35.025200, 34.277149, 24.467979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872326, 34.644077, 24.423336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071554, 0.091037, 0.993273,
		0.921310, 0.387604, 0.030844,
		-0.382189, 0.917320, -0.111608,
		34.757668, 34.919273, 24.389854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399780, 34.686024, 24.974621>,  <35.025200, 34.277149, 24.467979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399780, 34.686024, 24.974621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048470, 34.858871, 24.892736>,  <34.837685, 34.962582, 24.843605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048470, 34.858871, 24.892736>,  <35.399780, 34.686024, 24.974621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048470, 34.858871, 24.892736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106168, 0.241205, 0.964649,
		0.466225, 0.868959, -0.165967,
		-0.878273, 0.432123, -0.204711,
		34.784988, 34.988510, 24.831324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081295, 35.047787, 25.276644>,  <35.399780, 34.686024, 24.974621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081295, 35.047787, 25.276644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333149, 34.740322, 25.321764>,  <36.484261, 34.555843, 25.348837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333149, 34.740322, 25.321764>,  <36.081295, 35.047787, 25.276644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333149, 34.740322, 25.321764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024778, -0.125255, -0.991815,
		0.776497, 0.627275, -0.059819,
		0.629634, -0.768659, 0.112803,
		36.522038, 34.509724, 25.355604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701588, 35.145302, 24.821028>,  <36.081295, 35.047787, 25.276644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701588, 35.145302, 24.821028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706310, 34.752998, 24.898970>,  <36.709145, 34.517616, 24.945734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706310, 34.752998, 24.898970>,  <36.701588, 35.145302, 24.821028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706310, 34.752998, 24.898970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297733, -0.182581, -0.937027,
		0.954576, 0.069079, 0.289849,
		0.011808, -0.980761, 0.194855,
		36.709854, 34.458771, 24.957426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327099, 34.975529, 24.536739>,  <36.701588, 35.145302, 24.821028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327099, 34.975529, 24.536739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132259, 34.627110, 24.562082>,  <37.015358, 34.418056, 24.577288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132259, 34.627110, 24.562082>,  <37.327099, 34.975529, 24.536739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132259, 34.627110, 24.562082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346338, -0.259251, -0.901576,
		0.801740, -0.417213, 0.427957,
		-0.487097, -0.871047, 0.063355,
		36.986130, 34.365795, 24.581089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814011, 34.374371, 24.177471>,  <37.327099, 34.975529, 24.536739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814011, 34.374371, 24.177471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439171, 34.236443, 24.199192>,  <37.214268, 34.153687, 24.212225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439171, 34.236443, 24.199192>,  <37.814011, 34.374371, 24.177471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439171, 34.236443, 24.199192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093981, -0.399048, -0.912101,
		0.336179, -0.849624, 0.406353,
		-0.937097, -0.344819, 0.054303,
		37.158043, 34.132996, 24.215483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767345, 33.656631, 23.912264>,  <37.814011, 34.374371, 24.177471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767345, 33.656631, 23.912264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372345, 33.701637, 23.868120>,  <37.135345, 33.728642, 23.841635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372345, 33.701637, 23.868120>,  <37.767345, 33.656631, 23.912264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372345, 33.701637, 23.868120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051342, -0.432366, -0.900235,
		-0.149003, -0.894651, 0.421186,
		-0.987503, 0.112513, -0.110357,
		37.076096, 33.735390, 23.835012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412052, 33.034679, 23.679382>,  <37.767345, 33.656631, 23.912264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412052, 33.034679, 23.679382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170147, 33.324223, 23.546541>,  <37.025005, 33.497948, 23.466837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170147, 33.324223, 23.546541>,  <37.412052, 33.034679, 23.679382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170147, 33.324223, 23.546541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079332, -0.469680, -0.879265,
		-0.792447, -0.505398, 0.341469,
		-0.604760, 0.723860, -0.332102,
		36.988720, 33.541382, 23.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043537, 32.673298, 23.136202>,  <37.412052, 33.034679, 23.679382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043537, 32.673298, 23.136202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961658, 33.062626, 23.094721>,  <36.912529, 33.296223, 23.069832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961658, 33.062626, 23.094721>,  <37.043537, 32.673298, 23.136202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961658, 33.062626, 23.094721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299608, -0.163163, -0.940007,
		-0.931844, -0.161348, 0.325013,
		-0.204698, 0.973316, -0.103701,
		36.900249, 33.354622, 23.063610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325733, 32.763023, 22.865654>,  <37.043537, 32.673298, 23.136202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325733, 32.763023, 22.865654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537624, 33.086857, 22.764492>,  <36.664761, 33.281158, 22.703794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537624, 33.086857, 22.764492>,  <36.325733, 32.763023, 22.865654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537624, 33.086857, 22.764492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286790, -0.109646, -0.951698,
		-0.798210, 0.576672, 0.174098,
		0.529728, 0.809585, -0.252905,
		36.696545, 33.329731, 22.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067303, 32.955753, 22.208864>,  <36.325733, 32.763023, 22.865654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067303, 32.955753, 22.208864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378613, 33.205978, 22.230621>,  <36.565399, 33.356113, 22.243675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378613, 33.205978, 22.230621>,  <36.067303, 32.955753, 22.208864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378613, 33.205978, 22.230621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021759, 0.059707, -0.997979,
		-0.627544, 0.777888, 0.032857,
		0.778277, 0.625560, 0.054395,
		36.612095, 33.393646, 22.246941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927368, 33.501419, 21.714880>,  <36.067303, 32.955753, 22.208864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927368, 33.501419, 21.714880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324352, 33.490936, 21.762781>,  <36.562542, 33.484646, 21.791521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324352, 33.490936, 21.762781>,  <35.927368, 33.501419, 21.714880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324352, 33.490936, 21.762781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116252, -0.108725, -0.987251,
		0.038888, 0.993727, -0.104859,
		0.992458, -0.026202, 0.119751,
		36.622089, 33.483074, 21.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203152, 34.026566, 21.254999>,  <35.927368, 33.501419, 21.714880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203152, 34.026566, 21.254999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536098, 33.815277, 21.322098>,  <36.735867, 33.688503, 21.362356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536098, 33.815277, 21.322098>,  <36.203152, 34.026566, 21.254999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536098, 33.815277, 21.322098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217116, 0.032309, -0.975611,
		0.509923, 0.848489, 0.141579,
		0.832370, -0.528225, 0.167746,
		36.785809, 33.656811, 21.372421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821400, 34.451668, 21.091829>,  <36.203152, 34.026566, 21.254999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821400, 34.451668, 21.091829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925293, 34.066319, 21.065157>,  <36.987629, 33.835110, 21.049154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925293, 34.066319, 21.065157>,  <36.821400, 34.451668, 21.091829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925293, 34.066319, 21.065157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331253, 0.153745, -0.930932,
		0.907088, 0.219710, 0.359054,
		0.259738, -0.963374, -0.066681,
		37.003216, 33.777306, 21.045153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577122, 34.416496, 20.781828>,  <36.821400, 34.451668, 21.091829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577122, 34.416496, 20.781828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396225, 34.067513, 20.707750>,  <37.287689, 33.858124, 20.663303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396225, 34.067513, 20.707750>,  <37.577122, 34.416496, 20.781828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396225, 34.067513, 20.707750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253162, 0.073532, -0.964625,
		0.855212, -0.483127, 0.187619,
		-0.452240, -0.872457, -0.185195,
		37.260551, 33.805775, 20.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994560, 34.085407, 20.329527>,  <37.577122, 34.416496, 20.781828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994560, 34.085407, 20.329527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653778, 33.883522, 20.273758>,  <37.449310, 33.762390, 20.240295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653778, 33.883522, 20.273758>,  <37.994560, 34.085407, 20.329527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653778, 33.883522, 20.273758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142023, 0.033553, -0.989295,
		0.503990, -0.862634, 0.043096,
		-0.851953, -0.504715, -0.139424,
		37.398193, 33.732109, 20.231932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723900, 33.703785, 20.447603>,  <37.994560, 34.085407, 20.329527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723900, 33.703785, 20.447603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.079521, 33.885994, 20.429359>,  <39.292892, 33.995319, 20.418413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.079521, 33.885994, 20.429359>,  <38.723900, 33.703785, 20.447603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079521, 33.885994, 20.429359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072626, -0.041976, 0.996476,
		0.452007, -0.889232, -0.070402,
		0.889053, 0.455526, -0.045607,
		39.346237, 34.022652, 20.415678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069138, 33.462162, 20.994358>,  <38.723900, 33.703785, 20.447603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069138, 33.462162, 20.994358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284046, 33.782825, 20.889530>,  <39.412991, 33.975224, 20.826633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284046, 33.782825, 20.889530>,  <39.069138, 33.462162, 20.994358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284046, 33.782825, 20.889530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223421, 0.164348, 0.960767,
		0.813279, -0.574745, -0.090808,
		0.537271, 0.801660, -0.262071,
		39.445229, 34.023323, 20.810909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637234, 33.359077, 21.335375>,  <39.069138, 33.462162, 20.994358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637234, 33.359077, 21.335375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631042, 33.753609, 21.269739>,  <39.627327, 33.990326, 21.230358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631042, 33.753609, 21.269739>,  <39.637234, 33.359077, 21.335375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631042, 33.753609, 21.269739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209136, 0.163674, 0.964091,
		0.977764, -0.019392, -0.208810,
		-0.015481, 0.986324, -0.164090,
		39.626400, 34.049507, 21.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278118, 33.634342, 21.644814>,  <39.637234, 33.359077, 21.335375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278118, 33.634342, 21.644814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017258, 33.936485, 21.619076>,  <39.860741, 34.117771, 21.603634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017258, 33.936485, 21.619076>,  <40.278118, 33.634342, 21.644814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017258, 33.936485, 21.619076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127544, 0.192988, 0.972876,
		0.747286, 0.626252, -0.222197,
		-0.652147, 0.755357, -0.064342,
		39.821613, 34.163094, 21.599773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555466, 34.278728, 22.053665>,  <40.278118, 33.634342, 21.644814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555466, 34.278728, 22.053665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158855, 34.316265, 22.017729>,  <39.920891, 34.338787, 21.996166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158855, 34.316265, 22.017729>,  <40.555466, 34.278728, 22.053665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158855, 34.316265, 22.017729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053308, 0.336760, 0.940080,
		0.118473, 0.936903, -0.328903,
		-0.991525, 0.093841, -0.089841,
		39.861397, 34.344418, 21.990776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457642, 35.018185, 22.187132>,  <40.555466, 34.278728, 22.053665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457642, 35.018185, 22.187132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090103, 34.863438, 22.218271>,  <39.869579, 34.770588, 22.236954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090103, 34.863438, 22.218271>,  <40.457642, 35.018185, 22.187132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090103, 34.863438, 22.218271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143034, 0.510353, 0.847986,
		-0.367789, 0.768031, -0.524270,
		-0.918843, -0.386869, 0.077847,
		39.814449, 34.747375, 22.241625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956596, 35.581314, 22.318092>,  <40.457642, 35.018185, 22.187132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956596, 35.581314, 22.318092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791004, 35.241001, 22.447577>,  <39.691650, 35.036812, 22.525267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791004, 35.241001, 22.447577>,  <39.956596, 35.581314, 22.318092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791004, 35.241001, 22.447577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051423, 0.376904, 0.924824,
		-0.908834, 0.366209, -0.199779,
		-0.413976, -0.850785, 0.323711,
		39.666813, 34.985767, 22.544689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296421, 35.759335, 22.760151>,  <39.956596, 35.581314, 22.318092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296421, 35.759335, 22.760151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.435837, 35.396114, 22.853073>,  <39.519485, 35.178181, 22.908827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.435837, 35.396114, 22.853073>,  <39.296421, 35.759335, 22.760151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435837, 35.396114, 22.853073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062630, 0.224732, 0.972406,
		-0.935201, -0.353467, 0.021456,
		0.348535, -0.908051, 0.232307,
		39.540398, 35.123699, 22.922766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811607, 35.402515, 23.278030>,  <39.296421, 35.759335, 22.760151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811607, 35.402515, 23.278030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180481, 35.250130, 23.304674>,  <39.401806, 35.158699, 23.320660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180481, 35.250130, 23.304674>,  <38.811607, 35.402515, 23.278030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180481, 35.250130, 23.304674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045133, 0.065040, 0.996861,
		-0.384103, -0.922298, 0.042785,
		0.922186, -0.380966, 0.066609,
		39.457138, 35.135841, 23.324657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688477, 35.090614, 23.907324>,  <38.811607, 35.402515, 23.278030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688477, 35.090614, 23.907324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084946, 35.059204, 23.864611>,  <39.322826, 35.040359, 23.838984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084946, 35.059204, 23.864611>,  <38.688477, 35.090614, 23.907324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084946, 35.059204, 23.864611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118213, 0.159294, 0.980128,
		-0.059956, -0.984103, 0.167171,
		0.991177, -0.078527, -0.106783,
		39.382298, 35.035645, 23.832575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917072, 34.499126, 24.417042>,  <38.688477, 35.090614, 23.907324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917072, 34.499126, 24.417042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211494, 34.752228, 24.320841>,  <39.388149, 34.904091, 24.263121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211494, 34.752228, 24.320841>,  <38.917072, 34.499126, 24.417042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211494, 34.752228, 24.320841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126381, 0.220587, 0.967145,
		0.665018, -0.742268, 0.082396,
		0.736056, 0.632756, -0.240503,
		39.432312, 34.942055, 24.248690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479721, 34.295143, 24.777126>,  <38.917072, 34.499126, 24.417042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479721, 34.295143, 24.777126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598572, 34.669571, 24.701771>,  <39.669884, 34.894226, 24.656557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598572, 34.669571, 24.701771>,  <39.479721, 34.295143, 24.777126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598572, 34.669571, 24.701771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212369, 0.127570, 0.968827,
		0.930922, -0.327871, -0.160888,
		0.297126, 0.936070, -0.188387,
		39.687710, 34.950394, 24.645254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025749, 34.426178, 25.163326>,  <39.479721, 34.295143, 24.777126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025749, 34.426178, 25.163326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927685, 34.799046, 25.056774>,  <39.868847, 35.022766, 24.992842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927685, 34.799046, 25.056774>,  <40.025749, 34.426178, 25.163326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927685, 34.799046, 25.056774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169298, 0.311708, 0.934974,
		0.954586, 0.184120, -0.234232,
		-0.245160, 0.932168, -0.266381,
		39.854137, 35.078697, 24.976860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616253, 34.788067, 25.449532>,  <40.025749, 34.426178, 25.163326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616253, 34.788067, 25.449532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304745, 35.036495, 25.414255>,  <40.117840, 35.185555, 25.393089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304745, 35.036495, 25.414255>,  <40.616253, 34.788067, 25.449532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304745, 35.036495, 25.414255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191897, 0.369716, 0.909113,
		0.597232, 0.691070, -0.407107,
		-0.778775, 0.621074, -0.088192,
		40.071114, 35.222816, 25.387798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.974575, 37.072292, 19.999767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581303, 37.072819, 20.072809>,  <42.345337, 37.073135, 20.116634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581303, 37.072819, 20.072809>,  <42.974575, 37.072292, 19.999767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581303, 37.072819, 20.072809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158251, -0.505135, -0.848408,
		0.091121, -0.863039, 0.496850,
		-0.983186, 0.001319, 0.182605,
		42.286346, 37.073215, 20.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862568, 36.409412, 19.756660>,  <42.974575, 37.072292, 19.999767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862568, 36.409412, 19.756660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.514748, 36.606945, 19.755337>,  <42.306057, 36.725464, 19.754541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.514748, 36.606945, 19.755337>,  <42.862568, 36.409412, 19.756660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514748, 36.606945, 19.755337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191506, -0.343376, -0.919466,
		-0.455199, -0.798889, 0.393155,
		-0.869552, 0.493832, -0.003312,
		42.253883, 36.755093, 19.754343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397732, 35.893360, 19.569124>,  <42.862568, 36.409412, 19.756660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397732, 35.893360, 19.569124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240574, 36.252029, 19.487537>,  <42.146278, 36.467232, 19.438585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240574, 36.252029, 19.487537>,  <42.397732, 35.893360, 19.569124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240574, 36.252029, 19.487537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105217, -0.264183, -0.958716,
		-0.913543, -0.355216, 0.198143,
		-0.392898, 0.896676, -0.203968,
		42.122704, 36.521034, 19.426348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718430, 35.807739, 19.049423>,  <42.397732, 35.893360, 19.569124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718430, 35.807739, 19.049423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866203, 36.178204, 19.019106>,  <41.954868, 36.400482, 19.000916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866203, 36.178204, 19.019106>,  <41.718430, 35.807739, 19.049423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866203, 36.178204, 19.019106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154482, -0.019219, -0.987809,
		-0.916328, 0.376636, 0.135975,
		0.369431, 0.926162, -0.075795,
		41.977032, 36.456051, 18.996368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349670, 36.099796, 18.549307>,  <41.718430, 35.807739, 19.049423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349670, 36.099796, 18.549307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663734, 36.347195, 18.561808>,  <41.852173, 36.495636, 18.569307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663734, 36.347195, 18.561808>,  <41.349670, 36.099796, 18.549307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663734, 36.347195, 18.561808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116288, 0.196812, -0.973521,
		-0.608271, 0.760740, 0.226454,
		0.785165, 0.618498, 0.031250,
		41.899284, 36.532745, 18.571182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062759, 36.609257, 18.158447>,  <41.349670, 36.099796, 18.549307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062759, 36.609257, 18.158447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459568, 36.658909, 18.167252>,  <41.697655, 36.688702, 18.172533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459568, 36.658909, 18.167252>,  <41.062759, 36.609257, 18.158447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459568, 36.658909, 18.167252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007859, 0.113352, -0.993524,
		-0.125821, 0.985770, 0.111472,
		0.992022, 0.124130, 0.022010,
		41.757175, 36.696148, 18.173855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107704, 37.067883, 17.763004>,  <41.062759, 36.609257, 18.158447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107704, 37.067883, 17.763004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465168, 36.889420, 17.782255>,  <41.679646, 36.782341, 17.793806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465168, 36.889420, 17.782255>,  <41.107704, 37.067883, 17.763004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465168, 36.889420, 17.782255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056872, 0.006222, -0.998362,
		0.445127, 0.894933, 0.030934,
		0.893660, -0.446157, 0.048127,
		41.733265, 36.755573, 17.796694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605862, 37.551689, 17.471907>,  <41.107704, 37.067883, 17.763004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605862, 37.551689, 17.471907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726082, 37.170311, 17.461967>,  <41.798214, 36.941486, 17.456003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726082, 37.170311, 17.461967>,  <41.605862, 37.551689, 17.471907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726082, 37.170311, 17.461967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052727, 0.042623, -0.997699,
		0.952307, 0.298552, 0.063083,
		0.300553, -0.953441, -0.024848,
		41.816246, 36.884277, 17.454514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152828, 37.602352, 16.906595>,  <41.605862, 37.551689, 17.471907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152828, 37.602352, 16.906595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.084557, 37.215061, 16.979710>,  <42.043594, 36.982689, 17.023579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.084557, 37.215061, 16.979710>,  <42.152828, 37.602352, 16.906595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084557, 37.215061, 16.979710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134645, -0.160850, -0.977751,
		0.976084, -0.191489, -0.102913,
		-0.170675, -0.968225, 0.182786,
		42.033356, 36.924595, 17.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440456, 37.264988, 16.398708>,  <42.152828, 37.602352, 16.906595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440456, 37.264988, 16.398708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.212917, 36.966690, 16.537426>,  <42.076393, 36.787712, 16.620657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.212917, 36.966690, 16.537426>,  <42.440456, 37.264988, 16.398708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212917, 36.966690, 16.537426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094627, -0.359518, -0.928328,
		0.816979, -0.560897, 0.133944,
		-0.568851, -0.745749, 0.346794,
		42.042263, 36.742966, 16.641464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783501, 36.559113, 16.215370>,  <42.440456, 37.264988, 16.398708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783501, 36.559113, 16.215370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.385326, 36.539959, 16.248377>,  <42.146420, 36.528465, 16.268181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.385326, 36.539959, 16.248377>,  <42.783501, 36.559113, 16.215370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385326, 36.539959, 16.248377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056052, -0.406350, -0.911996,
		0.077202, -0.912462, 0.401813,
		-0.995439, -0.047885, 0.082516,
		42.086697, 36.525593, 16.273132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599422, 35.922344, 15.793785>,  <42.783501, 36.559113, 16.215370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599422, 35.922344, 15.793785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257534, 36.121990, 15.850815>,  <42.052399, 36.241779, 15.885033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257534, 36.121990, 15.850815>,  <42.599422, 35.922344, 15.793785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257534, 36.121990, 15.850815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322050, -0.294479, -0.899759,
		-0.407103, -0.814961, 0.412439,
		-0.854723, 0.499121, 0.142575,
		42.001118, 36.271725, 15.893587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077930, 35.448799, 15.707214>,  <42.599422, 35.922344, 15.793785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077930, 35.448799, 15.707214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.901356, 35.799362, 15.630231>,  <41.795410, 36.009701, 15.584041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.901356, 35.799362, 15.630231>,  <42.077930, 35.448799, 15.707214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901356, 35.799362, 15.630231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456693, -0.404080, -0.792560,
		-0.772374, -0.261972, 0.578627,
		-0.441440, 0.876407, -0.192460,
		41.768925, 36.062283, 15.572493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359222, 35.343639, 15.526555>,  <42.077930, 35.448799, 15.707214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359222, 35.343639, 15.526555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.493095, 35.691437, 15.381248>,  <41.573418, 35.900116, 15.294065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.493095, 35.691437, 15.381248>,  <41.359222, 35.343639, 15.526555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493095, 35.691437, 15.381248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651100, -0.065303, -0.756177,
		-0.681216, 0.489602, 0.544274,
		0.334683, 0.869497, -0.363265,
		41.593502, 35.952286, 15.272269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855232, 34.771839, 15.362115>,  <41.359222, 35.343639, 15.526555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855232, 34.771839, 15.362115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865139, 34.383682, 15.266006>,  <40.871082, 34.150787, 15.208342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865139, 34.383682, 15.266006>,  <40.855232, 34.771839, 15.362115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865139, 34.383682, 15.266006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243446, -0.238964, 0.940016,
		-0.969598, 0.035210, -0.242157,
		0.024769, -0.970390, -0.240271,
		40.872570, 34.092564, 15.193925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165096, 34.418350, 15.609406>,  <40.855232, 34.771839, 15.362115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165096, 34.418350, 15.609406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463322, 34.152122, 15.595781>,  <40.642258, 33.992386, 15.587607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463322, 34.152122, 15.595781>,  <40.165096, 34.418350, 15.609406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463322, 34.152122, 15.595781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139698, -0.206051, 0.968518,
		-0.651632, -0.717331, -0.246601,
		0.745561, -0.665567, -0.034060,
		40.686989, 33.952454, 15.585564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977520, 33.828094, 16.003870>,  <40.165096, 34.418350, 15.609406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977520, 33.828094, 16.003870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.366833, 33.740273, 15.976986>,  <40.600422, 33.687580, 15.960855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.366833, 33.740273, 15.976986>,  <39.977520, 33.828094, 16.003870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366833, 33.740273, 15.976986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014939, -0.352642, 0.935639,
		-0.229129, -0.909636, -0.346500,
		0.973281, -0.219558, -0.067211,
		40.658817, 33.674404, 15.956822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997025, 33.133564, 16.224318>,  <39.977520, 33.828094, 16.003870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997025, 33.133564, 16.224318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361549, 33.295929, 16.251869>,  <40.580265, 33.393349, 16.268400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361549, 33.295929, 16.251869>,  <39.997025, 33.133564, 16.224318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361549, 33.295929, 16.251869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037307, -0.248027, 0.968034,
		0.410022, -0.879612, -0.241174,
		0.911313, 0.405913, 0.068881,
		40.634945, 33.417702, 16.272533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477375, 32.550594, 16.488047>,  <39.997025, 33.133564, 16.224318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477375, 32.550594, 16.488047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.629436, 32.911362, 16.570053>,  <40.720673, 33.127823, 16.619257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.629436, 32.911362, 16.570053>,  <40.477375, 32.550594, 16.488047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629436, 32.911362, 16.570053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000397, -0.221499, 0.975161,
		0.924922, -0.370796, -0.083847,
		0.380157, 0.901914, 0.205017,
		40.743484, 33.181934, 16.631557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010796, 32.400288, 17.045593>,  <40.477375, 32.550594, 16.488047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010796, 32.400288, 17.045593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.986820, 32.796761, 17.092871>,  <40.972435, 33.034645, 17.121237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.986820, 32.796761, 17.092871>,  <41.010796, 32.400288, 17.045593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986820, 32.796761, 17.092871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092380, -0.123404, 0.988047,
		0.993918, 0.048301, 0.098962,
		-0.059936, 0.991180, 0.118192,
		40.968838, 33.094116, 17.128328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315971, 32.472813, 17.723597>,  <41.010796, 32.400288, 17.045593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315971, 32.472813, 17.723597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082241, 32.789249, 17.651224>,  <40.942001, 32.979111, 17.607801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082241, 32.789249, 17.651224>,  <41.315971, 32.472813, 17.723597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082241, 32.789249, 17.651224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174179, 0.095499, 0.980072,
		0.792605, 0.604198, 0.081989,
		-0.584328, 0.791091, -0.180931,
		40.906944, 33.026577, 17.596945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614536, 33.078629, 18.098566>,  <41.315971, 32.472813, 17.723597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614536, 33.078629, 18.098566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225082, 33.139523, 18.030617>,  <40.991409, 33.176060, 17.989847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225082, 33.139523, 18.030617>,  <41.614536, 33.078629, 18.098566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225082, 33.139523, 18.030617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141958, 0.178548, 0.973637,
		0.178548, 0.972084, -0.152231,
		-0.973637, 0.152231, -0.169874,
		40.932991, 33.185192, 17.979654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432491, 33.627636, 18.517967>,  <41.614536, 33.078629, 18.098566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432491, 33.627636, 18.517967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.074692, 33.472363, 18.429255>,  <40.860012, 33.379196, 18.376026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.074692, 33.472363, 18.429255>,  <41.432491, 33.627636, 18.517967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074692, 33.472363, 18.429255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367854, 0.357111, 0.858578,
		-0.254087, 0.849578, -0.462230,
		-0.894496, -0.388187, -0.221783,
		40.806343, 33.355907, 18.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004940, 34.182056, 18.709879>,  <41.432491, 33.627636, 18.517967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004940, 34.182056, 18.709879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756504, 33.871529, 18.666843>,  <40.607441, 33.685211, 18.641022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756504, 33.871529, 18.666843>,  <41.004940, 34.182056, 18.709879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756504, 33.871529, 18.666843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482484, 0.270558, 0.833071,
		-0.617618, 0.569325, -0.542602,
		-0.621093, -0.776317, -0.107589,
		40.570175, 33.638634, 18.634567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367844, 34.478302, 18.653740>,  <41.004940, 34.182056, 18.709879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367844, 34.478302, 18.653740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269669, 34.114956, 18.789171>,  <40.210762, 33.896950, 18.870430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269669, 34.114956, 18.789171>,  <40.367844, 34.478302, 18.653740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269669, 34.114956, 18.789171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451760, 0.416194, 0.789110,
		-0.857713, 0.040724, -0.512514,
		-0.245441, -0.908363, 0.338577,
		40.196037, 33.842445, 18.890745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556870, 34.553371, 18.837776>,  <40.367844, 34.478302, 18.653740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556870, 34.553371, 18.837776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.699886, 34.219513, 19.005363>,  <39.785698, 34.019199, 19.105917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.699886, 34.219513, 19.005363>,  <39.556870, 34.553371, 18.837776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699886, 34.219513, 19.005363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402140, 0.267305, 0.875689,
		-0.842879, -0.481582, -0.240070,
		0.357544, -0.834642, 0.418969,
		39.807148, 33.969120, 19.131054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932083, 34.333843, 19.302691>,  <39.556870, 34.553371, 18.837776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932083, 34.333843, 19.302691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.260612, 34.138580, 19.420759>,  <39.457729, 34.021423, 19.491600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.260612, 34.138580, 19.420759>,  <38.932083, 34.333843, 19.302691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260612, 34.138580, 19.420759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314666, 0.043910, 0.948186,
		-0.475827, -0.871649, -0.117543,
		0.821324, -0.488160, 0.295172,
		39.507011, 33.992134, 19.509312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682137, 33.960323, 19.773979>,  <38.932083, 34.333843, 19.302691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682137, 33.960323, 19.773979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070953, 34.025433, 19.841669>,  <39.304245, 34.064499, 19.882284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070953, 34.025433, 19.841669>,  <38.682137, 33.960323, 19.773979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070953, 34.025433, 19.841669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198637, 0.185747, 0.962310,
		0.125204, -0.969022, 0.212887,
		0.972043, 0.162772, 0.169227,
		39.362568, 34.074265, 19.892437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163166, 33.505993, 19.552629>,  <38.682137, 33.960323, 19.773979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163166, 33.505993, 19.552629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780849, 33.493881, 19.669617>,  <37.551460, 33.486614, 19.739809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780849, 33.493881, 19.669617>,  <38.163166, 33.505993, 19.552629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780849, 33.493881, 19.669617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292890, 0.010424, -0.956089,
		0.025903, -0.999487, -0.018833,
		-0.955795, -0.030281, 0.292470,
		37.494110, 33.484798, 19.757357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743801, 32.888599, 19.146441>,  <38.163166, 33.505993, 19.552629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743801, 32.888599, 19.146441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496502, 33.177906, 19.269503>,  <37.348122, 33.351490, 19.343340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.496502, 33.177906, 19.269503>,  <37.743801, 32.888599, 19.146441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496502, 33.177906, 19.269503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258983, 0.182109, -0.948559,
		-0.742089, -0.666123, 0.074725,
		-0.618249, 0.723267, 0.307656,
		37.311028, 33.394886, 19.361799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999184, 32.731590, 18.969975>,  <37.743801, 32.888599, 19.146441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999184, 32.731590, 18.969975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036182, 33.126003, 19.025364>,  <37.058380, 33.362652, 19.058598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036182, 33.126003, 19.025364>,  <36.999184, 32.731590, 18.969975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036182, 33.126003, 19.025364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125821, 0.149531, -0.980719,
		-0.987731, 0.073292, 0.137895,
		0.092498, 0.986037, 0.138474,
		37.063931, 33.421814, 19.066906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597931, 32.922169, 18.468798>,  <36.999184, 32.731590, 18.969975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597931, 32.922169, 18.468798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776585, 33.266369, 18.566830>,  <36.883778, 33.472889, 18.625648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776585, 33.266369, 18.566830>,  <36.597931, 32.922169, 18.468798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776585, 33.266369, 18.566830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152896, 0.343294, -0.926699,
		-0.881556, 0.376424, 0.284894,
		0.446634, 0.860496, 0.245079,
		36.910576, 33.524517, 18.640354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292900, 33.478096, 18.086634>,  <36.597931, 32.922169, 18.468798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292900, 33.478096, 18.086634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663544, 33.590279, 18.186829>,  <36.885929, 33.657589, 18.246946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663544, 33.590279, 18.186829>,  <36.292900, 33.478096, 18.086634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663544, 33.590279, 18.186829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122961, 0.403530, -0.906666,
		-0.355362, 0.870923, 0.339428,
		0.926606, 0.280458, 0.250489,
		36.941525, 33.674416, 18.261976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300541, 34.156857, 17.851410>,  <36.292900, 33.478096, 18.086634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300541, 34.156857, 17.851410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659050, 33.982727, 17.885332>,  <36.874157, 33.878250, 17.905685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659050, 33.982727, 17.885332>,  <36.300541, 34.156857, 17.851410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659050, 33.982727, 17.885332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193257, 0.211237, -0.958139,
		0.399184, 0.875143, 0.273455,
		0.896272, -0.435321, 0.084806,
		36.927933, 33.852131, 17.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 34.601917, 17.470152>,  <36.300541, 34.156857, 17.851410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691902, 34.601917, 17.470152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910610, 34.267372, 17.454462>,  <37.041836, 34.066647, 17.445047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910610, 34.267372, 17.454462>,  <36.691902, 34.601917, 17.470152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910610, 34.267372, 17.454462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153172, 0.145974, -0.977359,
		0.823152, 0.528384, 0.207921,
		0.546772, -0.836362, -0.039225,
		37.074642, 34.016464, 17.442694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025951, 35.314781, 17.465332>,  <36.691902, 34.601917, 17.470152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025951, 35.314781, 17.465332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642178, 35.377300, 17.371471>,  <36.411915, 35.414810, 17.315155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642178, 35.377300, 17.371471>,  <37.025951, 35.314781, 17.465332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642178, 35.377300, 17.371471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253983, -0.117785, 0.960010,
		0.122409, 0.980662, 0.152703,
		-0.959432, 0.156298, -0.234653,
		36.354347, 35.424191, 17.301075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782642, 35.747910, 17.906855>,  <37.025951, 35.314781, 17.465332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782642, 35.747910, 17.906855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438980, 35.609814, 17.755772>,  <36.232784, 35.526955, 17.665121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438980, 35.609814, 17.755772>,  <36.782642, 35.747910, 17.906855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438980, 35.609814, 17.755772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384216, -0.052300, 0.921761,
		-0.337986, 0.937055, -0.087714,
		-0.859153, -0.345243, -0.377708,
		36.181232, 35.506241, 17.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482769, 35.614929, 18.544477>,  <36.782642, 35.747910, 17.906855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482769, 35.614929, 18.544477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186588, 35.535236, 18.287716>,  <36.008881, 35.487419, 18.133659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186588, 35.535236, 18.287716>,  <36.482769, 35.614929, 18.544477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186588, 35.535236, 18.287716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624329, -0.149784, 0.766667,
		-0.248891, 0.968438, -0.013478,
		-0.740451, -0.199231, -0.641904,
		35.964455, 35.475468, 18.095144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879932, 36.184570, 18.594755>,  <36.482769, 35.614929, 18.544477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879932, 36.184570, 18.594755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775944, 35.818920, 18.470310>,  <35.713551, 35.599529, 18.395643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775944, 35.818920, 18.470310>,  <35.879932, 36.184570, 18.594755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775944, 35.818920, 18.470310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571273, -0.114154, 0.812783,
		-0.778499, 0.389035, -0.492536,
		-0.259976, -0.914123, -0.311114,
		35.697952, 35.544682, 18.376976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092983, 36.076263, 18.509893>,  <35.879932, 36.184570, 18.594755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092983, 36.076263, 18.509893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250454, 35.716820, 18.587376>,  <35.344936, 35.501152, 18.633865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250454, 35.716820, 18.587376>,  <35.092983, 36.076263, 18.509893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250454, 35.716820, 18.587376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578717, -0.078557, 0.811736,
		-0.714216, -0.431662, -0.550966,
		0.393678, -0.898608, 0.193703,
		35.368557, 35.447239, 18.645487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510460, 35.569183, 18.599884>,  <35.092983, 36.076263, 18.509893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510460, 35.569183, 18.599884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831974, 35.407459, 18.774454>,  <35.024883, 35.310425, 18.879196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831974, 35.407459, 18.774454>,  <34.510460, 35.569183, 18.599884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831974, 35.407459, 18.774454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530422, -0.154808, 0.833479,
		-0.269423, -0.901424, -0.338888,
		0.803781, -0.404312, 0.436427,
		35.073109, 35.286167, 18.905382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216957, 34.914314, 18.848927>,  <34.510460, 35.569183, 18.599884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216957, 34.914314, 18.848927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.558643, 34.974693, 19.047935>,  <34.763657, 35.010921, 19.167341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.558643, 34.974693, 19.047935>,  <34.216957, 34.914314, 18.848927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558643, 34.974693, 19.047935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440567, -0.297956, 0.846831,
		0.276068, -0.942569, -0.188015,
		0.854217, 0.150950, 0.497522,
		34.814907, 35.019978, 19.197191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.431885, 37.650753, 15.366011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646729, 37.321281, 15.438755>,  <39.775635, 37.123600, 15.482402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646729, 37.321281, 15.438755>,  <39.431885, 37.650753, 15.366011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646729, 37.321281, 15.438755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022258, 0.229364, 0.973086,
		-0.843220, -0.518604, 0.141526,
		0.537107, -0.823676, 0.181861,
		39.807861, 37.074177, 15.493314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173389, 37.011406, 15.746809>,  <39.431885, 37.650753, 15.366011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173389, 37.011406, 15.746809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549400, 37.130245, 15.813837>,  <39.775005, 37.201550, 15.854053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549400, 37.130245, 15.813837>,  <39.173389, 37.011406, 15.746809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549400, 37.130245, 15.813837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282117, 0.401058, 0.871529,
		0.191726, -0.866535, 0.460823,
		0.940027, 0.297101, 0.167571,
		39.831409, 37.219376, 15.864108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278950, 36.992222, 16.397861>,  <39.173389, 37.011406, 15.746809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278950, 36.992222, 16.397861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.569130, 37.256485, 16.320656>,  <39.743237, 37.415043, 16.274332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.569130, 37.256485, 16.320656>,  <39.278950, 36.992222, 16.397861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569130, 37.256485, 16.320656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191664, 0.463252, 0.865253,
		0.661049, -0.590704, 0.462690,
		0.725451, 0.660656, -0.193016,
		39.786766, 37.454681, 16.262751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655781, 37.026054, 17.045345>,  <39.278950, 36.992222, 16.397861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655781, 37.026054, 17.045345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776417, 37.350216, 16.844429>,  <39.848797, 37.544712, 16.723879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776417, 37.350216, 16.844429>,  <39.655781, 37.026054, 17.045345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776417, 37.350216, 16.844429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005143, 0.528195, 0.849108,
		0.953424, -0.253498, 0.163465,
		0.301589, 0.810401, -0.502290,
		39.866894, 37.593334, 16.693743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111176, 37.369053, 17.551615>,  <39.655781, 37.026054, 17.045345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111176, 37.369053, 17.551615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023869, 37.648163, 17.278711>,  <39.971485, 37.815628, 17.114969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023869, 37.648163, 17.278711>,  <40.111176, 37.369053, 17.551615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023869, 37.648163, 17.278711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256357, 0.633565, 0.729984,
		0.941616, 0.334232, 0.040593,
		-0.218266, 0.697771, -0.682258,
		39.958389, 37.857494, 17.074034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486301, 37.838882, 17.755489>,  <40.111176, 37.369053, 17.551615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486301, 37.838882, 17.755489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.184536, 37.998302, 17.546867>,  <40.003479, 38.093956, 17.421694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.184536, 37.998302, 17.546867>,  <40.486301, 37.838882, 17.755489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184536, 37.998302, 17.546867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310035, 0.483996, 0.818307,
		0.578569, 0.779040, -0.241567,
		-0.754411, 0.398552, -0.521555,
		39.958214, 38.117867, 17.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514591, 38.678196, 17.795095>,  <40.486301, 37.838882, 17.755489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514591, 38.678196, 17.795095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142143, 38.573532, 17.693464>,  <39.918674, 38.510735, 17.632486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142143, 38.573532, 17.693464>,  <40.514591, 38.678196, 17.795095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142143, 38.573532, 17.693464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364068, 0.708492, 0.604560,
		0.021823, 0.655418, -0.754951,
		-0.931116, -0.261660, -0.254079,
		39.862808, 38.495033, 17.617241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038250, 39.265419, 17.636084>,  <40.514591, 38.678196, 17.795095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038250, 39.265419, 17.636084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.787468, 38.969086, 17.732496>,  <39.637001, 38.791286, 17.790344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.787468, 38.969086, 17.732496>,  <40.038250, 39.265419, 17.636084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787468, 38.969086, 17.732496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311114, 0.521734, 0.794356,
		-0.714242, 0.423034, -0.557585,
		-0.626950, -0.740835, 0.241032,
		39.599384, 38.746834, 17.804806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492683, 39.620682, 17.922842>,  <40.038250, 39.265419, 17.636084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492683, 39.620682, 17.922842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396305, 39.246033, 18.024580>,  <39.338478, 39.021244, 18.085623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396305, 39.246033, 18.024580>,  <39.492683, 39.620682, 17.922842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396305, 39.246033, 18.024580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332579, 0.325877, 0.884984,
		-0.911777, 0.128642, -0.390017,
		-0.240944, -0.936619, 0.254343,
		39.324020, 38.965046, 18.100883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873531, 39.745960, 18.219706>,  <39.492683, 39.620682, 17.922842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873531, 39.745960, 18.219706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994003, 39.393341, 18.365126>,  <39.066284, 39.181770, 18.452377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994003, 39.393341, 18.365126>,  <38.873531, 39.745960, 18.219706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994003, 39.393341, 18.365126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417946, 0.220647, 0.881270,
		-0.857096, -0.417364, -0.301985,
		0.301178, -0.881546, 0.363551,
		39.084358, 39.128876, 18.474192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353165, 39.487171, 18.587729>,  <38.873531, 39.745960, 18.219706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353165, 39.487171, 18.587729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.663380, 39.298428, 18.755491>,  <38.849506, 39.185181, 18.856148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.663380, 39.298428, 18.755491>,  <38.353165, 39.487171, 18.587729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663380, 39.298428, 18.755491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371850, 0.195445, 0.907485,
		-0.510173, -0.859740, -0.023886,
		0.775533, -0.471856, 0.419405,
		38.896038, 39.156872, 18.881313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086815, 38.903286, 19.020447>,  <38.353165, 39.487171, 18.587729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086815, 38.903286, 19.020447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432873, 39.048393, 19.158972>,  <38.640507, 39.135456, 19.242086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432873, 39.048393, 19.158972>,  <38.086815, 38.903286, 19.020447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432873, 39.048393, 19.158972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441132, 0.221890, 0.869579,
		0.238620, -0.905074, 0.351998,
		0.865137, 0.362777, 0.346310,
		38.692413, 39.157223, 19.262865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573341, 38.531361, 19.220743>,  <38.086815, 38.903286, 19.020447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573341, 38.531361, 19.220743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215584, 38.709274, 19.239590>,  <37.000927, 38.816025, 19.250898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215584, 38.709274, 19.239590>,  <37.573341, 38.531361, 19.220743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215584, 38.709274, 19.239590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095087, -0.086150, -0.991734,
		-0.437051, -0.891484, 0.119345,
		-0.894396, 0.444786, 0.047117,
		36.947266, 38.842709, 19.253725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046089, 38.082172, 18.972900>,  <37.573341, 38.531361, 19.220743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046089, 38.082172, 18.972900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937408, 38.464428, 18.927429>,  <36.872200, 38.693783, 18.900146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937408, 38.464428, 18.927429>,  <37.046089, 38.082172, 18.972900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937408, 38.464428, 18.927429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068533, -0.137036, -0.988192,
		-0.959938, -0.260704, 0.102726,
		-0.271703, 0.955644, -0.113679,
		36.855896, 38.751122, 18.893326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399857, 38.049210, 18.502356>,  <37.046089, 38.082172, 18.972900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399857, 38.049210, 18.502356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537308, 38.423164, 18.466785>,  <36.619778, 38.647537, 18.445444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537308, 38.423164, 18.466785>,  <36.399857, 38.049210, 18.502356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537308, 38.423164, 18.466785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138012, -0.143936, -0.979916,
		-0.928910, 0.324452, -0.178486,
		0.343626, 0.934887, -0.088925,
		36.640396, 38.703629, 18.440107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100136, 38.370632, 17.859549>,  <36.399857, 38.049210, 18.502356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100136, 38.370632, 17.859549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385517, 38.644825, 17.917645>,  <36.556747, 38.809341, 17.952503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385517, 38.644825, 17.917645>,  <36.100136, 38.370632, 17.859549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385517, 38.644825, 17.917645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107906, 0.097323, -0.989386,
		-0.692343, 0.721555, -0.004532,
		0.713455, 0.685483, 0.145241,
		36.599552, 38.850471, 17.961216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010162, 38.916393, 17.333313>,  <36.100136, 38.370632, 17.859549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010162, 38.916393, 17.333313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389839, 38.935837, 17.457678>,  <36.617645, 38.947502, 17.532297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389839, 38.935837, 17.457678>,  <36.010162, 38.916393, 17.333313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389839, 38.935837, 17.457678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286373, 0.276161, -0.917456,
		-0.130458, 0.959881, 0.248211,
		0.949195, 0.048608, 0.310912,
		36.674599, 38.950420, 17.550951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304089, 39.544727, 16.962696>,  <36.010162, 38.916393, 17.333313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304089, 39.544727, 16.962696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600159, 39.309708, 17.093494>,  <36.777802, 39.168697, 17.171974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600159, 39.309708, 17.093494>,  <36.304089, 39.544727, 16.962696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600159, 39.309708, 17.093494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366438, -0.055292, -0.928798,
		0.563794, 0.807298, 0.174375,
		0.740175, -0.587549, 0.326998,
		36.822212, 39.133442, 17.191593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975765, 39.904934, 16.813955>,  <36.304089, 39.544727, 16.962696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975765, 39.904934, 16.813955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042377, 39.512871, 16.856947>,  <37.082344, 39.277634, 16.882742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042377, 39.512871, 16.856947>,  <36.975765, 39.904934, 16.813955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042377, 39.512871, 16.856947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539780, -0.000599, -0.841806,
		0.825170, 0.198202, 0.528972,
		0.166531, -0.980161, 0.107480,
		37.092339, 39.218822, 16.889191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652958, 39.839592, 16.573744>,  <36.975765, 39.904934, 16.813955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652958, 39.839592, 16.573744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.508411, 39.466820, 16.561594>,  <37.421684, 39.243156, 16.554304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.508411, 39.466820, 16.561594>,  <37.652958, 39.839592, 16.573744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508411, 39.466820, 16.561594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548860, -0.186271, -0.814896,
		0.753766, -0.311150, 0.578811,
		-0.361371, -0.931927, -0.030373,
		37.400002, 39.187241, 16.552483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252930, 39.539238, 16.325600>,  <37.652958, 39.839592, 16.573744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252930, 39.539238, 16.325600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945061, 39.288692, 16.276161>,  <37.760342, 39.138363, 16.246498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945061, 39.288692, 16.276161>,  <38.252930, 39.539238, 16.325600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945061, 39.288692, 16.276161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315767, -0.205217, -0.926378,
		0.554889, -0.752031, 0.355734,
		-0.769668, -0.626366, -0.123594,
		37.714161, 39.100784, 16.239082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524567, 38.849949, 16.100508>,  <38.252930, 39.539238, 16.325600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524567, 38.849949, 16.100508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148754, 38.868210, 15.964741>,  <37.923267, 38.879166, 15.883280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148754, 38.868210, 15.964741>,  <38.524567, 38.849949, 16.100508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148754, 38.868210, 15.964741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276024, -0.485742, -0.829376,
		-0.202731, -0.872909, 0.443768,
		-0.939527, 0.045650, -0.339419,
		37.866898, 38.881905, 15.862915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290516, 38.151001, 15.870387>,  <38.524567, 38.849949, 16.100508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290516, 38.151001, 15.870387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.084503, 38.433495, 15.676081>,  <37.960896, 38.602993, 15.559497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.084503, 38.433495, 15.676081>,  <38.290516, 38.151001, 15.870387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084503, 38.433495, 15.676081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055643, -0.537969, -0.841126,
		-0.855362, -0.460238, 0.237776,
		-0.515034, 0.706237, -0.485767,
		37.929993, 38.645367, 15.530351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909687, 37.817562, 15.361953>,  <38.290516, 38.151001, 15.870387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909687, 37.817562, 15.361953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870903, 38.185249, 15.209299>,  <37.847633, 38.405861, 15.117707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870903, 38.185249, 15.209299>,  <37.909687, 37.817562, 15.361953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870903, 38.185249, 15.209299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099880, -0.390491, -0.915173,
		-0.990264, -0.050614, 0.129671,
		-0.096956, 0.919215, -0.381634,
		37.841816, 38.461014, 15.094809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453983, 37.699432, 14.821093>,  <37.909687, 37.817562, 15.361953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453983, 37.699432, 14.821093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.656910, 38.036896, 14.750811>,  <37.778667, 38.239372, 14.708641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.656910, 38.036896, 14.750811>,  <37.453983, 37.699432, 14.821093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656910, 38.036896, 14.750811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281379, -0.354884, -0.891562,
		-0.814527, 0.402866, -0.417427,
		0.507319, 0.843656, -0.175705,
		37.809105, 38.289993, 14.698099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138680, 37.253044, 14.361992>,  <37.453983, 37.699432, 14.821093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138680, 37.253044, 14.361992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833897, 37.016418, 14.256557>,  <36.651028, 36.874443, 14.193295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833897, 37.016418, 14.256557>,  <37.138680, 37.253044, 14.361992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833897, 37.016418, 14.256557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126046, -0.263764, 0.956316,
		-0.635244, 0.761895, 0.126413,
		-0.761956, -0.591561, -0.263589,
		36.605309, 36.838951, 14.177480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547462, 37.425362, 14.757180>,  <37.138680, 37.253044, 14.361992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547462, 37.425362, 14.757180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497738, 37.051937, 14.622718>,  <36.467903, 36.827881, 14.542040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497738, 37.051937, 14.622718>,  <36.547462, 37.425362, 14.757180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497738, 37.051937, 14.622718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142294, -0.318510, 0.937178,
		-0.981987, 0.164337, -0.093245,
		-0.124313, -0.933566, -0.336157,
		36.460445, 36.771866, 14.521871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912766, 37.168308, 15.037667>,  <36.547462, 37.425362, 14.757180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912766, 37.168308, 15.037667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148785, 36.848309, 14.994136>,  <36.290394, 36.656307, 14.968017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148785, 36.848309, 14.994136>,  <35.912766, 37.168308, 15.037667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148785, 36.848309, 14.994136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226993, -0.293734, 0.928544,
		-0.774804, -0.523179, -0.354911,
		0.590045, -0.800003, -0.108828,
		36.325798, 36.608307, 14.961488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622051, 36.786140, 15.479987>,  <35.912766, 37.168308, 15.037667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622051, 36.786140, 15.479987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961590, 36.581718, 15.425901>,  <36.165314, 36.459064, 15.393450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961590, 36.581718, 15.425901>,  <35.622051, 36.786140, 15.479987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961590, 36.581718, 15.425901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081086, -0.378620, 0.921993,
		-0.522387, -0.771665, -0.362830,
		0.848844, -0.511058, -0.135215,
		36.216244, 36.428402, 15.385337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447777, 36.015839, 15.504757>,  <35.622051, 36.786140, 15.479987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447777, 36.015839, 15.504757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.827850, 36.066948, 15.618476>,  <36.055893, 36.097614, 15.686707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.827850, 36.066948, 15.618476>,  <35.447777, 36.015839, 15.504757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827850, 36.066948, 15.618476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195964, -0.464400, 0.863673,
		0.242382, -0.876360, -0.416227,
		0.950184, 0.127773, 0.284297,
		36.112907, 36.105278, 15.703765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641190, 35.373455, 15.609703>,  <35.447777, 36.015839, 15.504757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641190, 35.373455, 15.609703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910202, 35.615204, 15.780554>,  <36.071609, 35.760254, 15.883064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910202, 35.615204, 15.780554>,  <35.641190, 35.373455, 15.609703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910202, 35.615204, 15.780554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116205, -0.483749, 0.867458,
		0.730888, -0.633028, -0.255106,
		0.672532, 0.604370, 0.427127,
		36.111961, 35.796516, 15.908692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237442, 34.935753, 15.951571>,  <35.641190, 35.373455, 15.609703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237442, 34.935753, 15.951571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229160, 35.287804, 16.141283>,  <36.224190, 35.499035, 16.255110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229160, 35.287804, 16.141283>,  <36.237442, 34.935753, 15.951571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229160, 35.287804, 16.141283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061174, -0.474608, 0.878069,
		0.997912, -0.010834, 0.063667,
		-0.020704, 0.880130, 0.474280,
		36.222950, 35.551842, 16.283567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713825, 34.855190, 16.610275>,  <36.237442, 34.935753, 15.951571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713825, 34.855190, 16.610275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473907, 35.169689, 16.669678>,  <36.329956, 35.358391, 16.705318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473907, 35.169689, 16.669678>,  <36.713825, 34.855190, 16.610275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473907, 35.169689, 16.669678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252321, -0.361981, 0.897387,
		0.759328, 0.500778, 0.415502,
		-0.599796, 0.786251, 0.148506,
		36.293968, 35.405563, 16.714230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292450, 34.781773, 17.098307>,  <36.713825, 34.855190, 16.610275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292450, 34.781773, 17.098307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289734, 34.381783, 17.099274>,  <37.288105, 34.141788, 17.099854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289734, 34.381783, 17.099274>,  <37.292450, 34.781773, 17.098307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289734, 34.381783, 17.099274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384095, -0.004839, -0.923281,
		0.923269, -0.005343, 0.384118,
		-0.006792, -0.999974, 0.002416,
		37.287697, 34.081791, 17.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878674, 34.654453, 16.741831>,  <37.292450, 34.781773, 17.098307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878674, 34.654453, 16.741831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.688438, 34.303364, 16.718433>,  <37.574295, 34.092712, 16.704395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.688438, 34.303364, 16.718433>,  <37.878674, 34.654453, 16.741831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688438, 34.303364, 16.718433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392607, -0.152287, -0.907011,
		0.787194, -0.454330, 0.417025,
		-0.475590, -0.877720, -0.058494,
		37.545761, 34.040047, 16.700886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391911, 34.276352, 16.387253>,  <37.878674, 34.654453, 16.741831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391911, 34.276352, 16.387253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065071, 34.046680, 16.366610>,  <37.868965, 33.908878, 16.354223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065071, 34.046680, 16.366610>,  <38.391911, 34.276352, 16.387253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065071, 34.046680, 16.366610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364644, -0.445426, -0.817698,
		0.446517, -0.686962, 0.573329,
		-0.817103, -0.574177, -0.051607,
		37.819939, 33.874428, 16.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522167, 33.460800, 16.243551>,  <38.391911, 34.276352, 16.387253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522167, 33.460800, 16.243551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160248, 33.571152, 16.113794>,  <37.943096, 33.637363, 16.035940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160248, 33.571152, 16.113794>,  <38.522167, 33.460800, 16.243551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160248, 33.571152, 16.113794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254119, -0.261465, -0.931160,
		-0.341704, -0.924947, 0.166467,
		-0.904799, 0.275879, -0.324390,
		37.888809, 33.653915, 16.016478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506161, 32.994400, 15.748907>,  <38.522167, 33.460800, 16.243551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506161, 32.994400, 15.748907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197113, 33.231350, 15.657560>,  <38.011684, 33.373520, 15.602752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197113, 33.231350, 15.657560>,  <38.506161, 32.994400, 15.748907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197113, 33.231350, 15.657560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093608, -0.249482, -0.963844,
		-0.627931, -0.766061, 0.137303,
		-0.772619, 0.592375, -0.228367,
		37.965328, 33.409061, 15.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179653, 32.622952, 15.150269>,  <38.506161, 32.994400, 15.748907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179653, 32.622952, 15.150269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055996, 33.003170, 15.138292>,  <37.981804, 33.231300, 15.131106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055996, 33.003170, 15.138292>,  <38.179653, 32.622952, 15.150269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055996, 33.003170, 15.138292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016426, -0.036815, -0.999187,
		-0.950874, -0.308397, 0.026995,
		-0.309141, 0.950545, -0.029941,
		37.963253, 33.288334, 15.129310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729473, 32.549400, 14.560205>,  <38.179653, 32.622952, 15.150269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729473, 32.549400, 14.560205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831734, 32.930859, 14.623714>,  <37.893089, 33.159733, 14.661820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831734, 32.930859, 14.623714>,  <37.729473, 32.549400, 14.560205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831734, 32.930859, 14.623714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166761, 0.118273, -0.978878,
		-0.952279, 0.276726, -0.128795,
		0.255648, 0.953643, 0.158776,
		37.908428, 33.216953, 14.671347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528122, 32.966549, 13.880835>,  <37.729473, 32.549400, 14.560205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528122, 32.966549, 13.880835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.773415, 33.223305, 14.064976>,  <37.920589, 33.377357, 14.175461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.773415, 33.223305, 14.064976>,  <37.528122, 32.966549, 13.880835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773415, 33.223305, 14.064976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563878, 0.052394, -0.824195,
		-0.553158, 0.765009, -0.329815,
		0.613236, 0.641885, 0.460353,
		37.957386, 33.415871, 14.203082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737999, 33.483528, 13.344915>,  <37.528122, 32.966549, 13.880835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737999, 33.483528, 13.344915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017059, 33.514000, 13.629865>,  <38.184498, 33.532284, 13.800834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017059, 33.514000, 13.629865>,  <37.737999, 33.483528, 13.344915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017059, 33.514000, 13.629865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702371, 0.123314, -0.701048,
		-0.141253, 0.989439, 0.032523,
		0.697655, 0.076182, 0.712372,
		38.226357, 33.536854, 13.843576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.785706, 36.467316, 29.755522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167461, 36.354778, 29.715549>,  <37.396515, 36.287254, 29.691566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167461, 36.354778, 29.715549>,  <36.785706, 36.467316, 29.755522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167461, 36.354778, 29.715549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192515, -0.324062, -0.926241,
		0.228207, 0.903233, -0.363444,
		0.954390, -0.281343, -0.099932,
		37.453777, 36.270374, 29.685570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884960, 36.666248, 29.098829>,  <36.785706, 36.467316, 29.755522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884960, 36.666248, 29.098829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194527, 36.424587, 29.174780>,  <37.380268, 36.279591, 29.220350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194527, 36.424587, 29.174780>,  <36.884960, 36.666248, 29.098829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194527, 36.424587, 29.174780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223597, -0.541194, -0.810626,
		0.592500, 0.584902, -0.553926,
		0.773918, -0.604151, 0.189875,
		37.426701, 36.243343, 29.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143806, 36.669258, 28.521845>,  <36.884960, 36.666248, 29.098829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143806, 36.669258, 28.521845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283421, 36.341583, 28.703878>,  <37.367191, 36.144978, 28.813099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283421, 36.341583, 28.703878>,  <37.143806, 36.669258, 28.521845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283421, 36.341583, 28.703878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259899, -0.551195, -0.792866,
		0.900347, 0.158465, -0.405295,
		0.349038, -0.819191, 0.455082,
		37.388130, 36.095825, 28.840403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622761, 36.275837, 28.051653>,  <37.143806, 36.669258, 28.521845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622761, 36.275837, 28.051653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510494, 36.008240, 28.326950>,  <37.443134, 35.847683, 28.492128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510494, 36.008240, 28.326950>,  <37.622761, 36.275837, 28.051653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510494, 36.008240, 28.326950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373297, -0.584523, -0.720404,
		0.884237, -0.459113, -0.085676,
		-0.280668, -0.668990, 0.688242,
		37.426292, 35.807541, 28.533422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713158, 35.751282, 27.710293>,  <37.622761, 36.275837, 28.051653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713158, 35.751282, 27.710293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503445, 35.607105, 28.018892>,  <37.377617, 35.520599, 28.204052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503445, 35.607105, 28.018892>,  <37.713158, 35.751282, 27.710293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503445, 35.607105, 28.018892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278798, -0.783410, -0.555464,
		0.804612, -0.506312, 0.310238,
		-0.524281, -0.360439, 0.771500,
		37.346161, 35.498974, 28.250341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979084, 35.026554, 27.975060>,  <37.713158, 35.751282, 27.710293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979084, 35.026554, 27.975060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588917, 35.057930, 28.057430>,  <37.354816, 35.076756, 28.106853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588917, 35.057930, 28.057430>,  <37.979084, 35.026554, 27.975060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588917, 35.057930, 28.057430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208240, -0.633796, -0.744942,
		0.072081, -0.769512, 0.634551,
		-0.975418, 0.078443, 0.205928,
		37.296291, 35.081463, 28.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740978, 34.381985, 27.967165>,  <37.979084, 35.026554, 27.975060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740978, 34.381985, 27.967165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421936, 34.616493, 27.910440>,  <37.230511, 34.757198, 27.876406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421936, 34.616493, 27.910440>,  <37.740978, 34.381985, 27.967165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421936, 34.616493, 27.910440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309159, -0.599231, -0.738473,
		-0.517920, -0.545171, 0.659202,
		-0.797608, 0.586269, -0.141809,
		37.182655, 34.792374, 27.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096333, 34.006989, 27.849104>,  <37.740978, 34.381985, 27.967165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096333, 34.006989, 27.849104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973228, 34.352631, 27.689806>,  <36.899364, 34.560017, 27.594227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973228, 34.352631, 27.689806>,  <37.096333, 34.006989, 27.849104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973228, 34.352631, 27.689806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460111, -0.501532, -0.732641,
		-0.832814, -0.042242, 0.551939,
		-0.307764, 0.864107, -0.398247,
		36.880898, 34.611862, 27.570332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381596, 33.879604, 27.523098>,  <37.096333, 34.006989, 27.849104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381596, 33.879604, 27.523098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532482, 34.204823, 27.345713>,  <36.623016, 34.399952, 27.239281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532482, 34.204823, 27.345713>,  <36.381596, 33.879604, 27.523098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532482, 34.204823, 27.345713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247979, -0.372684, -0.894211,
		-0.892307, 0.447284, 0.061035,
		0.377220, 0.813046, -0.443466,
		36.645649, 34.448738, 27.212673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225361, 33.749542, 26.844446>,  <36.381596, 33.879604, 27.523098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225361, 33.749542, 26.844446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455311, 34.070126, 26.778498>,  <36.593281, 34.262478, 26.738928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455311, 34.070126, 26.778498>,  <36.225361, 33.749542, 26.844446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455311, 34.070126, 26.778498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167404, -0.082032, -0.982470,
		-0.800936, 0.592395, 0.087010,
		0.574872, 0.801461, -0.164872,
		36.627773, 34.310562, 26.729036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808895, 34.165344, 26.355087>,  <36.225361, 33.749542, 26.844446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808895, 34.165344, 26.355087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193623, 34.267956, 26.316940>,  <36.424461, 34.329521, 26.294052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193623, 34.267956, 26.316940>,  <35.808895, 34.165344, 26.355087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193623, 34.267956, 26.316940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101993, 0.012624, -0.994705,
		-0.253965, 0.966455, 0.038306,
		0.961821, 0.256527, -0.095366,
		36.482170, 34.344913, 26.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791096, 34.711815, 25.883991>,  <35.808895, 34.165344, 26.355087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791096, 34.711815, 25.883991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162758, 34.565472, 25.862740>,  <36.385754, 34.477665, 25.849989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162758, 34.565472, 25.862740>,  <35.791096, 34.711815, 25.883991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162758, 34.565472, 25.862740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098711, -0.107022, -0.989344,
		0.356275, 0.924496, -0.135554,
		0.929152, -0.365860, -0.053129,
		36.441505, 34.455715, 25.846802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377254, 35.307198, 25.461090>,  <35.791096, 34.711815, 25.883991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377254, 35.307198, 25.461090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001350, 35.345394, 25.329798>,  <34.775810, 35.368313, 25.251022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001350, 35.345394, 25.329798>,  <35.377254, 35.307198, 25.461090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001350, 35.345394, 25.329798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265899, 0.399249, 0.877438,
		0.214831, 0.911857, -0.349807,
		-0.939758, 0.095488, -0.328233,
		34.719421, 35.374039, 25.231327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197659, 35.948570, 25.586306>,  <35.377254, 35.307198, 25.461090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197659, 35.948570, 25.586306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846489, 35.757629, 25.571445>,  <34.635788, 35.643066, 25.562529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846489, 35.757629, 25.571445>,  <35.197659, 35.948570, 25.586306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846489, 35.757629, 25.571445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283951, 0.456615, 0.843134,
		-0.385507, 0.750759, -0.536418,
		-0.877927, -0.477351, -0.037150,
		34.583111, 35.614426, 25.560301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642979, 36.442085, 25.646877>,  <35.197659, 35.948570, 25.586306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642979, 36.442085, 25.646877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527260, 36.081226, 25.774899>,  <34.457829, 35.864712, 25.851711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527260, 36.081226, 25.774899>,  <34.642979, 36.442085, 25.646877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527260, 36.081226, 25.774899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247931, 0.393556, 0.885237,
		-0.924576, 0.176742, -0.337524,
		-0.289293, -0.902151, 0.320053,
		34.440472, 35.810581, 25.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975342, 36.573448, 25.890253>,  <34.642979, 36.442085, 25.646877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975342, 36.573448, 25.890253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122543, 36.243767, 26.062422>,  <34.210865, 36.045959, 26.165724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122543, 36.243767, 26.062422>,  <33.975342, 36.573448, 25.890253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122543, 36.243767, 26.062422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321197, 0.321729, 0.890687,
		-0.872584, -0.466030, -0.146332,
		0.368007, -0.824201, 0.430423,
		34.232944, 35.996506, 26.191549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451572, 36.416481, 26.250425>,  <33.975342, 36.573448, 25.890253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451572, 36.416481, 26.250425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741310, 36.215298, 26.439043>,  <33.915154, 36.094589, 26.552214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741310, 36.215298, 26.439043>,  <33.451572, 36.416481, 26.250425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741310, 36.215298, 26.439043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438516, 0.191670, 0.878047,
		-0.532003, -0.842790, -0.081721,
		0.724346, -0.502959, 0.471546,
		33.958614, 36.064411, 26.580507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047665, 36.086464, 26.834734>,  <33.451572, 36.416481, 26.250425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047665, 36.086464, 26.834734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436611, 36.027687, 26.907299>,  <33.669979, 35.992420, 26.950838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436611, 36.027687, 26.907299>,  <33.047665, 36.086464, 26.834734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436611, 36.027687, 26.907299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174887, 0.056275, 0.982979,
		-0.154655, -0.987542, 0.029021,
		0.972366, -0.146947, 0.181411,
		33.728321, 35.983604, 26.961723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015350, 35.548565, 27.334997>,  <33.047665, 36.086464, 26.834734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015350, 35.548565, 27.334997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372356, 35.724216, 27.376152>,  <33.586559, 35.829609, 27.400845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372356, 35.724216, 27.376152>,  <33.015350, 35.548565, 27.334997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372356, 35.724216, 27.376152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106764, -0.015931, 0.994157,
		0.438202, -0.898283, 0.032664,
		0.892513, 0.439129, 0.102885,
		33.640110, 35.855953, 27.407017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275002, 35.127304, 27.945505>,  <33.015350, 35.548565, 27.334997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275002, 35.127304, 27.945505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495129, 35.459328, 27.909391>,  <33.627205, 35.658543, 27.887724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495129, 35.459328, 27.909391>,  <33.275002, 35.127304, 27.945505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495129, 35.459328, 27.909391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118361, 0.184592, 0.975662,
		0.826521, -0.526243, 0.199831,
		0.550322, 0.830057, -0.090283,
		33.660225, 35.708344, 27.882307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775917, 35.156063, 28.460699>,  <33.275002, 35.127304, 27.945505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775917, 35.156063, 28.460699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684883, 35.532780, 28.361719>,  <33.630264, 35.758812, 28.302332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684883, 35.532780, 28.361719>,  <33.775917, 35.156063, 28.460699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684883, 35.532780, 28.361719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121411, 0.224691, 0.966837,
		0.966160, 0.250078, 0.063209,
		-0.227582, 0.941793, -0.247450,
		33.616608, 35.815319, 28.287483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181408, 35.544033, 28.910732>,  <33.775917, 35.156063, 28.460699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181408, 35.544033, 28.910732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937408, 35.839725, 28.796587>,  <33.791008, 36.017143, 28.728100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937408, 35.839725, 28.796587>,  <34.181408, 35.544033, 28.910732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937408, 35.839725, 28.796587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046345, 0.326223, 0.944156,
		0.791044, 0.589161, -0.164737,
		-0.610001, 0.739234, -0.285362,
		33.754410, 36.061497, 28.710978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300140, 36.027626, 29.412647>,  <34.181408, 35.544033, 28.910732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300140, 36.027626, 29.412647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968708, 36.148853, 29.224346>,  <33.769848, 36.221588, 29.111366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968708, 36.148853, 29.224346>,  <34.300140, 36.027626, 29.412647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968708, 36.148853, 29.224346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388010, 0.295311, 0.873063,
		0.403614, 0.906059, -0.127096,
		-0.828580, 0.303066, -0.470752,
		33.720135, 36.239773, 29.083120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253078, 36.544167, 29.719826>,  <34.300140, 36.027626, 29.412647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253078, 36.544167, 29.719826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890869, 36.435974, 29.589066>,  <33.673542, 36.371059, 29.510609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890869, 36.435974, 29.589066>,  <34.253078, 36.544167, 29.719826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890869, 36.435974, 29.589066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401712, 0.298537, 0.865739,
		-0.136573, 0.915268, -0.378988,
		-0.905525, -0.270481, -0.326902,
		33.619213, 36.354832, 29.490995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835300, 37.099838, 29.838602>,  <34.253078, 36.544167, 29.719826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835300, 37.099838, 29.838602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614914, 36.766094, 29.831959>,  <33.482681, 36.565845, 29.827972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614914, 36.766094, 29.831959>,  <33.835300, 37.099838, 29.838602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614914, 36.766094, 29.831959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361470, 0.220661, 0.905896,
		-0.752181, 0.505121, -0.423174,
		-0.550966, -0.834363, -0.016609,
		33.449623, 36.515785, 29.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157364, 37.405357, 30.101496>,  <33.835300, 37.099838, 29.838602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157364, 37.405357, 30.101496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162899, 37.006313, 30.128574>,  <33.166222, 36.766888, 30.144821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162899, 37.006313, 30.128574>,  <33.157364, 37.405357, 30.101496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162899, 37.006313, 30.128574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205832, 0.063411, 0.976531,
		-0.978490, -0.027449, -0.204462,
		0.013840, -0.997610, 0.067697,
		33.167049, 36.707031, 30.148884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072407, 38.092373, 29.994476>,  <33.157364, 37.405357, 30.101496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072407, 38.092373, 29.994476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140179, 38.485516, 29.965418>,  <33.180843, 38.721401, 29.947983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.140179, 38.485516, 29.965418>,  <33.072407, 38.092373, 29.994476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140179, 38.485516, 29.965418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916120, -0.129896, 0.379277,
		0.363340, -0.130814, -0.922427,
		0.169434, 0.982861, -0.072645,
		33.191010, 38.780373, 29.943624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712433, 38.240887, 29.651825>,  <33.072407, 38.092373, 29.994476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712433, 38.240887, 29.651825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589272, 38.492302, 29.937519>,  <33.515373, 38.643150, 30.108934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589272, 38.492302, 29.937519>,  <33.712433, 38.240887, 29.651825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589272, 38.492302, 29.937519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798830, -0.236970, 0.552916,
		0.516782, 0.740797, -0.429133,
		-0.307907, 0.628542, 0.714233,
		33.496899, 38.680866, 30.151789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069992, 38.834488, 29.350037>,  <33.712433, 38.240887, 29.651825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069992, 38.834488, 29.350037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437153, 38.676125, 29.339430>,  <34.657452, 38.581104, 29.333067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437153, 38.676125, 29.339430>,  <34.069992, 38.834488, 29.350037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437153, 38.676125, 29.339430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038445, -0.022227, -0.999014,
		0.394933, 0.918019, -0.035623,
		0.917905, -0.395913, -0.026515,
		34.712524, 38.557350, 29.331474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367561, 39.225471, 28.837009>,  <34.069992, 38.834488, 29.350037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367561, 39.225471, 28.837009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607891, 38.906895, 28.864403>,  <34.752090, 38.715748, 28.880838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607891, 38.906895, 28.864403>,  <34.367561, 39.225471, 28.837009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607891, 38.906895, 28.864403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037333, -0.057618, -0.997640,
		0.798506, 0.601967, -0.004885,
		0.600828, -0.796440, 0.068482,
		34.788139, 38.667961, 28.884947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989784, 39.455547, 28.524534>,  <34.367561, 39.225471, 28.837009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989784, 39.455547, 28.524534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972672, 39.055923, 28.527557>,  <34.962402, 38.816151, 28.529371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972672, 39.055923, 28.527557>,  <34.989784, 39.455547, 28.524534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972672, 39.055923, 28.527557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204863, -0.016178, -0.978657,
		0.977855, -0.040324, 0.205362,
		-0.042786, -0.999056, 0.007559,
		34.959835, 38.756207, 28.529825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578522, 39.288342, 28.190535>,  <34.989784, 39.455547, 28.524534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578522, 39.288342, 28.190535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369591, 38.949413, 28.152115>,  <35.244232, 38.746056, 28.129063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369591, 38.949413, 28.152115>,  <35.578522, 39.288342, 28.190535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369591, 38.949413, 28.152115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304459, -0.080087, -0.949153,
		0.796544, -0.525008, 0.299806,
		-0.522324, -0.847321, -0.096051,
		35.212894, 38.695217, 28.123299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951836, 38.910713, 27.777437>,  <35.578522, 39.288342, 28.190535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951836, 38.910713, 27.777437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590450, 38.742340, 27.745024>,  <35.373619, 38.641315, 27.725576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590450, 38.742340, 27.745024>,  <35.951836, 38.910713, 27.777437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590450, 38.742340, 27.745024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171147, -0.180900, -0.968496,
		0.393013, -0.888871, 0.235478,
		-0.903465, -0.420933, -0.081032,
		35.319412, 38.616062, 27.720715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968193, 38.305058, 27.518402>,  <35.951836, 38.910713, 27.777437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968193, 38.305058, 27.518402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594673, 38.420139, 27.433315>,  <35.370564, 38.489189, 27.382263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594673, 38.420139, 27.433315>,  <35.968193, 38.305058, 27.518402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594673, 38.420139, 27.433315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233899, 0.040944, -0.971398,
		-0.270766, -0.956844, -0.105527,
		-0.933797, 0.287704, -0.212719,
		35.314533, 38.506451, 27.369499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638748, 37.878902, 26.952576>,  <35.968193, 38.305058, 27.518402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638748, 37.878902, 26.952576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408661, 38.205967, 26.943224>,  <35.270607, 38.402206, 26.937613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408661, 38.205967, 26.943224>,  <35.638748, 37.878902, 26.952576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408661, 38.205967, 26.943224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036007, -0.003246, -0.999346,
		-0.817205, -0.575686, -0.027575,
		-0.575221, 0.817664, -0.023381,
		35.236095, 38.451267, 26.936209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113106, 37.704952, 26.494381>,  <35.638748, 37.878902, 26.952576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113106, 37.704952, 26.494381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131985, 38.104404, 26.503365>,  <35.143311, 38.344078, 26.508755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131985, 38.104404, 26.503365>,  <35.113106, 37.704952, 26.494381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131985, 38.104404, 26.503365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019986, 0.023425, -0.999526,
		-0.998686, 0.046723, 0.021064,
		0.047194, 0.998633, 0.022460,
		35.146145, 38.403996, 26.510103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670231, 37.919292, 25.975357>,  <35.113106, 37.704952, 26.494381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670231, 37.919292, 25.975357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877602, 38.256248, 26.034163>,  <35.002022, 38.458424, 26.069447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877602, 38.256248, 26.034163>,  <34.670231, 37.919292, 25.975357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877602, 38.256248, 26.034163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107517, 0.106345, -0.988499,
		-0.848339, 0.528267, -0.035439,
		0.518422, 0.842392, 0.147014,
		35.033127, 38.508965, 26.078266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295097, 38.324085, 25.650745>,  <34.670231, 37.919292, 25.975357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295097, 38.324085, 25.650745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651039, 38.504959, 25.675035>,  <34.864605, 38.613483, 25.689610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651039, 38.504959, 25.675035>,  <34.295097, 38.324085, 25.650745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651039, 38.504959, 25.675035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064871, 0.006350, -0.997873,
		-0.451609, 0.891901, -0.023683,
		0.889854, 0.452185, 0.060726,
		34.917995, 38.640614, 25.693253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309853, 38.932690, 25.210564>,  <34.295097, 38.324085, 25.650745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309853, 38.932690, 25.210564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699116, 38.865799, 25.273815>,  <34.932674, 38.825665, 25.311766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699116, 38.865799, 25.273815>,  <34.309853, 38.932690, 25.210564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699116, 38.865799, 25.273815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166789, 0.038997, -0.985221,
		0.158591, 0.985147, 0.065842,
		0.973155, -0.167229, 0.158127,
		34.991062, 38.815632, 25.321253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657215, 39.524773, 24.846952>,  <34.309853, 38.932690, 25.210564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657215, 39.524773, 24.846952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918987, 39.225540, 24.890947>,  <35.076050, 39.046001, 24.917343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918987, 39.225540, 24.890947>,  <34.657215, 39.524773, 24.846952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918987, 39.225540, 24.890947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316208, 0.138643, -0.938504,
		0.686825, 0.648967, 0.327281,
		0.654434, -0.748077, 0.109986,
		35.115318, 39.001118, 24.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305466, 39.802723, 24.648699>,  <34.657215, 39.524773, 24.846952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305466, 39.802723, 24.648699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344772, 39.406231, 24.613359>,  <35.368359, 39.168335, 24.592155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344772, 39.406231, 24.613359>,  <35.305466, 39.802723, 24.648699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344772, 39.406231, 24.613359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226410, 0.108721, -0.967945,
		0.969062, 0.075118, 0.235109,
		0.098271, -0.991230, -0.088350,
		35.374252, 39.108860, 24.586855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037212, 39.670116, 24.338928>,  <35.305466, 39.802723, 24.648699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037212, 39.670116, 24.338928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835258, 39.330795, 24.275080>,  <35.714085, 39.127205, 24.236771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835258, 39.330795, 24.275080>,  <36.037212, 39.670116, 24.338928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835258, 39.330795, 24.275080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407159, -0.070990, -0.910594,
		0.761125, -0.524738, 0.381235,
		-0.504887, -0.848299, -0.159619,
		35.683792, 39.076305, 24.227194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495232, 39.210842, 24.168842>,  <36.037212, 39.670116, 24.338928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495232, 39.210842, 24.168842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156090, 39.052734, 24.027479>,  <35.952602, 38.957870, 23.942661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156090, 39.052734, 24.027479>,  <36.495232, 39.210842, 24.168842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156090, 39.052734, 24.027479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463770, -0.229766, -0.855643,
		0.257008, -0.889365, 0.378123,
		-0.847859, -0.395269, -0.353408,
		35.901733, 38.934155, 23.921457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711212, 38.710033, 23.727625>,  <36.495232, 39.210842, 24.168842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711212, 38.710033, 23.727625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326027, 38.739056, 23.623753>,  <36.094917, 38.756470, 23.561428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326027, 38.739056, 23.623753>,  <36.711212, 38.710033, 23.727625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326027, 38.739056, 23.623753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243813, -0.176912, -0.953550,
		-0.115125, -0.981549, 0.152671,
		-0.962965, 0.072555, -0.259681,
		36.037136, 38.760822, 23.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426060, 38.065865, 23.342926>,  <36.711212, 38.710033, 23.727625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426060, 38.065865, 23.342926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204758, 38.381451, 23.236012>,  <36.071976, 38.570801, 23.171864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204758, 38.381451, 23.236012>,  <36.426060, 38.065865, 23.342926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204758, 38.381451, 23.236012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184055, -0.197158, -0.962939,
		-0.812423, -0.581948, -0.036134,
		-0.553256, 0.788965, -0.267286,
		36.038780, 38.618141, 23.155825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048656, 37.830299, 22.725826>,  <36.426060, 38.065865, 23.342926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048656, 37.830299, 22.725826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989452, 38.225124, 22.701174>,  <35.953930, 38.462021, 22.686382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989452, 38.225124, 22.701174>,  <36.048656, 37.830299, 22.725826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989452, 38.225124, 22.701174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209970, -0.029535, -0.977262,
		-0.966439, -0.157589, -0.202882,
		-0.148014, 0.987063, -0.061633,
		35.945049, 38.521244, 22.682684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559719, 37.953022, 22.162428>,  <36.048656, 37.830299, 22.725826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559719, 37.953022, 22.162428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787235, 38.278957, 22.207165>,  <35.923744, 38.474518, 22.234007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787235, 38.278957, 22.207165>,  <35.559719, 37.953022, 22.162428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787235, 38.278957, 22.207165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340438, -0.109463, -0.933874,
		-0.748715, 0.569257, -0.339664,
		0.568795, 0.814840, 0.111841,
		35.957874, 38.523411, 22.240717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380531, 38.320549, 21.594921>,  <35.559719, 37.953022, 22.162428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380531, 38.320549, 21.594921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709183, 38.507156, 21.725943>,  <35.906372, 38.619122, 21.804556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709183, 38.507156, 21.725943>,  <35.380531, 38.320549, 21.594921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709183, 38.507156, 21.725943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346458, 0.047612, -0.936856,
		-0.452653, 0.883231, -0.122509,
		0.821627, 0.466515, 0.327554,
		35.955669, 38.647110, 21.824209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370373, 39.039265, 21.313793>,  <35.380531, 38.320549, 21.594921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370373, 39.039265, 21.313793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743904, 38.931656, 21.408104>,  <35.968021, 38.867092, 21.464691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743904, 38.931656, 21.408104>,  <35.370373, 39.039265, 21.313793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743904, 38.931656, 21.408104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287835, 0.173725, -0.941791,
		0.212402, 0.947337, 0.239664,
		0.933829, -0.269022, 0.235777,
		36.024052, 38.850948, 21.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743595, 39.530186, 21.017721>,  <35.370373, 39.039265, 21.313793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743595, 39.530186, 21.017721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024216, 39.254459, 21.090021>,  <36.192589, 39.089024, 21.133402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024216, 39.254459, 21.090021>,  <35.743595, 39.530186, 21.017721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024216, 39.254459, 21.090021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395402, 0.165512, -0.903473,
		0.592864, 0.705299, 0.388672,
		0.701549, -0.689318, 0.180751,
		36.234680, 39.047665, 21.144247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377190, 39.901745, 20.881651>,  <35.743595, 39.530186, 21.017721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377190, 39.901745, 20.881651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433239, 39.507702, 20.841789>,  <36.466869, 39.271275, 20.817871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433239, 39.507702, 20.841789>,  <36.377190, 39.901745, 20.881651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433239, 39.507702, 20.841789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374221, 0.145872, -0.915795,
		0.916692, 0.091027, 0.389087,
		0.140119, -0.985107, -0.099656,
		36.475273, 39.212170, 20.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021805, 39.818249, 20.667742>,  <36.377190, 39.901745, 20.881651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021805, 39.818249, 20.667742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848110, 39.477242, 20.551363>,  <36.743893, 39.272636, 20.481535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848110, 39.477242, 20.551363>,  <37.021805, 39.818249, 20.667742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848110, 39.477242, 20.551363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384593, 0.116613, -0.915691,
		0.814573, -0.509520, 0.277236,
		-0.434234, -0.852520, -0.290948,
		36.717838, 39.221485, 20.464079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530521, 39.457935, 20.227182>,  <37.021805, 39.818249, 20.667742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530521, 39.457935, 20.227182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162155, 39.323048, 20.149004>,  <36.941135, 39.242115, 20.102097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162155, 39.323048, 20.149004>,  <37.530521, 39.457935, 20.227182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162155, 39.323048, 20.149004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217072, -0.027269, -0.975775,
		0.323722, -0.941030, 0.098314,
		-0.920915, -0.337221, -0.195444,
		36.885880, 39.221882, 20.090370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620338, 39.078426, 19.667389>,  <37.530521, 39.457935, 20.227182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620338, 39.078426, 19.667389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221638, 39.046467, 19.663225>,  <36.982418, 39.027290, 19.660727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221638, 39.046467, 19.663225>,  <37.620338, 39.078426, 19.667389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221638, 39.046467, 19.663225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025364, -0.188520, -0.981742,
		0.076476, -0.978814, 0.189934,
		-0.996749, -0.079897, -0.010409,
		36.922611, 39.022499, 19.660103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180687, 38.524002, 19.939178>,  <37.620338, 39.078426, 19.667389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180687, 38.524002, 19.939178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448307, 38.814198, 19.874630>,  <38.608879, 38.988316, 19.835901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448307, 38.814198, 19.874630>,  <38.180687, 38.524002, 19.939178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448307, 38.814198, 19.874630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043484, 0.254964, 0.965972,
		0.741942, -0.639269, 0.202132,
		0.669053, 0.725485, -0.161371,
		38.649021, 39.031841, 19.826220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831066, 38.459007, 20.440987>,  <38.180687, 38.524002, 19.939178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831066, 38.459007, 20.440987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.856976, 38.847523, 20.349415>,  <38.872520, 39.080631, 20.294472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.856976, 38.847523, 20.349415>,  <38.831066, 38.459007, 20.440987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856976, 38.847523, 20.349415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188656, 0.237195, 0.952968,
		0.979905, -0.018537, 0.198603,
		0.064773, 0.971285, -0.228931,
		38.876408, 39.138908, 20.280735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224113, 38.759487, 20.981825>,  <38.831066, 38.459007, 20.440987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224113, 38.759487, 20.981825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067989, 39.089214, 20.817791>,  <38.974316, 39.287048, 20.719372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067989, 39.089214, 20.817791>,  <39.224113, 38.759487, 20.981825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067989, 39.089214, 20.817791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031175, 0.433322, 0.900700,
		0.920157, 0.364333, -0.143430,
		-0.390306, 0.824314, -0.410083,
		38.950897, 39.336510, 20.694767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602581, 39.211548, 21.222918>,  <39.224113, 38.759487, 20.981825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602581, 39.211548, 21.222918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259823, 39.395569, 21.129892>,  <39.054169, 39.505981, 21.074078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259823, 39.395569, 21.129892>,  <39.602581, 39.211548, 21.222918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259823, 39.395569, 21.129892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081916, 0.323895, 0.942540,
		0.508941, 0.826709, -0.239858,
		-0.856895, 0.460049, -0.232564,
		39.002754, 39.533585, 21.060123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677299, 39.701149, 21.651308>,  <39.602581, 39.211548, 21.222918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677299, 39.701149, 21.651308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297279, 39.768230, 21.546021>,  <39.069267, 39.808479, 21.482847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297279, 39.768230, 21.546021>,  <39.677299, 39.701149, 21.651308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297279, 39.768230, 21.546021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234088, 0.174929, 0.956349,
		0.206424, 0.970194, -0.126934,
		-0.950048, 0.167700, -0.263221,
		39.012264, 39.818539, 21.467054>
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
