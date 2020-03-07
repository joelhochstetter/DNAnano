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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.509090, 53.330475, 49.915527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371372, 52.955452, 49.895767>,  <36.288742, 52.730438, 49.883911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371372, 52.955452, 49.895767>,  <36.509090, 53.330475, 49.915527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371372, 52.955452, 49.895767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802490, -0.321191, 0.502838,
		-0.487309, 0.133480, 0.862968,
		-0.344297, -0.937560, -0.049403,
		36.268082, 52.674183, 49.880947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539925, 53.108162, 50.631935>,  <36.509090, 53.330475, 49.915527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539925, 53.108162, 50.631935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546261, 52.810532, 50.364769>,  <36.550060, 52.631954, 50.204472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546261, 52.810532, 50.364769>,  <36.539925, 53.108162, 50.631935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546261, 52.810532, 50.364769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861241, -0.329201, 0.387159,
		-0.507951, -0.581365, 0.635611,
		0.015837, -0.744071, -0.667912,
		36.551010, 52.587311, 50.164394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634029, 52.345020, 50.910629>,  <36.539925, 53.108162, 50.631935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634029, 52.345020, 50.910629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804588, 52.330803, 50.549095>,  <36.906925, 52.322273, 50.332176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804588, 52.330803, 50.549095>,  <36.634029, 52.345020, 50.910629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804588, 52.330803, 50.549095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828455, -0.385771, 0.406008,
		-0.363106, -0.921910, -0.135044,
		0.426399, -0.035546, -0.903836,
		36.932507, 52.320137, 50.277943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947811, 51.678471, 50.844276>,  <36.634029, 52.345020, 50.910629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947811, 51.678471, 50.844276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152943, 51.942375, 50.624557>,  <37.276020, 52.100719, 50.492725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152943, 51.942375, 50.624557>,  <36.947811, 51.678471, 50.844276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152943, 51.942375, 50.624557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858491, -0.394892, 0.327191,
		-0.001044, -0.639355, -0.768911,
		0.512828, 0.659761, -0.549293,
		37.306789, 52.140305, 50.459770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595940, 51.328747, 50.872478>,  <36.947811, 51.678471, 50.844276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595940, 51.328747, 50.872478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691593, 51.651123, 50.655861>,  <37.748985, 51.844547, 50.525890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691593, 51.651123, 50.655861>,  <37.595940, 51.328747, 50.872478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691593, 51.651123, 50.655861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957603, -0.288034, -0.005799,
		-0.160657, -0.517199, -0.840651,
		0.239137, 0.805941, -0.541546,
		37.763332, 51.892906, 50.493397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123642, 50.938297, 50.771320>,  <37.595940, 51.328747, 50.872478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123642, 50.938297, 50.771320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283012, 50.953259, 50.404747>,  <38.378635, 50.962234, 50.184803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283012, 50.953259, 50.404747>,  <38.123642, 50.938297, 50.771320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283012, 50.953259, 50.404747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912316, 0.086817, 0.400177,
		0.094530, -0.995522, 0.000466,
		0.398426, 0.037404, -0.916438,
		38.402542, 50.964478, 50.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568649, 50.300785, 50.629322>,  <38.123642, 50.938297, 50.771320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568649, 50.300785, 50.629322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666176, 50.629501, 50.423325>,  <38.724693, 50.826729, 50.299728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666176, 50.629501, 50.423325>,  <38.568649, 50.300785, 50.629322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666176, 50.629501, 50.423325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848478, 0.076437, 0.523681,
		0.469719, -0.564642, -0.678634,
		0.243819, 0.821789, -0.514990,
		38.739323, 50.876038, 50.268829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311615, 50.322914, 50.549618>,  <38.568649, 50.300785, 50.629322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311615, 50.322914, 50.549618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213985, 50.707703, 50.500576>,  <39.155407, 50.938576, 50.471149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213985, 50.707703, 50.500576>,  <39.311615, 50.322914, 50.549618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213985, 50.707703, 50.500576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782935, 0.270079, 0.560419,
		0.572222, 0.040791, -0.819083,
		-0.244078, 0.961974, -0.122608,
		39.140762, 50.996296, 50.463795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786880, 50.518967, 51.146458>,  <39.311615, 50.322914, 50.549618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786880, 50.518967, 51.146458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401329, 50.590229, 51.225651>,  <39.169998, 50.632988, 51.273167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401329, 50.590229, 51.225651>,  <39.786880, 50.518967, 51.146458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401329, 50.590229, 51.225651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261969, 0.500047, 0.825424,
		0.048054, 0.847475, -0.528656,
		-0.963879, 0.178157, 0.197983,
		39.112164, 50.643677, 51.285046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745338, 51.246437, 51.457722>,  <39.786880, 50.518967, 51.146458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745338, 51.246437, 51.457722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405117, 51.065193, 51.564495>,  <39.200985, 50.956448, 51.628559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405117, 51.065193, 51.564495>,  <39.745338, 51.246437, 51.457722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405117, 51.065193, 51.564495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024982, 0.472201, 0.881137,
		-0.525296, 0.756122, -0.390313,
		-0.850553, -0.453107, 0.266935,
		39.149952, 50.929260, 51.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764313, 51.250172, 52.324360>,  <39.745338, 51.246437, 51.457722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764313, 51.250172, 52.324360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714100, 51.118935, 52.698868>,  <39.683971, 51.040192, 52.923573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714100, 51.118935, 52.698868>,  <39.764313, 51.250172, 52.324360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714100, 51.118935, 52.698868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067196, -0.944377, -0.321927,
		0.989812, 0.022502, 0.140594,
		-0.125530, -0.328094, 0.936267,
		39.676441, 51.020508, 52.979748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420353, 50.933834, 52.433548>,  <39.764313, 51.250172, 52.324360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420353, 50.933834, 52.433548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111214, 50.801853, 52.650375>,  <39.925728, 50.722664, 52.780472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111214, 50.801853, 52.650375>,  <40.420353, 50.933834, 52.433548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111214, 50.801853, 52.650375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133630, -0.919664, -0.369272,
		0.620360, -0.212955, 0.754853,
		-0.772850, -0.329953, 0.542065,
		39.879360, 50.702866, 52.812996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319485, 51.149426, 53.144791>,  <40.420353, 50.933834, 52.433548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319485, 51.149426, 53.144791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255211, 51.541664, 53.099873>,  <40.216648, 51.777008, 53.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255211, 51.541664, 53.099873>,  <40.319485, 51.149426, 53.144791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255211, 51.541664, 53.099873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503256, 0.179271, 0.845337,
		0.849067, 0.079314, -0.522297,
		-0.160680, 0.980597, -0.112298,
		40.207008, 51.835842, 53.066185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993416, 51.448383, 53.194191>,  <40.319485, 51.149426, 53.144791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993416, 51.448383, 53.194191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742924, 51.751308, 53.268288>,  <40.592628, 51.933064, 53.312744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742924, 51.751308, 53.268288>,  <40.993416, 51.448383, 53.194191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742924, 51.751308, 53.268288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658618, 0.386727, 0.645496,
		0.417205, 0.526232, -0.740959,
		-0.626229, 0.757313, 0.185241,
		40.555054, 51.978504, 53.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532681, 51.910740, 52.887497>,  <40.993416, 51.448383, 53.194191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532681, 51.910740, 52.887497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665806, 51.985126, 52.517708>,  <41.745682, 52.029758, 52.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665806, 51.985126, 52.517708>,  <41.532681, 51.910740, 52.887497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665806, 51.985126, 52.517708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875031, -0.426337, 0.229253,
		-0.351505, -0.885242, -0.304615,
		0.332813, 0.185964, -0.924475,
		41.765648, 52.040916, 52.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606834, 51.339756, 52.483433>,  <41.532681, 51.910740, 52.887497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606834, 51.339756, 52.483433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865086, 51.628620, 52.384117>,  <42.020039, 51.801937, 52.324528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865086, 51.628620, 52.384117>,  <41.606834, 51.339756, 52.483433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865086, 51.628620, 52.384117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763648, -0.610187, 0.210982,
		0.000862, -0.325820, -0.945432,
		0.645632, 0.722159, -0.248286,
		42.058777, 51.845268, 52.309631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092411, 50.945839, 52.081654>,  <41.606834, 51.339756, 52.483433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092411, 50.945839, 52.081654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233837, 51.263294, 52.279694>,  <42.318691, 51.453770, 52.398518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233837, 51.263294, 52.279694>,  <42.092411, 50.945839, 52.081654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233837, 51.263294, 52.279694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826863, -0.512647, 0.231281,
		0.437367, 0.327608, -0.837486,
		0.353565, 0.793641, 0.495102,
		42.339905, 51.501385, 52.428223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753075, 51.174339, 51.620998>,  <42.092411, 50.945839, 52.081654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753075, 51.174339, 51.620998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687786, 50.783546, 51.675945>,  <42.648613, 50.549072, 51.708912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687786, 50.783546, 51.675945>,  <42.753075, 51.174339, 51.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687786, 50.783546, 51.675945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802205, -0.050370, 0.594920,
		-0.574306, 0.207298, 0.791960,
		-0.163217, -0.976980, 0.137368,
		42.638821, 50.490452, 51.717155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265873, 51.090260, 52.009697>,  <42.753075, 51.174339, 51.620998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265873, 51.090260, 52.009697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165913, 50.704994, 51.969963>,  <43.105938, 50.473835, 51.946121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165913, 50.704994, 51.969963>,  <43.265873, 51.090260, 52.009697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165913, 50.704994, 51.969963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823791, -0.265400, 0.500930,
		-0.508841, 0.043351, 0.859768,
		-0.249898, -0.963163, -0.099335,
		43.090942, 50.416046, 51.940163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266159, 50.950237, 52.700871>,  <43.265873, 51.090260, 52.009697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266159, 50.950237, 52.700871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329437, 50.636250, 52.461273>,  <43.367405, 50.447857, 52.317513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329437, 50.636250, 52.461273>,  <43.266159, 50.950237, 52.700871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329437, 50.636250, 52.461273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754412, -0.295302, 0.586224,
		-0.637054, -0.544626, 0.545477,
		0.158193, -0.784971, -0.598995,
		43.376896, 50.400757, 52.281574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039017, 50.159817, 52.847557>,  <43.266159, 50.950237, 52.700871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039017, 50.159817, 52.847557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377110, 50.168884, 52.633991>,  <43.579964, 50.174324, 52.505852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377110, 50.168884, 52.633991>,  <43.039017, 50.159817, 52.847557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377110, 50.168884, 52.633991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534359, -0.048024, 0.843893,
		-0.006510, -0.998589, -0.052705,
		0.845233, 0.022670, -0.533917,
		43.630680, 50.175686, 52.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426807, 49.767754, 53.207996>,  <43.039017, 50.159817, 52.847557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426807, 49.767754, 53.207996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688431, 49.950050, 52.966499>,  <43.845406, 50.059429, 52.821602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688431, 49.950050, 52.966499>,  <43.426807, 49.767754, 53.207996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688431, 49.950050, 52.966499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673262, 0.013127, 0.739287,
		0.344852, -0.890014, -0.298250,
		0.654061, 0.455745, -0.603739,
		43.884647, 50.086773, 52.785378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005676, 49.360405, 53.020744>,  <43.426807, 49.767754, 53.207996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005676, 49.360405, 53.020744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025017, 49.757011, 53.069023>,  <44.036621, 49.994976, 53.097988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025017, 49.757011, 53.069023>,  <44.005676, 49.360405, 53.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025017, 49.757011, 53.069023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485733, -0.128925, 0.864547,
		0.872769, 0.016824, -0.487844,
		0.048351, 0.991511, 0.120694,
		44.039520, 50.054466, 53.105232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632656, 49.510101, 53.320061>,  <44.005676, 49.360405, 53.020744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632656, 49.510101, 53.320061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397045, 49.825584, 53.390469>,  <44.255680, 50.014874, 53.432713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397045, 49.825584, 53.390469>,  <44.632656, 49.510101, 53.320061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397045, 49.825584, 53.390469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356788, 0.058380, 0.932359,
		0.725085, 0.611987, -0.315790,
		-0.589028, 0.788710, 0.176019,
		44.220337, 50.062199, 53.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062885, 50.050930, 53.682602>,  <44.632656, 49.510101, 53.320061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062885, 50.050930, 53.682602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675827, 50.103790, 53.768585>,  <44.443592, 50.135506, 53.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675827, 50.103790, 53.768585>,  <45.062885, 50.050930, 53.682602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675827, 50.103790, 53.768585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237355, 0.187603, 0.953136,
		0.085631, 0.973315, -0.212899,
		-0.967642, 0.132150, 0.214956,
		44.385536, 50.143436, 53.833073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216778, 50.432758, 54.293243>,  <45.062885, 50.050930, 53.682602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216778, 50.432758, 54.293243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512295, 50.561264, 54.056271>,  <45.689606, 50.638367, 53.914085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512295, 50.561264, 54.056271>,  <45.216778, 50.432758, 54.293243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512295, 50.561264, 54.056271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351321, 0.566589, 0.745353,
		0.575120, -0.758795, 0.305726,
		0.738791, 0.321259, -0.592437,
		45.733932, 50.657642, 53.878540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674522, 50.491081, 54.774101>,  <45.216778, 50.432758, 54.293243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674522, 50.491081, 54.774101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815952, 50.678017, 54.449982>,  <45.900810, 50.790176, 54.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815952, 50.678017, 54.449982>,  <45.674522, 50.491081, 54.774101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815952, 50.678017, 54.449982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447894, 0.675910, 0.585267,
		0.821204, -0.569862, 0.029667,
		0.353574, 0.467336, -0.810298,
		45.922024, 50.818218, 54.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501080, 50.514481, 54.633003>,  <45.674522, 50.491081, 54.774101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501080, 50.514481, 54.633003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290642, 50.826443, 54.497375>,  <46.164379, 51.013618, 54.415997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290642, 50.826443, 54.497375>,  <46.501080, 50.514481, 54.633003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290642, 50.826443, 54.497375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465953, 0.597885, 0.652244,
		0.711414, 0.185153, -0.677945,
		-0.526098, 0.779905, -0.339071,
		46.132812, 51.060413, 54.395653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904881, 51.013771, 54.281387>,  <46.501080, 50.514481, 54.633003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904881, 51.013771, 54.281387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588150, 51.230976, 54.393215>,  <46.398113, 51.361298, 54.460312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588150, 51.230976, 54.393215>,  <46.904881, 51.013771, 54.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588150, 51.230976, 54.393215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610361, 0.687165, 0.394035,
		0.021853, 0.482645, -0.875543,
		-0.791822, 0.543008, 0.279571,
		46.350605, 51.393879, 54.477085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988537, 51.771950, 53.951225>,  <46.904881, 51.013771, 54.281387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988537, 51.771950, 53.951225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823620, 51.744934, 54.314644>,  <46.724670, 51.728725, 54.532696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823620, 51.744934, 54.314644>,  <46.988537, 51.771950, 53.951225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823620, 51.744934, 54.314644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600647, 0.729669, 0.326813,
		-0.685008, 0.680457, -0.260273,
		-0.412296, -0.067537, 0.908543,
		46.699932, 51.724674, 54.587208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537125, 52.080826, 53.612572>,  <46.988537, 51.771950, 53.951225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537125, 52.080826, 53.612572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647972, 52.313213, 53.918690>,  <47.714481, 52.452648, 54.102360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647972, 52.313213, 53.918690>,  <47.537125, 52.080826, 53.612572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647972, 52.313213, 53.918690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905890, -0.423463, -0.006560,
		0.320262, 0.695090, -0.643647,
		0.277120, 0.580972, 0.765294,
		47.731110, 52.487507, 54.148277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.137722, 52.473171, 53.480591>,  <47.537125, 52.080826, 53.612572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.137722, 52.473171, 53.480591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.100586, 52.416016, 53.874741>,  <48.078304, 52.381721, 54.111229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.100586, 52.416016, 53.874741>,  <48.137722, 52.473171, 53.480591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.100586, 52.416016, 53.874741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895408, -0.444803, 0.019859,
		0.435461, 0.884157, 0.169236,
		-0.092835, -0.142887, 0.985375,
		48.072735, 52.373150, 54.170353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.598976, 52.851418, 53.790924>,  <48.137722, 52.473171, 53.480591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.598976, 52.851418, 53.790924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.501221, 52.525307, 54.000916>,  <48.442566, 52.329639, 54.126911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.501221, 52.525307, 54.000916>,  <48.598976, 52.851418, 53.790924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.501221, 52.525307, 54.000916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941128, -0.329831, -0.074098,
		0.233564, 0.475962, 0.847884,
		-0.244391, -0.815274, 0.524978,
		48.427902, 52.280724, 54.158409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.077576, 52.721992, 54.379005>,  <48.598976, 52.851418, 53.790924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.077576, 52.721992, 54.379005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900372, 52.395515, 54.230644>,  <48.794048, 52.199627, 54.141628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900372, 52.395515, 54.230644>,  <49.077576, 52.721992, 54.379005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.900372, 52.395515, 54.230644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880301, -0.474356, -0.007580,
		-0.169752, -0.329861, 0.928642,
		-0.443007, -0.816197, -0.370900,
		48.767471, 52.150658, 54.119373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.194595, 52.120804, 54.908642>,  <49.077576, 52.721992, 54.379005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.194595, 52.120804, 54.908642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.122715, 52.014874, 54.529678>,  <49.079586, 51.951313, 54.302299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.122715, 52.014874, 54.529678>,  <49.194595, 52.120804, 54.908642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.122715, 52.014874, 54.529678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870270, -0.491802, -0.027591,
		-0.458628, -0.829455, 0.318849,
		-0.179696, -0.264830, -0.947404,
		49.068806, 51.935425, 54.245457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.582268, 51.459545, 54.840874>,  <49.194595, 52.120804, 54.908642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.582268, 51.459545, 54.840874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.441017, 51.572220, 54.484009>,  <49.356266, 51.639824, 54.269890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.441017, 51.572220, 54.484009>,  <49.582268, 51.459545, 54.840874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.441017, 51.572220, 54.484009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722960, -0.523112, -0.451312,
		-0.593829, -0.804369, -0.018922,
		-0.353123, 0.281682, -0.892165,
		49.335079, 51.656723, 54.216358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.287388, 51.637920, 54.792660>,  <49.582268, 51.459545, 54.840874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.287388, 51.637920, 54.792660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.342999, 51.923977, 55.066666>,  <50.376366, 52.095612, 55.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.342999, 51.923977, 55.066666>,  <50.287388, 51.637920, 54.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.342999, 51.923977, 55.066666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976122, 0.017626, -0.216506,
		-0.166906, 0.698759, -0.695614,
		0.139025, 0.715140, 0.685016,
		50.384705, 52.138519, 55.272171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.826073, 52.095245, 54.590263>,  <50.287388, 51.637920, 54.792660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.826073, 52.095245, 54.590263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.816204, 52.107048, 54.989967>,  <50.810284, 52.114128, 55.229790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.816204, 52.107048, 54.989967>,  <50.826073, 52.095245, 54.590263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.816204, 52.107048, 54.989967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978300, -0.204978, 0.030203,
		0.205718, 0.978322, -0.023807,
		-0.024668, 0.029504, 0.999260,
		50.808804, 52.115898, 55.289745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.209625, 52.602623, 54.948563>,  <50.826073, 52.095245, 54.590263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.209625, 52.602623, 54.948563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.198521, 52.281563, 55.186882>,  <51.191856, 52.088924, 55.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.198521, 52.281563, 55.186882>,  <51.209625, 52.602623, 54.948563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.198521, 52.281563, 55.186882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945240, -0.214982, -0.245570,
		0.325194, 0.556355, 0.764668,
		-0.027766, -0.802653, 0.595800,
		51.190189, 52.040768, 55.365623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.722351, 52.946995, 55.389511>,  <51.209625, 52.602623, 54.948563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.722351, 52.946995, 55.389511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.857208, 52.685432, 55.660431>,  <51.938122, 52.528496, 55.822983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.857208, 52.685432, 55.660431>,  <51.722351, 52.946995, 55.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.857208, 52.685432, 55.660431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226134, 0.754606, 0.615981,
		-0.913893, -0.054510, 0.402279,
		0.337140, -0.653910, 0.677302,
		51.958351, 52.489258, 55.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.431839, 53.243221, 55.980854>,  <51.722351, 52.946995, 55.389511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.431839, 53.243221, 55.980854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.785591, 53.060116, 56.017342>,  <51.997841, 52.950253, 56.039234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.785591, 53.060116, 56.017342>,  <51.431839, 53.243221, 55.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.785591, 53.060116, 56.017342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301009, 0.708689, 0.638086,
		-0.356739, -0.536854, 0.764543,
		0.884381, -0.457765, 0.091219,
		52.050907, 52.922787, 56.044708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.601532, 53.254639, 56.759380>,  <51.431839, 53.243221, 55.980854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.601532, 53.254639, 56.759380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.936699, 53.230385, 56.542412>,  <52.137798, 53.215832, 56.412231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.936699, 53.230385, 56.542412>,  <51.601532, 53.254639, 56.759380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.936699, 53.230385, 56.542412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438677, 0.666118, 0.603199,
		0.324742, -0.743377, 0.584750,
		0.837917, -0.060632, -0.542419,
		52.188076, 53.212196, 56.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.033405, 53.157009, 57.363888>,  <51.601532, 53.254639, 56.759380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.033405, 53.157009, 57.363888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.206478, 53.275654, 57.023346>,  <52.310322, 53.346840, 56.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.206478, 53.275654, 57.023346>,  <52.033405, 53.157009, 57.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.206478, 53.275654, 57.023346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575570, 0.635954, 0.514083,
		0.693905, -0.712451, 0.104448,
		0.432684, 0.296607, -0.851357,
		52.336285, 53.364635, 56.767941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.744347, 53.021847, 57.614452>,  <52.033405, 53.157009, 57.363888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.744347, 53.021847, 57.614452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.431736, 53.160782, 57.821747>,  <52.244167, 53.244144, 57.946125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.431736, 53.160782, 57.821747>,  <52.744347, 53.021847, 57.614452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.431736, 53.160782, 57.821747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603009, -0.207556, -0.770260,
		-0.159977, -0.914482, 0.371658,
		-0.781529, 0.347337, 0.518237,
		52.197277, 53.264984, 57.977219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.831650, 53.751884, 57.352718>,  <52.744347, 53.021847, 57.614452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.831650, 53.751884, 57.352718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.948425, 53.669746, 57.726372>,  <53.018490, 53.620464, 57.950565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.948425, 53.669746, 57.726372>,  <52.831650, 53.751884, 57.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.948425, 53.669746, 57.726372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917034, -0.217361, -0.334370,
		0.271704, 0.954248, 0.124849,
		0.291935, -0.205341, 0.934136,
		53.036007, 53.608143, 58.006611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.396633, 54.196320, 57.532005>,  <52.831650, 53.751884, 57.352718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.396633, 54.196320, 57.532005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.425648, 53.851879, 57.733299>,  <53.443058, 53.645214, 57.854076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.425648, 53.851879, 57.733299>,  <53.396633, 54.196320, 57.532005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.425648, 53.851879, 57.733299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942450, -0.105938, -0.317120,
		0.326383, 0.497281, 0.803857,
		0.072538, -0.861097, 0.503239,
		53.447411, 53.593552, 57.884270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.013462, 54.148483, 58.055580>,  <53.396633, 54.196320, 57.532005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.013462, 54.148483, 58.055580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.909397, 53.801846, 57.885246>,  <53.846958, 53.593864, 57.783047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.909397, 53.801846, 57.885246>,  <54.013462, 54.148483, 58.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.909397, 53.801846, 57.885246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953964, -0.162524, -0.252068,
		0.149230, -0.471813, 0.868978,
		-0.260159, -0.866590, -0.425839,
		53.831348, 53.541870, 57.757496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.562958, 53.650749, 58.195179>,  <54.013462, 54.148483, 58.055580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.562958, 53.650749, 58.195179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.347679, 53.523891, 57.882828>,  <54.218513, 53.447777, 57.695419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.347679, 53.523891, 57.882828>,  <54.562958, 53.650749, 58.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.347679, 53.523891, 57.882828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836238, -0.085368, -0.541681,
		0.105128, -0.944528, 0.311151,
		-0.538195, -0.317142, -0.780876,
		54.186222, 53.428749, 57.648563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.151752, 53.457516, 57.840218>,  <54.562958, 53.650749, 58.195179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.151752, 53.457516, 57.840218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.815315, 53.263020, 57.934990>,  <54.613453, 53.146320, 57.991852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.815315, 53.263020, 57.934990>,  <55.151752, 53.457516, 57.840218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.815315, 53.263020, 57.934990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120437, 0.595397, 0.794354,
		-0.527316, 0.639588, -0.559344,
		-0.841090, -0.486241, 0.236932,
		54.562988, 53.117146, 58.006069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.693527, 53.929527, 58.242634>,  <55.151752, 53.457516, 57.840218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.693527, 53.929527, 58.242634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.809990, 54.029072, 58.612129>,  <55.879868, 54.088799, 58.833828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.809990, 54.029072, 58.612129>,  <55.693527, 53.929527, 58.242634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.809990, 54.029072, 58.612129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889779, -0.284285, 0.357036,
		0.351458, -0.925879, 0.138659,
		0.291153, 0.248859, 0.923742,
		55.897335, 54.103729, 58.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.470360, 53.429737, 58.728199>,  <55.693527, 53.929527, 58.242634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.470360, 53.429737, 58.728199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.508926, 53.739296, 58.978569>,  <55.532066, 53.925034, 59.128792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.508926, 53.739296, 58.978569>,  <55.470360, 53.429737, 58.728199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.508926, 53.739296, 58.978569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772167, -0.338652, 0.537655,
		0.628063, -0.535156, 0.564930,
		0.096415, 0.773901, 0.625924,
		55.537849, 53.971466, 59.166348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.137638, 53.163639, 58.844742>,  <55.470360, 53.429737, 58.728199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.137638, 53.163639, 58.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.208504, 52.997856, 58.487679>,  <56.251022, 52.898388, 58.273441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.208504, 52.997856, 58.487679>,  <56.137638, 53.163639, 58.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.208504, 52.997856, 58.487679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789853, 0.600984, -0.122271,
		0.587149, -0.683406, 0.433835,
		0.177166, -0.414457, -0.892657,
		56.261654, 52.873520, 58.219883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.838863, 53.181572, 58.757607>,  <56.137638, 53.163639, 58.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.838863, 53.181572, 58.757607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.690208, 53.128376, 58.390083>,  <56.601017, 53.096458, 58.169571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.690208, 53.128376, 58.390083>,  <56.838863, 53.181572, 58.757607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.690208, 53.128376, 58.390083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843109, 0.365974, -0.393992,
		0.388655, -0.921074, -0.023883,
		-0.371637, -0.132991, -0.918803,
		56.578716, 53.088478, 58.114441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.304710, 52.787510, 58.376919>,  <56.838863, 53.181572, 58.757607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.304710, 52.787510, 58.376919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087822, 53.058666, 58.178337>,  <56.957687, 53.221359, 58.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087822, 53.058666, 58.178337>,  <57.304710, 52.787510, 58.376919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.087822, 53.058666, 58.178337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828964, 0.528039, -0.184374,
		0.137161, -0.511512, -0.848259,
		-0.542223, 0.677887, -0.496451,
		56.925156, 53.262032, 58.029404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.750847, 53.262291, 58.119015>,  <57.304710, 52.787510, 58.376919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.750847, 53.262291, 58.119015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.457100, 53.480377, 57.957298>,  <57.280853, 53.611229, 57.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.457100, 53.480377, 57.957298>,  <57.750847, 53.262291, 58.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.457100, 53.480377, 57.957298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676520, 0.636258, -0.370806,
		0.055068, -0.545819, -0.836092,
		-0.734363, 0.545213, -0.404295,
		57.236790, 53.643940, 57.836010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.985989, 53.530888, 57.447498>,  <57.750847, 53.262291, 58.119015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.985989, 53.530888, 57.447498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.720520, 53.766460, 57.631981>,  <57.561241, 53.907803, 57.742668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.720520, 53.766460, 57.631981>,  <57.985989, 53.530888, 57.447498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.720520, 53.766460, 57.631981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572567, 0.796712, -0.193433,
		-0.481363, 0.135694, -0.865954,
		-0.663669, 0.588928, 0.461202,
		57.521420, 53.943138, 57.770340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.005730, 54.249420, 57.058453>,  <57.985989, 53.530888, 57.447498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.005730, 54.249420, 57.058453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.896988, 54.305672, 57.439255>,  <57.831745, 54.339424, 57.667736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.896988, 54.305672, 57.439255>,  <58.005730, 54.249420, 57.058453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.896988, 54.305672, 57.439255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376238, 0.926058, -0.029361,
		-0.885743, 0.350200, -0.304662,
		-0.271852, 0.140632, 0.952008,
		57.815434, 54.347862, 57.724857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.600342, 54.847809, 57.140587>,  <58.005730, 54.249420, 57.058453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.600342, 54.847809, 57.140587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.810265, 54.776405, 57.473503>,  <57.936218, 54.733562, 57.673252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.810265, 54.776405, 57.473503>,  <57.600342, 54.847809, 57.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.810265, 54.776405, 57.473503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356279, 0.934063, -0.024312,
		-0.773074, 0.309287, 0.553804,
		0.524807, -0.178513, 0.832292,
		57.967709, 54.722851, 57.723190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.574997, 55.521942, 57.523880>,  <57.600342, 54.847809, 57.140587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.574997, 55.521942, 57.523880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.884048, 55.332550, 57.693047>,  <58.069481, 55.218914, 57.794548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.884048, 55.332550, 57.693047>,  <57.574997, 55.521942, 57.523880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.884048, 55.332550, 57.693047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408742, 0.880724, 0.239280,
		-0.485770, -0.012010, 0.874004,
		0.772630, -0.473477, 0.422920,
		58.115837, 55.190506, 57.819923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.013847, 55.923805, 57.965511>,  <57.574997, 55.521942, 57.523880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.013847, 55.923805, 57.965511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306473, 55.651394, 57.978287>,  <58.482048, 55.487949, 57.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306473, 55.651394, 57.978287>,  <58.013847, 55.923805, 57.965511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.306473, 55.651394, 57.978287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681446, 0.731860, -0.003339,
		-0.021100, 0.024207, 0.999484,
		0.731564, -0.681024, 0.031938,
		58.525944, 55.447086, 57.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.383736, 56.177319, 58.533020>,  <58.013847, 55.923805, 57.965511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.383736, 56.177319, 58.533020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.633293, 55.922901, 58.351379>,  <58.783028, 55.770252, 58.242393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.633293, 55.922901, 58.351379>,  <58.383736, 56.177319, 58.533020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.633293, 55.922901, 58.351379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727092, 0.685438, 0.038884,
		0.286528, -0.354434, 0.890100,
		0.623891, -0.636043, -0.454103,
		58.820461, 55.732090, 58.215149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.098568, 56.377304, 58.741432>,  <58.383736, 56.177319, 58.533020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.098568, 56.377304, 58.741432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.133644, 56.173317, 58.399147>,  <59.154690, 56.050922, 58.193775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.133644, 56.173317, 58.399147>,  <59.098568, 56.377304, 58.741432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.133644, 56.173317, 58.399147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707438, 0.636654, -0.306926,
		0.701315, -0.578448, 0.416600,
		0.087690, -0.509970, -0.855711,
		59.159950, 56.020325, 58.142433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.740387, 55.996593, 58.623970>,  <59.098568, 56.377304, 58.741432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.740387, 55.996593, 58.623970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.621147, 56.113209, 58.260399>,  <59.549603, 56.183178, 58.042255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.621147, 56.113209, 58.260399>,  <59.740387, 55.996593, 58.623970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.621147, 56.113209, 58.260399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842550, 0.527882, -0.107007,
		0.448608, -0.797712, -0.402996,
		-0.298095, 0.291540, -0.908924,
		59.531719, 56.200672, 57.987720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.106762, 55.703487, 58.016293>,  <59.740387, 55.996593, 58.623970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.106762, 55.703487, 58.016293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956772, 56.063847, 57.928856>,  <59.866779, 56.280060, 57.876392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956772, 56.063847, 57.928856>,  <60.106762, 55.703487, 58.016293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.956772, 56.063847, 57.928856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921728, 0.387511, 0.015931,
		0.099058, -0.195508, -0.975687,
		-0.374974, 0.900895, -0.218591,
		59.844280, 56.334114, 57.863277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.685886, 55.872066, 58.538635>,  <60.106762, 55.703487, 58.016293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.685886, 55.872066, 58.538635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.683640, 55.844795, 58.937698>,  <60.682289, 55.828430, 59.177135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.683640, 55.844795, 58.937698>,  <60.685886, 55.872066, 58.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.683640, 55.844795, 58.937698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716401, -0.696328, -0.043552,
		0.697666, 0.714478, 0.052757,
		-0.005619, -0.068180, 0.997657,
		60.681953, 55.824341, 59.236996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.381649, 55.649246, 58.551323>,  <60.685886, 55.872066, 58.538635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.381649, 55.649246, 58.551323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.271301, 55.617943, 58.934525>,  <61.205093, 55.599159, 59.164444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.271301, 55.617943, 58.934525>,  <61.381649, 55.649246, 58.551323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.271301, 55.617943, 58.934525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600955, -0.791904, 0.108358,
		0.750167, 0.605610, 0.265494,
		-0.275869, -0.078263, 0.958004,
		61.188541, 55.594463, 59.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.979164, 55.550701, 58.798637>,  <61.381649, 55.649246, 58.551323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.979164, 55.550701, 58.798637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660645, 55.414143, 58.998383>,  <61.469532, 55.332207, 59.118229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660645, 55.414143, 58.998383>,  <61.979164, 55.550701, 58.798637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.660645, 55.414143, 58.998383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439036, -0.894066, 0.088851,
		0.416126, 0.289988, 0.861827,
		-0.796296, -0.341400, 0.499359,
		61.421757, 55.311722, 59.148190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.970016, 54.760643, 58.836769>,  <61.979164, 55.550701, 58.798637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.970016, 54.760643, 58.836769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.320747, 54.952568, 58.849167>,  <62.531185, 55.067722, 58.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.320747, 54.952568, 58.849167>,  <61.970016, 54.760643, 58.836769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.320747, 54.952568, 58.849167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354767, 0.602099, 0.715274,
		0.324534, -0.638166, 0.698156,
		0.876823, 0.479813, 0.030998,
		62.583794, 55.096512, 58.858467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.174393, 54.773403, 59.520836>,  <61.970016, 54.760643, 58.836769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.174393, 54.773403, 59.520836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.332283, 55.068317, 59.301529>,  <62.427017, 55.245266, 59.169945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.332283, 55.068317, 59.301529>,  <62.174393, 54.773403, 59.520836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.332283, 55.068317, 59.301529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300384, 0.667484, 0.681347,
		0.868308, -0.104257, 0.484945,
		0.394728, 0.737289, -0.548264,
		62.450703, 55.289505, 59.137051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.581799, 54.579563, 60.118965>,  <62.174393, 54.773403, 59.520836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.581799, 54.579563, 60.118965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.923782, 54.373802, 60.092346>,  <63.128975, 54.250347, 60.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.923782, 54.373802, 60.092346>,  <62.581799, 54.579563, 60.118965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.923782, 54.373802, 60.092346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313762, 0.410746, 0.856061,
		-0.413027, -0.752780, 0.512573,
		0.854963, -0.514402, -0.066545,
		63.180271, 54.219482, 60.072384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.876579, 54.651806, 60.787109>,  <62.581799, 54.579563, 60.118965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.876579, 54.651806, 60.787109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.155991, 54.471825, 60.564545>,  <63.323639, 54.363834, 60.431007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.155991, 54.471825, 60.564545>,  <62.876579, 54.651806, 60.787109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.155991, 54.471825, 60.564545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709795, 0.337029, 0.618549,
		-0.090791, -0.827015, 0.554800,
		0.698533, -0.449953, -0.556412,
		63.365551, 54.336838, 60.397621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.374046, 54.421391, 61.298985>,  <62.876579, 54.651806, 60.787109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.374046, 54.421391, 61.298985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542908, 54.470585, 60.939728>,  <63.644226, 54.500103, 60.724174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542908, 54.470585, 60.939728>,  <63.374046, 54.421391, 61.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.542908, 54.470585, 60.939728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890253, 0.130622, 0.436334,
		0.170981, -0.983774, -0.054349,
		0.422155, 0.122989, -0.898142,
		63.669556, 54.507481, 60.670284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.823772, 53.926605, 61.111916>,  <63.374046, 54.421391, 61.298985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.823772, 53.926605, 61.111916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.938988, 54.290470, 60.992218>,  <64.008118, 54.508789, 60.920399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.938988, 54.290470, 60.992218>,  <63.823772, 53.926605, 61.111916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.938988, 54.290470, 60.992218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807280, -0.062573, 0.586842,
		0.515104, -0.410606, -0.752376,
		0.288039, 0.909663, -0.299242,
		64.025398, 54.563370, 60.902447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.673683, 53.969566, 60.914925>,  <63.823772, 53.926605, 61.111916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.673683, 53.969566, 60.914925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.518234, 54.323013, 61.019379>,  <64.424965, 54.535080, 61.082050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.518234, 54.323013, 61.019379>,  <64.673683, 53.969566, 60.914925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.518234, 54.323013, 61.019379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767120, 0.153307, 0.622916,
		0.510385, 0.442403, -0.737419,
		-0.388632, 0.883616, 0.261131,
		64.401642, 54.588097, 61.097717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.137733, 54.685844, 60.745544>,  <64.673683, 53.969566, 60.914925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.137733, 54.685844, 60.745544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.915764, 54.717598, 61.076790>,  <64.782585, 54.736649, 61.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.915764, 54.717598, 61.076790>,  <65.137733, 54.685844, 60.745544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.915764, 54.717598, 61.076790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830068, 0.118990, 0.544820,
		-0.055288, 0.989717, -0.131922,
		-0.554915, 0.079382, 0.828111,
		64.749290, 54.741413, 61.325222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.321495, 55.280140, 61.056629>,  <65.137733, 54.685844, 60.745544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.321495, 55.280140, 61.056629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.158562, 55.054832, 61.344185>,  <65.060799, 54.919647, 61.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.158562, 55.054832, 61.344185>,  <65.321495, 55.280140, 61.056629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.158562, 55.054832, 61.344185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779263, 0.196130, 0.595215,
		-0.476261, 0.802662, 0.359041,
		-0.407338, -0.563265, 0.718894,
		65.036362, 54.885853, 61.559853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.099594, 55.705948, 61.628117>,  <65.321495, 55.280140, 61.056629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.099594, 55.705948, 61.628117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.240845, 55.338116, 61.697014>,  <65.325592, 55.117416, 61.738350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.240845, 55.338116, 61.697014>,  <65.099594, 55.705948, 61.628117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.240845, 55.338116, 61.697014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754747, 0.388796, 0.528388,
		-0.552863, -0.056591, 0.831348,
		0.353127, -0.919584, 0.172239,
		65.346786, 55.062241, 61.748684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.253761, 55.595333, 62.319885>,  <65.099594, 55.705948, 61.628117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.253761, 55.595333, 62.319885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.485382, 55.340870, 62.115921>,  <65.624352, 55.188190, 61.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.485382, 55.340870, 62.115921>,  <65.253761, 55.595333, 62.319885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.485382, 55.340870, 62.115921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814838, 0.430624, 0.388075,
		-0.027300, -0.640204, 0.767720,
		0.579046, -0.636162, -0.509906,
		65.659096, 55.150021, 61.962948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.638084, 55.082542, 62.713905>,  <65.253761, 55.595333, 62.319885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.638084, 55.082542, 62.713905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.811989, 55.257511, 62.399033>,  <65.916328, 55.362492, 62.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.811989, 55.257511, 62.399033>,  <65.638084, 55.082542, 62.713905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.811989, 55.257511, 62.399033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727167, 0.345127, 0.593393,
		0.531242, -0.830389, -0.168037,
		0.434753, 0.437426, -0.787177,
		65.942413, 55.388741, 62.162880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.452980, 54.847618, 62.542282>,  <65.638084, 55.082542, 62.713905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.452980, 54.847618, 62.542282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.342430, 55.217487, 62.437515>,  <66.276100, 55.439407, 62.374653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.342430, 55.217487, 62.437515>,  <66.452980, 54.847618, 62.542282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.342430, 55.217487, 62.437515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724839, 0.379507, 0.574963,
		0.631052, -0.030945, -0.775123,
		-0.276372, 0.924671, -0.261919,
		66.259521, 55.494888, 62.358940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.064766, 54.608658, 62.763962>,  <66.452980, 54.847618, 62.542282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.064766, 54.608658, 62.763962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.022339, 54.839321, 63.087990>,  <66.996880, 54.977718, 63.282406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.022339, 54.839321, 63.087990>,  <67.064766, 54.608658, 62.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.022339, 54.839321, 63.087990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220471, 0.780752, -0.584652,
		-0.969609, -0.240611, 0.044322,
		-0.106070, 0.576656, 0.810072,
		66.990517, 55.012318, 63.331013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.507591, 54.520653, 62.092571>,  <67.064766, 54.608658, 62.763962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.507591, 54.520653, 62.092571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.416954, 54.908386, 62.130615>,  <67.362572, 55.141026, 62.153442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.416954, 54.908386, 62.130615>,  <67.507591, 54.520653, 62.092571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.416954, 54.908386, 62.130615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969204, 0.234069, -0.076515,
		-0.096430, 0.074843, -0.992522,
		-0.226592, 0.969335, 0.095109,
		67.348976, 55.199188, 62.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.655807, 54.885864, 61.421371>,  <67.507591, 54.520653, 62.092571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.655807, 54.885864, 61.421371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698387, 55.111031, 61.749222>,  <67.723938, 55.246132, 61.945934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698387, 55.111031, 61.749222>,  <67.655807, 54.885864, 61.421371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.698387, 55.111031, 61.749222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968902, 0.126455, -0.212691,
		-0.223373, 0.816782, -0.531950,
		0.106454, 0.562917, 0.819629,
		67.730324, 55.279907, 61.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.000237, 55.594547, 61.254898>,  <67.655807, 54.885864, 61.421371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.000237, 55.594547, 61.254898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.067154, 55.496861, 61.636971>,  <68.107307, 55.438248, 61.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.067154, 55.496861, 61.636971>,  <68.000237, 55.594547, 61.254898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.067154, 55.496861, 61.636971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975547, 0.181081, -0.124566,
		-0.142544, 0.952664, 0.268537,
		0.167297, -0.244214, 0.955181,
		68.117340, 55.423595, 61.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.336670, 56.169479, 61.572334>,  <68.000237, 55.594547, 61.254898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.336670, 56.169479, 61.572334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441200, 55.849083, 61.787788>,  <68.503914, 55.656845, 61.917061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441200, 55.849083, 61.787788>,  <68.336670, 56.169479, 61.572334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.441200, 55.849083, 61.787788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964228, 0.242321, -0.107443,
		-0.044461, 0.547444, 0.835661,
		0.261317, -0.800991, 0.538635,
		68.519592, 55.608788, 61.949379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.907921, 56.305332, 61.905922>,  <68.336670, 56.169479, 61.572334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.907921, 56.305332, 61.905922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.923851, 55.907494, 61.867584>,  <68.933411, 55.668789, 61.844582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.923851, 55.907494, 61.867584>,  <68.907921, 56.305332, 61.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.923851, 55.907494, 61.867584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984917, 0.055245, -0.163973,
		0.168383, -0.087865, 0.981798,
		0.039832, -0.994599, -0.095842,
		68.935799, 55.609116, 61.838833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.545143, 56.212444, 62.275410>,  <68.907921, 56.305332, 61.905922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.545143, 56.212444, 62.275410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.422081, 55.921867, 62.029602>,  <69.348244, 55.747520, 61.882118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.422081, 55.921867, 62.029602>,  <69.545143, 56.212444, 62.275410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.422081, 55.921867, 62.029602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872895, 0.041566, -0.486134,
		0.378691, -0.685970, 0.621320,
		-0.307647, -0.726442, -0.614520,
		69.329788, 55.703934, 61.845245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.051514, 55.675140, 62.192139>,  <69.545143, 56.212444, 62.275410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.051514, 55.675140, 62.192139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.852760, 55.737621, 61.850677>,  <69.733513, 55.775108, 61.645802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.852760, 55.737621, 61.850677>,  <70.051514, 55.675140, 62.192139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.852760, 55.737621, 61.850677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854915, 0.257131, -0.450561,
		0.149121, -0.953669, -0.261300,
		-0.496874, 0.156201, -0.853649,
		69.703697, 55.784481, 61.594582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.403076, 55.300980, 61.493427>,  <70.051514, 55.675140, 62.192139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.403076, 55.300980, 61.493427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198402, 55.643711, 61.468079>,  <70.075600, 55.849350, 61.452869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198402, 55.643711, 61.468079>,  <70.403076, 55.300980, 61.493427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.198402, 55.643711, 61.468079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692480, 0.367625, -0.620744,
		-0.508576, -0.361510, -0.781448,
		-0.511685, 0.856833, -0.063373,
		70.044899, 55.900761, 61.449066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.163361, 55.470985, 60.796806>,  <70.403076, 55.300980, 61.493427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.163361, 55.470985, 60.796806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.248276, 55.774055, 61.043663>,  <70.299225, 55.955898, 61.191776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.248276, 55.774055, 61.043663>,  <70.163361, 55.470985, 60.796806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.248276, 55.774055, 61.043663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854661, 0.162241, -0.493186,
		-0.473799, 0.632147, -0.613110,
		0.212295, 0.757672, 0.617142,
		70.311966, 56.001358, 61.228806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.447975, 56.033520, 60.340305>,  <70.163361, 55.470985, 60.796806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.447975, 56.033520, 60.340305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.582237, 56.067356, 60.715576>,  <70.662796, 56.087658, 60.940739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.582237, 56.067356, 60.715576>,  <70.447975, 56.033520, 60.340305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.582237, 56.067356, 60.715576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896223, 0.277973, -0.345709,
		-0.290031, 0.956857, 0.017495,
		0.335657, 0.084587, 0.938179,
		70.682938, 56.092731, 60.997028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.901863, 56.536182, 60.419777>,  <70.447975, 56.033520, 60.340305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.901863, 56.536182, 60.419777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.003891, 56.357536, 60.762817>,  <71.065109, 56.250347, 60.968639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.003891, 56.357536, 60.762817>,  <70.901863, 56.536182, 60.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.003891, 56.357536, 60.762817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934036, 0.343158, -0.099093,
		-0.250036, 0.826304, 0.504682,
		0.255066, -0.446614, 0.857599,
		71.080414, 56.223553, 61.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.281845, 56.927090, 60.776566>,  <70.901863, 56.536182, 60.419777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.281845, 56.927090, 60.776566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.400665, 56.552006, 60.848640>,  <71.471954, 56.326958, 60.891884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.400665, 56.552006, 60.848640>,  <71.281845, 56.927090, 60.776566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.400665, 56.552006, 60.848640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929636, 0.240913, -0.278814,
		0.218037, 0.250329, 0.943290,
		0.297046, -0.937708, 0.180187,
		71.489777, 56.270695, 60.902695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.516701, 57.622955, 60.809357>,  <71.281845, 56.927090, 60.776566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.516701, 57.622955, 60.809357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.128403, 57.702652, 60.862984>,  <70.895424, 57.750469, 60.895161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.128403, 57.702652, 60.862984>,  <71.516701, 57.622955, 60.809357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.128403, 57.702652, 60.862984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125441, 0.055385, -0.990554,
		-0.204782, -0.978385, -0.028771,
		-0.970736, 0.199238, 0.134071,
		70.837181, 57.762424, 60.903206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.897972, 57.721821, 61.502304>,  <71.516701, 57.622955, 60.809357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.897972, 57.721821, 61.502304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.004456, 57.927521, 61.176193>,  <72.068344, 58.050941, 60.980526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.004456, 57.927521, 61.176193>,  <71.897972, 57.721821, 61.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.004456, 57.927521, 61.176193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520555, 0.635155, 0.570614,
		0.811265, -0.576303, -0.098606,
		0.266217, 0.514249, -0.815277,
		72.084320, 58.081795, 60.931610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.656670, 57.866173, 61.396347>,  <71.897972, 57.721821, 61.502304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.656670, 57.866173, 61.396347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.451981, 58.182011, 61.260887>,  <72.329170, 58.371513, 61.179611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.451981, 58.182011, 61.260887>,  <72.656670, 57.866173, 61.396347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.451981, 58.182011, 61.260887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704766, 0.611215, 0.360169,
		0.491375, -0.054363, -0.869250,
		-0.511719, 0.789596, -0.338648,
		72.298462, 58.418888, 61.159294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.063240, 58.153934, 60.847767>,  <72.656670, 57.866173, 61.396347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.063240, 58.153934, 60.847767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.899666, 58.482418, 61.006958>,  <72.801521, 58.679508, 61.102474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.899666, 58.482418, 61.006958>,  <73.063240, 58.153934, 60.847767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.899666, 58.482418, 61.006958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912339, 0.358266, 0.198198,
		0.020180, 0.444141, -0.895729,
		-0.408937, 0.821209, 0.397978,
		72.776985, 58.728779, 61.126350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.345131, 58.655834, 60.470783>,  <73.063240, 58.153934, 60.847767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.345131, 58.655834, 60.470783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.253891, 58.757835, 60.846642>,  <73.199142, 58.819035, 61.072159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.253891, 58.757835, 60.846642>,  <73.345131, 58.655834, 60.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.253891, 58.757835, 60.846642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929815, 0.343332, 0.132544,
		-0.288813, 0.903934, -0.315420,
		-0.228104, 0.255002, 0.939650,
		73.185463, 58.834335, 61.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.037415, 58.165592, 60.061787>,  <73.345131, 58.655834, 60.470783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.037415, 58.165592, 60.061787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.378647, 57.973862, 60.144234>,  <73.583389, 57.858826, 60.193703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.378647, 57.973862, 60.144234>,  <73.037415, 58.165592, 60.061787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.378647, 57.973862, 60.144234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511895, -0.692405, 0.508467,
		-0.101002, -0.539280, -0.836048,
		0.853090, -0.479325, 0.206120,
		73.634575, 57.830063, 60.206070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.950638, 57.418388, 59.960537>,  <73.037415, 58.165592, 60.061787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.950638, 57.418388, 59.960537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.258446, 57.437283, 60.215286>,  <73.443130, 57.448620, 60.368137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.258446, 57.437283, 60.215286>,  <72.950638, 57.418388, 59.960537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.258446, 57.437283, 60.215286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319472, -0.835034, 0.447946,
		0.552970, -0.548167, -0.627485,
		0.769520, 0.047237, 0.636873,
		73.489304, 57.451454, 60.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
