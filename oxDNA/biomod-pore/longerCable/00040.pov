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
	<24.331026, 34.882725, 35.372272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453667, 34.932369, 34.994789>,  <24.527250, 34.962154, 34.768299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453667, 34.932369, 34.994789>,  <24.331026, 34.882725, 35.372272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453667, 34.932369, 34.994789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743434, 0.587911, 0.318852,
		0.594392, -0.799347, 0.087984,
		0.306601, 0.124113, -0.943712,
		24.545647, 34.969604, 34.711678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016333, 34.664230, 35.283253>,  <24.331026, 34.882725, 35.372272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016333, 34.664230, 35.283253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932606, 34.928040, 34.994469>,  <24.882370, 35.086323, 34.821198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932606, 34.928040, 34.994469>,  <25.016333, 34.664230, 35.283253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932606, 34.928040, 34.994469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766018, 0.569494, 0.298148,
		0.607784, -0.490624, -0.624408,
		-0.209318, 0.659518, -0.721957,
		24.869810, 35.125896, 34.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413845, 34.885265, 34.548378>,  <25.016333, 34.664230, 35.283253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413845, 34.885265, 34.548378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232767, 35.220402, 34.670418>,  <25.124121, 35.421486, 34.743641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232767, 35.220402, 34.670418>,  <25.413845, 34.885265, 34.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232767, 35.220402, 34.670418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840395, 0.286561, 0.460020,
		0.297996, 0.464653, -0.833844,
		-0.452697, 0.837843, 0.305098,
		25.096958, 35.471756, 34.761948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843634, 35.489246, 34.298454>,  <25.413845, 34.885265, 34.548378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843634, 35.489246, 34.298454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641155, 35.533031, 34.640633>,  <25.519669, 35.559303, 34.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641155, 35.533031, 34.640633>,  <25.843634, 35.489246, 34.298454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641155, 35.533031, 34.640633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835973, 0.306033, 0.455514,
		-0.211932, 0.945707, -0.246420,
		-0.506196, 0.109463, 0.855444,
		25.489296, 35.565868, 34.897266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833473, 36.166199, 34.563644>,  <25.843634, 35.489246, 34.298454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833473, 36.166199, 34.563644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851301, 35.876263, 34.838634>,  <25.861998, 35.702301, 35.003628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851301, 35.876263, 34.838634>,  <25.833473, 36.166199, 34.563644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851301, 35.876263, 34.838634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874508, 0.360991, 0.323915,
		-0.482958, 0.586766, 0.649967,
		0.044570, -0.724839, 0.687475,
		25.864672, 35.658810, 35.044876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841270, 36.315243, 35.372982>,  <25.833473, 36.166199, 34.563644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841270, 36.315243, 35.372982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030479, 35.974747, 35.282082>,  <26.144005, 35.770451, 35.227539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030479, 35.974747, 35.282082>,  <25.841270, 36.315243, 35.372982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030479, 35.974747, 35.282082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781703, 0.286493, 0.553951,
		-0.406437, -0.439676, 0.800933,
		0.473021, -0.851238, -0.227254,
		26.172386, 35.719376, 35.213905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142035, 36.013382, 36.075062>,  <25.841270, 36.315243, 35.372982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142035, 36.013382, 36.075062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316757, 35.930050, 35.725021>,  <26.421591, 35.880051, 35.514999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316757, 35.930050, 35.725021>,  <26.142035, 36.013382, 36.075062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316757, 35.930050, 35.725021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878347, 0.308770, 0.364921,
		0.194179, -0.928040, 0.317861,
		0.436807, -0.208332, -0.875099,
		26.447800, 35.867550, 35.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665892, 35.442841, 36.211288>,  <26.142035, 36.013382, 36.075062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665892, 35.442841, 36.211288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767414, 35.679337, 35.905083>,  <26.828327, 35.821236, 35.721359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767414, 35.679337, 35.905083>,  <26.665892, 35.442841, 36.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767414, 35.679337, 35.905083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895020, 0.156548, 0.417650,
		0.366772, -0.791155, -0.489441,
		0.253805, 0.591242, -0.765517,
		26.843555, 35.856709, 35.675426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436359, 35.385159, 36.196651>,  <26.665892, 35.442841, 36.211288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436359, 35.385159, 36.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332153, 35.718040, 36.000870>,  <27.269630, 35.917770, 35.883400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332153, 35.718040, 36.000870>,  <27.436359, 35.385159, 36.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332153, 35.718040, 36.000870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826837, 0.454055, 0.331926,
		0.498470, -0.318227, -0.806386,
		-0.260516, 0.832205, -0.489455,
		27.253998, 35.967701, 35.854034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974070, 35.694115, 35.781059>,  <27.436359, 35.385159, 36.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974070, 35.694115, 35.781059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727797, 36.003567, 35.840973>,  <27.580032, 36.189240, 35.876919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727797, 36.003567, 35.840973>,  <27.974070, 35.694115, 35.781059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727797, 36.003567, 35.840973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761065, 0.534531, 0.367500,
		0.204246, 0.340256, -0.917883,
		-0.615681, 0.773630, 0.149781,
		27.543093, 36.235657, 35.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397766, 36.238560, 35.598217>,  <27.974070, 35.694115, 35.781059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397766, 36.238560, 35.598217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103407, 36.404251, 35.812458>,  <27.926792, 36.503666, 35.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103407, 36.404251, 35.812458>,  <28.397766, 36.238560, 35.598217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103407, 36.404251, 35.812458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672897, 0.359472, 0.646521,
		0.075268, 0.836181, -0.543265,
		-0.735897, 0.414224, 0.535607,
		27.882637, 36.528519, 35.973141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552521, 36.939957, 35.668522>,  <28.397766, 36.238560, 35.598217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552521, 36.939957, 35.668522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325363, 36.812527, 35.972103>,  <28.189070, 36.736069, 36.154251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325363, 36.812527, 35.972103>,  <28.552521, 36.939957, 35.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325363, 36.812527, 35.972103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611368, 0.454117, 0.648079,
		-0.551115, 0.832038, -0.063124,
		-0.567892, -0.318574, 0.758953,
		28.154995, 36.716953, 36.199787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297756, 37.589634, 36.053059>,  <28.552521, 36.939957, 35.668522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297756, 37.589634, 36.053059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276449, 37.261120, 36.280270>,  <28.263664, 37.064011, 36.416595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276449, 37.261120, 36.280270>,  <28.297756, 37.589634, 36.053059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276449, 37.261120, 36.280270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376555, 0.510325, 0.773159,
		-0.924862, 0.255080, 0.282073,
		-0.053269, -0.821281, 0.568032,
		28.260469, 37.014736, 36.450680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849457, 37.654892, 36.569332>,  <28.297756, 37.589634, 36.053059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849457, 37.654892, 36.569332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149248, 37.419247, 36.690151>,  <28.329123, 37.277859, 36.762642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149248, 37.419247, 36.690151>,  <27.849457, 37.654892, 36.569332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149248, 37.419247, 36.690151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153029, 0.598053, 0.786712,
		-0.644101, -0.543400, 0.538377,
		0.749477, -0.589109, 0.302050,
		28.374092, 37.242516, 36.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796537, 37.320152, 37.305412>,  <27.849457, 37.654892, 36.569332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796537, 37.320152, 37.305412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174131, 37.386517, 37.191315>,  <28.400688, 37.426334, 37.122856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174131, 37.386517, 37.191315>,  <27.796537, 37.320152, 37.305412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174131, 37.386517, 37.191315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228580, 0.294653, 0.927863,
		0.237991, -0.941091, 0.240224,
		0.943987, 0.165913, -0.285239,
		28.457327, 37.436291, 37.105743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526939, 36.614700, 37.004211>,  <27.796537, 37.320152, 37.305412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526939, 36.614700, 37.004211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676794, 36.792858, 36.678936>,  <27.766706, 36.899754, 36.483772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676794, 36.792858, 36.678936>,  <27.526939, 36.614700, 37.004211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676794, 36.792858, 36.678936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828723, -0.232443, -0.509106,
		-0.415773, 0.864635, 0.282028,
		0.374635, 0.445395, -0.813186,
		27.789185, 36.926476, 36.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019573, 37.140644, 36.699768>,  <27.526939, 36.614700, 37.004211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019573, 37.140644, 36.699768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275290, 36.946262, 36.461388>,  <27.428719, 36.829632, 36.318359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275290, 36.946262, 36.461388>,  <27.019573, 37.140644, 36.699768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275290, 36.946262, 36.461388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767851, -0.361725, -0.528735,
		0.041374, 0.795613, -0.604390,
		0.639291, -0.485957, -0.595946,
		27.467077, 36.800476, 36.282604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762321, 37.319305, 36.025635>,  <27.019573, 37.140644, 36.699768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762321, 37.319305, 36.025635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981794, 36.987347, 35.985184>,  <27.113478, 36.788174, 35.960915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981794, 36.987347, 35.985184>,  <26.762321, 37.319305, 36.025635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981794, 36.987347, 35.985184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639551, -0.338747, -0.690091,
		0.538446, 0.443315, -0.716623,
		0.548681, -0.829893, -0.101125,
		27.146399, 36.738380, 35.954845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737755, 37.100243, 35.385189>,  <26.762321, 37.319305, 36.025635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737755, 37.100243, 35.385189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886789, 36.755398, 35.522556>,  <26.976210, 36.548489, 35.604977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886789, 36.755398, 35.522556>,  <26.737755, 37.100243, 35.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886789, 36.755398, 35.522556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542157, -0.502560, -0.673423,
		0.753158, 0.064720, -0.654648,
		0.372584, -0.862116, 0.343419,
		26.998564, 36.496761, 35.625584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042374, 36.726875, 34.757683>,  <26.737755, 37.100243, 35.385189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042374, 36.726875, 34.757683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959660, 36.470680, 35.053524>,  <26.910030, 36.316963, 35.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959660, 36.470680, 35.053524>,  <27.042374, 36.726875, 34.757683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959660, 36.470680, 35.053524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407876, -0.630691, -0.660202,
		0.889313, -0.438188, -0.130822,
		-0.206785, -0.640485, 0.739608,
		26.897625, 36.278534, 35.275406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750780, 36.625118, 34.499409>,  <27.042374, 36.726875, 34.757683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750780, 36.625118, 34.499409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889296, 36.328568, 34.729347>,  <27.972404, 36.150639, 34.867310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889296, 36.328568, 34.729347>,  <27.750780, 36.625118, 34.499409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889296, 36.328568, 34.729347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618597, -0.280220, -0.734040,
		0.705281, 0.609789, 0.361573,
		0.346290, -0.741373, 0.574848,
		27.993183, 36.106155, 34.901802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516418, 36.601276, 34.529949>,  <27.750780, 36.625118, 34.499409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516418, 36.601276, 34.529949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363924, 36.235283, 34.582802>,  <28.272427, 36.015686, 34.614513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363924, 36.235283, 34.582802>,  <28.516418, 36.601276, 34.529949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363924, 36.235283, 34.582802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517146, -0.329540, -0.789913,
		0.766301, -0.232815, 0.598815,
		-0.381237, -0.914987, 0.132127,
		28.249554, 35.960789, 34.622440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989155, 36.010765, 34.678619>,  <28.516418, 36.601276, 34.529949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989155, 36.010765, 34.678619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672613, 35.885838, 34.468395>,  <28.482689, 35.810883, 34.342258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672613, 35.885838, 34.468395>,  <28.989155, 36.010765, 34.678619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672613, 35.885838, 34.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611202, -0.384731, -0.691675,
		0.013820, -0.868586, 0.495346,
		-0.791354, -0.312316, -0.525564,
		28.435207, 35.792145, 34.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074064, 35.291779, 34.505432>,  <28.989155, 36.010765, 34.678619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074064, 35.291779, 34.505432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814817, 35.418858, 34.228588>,  <28.659269, 35.495106, 34.062481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814817, 35.418858, 34.228588>,  <29.074064, 35.291779, 34.505432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814817, 35.418858, 34.228588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543138, -0.444211, -0.712515,
		-0.533805, -0.837703, 0.115348,
		-0.648115, 0.317695, -0.692111,
		28.620382, 35.514164, 34.020954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712505, 34.830685, 34.083820>,  <29.074064, 35.291779, 34.505432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712505, 34.830685, 34.083820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822792, 35.159061, 33.883808>,  <28.888964, 35.356087, 33.763802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822792, 35.159061, 33.883808>,  <28.712505, 34.830685, 34.083820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822792, 35.159061, 33.883808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465197, -0.569177, -0.677959,
		-0.841172, -0.045687, -0.538834,
		0.275718, 0.820945, -0.500030,
		28.905508, 35.405346, 33.733799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507881, 34.742191, 33.376026>,  <28.712505, 34.830685, 34.083820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507881, 34.742191, 33.376026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816813, 34.994736, 33.404022>,  <29.002171, 35.146263, 33.420818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816813, 34.994736, 33.404022>,  <28.507881, 34.742191, 33.376026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816813, 34.994736, 33.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482315, -0.511145, -0.711410,
		-0.413379, 0.583198, -0.699284,
		0.772328, 0.631357, 0.069989,
		29.048512, 35.184143, 33.425018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720327, 35.298790, 32.755127>,  <28.507881, 34.742191, 33.376026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720327, 35.298790, 32.755127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004696, 35.123196, 32.974903>,  <29.175316, 35.017838, 33.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004696, 35.123196, 32.974903>,  <28.720327, 35.298790, 32.755127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004696, 35.123196, 32.974903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260394, -0.561428, -0.785489,
		0.653290, 0.701490, -0.284821,
		0.710920, -0.438987, 0.549439,
		29.217972, 34.991501, 33.139736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447002, 35.309586, 32.320866>,  <28.720327, 35.298790, 32.755127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447002, 35.309586, 32.320866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444294, 35.025158, 32.602100>,  <29.442669, 34.854500, 32.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444294, 35.025158, 32.602100>,  <29.447002, 35.309586, 32.320866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444294, 35.025158, 32.602100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417648, -0.640856, -0.644107,
		0.908584, 0.289282, 0.301316,
		-0.006772, -0.711070, 0.703089,
		29.442263, 34.811836, 32.813026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182621, 35.056915, 32.327770>,  <29.447002, 35.309586, 32.320866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182621, 35.056915, 32.327770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957840, 34.782604, 32.512775>,  <29.822971, 34.618019, 32.623779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957840, 34.782604, 32.512775>,  <30.182621, 35.056915, 32.327770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957840, 34.782604, 32.512775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453892, -0.723100, -0.520681,
		0.691514, -0.082667, 0.717617,
		-0.561952, -0.685779, 0.462512,
		29.789255, 34.576870, 32.651527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618208, 34.479103, 32.466995>,  <30.182621, 35.056915, 32.327770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618208, 34.479103, 32.466995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241077, 34.346058, 32.458599>,  <30.014799, 34.266232, 32.453560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241077, 34.346058, 32.458599>,  <30.618208, 34.479103, 32.466995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241077, 34.346058, 32.458599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264243, -0.707662, -0.655279,
		0.203101, -0.623363, 0.755095,
		-0.942829, -0.332617, -0.020993,
		29.958229, 34.246273, 32.452301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631334, 33.768795, 32.533489>,  <30.618208, 34.479103, 32.466995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631334, 33.768795, 32.533489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319998, 33.887119, 32.311974>,  <30.133196, 33.958115, 32.179066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319998, 33.887119, 32.311974>,  <30.631334, 33.768795, 32.533489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319998, 33.887119, 32.311974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283401, -0.621545, -0.730319,
		-0.560234, -0.725384, 0.399946,
		-0.778346, 0.295804, -0.553785,
		30.086494, 33.975861, 32.145836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267826, 33.207878, 32.451077>,  <30.631334, 33.768795, 32.533489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267826, 33.207878, 32.451077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196941, 33.470615, 32.157913>,  <30.154411, 33.628258, 31.982016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196941, 33.470615, 32.157913>,  <30.267826, 33.207878, 32.451077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196941, 33.470615, 32.157913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052425, -0.737336, -0.673489,
		-0.982776, -0.157772, 0.096228,
		-0.177210, 0.656844, -0.732907,
		30.143778, 33.667667, 31.938042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747015, 32.903221, 32.005726>,  <30.267826, 33.207878, 32.451077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747015, 32.903221, 32.005726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922859, 33.185337, 31.783266>,  <30.028366, 33.354607, 31.649790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922859, 33.185337, 31.783266>,  <29.747015, 32.903221, 32.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922859, 33.185337, 31.783266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059226, -0.595083, -0.801479,
		-0.896234, 0.385277, -0.219832,
		0.439609, 0.705293, -0.556152,
		30.054743, 33.396927, 31.616421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363224, 32.953495, 31.365681>,  <29.747015, 32.903221, 32.005726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363224, 32.953495, 31.365681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715818, 33.108971, 31.258423>,  <29.927376, 33.202255, 31.194069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715818, 33.108971, 31.258423>,  <29.363224, 32.953495, 31.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715818, 33.108971, 31.258423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002660, -0.563755, -0.825938,
		-0.472201, 0.728767, -0.495908,
		0.881487, 0.388689, -0.268144,
		29.980265, 33.225578, 31.177980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407515, 33.238617, 30.610128>,  <29.363224, 32.953495, 31.365681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407515, 33.238617, 30.610128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766552, 33.115055, 30.735928>,  <29.981974, 33.040920, 30.811407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766552, 33.115055, 30.735928>,  <29.407515, 33.238617, 30.610128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766552, 33.115055, 30.735928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075237, -0.595607, -0.799745,
		0.434360, 0.741506, -0.511371,
		0.897592, -0.308903, 0.314497,
		30.035830, 33.022385, 30.830276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478539, 32.869942, 29.909088>,  <29.407515, 33.238617, 30.610128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478539, 32.869942, 29.909088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820723, 32.685345, 29.815098>,  <30.026033, 32.574589, 29.758703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820723, 32.685345, 29.815098>,  <29.478539, 32.869942, 29.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820723, 32.685345, 29.815098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473949, 0.514818, 0.714377,
		-0.208705, -0.722490, 0.659129,
		0.855462, -0.461488, -0.234978,
		30.077360, 32.546898, 29.744604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902555, 32.406609, 30.442734>,  <29.478539, 32.869942, 29.909088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902555, 32.406609, 30.442734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120285, 32.628681, 30.191183>,  <30.250923, 32.761925, 30.040253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120285, 32.628681, 30.191183>,  <29.902555, 32.406609, 30.442734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120285, 32.628681, 30.191183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323003, 0.553156, 0.767912,
		0.774198, -0.621121, 0.121769,
		0.544323, 0.555183, -0.628876,
		30.283583, 32.795235, 30.002520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720041, 32.485119, 30.447596>,  <29.902555, 32.406609, 30.442734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720041, 32.485119, 30.447596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501419, 32.802887, 30.341637>,  <30.370247, 32.993549, 30.278061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501419, 32.802887, 30.341637>,  <30.720041, 32.485119, 30.447596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501419, 32.802887, 30.341637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221415, 0.442154, 0.869181,
		0.807623, 0.416402, -0.417558,
		-0.546553, 0.794424, -0.264896,
		30.337454, 33.041214, 30.262167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084391, 32.952095, 30.611427>,  <30.720041, 32.485119, 30.447596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084391, 32.952095, 30.611427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700283, 33.061356, 30.634296>,  <30.469818, 33.126911, 30.648018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700283, 33.061356, 30.634296>,  <31.084391, 32.952095, 30.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700283, 33.061356, 30.634296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199938, 0.530462, 0.823793,
		0.194690, 0.802496, -0.564000,
		-0.960271, 0.273150, 0.057173,
		30.412201, 33.143299, 30.651449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177090, 33.599857, 30.759846>,  <31.084391, 32.952095, 30.611427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177090, 33.599857, 30.759846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797129, 33.524872, 30.859880>,  <30.569153, 33.479881, 30.919901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797129, 33.524872, 30.859880>,  <31.177090, 33.599857, 30.759846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797129, 33.524872, 30.859880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040672, 0.719209, 0.693602,
		-0.309892, 0.669025, -0.675553,
		-0.949901, -0.187465, 0.250088,
		30.512157, 33.468632, 30.934906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744144, 34.212723, 30.902536>,  <31.177090, 33.599857, 30.759846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744144, 34.212723, 30.902536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519102, 33.964783, 31.121355>,  <30.384077, 33.816021, 31.252647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519102, 33.964783, 31.121355>,  <30.744144, 34.212723, 30.902536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519102, 33.964783, 31.121355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142085, 0.724356, 0.674626,
		-0.814423, 0.301822, -0.495599,
		-0.562607, -0.619848, 0.547048,
		30.350319, 33.778828, 31.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035425, 34.503471, 30.933601>,  <30.744144, 34.212723, 30.902536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035425, 34.503471, 30.933601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118479, 34.261566, 31.241146>,  <30.168310, 34.116421, 31.425673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118479, 34.261566, 31.241146>,  <30.035425, 34.503471, 30.933601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118479, 34.261566, 31.241146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298299, 0.709407, 0.638560,
		-0.931615, -0.361936, -0.033105,
		0.207633, -0.604767, 0.768860,
		30.180769, 34.080135, 31.471804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445894, 34.409161, 31.270597>,  <30.035425, 34.503471, 30.933601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445894, 34.409161, 31.270597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775703, 34.381943, 31.495287>,  <29.973589, 34.365612, 31.630100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775703, 34.381943, 31.495287>,  <29.445894, 34.409161, 31.270597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775703, 34.381943, 31.495287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402939, 0.626354, 0.667324,
		-0.397244, -0.776563, 0.489026,
		0.824523, -0.068042, 0.561723,
		30.023060, 34.361530, 31.663803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269896, 34.284237, 31.997757>,  <29.445894, 34.409161, 31.270597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269896, 34.284237, 31.997757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618999, 34.475288, 31.957426>,  <29.828461, 34.589920, 31.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618999, 34.475288, 31.957426>,  <29.269896, 34.284237, 31.997757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618999, 34.475288, 31.957426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307261, 0.697997, 0.646831,
		0.379321, -0.533547, 0.755939,
		0.872758, 0.477627, -0.100827,
		29.880827, 34.618576, 31.927177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814114, 33.867302, 32.350098>,  <29.269896, 34.284237, 31.997757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814114, 33.867302, 32.350098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200926, 33.920086, 32.437222>,  <29.433014, 33.951756, 32.489494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200926, 33.920086, 32.437222>,  <28.814114, 33.867302, 32.350098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200926, 33.920086, 32.437222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253512, 0.580041, 0.774135,
		-0.024187, -0.803829, 0.594369,
		0.967030, 0.131955, 0.217810,
		29.491035, 33.959671, 32.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987091, 33.633976, 33.068787>,  <28.814114, 33.867302, 32.350098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987091, 33.633976, 33.068787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238510, 33.923843, 32.955799>,  <29.389362, 34.097763, 32.888008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238510, 33.923843, 32.955799>,  <28.987091, 33.633976, 33.068787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238510, 33.923843, 32.955799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239863, 0.526080, 0.815908,
		0.739859, -0.445084, 0.504488,
		0.628549, 0.724665, -0.282466,
		29.427074, 34.141243, 32.871059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343628, 33.867043, 33.666260>,  <28.987091, 33.633976, 33.068787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343628, 33.867043, 33.666260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388756, 34.177979, 33.418705>,  <29.415833, 34.364540, 33.270172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388756, 34.177979, 33.418705>,  <29.343628, 33.867043, 33.666260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388756, 34.177979, 33.418705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038749, 0.625832, 0.778995,
		0.992860, -0.063905, 0.100727,
		0.112820, 0.777335, -0.618887,
		29.422602, 34.411179, 33.233040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962914, 34.275562, 33.754673>,  <29.343628, 33.867043, 33.666260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962914, 34.275562, 33.754673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658890, 34.490868, 33.609024>,  <29.476477, 34.620052, 33.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658890, 34.490868, 33.609024>,  <29.962914, 34.275562, 33.754673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658890, 34.490868, 33.609024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031590, 0.590248, 0.806604,
		0.649087, 0.601562, -0.465626,
		-0.760057, 0.538266, -0.364119,
		29.430872, 34.652348, 33.499790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063196, 34.972481, 33.445755>,  <29.962914, 34.275562, 33.754673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063196, 34.972481, 33.445755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729609, 34.898193, 33.653603>,  <29.529455, 34.853622, 33.778309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729609, 34.898193, 33.653603>,  <30.063196, 34.972481, 33.445755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729609, 34.898193, 33.653603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454233, 0.303614, 0.837551,
		-0.313312, 0.934519, -0.168845,
		-0.833971, -0.185720, 0.519615,
		29.479418, 34.842476, 33.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883326, 35.613045, 33.903824>,  <30.063196, 34.972481, 33.445755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883326, 35.613045, 33.903824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740692, 35.268589, 34.048759>,  <29.655113, 35.061916, 34.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740692, 35.268589, 34.048759>,  <29.883326, 35.613045, 33.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740692, 35.268589, 34.048759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421994, 0.197564, 0.884810,
		-0.833529, 0.468414, 0.292947,
		-0.356582, -0.861137, 0.362343,
		29.633718, 35.010246, 34.157463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661459, 35.773449, 34.614365>,  <29.883326, 35.613045, 33.903824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661459, 35.773449, 34.614365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797596, 35.397617, 34.599648>,  <29.879278, 35.172119, 34.590816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797596, 35.397617, 34.599648>,  <29.661459, 35.773449, 34.614365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797596, 35.397617, 34.599648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559260, 0.170814, 0.811204,
		-0.755906, -0.296667, 0.583605,
		0.340345, -0.939581, -0.036794,
		29.899700, 35.115742, 34.588608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917965, 35.783470, 35.281406>,  <29.661459, 35.773449, 34.614365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917965, 35.783470, 35.281406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221447, 35.846630, 35.534210>,  <30.403536, 35.884525, 35.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221447, 35.846630, 35.534210>,  <29.917965, 35.783470, 35.281406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221447, 35.846630, 35.534210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433676, -0.601520, 0.670893,
		0.486102, -0.783097, -0.387897,
		0.758702, 0.157900, 0.632010,
		30.449059, 35.894001, 35.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936819, 35.193890, 35.503239>,  <29.917965, 35.783470, 35.281406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936819, 35.193890, 35.503239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117453, 35.409218, 35.787853>,  <30.225832, 35.538414, 35.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117453, 35.409218, 35.787853>,  <29.936819, 35.193890, 35.503239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117453, 35.409218, 35.787853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541551, -0.468414, 0.698077,
		0.709081, -0.700574, 0.079998,
		0.451582, 0.538316, 0.711540,
		30.252928, 35.570713, 36.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240948, 35.230972, 35.925323>,  <29.936819, 35.193890, 35.503239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240948, 35.230972, 35.925323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482002, 35.205063, 36.243477>,  <29.626635, 35.189518, 36.434368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482002, 35.205063, 36.243477>,  <29.240948, 35.230972, 35.925323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482002, 35.205063, 36.243477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161526, 0.985971, -0.042084,
		-0.781498, 0.153837, 0.604645,
		0.602636, -0.064777, 0.795383,
		29.662792, 35.185631, 36.482090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105333, 35.670280, 36.464310>,  <29.240948, 35.230972, 35.925323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105333, 35.670280, 36.464310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492010, 35.635624, 36.560638>,  <29.724016, 35.614830, 36.618435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492010, 35.635624, 36.560638>,  <29.105333, 35.670280, 36.464310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492010, 35.635624, 36.560638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112282, 0.989139, -0.094853,
		-0.229992, 0.118734, 0.965922,
		0.966694, -0.086641, 0.240826,
		29.782019, 35.609631, 36.632885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233406, 36.241848, 36.799339>,  <29.105333, 35.670280, 36.464310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233406, 36.241848, 36.799339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593700, 36.178543, 36.637535>,  <29.809877, 36.140560, 36.540455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593700, 36.178543, 36.637535>,  <29.233406, 36.241848, 36.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593700, 36.178543, 36.637535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174152, 0.984716, 0.002532,
		0.397924, -0.072726, 0.914531,
		0.900737, -0.158260, -0.404508,
		29.863922, 36.131065, 36.516182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788572, 36.371819, 37.186420>,  <29.233406, 36.241848, 36.799339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788572, 36.371819, 37.186420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917543, 36.451866, 36.816341>,  <29.994926, 36.499893, 36.594292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917543, 36.451866, 36.816341>,  <29.788572, 36.371819, 37.186420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917543, 36.451866, 36.816341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224949, 0.965597, 0.130461,
		0.919478, 0.166059, 0.356350,
		0.322426, 0.200117, -0.925200,
		30.014271, 36.511902, 36.538780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265364, 36.064095, 37.774242>,  <29.788572, 36.371819, 37.186420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265364, 36.064095, 37.774242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463888, 35.717102, 37.787785>,  <30.583002, 35.508907, 37.795910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463888, 35.717102, 37.787785>,  <30.265364, 36.064095, 37.774242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463888, 35.717102, 37.787785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866348, 0.497415, 0.044940,
		-0.055827, 0.007030, 0.998416,
		0.496311, -0.867484, 0.033860,
		30.612782, 35.456856, 37.797943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697079, 36.036247, 38.394714>,  <30.265364, 36.064095, 37.774242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697079, 36.036247, 38.394714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839226, 35.813942, 38.094090>,  <30.924513, 35.680557, 37.913715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839226, 35.813942, 38.094090>,  <30.697079, 36.036247, 38.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839226, 35.813942, 38.094090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920976, 0.345592, 0.179914,
		0.159744, -0.756105, 0.634655,
		0.355366, -0.555762, -0.751561,
		30.945835, 35.647213, 37.868622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045280, 35.321251, 38.393982>,  <30.697079, 36.036247, 38.394714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045280, 35.321251, 38.393982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183298, 35.577232, 38.119347>,  <31.266108, 35.730820, 37.954563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183298, 35.577232, 38.119347>,  <31.045280, 35.321251, 38.393982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183298, 35.577232, 38.119347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898893, -0.014822, 0.437918,
		0.270070, -0.768271, -0.580363,
		0.345042, 0.639953, -0.686590,
		31.286810, 35.769218, 37.913368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422302, 36.028610, 38.384991>,  <31.045280, 35.321251, 38.393982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422302, 36.028610, 38.384991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210405, 36.366474, 38.415779>,  <31.083267, 36.569191, 38.434250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210405, 36.366474, 38.415779>,  <31.422302, 36.028610, 38.384991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210405, 36.366474, 38.415779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767178, 0.438492, 0.468148,
		0.361675, 0.307047, -0.880292,
		-0.529745, 0.844658, 0.076968,
		31.051481, 36.619873, 38.438869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638332, 36.630703, 37.953705>,  <31.422302, 36.028610, 38.384991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638332, 36.630703, 37.953705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453398, 36.765663, 38.281708>,  <31.342438, 36.846638, 38.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453398, 36.765663, 38.281708>,  <31.638332, 36.630703, 37.953705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453398, 36.765663, 38.281708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784319, 0.586998, 0.200691,
		-0.413628, 0.735932, -0.536018,
		-0.462337, 0.337398, 0.820005,
		31.314697, 36.866882, 38.527710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845606, 37.212551, 37.388073>,  <31.638332, 36.630703, 37.953705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845606, 37.212551, 37.388073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661179, 36.868450, 37.301003>,  <31.550522, 36.661991, 37.248760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661179, 36.868450, 37.301003>,  <31.845606, 37.212551, 37.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661179, 36.868450, 37.301003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279439, 0.092063, -0.955740,
		0.842217, -0.501488, 0.197940,
		-0.461069, -0.860252, -0.217673,
		31.522858, 36.610374, 37.235703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153271, 36.557693, 37.121887>,  <31.845606, 37.212551, 37.388073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153271, 36.557693, 37.121887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788593, 36.509621, 36.964729>,  <31.569786, 36.480778, 36.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788593, 36.509621, 36.964729>,  <32.153271, 36.557693, 37.121887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788593, 36.509621, 36.964729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406301, -0.121603, -0.905612,
		0.061061, -0.985276, 0.159695,
		-0.911697, -0.120182, -0.392893,
		31.515083, 36.473568, 36.846863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294140, 36.279335, 36.440910>,  <32.153271, 36.557693, 37.121887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294140, 36.279335, 36.440910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894657, 36.270470, 36.422596>,  <31.654968, 36.265152, 36.411610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894657, 36.270470, 36.422596>,  <32.294140, 36.279335, 36.440910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894657, 36.270470, 36.422596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048486, -0.142812, -0.988562,
		0.015371, -0.989502, 0.143702,
		-0.998705, -0.022162, -0.045782,
		31.595045, 36.263821, 36.408863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175491, 35.703747, 36.242477>,  <32.294140, 36.279335, 36.440910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175491, 35.703747, 36.242477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850185, 35.914883, 36.144516>,  <31.655001, 36.041565, 36.085739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850185, 35.914883, 36.144516>,  <32.175491, 35.703747, 36.242477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850185, 35.914883, 36.144516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049618, -0.356436, -0.933001,
		-0.579769, -0.770932, 0.263688,
		-0.813269, 0.527842, -0.244903,
		31.606205, 36.073235, 36.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874846, 35.345108, 35.715542>,  <32.175491, 35.703747, 36.242477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874846, 35.345108, 35.715542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674597, 35.688110, 35.668121>,  <31.554447, 35.893913, 35.639668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674597, 35.688110, 35.668121>,  <31.874846, 35.345108, 35.715542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674597, 35.688110, 35.668121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121385, -0.066062, -0.990405,
		-0.857114, -0.510207, -0.071017,
		-0.500620, 0.857510, -0.118554,
		31.524410, 35.945362, 35.632557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295460, 35.379536, 35.219574>,  <31.874846, 35.345108, 35.715542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295460, 35.379536, 35.219574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463484, 35.742496, 35.224812>,  <31.564299, 35.960274, 35.227955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463484, 35.742496, 35.224812>,  <31.295460, 35.379536, 35.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463484, 35.742496, 35.224812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095020, -0.029630, -0.995034,
		-0.902507, 0.419220, -0.098668,
		0.420062, 0.907401, 0.013093,
		31.589502, 36.014717, 35.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888210, 35.887978, 34.826809>,  <31.295460, 35.379536, 35.219574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888210, 35.887978, 34.826809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264418, 36.023155, 34.840740>,  <31.490143, 36.104263, 34.849098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264418, 36.023155, 34.840740>,  <30.888210, 35.887978, 34.826809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264418, 36.023155, 34.840740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002214, 0.096411, -0.995339,
		-0.339729, 0.936214, 0.089929,
		0.940521, 0.337947, 0.034826,
		31.546574, 36.124538, 34.851189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920551, 36.497604, 34.511536>,  <30.888210, 35.887978, 34.826809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920551, 36.497604, 34.511536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287184, 36.343594, 34.468388>,  <31.507164, 36.251186, 34.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287184, 36.343594, 34.468388>,  <30.920551, 36.497604, 34.511536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287184, 36.343594, 34.468388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011888, 0.295896, -0.955146,
		0.399673, 0.874186, 0.275789,
		0.916581, -0.385024, -0.107869,
		31.562159, 36.228085, 34.436028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191246, 37.029587, 34.143852>,  <30.920551, 36.497604, 34.511536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191246, 37.029587, 34.143852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471863, 36.748756, 34.094990>,  <31.640234, 36.580257, 34.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471863, 36.748756, 34.094990>,  <31.191246, 37.029587, 34.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471863, 36.748756, 34.094990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047605, 0.217206, -0.974964,
		0.711035, 0.678164, 0.185802,
		0.701543, -0.702079, -0.122157,
		31.682325, 36.538132, 34.058342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653894, 37.352184, 33.813709>,  <31.191246, 37.029587, 34.143852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653894, 37.352184, 33.813709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709223, 36.962574, 33.742001>,  <31.742420, 36.728806, 33.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709223, 36.962574, 33.742001>,  <31.653894, 37.352184, 33.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709223, 36.962574, 33.742001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295981, 0.213392, -0.931053,
		0.945126, 0.075724, 0.317810,
		0.138321, -0.974028, -0.179270,
		31.750719, 36.670364, 33.688221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292747, 37.391785, 33.469452>,  <31.653894, 37.352184, 33.813709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292747, 37.391785, 33.469452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088474, 37.059452, 33.380978>,  <31.965910, 36.860054, 33.327892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088474, 37.059452, 33.380978>,  <32.292747, 37.391785, 33.469452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088474, 37.059452, 33.380978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164277, 0.158230, -0.973641,
		0.843928, -0.533560, 0.055680,
		-0.510686, -0.830829, -0.221186,
		31.935268, 36.810204, 33.314621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843727, 36.954739, 33.186176>,  <32.292747, 37.391785, 33.469452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843727, 36.954739, 33.186176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504280, 36.794308, 33.048203>,  <32.300610, 36.698048, 32.965420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504280, 36.794308, 33.048203>,  <32.843727, 36.954739, 33.186176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504280, 36.794308, 33.048203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411248, -0.090048, -0.907065,
		0.332745, -0.911606, 0.241360,
		-0.848620, -0.401080, -0.344933,
		32.249695, 36.673985, 32.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032215, 36.321255, 32.849392>,  <32.843727, 36.954739, 33.186176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032215, 36.321255, 32.849392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664513, 36.357819, 32.696236>,  <32.443890, 36.379757, 32.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664513, 36.357819, 32.696236>,  <33.032215, 36.321255, 32.849392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664513, 36.357819, 32.696236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356937, -0.216604, -0.908669,
		-0.166000, -0.971970, 0.166487,
		-0.919261, 0.091414, -0.382888,
		32.388733, 36.385242, 32.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901131, 35.676846, 32.390415>,  <33.032215, 36.321255, 32.849392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901131, 35.676846, 32.390415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661442, 35.970013, 32.261566>,  <32.517628, 36.145912, 32.184258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661442, 35.970013, 32.261566>,  <32.901131, 35.676846, 32.390415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661442, 35.970013, 32.261566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392663, -0.081582, -0.916057,
		-0.697675, -0.675407, -0.238904,
		-0.599221, 0.732919, -0.322125,
		32.481674, 36.189888, 32.164928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734833, 35.481915, 31.670446>,  <32.901131, 35.676846, 32.390415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734833, 35.481915, 31.670446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622673, 35.865597, 31.684914>,  <32.555378, 36.095806, 31.693594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622673, 35.865597, 31.684914>,  <32.734833, 35.481915, 31.670446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622673, 35.865597, 31.684914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202711, 0.096004, -0.974521,
		-0.938236, -0.265920, -0.221361,
		-0.280396, 0.959203, 0.036170,
		32.538555, 36.153358, 31.695765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512218, 35.717278, 31.043945>,  <32.734833, 35.481915, 31.670446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512218, 35.717278, 31.043945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577999, 36.080757, 31.197426>,  <32.617470, 36.298843, 31.289515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577999, 36.080757, 31.197426>,  <32.512218, 35.717278, 31.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577999, 36.080757, 31.197426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263675, 0.334341, -0.904816,
		-0.950489, 0.249975, -0.184616,
		0.164456, 0.908696, 0.383700,
		32.627335, 36.353367, 31.312536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163319, 36.230259, 30.577499>,  <32.512218, 35.717278, 31.043945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163319, 36.230259, 30.577499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439079, 36.420193, 30.796318>,  <32.604534, 36.534153, 30.927610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439079, 36.420193, 30.796318>,  <32.163319, 36.230259, 30.577499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439079, 36.420193, 30.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330959, 0.465296, -0.820954,
		-0.644354, 0.747017, 0.163625,
		0.689400, 0.474832, 0.547048,
		32.645901, 36.562641, 30.960432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072163, 36.966854, 30.522820>,  <32.163319, 36.230259, 30.577499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072163, 36.966854, 30.522820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455547, 36.879063, 30.595684>,  <32.685577, 36.826389, 30.639402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455547, 36.879063, 30.595684>,  <32.072163, 36.966854, 30.522820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455547, 36.879063, 30.595684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271664, 0.507851, -0.817488,
		0.086911, 0.833016, 0.546379,
		0.958460, -0.219480, 0.182162,
		32.743084, 36.813217, 30.650333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390533, 37.533504, 30.218403>,  <32.072163, 36.966854, 30.522820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390533, 37.533504, 30.218403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717007, 37.320206, 30.307383>,  <32.912891, 37.192226, 30.360769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717007, 37.320206, 30.307383>,  <32.390533, 37.533504, 30.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717007, 37.320206, 30.307383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477922, 0.406720, -0.778569,
		0.324697, 0.741771, 0.586812,
		0.816188, -0.533249, 0.222448,
		32.961864, 37.160233, 30.374117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899940, 37.960159, 30.594929>,  <32.390533, 37.533504, 30.218403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899940, 37.960159, 30.594929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076035, 37.656273, 30.403502>,  <33.181690, 37.473942, 30.288645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076035, 37.656273, 30.403502>,  <32.899940, 37.960159, 30.594929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076035, 37.656273, 30.403502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438702, 0.647045, -0.623598,
		0.783410, 0.064582, 0.618140,
		0.440237, -0.759712, -0.478570,
		33.208107, 37.428360, 30.259932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542614, 38.215511, 30.398470>,  <32.899940, 37.960159, 30.594929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542614, 38.215511, 30.398470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502323, 37.896481, 30.160572>,  <33.478149, 37.705063, 30.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502323, 37.896481, 30.160572>,  <33.542614, 38.215511, 30.398470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502323, 37.896481, 30.160572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501286, 0.475678, -0.722802,
		0.859398, -0.370946, 0.351900,
		-0.100729, -0.797578, -0.594747,
		33.472103, 37.657207, 29.982147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167736, 38.212597, 30.100918>,  <33.542614, 38.215511, 30.398470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167736, 38.212597, 30.100918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925735, 37.991112, 29.872049>,  <33.780537, 37.858219, 29.734728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925735, 37.991112, 29.872049>,  <34.167736, 38.212597, 30.100918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925735, 37.991112, 29.872049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388492, 0.421980, -0.819150,
		0.695019, -0.717868, -0.040184,
		-0.604998, -0.553714, -0.572170,
		33.744236, 37.824997, 29.700397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616783, 37.879894, 29.596062>,  <34.167736, 38.212597, 30.100918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616783, 37.879894, 29.596062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244129, 37.905544, 29.452986>,  <34.020538, 37.920933, 29.367140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244129, 37.905544, 29.452986>,  <34.616783, 37.879894, 29.596062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244129, 37.905544, 29.452986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354543, 0.376281, -0.855986,
		0.079703, -0.924284, -0.373291,
		-0.931636, 0.064123, -0.357690,
		33.964638, 37.924782, 29.345678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746437, 37.765141, 28.955070>,  <34.616783, 37.879894, 29.596062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746437, 37.765141, 28.955070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372112, 37.906078, 28.950764>,  <34.147518, 37.990643, 28.948179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372112, 37.906078, 28.950764>,  <34.746437, 37.765141, 28.955070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372112, 37.906078, 28.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142561, 0.350348, -0.925706,
		-0.322396, -0.867819, -0.378089,
		-0.935808, 0.352345, -0.010766,
		34.091370, 38.011784, 28.947535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470573, 37.542130, 28.185415>,  <34.746437, 37.765141, 28.955070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470573, 37.542130, 28.185415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272861, 37.851120, 28.344902>,  <34.154236, 38.036514, 28.440594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272861, 37.851120, 28.344902>,  <34.470573, 37.542130, 28.185415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272861, 37.851120, 28.344902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049199, 0.482786, -0.874355,
		-0.867911, -0.412558, -0.276635,
		-0.494278, 0.772473, 0.398718,
		34.124577, 38.082863, 28.464518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979797, 37.758263, 27.635197>,  <34.470573, 37.542130, 28.185415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979797, 37.758263, 27.635197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996239, 38.079239, 27.873323>,  <34.006104, 38.271824, 28.016199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996239, 38.079239, 27.873323>,  <33.979797, 37.758263, 27.635197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996239, 38.079239, 27.873323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202205, 0.576811, -0.791455,
		-0.978480, 0.152908, -0.138548,
		0.041104, 0.802439, 0.595317,
		34.008572, 38.319969, 28.051918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709267, 38.370949, 27.276871>,  <33.979797, 37.758263, 27.635197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709267, 38.370949, 27.276871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933266, 38.534725, 27.564972>,  <34.067665, 38.632992, 27.737833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933266, 38.534725, 27.564972>,  <33.709267, 38.370949, 27.276871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933266, 38.534725, 27.564972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241816, 0.750723, -0.614768,
		-0.792422, 0.518435, 0.321391,
		0.559993, 0.409438, 0.720255,
		34.101265, 38.657558, 27.781048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588097, 39.058418, 27.103207>,  <33.709267, 38.370949, 27.276871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588097, 39.058418, 27.103207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918381, 39.046139, 27.328508>,  <34.116550, 39.038773, 27.463690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918381, 39.046139, 27.328508>,  <33.588097, 39.058418, 27.103207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918381, 39.046139, 27.328508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466049, 0.599680, -0.650524,
		-0.317803, 0.799650, 0.509471,
		0.825711, -0.030700, 0.563257,
		34.166096, 39.036930, 27.497486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752483, 39.747372, 27.075603>,  <33.588097, 39.058418, 27.103207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752483, 39.747372, 27.075603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068211, 39.560928, 27.235460>,  <34.257648, 39.449062, 27.331373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068211, 39.560928, 27.235460>,  <33.752483, 39.747372, 27.075603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068211, 39.560928, 27.235460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612216, 0.646830, -0.454756,
		-0.046533, 0.603615, 0.795917,
		0.789320, -0.466112, 0.399641,
		34.305008, 39.421093, 27.355352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081562, 40.240276, 27.399460>,  <33.752483, 39.747372, 27.075603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081562, 40.240276, 27.399460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360760, 39.961273, 27.334606>,  <34.528278, 39.793873, 27.295694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360760, 39.961273, 27.334606>,  <34.081562, 40.240276, 27.399460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360760, 39.961273, 27.334606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600184, 0.693317, -0.398862,
		0.390620, 0.181093, 0.902564,
		0.697994, -0.697508, -0.162135,
		34.570156, 39.752022, 27.285965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725822, 40.446880, 27.694857>,  <34.081562, 40.240276, 27.399460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725822, 40.446880, 27.694857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802105, 40.191563, 27.396538>,  <34.847874, 40.038372, 27.217546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802105, 40.191563, 27.396538>,  <34.725822, 40.446880, 27.694857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802105, 40.191563, 27.396538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680609, 0.633457, -0.368108,
		0.707390, -0.437394, 0.555235,
		0.190709, -0.638294, -0.745796,
		34.859318, 40.000076, 27.172798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506176, 40.534248, 27.583147>,  <34.725822, 40.446880, 27.694857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506176, 40.534248, 27.583147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340717, 40.374313, 27.255970>,  <35.241444, 40.278351, 27.059664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340717, 40.374313, 27.255970>,  <35.506176, 40.534248, 27.583147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340717, 40.374313, 27.255970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680664, 0.460837, -0.569495,
		0.604644, -0.792312, 0.081534,
		-0.413644, -0.399839, -0.817941,
		35.216625, 40.254360, 27.010588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030148, 40.249100, 27.115047>,  <35.506176, 40.534248, 27.583147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030148, 40.249100, 27.115047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719315, 40.288486, 26.866390>,  <35.532814, 40.312119, 26.717196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719315, 40.288486, 26.866390>,  <36.030148, 40.249100, 27.115047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719315, 40.288486, 26.866390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605481, 0.386622, -0.695641,
		0.171845, -0.916967, -0.360057,
		-0.777086, 0.098465, -0.621645,
		35.486191, 40.318027, 26.679897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361000, 40.098557, 26.507622>,  <36.030148, 40.249100, 27.115047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361000, 40.098557, 26.507622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029663, 40.299053, 26.407532>,  <35.830860, 40.419350, 26.347479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029663, 40.299053, 26.407532>,  <36.361000, 40.098557, 26.507622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029663, 40.299053, 26.407532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475209, 0.392110, -0.787671,
		-0.296697, -0.771368, -0.562994,
		-0.828340, 0.501240, -0.250223,
		35.781162, 40.449425, 26.332464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370510, 40.164692, 25.813803>,  <36.361000, 40.098557, 26.507622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370510, 40.164692, 25.813803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103001, 40.436039, 25.935497>,  <35.942497, 40.598846, 26.008514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103001, 40.436039, 25.935497>,  <36.370510, 40.164692, 25.813803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103001, 40.436039, 25.935497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411525, 0.678574, -0.608428,
		-0.619186, -0.281698, -0.732977,
		-0.668772, 0.678368, 0.304238,
		35.902370, 40.639549, 26.026768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069668, 40.376225, 25.142424>,  <36.370510, 40.164692, 25.813803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069668, 40.376225, 25.142424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993511, 40.647274, 25.426558>,  <35.947819, 40.809906, 25.597038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993511, 40.647274, 25.426558>,  <36.069668, 40.376225, 25.142424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993511, 40.647274, 25.426558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215308, 0.734775, -0.643233,
		-0.957807, 0.030475, -0.285793,
		-0.190391, 0.677627, 0.710333,
		35.936394, 40.850563, 25.639658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630211, 40.876801, 24.864191>,  <36.069668, 40.376225, 25.142424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630211, 40.876801, 24.864191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800613, 41.075096, 25.166916>,  <35.902855, 41.194073, 25.348551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800613, 41.075096, 25.166916>,  <35.630211, 40.876801, 24.864191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800613, 41.075096, 25.166916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133895, 0.792756, -0.594651,
		-0.894759, 0.354656, 0.271340,
		0.426003, 0.495738, 0.756812,
		35.928413, 41.223816, 25.393959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303001, 41.564129, 24.905653>,  <35.630211, 40.876801, 24.864191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303001, 41.564129, 24.905653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654121, 41.606804, 25.092451>,  <35.864792, 41.632408, 25.204529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654121, 41.606804, 25.092451>,  <35.303001, 41.564129, 24.905653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654121, 41.606804, 25.092451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210157, 0.790282, -0.575576,
		-0.430465, 0.603383, 0.671288,
		0.877800, 0.106689, 0.466994,
		35.917461, 41.638809, 25.232550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387684, 42.213127, 24.829300>,  <35.303001, 41.564129, 24.905653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387684, 42.213127, 24.829300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751133, 42.078598, 24.928335>,  <35.969200, 41.997883, 24.987757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751133, 42.078598, 24.928335>,  <35.387684, 42.213127, 24.829300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751133, 42.078598, 24.928335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415995, 0.781191, -0.465498,
		-0.036856, 0.525955, 0.849713,
		0.908620, -0.336320, 0.247587,
		36.023720, 41.977703, 25.002611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760815, 42.754322, 25.163527>,  <35.387684, 42.213127, 24.829300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760815, 42.754322, 25.163527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056042, 42.519920, 25.029751>,  <36.233177, 42.379280, 24.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056042, 42.519920, 25.029751>,  <35.760815, 42.754322, 25.163527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056042, 42.519920, 25.029751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337440, 0.749814, -0.569134,
		0.584284, 0.307207, 0.751156,
		0.738069, -0.586006, -0.334440,
		36.277462, 42.344120, 24.929419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319820, 43.063953, 25.252598>,  <35.760815, 42.754322, 25.163527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319820, 43.063953, 25.252598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409836, 42.809719, 24.957195>,  <36.463844, 42.657181, 24.779953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409836, 42.809719, 24.957195>,  <36.319820, 43.063953, 25.252598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409836, 42.809719, 24.957195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352396, 0.759731, -0.546466,
		0.908391, -0.137270, 0.394947,
		0.225041, -0.635583, -0.738506,
		36.477348, 42.619045, 24.735643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956738, 43.254593, 25.172928>,  <36.319820, 43.063953, 25.252598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956738, 43.254593, 25.172928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869698, 43.057968, 24.835640>,  <36.817474, 42.939995, 24.633266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869698, 43.057968, 24.835640>,  <36.956738, 43.254593, 25.172928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869698, 43.057968, 24.835640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314879, 0.782375, -0.537347,
		0.923851, -0.382440, -0.015466,
		-0.217603, -0.491558, -0.843220,
		36.804417, 42.910500, 24.582674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492538, 43.344570, 24.746861>,  <36.956738, 43.254593, 25.172928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492538, 43.344570, 24.746861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189335, 43.262123, 24.499332>,  <37.007412, 43.212654, 24.350817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189335, 43.262123, 24.499332>,  <37.492538, 43.344570, 24.746861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189335, 43.262123, 24.499332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288766, 0.744656, -0.601749,
		0.584836, -0.634826, -0.504938,
		-0.758011, -0.206115, -0.618818,
		36.961933, 43.200287, 24.313686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818237, 43.277058, 23.959618>,  <37.492538, 43.344570, 24.746861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818237, 43.277058, 23.959618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425716, 43.339119, 23.914074>,  <37.190205, 43.376358, 23.886747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425716, 43.339119, 23.914074>,  <37.818237, 43.277058, 23.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425716, 43.339119, 23.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187756, 0.641994, -0.743365,
		-0.042241, -0.750847, -0.659125,
		-0.981307, 0.155155, -0.113857,
		37.131325, 43.385666, 23.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701977, 43.250362, 23.238615>,  <37.818237, 43.277058, 23.959618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701977, 43.250362, 23.238615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390598, 43.456879, 23.381428>,  <37.203770, 43.580788, 23.467115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390598, 43.456879, 23.381428>,  <37.701977, 43.250362, 23.238615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390598, 43.456879, 23.381428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085453, 0.650649, -0.754555,
		-0.621870, -0.556870, -0.550612,
		-0.778445, 0.516286, 0.357033,
		37.157066, 43.611763, 23.488537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261917, 43.416977, 22.625313>,  <37.701977, 43.250362, 23.238615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261917, 43.416977, 22.625313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132065, 43.655350, 22.919111>,  <37.054153, 43.798374, 23.095390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132065, 43.655350, 22.919111>,  <37.261917, 43.416977, 22.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132065, 43.655350, 22.919111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106277, 0.794617, -0.597737,
		-0.939853, -0.115981, -0.321287,
		-0.324626, 0.595930, 0.734497,
		37.034676, 43.834129, 23.139460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732616, 43.924267, 22.261646>,  <37.261917, 43.416977, 22.625313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732616, 43.924267, 22.261646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889950, 44.068836, 22.599796>,  <36.984352, 44.155579, 22.802687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889950, 44.068836, 22.599796>,  <36.732616, 43.924267, 22.261646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889950, 44.068836, 22.599796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063205, 0.906686, -0.417043,
		-0.917219, 0.217471, 0.333789,
		0.393336, 0.361423, 0.845376,
		37.007950, 44.177261, 22.853409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425049, 44.552654, 22.316736>,  <36.732616, 43.924267, 22.261646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425049, 44.552654, 22.316736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763618, 44.548271, 22.529694>,  <36.966763, 44.545639, 22.657467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763618, 44.548271, 22.529694>,  <36.425049, 44.552654, 22.316736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763618, 44.548271, 22.529694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239870, 0.900458, -0.362820,
		-0.475420, 0.434805, 0.764801,
		0.846427, -0.010961, 0.532392,
		37.017548, 44.544983, 22.689411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467766, 45.129723, 22.668093>,  <36.425049, 44.552654, 22.316736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467766, 45.129723, 22.668093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833626, 45.003345, 22.567226>,  <37.053143, 44.927517, 22.506706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833626, 45.003345, 22.567226>,  <36.467766, 45.129723, 22.668093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833626, 45.003345, 22.567226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127108, 0.816948, -0.562530,
		0.383737, 0.482467, 0.787383,
		0.914653, -0.315946, -0.252168,
		37.108021, 44.908562, 22.491575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935211, 45.753834, 22.711233>,  <36.467766, 45.129723, 22.668093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935211, 45.753834, 22.711233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087994, 45.477039, 22.466196>,  <37.179661, 45.310963, 22.319174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087994, 45.477039, 22.466196>,  <36.935211, 45.753834, 22.711233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087994, 45.477039, 22.466196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052059, 0.677905, -0.733303,
		0.922715, 0.248195, 0.294951,
		0.381951, -0.691985, -0.612593,
		37.202579, 45.269444, 22.282417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544659, 45.937214, 23.116524>,  <36.935211, 45.753834, 22.711233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544659, 45.937214, 23.116524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830772, 46.091331, 23.349731>,  <38.002441, 46.183804, 23.489656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830772, 46.091331, 23.349731>,  <37.544659, 45.937214, 23.116524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830772, 46.091331, 23.349731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102296, 0.883021, -0.458049,
		-0.691303, 0.267996, 0.671028,
		0.715287, 0.385294, 0.583020,
		38.045357, 46.206921, 23.524637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337875, 46.609715, 23.360405>,  <37.544659, 45.937214, 23.116524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337875, 46.609715, 23.360405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735790, 46.597332, 23.321539>,  <37.974541, 46.589901, 23.298220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735790, 46.597332, 23.321539>,  <37.337875, 46.609715, 23.360405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735790, 46.597332, 23.321539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040626, 0.753638, -0.656033,
		0.093537, 0.656560, 0.748452,
		0.994787, -0.030957, -0.097166,
		38.034225, 46.588043, 23.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889347, 47.229084, 23.412477>,  <37.337875, 46.609715, 23.360405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889347, 47.229084, 23.412477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954121, 46.947983, 23.135374>,  <37.992985, 46.779320, 22.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954121, 46.947983, 23.135374>,  <37.889347, 47.229084, 23.412477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954121, 46.947983, 23.135374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285459, 0.638649, -0.714590,
		0.944612, 0.313469, -0.097190,
		0.161931, -0.702754, -0.692758,
		38.002701, 46.737156, 22.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352234, 47.414665, 22.864357>,  <37.889347, 47.229084, 23.412477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352234, 47.414665, 22.864357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119305, 47.132545, 22.702642>,  <37.979546, 46.963272, 22.605614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119305, 47.132545, 22.702642>,  <38.352234, 47.414665, 22.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119305, 47.132545, 22.702642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171495, 0.592688, -0.786963,
		0.794661, -0.388936, -0.466093,
		-0.582326, -0.705301, -0.404286,
		37.944607, 46.920956, 22.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720356, 47.093151, 22.264439>,  <38.352234, 47.414665, 22.864357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720356, 47.093151, 22.264439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320522, 47.104706, 22.264671>,  <38.080624, 47.111637, 22.264811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320522, 47.104706, 22.264671>,  <38.720356, 47.093151, 22.264439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320522, 47.104706, 22.264671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023426, 0.822039, -0.568949,
		-0.016913, -0.568698, -0.822373,
		-0.999583, 0.028888, 0.000581,
		38.020649, 47.113373, 22.264845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984314, 46.426743, 22.541788>,  <38.720356, 47.093151, 22.264439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984314, 46.426743, 22.541788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774158, 46.658058, 22.791445>,  <38.648064, 46.796848, 22.941238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774158, 46.658058, 22.791445>,  <38.984314, 46.426743, 22.541788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774158, 46.658058, 22.791445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001961, -0.734361, 0.678756,
		0.850860, 0.355388, 0.386959,
		-0.525389, 0.578285, 0.624141,
		38.616543, 46.831543, 22.978687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325020, 46.501801, 23.208860>,  <38.984314, 46.426743, 22.541788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325020, 46.501801, 23.208860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927795, 46.532661, 23.244343>,  <38.689461, 46.551178, 23.265633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927795, 46.532661, 23.244343>,  <39.325020, 46.501801, 23.208860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927795, 46.532661, 23.244343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002358, -0.767434, 0.641123,
		0.117542, 0.636468, 0.762294,
		-0.993065, 0.077156, 0.088705,
		38.629875, 46.555809, 23.270954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190838, 46.569096, 23.901201>,  <39.325020, 46.501801, 23.208860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190838, 46.569096, 23.901201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843029, 46.428917, 23.761990>,  <38.634342, 46.344810, 23.678463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843029, 46.428917, 23.761990>,  <39.190838, 46.569096, 23.901201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843029, 46.428917, 23.761990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054687, -0.632009, 0.773029,
		-0.490859, 0.691198, 0.530380,
		-0.869521, -0.350444, -0.348027,
		38.582172, 46.323784, 23.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550358, 46.742615, 24.326258>,  <39.190838, 46.569096, 23.901201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550358, 46.742615, 24.326258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525768, 46.403156, 24.116106>,  <38.511013, 46.199482, 23.990015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525768, 46.403156, 24.116106>,  <38.550358, 46.742615, 24.326258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525768, 46.403156, 24.116106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337139, -0.477782, 0.811210,
		-0.939445, 0.226998, -0.256737,
		-0.061479, -0.848644, -0.525380,
		38.507324, 46.148563, 23.958492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014500, 46.513416, 24.656414>,  <38.550358, 46.742615, 24.326258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014500, 46.513416, 24.656414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177227, 46.204453, 24.461321>,  <38.274864, 46.019073, 24.344265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177227, 46.204453, 24.461321>,  <38.014500, 46.513416, 24.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177227, 46.204453, 24.461321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398316, -0.630469, 0.666223,
		-0.822098, -0.076758, -0.564148,
		0.406816, -0.772410, -0.487734,
		38.299271, 45.972729, 24.315001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570732, 46.031559, 24.749905>,  <38.014500, 46.513416, 24.656414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570732, 46.031559, 24.749905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878899, 45.805489, 24.631897>,  <38.063797, 45.669846, 24.561092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878899, 45.805489, 24.631897>,  <37.570732, 46.031559, 24.749905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878899, 45.805489, 24.631897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215768, -0.666578, 0.713525,
		-0.599921, -0.486054, -0.635489,
		0.770415, -0.565176, -0.295019,
		38.110023, 45.635937, 24.543390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307007, 45.314545, 24.593121>,  <37.570732, 46.031559, 24.749905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307007, 45.314545, 24.593121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685249, 45.327686, 24.722584>,  <37.912193, 45.335571, 24.800262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685249, 45.327686, 24.722584>,  <37.307007, 45.314545, 24.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685249, 45.327686, 24.722584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217776, -0.675166, 0.704787,
		0.241675, -0.736934, -0.631285,
		0.945604, 0.032850, 0.323658,
		37.968929, 45.337540, 24.819681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366737, 44.564617, 24.753086>,  <37.307007, 45.314545, 24.593121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366737, 44.564617, 24.753086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702312, 44.737106, 24.885895>,  <37.903656, 44.840599, 24.965580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702312, 44.737106, 24.885895>,  <37.366737, 44.564617, 24.753086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702312, 44.737106, 24.885895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070602, -0.691149, 0.719256,
		0.539633, -0.579967, -0.610273,
		0.838935, 0.431221, 0.332020,
		37.953995, 44.866474, 24.985500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912090, 44.076885, 24.683346>,  <37.366737, 44.564617, 24.753086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912090, 44.076885, 24.683346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001801, 44.353390, 24.958115>,  <38.055626, 44.519291, 25.122976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001801, 44.353390, 24.958115>,  <37.912090, 44.076885, 24.683346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001801, 44.353390, 24.958115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088461, -0.716406, 0.692052,
		0.970504, -0.094442, -0.221819,
		0.224271, 0.691262, 0.686921,
		38.069080, 44.560768, 25.164190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452408, 43.756027, 25.157343>,  <37.912090, 44.076885, 24.683346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452408, 43.756027, 25.157343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311436, 44.036221, 25.405575>,  <38.226852, 44.204338, 25.554514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311436, 44.036221, 25.405575>,  <38.452408, 43.756027, 25.157343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311436, 44.036221, 25.405575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007755, -0.665289, 0.746545,
		0.935806, 0.258292, 0.239899,
		-0.352429, 0.700483, 0.620579,
		38.205708, 44.246365, 25.591749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769135, 43.612053, 25.740271>,  <38.452408, 43.756027, 25.157343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769135, 43.612053, 25.740271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450802, 43.833801, 25.837700>,  <38.259804, 43.966850, 25.896158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450802, 43.833801, 25.837700>,  <38.769135, 43.612053, 25.740271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450802, 43.833801, 25.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093138, -0.509539, 0.855392,
		0.598312, 0.658063, 0.457139,
		-0.795832, 0.554368, 0.243573,
		38.212051, 44.000111, 25.910772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856003, 43.824451, 26.456997>,  <38.769135, 43.612053, 25.740271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856003, 43.824451, 26.456997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459541, 43.866043, 26.423983>,  <38.221664, 43.890999, 26.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459541, 43.866043, 26.423983>,  <38.856003, 43.824451, 26.456997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459541, 43.866043, 26.423983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125242, -0.526243, 0.841061,
		0.044018, 0.843953, 0.534607,
		-0.991149, 0.103977, -0.082534,
		38.162197, 43.897236, 26.399223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574699, 43.910515, 27.094191>,  <38.856003, 43.824451, 26.456997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574699, 43.910515, 27.094191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271667, 43.773598, 26.871874>,  <38.089848, 43.691448, 26.738483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271667, 43.773598, 26.871874>,  <38.574699, 43.910515, 27.094191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271667, 43.773598, 26.871874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416781, -0.401648, 0.815459,
		-0.502359, 0.849420, 0.161620,
		-0.757581, -0.342293, -0.555793,
		38.044392, 43.670910, 26.705135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986206, 44.040428, 27.417913>,  <38.574699, 43.910515, 27.094191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986206, 44.040428, 27.417913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892365, 43.733704, 27.178930>,  <37.836060, 43.549667, 27.035542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892365, 43.733704, 27.178930>,  <37.986206, 44.040428, 27.417913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892365, 43.733704, 27.178930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364724, -0.500274, 0.785304,
		-0.901074, 0.402146, -0.162307,
		-0.234609, -0.766815, -0.597456,
		37.821983, 43.503658, 26.999693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348110, 43.947201, 27.546612>,  <37.986206, 44.040428, 27.417913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348110, 43.947201, 27.546612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432503, 43.599934, 27.366934>,  <37.483139, 43.391575, 27.259127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432503, 43.599934, 27.366934>,  <37.348110, 43.947201, 27.546612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432503, 43.599934, 27.366934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579402, -0.481179, 0.657844,
		-0.787261, 0.121472, -0.604536,
		0.210981, -0.868165, -0.449195,
		37.495796, 43.339485, 27.232176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646885, 43.551598, 27.383301>,  <37.348110, 43.947201, 27.546612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646885, 43.551598, 27.383301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935360, 43.275063, 27.365652>,  <37.108444, 43.109142, 27.355062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935360, 43.275063, 27.365652>,  <36.646885, 43.551598, 27.383301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935360, 43.275063, 27.365652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593415, -0.649386, 0.475558,
		-0.357421, -0.316784, -0.878577,
		0.721185, -0.691336, -0.044120,
		37.151714, 43.067661, 27.352415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389156, 42.898956, 27.324408>,  <36.646885, 43.551598, 27.383301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389156, 42.898956, 27.324408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755348, 42.786720, 27.439762>,  <36.975063, 42.719379, 27.508976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755348, 42.786720, 27.439762>,  <36.389156, 42.898956, 27.324408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755348, 42.786720, 27.439762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400040, -0.557763, 0.727234,
		-0.043202, -0.781134, -0.622867,
		0.915479, -0.280590, 0.288388,
		37.029991, 42.702541, 27.526278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379631, 42.232952, 27.278614>,  <36.389156, 42.898956, 27.324408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379631, 42.232952, 27.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660625, 42.319061, 27.549957>,  <36.829224, 42.370728, 27.712763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660625, 42.319061, 27.549957>,  <36.379631, 42.232952, 27.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660625, 42.319061, 27.549957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391012, -0.679672, 0.620610,
		0.594657, -0.701217, -0.393290,
		0.702490, 0.215269, 0.678356,
		36.871372, 42.383640, 27.753464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755749, 41.496544, 27.512821>,  <36.379631, 42.232952, 27.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755749, 41.496544, 27.512821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799286, 41.784027, 27.787516>,  <36.825409, 41.956516, 27.952332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799286, 41.784027, 27.787516>,  <36.755749, 41.496544, 27.512821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799286, 41.784027, 27.787516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272084, -0.642918, 0.715980,
		0.956098, -0.264781, 0.125571,
		0.108846, 0.718713, 0.686735,
		36.831940, 41.999641, 27.993536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013977, 41.183243, 28.120161>,  <36.755749, 41.496544, 27.512821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013977, 41.183243, 28.120161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862129, 41.530243, 28.248743>,  <36.771019, 41.738441, 28.325891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862129, 41.530243, 28.248743>,  <37.013977, 41.183243, 28.120161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862129, 41.530243, 28.248743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318228, -0.448707, 0.835101,
		0.868687, 0.214727, 0.446402,
		-0.379622, 0.867499, 0.321453,
		36.748241, 41.790493, 28.345179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950214, 41.170666, 28.817240>,  <37.013977, 41.183243, 28.120161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950214, 41.170666, 28.817240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709904, 41.489918, 28.799109>,  <36.565720, 41.681469, 28.788229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709904, 41.489918, 28.799109>,  <36.950214, 41.170666, 28.817240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709904, 41.489918, 28.799109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378498, -0.234045, 0.895524,
		0.704137, 0.555165, 0.442699,
		-0.600775, 0.798132, -0.045329,
		36.529671, 41.729359, 28.785509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789154, 41.290977, 29.547649>,  <36.950214, 41.170666, 28.817240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789154, 41.290977, 29.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520794, 41.504704, 29.341967>,  <36.359779, 41.632938, 29.218557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520794, 41.504704, 29.341967>,  <36.789154, 41.290977, 29.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520794, 41.504704, 29.341967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710652, -0.265179, 0.651655,
		0.211829, 0.802616, 0.557617,
		-0.670896, 0.534311, -0.514208,
		36.319527, 41.664997, 29.187704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415253, 41.668194, 30.047457>,  <36.789154, 41.290977, 29.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415253, 41.668194, 30.047457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171364, 41.652061, 29.730822>,  <36.025032, 41.642384, 29.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171364, 41.652061, 29.730822>,  <36.415253, 41.668194, 30.047457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171364, 41.652061, 29.730822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736068, -0.341652, 0.584361,
		-0.294015, 0.938961, 0.178627,
		-0.609721, -0.040329, -0.791589,
		35.988449, 41.639961, 29.493345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805271, 42.084202, 30.197618>,  <36.415253, 41.668194, 30.047457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805271, 42.084202, 30.197618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721771, 41.797306, 29.931690>,  <35.671673, 41.625168, 29.772133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721771, 41.797306, 29.931690>,  <35.805271, 42.084202, 30.197618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721771, 41.797306, 29.931690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642818, -0.411685, 0.645988,
		-0.737027, 0.562209, -0.375117,
		-0.208750, -0.717242, -0.664821,
		35.659145, 41.582134, 29.732244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140762, 41.937710, 30.341610>,  <35.805271, 42.084202, 30.197618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140762, 41.937710, 30.341610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239323, 41.623688, 30.114286>,  <35.298458, 41.435276, 29.977892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239323, 41.623688, 30.114286>,  <35.140762, 41.937710, 30.341610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239323, 41.623688, 30.114286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661136, -0.564920, 0.493726,
		-0.708652, 0.254076, -0.658223,
		0.246399, -0.785055, -0.568310,
		35.313244, 41.388172, 29.943792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483326, 41.572090, 30.216648>,  <35.140762, 41.937710, 30.341610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483326, 41.572090, 30.216648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791233, 41.322716, 30.161814>,  <34.975975, 41.173092, 30.128914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791233, 41.322716, 30.161814>,  <34.483326, 41.572090, 30.216648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791233, 41.322716, 30.161814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444253, -0.677439, 0.586272,
		-0.458369, -0.390391, -0.798431,
		0.769764, -0.623434, -0.137085,
		35.022163, 41.135685, 30.120687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215210, 40.817825, 30.017134>,  <34.483326, 41.572090, 30.216648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215210, 40.817825, 30.017134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579472, 40.774643, 30.176662>,  <34.798027, 40.748734, 30.272379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579472, 40.774643, 30.176662>,  <34.215210, 40.817825, 30.017134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579472, 40.774643, 30.176662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368592, -0.648422, 0.666100,
		0.186693, -0.753587, -0.630279,
		0.910651, -0.107959, 0.398822,
		34.852669, 40.742256, 30.296309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298145, 40.143307, 30.312229>,  <34.215210, 40.817825, 30.017134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298145, 40.143307, 30.312229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604214, 40.319923, 30.499657>,  <34.787853, 40.425892, 30.612112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604214, 40.319923, 30.499657>,  <34.298145, 40.143307, 30.312229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604214, 40.319923, 30.499657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209373, -0.517573, 0.829627,
		0.608831, -0.732913, -0.303585,
		0.765172, 0.441540, 0.468567,
		34.833767, 40.452385, 30.640226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647968, 39.669804, 30.619812>,  <34.298145, 40.143307, 30.312229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647968, 39.669804, 30.619812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783215, 39.992268, 30.814043>,  <34.864365, 40.185745, 30.930582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783215, 39.992268, 30.814043>,  <34.647968, 39.669804, 30.619812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783215, 39.992268, 30.814043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114749, -0.476801, 0.871489,
		0.934082, -0.350385, -0.068709,
		0.338117, 0.806158, 0.485578,
		34.884651, 40.234116, 30.959717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094589, 39.386944, 31.181553>,  <34.647968, 39.669804, 30.619812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094589, 39.386944, 31.181553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977036, 39.750351, 31.300364>,  <34.906502, 39.968395, 31.371651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977036, 39.750351, 31.300364>,  <35.094589, 39.386944, 31.181553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977036, 39.750351, 31.300364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087851, -0.335109, 0.938075,
		0.951795, 0.249593, 0.178299,
		-0.293887, 0.908518, 0.297028,
		34.888870, 40.022907, 31.389471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498352, 39.614502, 31.844780>,  <35.094589, 39.386944, 31.181553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498352, 39.614502, 31.844780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162003, 39.830967, 31.848368>,  <34.960194, 39.960846, 31.850521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162003, 39.830967, 31.848368>,  <35.498352, 39.614502, 31.844780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162003, 39.830967, 31.848368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127418, -0.214043, 0.968478,
		0.526020, 0.813224, 0.248936,
		-0.840873, 0.541158, 0.008971,
		34.909740, 39.993313, 31.851059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551472, 39.851540, 32.536171>,  <35.498352, 39.614502, 31.844780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551472, 39.851540, 32.536171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176895, 39.922485, 32.415092>,  <34.952148, 39.965054, 32.342445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176895, 39.922485, 32.415092>,  <35.551472, 39.851540, 32.536171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176895, 39.922485, 32.415092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323696, -0.104118, 0.940415,
		0.135276, 0.978623, 0.154911,
		-0.936441, 0.177360, -0.302692,
		34.895962, 39.975693, 32.324284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197750, 40.286686, 33.057457>,  <35.551472, 39.851540, 32.536171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197750, 40.286686, 33.057457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897011, 40.121887, 32.851551>,  <34.716568, 40.023010, 32.728008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897011, 40.121887, 32.851551>,  <35.197750, 40.286686, 33.057457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897011, 40.121887, 32.851551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458098, -0.235095, 0.857249,
		-0.474200, 0.880335, -0.011978,
		-0.751851, -0.411995, -0.514762,
		34.671455, 39.998287, 32.697121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656776, 40.567871, 33.453468>,  <35.197750, 40.286686, 33.057457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656776, 40.567871, 33.453468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544228, 40.244274, 33.247032>,  <34.476696, 40.050114, 33.123169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544228, 40.244274, 33.247032>,  <34.656776, 40.567871, 33.453468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544228, 40.244274, 33.247032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607329, -0.266268, 0.748500,
		-0.742953, 0.524048, -0.416406,
		-0.281374, -0.808996, -0.516094,
		34.459816, 40.001575, 33.092205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898102, 40.625023, 33.544788>,  <34.656776, 40.567871, 33.453468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898102, 40.625023, 33.544788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031101, 40.258957, 33.453648>,  <34.110901, 40.039318, 33.398964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031101, 40.258957, 33.453648>,  <33.898102, 40.625023, 33.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031101, 40.258957, 33.453648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556755, -0.385479, 0.735819,
		-0.761228, -0.117802, -0.637694,
		0.332499, -0.915166, -0.227850,
		34.130852, 39.984406, 33.385292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364838, 40.271809, 33.669178>,  <33.898102, 40.625023, 33.544788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364838, 40.271809, 33.669178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663540, 40.006397, 33.687477>,  <33.842762, 39.847153, 33.698456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663540, 40.006397, 33.687477>,  <33.364838, 40.271809, 33.669178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663540, 40.006397, 33.687477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445274, -0.447665, 0.775453,
		-0.494061, -0.599435, -0.629747,
		0.746750, -0.663531, 0.045739,
		33.887566, 39.807339, 33.701199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070526, 39.694389, 33.719948>,  <33.364838, 40.271809, 33.669178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070526, 39.694389, 33.719948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429256, 39.608223, 33.874508>,  <33.644493, 39.556522, 33.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429256, 39.608223, 33.874508>,  <33.070526, 39.694389, 33.719948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429256, 39.608223, 33.874508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435025, -0.588163, 0.681775,
		0.080403, -0.779526, -0.621188,
		0.896821, -0.215416, 0.386403,
		33.698303, 39.543598, 33.990429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014076, 39.108685, 34.007698>,  <33.070526, 39.694389, 33.719948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014076, 39.108685, 34.007698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364090, 39.204723, 34.175831>,  <33.574097, 39.262348, 34.276711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364090, 39.204723, 34.175831>,  <33.014076, 39.108685, 34.007698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364090, 39.204723, 34.175831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204366, -0.603912, 0.770406,
		0.438814, -0.760029, -0.479373,
		0.875030, 0.240097, 0.420329,
		33.626598, 39.276752, 34.301929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256729, 38.476460, 34.099812>,  <33.014076, 39.108685, 34.007698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256729, 38.476460, 34.099812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461884, 38.712193, 34.349495>,  <33.584976, 38.853634, 34.499306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461884, 38.712193, 34.349495>,  <33.256729, 38.476460, 34.099812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461884, 38.712193, 34.349495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146611, -0.656310, 0.740110,
		0.845842, -0.471110, -0.250212,
		0.512890, 0.589332, 0.624205,
		33.615749, 38.888992, 34.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914722, 38.076992, 34.427147>,  <33.256729, 38.476460, 34.099812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914722, 38.076992, 34.427147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806019, 38.374493, 34.671432>,  <33.740795, 38.552994, 34.818005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806019, 38.374493, 34.671432>,  <33.914722, 38.076992, 34.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806019, 38.374493, 34.671432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036037, -0.626291, 0.778756,
		0.961690, 0.233643, 0.143398,
		-0.271759, 0.743755, 0.610717,
		33.724491, 38.597618, 34.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234238, 37.911030, 35.022858>,  <33.914722, 38.076992, 34.427147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234238, 37.911030, 35.022858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005405, 38.189312, 35.196629>,  <33.868107, 38.356281, 35.300892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005405, 38.189312, 35.196629>,  <34.234238, 37.911030, 35.022858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005405, 38.189312, 35.196629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067243, -0.488095, 0.870196,
		0.817438, 0.527032, 0.232447,
		-0.572078, 0.695701, 0.434427,
		33.833782, 38.398022, 35.326958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523251, 38.086060, 35.625031>,  <34.234238, 37.911030, 35.022858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523251, 38.086060, 35.625031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142101, 38.198746, 35.670063>,  <33.913414, 38.266357, 35.697083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142101, 38.198746, 35.670063>,  <34.523251, 38.086060, 35.625031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142101, 38.198746, 35.670063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024394, -0.441027, 0.897162,
		0.302397, 0.852133, 0.427113,
		-0.952870, 0.281718, 0.112578,
		33.856239, 38.283260, 35.703835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180225, 37.916832, 35.732239>,  <34.523251, 38.086060, 35.625031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180225, 37.916832, 35.732239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508385, 37.689640, 35.758602>,  <35.705280, 37.553326, 35.774422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508385, 37.689640, 35.758602>,  <35.180225, 37.916832, 35.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508385, 37.689640, 35.758602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508944, 0.672828, -0.536915,
		0.260607, 0.474032, 0.841057,
		0.820402, -0.567975, 0.065913,
		35.754505, 37.519249, 35.778378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770920, 38.342381, 35.975269>,  <35.180225, 37.916832, 35.732239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770920, 38.342381, 35.975269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905663, 38.021626, 35.777885>,  <35.986507, 37.829174, 35.659454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905663, 38.021626, 35.777885>,  <35.770920, 38.342381, 35.975269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905663, 38.021626, 35.777885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663125, 0.574115, -0.480269,
		0.668425, -0.165444, 0.725146,
		0.336859, -0.801886, -0.493463,
		36.006721, 37.781059, 35.629845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458664, 38.341511, 35.985863>,  <35.770920, 38.342381, 35.975269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458664, 38.341511, 35.985863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402122, 38.083778, 35.685234>,  <36.368198, 37.929138, 35.504856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402122, 38.083778, 35.685234>,  <36.458664, 38.341511, 35.985863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402122, 38.083778, 35.685234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646495, 0.514867, -0.562989,
		0.749710, -0.565466, 0.343778,
		-0.141351, -0.644329, -0.751572,
		36.359718, 37.890480, 35.459763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994530, 38.295834, 35.673492>,  <36.458664, 38.341511, 35.985863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994530, 38.295834, 35.673492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767628, 38.141273, 35.382587>,  <36.631489, 38.048538, 35.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767628, 38.141273, 35.382587>,  <36.994530, 38.295834, 35.673492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767628, 38.141273, 35.382587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527352, 0.507865, -0.681156,
		0.632556, -0.769912, -0.084315,
		-0.567251, -0.386406, -0.727267,
		36.597454, 38.025352, 35.164406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373245, 38.185703, 35.115852>,  <36.994530, 38.295834, 35.673492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373245, 38.185703, 35.115852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005600, 38.180702, 34.958340>,  <36.785011, 38.177700, 34.863831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005600, 38.180702, 34.958340>,  <37.373245, 38.185703, 35.115852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005600, 38.180702, 34.958340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310452, 0.592401, -0.743425,
		0.242575, -0.805547, -0.540604,
		-0.919118, -0.012505, -0.393786,
		36.729866, 38.176952, 34.840202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448952, 37.991749, 34.397804>,  <37.373245, 38.185703, 35.115852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448952, 37.991749, 34.397804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087570, 38.160709, 34.427090>,  <36.870743, 38.262085, 34.444660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087570, 38.160709, 34.427090>,  <37.448952, 37.991749, 34.397804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087570, 38.160709, 34.427090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194233, 0.555573, -0.808463,
		-0.382169, -0.716184, -0.583976,
		-0.903449, 0.422397, 0.073217,
		36.816536, 38.287430, 34.449055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034756, 37.985855, 33.780495>,  <37.448952, 37.991749, 34.397804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034756, 37.985855, 33.780495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865314, 38.293514, 33.971901>,  <36.763649, 38.478107, 34.086746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865314, 38.293514, 33.971901>,  <37.034756, 37.985855, 33.780495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865314, 38.293514, 33.971901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021125, 0.519720, -0.854075,
		-0.905602, -0.371897, -0.203907,
		-0.423602, 0.769145, 0.478516,
		36.738235, 38.524258, 34.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535915, 38.139885, 33.322678>,  <37.034756, 37.985855, 33.780495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535915, 38.139885, 33.322678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615963, 38.456322, 33.553890>,  <36.663990, 38.646183, 33.692619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615963, 38.456322, 33.553890>,  <36.535915, 38.139885, 33.322678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615963, 38.456322, 33.553890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159308, 0.555845, -0.815878,
		-0.966733, 0.255359, -0.014791,
		0.200120, 0.791093, 0.578034,
		36.675999, 38.693649, 33.727299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185055, 38.558544, 32.988853>,  <36.535915, 38.139885, 33.322678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185055, 38.558544, 32.988853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421947, 38.771194, 33.231052>,  <36.564083, 38.898785, 33.376373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421947, 38.771194, 33.231052>,  <36.185055, 38.558544, 32.988853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421947, 38.771194, 33.231052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252936, 0.590818, -0.766131,
		-0.765037, 0.606883, 0.215436,
		0.592235, 0.531627, 0.605500,
		36.599617, 38.930683, 33.412701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063694, 39.248386, 32.874329>,  <36.185055, 38.558544, 32.988853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063694, 39.248386, 32.874329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435253, 39.223312, 33.020325>,  <36.658188, 39.208267, 33.107922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435253, 39.223312, 33.020325>,  <36.063694, 39.248386, 32.874329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435253, 39.223312, 33.020325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318957, 0.636226, -0.702483,
		-0.188184, 0.768952, 0.610982,
		0.928899, -0.062681, 0.364990,
		36.713924, 39.204510, 33.129822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253311, 39.858376, 32.832420>,  <36.063694, 39.248386, 32.874329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253311, 39.858376, 32.832420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596539, 39.660027, 32.885830>,  <36.802475, 39.541016, 32.917873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596539, 39.660027, 32.885830>,  <36.253311, 39.858376, 32.832420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596539, 39.660027, 32.885830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431471, 0.555161, -0.711076,
		0.278479, 0.667762, 0.690321,
		0.858069, -0.495873, 0.133519,
		36.853958, 39.511265, 32.925884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637360, 40.449524, 32.993393>,  <36.253311, 39.858376, 32.832420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637360, 40.449524, 32.993393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878033, 40.143158, 32.902748>,  <37.022438, 39.959339, 32.848362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878033, 40.143158, 32.902748>,  <36.637360, 40.449524, 32.993393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878033, 40.143158, 32.902748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444067, 0.556595, -0.702144,
		0.663913, 0.321837, 0.675011,
		0.601683, -0.765913, -0.226613,
		37.058537, 39.913383, 32.834763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286945, 40.609451, 33.121803>,  <36.637360, 40.449524, 32.993393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286945, 40.609451, 33.121803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295609, 40.315201, 32.850986>,  <37.300808, 40.138653, 32.688496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295609, 40.315201, 32.850986>,  <37.286945, 40.609451, 33.121803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295609, 40.315201, 32.850986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651352, 0.524142, -0.548649,
		0.758467, -0.429110, 0.490502,
		0.021662, -0.735622, -0.677046,
		37.302109, 40.094513, 32.647873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936562, 40.333656, 33.045017>,  <37.286945, 40.609451, 33.121803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936562, 40.333656, 33.045017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758678, 40.255833, 32.695301>,  <37.651947, 40.209141, 32.485470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758678, 40.255833, 32.695301>,  <37.936562, 40.333656, 33.045017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758678, 40.255833, 32.695301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662270, 0.585757, -0.467212,
		0.603021, -0.786789, -0.131640,
		-0.444706, -0.194558, -0.874291,
		37.625267, 40.197468, 32.433014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438110, 40.528122, 32.536945>,  <37.936562, 40.333656, 33.045017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438110, 40.528122, 32.536945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114174, 40.473347, 32.308765>,  <37.919811, 40.440479, 32.171860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114174, 40.473347, 32.308765>,  <38.438110, 40.528122, 32.536945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114174, 40.473347, 32.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490525, 0.375302, -0.786469,
		0.321789, -0.916731, -0.236761,
		-0.809838, -0.136940, -0.570447,
		37.871223, 40.432266, 32.137630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620022, 40.171993, 31.869083>,  <38.438110, 40.528122, 32.536945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620022, 40.171993, 31.869083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285301, 40.374245, 31.785074>,  <38.084469, 40.495594, 31.734669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285301, 40.374245, 31.785074>,  <38.620022, 40.171993, 31.869083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285301, 40.374245, 31.785074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389677, 0.280549, -0.877180,
		-0.384603, -0.815864, -0.431794,
		-0.836799, 0.505626, -0.210023,
		38.034260, 40.525932, 31.722067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537540, 40.056412, 31.270126>,  <38.620022, 40.171993, 31.869083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537540, 40.056412, 31.270126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290707, 40.370853, 31.284260>,  <38.142605, 40.559517, 31.292740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290707, 40.370853, 31.284260>,  <38.537540, 40.056412, 31.270126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290707, 40.370853, 31.284260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229770, 0.222950, -0.947364,
		-0.752603, -0.576486, -0.318202,
		-0.617085, 0.786103, 0.035334,
		38.105579, 40.606686, 31.294859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287994, 40.127064, 30.526016>,  <38.537540, 40.056412, 31.270126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287994, 40.127064, 30.526016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233528, 40.488426, 30.688654>,  <38.200848, 40.705242, 30.786238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233528, 40.488426, 30.688654>,  <38.287994, 40.127064, 30.526016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233528, 40.488426, 30.688654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365393, 0.427282, -0.826993,
		-0.920840, 0.035957, -0.388280,
		-0.136168, 0.903403, 0.406596,
		38.192677, 40.759449, 30.810633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805801, 40.530975, 30.075230>,  <38.287994, 40.127064, 30.526016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805801, 40.530975, 30.075230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016571, 40.804619, 30.276960>,  <38.143032, 40.968803, 30.397999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016571, 40.804619, 30.276960>,  <37.805801, 40.530975, 30.075230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016571, 40.804619, 30.276960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264127, 0.432199, -0.862230,
		-0.807828, 0.587538, 0.047046,
		0.526926, 0.684108, 0.504327,
		38.174648, 41.009850, 30.428259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660999, 41.061157, 29.785797>,  <37.805801, 40.530975, 30.075230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660999, 41.061157, 29.785797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993443, 41.179199, 29.974340>,  <38.192909, 41.250023, 30.087467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993443, 41.179199, 29.974340>,  <37.660999, 41.061157, 29.785797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993443, 41.179199, 29.974340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408890, 0.250222, -0.877609,
		-0.376928, 0.922120, 0.087297,
		0.831105, 0.295100, 0.471361,
		38.242775, 41.267731, 30.115749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880024, 41.803585, 29.532604>,  <37.660999, 41.061157, 29.785797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880024, 41.803585, 29.532604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193443, 41.611031, 29.689741>,  <38.381493, 41.495499, 29.784023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193443, 41.611031, 29.689741>,  <37.880024, 41.803585, 29.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193443, 41.611031, 29.689741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549713, 0.242386, -0.799415,
		0.289608, 0.842328, 0.454545,
		0.783545, -0.481387, 0.392841,
		38.428505, 41.466614, 29.807594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425476, 42.223164, 29.349640>,  <37.880024, 41.803585, 29.532604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425476, 42.223164, 29.349640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600998, 41.877701, 29.448872>,  <38.706310, 41.670422, 29.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600998, 41.877701, 29.448872>,  <38.425476, 42.223164, 29.349640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600998, 41.877701, 29.448872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584688, 0.064780, -0.808667,
		0.682343, 0.499895, 0.533397,
		0.438803, -0.863660, 0.248081,
		38.732639, 41.618603, 29.523296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103779, 42.366558, 29.424814>,  <38.425476, 42.223164, 29.349640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103779, 42.366558, 29.424814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091198, 41.978153, 29.330027>,  <39.083649, 41.745110, 29.273153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091198, 41.978153, 29.330027>,  <39.103779, 42.366558, 29.424814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091198, 41.978153, 29.330027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548756, 0.181384, -0.816068,
		0.835391, -0.155703, 0.527142,
		-0.031449, -0.971008, -0.236969,
		39.081764, 41.686852, 29.258936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652256, 42.413254, 29.058819>,  <39.103779, 42.366558, 29.424814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652256, 42.413254, 29.058819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475201, 42.067036, 28.965097>,  <39.368969, 41.859303, 28.908865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475201, 42.067036, 28.965097>,  <39.652256, 42.413254, 29.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475201, 42.067036, 28.965097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401622, 0.042259, -0.914830,
		0.801732, -0.499038, 0.328918,
		-0.442635, -0.865549, -0.234305,
		39.342411, 41.807369, 28.894806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130299, 41.840675, 28.754272>,  <39.652256, 42.413254, 29.058819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130299, 41.840675, 28.754272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755405, 41.754665, 28.644470>,  <39.530468, 41.703060, 28.578588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755405, 41.754665, 28.644470>,  <40.130299, 41.840675, 28.754272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755405, 41.754665, 28.644470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265666, 0.069573, -0.961551,
		0.225858, -0.974127, -0.008081,
		-0.937235, -0.215027, -0.274506,
		39.474236, 41.690159, 28.562119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297756, 41.354263, 28.176363>,  <40.130299, 41.840675, 28.754272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297756, 41.354263, 28.176363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907703, 41.437054, 28.144653>,  <39.673672, 41.486729, 28.125628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907703, 41.437054, 28.144653>,  <40.297756, 41.354263, 28.176363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907703, 41.437054, 28.144653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090989, 0.047694, -0.994709,
		-0.202100, -0.977183, -0.065341,
		-0.975129, 0.206976, -0.079274,
		39.615166, 41.499146, 28.120871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033978, 40.849194, 27.627886>,  <40.297756, 41.354263, 28.176363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033978, 40.849194, 27.627886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806171, 41.177620, 27.643398>,  <39.669487, 41.374676, 27.652706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806171, 41.177620, 27.643398>,  <40.033978, 40.849194, 27.627886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806171, 41.177620, 27.643398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182931, 0.172604, -0.967856,
		-0.801364, -0.544118, -0.248499,
		-0.569519, 0.821063, 0.038783,
		39.635315, 41.423939, 27.655033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647964, 40.841976, 26.982841>,  <40.033978, 40.849194, 27.627886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647964, 40.841976, 26.982841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620247, 41.222504, 27.102974>,  <39.603615, 41.450821, 27.175053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620247, 41.222504, 27.102974>,  <39.647964, 40.841976, 26.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620247, 41.222504, 27.102974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097600, 0.306075, -0.946991,
		-0.992810, -0.036307, -0.114057,
		-0.069293, 0.951315, 0.300331,
		39.599461, 41.507896, 27.193073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140587, 41.064991, 26.519014>,  <39.647964, 40.841976, 26.982841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140587, 41.064991, 26.519014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350334, 41.373131, 26.664116>,  <39.476185, 41.558014, 26.751177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350334, 41.373131, 26.664116>,  <39.140587, 41.064991, 26.519014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350334, 41.373131, 26.664116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020249, 0.437185, -0.899144,
		-0.851249, 0.464140, 0.244847,
		0.524372, 0.770352, 0.362755,
		39.507645, 41.604237, 26.772942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928150, 41.483864, 26.125286>,  <39.140587, 41.064991, 26.519014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928150, 41.483864, 26.125286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253193, 41.669491, 26.266319>,  <39.448219, 41.780869, 26.350939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253193, 41.669491, 26.266319>,  <38.928150, 41.483864, 26.125286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253193, 41.669491, 26.266319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135782, 0.437574, -0.888872,
		-0.566780, 0.770174, 0.292561,
		0.812603, 0.464070, 0.352584,
		39.496975, 41.808712, 26.372095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887791, 42.166225, 25.707256>,  <38.928150, 41.483864, 26.125286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887791, 42.166225, 25.707256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250931, 42.124512, 25.869707>,  <39.468815, 42.099483, 25.967178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250931, 42.124512, 25.869707>,  <38.887791, 42.166225, 25.707256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250931, 42.124512, 25.869707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405205, 0.467247, -0.785805,
		-0.107811, 0.877955, 0.466447,
		0.907847, -0.104288, 0.406126,
		39.523285, 42.093224, 25.991545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332142, 42.929455, 25.694374>,  <38.887791, 42.166225, 25.707256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332142, 42.929455, 25.694374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598572, 42.635750, 25.746849>,  <39.758430, 42.459526, 25.778334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598572, 42.635750, 25.746849>,  <39.332142, 42.929455, 25.694374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598572, 42.635750, 25.746849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531538, 0.343875, -0.774091,
		0.523272, 0.585332, 0.619333,
		0.666074, -0.734259, 0.131186,
		39.798393, 42.415474, 25.786205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975613, 43.224747, 25.532907>,  <39.332142, 42.929455, 25.694374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975613, 43.224747, 25.532907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018875, 42.828484, 25.499662>,  <40.044834, 42.590725, 25.479715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018875, 42.828484, 25.499662>,  <39.975613, 43.224747, 25.532907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018875, 42.828484, 25.499662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494034, 0.126112, -0.860248,
		0.862689, 0.051983, 0.503057,
		0.108160, -0.990653, -0.083115,
		40.051323, 42.531288, 25.474728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703739, 43.182667, 25.221518>,  <39.975613, 43.224747, 25.532907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703739, 43.182667, 25.221518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488789, 42.852253, 25.153521>,  <40.359818, 42.654003, 25.112722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488789, 42.852253, 25.153521>,  <40.703739, 43.182667, 25.221518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488789, 42.852253, 25.153521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313219, -0.008334, -0.949644,
		0.783023, -0.563556, 0.263209,
		-0.537372, -0.826035, -0.169991,
		40.327576, 42.604443, 25.102524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100056, 42.712780, 24.787224>,  <40.703739, 43.182667, 25.221518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100056, 42.712780, 24.787224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721886, 42.595310, 24.730762>,  <40.494984, 42.524830, 24.696886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721886, 42.595310, 24.730762>,  <41.100056, 42.712780, 24.787224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721886, 42.595310, 24.730762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187724, -0.136841, -0.972643,
		0.266326, -0.946060, 0.184503,
		-0.945426, -0.293676, -0.141154,
		40.438259, 42.507206, 24.688416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120029, 42.187710, 24.356903>,  <41.100056, 42.712780, 24.787224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120029, 42.187710, 24.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744881, 42.322025, 24.321947>,  <40.519791, 42.402615, 24.300974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744881, 42.322025, 24.321947>,  <41.120029, 42.187710, 24.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744881, 42.322025, 24.321947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058388, -0.095540, -0.993712,
		-0.342027, -0.937079, 0.069998,
		-0.937875, 0.335789, -0.087392,
		40.463520, 42.422760, 24.295731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813568, 41.688896, 23.803308>,  <41.120029, 42.187710, 24.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813568, 41.688896, 23.803308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555943, 41.993988, 23.826706>,  <40.401367, 42.177044, 23.840744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555943, 41.993988, 23.826706>,  <40.813568, 41.688896, 23.803308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555943, 41.993988, 23.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110088, -0.016750, -0.993781,
		-0.757008, -0.646498, 0.094756,
		-0.644065, 0.762732, 0.058492,
		40.362724, 42.222809, 23.844254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290356, 41.498314, 23.336323>,  <40.813568, 41.688896, 23.803308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290356, 41.498314, 23.336323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318943, 41.895775, 23.371086>,  <40.336098, 42.134251, 23.391945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318943, 41.895775, 23.371086>,  <40.290356, 41.498314, 23.336323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318943, 41.895775, 23.371086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027034, 0.089028, -0.995662,
		-0.997076, 0.068813, 0.033225,
		0.071472, 0.993649, 0.086908,
		40.340385, 42.193871, 23.397158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656948, 41.267864, 22.712879>,  <40.290356, 41.498314, 23.336323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656948, 41.267864, 22.712879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889347, 40.944168, 22.678051>,  <41.028786, 40.749950, 22.657154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889347, 40.944168, 22.678051>,  <40.656948, 41.267864, 22.712879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889347, 40.944168, 22.678051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177424, -0.230328, 0.956802,
		-0.794334, -0.540448, -0.277398,
		0.580994, -0.809237, -0.087068,
		41.063644, 40.701397, 22.651930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311222, 40.725777, 23.037680>,  <40.656948, 41.267864, 22.712879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311222, 40.725777, 23.037680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695244, 40.614014, 23.031528>,  <40.925655, 40.546955, 23.027838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695244, 40.614014, 23.031528>,  <40.311222, 40.725777, 23.037680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695244, 40.614014, 23.031528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072446, -0.301260, 0.950786,
		-0.270281, -0.911690, -0.309466,
		0.960052, -0.279399, -0.015376,
		40.983257, 40.530193, 23.026915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359871, 39.995533, 23.189280>,  <40.311222, 40.725777, 23.037680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359871, 39.995533, 23.189280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717670, 40.151062, 23.277548>,  <40.932350, 40.244381, 23.330509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717670, 40.151062, 23.277548>,  <40.359871, 39.995533, 23.189280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717670, 40.151062, 23.277548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010503, -0.511720, 0.859088,
		0.446956, -0.766132, -0.461814,
		0.894494, 0.388825, 0.220670,
		40.986019, 40.267708, 23.343748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589035, 39.543522, 23.686438>,  <40.359871, 39.995533, 23.189280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589035, 39.543522, 23.686438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847610, 39.847340, 23.715328>,  <41.002754, 40.029629, 23.732662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847610, 39.847340, 23.715328>,  <40.589035, 39.543522, 23.686438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847610, 39.847340, 23.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181792, -0.245272, 0.952257,
		0.740995, -0.602442, -0.296631,
		0.646435, 0.759543, 0.072226,
		41.041542, 40.075203, 23.736996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251518, 39.303257, 23.909975>,  <40.589035, 39.543522, 23.686438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251518, 39.303257, 23.909975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220535, 39.685028, 24.025267>,  <41.201946, 39.914089, 24.094442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220535, 39.685028, 24.025267>,  <41.251518, 39.303257, 23.909975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220535, 39.685028, 24.025267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059916, -0.284120, 0.956915,
		0.995194, 0.091389, -0.035178,
		-0.077457, 0.954424, 0.288230,
		41.197300, 39.971355, 24.111736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888050, 39.352497, 24.327986>,  <41.251518, 39.303257, 23.909975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888050, 39.352497, 24.327986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 39.655602, 24.436953>,  <41.508564, 39.837463, 24.502333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 39.655602, 24.436953>,  <41.888050, 39.352497, 24.327986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650871, 39.655602, 24.436953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005511, -0.334479, 0.942387,
		0.805219, 0.560291, 0.194154,
		-0.592952, 0.757758, 0.272416,
		41.472984, 39.882931, 24.518677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138943, 39.560440, 24.991793>,  <41.888050, 39.352497, 24.327986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138943, 39.560440, 24.991793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770027, 39.714386, 24.977592>,  <41.548676, 39.806755, 24.969072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770027, 39.714386, 24.977592>,  <42.138943, 39.560440, 24.991793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770027, 39.714386, 24.977592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124470, -0.208809, 0.970003,
		0.365906, 0.899043, 0.240486,
		-0.922291, 0.384863, -0.035499,
		41.493340, 39.829845, 24.966942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023861, 39.909580, 25.607540>,  <42.138943, 39.560440, 24.991793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023861, 39.909580, 25.607540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655048, 39.840782, 25.468821>,  <41.433762, 39.799503, 25.385590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655048, 39.840782, 25.468821>,  <42.023861, 39.909580, 25.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655048, 39.840782, 25.468821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329265, -0.122635, 0.936240,
		-0.203562, 0.977434, 0.056441,
		-0.922034, -0.171999, -0.346799,
		41.378437, 39.789181, 25.364780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671070, 40.344944, 26.058105>,  <42.023861, 39.909580, 25.607540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671070, 40.344944, 26.058105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414062, 40.091682, 25.885466>,  <41.259857, 39.939724, 25.781881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414062, 40.091682, 25.885466>,  <41.671070, 40.344944, 26.058105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414062, 40.091682, 25.885466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430980, -0.167114, 0.886752,
		-0.633581, 0.755767, -0.165505,
		-0.642520, -0.633158, -0.431600,
		41.221306, 39.901733, 25.755985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981182, 40.547630, 26.279730>,  <41.671070, 40.344944, 26.058105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981182, 40.547630, 26.279730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941620, 40.174591, 26.140894>,  <40.917885, 39.950768, 26.057592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941620, 40.174591, 26.140894>,  <40.981182, 40.547630, 26.279730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941620, 40.174591, 26.140894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354221, -0.292959, 0.888089,
		-0.929917, 0.210780, -0.301373,
		-0.098901, -0.932602, -0.347090,
		40.911949, 39.894810, 26.036766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274410, 40.350552, 26.423105>,  <40.981182, 40.547630, 26.279730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274410, 40.350552, 26.423105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 40.041534, 26.383951>,  <40.675930, 39.856125, 26.360458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 40.041534, 26.383951>,  <40.274410, 40.350552, 26.423105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525360, 40.041534, 26.383951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249467, -0.318463, 0.914520,
		-0.737680, -0.549324, -0.392519,
		0.627371, -0.772544, -0.097886,
		40.713570, 39.809772, 26.354586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839287, 39.976372, 26.719149>,  <40.274410, 40.350552, 26.423105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839287, 39.976372, 26.719149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170139, 39.752201, 26.702284>,  <40.368652, 39.617699, 26.692165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170139, 39.752201, 26.702284>,  <39.839287, 39.976372, 26.719149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170139, 39.752201, 26.702284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348129, -0.569807, 0.744397,
		-0.441203, -0.601035, -0.666405,
		0.827131, -0.560425, -0.042162,
		40.418278, 39.584072, 26.689634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606228, 39.127689, 26.672535>,  <39.839287, 39.976372, 26.719149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606228, 39.127689, 26.672535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967430, 39.175045, 26.837732>,  <40.184151, 39.203461, 26.936852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967430, 39.175045, 26.837732>,  <39.606228, 39.127689, 26.672535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967430, 39.175045, 26.837732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283528, -0.558010, 0.779896,
		0.322789, -0.821345, -0.470318,
		0.903005, 0.118393, 0.412994,
		40.238331, 39.210564, 26.961630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819897, 38.435432, 26.865652>,  <39.606228, 39.127689, 26.672535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819897, 38.435432, 26.865652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001751, 38.717346, 27.083492>,  <40.110863, 38.886494, 27.214197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001751, 38.717346, 27.083492>,  <39.819897, 38.435432, 26.865652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001751, 38.717346, 27.083492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140015, -0.547291, 0.825148,
		0.879605, -0.451392, -0.150136,
		0.454633, 0.704783, 0.544601,
		40.138142, 38.928780, 27.246872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151684, 37.980598, 27.400793>,  <39.819897, 38.435432, 26.865652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151684, 37.980598, 27.400793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115547, 38.353313, 27.541431>,  <40.093864, 38.576942, 27.625814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115547, 38.353313, 27.541431>,  <40.151684, 37.980598, 27.400793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115547, 38.353313, 27.541431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272184, -0.362696, 0.891273,
		0.957995, -0.015183, 0.286382,
		-0.090337, 0.931784, 0.351594,
		40.088448, 38.632847, 27.646910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518448, 37.960415, 27.952261>,  <40.151684, 37.980598, 27.400793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518448, 37.960415, 27.952261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275925, 38.272133, 28.015627>,  <40.130409, 38.459164, 28.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275925, 38.272133, 28.015627>,  <40.518448, 37.960415, 27.952261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275925, 38.272133, 28.015627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115621, -0.283478, 0.951983,
		0.786780, 0.558878, 0.261977,
		-0.606308, 0.779291, 0.158417,
		40.094032, 38.505920, 28.063152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853416, 38.245956, 28.552828>,  <40.518448, 37.960415, 27.952261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853416, 38.245956, 28.552828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480701, 38.389488, 28.530891>,  <40.257072, 38.475605, 28.517729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480701, 38.389488, 28.530891>,  <40.853416, 38.245956, 28.552828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480701, 38.389488, 28.530891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149640, -0.242065, 0.958651,
		0.330714, 0.901470, 0.279249,
		-0.931792, 0.358826, -0.054842,
		40.201164, 38.497135, 28.514439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670799, 38.682880, 29.163633>,  <40.853416, 38.245956, 28.552828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670799, 38.682880, 29.163633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 38.589676, 29.015718>,  <40.095165, 38.533752, 28.926970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 38.589676, 29.015718>,  <40.670799, 38.682880, 29.163633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311028, 38.589676, 29.015718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344722, -0.141957, 0.927909,
		-0.268703, 0.962058, 0.047357,
		-0.899425, -0.233007, -0.369787,
		40.041199, 38.519775, 28.904781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169830, 38.923866, 29.686817>,  <40.670799, 38.682880, 29.163633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169830, 38.923866, 29.686817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906151, 38.719955, 29.465698>,  <39.747944, 38.597610, 29.333027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906151, 38.719955, 29.465698>,  <40.169830, 38.923866, 29.686817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906151, 38.719955, 29.465698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617842, -0.051868, 0.784589,
		-0.428638, 0.858741, -0.280771,
		-0.659196, -0.509777, -0.552799,
		39.708393, 38.567020, 29.299858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497028, 39.217171, 29.822054>,  <40.169830, 38.923866, 29.686817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497028, 39.217171, 29.822054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401394, 38.863976, 29.660479>,  <39.344013, 38.652058, 29.563534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401394, 38.863976, 29.660479>,  <39.497028, 39.217171, 29.822054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401394, 38.863976, 29.660479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623475, -0.179318, 0.761001,
		-0.744390, 0.433790, -0.507650,
		-0.239084, -0.882990, -0.403940,
		39.329670, 38.599079, 29.539297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715477, 39.232712, 29.775719>,  <39.497028, 39.217171, 29.822054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715477, 39.232712, 29.775719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877426, 38.866985, 29.779604>,  <38.974594, 38.647549, 29.781935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877426, 38.866985, 29.779604>,  <38.715477, 39.232712, 29.775719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877426, 38.866985, 29.779604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682515, -0.295126, 0.668636,
		-0.608482, -0.277341, -0.743526,
		0.404874, -0.914321, 0.009711,
		38.998890, 38.592690, 29.782516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121250, 38.668449, 29.825859>,  <38.715477, 39.232712, 29.775719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121250, 38.668449, 29.825859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458225, 38.518562, 29.980717>,  <38.660412, 38.428631, 30.073631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458225, 38.518562, 29.980717>,  <38.121250, 38.668449, 29.825859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458225, 38.518562, 29.980717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519624, -0.375128, 0.767639,
		-0.142414, -0.847862, -0.510733,
		0.842443, -0.374712, 0.387146,
		38.710957, 38.406147, 30.096861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966999, 38.086140, 30.216396>,  <38.121250, 38.668449, 29.825859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966999, 38.086140, 30.216396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323135, 38.148922, 30.387352>,  <38.536816, 38.186592, 30.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323135, 38.148922, 30.387352>,  <37.966999, 38.086140, 30.216396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323135, 38.148922, 30.387352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303457, -0.495236, 0.814036,
		0.339427, -0.854462, -0.393299,
		0.890339, 0.156956, 0.427389,
		38.590237, 38.196011, 30.515568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095562, 37.474365, 30.534870>,  <37.966999, 38.086140, 30.216396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095562, 37.474365, 30.534870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347786, 37.733952, 30.705156>,  <38.499119, 37.889706, 30.807329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347786, 37.733952, 30.705156>,  <38.095562, 37.474365, 30.534870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347786, 37.733952, 30.705156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261271, -0.339009, 0.903776,
		0.730843, -0.681112, -0.044209,
		0.630560, 0.648968, 0.425717,
		38.536953, 37.928642, 30.832872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589802, 37.029835, 30.948126>,  <38.095562, 37.474365, 30.534870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589802, 37.029835, 30.948126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609005, 37.400578, 31.097061>,  <38.620529, 37.623024, 31.186422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609005, 37.400578, 31.097061>,  <38.589802, 37.029835, 30.948126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609005, 37.400578, 31.097061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128791, -0.375402, 0.917870,
		0.990509, 0.003886, -0.137394,
		0.048012, 0.926854, 0.372340,
		38.623409, 37.678635, 31.208763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109249, 37.076214, 31.448038>,  <38.589802, 37.029835, 30.948126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109249, 37.076214, 31.448038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894733, 37.400558, 31.541758>,  <38.766026, 37.595165, 31.597990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894733, 37.400558, 31.541758>,  <39.109249, 37.076214, 31.448038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894733, 37.400558, 31.541758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324337, -0.058301, 0.944143,
		0.779231, 0.582324, -0.231727,
		-0.536288, 0.810863, 0.234299,
		38.733849, 37.643818, 31.612047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485764, 37.611080, 31.881365>,  <39.109249, 37.076214, 31.448038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485764, 37.611080, 31.881365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101524, 37.689991, 31.959673>,  <38.870979, 37.737339, 32.006657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101524, 37.689991, 31.959673>,  <39.485764, 37.611080, 31.881365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101524, 37.689991, 31.959673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156593, -0.197762, 0.967661,
		0.229613, 0.960194, 0.159079,
		-0.960602, 0.197277, 0.195768,
		38.813343, 37.749172, 32.018402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494438, 37.880527, 32.460793>,  <39.485764, 37.611080, 31.881365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494438, 37.880527, 32.460793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107716, 37.780499, 32.439793>,  <38.875683, 37.720482, 32.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107716, 37.780499, 32.439793>,  <39.494438, 37.880527, 32.460793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107716, 37.780499, 32.439793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038298, -0.344968, 0.937833,
		-0.252639, 0.904688, 0.343093,
		-0.966802, -0.250073, -0.052504,
		38.817677, 37.705475, 32.424042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241909, 38.083393, 33.150105>,  <39.494438, 37.880527, 32.460793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241909, 38.083393, 33.150105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965755, 37.838837, 32.995411>,  <38.800064, 37.692101, 32.902596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965755, 37.838837, 32.995411>,  <39.241909, 38.083393, 33.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965755, 37.838837, 32.995411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097539, -0.451033, 0.887162,
		-0.716835, 0.650206, 0.251752,
		-0.690386, -0.611393, -0.386737,
		38.758640, 37.655418, 32.879391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827164, 38.021225, 33.664951>,  <39.241909, 38.083393, 33.150105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827164, 38.021225, 33.664951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732761, 37.702682, 33.442200>,  <38.676121, 37.511559, 33.308548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732761, 37.702682, 33.442200>,  <38.827164, 38.021225, 33.664951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732761, 37.702682, 33.442200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129960, -0.542058, 0.830231,
		-0.963021, 0.268315, 0.024437,
		-0.236010, -0.796355, -0.556883,
		38.661957, 37.463776, 33.275135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193336, 37.630157, 33.838570>,  <38.827164, 38.021225, 33.664951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193336, 37.630157, 33.838570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371384, 37.327976, 33.646252>,  <38.478210, 37.146667, 33.530861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371384, 37.327976, 33.646252>,  <38.193336, 37.630157, 33.838570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371384, 37.327976, 33.646252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063920, -0.562356, 0.824421,
		-0.893190, -0.336228, -0.298600,
		0.445113, -0.755451, -0.480799,
		38.504917, 37.101341, 33.502010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771477, 36.948311, 33.942039>,  <38.193336, 37.630157, 33.838570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771477, 36.948311, 33.942039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131870, 36.832230, 33.813034>,  <38.348106, 36.762581, 33.735630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131870, 36.832230, 33.813034>,  <37.771477, 36.948311, 33.942039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131870, 36.832230, 33.813034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067548, -0.640469, 0.765008,
		-0.428568, -0.711043, -0.557448,
		0.900981, -0.290203, -0.322514,
		38.402164, 36.745167, 33.716278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671829, 36.197453, 33.799229>,  <37.771477, 36.948311, 33.942039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671829, 36.197453, 33.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061993, 36.276649, 33.837955>,  <38.296093, 36.324169, 33.861191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061993, 36.276649, 33.837955>,  <37.671829, 36.197453, 33.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061993, 36.276649, 33.837955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073820, -0.707401, 0.702947,
		0.207667, -0.678515, -0.704622,
		0.975411, 0.197994, 0.096816,
		38.354614, 36.336048, 33.867001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945942, 35.601147, 33.680901>,  <37.671829, 36.197453, 33.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945942, 35.601147, 33.680901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230396, 35.812584, 33.866322>,  <38.401070, 35.939445, 33.977573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230396, 35.812584, 33.866322>,  <37.945942, 35.601147, 33.680901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230396, 35.812584, 33.866322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214070, -0.790829, 0.573379,
		0.669675, -0.308515, -0.675540,
		0.711133, 0.528591, 0.463554,
		38.443737, 35.971161, 34.005386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495560, 35.101696, 33.702705>,  <37.945942, 35.601147, 33.680901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495560, 35.101696, 33.702705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567841, 35.369541, 33.990864>,  <38.611210, 35.530247, 34.163757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567841, 35.369541, 33.990864>,  <38.495560, 35.101696, 33.702705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567841, 35.369541, 33.990864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158635, -0.742704, 0.650558,
		0.970661, -0.003276, -0.240431,
		0.180700, 0.669612, 0.720394,
		38.622051, 35.570423, 34.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146915, 34.895382, 33.979942>,  <38.495560, 35.101696, 33.702705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146915, 34.895382, 33.979942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970814, 35.129452, 34.252338>,  <38.865154, 35.269894, 34.415775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970814, 35.129452, 34.252338>,  <39.146915, 34.895382, 33.979942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970814, 35.129452, 34.252338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147546, -0.700989, 0.697742,
		0.885667, 0.407663, 0.222274,
		-0.440255, 0.585171, 0.680992,
		38.838737, 35.305004, 34.456635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469334, 34.638142, 34.654621>,  <39.146915, 34.895382, 33.979942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469334, 34.638142, 34.654621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134460, 34.830612, 34.758617>,  <38.933537, 34.946095, 34.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134460, 34.830612, 34.758617>,  <39.469334, 34.638142, 34.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134460, 34.830612, 34.758617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074610, -0.571404, 0.817270,
		0.541810, 0.664806, 0.514270,
		-0.837183, 0.481175, 0.259992,
		38.883305, 34.974964, 34.836617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531971, 34.646240, 35.425877>,  <39.469334, 34.638142, 34.654621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531971, 34.646240, 35.425877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156525, 34.772415, 35.370022>,  <38.931255, 34.848122, 35.336510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156525, 34.772415, 35.370022>,  <39.531971, 34.646240, 35.425877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156525, 34.772415, 35.370022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263544, -0.394525, 0.880281,
		0.222586, 0.863046, 0.453440,
		-0.938616, 0.315440, -0.139635,
		38.874939, 34.867046, 35.328133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298538, 35.238609, 36.002773>,  <39.531971, 34.646240, 35.425877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298538, 35.238609, 36.002773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981976, 35.042271, 35.857037>,  <38.792038, 34.924469, 35.769592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981976, 35.042271, 35.857037>,  <39.298538, 35.238609, 36.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981976, 35.042271, 35.857037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338134, -0.145028, 0.929856,
		-0.509253, 0.859093, -0.051194,
		-0.791408, -0.490842, -0.364345,
		38.744553, 34.895020, 35.747734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663399, 35.427193, 36.378517>,  <39.298538, 35.238609, 36.002773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663399, 35.427193, 36.378517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598881, 35.068348, 36.213993>,  <38.560169, 34.853043, 36.115280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598881, 35.068348, 36.213993>,  <38.663399, 35.427193, 36.378517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598881, 35.068348, 36.213993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455249, -0.302143, 0.837531,
		-0.875633, 0.322339, -0.359673,
		-0.161296, -0.897110, -0.411311,
		38.550491, 34.799213, 36.090599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052425, 35.145775, 36.641716>,  <38.663399, 35.427193, 36.378517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052425, 35.145775, 36.641716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196472, 34.797218, 36.508450>,  <38.282902, 34.588085, 36.428490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196472, 34.797218, 36.508450>,  <38.052425, 35.145775, 36.641716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196472, 34.797218, 36.508450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587853, -0.489261, 0.644246,
		-0.724392, -0.036154, -0.688440,
		0.360119, -0.871387, -0.333164,
		38.304508, 34.535801, 36.408501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498466, 34.752094, 36.680458>,  <38.052425, 35.145775, 36.641716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498466, 34.752094, 36.680458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812428, 34.504295, 36.675518>,  <38.000805, 34.355614, 36.672554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812428, 34.504295, 36.675518>,  <37.498466, 34.752094, 36.680458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812428, 34.504295, 36.675518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419069, -0.545429, 0.725871,
		-0.456414, -0.564559, -0.687720,
		0.784899, -0.619500, -0.012353,
		38.047897, 34.318443, 36.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206066, 34.063232, 36.755531>,  <37.498466, 34.752094, 36.680458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206066, 34.063232, 36.755531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590477, 34.052399, 36.865582>,  <37.821125, 34.045898, 36.931610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590477, 34.052399, 36.865582>,  <37.206066, 34.063232, 36.755531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590477, 34.052399, 36.865582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243392, -0.554809, 0.795580,
		0.131096, -0.831537, -0.539778,
		0.961028, -0.027080, 0.275123,
		37.878784, 34.044273, 36.948120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458656, 33.387714, 36.684032>,  <37.206066, 34.063232, 36.755531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458656, 33.387714, 36.684032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653240, 33.581524, 36.974854>,  <37.769989, 33.697811, 37.149345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653240, 33.581524, 36.974854>,  <37.458656, 33.387714, 36.684032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653240, 33.581524, 36.974854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405557, -0.611841, 0.679097,
		0.773876, -0.625211, -0.101132,
		0.486456, 0.484522, 0.727048,
		37.799175, 33.726879, 37.192966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465538, 32.816685, 37.096722>,  <37.458656, 33.387714, 36.684032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465538, 32.816685, 37.096722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610649, 33.123547, 37.308327>,  <37.697716, 33.307663, 37.435291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610649, 33.123547, 37.308327>,  <37.465538, 32.816685, 37.096722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610649, 33.123547, 37.308327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328578, -0.425924, 0.842986,
		0.872024, -0.479642, 0.097555,
		0.362781, 0.767159, 0.529016,
		37.719482, 33.353695, 37.467033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894569, 32.486874, 37.661781>,  <37.465538, 32.816685, 37.096722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894569, 32.486874, 37.661781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772259, 32.848946, 37.779873>,  <37.698872, 33.066189, 37.850727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772259, 32.848946, 37.779873>,  <37.894569, 32.486874, 37.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772259, 32.848946, 37.779873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078552, -0.333006, 0.939647,
		0.948858, 0.264130, 0.172928,
		-0.305775, 0.905175, 0.295227,
		37.680527, 33.120499, 37.868443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105270, 32.477814, 38.321621>,  <37.894569, 32.486874, 37.661781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105270, 32.477814, 38.321621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 32.806721, 38.304916>,  <37.742031, 33.004066, 38.294895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 32.806721, 38.304916>,  <38.105270, 32.477814, 38.321621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878246, 32.806721, 38.304916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147150, -0.051401, 0.987778,
		0.810075, 0.566770, 0.150170,
		-0.567561, 0.822271, -0.041762,
		37.707977, 33.053402, 38.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386616, 33.132484, 38.702393>,  <38.105270, 32.477814, 38.321621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386616, 33.132484, 38.702393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988598, 33.166878, 38.682446>,  <37.749786, 33.187511, 38.670479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988598, 33.166878, 38.682446>,  <38.386616, 33.132484, 38.702393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988598, 33.166878, 38.682446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074872, -0.318457, 0.944976,
		0.065368, 0.944030, 0.323318,
		-0.995048, 0.085979, -0.049865,
		37.690083, 33.192673, 38.667484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224636, 33.147415, 39.334507>,  <38.386616, 33.132484, 38.702393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224636, 33.147415, 39.334507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868053, 33.101219, 39.159252>,  <37.654102, 33.073502, 39.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868053, 33.101219, 39.159252>,  <38.224636, 33.147415, 39.334507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868053, 33.101219, 39.159252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380490, -0.334223, 0.862278,
		-0.246020, 0.935391, 0.254003,
		-0.891460, -0.115492, -0.438132,
		37.600616, 33.066570, 39.027813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764645, 33.535748, 39.815880>,  <38.224636, 33.147415, 39.334507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764645, 33.535748, 39.815880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544571, 33.304218, 39.575127>,  <37.412529, 33.165302, 39.430676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544571, 33.304218, 39.575127>,  <37.764645, 33.535748, 39.815880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544571, 33.304218, 39.575127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476500, -0.374291, 0.795521,
		-0.685745, 0.724479, -0.069882,
		-0.550183, -0.578824, -0.601882,
		37.379517, 33.130569, 39.394562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089138, 33.646996, 39.979458>,  <37.764645, 33.535748, 39.815880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089138, 33.646996, 39.979458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105320, 33.278561, 39.824558>,  <37.115028, 33.057499, 39.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105320, 33.278561, 39.824558>,  <37.089138, 33.646996, 39.979458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105320, 33.278561, 39.824558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359076, -0.375078, 0.854623,
		-0.932431, 0.104479, -0.345914,
		0.040454, -0.921087, -0.387251,
		37.117455, 33.002235, 39.708382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444191, 33.319798, 40.132759>,  <37.089138, 33.646996, 39.979458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444191, 33.319798, 40.132759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733334, 33.045113, 40.102009>,  <36.906818, 32.880302, 40.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733334, 33.045113, 40.102009>,  <36.444191, 33.319798, 40.132759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733334, 33.045113, 40.102009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296582, -0.408805, 0.863086,
		-0.624119, -0.601084, -0.499172,
		0.722851, -0.686714, -0.076873,
		36.950188, 32.839100, 40.078949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144226, 32.745968, 40.371300>,  <36.444191, 33.319798, 40.132759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144226, 32.745968, 40.371300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530190, 32.640926, 40.371532>,  <36.761768, 32.577900, 40.371670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530190, 32.640926, 40.371532>,  <36.144226, 32.745968, 40.371300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530190, 32.640926, 40.371532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162283, -0.594559, 0.787504,
		-0.206457, -0.759960, -0.616309,
		0.964904, -0.262602, 0.000578,
		36.819660, 32.562145, 40.371704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085987, 32.007656, 40.381847>,  <36.144226, 32.745968, 40.371300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085987, 32.007656, 40.381847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444553, 32.118526, 40.520184>,  <36.659695, 32.185047, 40.603184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444553, 32.118526, 40.520184>,  <36.085987, 32.007656, 40.381847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444553, 32.118526, 40.520184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196410, -0.451075, 0.870606,
		0.397309, -0.848355, -0.349913,
		0.896420, 0.277173, 0.345841,
		36.713478, 32.201679, 40.623936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466190, 31.433521, 40.622570>,  <36.085987, 32.007656, 40.381847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466190, 31.433521, 40.622570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569023, 31.763908, 40.823242>,  <36.630722, 31.962141, 40.943645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569023, 31.763908, 40.823242>,  <36.466190, 31.433521, 40.622570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569023, 31.763908, 40.823242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373109, -0.394047, 0.839950,
		0.891459, -0.403118, 0.206874,
		0.257081, 0.825968, 0.501684,
		36.646149, 32.011700, 40.973747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524658, 31.280809, 41.364162>,  <36.466190, 31.433521, 40.622570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524658, 31.280809, 41.364162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642696, 31.652571, 41.452824>,  <36.713520, 31.875628, 41.506020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642696, 31.652571, 41.452824>,  <36.524658, 31.280809, 41.364162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642696, 31.652571, 41.452824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179286, -0.174002, 0.968287,
		0.938497, -0.325474, 0.115282,
		0.295093, 0.929403, 0.221653,
		36.731224, 31.931391, 41.519318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073105, 31.306004, 41.845234>,  <36.524658, 31.280809, 41.364162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073105, 31.306004, 41.845234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873714, 31.652094, 41.866810>,  <36.754082, 31.859749, 41.879757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873714, 31.652094, 41.866810>,  <37.073105, 31.306004, 41.845234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873714, 31.652094, 41.866810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081398, -0.108660, 0.990741,
		0.863076, 0.489466, 0.124592,
		-0.498472, 0.865226, 0.053940,
		36.724174, 31.911661, 41.882992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185585, 31.626606, 42.521336>,  <37.073105, 31.306004, 41.845234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185585, 31.626606, 42.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849022, 31.831764, 42.453251>,  <36.647083, 31.954859, 42.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849022, 31.831764, 42.453251>,  <37.185585, 31.626606, 42.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849022, 31.831764, 42.453251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149380, 0.081946, 0.985378,
		0.519346, 0.854530, 0.007667,
		-0.841407, 0.512898, -0.170208,
		36.596600, 31.985634, 42.402187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171188, 32.240730, 43.034237>,  <37.185585, 31.626606, 42.521336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171188, 32.240730, 43.034237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802814, 32.158764, 42.901642>,  <36.581791, 32.109585, 42.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802814, 32.158764, 42.901642>,  <37.171188, 32.240730, 43.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802814, 32.158764, 42.901642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361993, 0.134740, 0.922392,
		-0.144352, 0.969460, -0.198267,
		-0.920936, -0.204921, -0.331487,
		36.526535, 32.097286, 42.802197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575653, 32.450348, 43.443016>,  <37.171188, 32.240730, 43.034237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575653, 32.450348, 43.443016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943012, 32.326099, 43.541035>,  <37.163429, 32.251549, 43.599846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943012, 32.326099, 43.541035>,  <36.575653, 32.450348, 43.443016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943012, 32.326099, 43.541035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352090, -0.359147, 0.864318,
		-0.180470, -0.880071, -0.439209,
		0.918402, -0.310625, 0.245049,
		37.218533, 32.232910, 43.614548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507000, 31.811096, 43.588940>,  <36.575653, 32.450348, 43.443016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507000, 31.811096, 43.588940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837807, 31.917870, 43.786842>,  <37.036293, 31.981934, 43.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837807, 31.917870, 43.786842>,  <36.507000, 31.811096, 43.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837807, 31.917870, 43.786842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427955, -0.271748, 0.861979,
		0.364542, -0.924607, -0.110504,
		0.827021, 0.266936, 0.494754,
		37.085915, 31.997950, 43.935268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725491, 31.406666, 44.145630>,  <36.507000, 31.811096, 43.588940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725491, 31.406666, 44.145630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826508, 31.778975, 44.251377>,  <36.887115, 32.002357, 44.314827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826508, 31.778975, 44.251377>,  <36.725491, 31.406666, 44.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826508, 31.778975, 44.251377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248792, -0.201575, 0.947349,
		0.935054, -0.305016, 0.180662,
		0.252540, 0.930770, 0.264369,
		36.902271, 32.058205, 44.330688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798634, 30.719637, 43.667248>,  <36.725491, 31.406666, 44.145630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798634, 30.719637, 43.667248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445358, 30.863932, 43.787148>,  <36.233395, 30.950508, 43.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445358, 30.863932, 43.787148>,  <36.798634, 30.719637, 43.667248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445358, 30.863932, 43.787148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137268, 0.412316, -0.900640,
		-0.448486, -0.836580, -0.314634,
		-0.883186, 0.360735, 0.299753,
		36.180401, 30.972153, 43.877075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262543, 30.631584, 43.181786>,  <36.798634, 30.719637, 43.667248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262543, 30.631584, 43.181786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125690, 30.924196, 43.417690>,  <36.043579, 31.099764, 43.559231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125690, 30.924196, 43.417690>,  <36.262543, 30.631584, 43.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125690, 30.924196, 43.417690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192813, 0.559624, -0.806005,
		-0.919658, -0.389471, -0.050416,
		-0.342130, 0.731528, 0.589758,
		36.023052, 31.143654, 43.594616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639065, 30.954704, 42.952106>,  <36.262543, 30.631584, 43.181786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639065, 30.954704, 42.952106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849274, 31.237659, 43.141178>,  <35.975399, 31.407433, 43.254620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849274, 31.237659, 43.141178>,  <35.639065, 30.954704, 42.952106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849274, 31.237659, 43.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135898, 0.618246, -0.774147,
		-0.839854, 0.342598, 0.421037,
		0.525526, 0.707388, 0.472678,
		36.006931, 31.449877, 43.282982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253204, 31.640940, 42.918869>,  <35.639065, 30.954704, 42.952106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253204, 31.640940, 42.918869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648731, 31.689032, 42.954155>,  <35.886047, 31.717886, 42.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648731, 31.689032, 42.954155>,  <35.253204, 31.640940, 42.918869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648731, 31.689032, 42.954155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002286, 0.603714, -0.797198,
		-0.149100, 0.788083, 0.597238,
		0.988819, 0.120228, 0.088213,
		35.945377, 31.725100, 42.980618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361969, 31.929766, 42.314835>,  <35.253204, 31.640940, 42.918869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361969, 31.929766, 42.314835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723946, 31.983391, 42.476379>,  <35.941132, 32.015564, 42.573307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723946, 31.983391, 42.476379>,  <35.361969, 31.929766, 42.314835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723946, 31.983391, 42.476379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345483, 0.322633, -0.881220,
		-0.248439, 0.936982, 0.245648,
		0.904942, 0.134062, 0.403866,
		35.995430, 32.023609, 42.597538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535816, 32.569576, 42.105465>,  <35.361969, 31.929766, 42.314835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535816, 32.569576, 42.105465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 32.362118, 42.180084>,  <36.069824, 32.237644, 42.224854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 32.362118, 42.180084>,  <35.535816, 32.569576, 42.105465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869572, 32.362118, 42.180084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406770, 0.351061, -0.843383,
		0.371926, 0.779593, 0.503891,
		0.834392, -0.518644, 0.186546,
		36.119888, 32.206524, 42.236050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064766, 33.051685, 41.852188>,  <35.535816, 32.569576, 42.105465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064766, 33.051685, 41.852188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260384, 32.702995, 41.864418>,  <36.377754, 32.493782, 41.871758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260384, 32.702995, 41.864418>,  <36.064766, 33.051685, 41.852188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260384, 32.702995, 41.864418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310056, 0.140965, -0.940209,
		0.815292, 0.469285, 0.339222,
		0.489045, -0.871723, 0.030577,
		36.407097, 32.441479, 41.873592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620136, 33.255157, 41.472412>,  <36.064766, 33.051685, 41.852188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620136, 33.255157, 41.472412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628910, 32.860126, 41.534645>,  <36.634174, 32.623108, 41.571983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628910, 32.860126, 41.534645>,  <36.620136, 33.255157, 41.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628910, 32.860126, 41.534645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641629, -0.105435, -0.759734,
		0.766701, 0.116494, 0.631346,
		0.021939, -0.987579, 0.155583,
		36.635490, 32.563854, 41.581322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178020, 32.988247, 41.676487>,  <36.620136, 33.255157, 41.472412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178020, 32.988247, 41.676487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036404, 32.673580, 41.474174>,  <36.951435, 32.484779, 41.352787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036404, 32.673580, 41.474174>,  <37.178020, 32.988247, 41.676487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036404, 32.673580, 41.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621376, 0.206323, -0.755859,
		0.698963, -0.581881, 0.415770,
		-0.354038, -0.786667, -0.505779,
		36.930191, 32.437580, 41.322441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803349, 32.514050, 41.525322>,  <37.178020, 32.988247, 41.676487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803349, 32.514050, 41.525322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497120, 32.394260, 41.297565>,  <37.313381, 32.322388, 41.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497120, 32.394260, 41.297565>,  <37.803349, 32.514050, 41.525322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497120, 32.394260, 41.297565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565910, 0.107494, -0.817430,
		0.306006, -0.948029, 0.087181,
		-0.765576, -0.299475, -0.569393,
		37.267448, 32.304417, 41.126747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985699, 32.250153, 40.949959>,  <37.803349, 32.514050, 41.525322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985699, 32.250153, 40.949959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603397, 32.268440, 40.833721>,  <37.374016, 32.279411, 40.763977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603397, 32.268440, 40.833721>,  <37.985699, 32.250153, 40.949959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603397, 32.268440, 40.833721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293562, 0.084687, -0.952182,
		-0.018925, -0.995358, -0.094361,
		-0.955753, 0.045721, -0.290597,
		37.316673, 32.282154, 40.746544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037548, 32.106697, 40.284775>,  <37.985699, 32.250153, 40.949959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037548, 32.106697, 40.284775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667027, 32.254719, 40.313141>,  <37.444714, 32.343533, 40.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667027, 32.254719, 40.313141>,  <38.037548, 32.106697, 40.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667027, 32.254719, 40.313141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003643, 0.179400, -0.983769,
		-0.376771, -0.911523, -0.164830,
		-0.926299, 0.370055, 0.070913,
		37.389137, 32.365734, 40.334415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753559, 31.977724, 39.654366>,  <38.037548, 32.106697, 40.284775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753559, 31.977724, 39.654366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457142, 32.222576, 39.764744>,  <37.279289, 32.369488, 39.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457142, 32.222576, 39.764744>,  <37.753559, 31.977724, 39.654366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457142, 32.222576, 39.764744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167774, 0.229129, -0.958828,
		-0.650155, -0.756833, -0.067095,
		-0.741046, 0.612131, 0.275946,
		37.234829, 32.406216, 39.847527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170456, 31.803795, 39.221935>,  <37.753559, 31.977724, 39.654366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170456, 31.803795, 39.221935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147007, 32.178333, 39.360397>,  <37.132938, 32.403057, 39.443474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147007, 32.178333, 39.360397>,  <37.170456, 31.803795, 39.221935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147007, 32.178333, 39.360397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016929, 0.345766, -0.938168,
		-0.998137, -0.060855, -0.004417,
		-0.058619, 0.936345, 0.346152,
		37.129421, 32.459236, 39.464245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547073, 32.128113, 38.838070>,  <37.170456, 31.803795, 39.221935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547073, 32.128113, 38.838070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824814, 32.378048, 38.980877>,  <36.991459, 32.528008, 39.066563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824814, 32.378048, 38.980877>,  <36.547073, 32.128113, 38.838070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824814, 32.378048, 38.980877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052040, 0.451212, -0.890898,
		-0.717755, 0.637173, 0.280782,
		0.694349, 0.624835, 0.357018,
		37.033119, 32.565498, 39.087982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556881, 32.632843, 38.407299>,  <36.547073, 32.128113, 38.838070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556881, 32.632843, 38.407299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845894, 32.791599, 38.633728>,  <37.019302, 32.886852, 38.769585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845894, 32.791599, 38.633728>,  <36.556881, 32.632843, 38.407299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845894, 32.791599, 38.633728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087098, 0.760016, -0.644042,
		-0.685833, 0.514642, 0.514565,
		0.722529, 0.396887, 0.566068,
		37.062653, 32.910664, 38.803547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450352, 33.387630, 38.508621>,  <36.556881, 32.632843, 38.407299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450352, 33.387630, 38.508621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841011, 33.316574, 38.556942>,  <37.075409, 33.273941, 38.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841011, 33.316574, 38.556942>,  <36.450352, 33.387630, 38.508621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841011, 33.316574, 38.556942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202189, 0.570093, -0.796312,
		0.072591, 0.802145, 0.592700,
		0.976652, -0.177643, 0.120801,
		37.134007, 33.263283, 38.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845787, 34.006050, 38.305630>,  <36.450352, 33.387630, 38.508621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845787, 34.006050, 38.305630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126148, 33.720821, 38.312027>,  <37.294365, 33.549683, 38.315865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126148, 33.720821, 38.312027>,  <36.845787, 34.006050, 38.305630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126148, 33.720821, 38.312027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498461, 0.473669, -0.726068,
		0.510164, 0.516879, 0.687437,
		0.700906, -0.713074, 0.015995,
		37.336422, 33.506901, 38.316826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405304, 34.428238, 38.164639>,  <36.845787, 34.006050, 38.305630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405304, 34.428238, 38.164639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490940, 34.042637, 38.101559>,  <37.542320, 33.811275, 38.063709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490940, 34.042637, 38.101559>,  <37.405304, 34.428238, 38.164639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490940, 34.042637, 38.101559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753673, 0.265716, -0.601142,
		0.621405, 0.009843, 0.783428,
		0.214087, -0.964001, -0.157699,
		37.555164, 33.753437, 38.054249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101280, 34.403557, 38.170403>,  <37.405304, 34.428238, 38.164639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101280, 34.403557, 38.170403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988926, 34.079281, 37.964920>,  <37.921513, 33.884716, 37.841633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988926, 34.079281, 37.964920>,  <38.101280, 34.403557, 38.170403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988926, 34.079281, 37.964920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632842, 0.245955, -0.734178,
		0.721536, -0.531312, 0.443952,
		-0.280885, -0.810687, -0.513702,
		37.904659, 33.836075, 37.810810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687347, 34.205139, 37.958641>,  <38.101280, 34.403557, 38.170403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687347, 34.205139, 37.958641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417187, 34.038246, 37.715412>,  <38.255093, 33.938110, 37.569473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417187, 34.038246, 37.715412>,  <38.687347, 34.205139, 37.958641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417187, 34.038246, 37.715412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549003, 0.266061, -0.792343,
		0.492374, -0.868983, 0.049363,
		-0.675399, -0.417229, -0.608076,
		38.214565, 33.913078, 37.532990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035828, 33.759907, 37.443604>,  <38.687347, 34.205139, 37.958641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035828, 33.759907, 37.443604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689045, 33.861343, 37.271984>,  <38.480976, 33.922207, 37.169010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689045, 33.861343, 37.271984>,  <39.035828, 33.759907, 37.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689045, 33.861343, 37.271984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483516, 0.219212, -0.847442,
		-0.120851, -0.942145, -0.312662,
		-0.866952, 0.253591, -0.429051,
		38.428959, 33.937420, 37.143269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143780, 33.600681, 36.746845>,  <39.035828, 33.759907, 37.443604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143780, 33.600681, 36.746845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809357, 33.816601, 36.707607>,  <38.608704, 33.946152, 36.684063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809357, 33.816601, 36.707607>,  <39.143780, 33.600681, 36.746845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809357, 33.816601, 36.707607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306123, 0.310598, -0.899899,
		-0.455299, -0.782396, -0.424923,
		-0.836057, 0.539802, -0.098095,
		38.558540, 33.978542, 36.678181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854828, 33.468674, 36.006802>,  <39.143780, 33.600681, 36.746845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854828, 33.468674, 36.006802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702488, 33.814587, 36.137714>,  <38.611084, 34.022133, 36.216263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702488, 33.814587, 36.137714>,  <38.854828, 33.468674, 36.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702488, 33.814587, 36.137714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221468, 0.428969, -0.875750,
		-0.897722, -0.261047, -0.354894,
		-0.380850, 0.864778, 0.327281,
		38.588234, 34.074020, 36.235897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201889, 33.214069, 35.459354>,  <38.854828, 33.468674, 36.006802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201889, 33.214069, 35.459354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286530, 33.093716, 35.831310>,  <39.337315, 33.021503, 36.054485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286530, 33.093716, 35.831310>,  <39.201889, 33.214069, 35.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286530, 33.093716, 35.831310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, -0.840870, -0.363360,
		0.891244, 0.449897, -0.057239,
		0.211605, -0.300882, 0.929889,
		39.350010, 33.003452, 36.110275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866028, 32.907970, 35.414814>,  <39.201889, 33.214069, 35.459354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866028, 32.907970, 35.414814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713226, 32.784225, 35.763149>,  <39.621544, 32.709980, 35.972153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713226, 32.784225, 35.763149>,  <39.866028, 32.907970, 35.414814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713226, 32.784225, 35.763149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383159, -0.910520, -0.155379,
		0.840987, 0.274315, 0.466361,
		-0.382008, -0.309362, 0.870841,
		39.598625, 32.691418, 36.024403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406002, 32.567467, 35.872818>,  <39.866028, 32.907970, 35.414814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406002, 32.567467, 35.872818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038456, 32.412216, 35.901211>,  <39.817928, 32.319065, 35.918247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038456, 32.412216, 35.901211>,  <40.406002, 32.567467, 35.872818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038456, 32.412216, 35.901211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352640, -0.888542, -0.293491,
		0.176985, -0.244648, 0.953322,
		-0.918869, -0.388123, 0.070986,
		39.762794, 32.295780, 35.922508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331322, 31.971479, 35.589523>,  <40.406002, 32.567467, 35.872818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331322, 31.971479, 35.589523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256729, 32.204098, 35.272781>,  <40.211975, 32.343670, 35.082737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256729, 32.204098, 35.272781>,  <40.331322, 31.971479, 35.589523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256729, 32.204098, 35.272781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482221, 0.756403, 0.441948,
		0.855972, -0.299433, -0.421488,
		-0.186480, 0.581545, -0.791852,
		40.200787, 32.378563, 35.035225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001125, 32.362694, 35.306908>,  <40.331322, 31.971479, 35.589523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001125, 32.362694, 35.306908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655968, 32.555229, 35.245289>,  <40.448875, 32.670750, 35.208317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655968, 32.555229, 35.245289>,  <41.001125, 32.362694, 35.306908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655968, 32.555229, 35.245289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347567, 0.786471, 0.510550,
		0.366904, 0.387006, -0.845936,
		-0.862890, 0.481342, -0.154049,
		40.397102, 32.699631, 35.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348625, 33.025478, 35.353680>,  <41.001125, 32.362694, 35.306908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348625, 33.025478, 35.353680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954842, 33.085033, 35.390923>,  <40.718571, 33.120766, 35.413269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954842, 33.085033, 35.390923>,  <41.348625, 33.025478, 35.353680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954842, 33.085033, 35.390923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173373, 0.739927, 0.649961,
		0.027877, 0.656004, -0.754242,
		-0.984462, 0.148884, 0.093106,
		40.659504, 33.129700, 35.418854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488827, 33.705006, 35.537685>,  <41.348625, 33.025478, 35.353680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488827, 33.705006, 35.537685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144855, 33.651043, 35.734589>,  <40.938473, 33.618664, 35.852730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144855, 33.651043, 35.734589>,  <41.488827, 33.705006, 35.537685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144855, 33.651043, 35.734589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442726, 0.282785, 0.850897,
		-0.253998, 0.949648, -0.183447,
		-0.859929, -0.134909, 0.492261,
		40.886875, 33.610569, 35.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191528, 33.560211, 35.259438>,  <41.488827, 33.705006, 35.537685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191528, 33.560211, 35.259438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473194, 33.491234, 34.983929>,  <42.642193, 33.449848, 34.818623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473194, 33.491234, 34.983929>,  <42.191528, 33.560211, 35.259438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473194, 33.491234, 34.983929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705384, -0.280749, -0.650856,
		-0.081137, 0.944163, -0.319333,
		0.704166, -0.172444, -0.688777,
		42.684444, 33.439499, 34.777294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155476, 33.956024, 34.614674>,  <42.191528, 33.560211, 35.259438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155476, 33.956024, 34.614674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323502, 33.597431, 34.558308>,  <42.424316, 33.382275, 34.524487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323502, 33.597431, 34.558308>,  <42.155476, 33.956024, 34.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323502, 33.597431, 34.558308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765664, -0.266767, -0.585315,
		0.487135, 0.353765, -0.798467,
		0.420068, -0.896485, -0.140914,
		42.449524, 33.328487, 34.516033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846535, 34.358681, 35.143223>,  <42.155476, 33.956024, 34.614674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846535, 34.358681, 35.143223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741566, 34.540756, 35.483562>,  <41.678585, 34.650002, 35.687767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741566, 34.540756, 35.483562>,  <41.846535, 34.358681, 35.143223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741566, 34.540756, 35.483562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733725, -0.478559, 0.482315,
		0.626724, 0.750857, -0.208400,
		-0.262418, 0.455187, 0.850847,
		41.662842, 34.677311, 35.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401024, 34.290371, 35.630714>,  <41.846535, 34.358681, 35.143223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401024, 34.290371, 35.630714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154675, 34.493103, 35.871983>,  <42.006866, 34.614742, 36.016743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154675, 34.493103, 35.871983>,  <42.401024, 34.290371, 35.630714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154675, 34.493103, 35.871983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614118, -0.170746, 0.770522,
		0.493516, 0.844965, -0.206097,
		-0.615874, 0.506833, 0.603175,
		41.969913, 34.645153, 36.052937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047230, 34.388161, 36.144833>,  <42.401024, 34.290371, 35.630714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047230, 34.388161, 36.144833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903679, 34.628822, 36.430271>,  <42.817547, 34.773220, 36.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903679, 34.628822, 36.430271>,  <43.047230, 34.388161, 36.144833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903679, 34.628822, 36.430271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791695, -0.208736, 0.574149,
		0.494394, 0.770998, -0.401418,
		-0.358877, 0.601657, 0.713594,
		42.796017, 34.809319, 36.644348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584484, 34.917545, 36.341949>,  <43.047230, 34.388161, 36.144833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584484, 34.917545, 36.341949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329807, 34.770538, 36.613110>,  <43.177002, 34.682335, 36.775806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329807, 34.770538, 36.613110>,  <43.584484, 34.917545, 36.341949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329807, 34.770538, 36.613110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753049, -0.485525, 0.444053,
		0.165938, 0.793218, 0.585892,
		-0.636696, -0.367520, 0.677899,
		43.138798, 34.660282, 36.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228390, 35.251118, 36.316795>,  <43.584484, 34.917545, 36.341949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228390, 35.251118, 36.316795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242710, 35.069668, 35.960606>,  <44.251305, 34.960800, 35.746891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242710, 35.069668, 35.960606>,  <44.228390, 35.251118, 36.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242710, 35.069668, 35.960606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980533, 0.188082, -0.056388,
		0.193062, -0.871122, 0.451524,
		0.035803, -0.453621, -0.890475,
		44.253452, 34.933582, 35.693462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733051, 34.671410, 36.285725>,  <44.228390, 35.251118, 36.316795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733051, 34.671410, 36.285725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677189, 34.845184, 35.929802>,  <44.643673, 34.949448, 35.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677189, 34.845184, 35.929802>,  <44.733051, 34.671410, 36.285725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677189, 34.845184, 35.929802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980094, 0.188708, -0.061689,
		0.141114, -0.880713, -0.452142,
		-0.139653, 0.434436, -0.889810,
		44.635292, 34.975513, 35.662857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391586, 34.545029, 36.003361>,  <44.733051, 34.671410, 36.285725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391586, 34.545029, 36.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221325, 34.829468, 35.779514>,  <45.119167, 35.000130, 35.645206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221325, 34.829468, 35.779514>,  <45.391586, 34.545029, 36.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221325, 34.829468, 35.779514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902900, 0.374720, -0.210612,
		0.059933, -0.594921, -0.801547,
		-0.425653, 0.711094, -0.559612,
		45.093628, 35.042797, 35.611629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892044, 34.740463, 35.427147>,  <45.391586, 34.545029, 36.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892044, 34.740463, 35.427147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662979, 35.065578, 35.469933>,  <45.525539, 35.260647, 35.495605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662979, 35.065578, 35.469933>,  <45.892044, 34.740463, 35.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662979, 35.065578, 35.469933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798514, 0.582564, -0.151642,
		-0.185568, -0.001424, -0.982630,
		-0.572661, 0.812784, 0.106968,
		45.491180, 35.309414, 35.502022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217892, 35.161839, 34.894428>,  <45.892044, 34.740463, 35.427147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217892, 35.161839, 34.894428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069584, 35.335068, 35.223057>,  <45.980598, 35.439003, 35.420235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069584, 35.335068, 35.223057>,  <46.217892, 35.161839, 34.894428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069584, 35.335068, 35.223057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855926, 0.502670, 0.121304,
		-0.360446, 0.748180, -0.557050,
		-0.370769, 0.433070, 0.821572,
		45.958355, 35.464989, 35.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867973, 34.741688, 34.678493>,  <46.217892, 35.161839, 34.894428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867973, 34.741688, 34.678493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236919, 34.624832, 34.577385>,  <47.458286, 34.554718, 34.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236919, 34.624832, 34.577385>,  <46.867973, 34.741688, 34.678493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236919, 34.624832, 34.577385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380605, 0.799256, 0.465114,
		0.066150, -0.525211, 0.848397,
		0.922369, -0.292137, -0.252768,
		47.513630, 34.537189, 34.501553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.376820, 34.628334, 35.254261>,  <46.867973, 34.741688, 34.678493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.376820, 34.628334, 35.254261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506050, 34.750866, 34.896091>,  <47.583588, 34.824383, 34.681190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506050, 34.750866, 34.896091>,  <47.376820, 34.628334, 35.254261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506050, 34.750866, 34.896091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204664, 0.901159, 0.382132,
		0.923978, -0.306719, 0.228448,
		0.323075, 0.306326, -0.895425,
		47.602974, 34.842762, 34.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.998821, 35.007080, 35.347687>,  <47.376820, 34.628334, 35.254261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.998821, 35.007080, 35.347687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868328, 35.117104, 34.985931>,  <47.790031, 35.183117, 34.768879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868328, 35.117104, 34.985931>,  <47.998821, 35.007080, 35.347687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.868328, 35.117104, 34.985931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260025, 0.945933, 0.193901,
		0.908822, -0.171905, -0.380121,
		-0.326236, 0.275063, -0.904384,
		47.770458, 35.199623, 34.714615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.767078, 36.476402, 26.479668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483646, 36.750496, 26.547047>,  <36.313587, 36.914951, 26.587473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483646, 36.750496, 26.547047>,  <36.767078, 36.476402, 26.479668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483646, 36.750496, 26.547047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315394, -0.521096, 0.793086,
		0.631226, 0.508835, 0.585355,
		-0.708576, 0.685234, 0.168446,
		36.271072, 36.956066, 26.597580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675529, 36.466354, 27.207922>,  <36.767078, 36.476402, 26.479668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675529, 36.466354, 27.207922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345631, 36.632366, 27.054276>,  <36.147690, 36.731972, 26.962088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345631, 36.632366, 27.054276>,  <36.675529, 36.466354, 27.207922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345631, 36.632366, 27.054276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551305, -0.438845, 0.709561,
		0.125922, 0.796973, 0.590744,
		-0.824746, 0.415029, -0.384115,
		36.098206, 36.756874, 26.939041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426384, 37.063107, 27.692045>,  <36.675529, 36.466354, 27.207922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426384, 37.063107, 27.692045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146111, 36.860668, 27.490885>,  <35.977947, 36.739204, 27.370190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146111, 36.860668, 27.490885>,  <36.426384, 37.063107, 27.692045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146111, 36.860668, 27.490885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354509, -0.364733, 0.860984,
		-0.619166, 0.781560, 0.076147,
		-0.700684, -0.506097, -0.502900,
		35.935905, 36.708839, 27.340015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798183, 37.122387, 28.089989>,  <36.426384, 37.063107, 27.692045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798183, 37.122387, 28.089989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710148, 36.822483, 27.840372>,  <35.657326, 36.642540, 27.690603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710148, 36.822483, 27.840372>,  <35.798183, 37.122387, 28.089989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710148, 36.822483, 27.840372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393357, -0.517195, 0.760118,
		-0.892654, 0.412765, -0.181093,
		-0.220090, -0.749756, -0.624040,
		35.644119, 36.597557, 27.653160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148796, 37.106377, 28.103813>,  <35.798183, 37.122387, 28.089989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148796, 37.106377, 28.103813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232605, 36.732677, 27.988379>,  <35.282890, 36.508457, 27.919119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232605, 36.732677, 27.988379>,  <35.148796, 37.106377, 28.103813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232605, 36.732677, 27.988379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503908, -0.356093, 0.786941,
		-0.837961, -0.019462, -0.545384,
		0.209522, -0.934248, -0.288585,
		35.295464, 36.452404, 27.901804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519169, 36.685940, 28.267813>,  <35.148796, 37.106377, 28.103813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519169, 36.685940, 28.267813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773930, 36.380630, 28.224430>,  <34.926788, 36.197445, 28.198400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773930, 36.380630, 28.224430>,  <34.519169, 36.685940, 28.267813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773930, 36.380630, 28.224430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279215, -0.359503, 0.890391,
		-0.718605, -0.536811, -0.442087,
		0.636903, -0.763277, -0.108455,
		34.965000, 36.151646, 28.191893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181744, 36.024731, 28.417023>,  <34.519169, 36.685940, 28.267813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181744, 36.024731, 28.417023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571476, 35.942596, 28.453945>,  <34.805313, 35.893314, 28.476099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571476, 35.942596, 28.453945>,  <34.181744, 36.024731, 28.417023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571476, 35.942596, 28.453945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172300, -0.416234, 0.892783,
		-0.144897, -0.885769, -0.440928,
		0.974329, -0.205334, 0.092307,
		34.863773, 35.880997, 28.481638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156216, 35.290703, 28.512520>,  <34.181744, 36.024731, 28.417023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156216, 35.290703, 28.512520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.492725, 35.457813, 28.649759>,  <34.694633, 35.558079, 28.732103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.492725, 35.457813, 28.649759>,  <34.156216, 35.290703, 28.512520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492725, 35.457813, 28.649759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159396, -0.414751, 0.895865,
		0.516571, -0.808360, -0.282329,
		0.841277, 0.417775, 0.343098,
		34.745110, 35.583145, 28.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471554, 34.769753, 28.907257>,  <34.156216, 35.290703, 28.512520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471554, 34.769753, 28.907257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598587, 35.125858, 29.037838>,  <34.674809, 35.339523, 29.116186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598587, 35.125858, 29.037838>,  <34.471554, 34.769753, 28.907257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598587, 35.125858, 29.037838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082044, -0.317186, 0.944808,
		0.944674, -0.326838, -0.027692,
		0.317583, 0.890264, 0.326452,
		34.693863, 35.392937, 29.135775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069164, 34.532162, 29.223372>,  <34.471554, 34.769753, 28.907257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069164, 34.532162, 29.223372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939445, 34.885506, 29.358727>,  <34.861614, 35.097511, 29.439939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939445, 34.885506, 29.358727>,  <35.069164, 34.532162, 29.223372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939445, 34.885506, 29.358727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145271, -0.399981, 0.904938,
		0.934736, 0.244307, 0.258038,
		-0.324293, 0.883363, 0.338386,
		34.842159, 35.150513, 29.460241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473534, 34.552837, 29.780809>,  <35.069164, 34.532162, 29.223372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473534, 34.552837, 29.780809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167988, 34.807644, 29.822237>,  <34.984661, 34.960526, 29.847094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167988, 34.807644, 29.822237>,  <35.473534, 34.552837, 29.780809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167988, 34.807644, 29.822237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109646, -0.286238, 0.951864,
		0.635995, 0.715739, 0.288492,
		-0.763864, 0.637013, 0.103568,
		34.938828, 34.998749, 29.853308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568291, 35.054726, 30.238739>,  <35.473534, 34.552837, 29.780809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568291, 35.054726, 30.238739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168346, 35.055931, 30.232136>,  <34.928379, 35.056656, 30.228174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168346, 35.055931, 30.232136>,  <35.568291, 35.054726, 30.238739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168346, 35.055931, 30.232136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016659, -0.297872, 0.954460,
		-0.002039, 0.954601, 0.297881,
		-0.999859, 0.003016, -0.016510,
		34.868389, 35.056835, 30.227182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359306, 35.418819, 30.882999>,  <35.568291, 35.054726, 30.238739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359306, 35.418819, 30.882999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046776, 35.208996, 30.747728>,  <34.859257, 35.083103, 30.666565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046776, 35.208996, 30.747728>,  <35.359306, 35.418819, 30.882999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046776, 35.208996, 30.747728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180001, -0.329430, 0.926863,
		-0.597599, 0.785058, 0.162972,
		-0.781329, -0.524557, -0.338178,
		34.812378, 35.051628, 30.646275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780067, 35.583206, 31.329594>,  <35.359306, 35.418819, 30.882999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780067, 35.583206, 31.329594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743317, 35.229973, 31.145540>,  <34.721268, 35.018032, 31.035109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743317, 35.229973, 31.145540>,  <34.780067, 35.583206, 31.329594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743317, 35.229973, 31.145540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214408, -0.433704, 0.875175,
		-0.972413, 0.179065, -0.149492,
		-0.091878, -0.883084, -0.460132,
		34.715752, 34.965046, 31.007500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101521, 35.247871, 31.547310>,  <34.780067, 35.583206, 31.329594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101521, 35.247871, 31.547310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341835, 34.952721, 31.424288>,  <34.486023, 34.775631, 31.350475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341835, 34.952721, 31.424288>,  <34.101521, 35.247871, 31.547310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341835, 34.952721, 31.424288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097206, -0.449302, 0.888076,
		-0.793479, -0.503645, -0.341660,
		0.600784, -0.737882, -0.307554,
		34.522072, 34.731358, 31.332022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805237, 34.705364, 31.877668>,  <34.101521, 35.247871, 31.547310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805237, 34.705364, 31.877668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162022, 34.572037, 31.755489>,  <34.376095, 34.492043, 31.682182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162022, 34.572037, 31.755489>,  <33.805237, 34.705364, 31.877668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162022, 34.572037, 31.755489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061369, -0.580096, 0.812233,
		-0.447917, -0.743230, -0.496971,
		0.891967, -0.333314, -0.305446,
		34.429611, 34.472042, 31.663855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817703, 34.013393, 32.092369>,  <33.805237, 34.705364, 31.877668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817703, 34.013393, 32.092369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203228, 34.086994, 32.015213>,  <34.434544, 34.131153, 31.968918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203228, 34.086994, 32.015213>,  <33.817703, 34.013393, 32.092369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203228, 34.086994, 32.015213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261688, -0.515103, 0.816203,
		0.050820, -0.837146, -0.544614,
		0.963813, 0.183999, -0.192893,
		34.492371, 34.142193, 31.957344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141014, 33.447678, 32.278324>,  <33.817703, 34.013393, 32.092369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141014, 33.447678, 32.278324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432869, 33.721172, 32.283043>,  <34.607983, 33.885269, 32.285873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432869, 33.721172, 32.283043>,  <34.141014, 33.447678, 32.278324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432869, 33.721172, 32.283043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424324, -0.466211, 0.776271,
		0.536264, -0.561389, -0.630289,
		0.729638, 0.683732, 0.011802,
		34.651760, 33.926292, 32.286583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728107, 33.022774, 32.410061>,  <34.141014, 33.447678, 32.278324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728107, 33.022774, 32.410061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859505, 33.387295, 32.509361>,  <34.938343, 33.606007, 32.568943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859505, 33.387295, 32.509361>,  <34.728107, 33.022774, 32.410061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859505, 33.387295, 32.509361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420214, -0.376399, 0.825678,
		0.845881, -0.166908, -0.506584,
		0.328490, 0.911299, 0.248251,
		34.958050, 33.660683, 32.583836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491337, 33.032269, 32.591705>,  <34.728107, 33.022774, 32.410061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491337, 33.032269, 32.591705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352348, 33.378452, 32.736057>,  <35.268955, 33.586163, 32.822670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352348, 33.378452, 32.736057>,  <35.491337, 33.032269, 32.591705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352348, 33.378452, 32.736057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480395, -0.166216, 0.861158,
		0.805284, 0.472598, -0.358007,
		-0.347475, 0.865461, 0.360884,
		35.248104, 33.638092, 32.844322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123016, 33.414490, 32.907513>,  <35.491337, 33.032269, 32.591705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123016, 33.414490, 32.907513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799629, 33.580532, 33.074398>,  <35.605595, 33.680157, 33.174530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799629, 33.580532, 33.074398>,  <36.123016, 33.414490, 32.907513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799629, 33.580532, 33.074398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350654, -0.229590, 0.907926,
		0.472671, 0.880328, 0.040059,
		-0.808470, 0.415103, 0.417212,
		35.557087, 33.705063, 33.199562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427429, 33.820816, 33.444469>,  <36.123016, 33.414490, 32.907513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427429, 33.820816, 33.444469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040077, 33.763313, 33.526028>,  <35.807667, 33.728813, 33.574963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040077, 33.763313, 33.526028>,  <36.427429, 33.820816, 33.444469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040077, 33.763313, 33.526028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236005, -0.262899, 0.935513,
		-0.080882, 0.954053, 0.288514,
		-0.968380, -0.143756, 0.203898,
		35.749565, 33.720188, 33.587196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046295, 33.490913, 33.799011>,  <36.427429, 33.820816, 33.444469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046295, 33.490913, 33.799011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349617, 33.243198, 33.880455>,  <37.531609, 33.094570, 33.929321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349617, 33.243198, 33.880455>,  <37.046295, 33.490913, 33.799011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349617, 33.243198, 33.880455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556042, 0.451413, -0.697885,
		0.340278, 0.642426, 0.686658,
		0.758306, -0.619286, 0.203610,
		37.577110, 33.057411, 33.941540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533775, 33.911053, 33.896816>,  <37.046295, 33.490913, 33.799011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533775, 33.911053, 33.896816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685684, 33.554497, 33.797867>,  <37.776829, 33.340565, 33.738495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685684, 33.554497, 33.797867>,  <37.533775, 33.911053, 33.896816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685684, 33.554497, 33.797867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478328, 0.418106, -0.772263,
		0.791817, 0.174958, 0.585163,
		0.379774, -0.891390, -0.247376,
		37.799618, 33.287079, 33.723656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141106, 34.091339, 33.723183>,  <37.533775, 33.911053, 33.896816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141106, 34.091339, 33.723183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109715, 33.719551, 33.579002>,  <38.090881, 33.496479, 33.492493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109715, 33.719551, 33.579002>,  <38.141106, 34.091339, 33.723183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109715, 33.719551, 33.579002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568381, 0.255331, -0.782144,
		0.819014, -0.266252, 0.508257,
		-0.078474, -0.929470, -0.360453,
		38.086174, 33.440708, 33.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844769, 33.844551, 33.539597>,  <38.141106, 34.091339, 33.723183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844769, 33.844551, 33.539597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569130, 33.657261, 33.318359>,  <38.403748, 33.544888, 33.185616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569130, 33.657261, 33.318359>,  <38.844769, 33.844551, 33.539597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569130, 33.657261, 33.318359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418745, 0.365641, -0.831240,
		0.591442, -0.804408, -0.055893,
		-0.689093, -0.468225, -0.553097,
		38.362404, 33.516792, 33.152431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210194, 33.622082, 32.945297>,  <38.844769, 33.844551, 33.539597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210194, 33.622082, 32.945297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828705, 33.583595, 32.831345>,  <38.599812, 33.560505, 32.762974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828705, 33.583595, 32.831345>,  <39.210194, 33.622082, 32.945297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828705, 33.583595, 32.831345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247392, 0.287447, -0.925295,
		0.170916, -0.952951, -0.250341,
		-0.953722, -0.096216, -0.284882,
		38.542587, 33.554729, 32.745880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247341, 33.357594, 32.245861>,  <39.210194, 33.622082, 32.945297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247341, 33.357594, 32.245861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875298, 33.497612, 32.290329>,  <38.652069, 33.581623, 32.317009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875298, 33.497612, 32.290329>,  <39.247341, 33.357594, 32.245861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875298, 33.497612, 32.290329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034073, 0.383624, -0.922861,
		-0.365695, -0.854574, -0.368740,
		-0.930111, 0.350050, 0.111171,
		38.596264, 33.602627, 32.323681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903362, 33.234146, 31.610367>,  <39.247341, 33.357594, 32.245861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903362, 33.234146, 31.610367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707294, 33.543190, 31.771763>,  <38.589653, 33.728615, 31.868601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707294, 33.543190, 31.771763>,  <38.903362, 33.234146, 31.610367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707294, 33.543190, 31.771763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105964, 0.512306, -0.852240,
		-0.865161, -0.374989, -0.332987,
		-0.490172, 0.772609, 0.403492,
		38.560242, 33.774971, 31.892811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550457, 33.436485, 31.076368>,  <38.903362, 33.234146, 31.610367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550457, 33.436485, 31.076368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558403, 33.745972, 31.329657>,  <38.563171, 33.931664, 31.481630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558403, 33.745972, 31.329657>,  <38.550457, 33.436485, 31.076368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558403, 33.745972, 31.329657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039711, 0.632236, -0.773758,
		-0.999014, 0.040520, -0.018164,
		0.019869, 0.773716, 0.633221,
		38.564365, 33.978085, 31.519623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237656, 33.879200, 30.660482>,  <38.550457, 33.436485, 31.076368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237656, 33.879200, 30.660482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400486, 34.094799, 30.955448>,  <38.498184, 34.224159, 31.132427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400486, 34.094799, 30.955448>,  <38.237656, 33.879200, 30.660482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400486, 34.094799, 30.955448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171833, 0.747725, -0.641389,
		-0.897088, 0.387803, 0.211760,
		0.407071, 0.538995, 0.737413,
		38.522606, 34.256496, 31.176672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754162, 34.469025, 30.761660>,  <38.237656, 33.879200, 30.660482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754162, 34.469025, 30.761660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138622, 34.523396, 30.857752>,  <38.369297, 34.556019, 30.915407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138622, 34.523396, 30.857752>,  <37.754162, 34.469025, 30.761660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138622, 34.523396, 30.857752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127478, 0.553365, -0.823126,
		-0.244817, 0.821774, 0.514541,
		0.961152, 0.135922, 0.240232,
		38.426968, 34.564171, 30.929821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944271, 35.109535, 30.567215>,  <37.754162, 34.469025, 30.761660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944271, 35.109535, 30.567215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304947, 34.936825, 30.576366>,  <38.521351, 34.833199, 30.581858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304947, 34.936825, 30.576366>,  <37.944271, 35.109535, 30.567215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304947, 34.936825, 30.576366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228229, 0.430332, -0.873342,
		0.367245, 0.792705, 0.486570,
		0.901689, -0.431780, 0.022881,
		38.575455, 34.807289, 30.583231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350170, 35.629143, 30.441317>,  <37.944271, 35.109535, 30.567215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350170, 35.629143, 30.441317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547142, 35.292206, 30.353712>,  <38.665325, 35.090042, 30.301149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547142, 35.292206, 30.353712>,  <38.350170, 35.629143, 30.441317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547142, 35.292206, 30.353712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198984, 0.353930, -0.913859,
		0.847299, 0.406434, 0.341900,
		0.492432, -0.842345, -0.219011,
		38.694870, 35.039501, 30.288010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882427, 35.906754, 29.935642>,  <38.350170, 35.629143, 30.441317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882427, 35.906754, 29.935642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799812, 35.518326, 29.887707>,  <38.750244, 35.285267, 29.858946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799812, 35.518326, 29.887707>,  <38.882427, 35.906754, 29.935642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799812, 35.518326, 29.887707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118607, 0.146425, -0.982085,
		0.971223, -0.188622, -0.145419,
		-0.206536, -0.971072, -0.119839,
		38.737850, 35.227005, 29.851755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278534, 35.658936, 29.425402>,  <38.882427, 35.906754, 29.935642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278534, 35.658936, 29.425402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966324, 35.409462, 29.442375>,  <38.778999, 35.259777, 29.452559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966324, 35.409462, 29.442375>,  <39.278534, 35.658936, 29.425402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966324, 35.409462, 29.442375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014459, -0.049851, -0.998652,
		0.624955, -0.780088, 0.029892,
		-0.780526, -0.623681, 0.042434,
		38.732166, 35.222359, 29.455105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486191, 35.155605, 28.991304>,  <39.278534, 35.658936, 29.425402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486191, 35.155605, 28.991304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090107, 35.100433, 28.982634>,  <38.852459, 35.067329, 28.977430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090107, 35.100433, 28.982634>,  <39.486191, 35.155605, 28.991304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090107, 35.100433, 28.982634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020852, 0.007430, -0.999755,
		0.138053, -0.990415, -0.004481,
		-0.990205, -0.137926, -0.021677,
		38.793045, 35.059055, 28.976130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394173, 34.560841, 28.532595>,  <39.486191, 35.155605, 28.991304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394173, 34.560841, 28.532595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058239, 34.776825, 28.554939>,  <38.856678, 34.906414, 28.568346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058239, 34.776825, 28.554939>,  <39.394173, 34.560841, 28.532595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058239, 34.776825, 28.554939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033361, 0.051371, -0.998122,
		-0.541816, -0.840122, -0.025129,
		-0.839835, 0.539960, 0.055861,
		38.806290, 34.938812, 28.571697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824234, 34.335220, 27.960463>,  <39.394173, 34.560841, 28.532595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824234, 34.335220, 27.960463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726700, 34.711689, 28.054047>,  <38.668179, 34.937569, 28.110197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726700, 34.711689, 28.054047>,  <38.824234, 34.335220, 27.960463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726700, 34.711689, 28.054047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248039, 0.172694, -0.953233,
		-0.937560, -0.290466, 0.191338,
		-0.243839, 0.941173, 0.233958,
		38.653549, 34.994041, 28.124233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141895, 34.393814, 27.587952>,  <38.824234, 34.335220, 27.960463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141895, 34.393814, 27.587952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306240, 34.748158, 27.674158>,  <38.404846, 34.960762, 27.725882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306240, 34.748158, 27.674158>,  <38.141895, 34.393814, 27.587952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306240, 34.748158, 27.674158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208309, 0.321350, -0.923765,
		-0.887580, 0.334648, 0.316563,
		0.410864, 0.885858, 0.215514,
		38.429501, 35.013916, 27.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.676292, 34.929836, 27.210875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004608, 35.142071, 27.295527>,  <38.201595, 35.269413, 27.346317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004608, 35.142071, 27.295527>,  <37.676292, 34.929836, 27.210875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004608, 35.142071, 27.295527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159032, 0.568078, -0.807463,
		-0.548652, 0.629098, 0.550651,
		0.820786, 0.530587, 0.211631,
		38.250843, 35.301247, 27.359016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440884, 35.643177, 27.251270>,  <37.676292, 34.929836, 27.210875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440884, 35.643177, 27.251270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827866, 35.615311, 27.153971>,  <38.060055, 35.598591, 27.095591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827866, 35.615311, 27.153971>,  <37.440884, 35.643177, 27.251270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827866, 35.615311, 27.153971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176652, 0.502310, -0.846450,
		0.181155, 0.861876, 0.473658,
		0.967459, -0.069666, -0.243248,
		38.118103, 35.594410, 27.080996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562698, 36.381264, 27.081654>,  <37.440884, 35.643177, 27.251270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562698, 36.381264, 27.081654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850117, 36.144150, 26.936163>,  <38.022568, 36.001881, 26.848869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850117, 36.144150, 26.936163>,  <37.562698, 36.381264, 27.081654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850117, 36.144150, 26.936163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018851, 0.506195, -0.862213,
		0.695224, 0.626396, 0.352550,
		0.718546, -0.592785, -0.363727,
		38.065681, 35.966312, 26.827045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150311, 36.891697, 26.856052>,  <37.562698, 36.381264, 27.081654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150311, 36.891697, 26.856052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215794, 36.539654, 26.677790>,  <38.255085, 36.328426, 26.570831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215794, 36.539654, 26.677790>,  <38.150311, 36.891697, 26.856052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215794, 36.539654, 26.677790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114167, 0.465618, -0.877591,
		0.979880, 0.092792, 0.176705,
		0.163710, -0.880108, -0.445656,
		38.264908, 36.275623, 26.544092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654469, 37.094952, 26.288872>,  <38.150311, 36.891697, 26.856052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654469, 37.094952, 26.288872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499268, 36.748554, 26.162691>,  <38.406147, 36.540714, 26.086983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499268, 36.748554, 26.162691>,  <38.654469, 37.094952, 26.288872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499268, 36.748554, 26.162691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115626, 0.293824, -0.948840,
		0.914376, -0.404628, -0.013873,
		-0.388004, -0.865993, -0.315451,
		38.382866, 36.488758, 26.068056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118256, 36.837673, 25.837156>,  <38.654469, 37.094952, 26.288872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118256, 36.837673, 25.837156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762535, 36.675983, 25.751606>,  <38.549103, 36.578968, 25.700275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762535, 36.675983, 25.751606>,  <39.118256, 36.837673, 25.837156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762535, 36.675983, 25.751606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123948, 0.237126, -0.963539,
		0.440204, -0.883387, -0.160773,
		-0.889302, -0.404226, -0.213878,
		38.495743, 36.554714, 25.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200291, 36.516361, 25.254057>,  <39.118256, 36.837673, 25.837156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200291, 36.516361, 25.254057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804520, 36.570564, 25.274702>,  <38.567055, 36.603088, 25.287088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804520, 36.570564, 25.274702>,  <39.200291, 36.516361, 25.254057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804520, 36.570564, 25.274702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025326, 0.188970, -0.981656,
		-0.142780, -0.972588, -0.183541,
		-0.989430, 0.135512, 0.051613,
		38.507690, 36.611217, 25.290186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880836, 36.071651, 24.709763>,  <39.200291, 36.516361, 25.254057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880836, 36.071651, 24.709763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595051, 36.332073, 24.812263>,  <38.423580, 36.488327, 24.873764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595051, 36.332073, 24.812263>,  <38.880836, 36.071651, 24.709763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595051, 36.332073, 24.812263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100483, 0.266972, -0.958452,
		-0.692417, -0.710530, -0.125322,
		-0.714466, 0.651055, 0.256252,
		38.380711, 36.527390, 24.889139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437885, 35.939613, 24.264118>,  <38.880836, 36.071651, 24.709763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437885, 35.939613, 24.264118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363747, 36.304817, 24.409483>,  <38.319263, 36.523937, 24.496702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363747, 36.304817, 24.409483>,  <38.437885, 35.939613, 24.264118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363747, 36.304817, 24.409483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093216, 0.351814, -0.931417,
		-0.978242, -0.206508, 0.019900,
		-0.185344, 0.913006, 0.363410,
		38.308144, 36.578720, 24.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840492, 36.194885, 23.984015>,  <38.437885, 35.939613, 24.264118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840492, 36.194885, 23.984015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077286, 36.495083, 24.101530>,  <38.219360, 36.675201, 24.172039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077286, 36.495083, 24.101530>,  <37.840492, 36.194885, 23.984015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077286, 36.495083, 24.101530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124942, 0.445573, -0.886484,
		-0.796208, 0.488076, 0.357540,
		0.591981, 0.750498, 0.293788,
		38.254879, 36.720234, 24.189667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482502, 36.855728, 23.819355>,  <37.840492, 36.194885, 23.984015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482502, 36.855728, 23.819355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880215, 36.887100, 23.848339>,  <38.118843, 36.905922, 23.865730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880215, 36.887100, 23.848339>,  <37.482502, 36.855728, 23.819355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880215, 36.887100, 23.848339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020160, 0.528519, -0.848682,
		-0.104858, 0.845291, 0.523917,
		0.994283, 0.078429, 0.072461,
		38.178501, 36.910629, 23.870077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518295, 37.369926, 23.467594>,  <37.482502, 36.855728, 23.819355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518295, 37.369926, 23.467594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914291, 37.337933, 23.514103>,  <38.151890, 37.318737, 23.542007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914291, 37.337933, 23.514103>,  <37.518295, 37.369926, 23.467594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914291, 37.337933, 23.514103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139235, 0.688070, -0.712161,
		-0.023037, 0.721223, 0.692320,
		0.989991, -0.079989, 0.116271,
		38.211288, 37.313934, 23.548985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786121, 38.031643, 23.639402>,  <37.518295, 37.369926, 23.467594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786121, 38.031643, 23.639402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067139, 37.807465, 23.463984>,  <38.235748, 37.672958, 23.358732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067139, 37.807465, 23.463984>,  <37.786121, 38.031643, 23.639402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067139, 37.807465, 23.463984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262626, 0.776941, -0.572180,
		0.661404, 0.286809, 0.693026,
		0.702547, -0.560449, -0.438549,
		38.277905, 37.639328, 23.332418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468494, 38.522041, 23.651718>,  <37.786121, 38.031643, 23.639402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468494, 38.522041, 23.651718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495155, 38.222397, 23.388086>,  <38.511154, 38.042610, 23.229908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495155, 38.222397, 23.388086>,  <38.468494, 38.522041, 23.651718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495155, 38.222397, 23.388086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372359, 0.631504, -0.680112,
		0.925692, -0.200081, 0.321032,
		0.066655, -0.749113, -0.659080,
		38.515152, 37.997662, 23.190363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178261, 38.554317, 23.432039>,  <38.468494, 38.522041, 23.651718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178261, 38.554317, 23.432039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994301, 38.353783, 23.138876>,  <38.883926, 38.233463, 22.962978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994301, 38.353783, 23.138876>,  <39.178261, 38.554317, 23.432039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994301, 38.353783, 23.138876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414700, 0.608571, -0.676509,
		0.785186, -0.615063, -0.071977,
		-0.459899, -0.501337, -0.732908,
		38.856331, 38.203381, 22.919004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730770, 38.476562, 22.885756>,  <39.178261, 38.554317, 23.432039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730770, 38.476562, 22.885756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370029, 38.457077, 22.714043>,  <39.153584, 38.445385, 22.611015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370029, 38.457077, 22.714043>,  <39.730770, 38.476562, 22.885756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370029, 38.457077, 22.714043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362738, 0.454365, -0.813618,
		0.234688, -0.889482, -0.392099,
		-0.901855, -0.048717, -0.429283,
		39.099472, 38.442463, 22.585258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899773, 38.409912, 22.231302>,  <39.730770, 38.476562, 22.885756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899773, 38.409912, 22.231302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510128, 38.492325, 22.194092>,  <39.276340, 38.541775, 22.171766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510128, 38.492325, 22.194092>,  <39.899773, 38.409912, 22.231302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510128, 38.492325, 22.194092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205751, 0.637557, -0.742420,
		-0.093656, -0.742341, -0.663444,
		-0.974112, 0.206037, -0.093027,
		39.217896, 38.554134, 22.166183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749008, 38.453796, 21.560404>,  <39.899773, 38.409912, 22.231302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749008, 38.453796, 21.560404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444622, 38.676571, 21.693520>,  <39.261990, 38.810234, 21.773388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444622, 38.676571, 21.693520>,  <39.749008, 38.453796, 21.560404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444622, 38.676571, 21.693520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257543, 0.730100, -0.632950,
		-0.595483, -0.395947, -0.699018,
		-0.760968, 0.556938, 0.332789,
		39.216331, 38.843651, 21.793356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488743, 38.714973, 20.930151>,  <39.749008, 38.453796, 21.560404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488743, 38.714973, 20.930151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333214, 38.960678, 21.204815>,  <39.239895, 39.108101, 21.369614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333214, 38.960678, 21.204815>,  <39.488743, 38.714973, 20.930151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333214, 38.960678, 21.204815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168334, 0.780127, -0.602549,
		-0.905802, -0.118698, -0.406735,
		-0.388826, 0.614257, 0.686660,
		39.216564, 39.144955, 21.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139507, 39.157387, 20.554850>,  <39.488743, 38.714973, 20.930151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139507, 39.157387, 20.554850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160133, 39.357311, 20.900688>,  <39.172508, 39.477268, 21.108191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160133, 39.357311, 20.900688>,  <39.139507, 39.157387, 20.554850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160133, 39.357311, 20.900688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006689, 0.865555, -0.500768,
		-0.998647, 0.031606, 0.041291,
		0.051566, 0.499814, 0.864596,
		39.175602, 39.507256, 21.160067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586723, 39.612434, 20.483400>,  <39.139507, 39.157387, 20.554850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586723, 39.612434, 20.483400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844650, 39.764412, 20.748688>,  <38.999405, 39.855598, 20.907860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844650, 39.764412, 20.748688>,  <38.586723, 39.612434, 20.483400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844650, 39.764412, 20.748688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055760, 0.842007, -0.536578,
		-0.762301, 0.382975, 0.521755,
		0.644817, 0.379941, 0.663217,
		39.038094, 39.878395, 20.947653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421959, 40.297005, 20.553337>,  <38.586723, 39.612434, 20.483400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421959, 40.297005, 20.553337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797981, 40.315147, 20.688530>,  <39.023594, 40.326035, 20.769646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797981, 40.315147, 20.688530>,  <38.421959, 40.297005, 20.553337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797981, 40.315147, 20.688530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167716, 0.801459, -0.574051,
		-0.296918, 0.596327, 0.745811,
		0.940059, 0.045361, 0.337982,
		39.079998, 40.328754, 20.789925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639790, 41.003853, 20.657660>,  <38.421959, 40.297005, 20.553337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639790, 41.003853, 20.657660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990917, 40.814659, 20.627401>,  <39.201591, 40.701141, 20.609245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990917, 40.814659, 20.627401>,  <38.639790, 41.003853, 20.657660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990917, 40.814659, 20.627401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348119, 0.738441, -0.577511,
		0.329015, 0.480615, 0.812871,
		0.877817, -0.472985, -0.075647,
		39.254261, 40.672764, 20.604708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261677, 41.357697, 20.955627>,  <38.639790, 41.003853, 20.657660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261677, 41.357697, 20.955627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362137, 41.137642, 20.637064>,  <39.422413, 41.005608, 20.445925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362137, 41.137642, 20.637064>,  <39.261677, 41.357697, 20.955627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362137, 41.137642, 20.637064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352162, 0.818329, -0.454224,
		0.901611, -0.166385, 0.399265,
		0.251154, -0.550139, -0.796410,
		39.437485, 40.972599, 20.398142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958542, 41.994278, 20.686520>,  <39.261677, 41.357697, 20.955627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958542, 41.994278, 20.686520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566399, 42.068100, 20.658718>,  <38.331112, 42.112392, 20.642036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566399, 42.068100, 20.658718>,  <38.958542, 41.994278, 20.686520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566399, 42.068100, 20.658718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122363, -0.292864, 0.948292,
		0.154654, 0.938174, 0.309695,
		-0.980362, 0.184552, -0.069505,
		38.272289, 42.123466, 20.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696960, 42.284786, 21.212421>,  <38.958542, 41.994278, 20.686520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696960, 42.284786, 21.212421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360081, 42.123066, 21.069738>,  <38.157951, 42.026031, 20.984129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360081, 42.123066, 21.069738>,  <38.696960, 42.284786, 21.212421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360081, 42.123066, 21.069738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084588, -0.554317, 0.827996,
		-0.532490, 0.727510, 0.432646,
		-0.842199, -0.404303, -0.356707,
		38.107422, 42.001774, 20.962727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285145, 42.413338, 21.807810>,  <38.696960, 42.284786, 21.212421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285145, 42.413338, 21.807810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092152, 42.151772, 21.574707>,  <37.976357, 41.994831, 21.434845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092152, 42.151772, 21.574707>,  <38.285145, 42.413338, 21.807810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092152, 42.151772, 21.574707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353452, -0.463396, 0.812610,
		-0.801424, 0.598049, -0.007545,
		-0.482484, -0.653912, -0.582759,
		37.947407, 41.955597, 21.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560410, 42.424805, 21.975533>,  <38.285145, 42.413338, 21.807810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560410, 42.424805, 21.975533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619102, 42.053055, 21.840046>,  <37.654320, 41.830006, 21.758753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619102, 42.053055, 21.840046>,  <37.560410, 42.424805, 21.975533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619102, 42.053055, 21.840046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451998, -0.367581, 0.812762,
		-0.879867, 0.033840, -0.474013,
		0.146734, -0.929376, -0.338718,
		37.663124, 41.774242, 21.738430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320477, 42.006245, 22.605793>,  <37.560410, 42.424805, 21.975533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320477, 42.006245, 22.605793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434357, 41.716930, 22.354139>,  <37.502686, 41.543343, 22.203148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434357, 41.716930, 22.354139>,  <37.320477, 42.006245, 22.605793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434357, 41.716930, 22.354139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255454, -0.689804, 0.677431,
		-0.923953, -0.032149, -0.381152,
		0.284699, -0.723282, -0.629134,
		37.519768, 41.499947, 22.165400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674511, 41.545750, 22.529921>,  <37.320477, 42.006245, 22.605793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674511, 41.545750, 22.529921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023472, 41.364170, 22.457426>,  <37.232849, 41.255222, 22.413929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023472, 41.364170, 22.457426>,  <36.674511, 41.545750, 22.529921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023472, 41.364170, 22.457426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206288, -0.678090, 0.705435,
		-0.443121, -0.578038, -0.685212,
		0.872404, -0.453944, -0.181234,
		37.285194, 41.227985, 22.403055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563786, 40.836296, 22.556643>,  <36.674511, 41.545750, 22.529921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563786, 40.836296, 22.556643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.960529, 40.860294, 22.601566>,  <37.198574, 40.874695, 22.628521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.960529, 40.860294, 22.601566>,  <36.563786, 40.836296, 22.556643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960529, 40.860294, 22.601566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041582, -0.681052, 0.731053,
		0.120349, -0.729773, -0.673014,
		0.991860, 0.059996, 0.112309,
		37.258087, 40.878292, 22.635260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686596, 40.176521, 22.636753>,  <36.563786, 40.836296, 22.556643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686596, 40.176521, 22.636753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998127, 40.390244, 22.768175>,  <37.185043, 40.518478, 22.847029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998127, 40.390244, 22.768175>,  <36.686596, 40.176521, 22.636753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998127, 40.390244, 22.768175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101658, -0.624405, 0.774457,
		0.618950, -0.569766, -0.540618,
		0.778824, 0.534308, 0.328554,
		37.231773, 40.550537, 22.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292900, 39.716381, 22.776915>,  <36.686596, 40.176521, 22.636753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292900, 39.716381, 22.776915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344131, 40.042725, 23.002470>,  <37.374870, 40.238533, 23.137802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344131, 40.042725, 23.002470>,  <37.292900, 39.716381, 22.776915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344131, 40.042725, 23.002470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074472, -0.574875, 0.814845,
		0.988964, -0.062369, -0.134387,
		0.128077, 0.815861, 0.563886,
		37.382553, 40.287483, 23.171637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822330, 39.538437, 23.254452>,  <37.292900, 39.716381, 22.776915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822330, 39.538437, 23.254452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638088, 39.846424, 23.431086>,  <37.527542, 40.031216, 23.537066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638088, 39.846424, 23.431086>,  <37.822330, 39.538437, 23.254452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638088, 39.846424, 23.431086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032642, -0.511858, 0.858450,
		0.887006, 0.380991, 0.260897,
		-0.460603, 0.769966, 0.441584,
		37.499908, 40.077415, 23.563560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087112, 39.445362, 23.936722>,  <37.822330, 39.538437, 23.254452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087112, 39.445362, 23.936722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758667, 39.673347, 23.948811>,  <37.561600, 39.810139, 23.956064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758667, 39.673347, 23.948811>,  <38.087112, 39.445362, 23.936722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758667, 39.673347, 23.948811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269747, -0.434185, 0.859488,
		0.503001, 0.697584, 0.510261,
		-0.821113, 0.569965, 0.030224,
		37.512333, 39.844337, 23.957878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059006, 39.600571, 24.663729>,  <38.087112, 39.445362, 23.936722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059006, 39.600571, 24.663729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698990, 39.655075, 24.498146>,  <37.482979, 39.687778, 24.398796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698990, 39.655075, 24.498146>,  <38.059006, 39.600571, 24.663729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698990, 39.655075, 24.498146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420193, -0.523317, 0.741334,
		-0.115612, 0.841172, 0.528264,
		-0.900040, 0.136266, -0.413957,
		37.428978, 39.695953, 24.373959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641628, 39.661152, 25.196409>,  <38.059006, 39.600571, 24.663729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641628, 39.661152, 25.196409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385311, 39.564075, 24.905069>,  <37.231522, 39.505829, 24.730267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385311, 39.564075, 24.905069>,  <37.641628, 39.661152, 25.196409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385311, 39.564075, 24.905069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569260, -0.486348, 0.662879,
		-0.515102, 0.839386, 0.173495,
		-0.640791, -0.242687, -0.728348,
		37.193073, 39.491268, 24.686565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985825, 39.692497, 25.560650>,  <37.641628, 39.661152, 25.196409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985825, 39.692497, 25.560650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906414, 39.483532, 25.228945>,  <36.858768, 39.358154, 25.029922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906414, 39.483532, 25.228945>,  <36.985825, 39.692497, 25.560650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906414, 39.483532, 25.228945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518905, -0.661763, 0.541116,
		-0.831460, 0.537733, -0.139705,
		-0.198524, -0.522410, -0.829262,
		36.846855, 39.326809, 24.980165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213886, 39.471233, 25.639967>,  <36.985825, 39.692497, 25.560650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213886, 39.471233, 25.639967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386570, 39.226135, 25.375191>,  <36.490181, 39.079075, 25.216326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386570, 39.226135, 25.375191>,  <36.213886, 39.471233, 25.639967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386570, 39.226135, 25.375191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246429, -0.786051, 0.566918,
		-0.867698, -0.081622, -0.490345,
		0.431709, -0.612749, -0.661941,
		36.516083, 39.042309, 25.176609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719353, 38.988483, 25.427174>,  <36.213886, 39.471233, 25.639967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719353, 38.988483, 25.427174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057556, 38.794533, 25.337721>,  <36.260479, 38.678162, 25.284048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057556, 38.794533, 25.337721>,  <35.719353, 38.988483, 25.427174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057556, 38.794533, 25.337721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336822, -0.809297, 0.481238,
		-0.414325, -0.331567, -0.847584,
		0.845509, -0.484874, -0.223632,
		36.311211, 38.649071, 25.270632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524910, 38.331795, 25.096601>,  <35.719353, 38.988483, 25.427174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524910, 38.331795, 25.096601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895252, 38.304287, 25.245226>,  <36.117458, 38.287781, 25.334400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895252, 38.304287, 25.245226>,  <35.524910, 38.331795, 25.096601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895252, 38.304287, 25.245226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275914, -0.794881, 0.540402,
		0.258182, -0.602855, -0.754923,
		0.925858, -0.068772, 0.371560,
		36.173008, 38.283657, 25.356693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743458, 37.633495, 25.006693>,  <35.524910, 38.331795, 25.096601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743458, 37.633495, 25.006693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993454, 37.799412, 25.271219>,  <36.143452, 37.898960, 25.429935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993454, 37.799412, 25.271219>,  <35.743458, 37.633495, 25.006693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993454, 37.799412, 25.271219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052105, -0.823097, 0.565505,
		0.778892, -0.387893, -0.492814,
		0.624990, 0.414789, 0.661315,
		36.180950, 37.923847, 25.469614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065620, 37.011257, 25.248728>,  <35.743458, 37.633495, 25.006693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065620, 37.011257, 25.248728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132282, 37.264679, 25.550943>,  <36.172279, 37.416733, 25.732273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132282, 37.264679, 25.550943>,  <36.065620, 37.011257, 25.248728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132282, 37.264679, 25.550943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011610, -0.764940, 0.643997,
		0.985947, -0.116097, -0.120125,
		0.166655, 0.633552, 0.755538,
		36.182278, 37.454746, 25.777605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463169, 36.625885, 25.729034>,  <36.065620, 37.011257, 25.248728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463169, 36.625885, 25.729034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316372, 36.928505, 25.945532>,  <36.228294, 37.110077, 26.075430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316372, 36.928505, 25.945532>,  <36.463169, 36.625885, 25.729034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316372, 36.928505, 25.945532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094169, -0.609070, 0.787506,
		0.925445, 0.238041, 0.294768,
		-0.366993, 0.756551, 0.541245,
		36.206272, 37.155472, 26.107904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.581402, 34.102562, 30.258638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321415, 34.406521, 30.262527>,  <39.165424, 34.588898, 30.264860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321415, 34.406521, 30.262527>,  <39.581402, 34.102562, 30.258638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321415, 34.406521, 30.262527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258286, -0.232914, 0.937571,
		0.714725, 0.606880, 0.347658,
		-0.649967, 0.759900, 0.009721,
		39.126427, 34.634491, 30.265444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775085, 34.446159, 30.814156>,  <39.581402, 34.102562, 30.258638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775085, 34.446159, 30.814156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396984, 34.554726, 30.741680>,  <39.170124, 34.619865, 30.698195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396984, 34.554726, 30.741680>,  <39.775085, 34.446159, 30.814156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396984, 34.554726, 30.741680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253557, -0.261307, 0.931358,
		0.205442, 0.926310, 0.315821,
		-0.945253, 0.271419, -0.181189,
		39.113407, 34.636150, 30.687323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581673, 34.650791, 31.524639>,  <39.775085, 34.446159, 30.814156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581673, 34.650791, 31.524639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234905, 34.657444, 31.325369>,  <39.026844, 34.661434, 31.205807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234905, 34.657444, 31.325369>,  <39.581673, 34.650791, 31.524639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234905, 34.657444, 31.325369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475529, -0.327198, 0.816586,
		-0.149422, 0.944809, 0.291562,
		-0.866917, 0.016630, -0.498175,
		38.974831, 34.662434, 31.175917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198353, 34.991776, 32.014145>,  <39.581673, 34.650791, 31.524639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198353, 34.991776, 32.014145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.987289, 34.769775, 31.756910>,  <38.860653, 34.636578, 31.602571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.987289, 34.769775, 31.756910>,  <39.198353, 34.991776, 32.014145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987289, 34.769775, 31.756910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554903, -0.347993, 0.755634,
		-0.643163, 0.755566, -0.124348,
		-0.527659, -0.554997, -0.643082,
		38.828991, 34.603275, 31.563986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492683, 35.181000, 32.130577>,  <39.198353, 34.991776, 32.014145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492683, 35.181000, 32.130577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533146, 34.805519, 31.998756>,  <38.557423, 34.580231, 31.919664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533146, 34.805519, 31.998756>,  <38.492683, 35.181000, 32.130577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533146, 34.805519, 31.998756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512922, -0.333041, 0.791198,
		-0.852454, 0.088998, -0.515171,
		0.101158, -0.938703, -0.329551,
		38.563492, 34.523907, 31.899891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914722, 34.834862, 32.388256>,  <38.492683, 35.181000, 32.130577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914722, 34.834862, 32.388256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094021, 34.510105, 32.238640>,  <38.201599, 34.315250, 32.148869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094021, 34.510105, 32.238640>,  <37.914722, 34.834862, 32.388256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094021, 34.510105, 32.238640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396972, -0.555706, 0.730482,
		-0.800931, -0.178950, -0.571391,
		0.448245, -0.811892, -0.374044,
		38.228493, 34.266537, 32.126427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487511, 34.289299, 32.427429>,  <37.914722, 34.834862, 32.388256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487511, 34.289299, 32.427429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.826077, 34.077206, 32.407654>,  <38.029217, 33.949951, 32.395786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.826077, 34.077206, 32.407654>,  <37.487511, 34.289299, 32.427429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826077, 34.077206, 32.407654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345428, -0.617318, 0.706822,
		-0.405300, -0.581183, -0.705661,
		0.846411, -0.530230, -0.049442,
		38.079998, 33.918137, 32.392822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278790, 33.643581, 32.399414>,  <37.487511, 34.289299, 32.427429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278790, 33.643581, 32.399414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660183, 33.608620, 32.514809>,  <37.889019, 33.587643, 32.584045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660183, 33.608620, 32.514809>,  <37.278790, 33.643581, 32.399414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660183, 33.608620, 32.514809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266852, -0.689867, 0.672959,
		0.140196, -0.718641, -0.681103,
		0.953486, -0.087407, 0.288487,
		37.946228, 33.582397, 32.601357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425114, 32.876282, 32.581768>,  <37.278790, 33.643581, 32.399414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425114, 32.876282, 32.581768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722248, 33.072216, 32.764309>,  <37.900528, 33.189777, 32.873833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722248, 33.072216, 32.764309>,  <37.425114, 32.876282, 32.581768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722248, 33.072216, 32.764309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053547, -0.636000, 0.769829,
		0.667327, -0.596294, -0.446216,
		0.742837, 0.489834, 0.456350,
		37.945099, 33.219166, 32.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905033, 32.323528, 32.851372>,  <37.425114, 32.876282, 32.581768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905033, 32.323528, 32.851372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969006, 32.670181, 33.040421>,  <38.007389, 32.878174, 33.153851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969006, 32.670181, 33.040421>,  <37.905033, 32.323528, 32.851372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969006, 32.670181, 33.040421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080414, -0.465755, 0.881253,
		0.983847, -0.178945, -0.004799,
		0.159931, 0.866632, 0.472621,
		38.016983, 32.930172, 33.182205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380333, 32.162579, 33.425499>,  <37.905033, 32.323528, 32.851372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380333, 32.162579, 33.425499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183327, 32.501972, 33.502964>,  <38.065121, 32.705608, 33.549442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183327, 32.501972, 33.502964>,  <38.380333, 32.162579, 33.425499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183327, 32.501972, 33.502964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294773, -0.372005, 0.880183,
		0.818861, 0.376422, 0.433329,
		-0.492520, 0.848481, 0.193661,
		38.035572, 32.756516, 33.561062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412445, 32.079170, 34.170288>,  <38.380333, 32.162579, 33.425499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412445, 32.079170, 34.170288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192024, 32.410027, 34.126152>,  <38.059772, 32.608540, 34.099670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192024, 32.410027, 34.126152>,  <38.412445, 32.079170, 34.170288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192024, 32.410027, 34.126152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509679, -0.228916, 0.829352,
		0.660734, 0.513255, 0.547722,
		-0.551051, 0.827144, -0.110343,
		38.026711, 32.658169, 34.093048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413071, 32.536831, 34.794842>,  <38.412445, 32.079170, 34.170288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413071, 32.536831, 34.794842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083511, 32.564510, 34.569843>,  <37.885777, 32.581120, 34.434845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.083511, 32.564510, 34.569843>,  <38.413071, 32.536831, 34.794842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083511, 32.564510, 34.569843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566396, -0.134961, 0.813007,
		-0.019652, 0.988431, 0.150391,
		-0.823899, 0.069203, -0.562496,
		37.836342, 32.585270, 34.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018230, 33.046753, 35.119743>,  <38.413071, 32.536831, 34.794842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018230, 33.046753, 35.119743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811119, 32.757664, 34.936626>,  <37.686852, 32.584209, 34.826756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811119, 32.757664, 34.936626>,  <38.018230, 33.046753, 35.119743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811119, 32.757664, 34.936626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567774, -0.109988, 0.815804,
		-0.639952, 0.682330, -0.353393,
		-0.517779, -0.722722, -0.457796,
		37.655785, 32.540848, 34.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076042, 33.700859, 35.532158>,  <38.018230, 33.046753, 35.119743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076042, 33.700859, 35.532158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223137, 34.022491, 35.719017>,  <38.311394, 34.215469, 35.831135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223137, 34.022491, 35.719017>,  <38.076042, 33.700859, 35.532158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223137, 34.022491, 35.719017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065907, 0.478552, -0.875582,
		-0.927591, 0.352774, 0.122988,
		0.367739, 0.804076, 0.467151,
		38.333458, 34.263714, 35.859161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733109, 34.281090, 35.231548>,  <38.076042, 33.700859, 35.532158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733109, 34.281090, 35.231548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053680, 34.465870, 35.383507>,  <38.246021, 34.576736, 35.474682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053680, 34.465870, 35.383507>,  <37.733109, 34.281090, 35.231548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053680, 34.465870, 35.383507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061006, 0.568725, -0.820262,
		-0.594975, 0.680555, 0.427609,
		0.801426, 0.461949, 0.379895,
		38.294109, 34.604454, 35.497475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670464, 35.018177, 35.018452>,  <37.733109, 34.281090, 35.231548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670464, 35.018177, 35.018452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056931, 34.992016, 35.118248>,  <38.288811, 34.976318, 35.178127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056931, 34.992016, 35.118248>,  <37.670464, 35.018177, 35.018452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056931, 34.992016, 35.118248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240998, 0.573561, -0.782909,
		-0.091894, 0.816547, 0.569918,
		0.966165, -0.065405, 0.249493,
		38.346779, 34.972393, 35.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842247, 35.717426, 35.134193>,  <37.670464, 35.018177, 35.018452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842247, 35.717426, 35.134193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172527, 35.496365, 35.088963>,  <38.370697, 35.363728, 35.061825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172527, 35.496365, 35.088963>,  <37.842247, 35.717426, 35.134193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172527, 35.496365, 35.088963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378134, 0.691007, -0.616055,
		0.418602, 0.465921, 0.779545,
		0.825704, -0.552654, -0.113077,
		38.420238, 35.330566, 35.055038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316372, 36.186863, 35.297352>,  <37.842247, 35.717426, 35.134193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316372, 36.186863, 35.297352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436916, 35.894138, 35.052849>,  <38.509243, 35.718506, 34.906147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436916, 35.894138, 35.052849>,  <38.316372, 36.186863, 35.297352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436916, 35.894138, 35.052849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324125, 0.681509, -0.656116,
		0.896729, -0.000394, 0.442579,
		0.301364, -0.731810, -0.611257,
		38.527325, 35.674595, 34.869473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890388, 36.498192, 35.129040>,  <38.316372, 36.186863, 35.297352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890388, 36.498192, 35.129040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844852, 36.230366, 34.835449>,  <38.817532, 36.069672, 34.659294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844852, 36.230366, 34.835449>,  <38.890388, 36.498192, 35.129040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844852, 36.230366, 34.835449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032415, 0.740890, -0.670843,
		0.992970, -0.052578, -0.106049,
		-0.113842, -0.669565, -0.733977,
		38.810699, 36.029495, 34.615257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333725, 36.717098, 34.538910>,  <38.890388, 36.498192, 35.129040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333725, 36.717098, 34.538910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045986, 36.482132, 34.390598>,  <38.873344, 36.341152, 34.301609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045986, 36.482132, 34.390598>,  <39.333725, 36.717098, 34.538910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045986, 36.482132, 34.390598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040463, 0.497427, -0.866562,
		0.693471, -0.638362, -0.334054,
		-0.719348, -0.587419, -0.370781,
		38.830181, 36.305908, 34.279366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590191, 36.602947, 33.875214>,  <39.333725, 36.717098, 34.538910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590191, 36.602947, 33.875214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195930, 36.535446, 33.876797>,  <38.959373, 36.494946, 33.877747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195930, 36.535446, 33.876797>,  <39.590191, 36.602947, 33.875214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195930, 36.535446, 33.876797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093136, 0.524122, -0.846535,
		0.140780, -0.834757, -0.532318,
		-0.985650, -0.168753, 0.003960,
		38.900234, 36.484821, 33.877983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468861, 36.255905, 33.248569>,  <39.590191, 36.602947, 33.875214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468861, 36.255905, 33.248569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149227, 36.447201, 33.394306>,  <38.957447, 36.561977, 33.481750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149227, 36.447201, 33.394306>,  <39.468861, 36.255905, 33.248569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149227, 36.447201, 33.394306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084296, 0.510906, -0.855494,
		-0.595277, -0.714327, -0.367944,
		-0.799087, 0.478239, 0.364346,
		38.909500, 36.590672, 33.503609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064995, 36.308220, 32.692417>,  <39.468861, 36.255905, 33.248569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064995, 36.308220, 32.692417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903091, 36.566833, 32.951077>,  <38.805950, 36.722004, 33.106274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903091, 36.566833, 32.951077>,  <39.064995, 36.308220, 32.692417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903091, 36.566833, 32.951077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211118, 0.621992, -0.754026,
		-0.889719, -0.441718, -0.115260,
		-0.404758, 0.646538, 0.646653,
		38.781666, 36.760796, 33.145073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509262, 36.574867, 32.398781>,  <39.064995, 36.308220, 32.692417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509262, 36.574867, 32.398781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.535103, 36.833183, 32.703091>,  <38.550610, 36.988171, 32.885677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.535103, 36.833183, 32.703091>,  <38.509262, 36.574867, 32.398781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535103, 36.833183, 32.703091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217789, 0.753118, -0.620791,
		-0.973855, -0.125582, 0.189301,
		0.064606, 0.645788, 0.760779,
		38.554485, 37.026920, 32.931324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879650, 36.818417, 32.430412>,  <38.509262, 36.574867, 32.398781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879650, 36.818417, 32.430412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.147385, 37.085312, 32.561123>,  <38.308025, 37.245449, 32.639549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.147385, 37.085312, 32.561123>,  <37.879650, 36.818417, 32.430412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147385, 37.085312, 32.561123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151219, 0.552975, -0.819361,
		-0.727404, 0.499016, 0.471027,
		0.669340, 0.667234, 0.326776,
		38.348186, 37.285480, 32.659157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585823, 37.454685, 32.318409>,  <37.879650, 36.818417, 32.430412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585823, 37.454685, 32.318409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980328, 37.503479, 32.362980>,  <38.217030, 37.532757, 32.389721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980328, 37.503479, 32.362980>,  <37.585823, 37.454685, 32.318409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980328, 37.503479, 32.362980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007692, 0.639792, -0.768510,
		-0.165041, 0.758805, 0.630061,
		0.986257, 0.121989, 0.111428,
		38.276203, 37.540077, 32.396408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654408, 38.198746, 32.182602>,  <37.585823, 37.454685, 32.318409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654408, 38.198746, 32.182602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.010418, 38.020061, 32.146152>,  <38.224022, 37.912849, 32.124283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.010418, 38.020061, 32.146152>,  <37.654408, 38.198746, 32.182602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010418, 38.020061, 32.146152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134797, 0.448770, -0.883423,
		0.435531, 0.773984, 0.459632,
		0.890024, -0.446714, -0.091123,
		38.277424, 37.886047, 32.118816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806892, 38.903419, 32.406013>,  <37.654408, 38.198746, 32.182602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806892, 38.903419, 32.406013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599586, 39.217903, 32.540642>,  <37.475204, 39.406593, 32.621418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599586, 39.217903, 32.540642>,  <37.806892, 38.903419, 32.406013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599586, 39.217903, 32.540642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284422, -0.529599, 0.799143,
		0.806542, 0.318435, 0.498085,
		-0.518260, 0.786209, 0.336574,
		37.444107, 39.453766, 32.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956078, 38.887596, 33.102924>,  <37.806892, 38.903419, 32.406013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956078, 38.887596, 33.102924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624924, 39.109695, 33.071136>,  <37.426231, 39.242954, 33.052063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624924, 39.109695, 33.071136>,  <37.956078, 38.887596, 33.102924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624924, 39.109695, 33.071136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354295, -0.407821, 0.841521,
		0.434841, 0.724835, 0.534348,
		-0.827882, 0.555244, -0.079468,
		37.376560, 39.276268, 33.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858467, 39.273285, 33.695923>,  <37.956078, 38.887596, 33.102924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858467, 39.273285, 33.695923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497040, 39.246128, 33.526714>,  <37.280182, 39.229836, 33.425190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497040, 39.246128, 33.526714>,  <37.858467, 39.273285, 33.695923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497040, 39.246128, 33.526714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402470, -0.204000, 0.892413,
		-0.146882, 0.976614, 0.157005,
		-0.903572, -0.067890, -0.423022,
		37.225967, 39.225761, 33.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417576, 39.632908, 34.100048>,  <37.858467, 39.273285, 33.695923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417576, 39.632908, 34.100048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179127, 39.391922, 33.887756>,  <37.036057, 39.247330, 33.760380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179127, 39.391922, 33.887756>,  <37.417576, 39.632908, 34.100048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179127, 39.391922, 33.887756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484290, -0.257422, 0.836180,
		-0.640391, 0.755492, -0.138314,
		-0.596122, -0.602466, -0.530728,
		37.000290, 39.211182, 33.728539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733341, 39.768703, 34.441200>,  <37.417576, 39.632908, 34.100048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733341, 39.768703, 34.441200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750217, 39.423527, 34.239788>,  <36.760342, 39.216419, 34.118938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750217, 39.423527, 34.239788>,  <36.733341, 39.768703, 34.441200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750217, 39.423527, 34.239788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615833, -0.419320, 0.667023,
		-0.786747, 0.281953, -0.549119,
		0.042188, -0.862944, -0.503535,
		36.762875, 39.164642, 34.088726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044014, 39.445175, 34.652935>,  <36.733341, 39.768703, 34.441200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044014, 39.445175, 34.652935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270733, 39.151482, 34.503456>,  <36.406765, 38.975266, 34.413769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270733, 39.151482, 34.503456>,  <36.044014, 39.445175, 34.652935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270733, 39.151482, 34.503456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552561, -0.675235, 0.488604,
		-0.611080, -0.070450, -0.788428,
		0.566796, -0.734231, -0.373694,
		36.440773, 38.931213, 34.391346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644367, 38.875908, 34.608650>,  <36.044014, 39.445175, 34.652935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644367, 38.875908, 34.608650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002029, 38.704792, 34.555752>,  <36.216625, 38.602123, 34.524014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002029, 38.704792, 34.555752>,  <35.644367, 38.875908, 34.608650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002029, 38.704792, 34.555752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312144, -0.807272, 0.500877,
		-0.321029, -0.406580, -0.855356,
		0.894152, -0.427790, -0.132246,
		36.270275, 38.576454, 34.516079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501709, 38.230156, 34.403133>,  <35.644367, 38.875908, 34.608650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501709, 38.230156, 34.403133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.881287, 38.216362, 34.528549>,  <36.109035, 38.208084, 34.603798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.881287, 38.216362, 34.528549>,  <35.501709, 38.230156, 34.403133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881287, 38.216362, 34.528549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190284, -0.855358, 0.481825,
		0.251577, -0.516889, -0.818252,
		0.948947, -0.034484, 0.313544,
		36.165970, 38.206017, 34.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725544, 37.572342, 34.276566>,  <35.501709, 38.230156, 34.403133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725544, 37.572342, 34.276566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000023, 37.706276, 34.534870>,  <36.164711, 37.786636, 34.689854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000023, 37.706276, 34.534870>,  <35.725544, 37.572342, 34.276566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000023, 37.706276, 34.534870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273534, -0.703822, 0.655601,
		0.674024, -0.626513, -0.391373,
		0.686200, 0.334838, 0.645766,
		36.205883, 37.806728, 34.728600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092834, 37.021759, 34.543446>,  <35.725544, 37.572342, 34.276566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092834, 37.021759, 34.543446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147614, 37.295761, 34.829666>,  <36.180481, 37.460163, 35.001400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147614, 37.295761, 34.829666>,  <36.092834, 37.021759, 34.543446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147614, 37.295761, 34.829666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330220, -0.649470, 0.684940,
		0.933916, -0.330092, 0.137257,
		0.136948, 0.685002, 0.715554,
		36.188698, 37.501263, 35.044331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427177, 36.664574, 35.098022>,  <36.092834, 37.021759, 34.543446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427177, 36.664574, 35.098022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.304482, 37.011513, 35.254795>,  <36.230865, 37.219677, 35.348858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.304482, 37.011513, 35.254795>,  <36.427177, 36.664574, 35.098022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304482, 37.011513, 35.254795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236334, -0.468298, 0.851377,
		0.921985, 0.168524, 0.348630,
		-0.306740, 0.867350, 0.391936,
		36.212460, 37.271717, 35.372375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737064, 36.722683, 35.801758>,  <36.427177, 36.664574, 35.098022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737064, 36.722683, 35.801758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.413185, 36.957417, 35.800373>,  <36.218857, 37.098255, 35.799541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.413185, 36.957417, 35.800373>,  <36.737064, 36.722683, 35.801758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413185, 36.957417, 35.800373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342177, -0.467315, 0.815188,
		0.476759, 0.661244, 0.579186,
		-0.809701, 0.586833, -0.003465,
		36.170277, 37.133465, 35.799332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.509750, 40.948681, 30.368511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 41.134174, 30.197529>,  <39.013088, 41.245472, 30.094940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 41.134174, 30.197529>,  <39.509750, 40.948681, 30.368511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199337, 41.134174, 30.197529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495188, -0.028279, 0.868326,
		0.390585, 0.885523, 0.251581,
		-0.776037, 0.463735, -0.427455,
		38.966526, 41.273296, 30.069292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286995, 41.499249, 30.866018>,  <39.509750, 40.948681, 30.368511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286995, 41.499249, 30.866018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979019, 41.419243, 30.623634>,  <38.794235, 41.371239, 30.478205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979019, 41.419243, 30.623634>,  <39.286995, 41.499249, 30.866018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979019, 41.419243, 30.623634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617656, -0.004952, 0.786433,
		-0.160301, 0.979780, -0.119729,
		-0.769938, -0.200018, -0.605960,
		38.748039, 41.359238, 30.441847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772694, 41.904732, 31.120407>,  <39.286995, 41.499249, 30.866018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772694, 41.904732, 31.120407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604336, 41.610245, 30.908434>,  <38.503323, 41.433552, 30.781250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604336, 41.610245, 30.908434>,  <38.772694, 41.904732, 31.120407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604336, 41.610245, 30.908434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551726, -0.255945, 0.793782,
		-0.720032, 0.626476, -0.298465,
		-0.420895, -0.736220, -0.529932,
		38.478065, 41.389378, 30.749454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006317, 41.970898, 31.246433>,  <38.772694, 41.904732, 31.120407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006317, 41.970898, 31.246433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101395, 41.594418, 31.150398>,  <38.158440, 41.368530, 31.092777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101395, 41.594418, 31.150398>,  <38.006317, 41.970898, 31.246433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101395, 41.594418, 31.150398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623001, -0.337358, 0.705733,
		-0.745232, -0.018173, -0.666557,
		0.237694, -0.941201, -0.240089,
		38.172703, 41.312057, 31.078371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280746, 41.660095, 31.281906>,  <38.006317, 41.970898, 31.246433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280746, 41.660095, 31.281906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531033, 41.348248, 31.271517>,  <37.681206, 41.161140, 31.265284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531033, 41.348248, 31.271517>,  <37.280746, 41.660095, 31.281906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531033, 41.348248, 31.271517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583085, -0.489581, 0.648323,
		-0.518160, -0.390523, -0.760922,
		0.625718, -0.779617, -0.025973,
		37.718746, 41.114361, 31.263723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909771, 41.081760, 31.454901>,  <37.280746, 41.660095, 31.281906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909771, 41.081760, 31.454901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262295, 40.907505, 31.528118>,  <37.473808, 40.802952, 31.572048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262295, 40.907505, 31.528118>,  <36.909771, 41.081760, 31.454901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262295, 40.907505, 31.528118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448175, -0.647863, 0.615964,
		-0.149749, -0.624895, -0.766213,
		0.881314, -0.435638, 0.183046,
		37.526688, 40.776814, 31.583033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834511, 40.385208, 31.266594>,  <36.909771, 41.081760, 31.454901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834511, 40.385208, 31.266594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139935, 40.404934, 31.524136>,  <37.323189, 40.416767, 31.678661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139935, 40.404934, 31.524136>,  <36.834511, 40.385208, 31.266594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139935, 40.404934, 31.524136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443039, -0.685382, 0.577900,
		0.469783, -0.726512, -0.501481,
		0.763558, 0.049312, 0.643854,
		37.369003, 40.419727, 31.717291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202427, 39.721001, 31.349970>,  <36.834511, 40.385208, 31.266594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202427, 39.721001, 31.349970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326443, 39.888767, 31.691252>,  <37.400852, 39.989429, 31.896021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326443, 39.888767, 31.691252>,  <37.202427, 39.721001, 31.349970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326443, 39.888767, 31.691252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493566, -0.696010, 0.521500,
		0.812568, -0.582801, -0.008781,
		0.310043, 0.419420, 0.853206,
		37.419456, 40.014595, 31.947214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420067, 39.207233, 31.747421>,  <37.202427, 39.721001, 31.349970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420067, 39.207233, 31.747421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370850, 39.478825, 32.036930>,  <37.341320, 39.641781, 32.210636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370850, 39.478825, 32.036930>,  <37.420067, 39.207233, 31.747421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370850, 39.478825, 32.036930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404493, -0.700297, 0.588192,
		0.906226, -0.220385, 0.360812,
		-0.123047, 0.678981, 0.723771,
		37.333935, 39.682518, 32.254063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026417, 38.682476, 31.743776>,  <37.420067, 39.207233, 31.747421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026417, 38.682476, 31.743776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254883, 38.355217, 31.717239>,  <38.391964, 38.158863, 31.701317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254883, 38.355217, 31.717239>,  <38.026417, 38.682476, 31.743776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254883, 38.355217, 31.717239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404440, 0.350835, -0.844597,
		0.714279, 0.455577, 0.531277,
		0.571169, -0.818147, -0.066341,
		38.426235, 38.109772, 31.697336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786381, 38.896999, 31.647642>,  <38.026417, 38.682476, 31.743776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786381, 38.896999, 31.647642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755089, 38.522186, 31.511499>,  <38.736313, 38.297298, 31.429813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755089, 38.522186, 31.511499>,  <38.786381, 38.896999, 31.647642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755089, 38.522186, 31.511499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302160, 0.303061, -0.903799,
		0.950042, -0.173545, 0.259427,
		-0.078227, -0.937036, -0.340359,
		38.731621, 38.241074, 31.409391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389828, 38.858269, 31.243238>,  <38.786381, 38.896999, 31.647642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389828, 38.858269, 31.243238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114857, 38.584961, 31.144789>,  <38.949875, 38.420975, 31.085720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114857, 38.584961, 31.144789>,  <39.389828, 38.858269, 31.243238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114857, 38.584961, 31.144789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400583, -0.074052, -0.913263,
		0.605782, -0.726399, 0.324613,
		-0.687431, -0.683273, -0.246123,
		38.908627, 38.379978, 31.070951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758430, 38.253651, 31.000938>,  <39.389828, 38.858269, 31.243238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758430, 38.253651, 31.000938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393837, 38.241497, 30.836857>,  <39.175079, 38.234203, 30.738409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393837, 38.241497, 30.836857>,  <39.758430, 38.253651, 31.000938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393837, 38.241497, 30.836857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411307, -0.077043, -0.908235,
		-0.004001, -0.996565, 0.082724,
		-0.911488, -0.030391, -0.410202,
		39.120392, 38.232380, 30.713797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860069, 37.839859, 30.504311>,  <39.758430, 38.253651, 31.000938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860069, 37.839859, 30.504311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527317, 38.031742, 30.392708>,  <39.327663, 38.146873, 30.325747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527317, 38.031742, 30.392708>,  <39.860069, 37.839859, 30.504311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527317, 38.031742, 30.392708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333780, 0.030858, -0.942146,
		-0.443349, -0.876883, -0.185789,
		-0.831885, 0.479712, -0.279005,
		39.277752, 38.175655, 30.309006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627911, 37.416927, 29.901222>,  <39.860069, 37.839859, 30.504311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627911, 37.416927, 29.901222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433758, 37.764435, 29.861944>,  <39.317265, 37.972939, 29.838377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433758, 37.764435, 29.861944>,  <39.627911, 37.416927, 29.901222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433758, 37.764435, 29.861944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322943, 0.073782, -0.943538,
		-0.812472, -0.489689, -0.316375,
		-0.485383, 0.868770, -0.098196,
		39.288143, 38.025066, 29.832485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210716, 37.359596, 29.263195>,  <39.627911, 37.416927, 29.901222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210716, 37.359596, 29.263195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257492, 37.749901, 29.337175>,  <39.285557, 37.984085, 29.381563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257492, 37.749901, 29.337175>,  <39.210716, 37.359596, 29.263195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257492, 37.749901, 29.337175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273745, 0.147345, -0.950449,
		-0.954667, 0.161775, -0.249880,
		0.116940, 0.975766, 0.184950,
		39.292576, 38.042629, 29.392660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976292, 37.688049, 28.656658>,  <39.210716, 37.359596, 29.263195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976292, 37.688049, 28.656658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218464, 37.937626, 28.854305>,  <39.363766, 38.087372, 28.972895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218464, 37.937626, 28.854305>,  <38.976292, 37.688049, 28.656658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218464, 37.937626, 28.854305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400168, 0.298018, -0.866632,
		-0.687984, 0.722414, -0.069253,
		0.605429, 0.623941, 0.494119,
		39.400093, 38.124809, 29.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893063, 38.309715, 28.298220>,  <38.976292, 37.688049, 28.656658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893063, 38.309715, 28.298220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234913, 38.335926, 28.504255>,  <39.440025, 38.351650, 28.627876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234913, 38.335926, 28.504255>,  <38.893063, 38.309715, 28.298220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234913, 38.335926, 28.504255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482807, 0.264753, -0.834747,
		-0.191068, 0.962087, 0.194629,
		0.854629, 0.065525, 0.515089,
		39.491302, 38.355583, 28.658781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985886, 39.048210, 28.292664>,  <38.893063, 38.309715, 28.298220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985886, 39.048210, 28.292664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337143, 38.871826, 28.366863>,  <39.547897, 38.765995, 28.411383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337143, 38.871826, 28.366863>,  <38.985886, 39.048210, 28.292664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337143, 38.871826, 28.366863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387604, 0.428559, -0.816150,
		0.280392, 0.788601, 0.547256,
		0.878148, -0.440961, 0.185500,
		39.600586, 38.739536, 28.422514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452030, 39.605690, 28.271263>,  <38.985886, 39.048210, 28.292664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452030, 39.605690, 28.271263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644958, 39.263977, 28.193724>,  <39.760715, 39.058949, 28.147200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644958, 39.263977, 28.193724>,  <39.452030, 39.605690, 28.271263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644958, 39.263977, 28.193724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420934, 0.420085, -0.803955,
		0.768234, 0.306165, 0.562210,
		0.482319, -0.854279, -0.193848,
		39.789654, 39.007694, 28.135569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133358, 39.863724, 28.046644>,  <39.452030, 39.605690, 28.271263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133358, 39.863724, 28.046644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118908, 39.478355, 27.940426>,  <40.110237, 39.247135, 27.876696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118908, 39.478355, 27.940426>,  <40.133358, 39.863724, 28.046644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118908, 39.478355, 27.940426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469353, 0.218233, -0.855618,
		0.882271, -0.155543, 0.444302,
		-0.036124, -0.963421, -0.265545,
		40.108070, 39.189327, 27.860762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848030, 39.633068, 28.051296>,  <40.133358, 39.863724, 28.046644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848030, 39.633068, 28.051296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624756, 39.417931, 27.798584>,  <40.490791, 39.288849, 27.646957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624756, 39.417931, 27.798584>,  <40.848030, 39.633068, 28.051296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624756, 39.417931, 27.798584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559312, 0.318517, -0.765322,
		0.612859, -0.780555, 0.123033,
		-0.558188, -0.537848, -0.631780,
		40.457298, 39.256577, 27.609051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362541, 39.241577, 27.622265>,  <40.848030, 39.633068, 28.051296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362541, 39.241577, 27.622265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015350, 39.267548, 27.425325>,  <40.807037, 39.283131, 27.307161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015350, 39.267548, 27.425325>,  <41.362541, 39.241577, 27.622265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015350, 39.267548, 27.425325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491585, 0.253018, -0.833262,
		0.070469, -0.965280, -0.251532,
		-0.867974, 0.064931, -0.492347,
		40.754959, 39.287025, 27.277620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.638618, 40.216488, 25.732258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910191, 40.234303, 26.025398>,  <35.073135, 40.244991, 26.201283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910191, 40.234303, 26.025398>,  <34.638618, 40.216488, 25.732258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910191, 40.234303, 26.025398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518804, -0.677185, 0.521789,
		0.519515, -0.734464, -0.436654,
		0.678931, 0.044539, 0.732850,
		35.113869, 40.247665, 26.245253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861984, 39.497879, 25.937895>,  <34.638618, 40.216488, 25.732258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861984, 39.497879, 25.937895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971245, 39.704590, 26.262444>,  <35.036800, 39.828617, 26.457172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971245, 39.704590, 26.262444>,  <34.861984, 39.497879, 25.937895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971245, 39.704590, 26.262444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378904, -0.717467, 0.584527,
		0.884206, -0.467096, -0.000165,
		0.273149, 0.516780, 0.811374,
		35.053188, 39.859623, 26.505856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151173, 39.047638, 26.318378>,  <34.861984, 39.497879, 25.937895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151173, 39.047638, 26.318378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070847, 39.339790, 26.579519>,  <35.022652, 39.515083, 26.736204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070847, 39.339790, 26.579519>,  <35.151173, 39.047638, 26.318378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070847, 39.339790, 26.579519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251817, -0.682519, 0.686116,
		0.946711, -0.026617, 0.320983,
		-0.200815, 0.730383, 0.652851,
		35.010601, 39.558907, 26.775375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457527, 38.886677, 26.941132>,  <35.151173, 39.047638, 26.318378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457527, 38.886677, 26.941132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153927, 39.131561, 27.029779>,  <34.971767, 39.278492, 27.082968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153927, 39.131561, 27.029779>,  <35.457527, 38.886677, 26.941132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153927, 39.131561, 27.029779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307429, -0.637030, 0.706880,
		0.573939, 0.468389, 0.671718,
		-0.759000, 0.612212, 0.221620,
		34.926228, 39.315224, 27.096266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393402, 38.741299, 27.644167>,  <35.457527, 38.886677, 26.941132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393402, 38.741299, 27.644167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089733, 38.987183, 27.558569>,  <34.907532, 39.134712, 27.507210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089733, 38.987183, 27.558569>,  <35.393402, 38.741299, 27.644167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089733, 38.987183, 27.558569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465689, -0.283273, 0.838385,
		0.454743, 0.736133, 0.501315,
		-0.759172, 0.614707, -0.213993,
		34.861980, 39.171597, 27.494371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196674, 39.058365, 28.287447>,  <35.393402, 38.741299, 27.644167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196674, 39.058365, 28.287447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879726, 39.044117, 28.043848>,  <34.689556, 39.035568, 27.897688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879726, 39.044117, 28.043848>,  <35.196674, 39.058365, 28.287447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879726, 39.044117, 28.043848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482551, -0.574151, 0.661434,
		-0.373220, 0.817974, 0.437750,
		-0.792371, -0.035624, -0.608999,
		34.642014, 39.033428, 27.861149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591732, 39.373562, 28.665510>,  <35.196674, 39.058365, 28.287447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591732, 39.373562, 28.665510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450573, 39.117523, 28.392529>,  <34.365879, 38.963902, 28.228739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450573, 39.117523, 28.392529>,  <34.591732, 39.373562, 28.665510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450573, 39.117523, 28.392529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682062, -0.323316, 0.655941,
		-0.640512, 0.696955, -0.322487,
		-0.352897, -0.640094, -0.682454,
		34.344704, 38.925495, 28.187792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912247, 39.408428, 28.769053>,  <34.591732, 39.373562, 28.665510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912247, 39.408428, 28.769053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.966259, 39.062222, 28.576120>,  <33.998665, 38.854496, 28.460361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.966259, 39.062222, 28.576120>,  <33.912247, 39.408428, 28.769053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966259, 39.062222, 28.576120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505089, -0.478917, 0.717999,
		-0.852439, 0.146669, -0.501833,
		0.135028, -0.865521, -0.482329,
		34.006767, 38.802567, 28.431421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331665, 39.037037, 28.913349>,  <33.912247, 39.408428, 28.769053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331665, 39.037037, 28.913349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576588, 38.755253, 28.769785>,  <33.723541, 38.586182, 28.683647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576588, 38.755253, 28.769785>,  <33.331665, 39.037037, 28.913349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576588, 38.755253, 28.769785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303888, -0.628792, 0.715732,
		-0.729882, -0.329181, -0.599092,
		0.612310, -0.704457, -0.358910,
		33.760281, 38.543915, 28.662111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892323, 38.421520, 28.748081>,  <33.331665, 39.037037, 28.913349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892323, 38.421520, 28.748081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262566, 38.294403, 28.830307>,  <33.484711, 38.218132, 28.879642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262566, 38.294403, 28.830307>,  <32.892323, 38.421520, 28.748081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262566, 38.294403, 28.830307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360636, -0.575737, 0.733804,
		-0.114847, -0.753349, -0.647515,
		0.925609, -0.317792, 0.205563,
		33.540249, 38.199066, 28.891975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811890, 37.768044, 28.807840>,  <32.892323, 38.421520, 28.748081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811890, 37.768044, 28.807840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161644, 37.824013, 28.993689>,  <33.371498, 37.857594, 29.105198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161644, 37.824013, 28.993689>,  <32.811890, 37.768044, 28.807840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161644, 37.824013, 28.993689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263832, -0.666520, 0.697240,
		0.407239, -0.732238, -0.545879,
		0.874385, 0.139923, 0.464621,
		33.423958, 37.865990, 29.133074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984661, 37.099201, 28.974749>,  <32.811890, 37.768044, 28.807840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984661, 37.099201, 28.974749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219006, 37.334057, 29.198187>,  <33.359612, 37.474972, 29.332251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219006, 37.334057, 29.198187>,  <32.984661, 37.099201, 28.974749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219006, 37.334057, 29.198187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209028, -0.556474, 0.804142,
		0.782990, -0.587878, -0.203287,
		0.585861, 0.587143, 0.558597,
		33.394764, 37.510201, 29.365767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316765, 36.634899, 29.229254>,  <32.984661, 37.099201, 28.974749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316765, 36.634899, 29.229254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381573, 36.945530, 29.472790>,  <33.420456, 37.131908, 29.618912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381573, 36.945530, 29.472790>,  <33.316765, 36.634899, 29.229254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381573, 36.945530, 29.472790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290050, -0.552257, 0.781590,
		0.943198, -0.303223, 0.135771,
		0.162015, 0.776574, 0.608838,
		33.430176, 37.178501, 29.655441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814671, 36.427803, 29.671244>,  <33.316765, 36.634899, 29.229254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814671, 36.427803, 29.671244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.620766, 36.725704, 29.854698>,  <33.504421, 36.904446, 29.964771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.620766, 36.725704, 29.854698>,  <33.814671, 36.427803, 29.671244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620766, 36.725704, 29.854698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284624, -0.630148, 0.722428,
		0.827039, 0.219668, 0.517447,
		-0.484763, 0.744754, 0.458635,
		33.475338, 36.949131, 29.992289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559349, 36.350960, 29.838596>,  <33.814671, 36.427803, 29.671244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559349, 36.350960, 29.838596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.658730, 35.978775, 29.730881>,  <34.718357, 35.755466, 29.666252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.658730, 35.978775, 29.730881>,  <34.559349, 36.350960, 29.838596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658730, 35.978775, 29.730881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321256, 0.341422, -0.883304,
		0.913819, 0.132951, 0.383743,
		0.248455, -0.930459, -0.269287,
		34.733265, 35.699638, 29.650095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273987, 36.386269, 29.607307>,  <34.559349, 36.350960, 29.838596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273987, 36.386269, 29.607307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070183, 36.072483, 29.465876>,  <34.947899, 35.884212, 29.381016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070183, 36.072483, 29.465876>,  <35.273987, 36.386269, 29.607307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070183, 36.072483, 29.465876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433753, 0.120734, -0.892906,
		0.743140, -0.608311, 0.278748,
		-0.509510, -0.784462, -0.353579,
		34.917328, 35.837143, 29.359802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870358, 35.894817, 29.277561>,  <35.273987, 36.386269, 29.607307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870358, 35.894817, 29.277561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517982, 35.825119, 29.101568>,  <35.306557, 35.783302, 28.995972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517982, 35.825119, 29.101568>,  <35.870358, 35.894817, 29.277561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517982, 35.825119, 29.101568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448020, -0.007688, -0.893990,
		0.152388, -0.984673, 0.084837,
		-0.880940, -0.174241, -0.439982,
		35.253700, 35.772846, 28.969574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105755, 35.555313, 28.643574>,  <35.870358, 35.894817, 29.277561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105755, 35.555313, 28.643574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719257, 35.645607, 28.593910>,  <35.487358, 35.699783, 28.564112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719257, 35.645607, 28.593910>,  <36.105755, 35.555313, 28.643574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719257, 35.645607, 28.593910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171449, 0.203697, -0.963905,
		-0.192298, -0.952654, -0.235523,
		-0.966244, 0.225737, -0.124161,
		35.429386, 35.713329, 28.556662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911926, 35.262924, 28.011776>,  <36.105755, 35.555313, 28.643574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911926, 35.262924, 28.011776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620911, 35.534119, 28.053768>,  <35.446301, 35.696835, 28.078962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620911, 35.534119, 28.053768>,  <35.911926, 35.262924, 28.011776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620911, 35.534119, 28.053768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155603, 0.312094, -0.937222,
		-0.668190, -0.665528, -0.332557,
		-0.727537, 0.677989, 0.104980,
		35.402649, 35.737514, 28.085262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569374, 35.266083, 27.383091>,  <35.911926, 35.262924, 28.011776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569374, 35.266083, 27.383091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481472, 35.616817, 27.554140>,  <35.428730, 35.827259, 27.656771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481472, 35.616817, 27.554140>,  <35.569374, 35.266083, 27.383091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481472, 35.616817, 27.554140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048981, 0.447703, -0.892840,
		-0.974325, -0.175259, -0.141332,
		-0.219753, 0.876839, 0.427624,
		35.415546, 35.879868, 27.682426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286026, 35.651550, 26.790968>,  <35.569374, 35.266083, 27.383091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286026, 35.651550, 26.790968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380440, 35.933090, 27.058964>,  <35.437088, 36.102013, 27.219761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380440, 35.933090, 27.058964>,  <35.286026, 35.651550, 26.790968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380440, 35.933090, 27.058964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113767, 0.664713, -0.738386,
		-0.965062, 0.250507, 0.076821,
		0.236035, 0.703848, 0.669989,
		35.451252, 36.144245, 27.259960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966408, 36.299477, 26.542387>,  <35.286026, 35.651550, 26.790968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966408, 36.299477, 26.542387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250759, 36.425522, 26.793898>,  <35.421368, 36.501148, 26.944803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250759, 36.425522, 26.793898>,  <34.966408, 36.299477, 26.542387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250759, 36.425522, 26.793898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184527, 0.779135, -0.599081,
		-0.678679, 0.541899, 0.495723,
		0.710876, 0.315109, 0.628777,
		35.464024, 36.520054, 26.982531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864807, 36.976692, 26.613115>,  <34.966408, 36.299477, 26.542387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864807, 36.976692, 26.613115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250824, 36.947601, 26.713835>,  <35.482433, 36.930149, 26.774267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250824, 36.947601, 26.713835>,  <34.864807, 36.976692, 26.613115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250824, 36.947601, 26.713835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211269, 0.784413, -0.583148,
		-0.155105, 0.615961, 0.772357,
		0.965043, -0.072726, 0.251800,
		35.540337, 36.925785, 26.789375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078529, 37.621395, 26.659760>,  <34.864807, 36.976692, 26.613115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078529, 37.621395, 26.659760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434650, 37.439865, 26.644793>,  <35.648323, 37.330948, 26.635813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434650, 37.439865, 26.644793>,  <35.078529, 37.621395, 26.659760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434650, 37.439865, 26.644793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344850, 0.725621, -0.595443,
		0.297374, 0.517224, 0.802526,
		0.890307, -0.453821, -0.037416,
		35.701744, 37.303719, 26.633568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648289, 38.041492, 26.832371>,  <35.078529, 37.621395, 26.659760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648289, 38.041492, 26.832371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830692, 37.773743, 26.597767>,  <35.940136, 37.613094, 26.457005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830692, 37.773743, 26.597767>,  <35.648289, 38.041492, 26.832371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830692, 37.773743, 26.597767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318487, 0.738114, -0.594772,
		0.831037, 0.084425, 0.549773,
		0.456008, -0.669373, -0.586511,
		35.967495, 37.572929, 26.421814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346577, 38.286823, 26.753096>,  <35.648289, 38.041492, 26.832371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346577, 38.286823, 26.753096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288532, 38.037834, 26.445467>,  <36.253708, 37.888439, 26.260891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288532, 38.037834, 26.445467>,  <36.346577, 38.286823, 26.753096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288532, 38.037834, 26.445467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465052, 0.643173, -0.608321,
		0.873310, -0.445929, 0.196155,
		-0.145106, -0.622476, -0.769070,
		36.244999, 37.851093, 26.214746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989677, 38.251194, 26.363750>,  <36.346577, 38.286823, 26.753096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989677, 38.251194, 26.363750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720371, 38.131493, 26.093296>,  <36.558788, 38.059673, 25.931025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720371, 38.131493, 26.093296>,  <36.989677, 38.251194, 26.363750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720371, 38.131493, 26.093296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443865, 0.567768, -0.693270,
		0.591354, -0.766868, -0.249430,
		-0.673265, -0.299255, -0.676137,
		36.518391, 38.041718, 25.890455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400566, 38.034206, 25.747284>,  <36.989677, 38.251194, 26.363750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400566, 38.034206, 25.747284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028915, 38.138523, 25.642431>,  <36.805923, 38.201115, 25.579519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028915, 38.138523, 25.642431>,  <37.400566, 38.034206, 25.747284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028915, 38.138523, 25.642431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365201, 0.536179, -0.761012,
		-0.057918, -0.802807, -0.593420,
		-0.929125, 0.260794, -0.262132,
		36.750179, 38.216763, 25.563791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483288, 37.338657, 25.352898>,  <37.400566, 38.034206, 25.747284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483288, 37.338657, 25.352898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723415, 37.077354, 25.168344>,  <37.867493, 36.920574, 25.057613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723415, 37.077354, 25.168344>,  <37.483288, 37.338657, 25.352898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723415, 37.077354, 25.168344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013327, -0.568649, 0.822473,
		-0.799650, -0.499894, -0.332664,
		0.600318, -0.653257, -0.461382,
		37.903511, 36.881378, 25.029930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212055, 36.661968, 25.337292>,  <37.483288, 37.338657, 25.352898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212055, 36.661968, 25.337292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610779, 36.636345, 25.318249>,  <37.850014, 36.620972, 25.306824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610779, 36.636345, 25.318249>,  <37.212055, 36.661968, 25.337292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610779, 36.636345, 25.318249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000575, -0.602256, 0.798303,
		-0.079805, -0.795729, -0.600372,
		0.996810, -0.064054, -0.047605,
		37.909821, 36.617130, 25.303967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324448, 35.999496, 25.429224>,  <37.212055, 36.661968, 25.337292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324448, 35.999496, 25.429224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686939, 36.156796, 25.491322>,  <37.904434, 36.251175, 25.528580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686939, 36.156796, 25.491322>,  <37.324448, 35.999496, 25.429224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686939, 36.156796, 25.491322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048923, -0.462266, 0.885391,
		0.419944, -0.794773, -0.438159,
		0.906230, 0.393251, 0.155243,
		37.958809, 36.274769, 25.537895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863632, 35.424294, 25.659193>,  <37.324448, 35.999496, 25.429224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863632, 35.424294, 25.659193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074028, 35.743988, 25.775511>,  <38.200264, 35.935802, 25.845303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074028, 35.743988, 25.775511>,  <37.863632, 35.424294, 25.659193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074028, 35.743988, 25.775511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201491, -0.449282, 0.870372,
		0.826280, -0.399212, -0.397355,
		0.525988, 0.799234, 0.290796,
		38.231823, 35.983757, 25.862749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500263, 35.209160, 25.865768>,  <37.863632, 35.424294, 25.659193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500263, 35.209160, 25.865768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413696, 35.544567, 26.065792>,  <38.361755, 35.745811, 26.185806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413696, 35.544567, 26.065792>,  <38.500263, 35.209160, 25.865768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413696, 35.544567, 26.065792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166550, -0.472980, 0.865189,
		0.961990, 0.270525, -0.037294,
		-0.216416, 0.838514, 0.500058,
		38.348770, 35.796120, 26.215809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093769, 35.223591, 26.382845>,  <38.500263, 35.209160, 25.865768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093769, 35.223591, 26.382845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770325, 35.433052, 26.490126>,  <38.576260, 35.558731, 26.554495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770325, 35.433052, 26.490126>,  <39.093769, 35.223591, 26.382845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770325, 35.433052, 26.490126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147177, -0.261329, 0.953964,
		0.569638, 0.810858, 0.134243,
		-0.808611, 0.523657, 0.268202,
		38.527740, 35.590149, 26.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368446, 35.767189, 26.784336>,  <39.093769, 35.223591, 26.382845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368446, 35.767189, 26.784336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986942, 35.680550, 26.867699>,  <38.758041, 35.628567, 26.917717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986942, 35.680550, 26.867699>,  <39.368446, 35.767189, 26.784336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986942, 35.680550, 26.867699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269182, -0.306966, 0.912860,
		-0.133750, 0.926745, 0.351075,
		-0.953757, -0.216599, 0.208407,
		38.700817, 35.615570, 26.930222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335285, 35.961010, 27.507528>,  <39.368446, 35.767189, 26.784336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335285, 35.961010, 27.507528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990559, 35.763290, 27.462040>,  <38.783722, 35.644657, 27.434748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990559, 35.763290, 27.462040>,  <39.335285, 35.961010, 27.507528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990559, 35.763290, 27.462040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044396, -0.149831, 0.987714,
		-0.505269, 0.856280, 0.107182,
		-0.861819, -0.494303, -0.113720,
		38.732014, 35.614998, 27.427923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893074, 36.182785, 28.017235>,  <39.335285, 35.961010, 27.507528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893074, 36.182785, 28.017235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732430, 35.827991, 27.926050>,  <38.636044, 35.615116, 27.871340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732430, 35.827991, 27.926050>,  <38.893074, 36.182785, 28.017235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732430, 35.827991, 27.926050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067380, -0.276860, 0.958545,
		-0.913328, 0.369603, 0.170955,
		-0.401612, -0.886985, -0.227960,
		38.611946, 35.561897, 27.857662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219013, 36.133244, 28.466902>,  <38.893074, 36.182785, 28.017235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219013, 36.133244, 28.466902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328205, 35.768440, 28.344442>,  <38.393719, 35.549561, 28.270966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328205, 35.768440, 28.344442>,  <38.219013, 36.133244, 28.466902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328205, 35.768440, 28.344442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077332, -0.338009, 0.937960,
		-0.958907, -0.232368, -0.162796,
		0.272979, -0.912006, -0.306150,
		38.410099, 35.494839, 28.252598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703712, 35.713192, 28.603720>,  <38.219013, 36.133244, 28.466902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703712, 35.713192, 28.603720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033401, 35.487171, 28.588921>,  <38.231216, 35.351559, 28.580042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033401, 35.487171, 28.588921>,  <37.703712, 35.713192, 28.603720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033401, 35.487171, 28.588921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150760, -0.281948, 0.947511,
		-0.545829, -0.775382, -0.317576,
		0.824222, -0.565056, -0.036999,
		38.280670, 35.317654, 28.577822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514755, 35.048306, 28.956408>,  <37.703712, 35.713192, 28.603720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514755, 35.048306, 28.956408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914104, 35.061996, 28.974625>,  <38.153713, 35.070210, 28.985556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914104, 35.061996, 28.974625>,  <37.514755, 35.048306, 28.956408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914104, 35.061996, 28.974625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036459, -0.230404, 0.972412,
		0.043778, -0.972493, -0.228782,
		0.998376, 0.034229, 0.045543,
		38.213615, 35.072266, 28.988287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772564, 34.383080, 29.291767>,  <37.514755, 35.048306, 28.956408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772564, 34.383080, 29.291767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080482, 34.634808, 29.334412>,  <38.265236, 34.785843, 29.359999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080482, 34.634808, 29.334412>,  <37.772564, 34.383080, 29.291767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080482, 34.634808, 29.334412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135112, -0.323902, 0.936393,
		0.623821, -0.706432, -0.334369,
		0.769800, 0.629319, 0.106609,
		38.311424, 34.823605, 29.366394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254498, 34.044708, 29.628986>,  <37.772564, 34.383080, 29.291767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254498, 34.044708, 29.628986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401073, 34.407288, 29.712963>,  <38.489017, 34.624836, 29.763350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401073, 34.407288, 29.712963>,  <38.254498, 34.044708, 29.628986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401073, 34.407288, 29.712963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015937, -0.231718, 0.972652,
		0.930305, -0.353072, -0.099356,
		0.366439, 0.906447, 0.209942,
		38.511005, 34.679222, 29.775946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.572079, 39.097954, 26.925806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205715, 39.227852, 26.831440>,  <40.985897, 39.305790, 26.774820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205715, 39.227852, 26.831440>,  <41.572079, 39.097954, 26.925806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205715, 39.227852, 26.831440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324284, 0.252292, -0.911695,
		-0.236553, -0.911530, -0.336387,
		-0.915905, 0.324749, -0.235915,
		40.930943, 39.325275, 26.760666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338760, 38.672592, 26.364630>,  <41.572079, 39.097954, 26.925806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338760, 38.672592, 26.364630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125458, 39.010941, 26.369446>,  <40.997478, 39.213951, 26.372335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125458, 39.010941, 26.369446>,  <41.338760, 38.672592, 26.364630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125458, 39.010941, 26.369446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264761, 0.180397, -0.947290,
		-0.803457, -0.501957, -0.320151,
		-0.533253, 0.845870, 0.012042,
		40.965481, 39.264702, 26.373058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877987, 38.606586, 25.799171>,  <41.338760, 38.672592, 26.364630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877987, 38.606586, 25.799171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896648, 38.998611, 25.876425>,  <40.907845, 39.233826, 25.922777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896648, 38.998611, 25.876425>,  <40.877987, 38.606586, 25.799171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896648, 38.998611, 25.876425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046841, 0.190984, -0.980475,
		-0.997812, 0.054792, -0.036997,
		0.046656, 0.980063, 0.193133,
		40.910645, 39.292629, 25.934364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429642, 38.932556, 25.280878>,  <40.877987, 38.606586, 25.799171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429642, 38.932556, 25.280878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678421, 39.205330, 25.434835>,  <40.827690, 39.368996, 25.527210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678421, 39.205330, 25.434835>,  <40.429642, 38.932556, 25.280878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678421, 39.205330, 25.434835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107800, 0.412281, -0.904657,
		-0.775602, 0.604142, 0.182905,
		0.621949, 0.681937, 0.384892,
		40.865005, 39.409912, 25.550303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186745, 39.552567, 25.044807>,  <40.429642, 38.932556, 25.280878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186745, 39.552567, 25.044807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.569706, 39.611595, 25.144079>,  <40.799484, 39.647011, 25.203642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.569706, 39.611595, 25.144079>,  <40.186745, 39.552567, 25.044807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569706, 39.611595, 25.144079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171865, 0.399422, -0.900513,
		-0.232018, 0.904812, 0.357048,
		0.957408, 0.147571, 0.248179,
		40.856930, 39.655865, 25.218533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283253, 40.292881, 24.814016>,  <40.186745, 39.552567, 25.044807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283253, 40.292881, 24.814016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660114, 40.174309, 24.876593>,  <40.886230, 40.103165, 24.914139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660114, 40.174309, 24.876593>,  <40.283253, 40.292881, 24.814016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660114, 40.174309, 24.876593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295860, 0.516155, -0.803773,
		0.157515, 0.803563, 0.574000,
		0.942155, -0.296430, 0.156441,
		40.942760, 40.085381, 24.923525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713440, 40.878471, 24.939005>,  <40.283253, 40.292881, 24.814016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713440, 40.878471, 24.939005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.944393, 40.584999, 24.795704>,  <41.082966, 40.408916, 24.709724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.944393, 40.584999, 24.795704>,  <40.713440, 40.878471, 24.939005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944393, 40.584999, 24.795704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191084, 0.548016, -0.814350,
		0.793800, 0.401734, 0.456608,
		0.577380, -0.733682, -0.358250,
		41.117607, 40.364895, 24.688229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246643, 41.193279, 24.458204>,  <40.713440, 40.878471, 24.939005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246643, 41.193279, 24.458204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234062, 40.809944, 24.344643>,  <41.226513, 40.579945, 24.276506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234062, 40.809944, 24.344643>,  <41.246643, 41.193279, 24.458204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234062, 40.809944, 24.344643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123840, 0.278120, -0.952529,
		0.991804, -0.065115, 0.109934,
		-0.031449, -0.958337, -0.283904,
		41.224628, 40.522442, 24.259472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851681, 41.000111, 23.981794>,  <41.246643, 41.193279, 24.458204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851681, 41.000111, 23.981794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.621693, 40.682426, 23.903164>,  <41.483700, 40.491817, 23.855986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.621693, 40.682426, 23.903164>,  <41.851681, 41.000111, 23.981794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621693, 40.682426, 23.903164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288572, 0.027966, -0.957050,
		0.765594, -0.607002, 0.213106,
		-0.574972, -0.794208, -0.196575,
		41.449200, 40.444164, 23.844191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183392, 40.538067, 23.588718>,  <41.851681, 41.000111, 23.981794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183392, 40.538067, 23.588718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.806129, 40.437412, 23.501879>,  <41.579773, 40.377018, 23.449776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.806129, 40.437412, 23.501879>,  <42.183392, 40.538067, 23.588718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806129, 40.437412, 23.501879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233351, -0.036276, -0.971716,
		0.236647, -0.967141, 0.092934,
		-0.943157, -0.251640, -0.217099,
		41.523182, 40.361919, 23.436749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254852, 40.180103, 23.002052>,  <42.183392, 40.538067, 23.588718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254852, 40.180103, 23.002052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858940, 40.236298, 23.011845>,  <41.621391, 40.270016, 23.017719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858940, 40.236298, 23.011845>,  <42.254852, 40.180103, 23.002052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858940, 40.236298, 23.011845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037389, -0.090007, -0.995239,
		-0.137621, -0.985982, 0.094340,
		-0.989779, 0.140493, 0.024478,
		41.562008, 40.278442, 23.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829262, 39.637585, 22.581903>,  <42.254852, 40.180103, 23.002052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829262, 39.637585, 22.581903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597401, 39.962025, 22.613180>,  <41.458282, 40.156689, 22.631947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597401, 39.962025, 22.613180>,  <41.829262, 39.637585, 22.581903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597401, 39.962025, 22.613180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063743, 0.050531, -0.996686,
		-0.812366, -0.582717, 0.022411,
		-0.579653, 0.811103, 0.078194,
		41.423504, 40.205357, 22.636639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308498, 39.512520, 22.145382>,  <41.829262, 39.637585, 22.581903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308498, 39.512520, 22.145382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.379704, 39.901451, 22.205891>,  <41.422428, 40.134811, 22.242195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.379704, 39.901451, 22.205891>,  <41.308498, 39.512520, 22.145382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379704, 39.901451, 22.205891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249570, 0.104088, -0.962746,
		-0.951854, 0.209136, -0.224135,
		0.178015, 0.972331, 0.151271,
		41.433109, 40.193150, 22.251272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900429, 39.907543, 21.603479>,  <41.308498, 39.512520, 22.145382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900429, 39.907543, 21.603479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247566, 40.057896, 21.733437>,  <41.455849, 40.148106, 21.811411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247566, 40.057896, 21.733437>,  <40.900429, 39.907543, 21.603479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247566, 40.057896, 21.733437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248296, 0.238287, -0.938919,
		-0.430339, 0.895508, 0.113467,
		0.867847, 0.375879, 0.324895,
		41.507919, 40.170658, 21.830906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330299, 40.216526, 21.330559>,  <40.900429, 39.907543, 21.603479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330299, 40.216526, 21.330559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993896, 40.222153, 21.114225>,  <39.792053, 40.225529, 20.984425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993896, 40.222153, 21.114225>,  <40.330299, 40.216526, 21.330559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993896, 40.222153, 21.114225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474470, -0.499518, 0.724817,
		-0.259961, 0.866189, 0.426775,
		-0.841011, 0.014068, -0.540836,
		39.741592, 40.226372, 20.951975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919411, 40.316746, 21.867632>,  <40.330299, 40.216526, 21.330559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919411, 40.316746, 21.867632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667774, 40.168579, 21.594271>,  <39.516792, 40.079678, 21.430254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667774, 40.168579, 21.594271>,  <39.919411, 40.316746, 21.867632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667774, 40.168579, 21.594271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442972, -0.551613, 0.706753,
		-0.638766, 0.747338, 0.182930,
		-0.629090, -0.370417, -0.683401,
		39.479046, 40.057453, 21.389250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333538, 40.216255, 22.242144>,  <39.919411, 40.316746, 21.867632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333538, 40.216255, 22.242144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273289, 39.989731, 21.918020>,  <39.237141, 39.853817, 21.723545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273289, 39.989731, 21.918020>,  <39.333538, 40.216255, 22.242144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273289, 39.989731, 21.918020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081100, -0.809821, 0.581046,
		-0.985259, 0.153236, 0.076051,
		-0.150625, -0.566312, -0.810310,
		39.228100, 39.819836, 21.674927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760517, 39.926601, 22.343143>,  <39.333538, 40.216255, 22.242144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760517, 39.926601, 22.343143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873283, 39.679161, 22.049789>,  <38.940945, 39.530697, 21.873777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873283, 39.679161, 22.049789>,  <38.760517, 39.926601, 22.343143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873283, 39.679161, 22.049789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352365, -0.777727, 0.520558,
		-0.892392, 0.111666, -0.437227,
		0.281915, -0.618605, -0.733384,
		38.957859, 39.493580, 21.829775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193165, 39.513031, 22.286224>,  <38.760517, 39.926601, 22.343143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193165, 39.513031, 22.286224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503445, 39.308445, 22.138340>,  <38.689613, 39.185692, 22.049608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503445, 39.308445, 22.138340>,  <38.193165, 39.513031, 22.286224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503445, 39.308445, 22.138340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293412, -0.810935, 0.506255,
		-0.558746, -0.284224, -0.779114,
		0.775701, -0.511469, -0.369712,
		38.736156, 39.155003, 22.027426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978939, 38.788685, 22.160641>,  <38.193165, 39.513031, 22.286224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978939, 38.788685, 22.160641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375847, 38.750244, 22.192066>,  <38.613991, 38.727180, 22.210920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375847, 38.750244, 22.192066>,  <37.978939, 38.788685, 22.160641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375847, 38.750244, 22.192066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124101, -0.780878, 0.612232,
		0.002511, -0.617247, -0.786765,
		0.992266, -0.096101, 0.078562,
		38.673527, 38.721413, 22.215635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004833, 38.154308, 21.953876>,  <37.978939, 38.788685, 22.160641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004833, 38.154308, 21.953876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317570, 38.251759, 22.183441>,  <38.505211, 38.310230, 22.321180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317570, 38.251759, 22.183441>,  <38.004833, 38.154308, 21.953876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317570, 38.251759, 22.183441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048050, -0.894213, 0.445055,
		0.621626, -0.375538, -0.687424,
		0.781839, 0.243627, 0.573911,
		38.552120, 38.324848, 22.355614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432213, 37.639942, 21.881075>,  <38.004833, 38.154308, 21.953876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432213, 37.639942, 21.881075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517120, 37.800037, 22.237671>,  <38.568066, 37.896095, 22.451628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517120, 37.800037, 22.237671>,  <38.432213, 37.639942, 21.881075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517120, 37.800037, 22.237671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101003, -0.916377, 0.387365,
		0.971978, 0.007818, -0.234941,
		0.212266, 0.400240, 0.891488,
		38.580799, 37.920109, 22.505117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835712, 37.075367, 22.275965>,  <38.432213, 37.639942, 21.881075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835712, 37.075367, 22.275965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719006, 37.343952, 22.548439>,  <38.648979, 37.505104, 22.711924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719006, 37.343952, 22.548439>,  <38.835712, 37.075367, 22.275965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719006, 37.343952, 22.548439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119091, -0.681128, 0.722414,
		0.949046, 0.291901, 0.118768,
		-0.291770, 0.671460, 0.681185,
		38.631474, 37.545391, 22.752794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290321, 36.912563, 22.826633>,  <38.835712, 37.075367, 22.275965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290321, 36.912563, 22.826633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975132, 37.107235, 22.977495>,  <38.786018, 37.224037, 23.068012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975132, 37.107235, 22.977495>,  <39.290321, 36.912563, 22.826633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975132, 37.107235, 22.977495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098237, -0.505325, 0.857319,
		0.607825, 0.712592, 0.350372,
		-0.787971, 0.486681, 0.377153,
		38.738739, 37.253239, 23.090641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463154, 37.037010, 23.512711>,  <39.290321, 36.912563, 22.826633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463154, 37.037010, 23.512711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075581, 37.134121, 23.531586>,  <38.843037, 37.192387, 23.542912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075581, 37.134121, 23.531586>,  <39.463154, 37.037010, 23.512711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075581, 37.134121, 23.531586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089163, -0.520864, 0.848970,
		0.230688, 0.818388, 0.526330,
		-0.968934, 0.242777, 0.047187,
		38.784901, 37.206955, 23.545742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353706, 37.328655, 24.164719>,  <39.463154, 37.037010, 23.512711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353706, 37.328655, 24.164719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986629, 37.213291, 24.055428>,  <38.766380, 37.144073, 23.989853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986629, 37.213291, 24.055428>,  <39.353706, 37.328655, 24.164719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986629, 37.213291, 24.055428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193781, -0.275427, 0.941588,
		-0.346816, 0.917039, 0.196871,
		-0.917697, -0.288408, -0.273227,
		38.711319, 37.126770, 23.973459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825680, 37.875484, 24.538584>,  <39.353706, 37.328655, 24.164719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825680, 37.875484, 24.538584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.666775, 37.527061, 24.423042>,  <38.571430, 37.318008, 24.353718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.666775, 37.527061, 24.423042>,  <38.825680, 37.875484, 24.538584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666775, 37.527061, 24.423042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385276, -0.127369, 0.913969,
		-0.832912, 0.474377, -0.284998,
		-0.397266, -0.871059, -0.288853,
		38.547596, 37.265743, 24.336386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127899, 37.809917, 24.793482>,  <38.825680, 37.875484, 24.538584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127899, 37.809917, 24.793482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220337, 37.427464, 24.721479>,  <38.275799, 37.197990, 24.678278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220337, 37.427464, 24.721479>,  <38.127899, 37.809917, 24.793482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220337, 37.427464, 24.721479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449973, -0.269072, 0.851542,
		-0.862624, -0.115787, -0.492416,
		0.231093, -0.956135, -0.180007,
		38.289665, 37.140625, 24.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431316, 38.088348, 24.936228>,  <38.127899, 37.809917, 24.793482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431316, 38.088348, 24.936228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087849, 38.255199, 25.055355>,  <36.881767, 38.355309, 25.126831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087849, 38.255199, 25.055355>,  <37.431316, 38.088348, 24.936228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087849, 38.255199, 25.055355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117263, 0.725547, -0.678108,
		-0.498935, -0.547348, -0.671919,
		-0.858670, 0.417123, 0.297817,
		36.830246, 38.380337, 25.144701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054939, 38.249565, 24.296471>,  <37.431316, 38.088348, 24.936228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054939, 38.249565, 24.296471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875275, 38.494053, 24.557138>,  <36.767475, 38.640743, 24.713539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875275, 38.494053, 24.557138>,  <37.054939, 38.249565, 24.296471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875275, 38.494053, 24.557138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232299, 0.784190, -0.575399,
		-0.862724, -0.107064, -0.494211,
		-0.449160, 0.611215, 0.651668,
		36.740528, 38.677418, 24.752640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586170, 38.547695, 23.916920>,  <37.054939, 38.249565, 24.296471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586170, 38.547695, 23.916920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649429, 38.795048, 24.224840>,  <36.687386, 38.943459, 24.409592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649429, 38.795048, 24.224840>,  <36.586170, 38.547695, 23.916920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649429, 38.795048, 24.224840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159648, 0.753341, -0.637957,
		-0.974424, 0.223786, 0.020414,
		0.158145, 0.618382, 0.769801,
		36.696873, 38.980564, 24.455780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328232, 39.135143, 23.803333>,  <36.586170, 38.547695, 23.916920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328232, 39.135143, 23.803333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595711, 39.249107, 24.078045>,  <36.756199, 39.317486, 24.242872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595711, 39.249107, 24.078045>,  <36.328232, 39.135143, 23.803333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595711, 39.249107, 24.078045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182988, 0.832204, -0.523405,
		-0.720663, 0.475674, 0.504361,
		0.668701, 0.284906, 0.686781,
		36.796322, 39.334579, 24.284079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193096, 39.845303, 23.969454>,  <36.328232, 39.135143, 23.803333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193096, 39.845303, 23.969454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572433, 39.828129, 24.095190>,  <36.800034, 39.817825, 24.170631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572433, 39.828129, 24.095190>,  <36.193096, 39.845303, 23.969454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572433, 39.828129, 24.095190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256801, 0.685677, -0.681102,
		-0.186294, 0.726639, 0.661280,
		0.948339, -0.042932, 0.314339,
		36.856934, 39.815250, 24.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417454, 40.540409, 24.093239>,  <36.193096, 39.845303, 23.969454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417454, 40.540409, 24.093239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761097, 40.342361, 24.041397>,  <36.967281, 40.223534, 24.010292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761097, 40.342361, 24.041397>,  <36.417454, 40.540409, 24.093239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761097, 40.342361, 24.041397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299638, 0.691872, -0.656910,
		0.414917, 0.525520, 0.742747,
		0.859105, -0.495118, -0.129603,
		37.018829, 40.193825, 24.002516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915577, 41.074825, 24.102501>,  <36.417454, 40.540409, 24.093239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915577, 41.074825, 24.102501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095806, 40.760624, 23.932810>,  <37.203945, 40.572105, 23.830996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095806, 40.760624, 23.932810>,  <36.915577, 41.074825, 24.102501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095806, 40.760624, 23.932810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315513, 0.584647, -0.747421,
		0.835124, 0.202921, 0.511264,
		0.450577, -0.785500, -0.424229,
		37.230980, 40.524975, 23.805542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279274, 41.652821, 24.508070>,  <36.915577, 41.074825, 24.102501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279274, 41.652821, 24.508070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969036, 41.865345, 24.644400>,  <36.782894, 41.992859, 24.726196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969036, 41.865345, 24.644400>,  <37.279274, 41.652821, 24.508070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969036, 41.865345, 24.644400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150969, -0.680394, 0.717128,
		0.612915, 0.504745, 0.607921,
		-0.775592, 0.531316, 0.340823,
		36.736359, 42.024738, 24.746647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280571, 41.582485, 25.225277>,  <37.279274, 41.652821, 24.508070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280571, 41.582485, 25.225277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913036, 41.731232, 25.172430>,  <36.692516, 41.820480, 25.140722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913036, 41.731232, 25.172430>,  <37.280571, 41.582485, 25.225277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913036, 41.731232, 25.172430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357780, -0.643685, 0.676508,
		0.166527, 0.668870, 0.724487,
		-0.918837, 0.371863, -0.132117,
		36.637386, 41.842793, 25.132795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014595, 41.603447, 25.907560>,  <37.280571, 41.582485, 25.225277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014595, 41.603447, 25.907560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679852, 41.636200, 25.691053>,  <36.479008, 41.655849, 25.561150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679852, 41.636200, 25.691053>,  <37.014595, 41.603447, 25.907560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679852, 41.636200, 25.691053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531618, -0.357434, 0.767869,
		-0.130593, 0.930342, 0.342650,
		-0.836856, 0.081880, -0.541265,
		36.428795, 41.660763, 25.528673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438248, 41.884048, 26.358164>,  <37.014595, 41.603447, 25.907560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438248, 41.884048, 26.358164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280327, 41.672165, 26.057888>,  <36.185574, 41.545033, 25.877724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280327, 41.672165, 26.057888>,  <36.438248, 41.884048, 26.358164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280327, 41.672165, 26.057888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621085, -0.448221, 0.642925,
		-0.677040, 0.720071, -0.152037,
		-0.394805, -0.529714, -0.750688,
		36.161884, 41.513252, 25.832682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713734, 41.817234, 26.487986>,  <36.438248, 41.884048, 26.358164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713734, 41.817234, 26.487986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759270, 41.523300, 26.220537>,  <35.786591, 41.346939, 26.060068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759270, 41.523300, 26.220537>,  <35.713734, 41.817234, 26.487986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759270, 41.523300, 26.220537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716814, -0.526740, 0.456860,
		-0.687908, 0.427271, -0.586704,
		0.113838, -0.734836, -0.668623,
		35.793423, 41.302849, 26.019951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958466, 41.506413, 26.312792>,  <35.713734, 41.817234, 26.487986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958466, 41.506413, 26.312792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242634, 41.242340, 26.215254>,  <35.413136, 41.083897, 26.156731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242634, 41.242340, 26.215254>,  <34.958466, 41.506413, 26.312792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242634, 41.242340, 26.215254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616616, -0.750898, 0.236512,
		-0.339243, -0.017665, -0.940533,
		0.710422, -0.660183, -0.243845,
		35.455761, 41.044285, 26.142099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661816, 41.014496, 26.037678>,  <34.958466, 41.506413, 26.312792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661816, 41.014496, 26.037678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000252, 40.814548, 26.111713>,  <35.203316, 40.694580, 26.156136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000252, 40.814548, 26.111713>,  <34.661816, 41.014496, 26.037678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000252, 40.814548, 26.111713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532276, -0.773807, 0.343374,
		-0.028417, -0.389046, -0.920780,
		0.846094, -0.499867, 0.185090,
		35.254082, 40.664589, 26.167240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.225422, 43.483112, 23.493399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241375, 43.084553, 23.463469>,  <40.250946, 42.845417, 23.445511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241375, 43.084553, 23.463469>,  <40.225422, 43.483112, 23.493399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241375, 43.084553, 23.463469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219688, -0.081798, 0.972135,
		-0.974754, -0.022332, -0.222160,
		0.039882, -0.996399, -0.074827,
		40.253338, 42.785633, 23.441021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619038, 43.226894, 23.833157>,  <40.225422, 43.483112, 23.493399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619038, 43.226894, 23.833157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867260, 42.913227, 23.833162>,  <40.016193, 42.725029, 23.833166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867260, 42.913227, 23.833162>,  <39.619038, 43.226894, 23.833157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867260, 42.913227, 23.833162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230683, -0.182533, 0.955755,
		-0.749467, -0.593099, -0.294165,
		0.620552, -0.784165, 0.000016,
		40.053425, 42.677979, 23.833168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250347, 42.798977, 24.191128>,  <39.619038, 43.226894, 23.833157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250347, 42.798977, 24.191128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.629562, 42.675354, 24.221346>,  <39.857090, 42.601181, 24.239477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.629562, 42.675354, 24.221346>,  <39.250347, 42.798977, 24.191128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629562, 42.675354, 24.221346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126384, -0.147923, 0.980890,
		-0.291974, -0.939470, -0.179297,
		0.948039, -0.309054, 0.075545,
		39.913975, 42.582638, 24.244009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182415, 42.239002, 24.609928>,  <39.250347, 42.798977, 24.191128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182415, 42.239002, 24.609928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580139, 42.279858, 24.622057>,  <39.818771, 42.304371, 24.629333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580139, 42.279858, 24.622057>,  <39.182415, 42.239002, 24.609928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580139, 42.279858, 24.622057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009571, -0.197822, 0.980191,
		0.106115, -0.974902, -0.195718,
		0.994308, 0.102140, 0.030323,
		39.878433, 42.310501, 24.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573128, 41.596127, 24.785313>,  <39.182415, 42.239002, 24.609928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573128, 41.596127, 24.785313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.799435, 41.905838, 24.898733>,  <39.935219, 42.091663, 24.966785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.799435, 41.905838, 24.898733>,  <39.573128, 41.596127, 24.785313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799435, 41.905838, 24.898733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017665, -0.332418, 0.942967,
		0.824372, -0.538513, -0.174395,
		0.565772, 0.774275, 0.283549,
		39.969166, 42.138119, 24.983797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108410, 41.308681, 25.166067>,  <39.573128, 41.596127, 24.785313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108410, 41.308681, 25.166067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087841, 41.690022, 25.285053>,  <40.075500, 41.918823, 25.356445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087841, 41.690022, 25.285053>,  <40.108410, 41.308681, 25.166067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087841, 41.690022, 25.285053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222627, -0.279419, 0.934003,
		0.973546, 0.114252, -0.197872,
		-0.051423, 0.953347, 0.297463,
		40.072414, 41.976025, 25.374292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627792, 41.394295, 25.712889>,  <40.108410, 41.308681, 25.166067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627792, 41.394295, 25.712889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365345, 41.694714, 25.742384>,  <40.207878, 41.874966, 25.760080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365345, 41.694714, 25.742384>,  <40.627792, 41.394295, 25.712889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365345, 41.694714, 25.742384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149169, -0.224849, 0.962908,
		0.739771, 0.620780, 0.259560,
		-0.656116, 0.751049, 0.073736,
		40.168510, 41.920029, 25.764505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772018, 41.834000, 26.394190>,  <40.627792, 41.394295, 25.712889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772018, 41.834000, 26.394190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.400772, 41.918297, 26.271429>,  <40.178024, 41.968876, 26.197773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.400772, 41.918297, 26.271429>,  <40.772018, 41.834000, 26.394190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400772, 41.918297, 26.271429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326417, -0.064204, 0.943043,
		0.179034, 0.975431, 0.128379,
		-0.928116, 0.210742, -0.306903,
		40.122337, 41.981518, 26.179358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576614, 42.364090, 26.853552>,  <40.772018, 41.834000, 26.394190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576614, 42.364090, 26.853552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239651, 42.218853, 26.694300>,  <40.037472, 42.131710, 26.598749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239651, 42.218853, 26.694300>,  <40.576614, 42.364090, 26.853552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239651, 42.218853, 26.694300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411608, -0.043207, 0.910336,
		-0.347737, 0.930751, -0.113054,
		-0.842412, -0.363091, -0.398129,
		39.986927, 42.109924, 26.574862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078518, 42.687195, 27.193642>,  <40.576614, 42.364090, 26.853552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078518, 42.687195, 27.193642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867775, 42.371204, 27.068199>,  <39.741329, 42.181610, 26.992933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867775, 42.371204, 27.068199>,  <40.078518, 42.687195, 27.193642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867775, 42.371204, 27.068199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491641, -0.017729, 0.870617,
		-0.693330, 0.612877, -0.379046,
		-0.526861, -0.789979, -0.313608,
		39.709717, 42.134209, 26.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429783, 42.760880, 27.484249>,  <40.078518, 42.687195, 27.193642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429783, 42.760880, 27.484249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.470470, 42.372059, 27.399609>,  <39.494884, 42.138767, 27.348824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.470470, 42.372059, 27.399609>,  <39.429783, 42.760880, 27.484249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470470, 42.372059, 27.399609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375590, -0.234488, 0.896631,
		-0.921186, -0.011731, -0.388944,
		0.101721, -0.972048, -0.211601,
		39.500988, 42.080444, 27.336128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772163, 42.403454, 27.683363>,  <39.429783, 42.760880, 27.484249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772163, 42.403454, 27.683363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050224, 42.116375, 27.666992>,  <39.217060, 41.944130, 27.657169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050224, 42.116375, 27.666992>,  <38.772163, 42.403454, 27.683363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050224, 42.116375, 27.666992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274253, -0.317405, 0.907766,
		-0.664489, -0.619813, -0.417476,
		0.695154, -0.717695, -0.040926,
		39.258770, 41.901066, 27.654715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086018, 42.226482, 27.286604>,  <38.772163, 42.403454, 27.683363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086018, 42.226482, 27.286604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.773476, 42.475060, 27.309563>,  <37.585949, 42.624207, 27.323338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.773476, 42.475060, 27.309563>,  <38.086018, 42.226482, 27.286604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773476, 42.475060, 27.309563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250387, 0.396395, -0.883276,
		-0.571658, -0.675780, -0.465326,
		-0.781354, 0.621443, 0.057396,
		37.539070, 42.661491, 27.326782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764553, 42.220078, 26.610733>,  <38.086018, 42.226482, 27.286604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764553, 42.220078, 26.610733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654507, 42.566242, 26.778244>,  <37.588478, 42.773941, 26.878752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654507, 42.566242, 26.778244>,  <37.764553, 42.220078, 26.610733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654507, 42.566242, 26.778244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284644, 0.489380, -0.824309,
		-0.918308, -0.107578, -0.380970,
		-0.275117, 0.865410, 0.418780,
		37.571972, 42.825867, 26.903877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375038, 42.632988, 26.127800>,  <37.764553, 42.220078, 26.610733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375038, 42.632988, 26.127800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495636, 42.898647, 26.401445>,  <37.567997, 43.058041, 26.565632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495636, 42.898647, 26.401445>,  <37.375038, 42.632988, 26.127800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495636, 42.898647, 26.401445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140852, 0.678606, -0.720871,
		-0.943006, 0.313700, 0.111052,
		0.301498, 0.664144, 0.684114,
		37.586086, 43.097889, 26.606680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974483, 43.304680, 26.087580>,  <37.375038, 42.632988, 26.127800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974483, 43.304680, 26.087580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301506, 43.424580, 26.284254>,  <37.497719, 43.496521, 26.402260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301506, 43.424580, 26.284254>,  <36.974483, 43.304680, 26.087580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301506, 43.424580, 26.284254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018731, 0.839545, -0.542967,
		-0.575549, 0.453114, 0.680758,
		0.817553, 0.299753, 0.491687,
		37.546772, 43.514507, 26.431761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884758, 44.057114, 26.393738>,  <36.974483, 43.304680, 26.087580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884758, 44.057114, 26.393738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280102, 43.997959, 26.379425>,  <37.517307, 43.962467, 26.370838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280102, 43.997959, 26.379425>,  <36.884758, 44.057114, 26.393738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280102, 43.997959, 26.379425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101877, 0.817900, -0.566268,
		0.113008, 0.556030, 0.823444,
		0.988357, -0.147883, -0.035783,
		37.576611, 43.953594, 26.368690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156090, 44.756706, 26.222942>,  <36.884758, 44.057114, 26.393738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156090, 44.756706, 26.222942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.476017, 44.530849, 26.141491>,  <37.667973, 44.395336, 26.092619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.476017, 44.530849, 26.141491>,  <37.156090, 44.756706, 26.222942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476017, 44.530849, 26.141491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313575, 0.682331, -0.660375,
		0.511820, 0.464327, 0.722800,
		0.799819, -0.564645, -0.203629,
		37.715961, 44.361454, 26.080402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646183, 45.257782, 26.147387>,  <37.156090, 44.756706, 26.222942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646183, 45.257782, 26.147387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829357, 44.944080, 25.979939>,  <37.939262, 44.755859, 25.879471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829357, 44.944080, 25.979939>,  <37.646183, 45.257782, 26.147387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829357, 44.944080, 25.979939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323347, 0.585580, -0.743332,
		0.828096, 0.205038, 0.521744,
		0.457934, -0.784255, -0.418618,
		37.966736, 44.708805, 25.854353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357292, 45.445232, 26.081432>,  <37.646183, 45.257782, 26.147387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357292, 45.445232, 26.081432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269619, 45.173473, 25.801323>,  <38.217014, 45.010418, 25.633257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.269619, 45.173473, 25.801323>,  <38.357292, 45.445232, 26.081432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269619, 45.173473, 25.801323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371395, 0.605599, -0.703787,
		0.902233, -0.414337, 0.119586,
		-0.219184, -0.679393, -0.700274,
		38.203865, 44.969654, 25.591240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926704, 45.466572, 25.661461>,  <38.357292, 45.445232, 26.081432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926704, 45.466572, 25.661461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632565, 45.296700, 25.450214>,  <38.456081, 45.194775, 25.323465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632565, 45.296700, 25.450214>,  <38.926704, 45.466572, 25.661461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632565, 45.296700, 25.450214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335984, 0.448312, -0.828330,
		0.588543, -0.786547, -0.186976,
		-0.735345, -0.424687, -0.528118,
		38.411961, 45.169292, 25.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167820, 45.186974, 25.035252>,  <38.926704, 45.466572, 25.661461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167820, 45.186974, 25.035252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.781834, 45.216080, 24.934418>,  <38.550243, 45.233543, 24.873917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.781834, 45.216080, 24.934418>,  <39.167820, 45.186974, 25.035252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781834, 45.216080, 24.934418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262291, 0.243126, -0.933859,
		-0.006661, -0.967262, -0.253693,
		-0.964965, 0.072762, -0.252085,
		38.492344, 45.237907, 24.858791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088486, 44.802841, 24.349279>,  <39.167820, 45.186974, 25.035252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088486, 44.802841, 24.349279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.806465, 45.082302, 24.397907>,  <38.637253, 45.249981, 24.427084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.806465, 45.082302, 24.397907>,  <39.088486, 44.802841, 24.349279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806465, 45.082302, 24.397907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196508, 0.357194, -0.913125,
		-0.681382, -0.619914, -0.389133,
		-0.705055, 0.698655, 0.121568,
		38.594948, 45.291897, 24.434378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716167, 44.865532, 23.713909>,  <39.088486, 44.802841, 24.349279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716167, 44.865532, 23.713909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.617184, 45.211231, 23.889107>,  <38.557793, 45.418652, 23.994226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.617184, 45.211231, 23.889107>,  <38.716167, 44.865532, 23.713909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617184, 45.211231, 23.889107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072646, 0.467333, -0.881091,
		-0.966170, -0.186217, -0.178431,
		-0.247461, 0.864247, 0.437996,
		38.542946, 45.470505, 24.020506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425549, 45.114338, 23.196802>,  <38.716167, 44.865532, 23.713909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425549, 45.114338, 23.196802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469418, 45.427776, 23.441408>,  <38.495739, 45.615841, 23.588171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469418, 45.427776, 23.441408>,  <38.425549, 45.114338, 23.196802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469418, 45.427776, 23.441408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260390, 0.571090, -0.778494,
		-0.959254, 0.244612, -0.141408,
		0.109672, 0.783595, 0.611515,
		38.502319, 45.662853, 23.624863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017395, 44.642242, 23.491293>,  <38.425549, 45.114338, 23.196802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017395, 44.642242, 23.491293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696129, 44.637444, 23.253038>,  <37.503368, 44.634563, 23.110086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696129, 44.637444, 23.253038>,  <38.017395, 44.642242, 23.491293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696129, 44.637444, 23.253038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397507, -0.733909, 0.550787,
		-0.443750, 0.679142, 0.584681,
		-0.803165, -0.011997, -0.595636,
		37.455181, 44.633846, 23.074348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416878, 44.786942, 23.876057>,  <38.017395, 44.642242, 23.491293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416878, 44.786942, 23.876057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269753, 44.592804, 23.558779>,  <37.181477, 44.476322, 23.368412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269753, 44.592804, 23.558779>,  <37.416878, 44.786942, 23.876057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269753, 44.592804, 23.558779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492563, -0.621807, 0.608883,
		-0.788729, 0.614654, -0.010352,
		-0.367815, -0.485343, -0.793192,
		37.159409, 44.447201, 23.320822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645992, 44.678871, 24.010271>,  <37.416878, 44.786942, 23.876057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645992, 44.678871, 24.010271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.787590, 44.424080, 23.736351>,  <36.872547, 44.271206, 23.571999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.787590, 44.424080, 23.736351>,  <36.645992, 44.678871, 24.010271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787590, 44.424080, 23.736351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401161, -0.764847, 0.504062,
		-0.844842, 0.096281, -0.526281,
		0.353993, -0.636976, -0.684800,
		36.893787, 44.232986, 23.530910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140282, 44.205082, 23.959057>,  <36.645992, 44.678871, 24.010271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140282, 44.205082, 23.959057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466820, 44.016098, 23.826176>,  <36.662743, 43.902706, 23.746447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466820, 44.016098, 23.826176>,  <36.140282, 44.205082, 23.959057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466820, 44.016098, 23.826176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238284, -0.799460, 0.551438,
		-0.526114, -0.371007, -0.765217,
		0.816348, -0.472459, -0.332202,
		36.711723, 43.874359, 23.726515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852772, 43.588432, 23.705814>,  <36.140282, 44.205082, 23.959057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852772, 43.588432, 23.705814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237324, 43.518303, 23.790680>,  <36.468056, 43.476227, 23.841599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237324, 43.518303, 23.790680>,  <35.852772, 43.588432, 23.705814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237324, 43.518303, 23.790680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255341, -0.855850, 0.449801,
		0.102720, -0.486603, -0.867563,
		0.961379, -0.175321, 0.212163,
		36.525738, 43.465706, 23.854328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010834, 42.893188, 23.476128>,  <35.852772, 43.588432, 23.705814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010834, 42.893188, 23.476128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286495, 42.994049, 23.747860>,  <36.451893, 43.054565, 23.910898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286495, 42.994049, 23.747860>,  <36.010834, 42.893188, 23.476128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286495, 42.994049, 23.747860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186973, -0.843877, 0.502904,
		0.700078, -0.473594, -0.534414,
		0.689152, 0.252151, 0.679329,
		36.493240, 43.069695, 23.951658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522297, 42.343742, 23.468386>,  <36.010834, 42.893188, 23.476128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522297, 42.343742, 23.468386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604584, 42.510578, 23.822496>,  <36.653957, 42.610680, 24.034964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604584, 42.510578, 23.822496>,  <36.522297, 42.343742, 23.468386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604584, 42.510578, 23.822496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008159, -0.905325, 0.424640,
		0.978577, -0.080134, -0.189645,
		0.205719, 0.417090, 0.885277,
		36.666298, 42.635704, 24.088079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030739, 41.852825, 23.833546>,  <36.522297, 42.343742, 23.468386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030739, 41.852825, 23.833546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.857403, 42.082050, 24.111773>,  <36.753403, 42.219585, 24.278709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.857403, 42.082050, 24.111773>,  <37.030739, 41.852825, 23.833546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857403, 42.082050, 24.111773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051587, -0.754758, 0.653972,
		0.899753, 0.319274, 0.297504,
		-0.433340, 0.573065, 0.695566,
		36.727402, 42.253971, 24.320442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595501, 41.389942, 23.829617>,  <37.030739, 41.852825, 23.833546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595501, 41.389942, 23.829617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548580, 41.047630, 23.628071>,  <37.520428, 40.842243, 23.507143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548580, 41.047630, 23.628071>,  <37.595501, 41.389942, 23.829617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548580, 41.047630, 23.628071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269519, 0.460890, -0.845541,
		0.955824, -0.234982, 0.176588,
		-0.117300, -0.855783, -0.503862,
		37.513390, 40.790897, 23.476912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196129, 41.237862, 23.417854>,  <37.595501, 41.389942, 23.829617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196129, 41.237862, 23.417854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905407, 41.029858, 23.238371>,  <37.730972, 40.905056, 23.130680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905407, 41.029858, 23.238371>,  <38.196129, 41.237862, 23.417854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905407, 41.029858, 23.238371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264233, 0.391322, -0.881503,
		0.633981, -0.759247, -0.147012,
		-0.726808, -0.520011, -0.448709,
		37.687363, 40.873856, 23.103758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530701, 41.085876, 22.834057>,  <38.196129, 41.237862, 23.417854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530701, 41.085876, 22.834057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145256, 41.004143, 22.765127>,  <37.913990, 40.955101, 22.723768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145256, 41.004143, 22.765127>,  <38.530701, 41.085876, 22.834057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145256, 41.004143, 22.765127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084842, 0.377545, -0.922096,
		0.253478, -0.903165, -0.346471,
		-0.963613, -0.204336, -0.172326,
		37.856171, 40.942841, 22.713428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458740, 40.642673, 22.274540>,  <38.530701, 41.085876, 22.834057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458740, 40.642673, 22.274540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113876, 40.841152, 22.315468>,  <37.906956, 40.960239, 22.340025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113876, 40.841152, 22.315468>,  <38.458740, 40.642673, 22.274540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113876, 40.841152, 22.315468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153779, 0.448735, -0.880335,
		-0.482732, -0.743255, -0.463186,
		-0.862161, 0.496194, 0.102322,
		37.855228, 40.990009, 22.346165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175987, 40.586868, 21.655035>,  <38.458740, 40.642673, 22.274540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175987, 40.586868, 21.655035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941944, 40.879307, 21.795404>,  <37.801517, 41.054768, 21.879625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941944, 40.879307, 21.795404>,  <38.175987, 40.586868, 21.655035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941944, 40.879307, 21.795404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008899, 0.426915, -0.904248,
		-0.810903, -0.532209, -0.243288,
		-0.585112, 0.731093, 0.350923,
		37.766411, 41.098633, 21.900681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582294, 40.605789, 21.175806>,  <38.175987, 40.586868, 21.655035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582294, 40.605789, 21.175806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650436, 40.954079, 21.360338>,  <37.691322, 41.163052, 21.471058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650436, 40.954079, 21.360338>,  <37.582294, 40.605789, 21.175806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650436, 40.954079, 21.360338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095418, 0.451399, -0.887206,
		-0.980752, 0.195159, -0.006184,
		0.170355, 0.870719, 0.461332,
		37.701542, 41.215294, 21.498737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366802, 41.108597, 20.595064>,  <37.582294, 40.605789, 21.175806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366802, 41.108597, 20.595064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519463, 41.372417, 20.854090>,  <37.611057, 41.530708, 21.009504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519463, 41.372417, 20.854090>,  <37.366802, 41.108597, 20.595064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519463, 41.372417, 20.854090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000958, 0.700309, -0.713839,
		-0.924306, 0.273057, 0.266642,
		0.381650, 0.659551, 0.647562,
		37.633957, 41.570282, 21.048359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951546, 41.776360, 20.502983>,  <37.366802, 41.108597, 20.595064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951546, 41.776360, 20.502983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306671, 41.851971, 20.670822>,  <37.519745, 41.897339, 20.771524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306671, 41.851971, 20.670822>,  <36.951546, 41.776360, 20.502983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306671, 41.851971, 20.670822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170098, 0.712401, -0.680846,
		-0.427622, 0.675834, 0.600323,
		0.887810, 0.189031, 0.419597,
		37.573013, 41.908680, 20.796701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069172, 42.529160, 20.496227>,  <36.951546, 41.776360, 20.502983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069172, 42.529160, 20.496227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433861, 42.370895, 20.540455>,  <37.652672, 42.275936, 20.566992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433861, 42.370895, 20.540455>,  <37.069172, 42.529160, 20.496227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433861, 42.370895, 20.540455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378088, 0.702853, -0.602534,
		0.160682, 0.591147, 0.790397,
		0.911718, -0.395656, 0.110570,
		37.707375, 42.252197, 20.573626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.536236, 33.581741, 34.084732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902058, 33.649483, 33.937817>,  <35.121552, 33.690128, 33.849667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902058, 33.649483, 33.937817>,  <34.536236, 33.581741, 34.084732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902058, 33.649483, 33.937817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400162, 0.246902, -0.882559,
		-0.058783, 0.954127, 0.293577,
		0.914557, 0.169358, -0.367291,
		35.176426, 33.700291, 33.827629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526867, 34.201237, 33.734158>,  <34.536236, 33.581741, 34.084732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526867, 34.201237, 33.734158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844563, 34.029240, 33.562439>,  <35.035179, 33.926041, 33.459408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844563, 34.029240, 33.562439>,  <34.526867, 34.201237, 33.734158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844563, 34.029240, 33.562439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209240, 0.469759, -0.857640,
		0.570442, 0.770995, 0.283129,
		0.794238, -0.429992, -0.429293,
		35.082832, 33.900242, 33.433651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867764, 34.775070, 33.448421>,  <34.526867, 34.201237, 33.734158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867764, 34.775070, 33.448421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970169, 34.438221, 33.258568>,  <35.031612, 34.236111, 33.144653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970169, 34.438221, 33.258568>,  <34.867764, 34.775070, 33.448421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970169, 34.438221, 33.258568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097829, 0.465909, -0.879408,
		0.961710, 0.271574, 0.036895,
		0.256014, -0.842126, -0.474637,
		35.046974, 34.185581, 33.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249607, 34.909866, 32.934681>,  <34.867764, 34.775070, 33.448421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249607, 34.909866, 32.934681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140491, 34.539425, 32.830437>,  <35.075020, 34.317162, 32.767891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140491, 34.539425, 32.830437>,  <35.249607, 34.909866, 32.934681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140491, 34.539425, 32.830437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219368, 0.323623, -0.920405,
		0.936729, -0.193911, -0.291440,
		-0.272793, -0.926103, -0.260609,
		35.058655, 34.261593, 32.752254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617809, 34.857403, 32.374298>,  <35.249607, 34.909866, 32.934681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617809, 34.857403, 32.374298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337696, 34.573627, 32.342541>,  <35.169628, 34.403362, 32.323486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337696, 34.573627, 32.342541>,  <35.617809, 34.857403, 32.374298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337696, 34.573627, 32.342541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039243, 0.149300, -0.988013,
		0.712787, -0.688772, -0.132392,
		-0.700282, -0.709438, -0.079390,
		35.127613, 34.360798, 32.318726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747459, 34.510845, 31.708193>,  <35.617809, 34.857403, 32.374298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747459, 34.510845, 31.708193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376347, 34.378147, 31.776503>,  <35.153679, 34.298527, 31.817488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376347, 34.378147, 31.776503>,  <35.747459, 34.510845, 31.708193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376347, 34.378147, 31.776503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238680, 0.175878, -0.955038,
		0.286796, -0.926828, -0.242358,
		-0.927782, -0.331748, 0.170774,
		35.098011, 34.278625, 31.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532398, 33.960003, 31.104326>,  <35.747459, 34.510845, 31.708193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532398, 33.960003, 31.104326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212265, 34.116333, 31.286190>,  <35.020184, 34.210133, 31.395308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212265, 34.116333, 31.286190>,  <35.532398, 33.960003, 31.104326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212265, 34.116333, 31.286190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384747, 0.246795, -0.889417,
		-0.459818, -0.886761, -0.047148,
		-0.800335, 0.390830, 0.454659,
		34.972164, 34.233582, 31.422588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957458, 33.694870, 30.714651>,  <35.532398, 33.960003, 31.104326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957458, 33.694870, 30.714651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818256, 34.021454, 30.898949>,  <34.734734, 34.217403, 31.009527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818256, 34.021454, 30.898949>,  <34.957458, 33.694870, 30.714651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818256, 34.021454, 30.898949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390449, 0.320586, -0.863003,
		-0.852314, -0.480230, 0.207219,
		-0.348008, 0.816458, 0.460745,
		34.713856, 34.266392, 31.037172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375706, 33.870773, 30.385527>,  <34.957458, 33.694870, 30.714651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375706, 33.870773, 30.385527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435127, 34.215939, 30.578733>,  <34.470779, 34.423038, 30.694658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435127, 34.215939, 30.578733>,  <34.375706, 33.870773, 30.385527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435127, 34.215939, 30.578733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363071, 0.501921, -0.785019,
		-0.919842, -0.058750, 0.387864,
		0.148558, 0.862916, 0.483019,
		34.479694, 34.474812, 30.723639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752670, 34.369408, 30.231422>,  <34.375706, 33.870773, 30.385527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752670, 34.369408, 30.231422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065151, 34.569469, 30.380854>,  <34.252640, 34.689507, 30.470512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065151, 34.569469, 30.380854>,  <33.752670, 34.369408, 30.231422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065151, 34.569469, 30.380854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027075, 0.625000, -0.780155,
		-0.623687, 0.599346, 0.501795,
		0.781205, 0.500159, 0.373578,
		34.299511, 34.719517, 30.492928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628757, 35.015392, 30.046566>,  <33.752670, 34.369408, 30.231422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628757, 35.015392, 30.046566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021740, 35.033619, 30.118906>,  <34.257530, 35.044556, 30.162310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021740, 35.033619, 30.118906>,  <33.628757, 35.015392, 30.046566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021740, 35.033619, 30.118906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097706, 0.700217, -0.707213,
		-0.158862, 0.712474, 0.683479,
		0.982454, 0.045569, 0.180851,
		34.316475, 35.047291, 30.173161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851227, 35.708931, 29.987524>,  <33.628757, 35.015392, 30.046566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851227, 35.708931, 29.987524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191761, 35.502621, 29.949135>,  <34.396080, 35.378834, 29.926102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191761, 35.502621, 29.949135>,  <33.851227, 35.708931, 29.987524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191761, 35.502621, 29.949135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344022, 0.686948, -0.640119,
		0.396086, 0.511936, 0.762258,
		0.851331, -0.515775, -0.095973,
		34.447159, 35.347889, 29.920343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886791, 36.291416, 30.456961>,  <33.851227, 35.708931, 29.987524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886791, 36.291416, 30.456961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610664, 36.580700, 30.448566>,  <33.444988, 36.754269, 30.443531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610664, 36.580700, 30.448566>,  <33.886791, 36.291416, 30.456961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610664, 36.580700, 30.448566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355081, -0.313377, 0.880746,
		0.630384, 0.615442, 0.473125,
		-0.690314, 0.723206, -0.020984,
		33.403572, 36.797661, 30.442272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974495, 36.667023, 31.130659>,  <33.886791, 36.291416, 30.456961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974495, 36.667023, 31.130659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608521, 36.717335, 30.977255>,  <33.388935, 36.747524, 30.885212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608521, 36.717335, 30.977255>,  <33.974495, 36.667023, 31.130659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608521, 36.717335, 30.977255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403590, -0.294280, 0.866322,
		-0.003891, 0.947406, 0.320011,
		-0.914932, 0.125782, -0.383508,
		33.334042, 36.755070, 30.862202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683128, 37.083565, 31.612776>,  <33.974495, 36.667023, 31.130659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683128, 37.083565, 31.612776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383221, 36.908791, 31.414005>,  <33.203274, 36.803928, 31.294743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383221, 36.908791, 31.414005>,  <33.683128, 37.083565, 31.612776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383221, 36.908791, 31.414005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336260, -0.395194, 0.854840,
		-0.569888, 0.808030, 0.149383,
		-0.749772, -0.436931, -0.496924,
		33.158291, 36.777710, 31.264929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028072, 37.132439, 32.013630>,  <33.683128, 37.083565, 31.612776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028072, 37.132439, 32.013630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013962, 36.824615, 31.758587>,  <33.005493, 36.639923, 31.605562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013962, 36.824615, 31.758587>,  <33.028072, 37.132439, 32.013630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013962, 36.824615, 31.758587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359236, -0.585593, 0.726657,
		-0.932580, 0.254687, -0.255793,
		-0.035279, -0.769555, -0.637605,
		33.003380, 36.593750, 31.567305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334461, 37.419807, 31.737719>,  <33.028072, 37.132439, 32.013630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334461, 37.419807, 31.737719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364521, 37.021469, 31.717152>,  <32.382557, 36.782467, 31.704811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364521, 37.021469, 31.717152>,  <32.334461, 37.419807, 31.737719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364521, 37.021469, 31.717152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464249, -0.080573, 0.882033,
		-0.882512, -0.042410, -0.468375,
		0.075145, -0.995846, -0.051418,
		32.387066, 36.722713, 31.701727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698069, 37.094307, 31.755606>,  <32.334461, 37.419807, 31.737719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698069, 37.094307, 31.755606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.949062, 36.815540, 31.894503>,  <32.099659, 36.648281, 31.977840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.949062, 36.815540, 31.894503>,  <31.698069, 37.094307, 31.755606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949062, 36.815540, 31.894503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472749, 0.013361, 0.881096,
		-0.618687, -0.717031, -0.321081,
		0.627483, -0.696913, 0.347242,
		32.137306, 36.606468, 31.998674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236290, 36.545349, 32.054329>,  <31.698069, 37.094307, 31.755606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236290, 36.545349, 32.054329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601536, 36.529587, 32.216648>,  <31.820683, 36.520130, 32.314037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601536, 36.529587, 32.216648>,  <31.236290, 36.545349, 32.054329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601536, 36.529587, 32.216648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406899, -0.025595, 0.913115,
		-0.025595, -0.998895, -0.039405,
		-0.913115, 0.039405, -0.405794,
		31.875469, 36.517765, 32.338387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127558, 36.105362, 32.607777>,  <31.236290, 36.545349, 32.054329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127558, 36.105362, 32.607777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477026, 36.273571, 32.705643>,  <31.686707, 36.374496, 32.764362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477026, 36.273571, 32.705643>,  <31.127558, 36.105362, 32.607777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477026, 36.273571, 32.705643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194208, -0.159641, 0.967883,
		0.446077, -0.893126, -0.057804,
		0.873669, 0.420525, 0.244664,
		31.739126, 36.399727, 32.779041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588108, 35.568836, 33.009350>,  <31.127558, 36.105362, 32.607777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588108, 35.568836, 33.009350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674246, 35.947563, 33.104992>,  <31.725927, 36.174797, 33.162376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674246, 35.947563, 33.104992>,  <31.588108, 35.568836, 33.009350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674246, 35.947563, 33.104992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097673, -0.222739, 0.969973,
		0.971642, -0.232231, 0.044513,
		0.215343, 0.946814, 0.239105,
		31.738848, 36.231606, 33.176723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903913, 35.401749, 33.575352>,  <31.588108, 35.568836, 33.009350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903913, 35.401749, 33.575352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846788, 35.795658, 33.615013>,  <31.812513, 36.032001, 33.638809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846788, 35.795658, 33.615013>,  <31.903913, 35.401749, 33.575352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846788, 35.795658, 33.615013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134186, -0.118523, 0.983843,
		0.980611, 0.127200, 0.149069,
		-0.142813, 0.984770, 0.099157,
		31.803944, 36.091087, 33.644760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528675, 35.567505, 33.869148>,  <31.903913, 35.401749, 33.575352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528675, 35.567505, 33.869148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267803, 35.864727, 33.929176>,  <32.111279, 36.043060, 33.965195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267803, 35.864727, 33.929176>,  <32.528675, 35.567505, 33.869148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267803, 35.864727, 33.929176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230309, 0.005608, 0.973101,
		0.722230, 0.669202, -0.174791,
		-0.652182, 0.743059, 0.150073,
		32.072147, 36.087646, 33.974197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802128, 35.919899, 34.376423>,  <32.528675, 35.567505, 33.869148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802128, 35.919899, 34.376423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426334, 36.056927, 34.378075>,  <32.200859, 36.139145, 34.379066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426334, 36.056927, 34.378075>,  <32.802128, 35.919899, 34.376423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426334, 36.056927, 34.378075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062263, 0.158874, 0.985334,
		0.336891, 0.925961, -0.170589,
		-0.939483, 0.342571, 0.004130,
		32.144489, 36.159698, 34.379314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773243, 36.509796, 34.836555>,  <32.802128, 35.919899, 34.376423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773243, 36.509796, 34.836555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382008, 36.427387, 34.824623>,  <32.147266, 36.377941, 34.817463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382008, 36.427387, 34.824623>,  <32.773243, 36.509796, 34.836555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382008, 36.427387, 34.824623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047655, 0.082102, 0.995484,
		-0.202647, 0.975096, -0.090121,
		-0.978092, -0.206026, -0.029831,
		32.088581, 36.365578, 34.815674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441647, 37.038479, 35.256271>,  <32.773243, 36.509796, 34.836555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441647, 37.038479, 35.256271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164997, 36.749607, 35.251957>,  <31.999008, 36.576286, 35.249371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164997, 36.749607, 35.251957>,  <32.441647, 37.038479, 35.256271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164997, 36.749607, 35.251957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142001, 0.121324, 0.982403,
		-0.708161, 0.680985, -0.186461,
		-0.691624, -0.722177, -0.010784,
		31.957510, 36.532955, 35.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126076, 37.186005, 35.775246>,  <32.441647, 37.038479, 35.256271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126076, 37.186005, 35.775246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944933, 36.838699, 35.694214>,  <31.836248, 36.630318, 35.645596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944933, 36.838699, 35.694214>,  <32.126076, 37.186005, 35.775246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944933, 36.838699, 35.694214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191117, -0.127403, 0.973264,
		-0.870859, 0.479465, -0.108245,
		-0.452856, -0.868263, -0.202584,
		31.809076, 36.578220, 35.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594692, 37.820076, 35.688061>,  <32.126076, 37.186005, 35.775246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594692, 37.820076, 35.688061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881550, 38.015591, 35.886776>,  <33.053665, 38.132900, 36.006004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881550, 38.015591, 35.886776>,  <32.594692, 37.820076, 35.688061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881550, 38.015591, 35.886776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257755, 0.476265, -0.840675,
		-0.647512, 0.730932, 0.215562,
		0.717140, 0.488784, 0.496789,
		33.096691, 38.162228, 36.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465977, 38.598358, 35.704857>,  <32.594692, 37.820076, 35.688061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465977, 38.598358, 35.704857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854164, 38.506824, 35.735401>,  <33.087074, 38.451904, 35.753727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854164, 38.506824, 35.735401>,  <32.465977, 38.598358, 35.704857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854164, 38.506824, 35.735401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185545, 0.505723, -0.842507,
		0.154178, 0.831792, 0.533246,
		0.970465, -0.228837, 0.076363,
		33.145302, 38.438175, 35.758308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949219, 39.264297, 35.792435>,  <32.465977, 38.598358, 35.704857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949219, 39.264297, 35.792435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192276, 38.993267, 35.626705>,  <33.338112, 38.830650, 35.527267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192276, 38.993267, 35.626705>,  <32.949219, 39.264297, 35.792435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192276, 38.993267, 35.626705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199148, 0.635002, -0.746400,
		0.768836, 0.371034, 0.520793,
		0.607644, -0.677574, -0.414321,
		33.374569, 38.789993, 35.502407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543564, 39.638069, 35.624477>,  <32.949219, 39.264297, 35.792435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543564, 39.638069, 35.624477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615200, 39.319530, 35.393391>,  <33.658180, 39.128407, 35.254738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615200, 39.319530, 35.393391>,  <33.543564, 39.638069, 35.624477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615200, 39.319530, 35.393391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323075, 0.602250, -0.730012,
		0.929274, -0.055911, 0.365135,
		0.179086, -0.796347, -0.577719,
		33.668926, 39.080627, 35.220074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197838, 39.787598, 35.331062>,  <33.543564, 39.638069, 35.624477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197838, 39.787598, 35.331062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038902, 39.504292, 35.097656>,  <33.943539, 39.334309, 34.957615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038902, 39.504292, 35.097656>,  <34.197838, 39.787598, 35.331062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038902, 39.504292, 35.097656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374001, 0.455671, -0.807767,
		0.838000, -0.539192, 0.083834,
		-0.397341, -0.708262, -0.583510,
		33.919701, 39.291813, 34.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720222, 39.609901, 34.833336>,  <34.197838, 39.787598, 35.331062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720222, 39.609901, 34.833336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392509, 39.467781, 34.653316>,  <34.195881, 39.382511, 34.545303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392509, 39.467781, 34.653316>,  <34.720222, 39.609901, 34.833336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392509, 39.467781, 34.653316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318679, 0.370355, -0.872514,
		0.476680, -0.858254, -0.190198,
		-0.819279, -0.355298, -0.450049,
		34.146725, 39.361191, 34.518303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915161, 39.223129, 34.323910>,  <34.720222, 39.609901, 34.833336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915161, 39.223129, 34.323910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540836, 39.311584, 34.214115>,  <34.316242, 39.364658, 34.148239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540836, 39.311584, 34.214115>,  <34.915161, 39.223129, 34.323910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540836, 39.311584, 34.214115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312458, 0.159985, -0.936363,
		-0.163156, -0.962029, -0.218815,
		-0.935815, 0.221143, -0.274491,
		34.260090, 39.377926, 34.131767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763710, 38.839615, 33.795177>,  <34.915161, 39.223129, 34.323910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763710, 38.839615, 33.795177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499218, 39.138470, 33.768181>,  <34.340523, 39.317783, 33.751984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499218, 39.138470, 33.768181>,  <34.763710, 38.839615, 33.795177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499218, 39.138470, 33.768181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290838, 0.172382, -0.941115,
		-0.691512, -0.641922, -0.331281,
		-0.661230, 0.747141, -0.067491,
		34.300850, 39.362614, 33.747932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480774, 38.796967, 33.094349>,  <34.763710, 38.839615, 33.795177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480774, 38.796967, 33.094349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370079, 39.171974, 33.178707>,  <34.303661, 39.396980, 33.229324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370079, 39.171974, 33.178707>,  <34.480774, 38.796967, 33.094349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370079, 39.171974, 33.178707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311178, 0.295073, -0.903383,
		-0.909167, -0.184372, -0.373392,
		-0.276736, 0.937517, 0.210898,
		34.287060, 39.453228, 33.241978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967705, 38.880009, 32.628548>,  <34.480774, 38.796967, 33.094349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967705, 38.880009, 32.628548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122833, 39.228767, 32.748142>,  <34.215912, 39.438023, 32.819901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122833, 39.228767, 32.748142>,  <33.967705, 38.880009, 32.628548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122833, 39.228767, 32.748142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087602, 0.288043, -0.953602,
		-0.917562, 0.396020, 0.035330,
		0.387822, 0.871894, 0.298989,
		34.239182, 39.490337, 32.837837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685249, 39.386742, 32.235756>,  <33.967705, 38.880009, 32.628548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685249, 39.386742, 32.235756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997807, 39.591564, 32.378429>,  <34.185341, 39.714458, 32.464031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997807, 39.591564, 32.378429>,  <33.685249, 39.386742, 32.235756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997807, 39.591564, 32.378429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107989, 0.451991, -0.885461,
		-0.614623, 0.730412, 0.297887,
		0.781394, 0.512057, 0.356681,
		34.232224, 39.745182, 32.485435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648937, 40.131641, 31.945848>,  <33.685249, 39.386742, 32.235756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648937, 40.131641, 31.945848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024601, 40.052433, 32.058113>,  <34.250000, 40.004906, 32.125473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024601, 40.052433, 32.058113>,  <33.648937, 40.131641, 31.945848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024601, 40.052433, 32.058113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343456, 0.529872, -0.775418,
		0.004837, 0.824634, 0.565646,
		0.939156, -0.198025, 0.280662,
		34.306347, 39.993027, 32.142311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985405, 40.836926, 31.944489>,  <33.648937, 40.131641, 31.945848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985405, 40.836926, 31.944489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256207, 40.547855, 31.888767>,  <34.418690, 40.374413, 31.855335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256207, 40.547855, 31.888767>,  <33.985405, 40.836926, 31.944489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256207, 40.547855, 31.888767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374176, 0.500960, -0.780405,
		0.633763, 0.476215, 0.609560,
		0.677006, -0.722674, -0.139302,
		34.459309, 40.331055, 31.846977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595695, 41.284557, 31.678547>,  <33.985405, 40.836926, 31.944489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595695, 41.284557, 31.678547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703022, 40.908966, 31.592453>,  <34.767418, 40.683613, 31.540796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703022, 40.908966, 31.592453>,  <34.595695, 41.284557, 31.678547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703022, 40.908966, 31.592453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483223, 0.324477, -0.813148,
		0.833367, 0.114175, 0.540798,
		0.268318, -0.938977, -0.215237,
		34.783516, 40.627274, 31.527882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282524, 41.360291, 31.480694>,  <34.595695, 41.284557, 31.678547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282524, 41.360291, 31.480694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155277, 41.020008, 31.313311>,  <35.078930, 40.815838, 31.212881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155277, 41.020008, 31.313311>,  <35.282524, 41.360291, 31.480694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155277, 41.020008, 31.313311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536975, 0.202081, -0.819037,
		0.781318, -0.485253, 0.392519,
		-0.318119, -0.850701, -0.418459,
		35.059841, 40.764797, 31.187773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828701, 41.100895, 31.093451>,  <35.282524, 41.360291, 31.480694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828701, 41.100895, 31.093451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519695, 40.891285, 30.949995>,  <35.334290, 40.765518, 30.863922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519695, 40.891285, 30.949995>,  <35.828701, 41.100895, 31.093451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519695, 40.891285, 30.949995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249339, 0.269097, -0.930278,
		0.583994, -0.808077, -0.077223,
		-0.772516, -0.524022, -0.358636,
		35.287941, 40.734077, 30.842403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092037, 40.612801, 30.616795>,  <35.828701, 41.100895, 31.093451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092037, 40.612801, 30.616795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707195, 40.640553, 30.511309>,  <35.476292, 40.657204, 30.448017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707195, 40.640553, 30.511309>,  <36.092037, 40.612801, 30.616795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707195, 40.640553, 30.511309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268946, 0.401116, -0.875656,
		0.045022, -0.913396, -0.404575,
		-0.962102, 0.069385, -0.263714,
		35.418564, 40.661369, 30.432194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032902, 40.390327, 29.866009>,  <36.092037, 40.612801, 30.616795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032902, 40.390327, 29.866009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722809, 40.626160, 29.956707>,  <35.536755, 40.767658, 30.011126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722809, 40.626160, 29.956707>,  <36.032902, 40.390327, 29.866009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722809, 40.626160, 29.956707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265163, 0.629528, -0.730331,
		-0.573333, -0.506049, -0.644363,
		-0.775228, 0.589583, 0.226744,
		35.490242, 40.803036, 30.024731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628551, 40.330666, 29.238674>,  <36.032902, 40.390327, 29.866009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628551, 40.330666, 29.238674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537014, 40.654442, 29.454987>,  <35.482090, 40.848705, 29.584774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537014, 40.654442, 29.454987>,  <35.628551, 40.330666, 29.238674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537014, 40.654442, 29.454987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175319, 0.580708, -0.795011,
		-0.957545, -0.087127, -0.274802,
		-0.228847, 0.809437, 0.540779,
		35.468361, 40.897274, 29.617220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215332, 40.787483, 28.845552>,  <35.628551, 40.330666, 29.238674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215332, 40.787483, 28.845552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377396, 41.026798, 29.122072>,  <35.474632, 41.170387, 29.287983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377396, 41.026798, 29.122072>,  <35.215332, 40.787483, 28.845552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377396, 41.026798, 29.122072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333141, 0.607539, -0.721050,
		-0.851389, 0.522440, 0.046834,
		0.405159, 0.598292, 0.691298,
		35.498943, 41.206287, 29.329462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236385, 41.454742, 28.482470>,  <35.215332, 40.787483, 28.845552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236385, 41.454742, 28.482470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476826, 41.504425, 28.798254>,  <35.621090, 41.534233, 28.987724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476826, 41.504425, 28.798254>,  <35.236385, 41.454742, 28.482470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476826, 41.504425, 28.798254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576707, 0.616454, -0.536091,
		-0.553252, 0.777534, 0.298922,
		0.601100, 0.124203, 0.789463,
		35.657154, 41.541687, 29.035093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407543, 42.157013, 28.473787>,  <35.236385, 41.454742, 28.482470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407543, 42.157013, 28.473787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699577, 42.029106, 28.715357>,  <35.874798, 41.952362, 28.860298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699577, 42.029106, 28.715357>,  <35.407543, 42.157013, 28.473787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699577, 42.029106, 28.715357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653978, 0.583294, -0.481748,
		-0.198219, 0.746670, 0.634975,
		0.730084, -0.319768, 0.603926,
		35.918602, 41.933174, 28.896534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801094, 42.762318, 28.646196>,  <35.407543, 42.157013, 28.473787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801094, 42.762318, 28.646196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043427, 42.452339, 28.718220>,  <36.188828, 42.266354, 28.761435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043427, 42.452339, 28.718220>,  <35.801094, 42.762318, 28.646196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043427, 42.452339, 28.718220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752351, 0.484446, -0.446408,
		0.258713, 0.405918, 0.876526,
		0.605835, -0.774947, 0.180060,
		36.225178, 42.219856, 28.772238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413593, 42.951523, 28.914194>,  <35.801094, 42.762318, 28.646196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413593, 42.951523, 28.914194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498634, 42.609596, 28.724844>,  <36.549660, 42.404442, 28.611233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498634, 42.609596, 28.724844>,  <36.413593, 42.951523, 28.914194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498634, 42.609596, 28.724844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741206, 0.456762, -0.491917,
		0.636720, -0.246286, 0.730706,
		0.212606, -0.854817, -0.473377,
		36.562416, 42.353149, 28.582830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178997, 42.837433, 28.913996>,  <36.413593, 42.951523, 28.914194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178997, 42.837433, 28.913996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050316, 42.583057, 28.633400>,  <36.973106, 42.430431, 28.465042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050316, 42.583057, 28.633400>,  <37.178997, 42.837433, 28.913996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050316, 42.583057, 28.633400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796286, 0.219133, -0.563834,
		0.512283, -0.739975, 0.435893,
		-0.321705, -0.635938, -0.701490,
		36.953804, 42.392277, 28.422953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811195, 42.463097, 28.655939>,  <37.178997, 42.837433, 28.913996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811195, 42.463097, 28.655939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528477, 42.454308, 28.373110>,  <37.358845, 42.449036, 28.203413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528477, 42.454308, 28.373110>,  <37.811195, 42.463097, 28.655939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528477, 42.454308, 28.373110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663768, 0.325048, -0.673614,
		0.244632, -0.945442, -0.215160,
		-0.706801, -0.021971, -0.707071,
		37.316437, 42.447716, 28.160988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151375, 42.440891, 28.074564>,  <37.811195, 42.463097, 28.655939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151375, 42.440891, 28.074564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806828, 42.516087, 27.885799>,  <37.600098, 42.561203, 27.772541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806828, 42.516087, 27.885799>,  <38.151375, 42.440891, 28.074564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806828, 42.516087, 27.885799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507218, 0.267470, -0.819262,
		-0.027793, -0.945050, -0.325744,
		-0.861370, 0.187993, -0.471912,
		37.548416, 42.572483, 27.744226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374729, 41.802353, 27.924379>,  <38.151375, 42.440891, 28.074564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374729, 41.802353, 27.924379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.759888, 41.710346, 27.980844>,  <38.990982, 41.655144, 28.014723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.759888, 41.710346, 27.980844>,  <38.374729, 41.802353, 27.924379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759888, 41.710346, 27.980844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207015, -0.293942, 0.933136,
		-0.173138, -0.927735, -0.330651,
		0.962896, -0.230012, 0.141163,
		39.048756, 41.641342, 28.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338009, 41.228329, 28.272156>,  <38.374729, 41.802353, 27.924379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338009, 41.228329, 28.272156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711128, 41.353672, 28.343369>,  <38.935001, 41.428879, 28.386097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711128, 41.353672, 28.343369>,  <38.338009, 41.228329, 28.272156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711128, 41.353672, 28.343369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136719, -0.149393, 0.979280,
		0.333459, -0.937812, -0.096512,
		0.932799, 0.313355, 0.178033,
		38.990967, 41.447678, 28.396778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664047, 40.725956, 28.639788>,  <38.338009, 41.228329, 28.272156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664047, 40.725956, 28.639788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863651, 41.060909, 28.729034>,  <38.983414, 41.261883, 28.782581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863651, 41.060909, 28.729034>,  <38.664047, 40.725956, 28.639788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863651, 41.060909, 28.729034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078491, -0.212729, 0.973953,
		0.863036, -0.503523, -0.040427,
		0.499007, 0.837384, 0.223115,
		39.013355, 41.312126, 28.795969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101158, 40.447151, 29.156887>,  <38.664047, 40.725956, 28.639788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101158, 40.447151, 29.156887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133987, 40.844685, 29.186691>,  <39.153683, 41.083206, 29.204575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133987, 40.844685, 29.186691>,  <39.101158, 40.447151, 29.156887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133987, 40.844685, 29.186691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140400, -0.062489, 0.988121,
		0.986688, -0.091555, 0.134406,
		0.082069, 0.993837, 0.074511,
		39.158607, 41.142838, 29.209045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415375, 40.495155, 29.837833>,  <39.101158, 40.447151, 29.156887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415375, 40.495155, 29.837833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216709, 40.830715, 29.748768>,  <39.097511, 41.032051, 29.695330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216709, 40.830715, 29.748768>,  <39.415375, 40.495155, 29.837833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216709, 40.830715, 29.748768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432407, -0.016719, 0.901524,
		0.752562, 0.544034, 0.371048,
		-0.496663, 0.838896, -0.222662,
		39.067711, 41.082386, 29.681969>
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
