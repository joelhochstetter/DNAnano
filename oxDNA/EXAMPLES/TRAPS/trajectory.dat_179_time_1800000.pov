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
	<36.292953, 53.331142, 50.052727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533039, 53.468868, 49.763950>,  <36.677090, 53.551502, 49.590687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533039, 53.468868, 49.763950>,  <36.292953, 53.331142, 50.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533039, 53.468868, 49.763950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092789, 0.926482, 0.364721,
		0.794439, -0.151923, 0.588036,
		0.600214, 0.344312, -0.721936,
		36.713104, 53.572163, 49.547371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922085, 53.734592, 50.315414>,  <36.292953, 53.331142, 50.052727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922085, 53.734592, 50.315414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815910, 53.842426, 49.945145>,  <36.752205, 53.907127, 49.722984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815910, 53.842426, 49.945145>,  <36.922085, 53.734592, 50.315414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815910, 53.842426, 49.945145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087452, 0.949423, 0.301574,
		0.960154, 0.161000, -0.228437,
		-0.265437, 0.269580, -0.925673,
		36.736279, 53.923302, 49.667442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089161, 54.417057, 50.339886>,  <36.922085, 53.734592, 50.315414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089161, 54.417057, 50.339886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838100, 54.407509, 50.028633>,  <36.687466, 54.401779, 49.841881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838100, 54.407509, 50.028633>,  <37.089161, 54.417057, 50.339886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838100, 54.407509, 50.028633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405675, 0.863124, 0.300742,
		0.664444, 0.504428, -0.551423,
		-0.627649, -0.023872, -0.778131,
		36.649807, 54.400349, 49.795193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981575, 55.102020, 50.131889>,  <37.089161, 54.417057, 50.339886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981575, 55.102020, 50.131889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645603, 54.944984, 49.982014>,  <36.444019, 54.850761, 49.892086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645603, 54.944984, 49.982014>,  <36.981575, 55.102020, 50.131889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645603, 54.944984, 49.982014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526894, 0.755316, 0.389718,
		0.130013, 0.524759, -0.841264,
		-0.839928, -0.392589, -0.374693,
		36.393623, 54.827209, 49.869606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603493, 55.389633, 50.781940>,  <36.981575, 55.102020, 50.131889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603493, 55.389633, 50.781940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258846, 55.539005, 50.644432>,  <36.052059, 55.628628, 50.561928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258846, 55.539005, 50.644432>,  <36.603493, 55.389633, 50.781940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258846, 55.539005, 50.644432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507444, 0.618845, -0.599609,
		-0.011171, -0.691074, -0.722698,
		-0.861612, 0.373427, -0.343768,
		36.000362, 55.651035, 50.541302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165726, 55.684357, 50.569172>,  <36.603493, 55.389633, 50.781940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165726, 55.684357, 50.569172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308937, 55.333038, 50.442417>,  <37.394863, 55.122250, 50.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308937, 55.333038, 50.442417>,  <37.165726, 55.684357, 50.569172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308937, 55.333038, 50.442417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644693, 0.478032, -0.596536,
		0.675414, 0.009285, 0.737380,
		0.358030, -0.878293, -0.316884,
		37.416348, 55.069550, 50.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918598, 55.729862, 50.770958>,  <37.165726, 55.684357, 50.569172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918598, 55.729862, 50.770958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854290, 55.462837, 50.480164>,  <37.815704, 55.302620, 50.305687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854290, 55.462837, 50.480164>,  <37.918598, 55.729862, 50.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854290, 55.462837, 50.480164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668280, 0.468417, -0.577916,
		0.726330, -0.578740, 0.370816,
		-0.160766, -0.667567, -0.726986,
		37.806061, 55.262566, 50.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538609, 55.302475, 50.518700>,  <37.918598, 55.729862, 50.770958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538609, 55.302475, 50.518700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268417, 55.393452, 50.238129>,  <38.106300, 55.448036, 50.069786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268417, 55.393452, 50.238129>,  <38.538609, 55.302475, 50.518700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268417, 55.393452, 50.238129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627337, 0.677175, -0.384555,
		0.387525, -0.699789, -0.600100,
		-0.675480, 0.227440, -0.701425,
		38.065773, 55.461685, 50.027702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990959, 54.996540, 51.014149>,  <38.538609, 55.302475, 50.518700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990959, 54.996540, 51.014149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905655, 55.009758, 51.404724>,  <38.854473, 55.017689, 51.639069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905655, 55.009758, 51.404724>,  <38.990959, 54.996540, 51.014149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905655, 55.009758, 51.404724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789813, 0.582452, -0.192210,
		-0.575078, -0.812193, -0.098117,
		-0.213261, 0.033042, 0.976436,
		38.841675, 55.019669, 51.697655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541660, 55.401314, 50.620495>,  <38.990959, 54.996540, 51.014149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541660, 55.401314, 50.620495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571259, 55.512722, 51.003525>,  <39.589020, 55.579567, 51.233345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571259, 55.512722, 51.003525>,  <39.541660, 55.401314, 50.620495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571259, 55.512722, 51.003525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634584, -0.753874, 0.170229,
		0.769303, 0.595065, -0.232528,
		0.074000, 0.278516, 0.957576,
		39.593460, 55.596275, 51.290798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128239, 55.434654, 51.106861>,  <39.541660, 55.401314, 50.620495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128239, 55.434654, 51.106861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447330, 55.575775, 50.911247>,  <40.638786, 55.660450, 50.793877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447330, 55.575775, 50.911247>,  <40.128239, 55.434654, 51.106861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447330, 55.575775, 50.911247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601518, 0.408383, -0.686585,
		-0.042517, 0.841873, 0.537998,
		0.797727, 0.352807, -0.489039,
		40.686649, 55.681618, 50.764534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208462, 56.222298, 50.942272>,  <40.128239, 55.434654, 51.106861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208462, 56.222298, 50.942272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333954, 55.989826, 50.641922>,  <40.409248, 55.850342, 50.461712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333954, 55.989826, 50.641922>,  <40.208462, 56.222298, 50.942272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333954, 55.989826, 50.641922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749640, 0.333748, -0.571535,
		0.582765, 0.742189, -0.330968,
		0.313727, -0.581177, -0.750871,
		40.428074, 55.815472, 50.416660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406368, 56.573311, 50.354538>,  <40.208462, 56.222298, 50.942272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406368, 56.573311, 50.354538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434532, 56.943279, 50.503967>,  <40.451431, 57.165260, 50.593624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434532, 56.943279, 50.503967>,  <40.406368, 56.573311, 50.354538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434532, 56.943279, 50.503967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771712, 0.186792, -0.607923,
		-0.632063, 0.331096, -0.700622,
		0.070410, 0.924924, 0.373575,
		40.455654, 57.220757, 50.616039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592148, 56.991516, 49.826153>,  <40.406368, 56.573311, 50.354538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592148, 56.991516, 49.826153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678741, 57.200348, 50.156139>,  <40.730698, 57.325645, 50.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678741, 57.200348, 50.156139>,  <40.592148, 56.991516, 49.826153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678741, 57.200348, 50.156139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645097, 0.557757, -0.522261,
		-0.732792, 0.645243, -0.216047,
		0.216483, 0.522080, 0.824965,
		40.743687, 57.356972, 50.403629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288158, 57.190689, 49.790020>,  <40.592148, 56.991516, 49.826153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288158, 57.190689, 49.790020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652901, 57.060841, 49.890533>,  <41.871746, 56.982933, 49.950840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652901, 57.060841, 49.890533>,  <41.288158, 57.190689, 49.790020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652901, 57.060841, 49.890533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407404, 0.790791, -0.456807,
		-0.050426, 0.518916, 0.853337,
		0.911855, -0.324618, 0.251284,
		41.926456, 56.963455, 49.965919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754692, 57.417572, 50.372707>,  <41.288158, 57.190689, 49.790020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754692, 57.417572, 50.372707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925343, 57.324486, 50.023117>,  <42.027733, 57.268635, 49.813362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925343, 57.324486, 50.023117>,  <41.754692, 57.417572, 50.372707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925343, 57.324486, 50.023117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162035, 0.970361, -0.179288,
		0.889793, -0.065125, 0.451695,
		0.426631, -0.232719, -0.873972,
		42.053333, 57.254669, 49.760925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512814, 57.694447, 50.304794>,  <41.754692, 57.417572, 50.372707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512814, 57.694447, 50.304794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343090, 57.699215, 49.942619>,  <42.241257, 57.702076, 49.725315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343090, 57.699215, 49.942619>,  <42.512814, 57.694447, 50.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343090, 57.699215, 49.942619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350165, 0.924286, -0.151923,
		0.835074, -0.381515, -0.396356,
		-0.424307, 0.011923, -0.905440,
		42.215797, 57.702793, 49.670986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922424, 58.358593, 50.053486>,  <42.512814, 57.694447, 50.304794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922424, 58.358593, 50.053486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101620, 58.338081, 50.410511>,  <43.209137, 58.325775, 50.624725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101620, 58.338081, 50.410511>,  <42.922424, 58.358593, 50.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101620, 58.338081, 50.410511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385436, -0.889731, -0.244577,
		0.806686, 0.453595, -0.378826,
		0.447992, -0.051284, 0.892566,
		43.236019, 58.322697, 50.678280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668705, 58.137650, 50.059040>,  <42.922424, 58.358593, 50.053486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668705, 58.137650, 50.059040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507435, 58.031738, 50.409431>,  <43.410675, 57.968193, 50.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507435, 58.031738, 50.409431>,  <43.668705, 58.137650, 50.059040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507435, 58.031738, 50.409431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524146, -0.851476, -0.016132,
		0.750150, 0.452638, 0.482073,
		-0.403171, -0.264778, 0.875983,
		43.386482, 57.952305, 50.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160690, 57.766285, 50.456741>,  <43.668705, 58.137650, 50.059040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160690, 57.766285, 50.456741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861046, 57.590012, 50.654583>,  <43.681259, 57.484249, 50.773289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861046, 57.590012, 50.654583>,  <44.160690, 57.766285, 50.456741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861046, 57.590012, 50.654583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641373, -0.669289, 0.375090,
		0.165735, 0.598208, 0.784014,
		-0.749115, -0.440680, 0.494599,
		43.636311, 57.457809, 50.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311707, 57.750164, 51.238777>,  <44.160690, 57.766285, 50.456741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311707, 57.750164, 51.238777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086334, 57.448254, 51.104397>,  <43.951111, 57.267109, 51.023769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086334, 57.448254, 51.104397>,  <44.311707, 57.750164, 51.238777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086334, 57.448254, 51.104397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576549, -0.650466, 0.494454,
		-0.591725, 0.084900, 0.801657,
		-0.563430, -0.754775, -0.335948,
		43.917305, 57.221821, 51.003613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027733, 57.229202, 51.705711>,  <44.311707, 57.750164, 51.238777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027733, 57.229202, 51.705711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153912, 57.112961, 51.344372>,  <44.229618, 57.043217, 51.127567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153912, 57.112961, 51.344372>,  <44.027733, 57.229202, 51.705711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153912, 57.112961, 51.344372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736004, -0.525966, 0.426214,
		-0.598991, -0.799318, 0.047970,
		0.315450, -0.290605, -0.903350,
		44.248547, 57.025780, 51.073368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006702, 56.448288, 51.605923>,  <44.027733, 57.229202, 51.705711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006702, 56.448288, 51.605923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282425, 56.639732, 51.388382>,  <44.447861, 56.754601, 51.257858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282425, 56.639732, 51.388382>,  <44.006702, 56.448288, 51.605923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282425, 56.639732, 51.388382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724461, -0.452255, 0.520214,
		0.003021, -0.752590, -0.658482,
		0.689309, 0.478616, -0.543856,
		44.489220, 56.783318, 51.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394627, 55.920570, 51.144905>,  <44.006702, 56.448288, 51.605923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394627, 55.920570, 51.144905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590542, 56.242069, 51.280025>,  <44.708092, 56.434967, 51.361095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590542, 56.242069, 51.280025>,  <44.394627, 55.920570, 51.144905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590542, 56.242069, 51.280025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638675, -0.594511, 0.488519,
		0.593469, -0.023525, -0.804513,
		0.489784, 0.803743, 0.337799,
		44.737476, 56.483192, 51.381367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114208, 55.938492, 50.944309>,  <44.394627, 55.920570, 51.144905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114208, 55.938492, 50.944309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044682, 56.095684, 51.305496>,  <45.002968, 56.189999, 51.522209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044682, 56.095684, 51.305496>,  <45.114208, 55.938492, 50.944309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044682, 56.095684, 51.305496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631907, -0.658754, 0.408334,
		0.755303, 0.641566, -0.133830,
		-0.173812, 0.392984, 0.902969,
		44.992538, 56.213581, 51.576385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694080, 56.348202, 50.994747>,  <45.114208, 55.938492, 50.944309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694080, 56.348202, 50.994747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650208, 56.362427, 50.597416>,  <45.623882, 56.370960, 50.359016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650208, 56.362427, 50.597416>,  <45.694080, 56.348202, 50.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650208, 56.362427, 50.597416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987044, -0.113842, -0.113063,
		-0.117103, -0.992862, -0.022612,
		-0.109682, 0.035559, -0.993330,
		45.617302, 56.373096, 50.299416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009537, 55.689453, 50.734264>,  <45.694080, 56.348202, 50.994747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009537, 55.689453, 50.734264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995140, 56.003761, 50.487274>,  <45.986504, 56.192345, 50.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995140, 56.003761, 50.487274>,  <46.009537, 55.689453, 50.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995140, 56.003761, 50.487274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949675, -0.165494, -0.265948,
		-0.311162, -0.595970, -0.740269,
		-0.035987, 0.785768, -0.617474,
		45.984344, 56.239491, 50.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061745, 55.515213, 50.029121>,  <46.009537, 55.689453, 50.734264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061745, 55.515213, 50.029121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243832, 55.847813, 50.156483>,  <46.353085, 56.047375, 50.232899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243832, 55.847813, 50.156483>,  <46.061745, 55.515213, 50.029121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243832, 55.847813, 50.156483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890186, -0.432486, -0.143270,
		0.018574, 0.348654, -0.937068,
		0.455220, 0.831503, 0.318400,
		46.380398, 56.097263, 50.252003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562634, 55.693012, 49.550827>,  <46.061745, 55.515213, 50.029121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562634, 55.693012, 49.550827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728260, 55.829826, 49.888245>,  <46.827637, 55.911915, 50.090694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728260, 55.829826, 49.888245>,  <46.562634, 55.693012, 49.550827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728260, 55.829826, 49.888245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884757, -0.369006, -0.284673,
		0.213905, 0.864203, -0.455409,
		0.414064, 0.342034, 0.843543,
		46.852478, 55.932438, 50.141308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239326, 56.168221, 49.535191>,  <46.562634, 55.693012, 49.550827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239326, 56.168221, 49.535191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191986, 55.931004, 49.853760>,  <47.163582, 55.788673, 50.044903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191986, 55.931004, 49.853760>,  <47.239326, 56.168221, 49.535191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.191986, 55.931004, 49.853760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887434, -0.423006, -0.183106,
		0.445483, 0.685105, 0.576347,
		-0.118352, -0.593040, 0.796427,
		47.156479, 55.753090, 50.092690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.787033, 56.167454, 49.955406>,  <47.239326, 56.168221, 49.535191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.787033, 56.167454, 49.955406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619968, 55.812008, 50.031212>,  <47.519730, 55.598740, 50.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619968, 55.812008, 50.031212>,  <47.787033, 56.167454, 49.955406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619968, 55.812008, 50.031212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908033, -0.400831, 0.121701,
		-0.032183, 0.222915, 0.974307,
		-0.417661, -0.888619, 0.189514,
		47.494671, 55.545422, 50.088066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.015282, 55.775429, 50.564682>,  <47.787033, 56.167454, 49.955406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.015282, 55.775429, 50.564682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.883186, 55.511784, 50.294418>,  <47.803928, 55.353596, 50.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.883186, 55.511784, 50.294418>,  <48.015282, 55.775429, 50.564682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.883186, 55.511784, 50.294418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902258, -0.430692, -0.020854,
		-0.277255, -0.616505, 0.736920,
		-0.330243, -0.659110, -0.675658,
		47.784115, 55.314049, 50.091721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.306118, 55.049023, 50.637535>,  <48.015282, 55.775429, 50.564682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.306118, 55.049023, 50.637535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.623493, 55.277195, 50.722450>,  <48.813919, 55.414097, 50.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.623493, 55.277195, 50.722450>,  <48.306118, 55.049023, 50.637535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.623493, 55.277195, 50.722450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541850, -0.503141, -0.673237,
		-0.277226, 0.649199, -0.708298,
		0.793439, 0.570430, 0.212285,
		48.861526, 55.448322, 50.786137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.592560, 55.287495, 50.011520>,  <48.306118, 55.049023, 50.637535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.592560, 55.287495, 50.011520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.896698, 55.285095, 50.271317>,  <49.079182, 55.283657, 50.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.896698, 55.285095, 50.271317>,  <48.592560, 55.287495, 50.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.896698, 55.285095, 50.271317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541270, -0.546889, -0.638701,
		0.359029, 0.837184, -0.412579,
		0.760345, -0.005996, 0.649491,
		49.124802, 55.283295, 50.466164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.248058, 55.570751, 49.727455>,  <48.592560, 55.287495, 50.011520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.248058, 55.570751, 49.727455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.269440, 55.264614, 49.984016>,  <49.282269, 55.080933, 50.137955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.269440, 55.264614, 49.984016>,  <49.248058, 55.570751, 49.727455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.269440, 55.264614, 49.984016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391372, -0.574875, -0.718573,
		0.918679, 0.289441, 0.268800,
		0.053458, -0.765339, 0.641404,
		49.285477, 55.035011, 50.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.998436, 55.247299, 49.703419>,  <49.248058, 55.570751, 49.727455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.998436, 55.247299, 49.703419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.740437, 54.993538, 49.873833>,  <49.585636, 54.841282, 49.976082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.740437, 54.993538, 49.873833>,  <49.998436, 55.247299, 49.703419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.740437, 54.993538, 49.873833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508188, -0.772452, -0.380871,
		0.570715, -0.029159, 0.820630,
		-0.645003, -0.634404, 0.426032,
		49.546936, 54.803215, 50.001640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.480183, 54.698837, 49.841354>,  <49.998436, 55.247299, 49.703419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.480183, 54.698837, 49.841354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.131855, 54.509254, 49.893559>,  <49.922859, 54.395504, 49.924881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.131855, 54.509254, 49.893559>,  <50.480183, 54.698837, 49.841354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.131855, 54.509254, 49.893559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461494, -0.879637, -0.115163,
		0.169386, -0.040056, 0.984735,
		-0.870823, -0.473956, 0.130513,
		49.870609, 54.367069, 49.932713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.513012, 54.069744, 50.404995>,  <50.480183, 54.698837, 49.841354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.513012, 54.069744, 50.404995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.252010, 54.040203, 50.103325>,  <50.095409, 54.022480, 49.922321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.252010, 54.040203, 50.103325>,  <50.513012, 54.069744, 50.404995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.252010, 54.040203, 50.103325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568488, -0.705772, -0.422738,
		-0.501060, -0.704579, 0.502500,
		-0.652503, -0.073848, -0.754179,
		50.056259, 54.018047, 49.877071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.337799, 53.365250, 50.332790>,  <50.513012, 54.069744, 50.404995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.337799, 53.365250, 50.332790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.321808, 53.543716, 49.975166>,  <50.312214, 53.650795, 49.760593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.321808, 53.543716, 49.975166>,  <50.337799, 53.365250, 50.332790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.321808, 53.543716, 49.975166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764001, -0.563022, -0.315131,
		-0.643974, -0.695660, -0.318362,
		-0.039979, 0.446165, -0.894057,
		50.309814, 53.677567, 49.706947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.297279, 52.895527, 49.867218>,  <50.337799, 53.365250, 50.332790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.297279, 52.895527, 49.867218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.491280, 53.209953, 49.713924>,  <50.607681, 53.398609, 49.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.491280, 53.209953, 49.713924>,  <50.297279, 52.895527, 49.867218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.491280, 53.209953, 49.713924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809239, -0.569539, -0.144077,
		-0.331522, -0.240251, -0.912345,
		0.485001, 0.786069, -0.383235,
		50.636780, 53.445774, 49.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.818333, 52.538124, 49.286171>,  <50.297279, 52.895527, 49.867218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.818333, 52.538124, 49.286171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943886, 52.905350, 49.383026>,  <51.019218, 53.125687, 49.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943886, 52.905350, 49.383026>,  <50.818333, 52.538124, 49.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.943886, 52.905350, 49.383026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937508, -0.340026, 0.073902,
		0.150179, 0.203807, -0.967424,
		0.313887, 0.918066, 0.242135,
		51.038052, 53.180771, 49.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.292374, 52.843323, 48.737915>,  <50.818333, 52.538124, 49.286171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.292374, 52.843323, 48.737915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.379948, 53.030514, 49.080391>,  <51.432491, 53.142830, 49.285877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.379948, 53.030514, 49.080391>,  <51.292374, 52.843323, 48.737915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.379948, 53.030514, 49.080391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900013, -0.435789, 0.008059,
		0.376890, 0.768818, -0.516597,
		0.218931, 0.467981, 0.856191,
		51.445625, 53.170910, 49.337250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.967651, 53.165123, 48.711372>,  <51.292374, 52.843323, 48.737915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.967651, 53.165123, 48.711372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.927731, 53.164978, 49.109375>,  <51.903778, 53.164890, 49.348175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.927731, 53.164978, 49.109375>,  <51.967651, 53.165123, 48.711372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.927731, 53.164978, 49.109375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816623, -0.571360, 0.081705,
		0.568477, 0.820700, 0.057318,
		-0.099804, -0.000360, 0.995007,
		51.897789, 53.164871, 49.407879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.559170, 53.254250, 49.021420>,  <51.967651, 53.165123, 48.711372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.559170, 53.254250, 49.021420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.358551, 53.104038, 49.333172>,  <52.238178, 53.013912, 49.520222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.358551, 53.104038, 49.333172>,  <52.559170, 53.254250, 49.021420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.358551, 53.104038, 49.333172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745691, -0.644405, 0.169373,
		0.438631, 0.666124, 0.603227,
		-0.501546, -0.375528, 0.779378,
		52.208088, 52.991379, 49.566986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.084187, 53.403145, 49.509918>,  <52.559170, 53.254250, 49.021420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.084187, 53.403145, 49.509918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.891445, 53.076832, 49.637867>,  <52.775799, 52.881042, 49.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.891445, 53.076832, 49.637867>,  <53.084187, 53.403145, 49.509918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.891445, 53.076832, 49.637867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830405, -0.308595, 0.463894,
		-0.279725, 0.489152, 0.826127,
		-0.481853, -0.815782, 0.319872,
		52.746891, 52.832096, 49.733829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.041111, 53.330254, 50.260368>,  <53.084187, 53.403145, 49.509918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.041111, 53.330254, 50.260368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.057552, 52.979073, 50.069576>,  <53.067417, 52.768364, 49.955101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.057552, 52.979073, 50.069576>,  <53.041111, 53.330254, 50.260368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.057552, 52.979073, 50.069576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886320, -0.188338, 0.423043,
		-0.461245, -0.440145, 0.770406,
		0.041103, -0.877953, -0.476979,
		53.069881, 52.715687, 49.926483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.926598, 54.065884, 50.256081>,  <53.041111, 53.330254, 50.260368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.926598, 54.065884, 50.256081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.305340, 53.996578, 50.147675>,  <53.532585, 53.954994, 50.082630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.305340, 53.996578, 50.147675>,  <52.926598, 54.065884, 50.256081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.305340, 53.996578, 50.147675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188421, 0.981608, 0.030722,
		0.260711, -0.080154, 0.962084,
		0.946851, -0.173267, -0.271019,
		53.589394, 53.944599, 50.066368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.472466, 54.258286, 50.758492>,  <52.926598, 54.065884, 50.256081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.472466, 54.258286, 50.758492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.625755, 54.277351, 50.389523>,  <53.717728, 54.288792, 50.168140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.625755, 54.277351, 50.389523>,  <53.472466, 54.258286, 50.758492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.625755, 54.277351, 50.389523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504331, 0.825860, 0.252203,
		0.773814, -0.561857, 0.292452,
		0.383227, 0.047666, -0.922423,
		53.740723, 54.291653, 50.112797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.770737, 54.912750, 50.717247>,  <53.472466, 54.258286, 50.758492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.770737, 54.912750, 50.717247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877140, 54.795036, 50.350067>,  <53.940983, 54.724407, 50.129757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877140, 54.795036, 50.350067>,  <53.770737, 54.912750, 50.717247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.877140, 54.795036, 50.350067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652335, 0.756051, -0.053347,
		0.709719, -0.584622, 0.393085,
		0.266005, -0.294284, -0.917953,
		53.956940, 54.706753, 50.074680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.957653, 54.805218, 51.484787>,  <53.770737, 54.912750, 50.717247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.957653, 54.805218, 51.484787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.288803, 55.023640, 51.536076>,  <54.487495, 55.154694, 51.566849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.288803, 55.023640, 51.536076>,  <53.957653, 54.805218, 51.484787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.288803, 55.023640, 51.536076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559873, 0.790592, 0.248006,
		0.034056, -0.277105, 0.960236,
		0.827878, 0.546056, 0.128219,
		54.537167, 55.187458, 51.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.153980, 55.060253, 52.217175>,  <53.957653, 54.805218, 51.484787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.153980, 55.060253, 52.217175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.263763, 55.315910, 51.929794>,  <54.329636, 55.469303, 51.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.263763, 55.315910, 51.929794>,  <54.153980, 55.060253, 52.217175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.263763, 55.315910, 51.929794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617142, 0.690048, 0.378113,
		0.737432, 0.339609, 0.583831,
		0.274461, 0.639140, -0.718451,
		54.346104, 55.507652, 51.714260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.364014, 55.665890, 52.519787>,  <54.153980, 55.060253, 52.217175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.364014, 55.665890, 52.519787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.249390, 55.762100, 52.148834>,  <54.180614, 55.819824, 51.926262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.249390, 55.762100, 52.148834>,  <54.364014, 55.665890, 52.519787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.249390, 55.762100, 52.148834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521939, 0.772525, 0.361641,
		0.803406, 0.587668, -0.095839,
		-0.286563, 0.240523, -0.927378,
		54.163422, 55.834255, 51.870621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.955853, 56.157093, 52.636799>,  <54.364014, 55.665890, 52.519787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.955853, 56.157093, 52.636799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.902405, 56.197384, 52.242439>,  <54.870335, 56.221558, 52.005825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.902405, 56.197384, 52.242439>,  <54.955853, 56.157093, 52.636799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.902405, 56.197384, 52.242439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956691, 0.272728, -0.101795,
		0.258629, -0.956804, -0.132809,
		-0.133618, 0.100730, -0.985900,
		54.862320, 56.227604, 51.946671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.305367, 55.608082, 52.247601>,  <54.955853, 56.157093, 52.636799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.305367, 55.608082, 52.247601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.277664, 55.927521, 52.008453>,  <55.261044, 56.119183, 51.864964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.277664, 55.927521, 52.008453>,  <55.305367, 55.608082, 52.247601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.277664, 55.927521, 52.008453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997561, 0.060641, -0.034563,
		0.008653, -0.598802, -0.800850,
		-0.069260, 0.798598, -0.597866,
		55.256886, 56.167099, 51.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.710499, 55.466957, 51.613174>,  <55.305367, 55.608082, 52.247601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.710499, 55.466957, 51.613174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.677086, 55.858608, 51.687279>,  <55.657040, 56.093601, 51.731743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.677086, 55.858608, 51.687279>,  <55.710499, 55.466957, 51.613174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.677086, 55.858608, 51.687279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986936, 0.106987, -0.120465,
		-0.137772, 0.172781, -0.975277,
		-0.083528, 0.979132, 0.185264,
		55.652027, 56.152348, 51.742859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.798023, 55.971966, 50.956047>,  <55.710499, 55.466957, 51.613174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.798023, 55.971966, 50.956047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920784, 56.085823, 51.319321>,  <55.994438, 56.154137, 51.537285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920784, 56.085823, 51.319321>,  <55.798023, 55.971966, 50.956047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.920784, 56.085823, 51.319321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949862, -0.031648, -0.311065,
		-0.059800, 0.958112, -0.280081,
		0.306899, 0.284639, 0.908181,
		56.012856, 56.171215, 51.591774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.174896, 56.581894, 50.959423>,  <55.798023, 55.971966, 50.956047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.174896, 56.581894, 50.959423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.335411, 56.393726, 51.273792>,  <56.431721, 56.280827, 51.462414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.335411, 56.393726, 51.273792>,  <56.174896, 56.581894, 50.959423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.335411, 56.393726, 51.273792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915454, 0.234267, -0.327205,
		-0.030193, 0.850780, 0.524654,
		0.401288, -0.470417, 0.785923,
		56.455799, 56.252602, 51.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.676556, 56.998833, 51.353466>,  <56.174896, 56.581894, 50.959423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.676556, 56.998833, 51.353466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.753197, 56.606339, 51.362152>,  <56.799183, 56.370842, 51.367363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.753197, 56.606339, 51.362152>,  <56.676556, 56.998833, 51.353466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.753197, 56.606339, 51.362152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807841, 0.145103, -0.571259,
		0.557387, 0.127000, 0.820482,
		0.191604, -0.981232, 0.021717,
		56.810677, 56.311970, 51.368668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.424492, 57.011353, 51.465916>,  <56.676556, 56.998833, 51.353466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.424492, 57.011353, 51.465916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.269348, 56.731873, 51.225456>,  <57.176262, 56.564186, 51.081181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.269348, 56.731873, 51.225456>,  <57.424492, 57.011353, 51.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.269348, 56.731873, 51.225456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387083, 0.468433, -0.794190,
		0.836499, -0.540731, 0.088767,
		-0.387862, -0.698699, -0.601151,
		57.152988, 56.522263, 51.045113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.920696, 57.058655, 52.065865>,  <57.424492, 57.011353, 51.465916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.920696, 57.058655, 52.065865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.990685, 56.667381, 52.110657>,  <58.032677, 56.432617, 52.137531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.990685, 56.667381, 52.110657>,  <57.920696, 57.058655, 52.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.990685, 56.667381, 52.110657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731995, 0.205305, 0.649641,
		-0.658459, -0.031699, 0.751948,
		0.174972, -0.978185, 0.111981,
		58.043175, 56.373924, 52.144253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.040493, 56.770760, 52.830112>,  <57.920696, 57.058655, 52.065865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.040493, 56.770760, 52.830112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.270973, 56.636436, 52.532059>,  <58.409264, 56.555843, 52.353226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.270973, 56.636436, 52.532059>,  <58.040493, 56.770760, 52.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.270973, 56.636436, 52.532059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812413, 0.135711, 0.567069,
		-0.089304, -0.932103, 0.351012,
		0.576203, -0.335808, -0.745133,
		58.443832, 56.535694, 52.308517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.556675, 56.305645, 53.084072>,  <58.040493, 56.770760, 52.830112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.556675, 56.305645, 53.084072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.706482, 56.455994, 52.745026>,  <58.796368, 56.546204, 52.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.706482, 56.455994, 52.745026>,  <58.556675, 56.305645, 53.084072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.706482, 56.455994, 52.745026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914562, 0.000788, 0.404445,
		0.152687, -0.926672, -0.343462,
		0.374517, 0.375871, -0.847619,
		58.818836, 56.568756, 52.490742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.002850, 55.793785, 52.692688>,  <58.556675, 56.305645, 53.084072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.002850, 55.793785, 52.692688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.082199, 56.185619, 52.679688>,  <59.129810, 56.420719, 52.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.082199, 56.185619, 52.679688>,  <59.002850, 55.793785, 52.692688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.082199, 56.185619, 52.679688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894794, -0.167474, 0.413879,
		0.399987, -0.111186, -0.909751,
		0.198377, 0.979587, -0.032501,
		59.141712, 56.479496, 52.669937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.670879, 56.079300, 52.253784>,  <59.002850, 55.793785, 52.692688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.670879, 56.079300, 52.253784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.579659, 56.320316, 52.559708>,  <59.524925, 56.464928, 52.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.579659, 56.320316, 52.559708>,  <59.670879, 56.079300, 52.253784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.579659, 56.320316, 52.559708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942917, -0.059125, 0.327736,
		0.242694, 0.795894, -0.554664,
		-0.228048, 0.602542, 0.764812,
		59.511246, 56.501080, 52.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.210026, 56.663235, 52.434406>,  <59.670879, 56.079300, 52.253784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.210026, 56.663235, 52.434406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.016205, 56.594391, 52.777473>,  <59.899914, 56.553085, 52.983315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.016205, 56.594391, 52.777473>,  <60.210026, 56.663235, 52.434406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.016205, 56.594391, 52.777473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874196, -0.059960, 0.481857,
		-0.031507, 0.983251, 0.179511,
		-0.484549, -0.172110, 0.857665,
		59.870838, 56.542759, 53.034775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.396942, 57.112782, 53.041756>,  <60.210026, 56.663235, 52.434406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.396942, 57.112782, 53.041756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268608, 56.773464, 53.210258>,  <60.191608, 56.569874, 53.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268608, 56.773464, 53.210258>,  <60.396942, 57.112782, 53.041756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.268608, 56.773464, 53.210258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760248, 0.034611, 0.648710,
		-0.564876, 0.528394, 0.633809,
		-0.320838, -0.848293, 0.421262,
		60.172356, 56.518974, 53.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.695724, 57.150558, 53.711506>,  <60.396942, 57.112782, 53.041756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.695724, 57.150558, 53.711506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.606819, 56.767746, 53.637001>,  <60.553474, 56.538059, 53.592297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.606819, 56.767746, 53.637001>,  <60.695724, 57.150558, 53.711506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.606819, 56.767746, 53.637001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753753, -0.289844, 0.589785,
		-0.618428, -0.009305, 0.785787,
		-0.222268, -0.957029, -0.186261,
		60.540138, 56.480637, 53.581123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.254387, 56.776615, 53.403503>,  <60.695724, 57.150558, 53.711506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.254387, 56.776615, 53.403503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.456184, 56.460793, 53.543266>,  <61.577263, 56.271297, 53.627125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.456184, 56.460793, 53.543266>,  <61.254387, 56.776615, 53.403503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.456184, 56.460793, 53.543266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289177, 0.535819, 0.793268,
		-0.813550, -0.299158, 0.498639,
		0.504493, -0.789558, 0.349406,
		61.607533, 56.223927, 53.648087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.058113, 56.679180, 54.167755>,  <61.254387, 56.776615, 53.403503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.058113, 56.679180, 54.167755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.420120, 56.515892, 54.119942>,  <61.637325, 56.417919, 54.091255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.420120, 56.515892, 54.119942>,  <61.058113, 56.679180, 54.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.420120, 56.515892, 54.119942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275358, 0.348074, 0.896115,
		-0.324211, -0.843918, 0.427422,
		0.905022, -0.408224, -0.119530,
		61.691628, 56.393425, 54.084084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.320732, 56.348148, 54.816917>,  <61.058113, 56.679180, 54.167755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.320732, 56.348148, 54.816917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.630714, 56.441402, 54.581944>,  <61.816704, 56.497356, 54.440960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.630714, 56.441402, 54.581944>,  <61.320732, 56.348148, 54.816917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.630714, 56.441402, 54.581944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467707, 0.413591, 0.781148,
		0.425065, -0.880110, 0.211484,
		0.774965, 0.233127, -0.587437,
		61.863201, 56.511341, 54.405712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.933243, 56.118137, 55.159061>,  <61.320732, 56.348148, 54.816917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.933243, 56.118137, 55.159061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996391, 56.416832, 54.900616>,  <62.034279, 56.596050, 54.745548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996391, 56.416832, 54.900616>,  <61.933243, 56.118137, 55.159061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.996391, 56.416832, 54.900616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537310, 0.484008, 0.690677,
		0.828477, -0.456200, -0.324818,
		0.157872, 0.746738, -0.646111,
		62.043755, 56.640854, 54.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.671154, 56.091007, 54.860104>,  <61.933243, 56.118137, 55.159061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.671154, 56.091007, 54.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.489883, 56.442032, 54.922737>,  <62.381123, 56.652645, 54.960320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.489883, 56.442032, 54.922737>,  <62.671154, 56.091007, 54.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.489883, 56.442032, 54.922737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630111, 0.191097, 0.752623,
		0.630550, 0.439736, -0.639561,
		-0.453173, 0.877562, 0.156586,
		62.353931, 56.705299, 54.969711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.055508, 56.881832, 54.793385>,  <62.671154, 56.091007, 54.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.055508, 56.881832, 54.793385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.789719, 56.846779, 55.090248>,  <62.630245, 56.825745, 55.268368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.789719, 56.846779, 55.090248>,  <63.055508, 56.881832, 54.793385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.789719, 56.846779, 55.090248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684099, 0.328422, 0.651266,
		-0.300817, 0.940457, -0.158274,
		-0.664468, -0.087637, 0.742160,
		62.590378, 56.820488, 55.312897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.021439, 57.420624, 55.234379>,  <63.055508, 56.881832, 54.793385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.021439, 57.420624, 55.234379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885696, 57.106365, 55.441299>,  <62.804249, 56.917812, 55.565453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.885696, 57.106365, 55.441299>,  <63.021439, 57.420624, 55.234379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.885696, 57.106365, 55.441299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740309, 0.116208, 0.662147,
		-0.580326, 0.607667, 0.542183,
		-0.339359, -0.785644, 0.517300,
		62.783890, 56.870670, 55.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.801414, 57.665840, 55.947445>,  <63.021439, 57.420624, 55.234379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.801414, 57.665840, 55.947445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.942520, 57.292679, 55.918457>,  <63.027184, 57.068783, 55.901062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.942520, 57.292679, 55.918457>,  <62.801414, 57.665840, 55.947445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.942520, 57.292679, 55.918457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678900, 0.201873, 0.705933,
		-0.643937, -0.298228, 0.704561,
		0.352761, -0.932903, -0.072474,
		63.048347, 57.012810, 55.896713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.261223, 57.843620, 56.373695>,  <62.801414, 57.665840, 55.947445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.261223, 57.843620, 56.373695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.324501, 57.472694, 56.238014>,  <63.362469, 57.250137, 56.156605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.324501, 57.472694, 56.238014>,  <63.261223, 57.843620, 56.373695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.324501, 57.472694, 56.238014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934189, 0.029307, 0.355572,
		-0.319787, -0.373130, 0.870925,
		0.158199, -0.927316, -0.339202,
		63.371960, 57.194500, 56.136253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.490017, 57.879581, 57.048115>,  <63.261223, 57.843620, 56.373695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.490017, 57.879581, 57.048115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.783287, 57.735390, 57.278770>,  <63.959248, 57.648876, 57.417164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.783287, 57.735390, 57.278770>,  <63.490017, 57.879581, 57.048115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.783287, 57.735390, 57.278770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352455, -0.523750, -0.775539,
		0.581579, 0.771844, -0.256948,
		0.733172, -0.360475, 0.576643,
		64.003235, 57.627247, 57.451763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.202347, 58.137482, 56.997128>,  <63.490017, 57.879581, 57.048115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.202347, 58.137482, 56.997128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200516, 57.741314, 57.052338>,  <64.199417, 57.503613, 57.085464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200516, 57.741314, 57.052338>,  <64.202347, 58.137482, 56.997128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.200516, 57.741314, 57.052338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412522, -0.127606, -0.901965,
		0.910936, 0.052817, 0.409153,
		-0.004571, -0.990418, 0.138029,
		64.199142, 57.444187, 57.093746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.126541, 58.307911, 57.725136>,  <64.202347, 58.137482, 56.997128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.126541, 58.307911, 57.725136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.522491, 58.301212, 57.781532>,  <64.760063, 58.297192, 57.815369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.522491, 58.301212, 57.781532>,  <64.126541, 58.307911, 57.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.522491, 58.301212, 57.781532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091285, 0.685472, 0.722354,
		-0.108744, -0.727906, 0.676999,
		0.989870, -0.016751, 0.140988,
		64.819450, 58.296188, 57.823830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.257645, 58.472672, 58.424797>,  <64.126541, 58.307911, 57.725136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.257645, 58.472672, 58.424797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.609222, 58.527550, 58.242096>,  <64.820168, 58.560478, 58.132477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.609222, 58.527550, 58.242096>,  <64.257645, 58.472672, 58.424797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.609222, 58.527550, 58.242096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176045, 0.796750, 0.578098,
		0.443228, -0.588529, 0.676153,
		0.878952, 0.137196, -0.456750,
		64.872910, 58.568710, 58.105072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.650963, 58.818184, 58.970184>,  <64.257645, 58.472672, 58.424797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.650963, 58.818184, 58.970184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.788994, 58.922783, 58.609619>,  <64.871811, 58.985542, 58.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.788994, 58.922783, 58.609619>,  <64.650963, 58.818184, 58.970184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.788994, 58.922783, 58.609619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232850, 0.906526, 0.352124,
		0.909237, -0.331400, 0.251918,
		0.345064, 0.261505, -0.901413,
		64.892517, 59.001232, 58.339195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.699074, 58.414009, 59.675331>,  <64.650963, 58.818184, 58.970184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.699074, 58.414009, 59.675331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.052803, 58.597549, 59.709793>,  <65.265045, 58.707672, 59.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.052803, 58.597549, 59.709793>,  <64.699074, 58.414009, 59.675331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.052803, 58.597549, 59.709793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466416, -0.876424, -0.119739,
		0.020565, 0.146073, -0.989060,
		0.884326, 0.458851, 0.086155,
		65.318100, 58.735207, 59.735638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.117592, 58.288631, 59.087204>,  <64.699074, 58.414009, 59.675331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.117592, 58.288631, 59.087204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.346123, 58.356792, 59.408340>,  <65.483238, 58.397690, 59.601021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.346123, 58.356792, 59.408340>,  <65.117592, 58.288631, 59.087204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.346123, 58.356792, 59.408340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400178, -0.911885, -0.091235,
		0.716549, 0.373404, -0.589175,
		0.571327, 0.170401, 0.802838,
		65.517517, 58.407913, 59.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.635094, 57.936611, 58.915070>,  <65.117592, 58.288631, 59.087204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.635094, 57.936611, 58.915070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.652802, 57.981747, 59.312119>,  <65.663422, 58.008827, 59.550350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.652802, 57.981747, 59.312119>,  <65.635094, 57.936611, 58.915070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.652802, 57.981747, 59.312119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556501, -0.827951, 0.069308,
		0.829667, 0.549330, -0.099442,
		0.044260, 0.112842, 0.992627,
		65.666077, 58.015598, 59.609905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.331993, 57.870125, 59.231800>,  <65.635094, 57.936611, 58.915070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.331993, 57.870125, 59.231800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.042480, 57.740734, 59.475601>,  <65.868774, 57.663097, 59.621883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.042480, 57.740734, 59.475601>,  <66.331993, 57.870125, 59.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.042480, 57.740734, 59.475601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427210, -0.903729, 0.027679,
		0.541875, 0.280421, 0.792298,
		-0.723784, -0.323479, 0.609506,
		65.825348, 57.643692, 59.658455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.581818, 57.561954, 59.897869>,  <66.331993, 57.870125, 59.231800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.581818, 57.561954, 59.897869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.250153, 57.384415, 59.761925>,  <66.051155, 57.277893, 59.680359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.250153, 57.384415, 59.761925>,  <66.581818, 57.561954, 59.897869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.250153, 57.384415, 59.761925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512979, -0.845715, -0.147031,
		-0.222164, -0.296252, 0.928912,
		-0.829153, -0.443847, -0.339859,
		66.001404, 57.251259, 59.659966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.336212, 56.980175, 60.379360>,  <66.581818, 57.561954, 59.897869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.336212, 56.980175, 60.379360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.263893, 56.936340, 59.988403>,  <66.220497, 56.910038, 59.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.263893, 56.936340, 59.988403>,  <66.336212, 56.980175, 60.379360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.263893, 56.936340, 59.988403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674444, -0.737124, -0.042115,
		-0.715846, -0.666812, 0.207187,
		-0.180805, -0.109588, -0.977395,
		66.209648, 56.903465, 59.695187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.802429, 56.369762, 60.177998>,  <66.336212, 56.980175, 60.379360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.802429, 56.369762, 60.177998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.621910, 56.407520, 59.823051>,  <66.513603, 56.430176, 59.610085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.621910, 56.407520, 59.823051>,  <66.802429, 56.369762, 60.177998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.621910, 56.407520, 59.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426618, -0.850572, -0.307448,
		-0.783794, -0.517316, 0.343586,
		-0.451292, 0.094396, -0.887370,
		66.486519, 56.435841, 59.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.594101, 56.607563, 60.171711>,  <66.802429, 56.369762, 60.177998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.594101, 56.607563, 60.171711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.428642, 56.560596, 59.810577>,  <67.329369, 56.532417, 59.593895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.428642, 56.560596, 59.810577>,  <67.594101, 56.607563, 60.171711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.428642, 56.560596, 59.810577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552608, 0.820468, 0.146483,
		0.723549, 0.559506, -0.404265,
		-0.413645, -0.117412, -0.902836,
		67.304550, 56.525372, 59.539726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.384628, 56.741856, 60.077232>,  <67.594101, 56.607563, 60.171711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.384628, 56.741856, 60.077232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.645821, 57.044022, 60.099037>,  <68.802536, 57.225323, 60.112122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.645821, 57.044022, 60.099037>,  <68.384628, 56.741856, 60.077232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.645821, 57.044022, 60.099037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462445, 0.340659, 0.818594,
		0.599809, -0.559729, 0.571780,
		0.652973, 0.755417, 0.054514,
		68.841713, 57.270645, 60.115391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.798836, 56.838066, 60.836502>,  <68.384628, 56.741856, 60.077232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.798836, 56.838066, 60.836502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.696098, 57.184151, 60.664246>,  <68.634460, 57.391800, 60.560894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.696098, 57.184151, 60.664246>,  <68.798836, 56.838066, 60.836502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.696098, 57.184151, 60.664246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257126, 0.368354, 0.893422,
		0.931623, 0.340192, 0.127860,
		-0.256837, 0.865208, -0.430639,
		68.619049, 57.443714, 60.535053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.109085, 56.192955, 61.040176>,  <68.798836, 56.838066, 60.836502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.109085, 56.192955, 61.040176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.230545, 56.153225, 60.661140>,  <69.303421, 56.129387, 60.433720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.230545, 56.153225, 60.661140>,  <69.109085, 56.192955, 61.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.230545, 56.153225, 60.661140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949852, 0.109502, 0.292899,
		0.074672, -0.989012, 0.127590,
		0.303652, -0.099321, -0.947592,
		69.321640, 56.123428, 60.376862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.736435, 55.688179, 61.022217>,  <69.109085, 56.192955, 61.040176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.736435, 55.688179, 61.022217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.725632, 55.927521, 60.701904>,  <69.719154, 56.071125, 60.509716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.725632, 55.927521, 60.701904>,  <69.736435, 55.688179, 61.022217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.725632, 55.927521, 60.701904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979311, 0.176548, 0.098894,
		0.200550, -0.781539, -0.590742,
		-0.027005, 0.598354, -0.800777,
		69.717529, 56.107025, 60.461670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.279213, 55.458752, 60.426216>,  <69.736435, 55.688179, 61.022217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.279213, 55.458752, 60.426216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.192024, 55.849125, 60.429016>,  <70.139709, 56.083347, 60.430698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.192024, 55.849125, 60.429016>,  <70.279213, 55.458752, 60.426216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.192024, 55.849125, 60.429016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970794, 0.216077, 0.104257,
		0.100234, 0.029524, -0.994526,
		-0.217972, 0.975930, 0.007003,
		70.126633, 56.141903, 60.431118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.639168, 55.855854, 59.927258>,  <70.279213, 55.458752, 60.426216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.639168, 55.855854, 59.927258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.584740, 56.102325, 60.237564>,  <70.552086, 56.250210, 60.423748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.584740, 56.102325, 60.237564>,  <70.639168, 55.855854, 59.927258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.584740, 56.102325, 60.237564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949327, 0.305021, -0.075759,
		-0.283305, 0.726144, -0.626461,
		-0.136072, 0.616179, 0.775762,
		70.543915, 56.287178, 60.470291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.783607, 56.592987, 59.796318>,  <70.639168, 55.855854, 59.927258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.783607, 56.592987, 59.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.851448, 56.441742, 60.160355>,  <70.892151, 56.350994, 60.378777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.851448, 56.441742, 60.160355>,  <70.783607, 56.592987, 59.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.851448, 56.441742, 60.160355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965311, 0.249765, -0.076112,
		-0.198530, 0.891428, 0.407359,
		0.169592, -0.378117, 0.910091,
		70.902328, 56.328308, 60.433380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.338066, 57.014645, 60.108932>,  <70.783607, 56.592987, 59.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.338066, 57.014645, 60.108932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.331459, 56.656723, 60.287392>,  <71.327492, 56.441971, 60.394466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.331459, 56.656723, 60.287392>,  <71.338066, 57.014645, 60.108932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.331459, 56.656723, 60.287392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998437, 0.009061, 0.055153,
		-0.053394, 0.446361, 0.893259,
		-0.016524, -0.894807, 0.446147,
		71.326500, 56.388279, 60.421234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.679474, 56.957520, 60.808170>,  <71.338066, 57.014645, 60.108932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.679474, 56.957520, 60.808170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.690323, 56.614544, 60.602623>,  <71.696831, 56.408760, 60.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.690323, 56.614544, 60.602623>,  <71.679474, 56.957520, 60.808170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.690323, 56.614544, 60.602623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998313, -0.003174, 0.057972,
		-0.051339, -0.514578, 0.855905,
		0.027114, -0.857438, -0.513873,
		71.698456, 56.357311, 60.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.423630, 56.966507, 60.503296>,  <71.679474, 56.957520, 60.808170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.423630, 56.966507, 60.503296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.392731, 57.216114, 60.814331>,  <72.374191, 57.365879, 61.000950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.392731, 57.216114, 60.814331>,  <72.423630, 56.966507, 60.503296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.392731, 57.216114, 60.814331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818512, 0.485007, -0.307908,
		-0.569273, 0.612677, -0.548229,
		-0.077246, 0.624015, 0.777585,
		72.369560, 57.403320, 61.047607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.477631, 57.704323, 60.337460>,  <72.423630, 56.966507, 60.503296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.477631, 57.704323, 60.337460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.620850, 57.604961, 60.697479>,  <72.706779, 57.545345, 60.913490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.620850, 57.604961, 60.697479>,  <72.477631, 57.704323, 60.337460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.620850, 57.604961, 60.697479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847881, 0.490196, -0.202005,
		-0.391023, 0.835465, 0.386133,
		0.358049, -0.248406, 0.900053,
		72.728264, 57.530441, 60.967495>
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
