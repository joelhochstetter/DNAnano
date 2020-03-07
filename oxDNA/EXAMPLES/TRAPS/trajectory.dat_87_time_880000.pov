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
	<35.680058, 53.101341, 50.307484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579063, 52.775192, 50.099091>,  <35.518467, 52.579502, 49.974056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579063, 52.775192, 50.099091>,  <35.680058, 53.101341, 50.307484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579063, 52.775192, 50.099091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490883, 0.356055, -0.795147,
		0.833838, -0.456504, 0.310353,
		-0.252485, -0.815370, -0.520982,
		35.503319, 52.530582, 49.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250690, 52.754074, 50.416119>,  <35.680058, 53.101341, 50.307484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250690, 52.754074, 50.416119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056683, 52.698723, 50.070724>,  <35.940277, 52.665512, 49.863487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056683, 52.698723, 50.070724>,  <36.250690, 52.754074, 50.416119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056683, 52.698723, 50.070724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723226, 0.491630, -0.485020,
		0.491630, -0.859740, -0.138375,
		0.485020, 0.138375, 0.863486,
		35.911175, 52.657211, 49.811680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822121, 53.199642, 50.196880>,  <36.250690, 52.754074, 50.416119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822121, 53.199642, 50.196880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140072, 53.030079, 50.370533>,  <37.330845, 52.928341, 50.474724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140072, 53.030079, 50.370533>,  <36.822121, 53.199642, 50.196880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140072, 53.030079, 50.370533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604824, 0.496376, -0.622735,
		0.048488, 0.757573, 0.650947,
		0.794882, -0.423904, 0.434130,
		37.378536, 52.902908, 50.500771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308418, 53.714813, 50.367813>,  <36.822121, 53.199642, 50.196880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308418, 53.714813, 50.367813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520344, 53.379272, 50.317818>,  <37.647499, 53.177948, 50.287819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520344, 53.379272, 50.317818>,  <37.308418, 53.714813, 50.367813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520344, 53.379272, 50.317818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662257, 0.501260, -0.556914,
		0.529823, 0.212284, 0.821111,
		0.529814, -0.838853, -0.124992,
		37.679287, 53.127617, 50.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062828, 53.944866, 50.381214>,  <37.308418, 53.714813, 50.367813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062828, 53.944866, 50.381214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973698, 53.602180, 50.195141>,  <37.920219, 53.396568, 50.083496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973698, 53.602180, 50.195141>,  <38.062828, 53.944866, 50.381214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973698, 53.602180, 50.195141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712270, 0.182729, -0.677703,
		0.665598, -0.482347, 0.569492,
		-0.222825, -0.856710, -0.465186,
		37.906849, 53.345169, 50.055584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776989, 53.474346, 50.201893>,  <38.062828, 53.944866, 50.381214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776989, 53.474346, 50.201893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472328, 53.435101, 49.945686>,  <38.289532, 53.411552, 49.791962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472328, 53.435101, 49.945686>,  <38.776989, 53.474346, 50.201893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472328, 53.435101, 49.945686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578399, 0.342690, -0.740283,
		0.292131, -0.934311, -0.204262,
		-0.761653, -0.098115, -0.640515,
		38.243832, 53.405666, 49.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115276, 54.098263, 50.533833>,  <38.776989, 53.474346, 50.201893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115276, 54.098263, 50.533833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448158, 54.168774, 50.744114>,  <39.647888, 54.211079, 50.870281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448158, 54.168774, 50.744114>,  <39.115276, 54.098263, 50.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448158, 54.168774, 50.744114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203055, -0.979143, 0.006876,
		0.515951, 0.101025, -0.850640,
		0.832203, 0.176275, 0.525704,
		39.697819, 54.221657, 50.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773140, 53.757874, 50.274101>,  <39.115276, 54.098263, 50.533833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773140, 53.757874, 50.274101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810417, 53.746941, 50.672211>,  <39.832783, 53.740383, 50.911076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810417, 53.746941, 50.672211>,  <39.773140, 53.757874, 50.274101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810417, 53.746941, 50.672211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220044, -0.974340, -0.047357,
		0.971028, 0.223417, -0.084786,
		0.093191, -0.027329, 0.995273,
		39.838375, 53.738743, 50.970791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460564, 53.115288, 49.751675>,  <39.773140, 53.757874, 50.274101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460564, 53.115288, 49.751675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477001, 52.885761, 49.424496>,  <39.486862, 52.748047, 49.228188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477001, 52.885761, 49.424496>,  <39.460564, 53.115288, 49.751675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477001, 52.885761, 49.424496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985345, -0.112371, 0.128332,
		-0.165553, -0.811237, 0.560791,
		0.041091, -0.573818, -0.817952,
		39.489330, 52.713615, 49.179111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931168, 52.458466, 49.838127>,  <39.460564, 53.115288, 49.751675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931168, 52.458466, 49.838127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893570, 52.513748, 49.443756>,  <39.871010, 52.546917, 49.207130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893570, 52.513748, 49.443756>,  <39.931168, 52.458466, 49.838127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893570, 52.513748, 49.443756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954489, -0.269040, -0.128715,
		-0.283045, -0.953161, -0.106630,
		-0.093998, 0.138209, -0.985933,
		39.865372, 52.555210, 49.147976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625027, 51.991837, 49.840061>,  <39.931168, 52.458466, 49.838127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625027, 51.991837, 49.840061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750702, 51.998245, 49.460369>,  <40.826107, 52.002090, 49.232555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750702, 51.998245, 49.460369>,  <40.625027, 51.991837, 49.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750702, 51.998245, 49.460369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867496, 0.401333, 0.293910,
		0.385666, -0.915792, 0.112193,
		0.314187, 0.016024, -0.949226,
		40.844959, 52.003052, 49.175602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262554, 51.525436, 49.747162>,  <40.625027, 51.991837, 49.840061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262554, 51.525436, 49.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209778, 51.848576, 49.517387>,  <41.178112, 52.042458, 49.379520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209778, 51.848576, 49.517387>,  <41.262554, 51.525436, 49.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209778, 51.848576, 49.517387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910918, 0.327353, 0.251134,
		0.390921, -0.490130, -0.779072,
		-0.131943, 0.807844, -0.574438,
		41.170197, 52.090927, 49.345055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908779, 51.554028, 49.321815>,  <41.262554, 51.525436, 49.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908779, 51.554028, 49.321815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714523, 51.902939, 49.344730>,  <41.597969, 52.112286, 49.358479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714523, 51.902939, 49.344730>,  <41.908779, 51.554028, 49.321815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714523, 51.902939, 49.344730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868313, 0.488919, -0.083613,
		-0.100945, 0.009141, -0.994850,
		-0.485637, 0.872281, 0.057291,
		41.568832, 52.164623, 49.361919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976158, 51.880974, 48.622234>,  <41.908779, 51.554028, 49.321815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976158, 51.880974, 48.622234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978371, 52.091267, 48.962486>,  <41.979698, 52.217442, 49.166637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978371, 52.091267, 48.962486>,  <41.976158, 51.880974, 48.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978371, 52.091267, 48.962486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966233, 0.216326, -0.139986,
		-0.257609, 0.822683, -0.506784,
		0.005533, 0.525733, 0.850632,
		41.980030, 52.248985, 49.217674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165115, 52.517139, 48.422455>,  <41.976158, 51.880974, 48.622234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165115, 52.517139, 48.422455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294136, 52.412457, 48.786316>,  <42.371548, 52.349648, 49.004631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294136, 52.412457, 48.786316>,  <42.165115, 52.517139, 48.422455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294136, 52.412457, 48.786316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942104, 0.181818, -0.281747,
		-0.091655, 0.947866, 0.305205,
		0.322550, -0.261712, 0.909653,
		42.390900, 52.333942, 49.059212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759529, 52.895458, 48.513515>,  <42.165115, 52.517139, 48.422455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759529, 52.895458, 48.513515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802502, 52.598236, 48.777733>,  <42.828285, 52.419903, 48.936264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802502, 52.598236, 48.777733>,  <42.759529, 52.895458, 48.513515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802502, 52.598236, 48.777733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989231, 0.146316, 0.003705,
		-0.099402, 0.653035, 0.750776,
		0.107431, -0.743059, 0.660546,
		42.834732, 52.375317, 48.975895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109219, 53.109531, 49.187695>,  <42.759529, 52.895458, 48.513515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109219, 53.109531, 49.187695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176491, 52.722477, 49.112442>,  <43.216854, 52.490246, 49.067291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176491, 52.722477, 49.112442>,  <43.109219, 53.109531, 49.187695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176491, 52.722477, 49.112442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981840, 0.147433, 0.119393,
		-0.087792, -0.204796, 0.974860,
		0.168177, -0.967637, -0.188133,
		43.226944, 52.432186, 49.056004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554848, 52.771107, 49.736954>,  <43.109219, 53.109531, 49.187695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554848, 52.771107, 49.736954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598522, 52.540657, 49.412941>,  <43.624729, 52.402386, 49.218533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598522, 52.540657, 49.412941>,  <43.554848, 52.771107, 49.736954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598522, 52.540657, 49.412941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974350, -0.099282, 0.201954,
		-0.196773, -0.811307, 0.550510,
		0.109191, -0.576129, -0.810033,
		43.631279, 52.367817, 49.169930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706284, 51.963966, 49.885948>,  <43.554848, 52.771107, 49.736954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706284, 51.963966, 49.885948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850815, 52.049011, 49.522797>,  <43.937534, 52.100037, 49.304905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850815, 52.049011, 49.522797>,  <43.706284, 51.963966, 49.885948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850815, 52.049011, 49.522797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928381, -0.172750, 0.329039,
		-0.086879, -0.961746, -0.259803,
		0.361333, 0.212609, -0.907875,
		43.959213, 52.112793, 49.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049599, 51.435040, 49.527397>,  <43.706284, 51.963966, 49.885948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049599, 51.435040, 49.527397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209137, 51.791885, 49.442490>,  <44.304859, 52.005993, 49.391544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209137, 51.791885, 49.442490>,  <44.049599, 51.435040, 49.527397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209137, 51.791885, 49.442490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915154, -0.372473, 0.154133,
		0.058439, -0.255736, -0.964979,
		0.398846, 0.892112, -0.212271,
		44.328793, 52.059521, 49.378807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621613, 51.456421, 49.002911>,  <44.049599, 51.435040, 49.527397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621613, 51.456421, 49.002911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704445, 51.785690, 49.214386>,  <44.754143, 51.983250, 49.341270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704445, 51.785690, 49.214386>,  <44.621613, 51.456421, 49.002911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704445, 51.785690, 49.214386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907894, -0.363024, 0.209621,
		0.364480, 0.436584, -0.822526,
		0.207080, 0.823169, 0.528687,
		44.766567, 52.032642, 49.372993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231110, 51.734371, 48.709023>,  <44.621613, 51.456421, 49.002911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231110, 51.734371, 48.709023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194183, 51.826950, 49.096405>,  <45.172028, 51.882496, 49.328835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194183, 51.826950, 49.096405>,  <45.231110, 51.734371, 48.709023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194183, 51.826950, 49.096405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799983, -0.561873, 0.210536,
		0.592878, 0.794186, -0.133281,
		-0.092317, 0.231445, 0.968458,
		45.166489, 51.896385, 49.386944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856007, 51.905952, 49.059311>,  <45.231110, 51.734371, 48.709023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856007, 51.905952, 49.059311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624714, 51.814457, 49.372574>,  <45.485939, 51.759560, 49.560532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624714, 51.814457, 49.372574>,  <45.856007, 51.905952, 49.059311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624714, 51.814457, 49.372574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786476, -0.411626, 0.460456,
		0.217044, 0.882182, 0.417908,
		-0.578227, -0.228736, 0.783156,
		45.451244, 51.745838, 49.607521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924656, 52.198128, 49.818008>,  <45.856007, 51.905952, 49.059311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924656, 52.198128, 49.818008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845535, 51.808605, 49.773170>,  <45.798061, 51.574890, 49.746269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845535, 51.808605, 49.773170>,  <45.924656, 52.198128, 49.818008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845535, 51.808605, 49.773170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870041, -0.227093, 0.437558,
		-0.451555, -0.010975, 0.892176,
		-0.197805, -0.973811, -0.112094,
		45.786194, 51.516460, 49.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484303, 52.052650, 50.215092>,  <45.924656, 52.198128, 49.818008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484303, 52.052650, 50.215092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820084, 51.848621, 50.290085>,  <47.021553, 51.726204, 50.335083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820084, 51.848621, 50.290085>,  <46.484303, 52.052650, 50.215092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.820084, 51.848621, 50.290085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116106, -0.505372, -0.855055,
		0.530886, 0.696009, -0.483458,
		0.839452, -0.510069, 0.187485,
		47.071918, 51.695602, 50.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958652, 52.203991, 49.604935>,  <46.484303, 52.052650, 50.215092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958652, 52.203991, 49.604935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179649, 52.077423, 49.296486>,  <47.312248, 52.001480, 49.111416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179649, 52.077423, 49.296486>,  <46.958652, 52.203991, 49.604935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179649, 52.077423, 49.296486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806504, -0.030668, 0.590433,
		-0.210475, -0.948123, 0.238252,
		0.552496, -0.316423, -0.771120,
		47.345398, 51.982498, 49.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392387, 51.626099, 49.790386>,  <46.958652, 52.203991, 49.604935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392387, 51.626099, 49.790386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567265, 51.843719, 49.503929>,  <47.672192, 51.974293, 49.332054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567265, 51.843719, 49.503929>,  <47.392387, 51.626099, 49.790386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567265, 51.843719, 49.503929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866572, -0.041769, 0.497300,
		0.240647, -0.838008, -0.489726,
		0.437197, 0.544057, -0.716143,
		47.698425, 52.006935, 49.289085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969463, 51.594318, 50.220608>,  <47.392387, 51.626099, 49.790386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969463, 51.594318, 50.220608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.059063, 51.732906, 49.856239>,  <48.112823, 51.816059, 49.637619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.059063, 51.732906, 49.856239>,  <47.969463, 51.594318, 50.220608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.059063, 51.732906, 49.856239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965235, -0.208062, 0.158214,
		-0.134712, -0.914694, -0.381034,
		0.223996, 0.346474, -0.910923,
		48.126263, 51.836849, 49.582962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.375439, 51.115154, 49.755920>,  <47.969463, 51.594318, 50.220608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.375439, 51.115154, 49.755920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429737, 51.509670, 49.718395>,  <48.462318, 51.746380, 49.695881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429737, 51.509670, 49.718395>,  <48.375439, 51.115154, 49.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.429737, 51.509670, 49.718395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979444, -0.119337, 0.162630,
		0.149205, -0.113963, -0.982217,
		0.135749, 0.986292, -0.093814,
		48.470463, 51.805557, 49.690250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.754513, 51.270668, 49.247051>,  <48.375439, 51.115154, 49.755920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.754513, 51.270668, 49.247051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.825611, 51.565228, 49.508163>,  <48.868271, 51.741962, 49.664829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.825611, 51.565228, 49.508163>,  <48.754513, 51.270668, 49.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.825611, 51.565228, 49.508163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956289, -0.285778, 0.061992,
		0.232201, 0.613224, -0.755009,
		0.177750, 0.736401, 0.652777,
		48.878937, 51.786148, 49.703995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.436119, 51.748379, 49.098103>,  <48.754513, 51.270668, 49.247051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.436119, 51.748379, 49.098103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.372669, 51.686485, 49.488159>,  <49.334599, 51.649349, 49.722191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.372669, 51.686485, 49.488159>,  <49.436119, 51.748379, 49.098103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.372669, 51.686485, 49.488159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977592, -0.163043, 0.133156,
		0.138387, 0.974410, 0.177126,
		-0.158628, -0.154730, 0.975139,
		49.325081, 51.640068, 49.780701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.769192, 52.212864, 49.535316>,  <49.436119, 51.748379, 49.098103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.769192, 52.212864, 49.535316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.751331, 51.850742, 49.704285>,  <49.740616, 51.633469, 49.805664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.751331, 51.850742, 49.704285>,  <49.769192, 52.212864, 49.535316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.751331, 51.850742, 49.704285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980695, 0.040862, 0.191227,
		-0.190379, 0.422799, 0.886000,
		-0.044646, -0.905302, 0.422416,
		49.737938, 51.579151, 49.831009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.843792, 52.130577, 50.303570>,  <49.769192, 52.212864, 49.535316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.843792, 52.130577, 50.303570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995441, 51.813538, 50.112549>,  <50.086433, 51.623314, 49.997936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995441, 51.813538, 50.112549>,  <49.843792, 52.130577, 50.303570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.995441, 51.813538, 50.112549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917857, 0.256596, 0.302813,
		-0.117470, -0.553129, 0.824772,
		0.379128, -0.792595, -0.477551,
		50.109180, 51.575760, 49.969284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.464169, 52.050709, 50.683094>,  <49.843792, 52.130577, 50.303570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.464169, 52.050709, 50.683094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.542465, 51.870049, 50.334911>,  <50.589443, 51.761654, 50.125999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.542465, 51.870049, 50.334911>,  <50.464169, 52.050709, 50.683094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.542465, 51.870049, 50.334911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958225, 0.276849, 0.071827,
		0.208545, -0.848156, 0.486971,
		0.195738, -0.451649, -0.870460,
		50.601185, 51.734554, 50.073772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.137516, 51.845329, 50.859459>,  <50.464169, 52.050709, 50.683094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.137516, 51.845329, 50.859459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.125263, 51.860153, 50.459923>,  <51.117912, 51.869045, 50.220200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.125263, 51.860153, 50.459923>,  <51.137516, 51.845329, 50.859459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.125263, 51.860153, 50.459923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971013, 0.238106, -0.020947,
		0.237054, -0.970532, -0.043276,
		-0.030634, 0.037056, -0.998843,
		51.116074, 51.871269, 50.160271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.570133, 51.401981, 50.513775>,  <51.137516, 51.845329, 50.859459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.570133, 51.401981, 50.513775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.513554, 51.758308, 50.341057>,  <51.479607, 51.972103, 50.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.513554, 51.758308, 50.341057>,  <51.570133, 51.401981, 50.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.513554, 51.758308, 50.341057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988588, 0.149945, -0.014497,
		0.051831, -0.428914, -0.901857,
		-0.141447, 0.890814, -0.431791,
		51.471119, 52.025551, 50.211521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.851761, 51.463058, 49.766033>,  <51.570133, 51.401981, 50.513775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.851761, 51.463058, 49.766033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867100, 51.833923, 49.915108>,  <51.876305, 52.056442, 50.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867100, 51.833923, 49.915108>,  <51.851761, 51.463058, 49.766033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.867100, 51.833923, 49.915108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998292, -0.019098, -0.055206,
		-0.044068, 0.374168, -0.926313,
		0.038347, 0.927164, 0.372687,
		51.878605, 52.112072, 50.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.377728, 51.876995, 49.407135>,  <51.851761, 51.463058, 49.766033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.377728, 51.876995, 49.407135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321667, 52.063816, 49.756355>,  <52.288033, 52.175911, 49.965889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321667, 52.063816, 49.756355>,  <52.377728, 51.876995, 49.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.321667, 52.063816, 49.756355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987797, 0.126449, 0.090922,
		-0.067931, 0.875140, -0.479078,
		-0.140148, 0.467055, 0.873051,
		52.279621, 52.203934, 50.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.485565, 52.574619, 49.447002>,  <52.377728, 51.876995, 49.407135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.485565, 52.574619, 49.447002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.596066, 52.365761, 49.769753>,  <52.662365, 52.240444, 49.963402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.596066, 52.365761, 49.769753>,  <52.485565, 52.574619, 49.447002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.596066, 52.365761, 49.769753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947542, 0.288418, -0.137768,
		-0.160783, 0.802607, 0.574431,
		0.276250, -0.522147, 0.806876,
		52.678940, 52.209118, 50.011814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.807056, 53.012432, 49.892139>,  <52.485565, 52.574619, 49.447002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.807056, 53.012432, 49.892139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.950191, 52.643311, 49.949242>,  <53.036072, 52.421837, 49.983505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.950191, 52.643311, 49.949242>,  <52.807056, 53.012432, 49.892139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.950191, 52.643311, 49.949242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910881, 0.311303, -0.270899,
		0.205547, 0.226972, 0.951963,
		0.357835, -0.922808, 0.142757,
		53.057541, 52.366467, 49.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.485992, 52.966454, 50.371246>,  <52.807056, 53.012432, 49.892139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.485992, 52.966454, 50.371246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.484753, 52.657219, 50.117531>,  <53.484009, 52.471676, 49.965302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.484753, 52.657219, 50.117531>,  <53.485992, 52.966454, 50.371246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.484753, 52.657219, 50.117531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997754, 0.040053, -0.053698,
		0.066919, -0.633031, 0.771229,
		-0.003102, -0.773090, -0.634289,
		53.483822, 52.425293, 49.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.692764, 52.309589, 50.690907>,  <53.485992, 52.966454, 50.371246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.692764, 52.309589, 50.690907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.764774, 52.375370, 50.302979>,  <53.807980, 52.414841, 50.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.764774, 52.375370, 50.302979>,  <53.692764, 52.309589, 50.690907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.764774, 52.375370, 50.302979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972785, 0.116442, 0.200326,
		0.145872, -0.979488, -0.139015,
		0.180030, 0.164454, -0.969817,
		53.818783, 52.424706, 50.012035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.207600, 51.864700, 50.581619>,  <53.692764, 52.309589, 50.690907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.207600, 51.864700, 50.581619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.209000, 52.160591, 50.312462>,  <54.209839, 52.338127, 50.150967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.209000, 52.160591, 50.312462>,  <54.207600, 51.864700, 50.581619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.209000, 52.160591, 50.312462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940947, 0.225368, 0.252640,
		0.338534, -0.634041, -0.695260,
		0.003495, 0.739730, -0.672895,
		54.210049, 52.382511, 50.110592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.676113, 51.746147, 50.065887>,  <54.207600, 51.864700, 50.581619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.676113, 51.746147, 50.065887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.650993, 52.141361, 50.122231>,  <54.635921, 52.378490, 50.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.650993, 52.141361, 50.122231>,  <54.676113, 51.746147, 50.065887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.650993, 52.141361, 50.122231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979032, 0.033582, 0.200918,
		0.193784, 0.150521, -0.969428,
		-0.062798, 0.988036, 0.140857,
		54.632153, 52.437771, 50.164486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.149094, 52.034252, 49.540882>,  <54.676113, 51.746147, 50.065887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.149094, 52.034252, 49.540882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.093590, 52.218735, 49.891434>,  <55.060287, 52.329426, 50.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.093590, 52.218735, 49.891434>,  <55.149094, 52.034252, 49.540882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.093590, 52.218735, 49.891434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981405, -0.054482, 0.184057,
		0.132635, 0.885617, -0.445073,
		-0.138755, 0.461209, 0.876375,
		55.051964, 52.357098, 50.154346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.705433, 52.595310, 49.620243>,  <55.149094, 52.034252, 49.540882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.705433, 52.595310, 49.620243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.547531, 52.478786, 49.968796>,  <55.452789, 52.408871, 50.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.547531, 52.478786, 49.968796>,  <55.705433, 52.595310, 49.620243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.547531, 52.478786, 49.968796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913632, -0.024135, 0.405826,
		-0.097190, 0.956324, 0.275677,
		-0.394754, -0.291310, 0.871383,
		55.429104, 52.391392, 50.230209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.831886, 53.064213, 50.275272>,  <55.705433, 52.595310, 49.620243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.831886, 53.064213, 50.275272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.789841, 52.682419, 50.386921>,  <55.764614, 52.453342, 50.453911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.789841, 52.682419, 50.386921>,  <55.831886, 53.064213, 50.275272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.789841, 52.682419, 50.386921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955955, -0.019639, 0.292857,
		-0.274046, 0.297612, 0.914509,
		-0.105118, -0.954485, 0.279121,
		55.758305, 52.396072, 50.470657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.875839, 52.980988, 51.026138>,  <55.831886, 53.064213, 50.275272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.875839, 52.980988, 51.026138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.012711, 52.658344, 50.833347>,  <56.094833, 52.464760, 50.717674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.012711, 52.658344, 50.833347>,  <55.875839, 52.980988, 51.026138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.012711, 52.658344, 50.833347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862075, 0.065425, 0.502541,
		-0.373818, -0.587460, 0.717740,
		0.342181, -0.806604, -0.481977,
		56.115364, 52.416363, 50.688755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.249580, 52.479309, 51.526253>,  <55.875839, 52.980988, 51.026138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.249580, 52.479309, 51.526253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.373558, 52.409023, 51.152504>,  <56.447945, 52.366852, 50.928253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.373558, 52.409023, 51.152504>,  <56.249580, 52.479309, 51.526253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.373558, 52.409023, 51.152504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943680, -0.062800, 0.324844,
		-0.115757, -0.982437, 0.146350,
		0.309948, -0.175711, -0.934376,
		56.466541, 52.356312, 50.872192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.512836, 51.884098, 51.664608>,  <56.249580, 52.479309, 51.526253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.512836, 51.884098, 51.664608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.707001, 52.031235, 51.347351>,  <56.823498, 52.119514, 51.156998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.707001, 52.031235, 51.347351>,  <56.512836, 51.884098, 51.664608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.707001, 52.031235, 51.347351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868891, -0.303606, 0.390963,
		-0.096991, -0.878930, -0.466985,
		0.485409, 0.367839, -0.793141,
		56.852623, 52.141586, 51.109409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.877243, 51.321430, 51.299397>,  <56.512836, 51.884098, 51.664608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.877243, 51.321430, 51.299397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.041962, 51.683975, 51.261589>,  <57.140793, 51.901501, 51.238903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.041962, 51.683975, 51.261589>,  <56.877243, 51.321430, 51.299397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.041962, 51.683975, 51.261589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890998, -0.378702, 0.250414,
		0.191171, -0.187336, -0.963514,
		0.411796, 0.906361, -0.094519,
		57.165501, 51.955883, 51.233234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.441193, 50.934547, 51.105495>,  <56.877243, 51.321430, 51.299397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.441193, 50.934547, 51.105495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.474663, 51.301929, 50.950863>,  <57.494743, 51.522358, 50.858086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.474663, 51.301929, 50.950863>,  <57.441193, 50.934547, 51.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.474663, 51.301929, 50.950863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990119, -0.032819, 0.136337,
		0.112532, -0.394165, -0.912124,
		0.083674, 0.918453, -0.386577,
		57.499763, 51.577465, 50.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.055607, 50.990620, 51.613884>,  <57.441193, 50.934547, 51.105495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.055607, 50.990620, 51.613884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.976555, 51.209404, 51.939281>,  <57.929123, 51.340675, 52.134521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.976555, 51.209404, 51.939281>,  <58.055607, 50.990620, 51.613884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.976555, 51.209404, 51.939281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333708, -0.817838, 0.468807,
		0.921727, -0.178819, 0.344157,
		-0.197633, 0.546960, 0.813496,
		57.917267, 51.373493, 52.183331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.212830, 50.608955, 52.210419>,  <58.055607, 50.990620, 51.613884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.212830, 50.608955, 52.210419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.961143, 50.885818, 52.351845>,  <57.810131, 51.051937, 52.436699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.961143, 50.885818, 52.351845>,  <58.212830, 50.608955, 52.210419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.961143, 50.885818, 52.351845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438359, -0.691676, 0.573956,
		0.641820, 0.206154, 0.738626,
		-0.629213, 0.692160, 0.353562,
		57.772381, 51.093468, 52.457912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.353088, 50.433167, 52.915848>,  <58.212830, 50.608955, 52.210419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.353088, 50.433167, 52.915848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.016129, 50.622139, 52.812176>,  <57.813953, 50.735523, 52.749973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.016129, 50.622139, 52.812176>,  <58.353088, 50.433167, 52.915848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.016129, 50.622139, 52.812176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527275, -0.623517, 0.577241,
		0.111107, 0.622924, 0.774352,
		-0.842399, 0.472432, -0.259176,
		57.763409, 50.763870, 52.734425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.022934, 50.589748, 53.543365>,  <58.353088, 50.433167, 52.915848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.022934, 50.589748, 53.543365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.773979, 50.550758, 53.232719>,  <57.624607, 50.527363, 53.046333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.773979, 50.550758, 53.232719>,  <58.022934, 50.589748, 53.543365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.773979, 50.550758, 53.232719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542050, -0.662096, 0.517504,
		-0.564637, 0.743053, 0.359244,
		-0.622388, -0.097474, -0.776616,
		57.587261, 50.521515, 52.999733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.719994, 50.714825, 53.659264>,  <58.022934, 50.589748, 53.543365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.719994, 50.714825, 53.659264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.800560, 51.088501, 53.777054>,  <58.848900, 51.312706, 53.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.800560, 51.088501, 53.777054>,  <58.719994, 50.714825, 53.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.800560, 51.088501, 53.777054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386048, -0.352010, 0.852676,
		0.900221, -0.058064, -0.431544,
		0.201418, 0.934194, 0.294471,
		58.860985, 51.368759, 53.865395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.448582, 50.776772, 53.770332>,  <58.719994, 50.714825, 53.659264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.448582, 50.776772, 53.770332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.274582, 51.060501, 53.992195>,  <59.170181, 51.230740, 54.125313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.274582, 51.060501, 53.992195>,  <59.448582, 50.776772, 53.770332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.274582, 51.060501, 53.992195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513707, -0.310402, 0.799847,
		0.739514, 0.632862, -0.229359,
		-0.435000, 0.709321, 0.554652,
		59.144081, 51.273296, 54.158592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.978420, 51.191147, 54.084023>,  <59.448582, 50.776772, 53.770332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.978420, 51.191147, 54.084023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.628227, 51.140484, 54.270569>,  <59.418114, 51.110088, 54.382496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.628227, 51.140484, 54.270569>,  <59.978420, 51.191147, 54.084023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.628227, 51.140484, 54.270569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483144, -0.250312, 0.838997,
		0.010473, 0.959845, 0.280336,
		-0.875478, -0.126656, 0.466365,
		59.365585, 51.102486, 54.410477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.091877, 51.421928, 54.785446>,  <59.978420, 51.191147, 54.084023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.091877, 51.421928, 54.785446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.754478, 51.207310, 54.795479>,  <59.552040, 51.078541, 54.801498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.754478, 51.207310, 54.795479>,  <60.091877, 51.421928, 54.785446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.754478, 51.207310, 54.795479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252797, -0.355357, 0.899897,
		-0.473920, 0.765404, 0.435380,
		-0.843501, -0.536542, 0.025081,
		59.501427, 51.046349, 54.803001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.291012, 51.287868, 55.540810>,  <60.091877, 51.421928, 54.785446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.291012, 51.287868, 55.540810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.178947, 51.006432, 55.802025>,  <60.111710, 50.837570, 55.958755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.178947, 51.006432, 55.802025>,  <60.291012, 51.287868, 55.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.178947, 51.006432, 55.802025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713231, -0.607887, -0.348963,
		0.642504, 0.368002, 0.672134,
		-0.280163, -0.703596, 0.653040,
		60.094898, 50.795353, 55.997936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.883495, 51.008183, 55.800179>,  <60.291012, 51.287868, 55.540810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.883495, 51.008183, 55.800179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599045, 50.728115, 55.825645>,  <60.428375, 50.560074, 55.840923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599045, 50.728115, 55.825645>,  <60.883495, 51.008183, 55.800179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.599045, 50.728115, 55.825645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621208, -0.668162, -0.409463,
		0.329232, -0.251633, 0.910103,
		-0.711131, -0.700171, 0.063663,
		60.385704, 50.518063, 55.844746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.173721, 50.366432, 56.032669>,  <60.883495, 51.008183, 55.800179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.173721, 50.366432, 56.032669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.832283, 50.251629, 55.858772>,  <60.627419, 50.182747, 55.754436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.832283, 50.251629, 55.858772>,  <61.173721, 50.366432, 56.032669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.832283, 50.251629, 55.858772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477772, -0.763938, -0.433742,
		-0.207625, -0.577947, 0.789220,
		-0.853595, -0.287012, -0.434740,
		60.576206, 50.165524, 55.728352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.282570, 49.725380, 55.919739>,  <61.173721, 50.366432, 56.032669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.282570, 49.725380, 55.919739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.981850, 49.823715, 55.674995>,  <60.801418, 49.882717, 55.528149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.981850, 49.823715, 55.674995>,  <61.282570, 49.725380, 55.919739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.981850, 49.823715, 55.674995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223255, -0.778205, -0.586987,
		-0.620451, -0.577895, 0.530168,
		-0.751797, 0.245834, -0.611856,
		60.756310, 49.897465, 55.491440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.222015, 49.298729, 56.527374>,  <61.282570, 49.725380, 55.919739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.222015, 49.298729, 56.527374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219185, 48.915905, 56.643295>,  <61.217487, 48.686211, 56.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219185, 48.915905, 56.643295>,  <61.222015, 49.298729, 56.527374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.219185, 48.915905, 56.643295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998800, 0.007284, 0.048432,
		-0.048463, 0.289800, 0.955860,
		-0.007073, -0.957060, 0.289805,
		61.217064, 48.628788, 56.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.946812, 49.531250, 57.291737>,  <61.222015, 49.298729, 56.527374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.946812, 49.531250, 57.291737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.244499, 49.670959, 57.064003>,  <61.423111, 49.754784, 56.927364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.244499, 49.670959, 57.064003>,  <60.946812, 49.531250, 57.291737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.244499, 49.670959, 57.064003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432164, 0.398123, 0.809155,
		0.509280, -0.848238, 0.145349,
		0.744223, 0.349272, -0.569334,
		61.467766, 49.775742, 56.893204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.289497, 49.830406, 57.853451>,  <60.946812, 49.531250, 57.291737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.289497, 49.830406, 57.853451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.486259, 49.919224, 57.516708>,  <61.604317, 49.972515, 57.314663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.486259, 49.919224, 57.516708>,  <61.289497, 49.830406, 57.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.486259, 49.919224, 57.516708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663703, 0.530178, 0.527645,
		0.563497, -0.818295, 0.113422,
		0.491903, 0.222048, -0.841859,
		61.633831, 49.985840, 57.264153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.960938, 49.614456, 57.927597>,  <61.289497, 49.830406, 57.853451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.960938, 49.614456, 57.927597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.970169, 49.889862, 57.637657>,  <61.975708, 50.055107, 57.463692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.970169, 49.889862, 57.637657>,  <61.960938, 49.614456, 57.927597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.970169, 49.889862, 57.637657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811883, 0.410170, 0.415459,
		0.583363, -0.598083, -0.549530,
		0.023078, 0.688518, -0.724852,
		61.977093, 50.096416, 57.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.625671, 49.739853, 57.865620>,  <61.960938, 49.614456, 57.927597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.625671, 49.739853, 57.865620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.484428, 50.052040, 57.659248>,  <62.399685, 50.239353, 57.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.484428, 50.052040, 57.659248>,  <62.625671, 49.739853, 57.865620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.484428, 50.052040, 57.659248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840862, 0.506522, 0.190752,
		0.410206, -0.366470, -0.835123,
		-0.353103, 0.780471, -0.515929,
		62.378498, 50.286182, 57.504471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.152355, 49.907566, 57.389580>,  <62.625671, 49.739853, 57.865620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.152355, 49.907566, 57.389580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.909149, 50.206100, 57.497879>,  <62.763226, 50.385220, 57.562859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.909149, 50.206100, 57.497879>,  <63.152355, 49.907566, 57.389580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.909149, 50.206100, 57.497879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785777, 0.614437, 0.070863,
		-0.113473, 0.255837, -0.960037,
		-0.608011, 0.746334, 0.270752,
		62.726746, 50.430000, 57.579105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.990204, 50.552017, 56.950745>,  <63.152355, 49.907566, 57.389580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.990204, 50.552017, 56.950745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.006302, 50.589954, 57.348618>,  <63.015961, 50.612717, 57.587341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.006302, 50.589954, 57.348618>,  <62.990204, 50.552017, 56.950745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.006302, 50.589954, 57.348618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863952, 0.496800, -0.082325,
		-0.501964, 0.862668, -0.061943,
		0.040246, 0.094840, 0.994679,
		63.018375, 50.618408, 57.647022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.117348, 51.261494, 57.157452>,  <62.990204, 50.552017, 56.950745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.117348, 51.261494, 57.157452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.243500, 51.008110, 57.440086>,  <63.319191, 50.856079, 57.609669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.243500, 51.008110, 57.440086>,  <63.117348, 51.261494, 57.157452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.243500, 51.008110, 57.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863414, 0.500506, 0.063327,
		-0.393766, 0.590106, 0.704786,
		0.315380, -0.633458, 0.706588,
		63.338116, 50.818073, 57.652061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.646584, 51.702343, 56.918987>,  <63.117348, 51.261494, 57.157452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.646584, 51.702343, 56.918987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.877716, 52.028694, 56.910454>,  <64.016396, 52.224506, 56.905334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.877716, 52.028694, 56.910454>,  <63.646584, 51.702343, 56.918987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.877716, 52.028694, 56.910454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650603, -0.444679, 0.615610,
		0.492777, -0.369596, -0.787762,
		0.577828, 0.815879, -0.021333,
		64.051064, 52.273457, 56.904053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.290024, 51.404152, 57.113995>,  <63.646584, 51.702343, 56.918987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.290024, 51.404152, 57.113995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.334976, 51.798405, 57.164444>,  <64.361946, 52.034954, 57.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.334976, 51.798405, 57.164444>,  <64.290024, 51.404152, 57.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.334976, 51.798405, 57.164444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489513, -0.165374, 0.856171,
		0.864724, -0.034479, -0.501063,
		0.112383, 0.985628, 0.126125,
		64.368690, 52.094093, 57.202282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.975693, 51.555576, 57.311340>,  <64.290024, 51.404152, 57.113995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.975693, 51.555576, 57.311340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.764618, 51.877468, 57.420120>,  <64.637970, 52.070602, 57.485386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.764618, 51.877468, 57.420120>,  <64.975693, 51.555576, 57.311340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.764618, 51.877468, 57.420120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354323, -0.082436, 0.931483,
		0.772007, 0.587895, -0.241632,
		-0.527695, 0.804726, 0.271945,
		64.606308, 52.118885, 57.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.303566, 51.969482, 57.697548>,  <64.975693, 51.555576, 57.311340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.303566, 51.969482, 57.697548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.952141, 52.129330, 57.802177>,  <64.741287, 52.225239, 57.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.952141, 52.129330, 57.802177>,  <65.303566, 51.969482, 57.697548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.952141, 52.129330, 57.802177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335291, 0.126008, 0.933650,
		0.340144, 0.907979, -0.244696,
		-0.878568, 0.399620, 0.261576,
		64.688568, 52.249214, 57.880650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.410812, 52.641140, 57.972973>,  <65.303566, 51.969482, 57.697548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.410812, 52.641140, 57.972973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.122375, 52.431831, 58.154617>,  <64.949310, 52.306248, 58.263603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.122375, 52.431831, 58.154617>,  <65.410812, 52.641140, 57.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.122375, 52.431831, 58.154617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487819, 0.081979, 0.869087,
		-0.491992, 0.848216, 0.196146,
		-0.721094, -0.523267, 0.454109,
		64.906044, 52.274853, 58.290852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.165039, 53.010071, 58.609985>,  <65.410812, 52.641140, 57.972973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.165039, 53.010071, 58.609985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.103157, 52.617073, 58.651497>,  <65.066025, 52.381275, 58.676403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.103157, 52.617073, 58.651497>,  <65.165039, 53.010071, 58.609985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.103157, 52.617073, 58.651497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481657, 0.016708, 0.876200,
		-0.862595, 0.185545, 0.470640,
		-0.154712, -0.982494, 0.103782,
		65.056740, 52.322327, 58.682632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.360962, 53.791504, 58.761620>,  <65.165039, 53.010071, 58.609985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.360962, 53.791504, 58.761620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.379662, 53.857506, 58.367546>,  <65.390877, 53.897106, 58.131104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.379662, 53.857506, 58.367546>,  <65.360962, 53.791504, 58.761620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.379662, 53.857506, 58.367546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882398, 0.455430, 0.118148,
		0.468177, -0.874847, -0.124313,
		0.046746, 0.165007, -0.985184,
		65.393684, 53.907009, 58.071991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.059303, 53.492077, 58.495960>,  <65.360962, 53.791504, 58.761620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.059303, 53.492077, 58.495960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.912079, 53.782726, 58.263908>,  <65.823746, 53.957115, 58.124676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.912079, 53.782726, 58.263908>,  <66.059303, 53.492077, 58.495960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.912079, 53.782726, 58.263908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868768, 0.491078, 0.063901,
		0.331323, -0.480482, -0.812011,
		-0.368057, 0.726621, -0.580133,
		65.801659, 54.000713, 58.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.463165, 53.539402, 57.805630>,  <66.059303, 53.492077, 58.495960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.463165, 53.539402, 57.805630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.293205, 53.870796, 57.951546>,  <66.191231, 54.069633, 58.039097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.293205, 53.870796, 57.951546>,  <66.463165, 53.539402, 57.805630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.293205, 53.870796, 57.951546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905127, 0.395171, 0.156794,
		-0.014253, 0.396805, -0.917792,
		-0.424901, 0.828484, 0.364792,
		66.165733, 54.119343, 58.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.819389, 54.228317, 57.588814>,  <66.463165, 53.539402, 57.805630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.819389, 54.228317, 57.588814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.662346, 54.269550, 57.954376>,  <66.568115, 54.294289, 58.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.662346, 54.269550, 57.954376>,  <66.819389, 54.228317, 57.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.662346, 54.269550, 57.954376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860467, 0.392029, 0.325439,
		-0.324732, 0.914159, -0.242615,
		-0.392615, 0.103082, 0.913908,
		66.544563, 54.300476, 58.228550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.893570, 54.846825, 57.943539>,  <66.819389, 54.228317, 57.588814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.893570, 54.846825, 57.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.872841, 54.565403, 58.227036>,  <66.860405, 54.396549, 58.397133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.872841, 54.565403, 58.227036>,  <66.893570, 54.846825, 57.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.872841, 54.565403, 58.227036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827109, 0.367481, 0.425262,
		-0.559647, 0.608246, 0.562878,
		-0.051817, -0.703558, 0.708746,
		66.857292, 54.354336, 58.439659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.637497, 55.142807, 58.716949>,  <66.893570, 54.846825, 57.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.637497, 55.142807, 58.716949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.886063, 54.831367, 58.751854>,  <67.035202, 54.644501, 58.772797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.886063, 54.831367, 58.751854>,  <66.637497, 55.142807, 58.716949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.886063, 54.831367, 58.751854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682381, 0.592590, 0.428010,
		-0.384958, -0.206431, 0.899552,
		0.621420, -0.778603, 0.087257,
		67.072487, 54.597786, 58.778030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.700165, 55.151482, 59.394615>,  <66.637497, 55.142807, 58.716949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.700165, 55.151482, 59.394615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009529, 54.949528, 59.241287>,  <67.195145, 54.828354, 59.149288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009529, 54.949528, 59.241287>,  <66.700165, 55.151482, 59.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.009529, 54.949528, 59.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633690, 0.631860, 0.446308,
		0.016870, -0.588083, 0.808625,
		0.773403, -0.504889, -0.383322,
		67.241547, 54.798061, 59.126289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.208443, 55.053383, 59.889740>,  <66.700165, 55.151482, 59.394615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.208443, 55.053383, 59.889740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.404701, 55.003239, 59.544823>,  <67.522453, 54.973152, 59.337872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.404701, 55.003239, 59.544823>,  <67.208443, 55.053383, 59.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.404701, 55.003239, 59.544823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800932, 0.454630, 0.389641,
		0.343179, -0.881814, 0.323468,
		0.490649, -0.125359, -0.862293,
		67.551895, 54.965630, 59.286137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.809074, 54.758949, 59.995434>,  <67.208443, 55.053383, 59.889740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.809074, 54.758949, 59.995434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.878876, 54.993752, 59.679214>,  <67.920761, 55.134632, 59.489483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.878876, 54.993752, 59.679214>,  <67.809074, 54.758949, 59.995434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.878876, 54.993752, 59.679214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690621, 0.499303, 0.523201,
		0.701847, -0.637273, -0.318267,
		0.174510, 0.587009, -0.790549,
		67.931229, 55.169853, 59.442051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.520348, 54.723831, 59.757179>,  <67.809074, 54.758949, 59.995434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.520348, 54.723831, 59.757179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.400749, 55.084057, 59.630951>,  <68.328995, 55.300194, 59.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.400749, 55.084057, 59.630951>,  <68.520348, 54.723831, 59.757179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.400749, 55.084057, 59.630951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849959, 0.401659, 0.340939,
		0.433790, -0.166286, -0.885537,
		-0.298990, 0.900566, -0.315572,
		68.311050, 55.354225, 59.536278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.191917, 55.122288, 59.655643>,  <68.520348, 54.723831, 59.757179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.191917, 55.122288, 59.655643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.915764, 55.410496, 59.629692>,  <68.750069, 55.583420, 59.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.915764, 55.410496, 59.629692>,  <69.191917, 55.122288, 59.655643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.915764, 55.410496, 59.629692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721413, 0.692389, 0.012667,
		0.054047, -0.038059, -0.997813,
		-0.690393, 0.720520, -0.064878,
		68.708649, 55.626652, 59.610229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.489944, 55.562096, 59.266335>,  <69.191917, 55.122288, 59.655643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.489944, 55.562096, 59.266335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.198593, 55.798336, 59.405281>,  <69.023781, 55.940083, 59.488651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.198593, 55.798336, 59.405281>,  <69.489944, 55.562096, 59.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.198593, 55.798336, 59.405281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673431, 0.710557, 0.203961,
		-0.126367, 0.382489, -0.915278,
		-0.728369, 0.590603, 0.347371,
		68.980080, 55.975517, 59.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.400314, 56.082436, 58.786156>,  <69.489944, 55.562096, 59.266335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.400314, 56.082436, 58.786156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.333992, 56.161507, 59.172615>,  <69.294197, 56.208950, 59.404491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.333992, 56.161507, 59.172615>,  <69.400314, 56.082436, 58.786156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.333992, 56.161507, 59.172615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865973, 0.497902, 0.046735,
		-0.471807, 0.844404, -0.253733,
		-0.165797, 0.197676, 0.966145,
		69.284256, 56.220810, 59.462460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.311546, 56.829464, 58.943394>,  <69.400314, 56.082436, 58.786156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.311546, 56.829464, 58.943394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.434578, 56.645233, 59.276443>,  <69.508400, 56.534695, 59.476273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.434578, 56.645233, 59.276443>,  <69.311546, 56.829464, 58.943394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.434578, 56.645233, 59.276443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808080, 0.588453, 0.026991,
		-0.502393, 0.664526, 0.553178,
		0.307583, -0.460573, 0.832626,
		69.526855, 56.507061, 59.526230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.739502, 57.225555, 59.344166>,  <69.311546, 56.829464, 58.943394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.739502, 57.225555, 59.344166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.800400, 56.933315, 59.610413>,  <69.836937, 56.757973, 59.770161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.800400, 56.933315, 59.610413>,  <69.739502, 57.225555, 59.344166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.800400, 56.933315, 59.610413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798541, 0.487764, 0.352728,
		-0.582367, 0.477821, 0.657674,
		0.152249, -0.730598, 0.665618,
		69.846077, 56.714134, 59.810097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.707588, 57.502056, 60.002110>,  <69.739502, 57.225555, 59.344166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.707588, 57.502056, 60.002110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.904572, 57.154579, 60.023460>,  <70.022758, 56.946091, 60.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.904572, 57.154579, 60.023460>,  <69.707588, 57.502056, 60.002110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.904572, 57.154579, 60.023460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771465, 0.464087, 0.435276,
		-0.402895, -0.173177, 0.898713,
		0.492461, -0.868696, 0.053378,
		70.052307, 56.893970, 60.039474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.906319, 57.404381, 60.741890>,  <69.707588, 57.502056, 60.002110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.906319, 57.404381, 60.741890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.153008, 57.223278, 60.484314>,  <70.301025, 57.114616, 60.329769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.153008, 57.223278, 60.484314>,  <69.906319, 57.404381, 60.741890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.153008, 57.223278, 60.484314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780859, 0.455299, 0.427741,
		0.099520, -0.766624, 0.634337,
		0.616729, -0.452759, -0.643936,
		70.338028, 57.087452, 60.291134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.372589, 57.304840, 61.219486>,  <69.906319, 57.404381, 60.741890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.372589, 57.304840, 61.219486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.538307, 57.283722, 60.856041>,  <70.637741, 57.271049, 60.637974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.538307, 57.283722, 60.856041>,  <70.372589, 57.304840, 61.219486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.538307, 57.283722, 60.856041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813336, 0.469512, 0.343573,
		0.408465, -0.881346, 0.237456,
		0.414295, -0.052794, -0.908610,
		70.662598, 57.267883, 60.583458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.060135, 57.060642, 61.343185>,  <70.372589, 57.304840, 61.219486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.060135, 57.060642, 61.343185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.040649, 57.266579, 61.000824>,  <71.028961, 57.390141, 60.795406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.040649, 57.266579, 61.000824>,  <71.060135, 57.060642, 61.343185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.040649, 57.266579, 61.000824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811104, 0.520457, 0.266900,
		0.582870, -0.681223, -0.442941,
		-0.048713, 0.514839, -0.855902,
		71.026039, 57.421032, 60.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.780914, 56.967304, 60.960903>,  <71.060135, 57.060642, 61.343185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.780914, 56.967304, 60.960903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.590172, 57.309860, 60.881699>,  <71.475731, 57.515396, 60.834175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.590172, 57.309860, 60.881699>,  <71.780914, 56.967304, 60.960903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.590172, 57.309860, 60.881699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838440, 0.510789, 0.190035,
		0.263886, -0.075401, -0.961602,
		-0.476847, 0.856393, -0.198009,
		71.447121, 57.566776, 60.822296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.183609, 57.287708, 60.449760>,  <71.780914, 56.967304, 60.960903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.183609, 57.287708, 60.449760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.043526, 57.552471, 60.714859>,  <71.959473, 57.711330, 60.873920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.043526, 57.552471, 60.714859>,  <72.183609, 57.287708, 60.449760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.043526, 57.552471, 60.714859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886557, 0.462574, 0.006485,
		-0.302278, 0.589835, -0.748814,
		-0.350207, 0.661906, 0.662749,
		71.938461, 57.751041, 60.913685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.439125, 57.945080, 60.145035>,  <72.183609, 57.287708, 60.449760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.439125, 57.945080, 60.145035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.400276, 57.950596, 60.543106>,  <72.376968, 57.953907, 60.781948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.400276, 57.950596, 60.543106>,  <72.439125, 57.945080, 60.145035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.400276, 57.950596, 60.543106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969225, 0.228573, 0.091423,
		-0.226210, 0.973429, -0.035567,
		-0.097123, 0.013792, 0.995177,
		72.371140, 57.954735, 60.841660>
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
