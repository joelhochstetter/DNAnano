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
	<24.179777, 34.485321, 35.161976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145496, 34.880142, 35.107742>,  <24.124928, 35.117035, 35.075203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145496, 34.880142, 35.107742>,  <24.179777, 34.485321, 35.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145496, 34.880142, 35.107742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579557, 0.160080, 0.799055,
		0.810413, -0.010097, -0.585772,
		-0.085703, 0.987052, -0.135583,
		24.119785, 35.176258, 35.067066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747360, 34.897152, 35.208160>,  <24.179777, 34.485321, 35.161976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747360, 34.897152, 35.208160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489378, 35.166756, 35.352242>,  <24.334589, 35.328518, 35.438690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489378, 35.166756, 35.352242>,  <24.747360, 34.897152, 35.208160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489378, 35.166756, 35.352242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617981, 0.182692, 0.764672,
		0.449589, 0.715778, -0.534352,
		-0.644957, 0.674007, 0.360201,
		24.295891, 35.368958, 35.460300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137899, 35.427311, 35.330418>,  <24.747360, 34.897152, 35.208160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137899, 35.427311, 35.330418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806997, 35.437771, 35.554905>,  <24.608456, 35.444046, 35.689598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806997, 35.437771, 35.554905>,  <25.137899, 35.427311, 35.330418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806997, 35.437771, 35.554905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558388, 0.148629, 0.816157,
		-0.062070, 0.988547, -0.137556,
		-0.827255, 0.026151, 0.561218,
		24.558821, 35.445618, 35.723270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733707, 35.521961, 35.056278>,  <25.137899, 35.427311, 35.330418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733707, 35.521961, 35.056278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571033, 35.885315, 35.095169>,  <25.473429, 36.103325, 35.118504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571033, 35.885315, 35.095169>,  <25.733707, 35.521961, 35.056278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571033, 35.885315, 35.095169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881512, 0.418132, -0.219322,
		-0.239881, -0.003491, -0.970796,
		-0.406686, 0.908380, 0.097225,
		25.449028, 36.157829, 35.124336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761288, 35.868172, 34.439995>,  <25.733707, 35.521961, 35.056278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761288, 35.868172, 34.439995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796856, 36.103230, 34.761681>,  <25.818197, 36.244263, 34.954693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796856, 36.103230, 34.761681>,  <25.761288, 35.868172, 34.439995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796856, 36.103230, 34.761681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922824, 0.255233, -0.288534,
		-0.374818, 0.767810, -0.519596,
		0.088921, 0.587643, 0.804219,
		25.823532, 36.279522, 35.002945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065207, 36.578583, 34.264961>,  <25.761288, 35.868172, 34.439995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065207, 36.578583, 34.264961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147608, 36.457169, 34.637074>,  <26.197048, 36.384319, 34.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147608, 36.457169, 34.637074>,  <26.065207, 36.578583, 34.264961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147608, 36.457169, 34.637074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967129, 0.207985, -0.146300,
		-0.149078, 0.929843, 0.336403,
		0.206003, -0.303535, 0.930285,
		26.209408, 36.366108, 34.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407946, 37.099457, 34.573341>,  <26.065207, 36.578583, 34.264961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407946, 37.099457, 34.573341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510305, 36.774223, 34.782497>,  <26.571722, 36.579082, 34.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510305, 36.774223, 34.782497>,  <26.407946, 37.099457, 34.573341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510305, 36.774223, 34.782497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953205, 0.122156, -0.276546,
		0.160981, 0.569187, 0.806295,
		0.255900, -0.813083, 0.522887,
		26.587076, 36.530300, 34.939365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114655, 37.148712, 34.943272>,  <26.407946, 37.099457, 34.573341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114655, 37.148712, 34.943272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228359, 37.467178, 34.729614>,  <27.296581, 37.658260, 34.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228359, 37.467178, 34.729614>,  <27.114655, 37.148712, 34.943272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228359, 37.467178, 34.729614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879656, -0.438167, -0.184974,
		-0.381315, -0.417281, -0.824910,
		0.284261, 0.796170, -0.534143,
		27.313637, 37.706028, 34.569370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226616, 36.876450, 34.227650>,  <27.114655, 37.148712, 34.943272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226616, 36.876450, 34.227650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416590, 37.186745, 34.393864>,  <27.530575, 37.372921, 34.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416590, 37.186745, 34.393864>,  <27.226616, 36.876450, 34.227650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416590, 37.186745, 34.393864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877998, -0.449691, -0.164007,
		0.059636, 0.442730, -0.894670,
		0.474936, 0.775737, 0.415534,
		27.559071, 37.419464, 34.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962612, 36.588760, 34.239143>,  <27.226616, 36.876450, 34.227650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962612, 36.588760, 34.239143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784729, 36.251858, 34.361019>,  <27.677999, 36.049717, 34.434143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784729, 36.251858, 34.361019>,  <27.962612, 36.588760, 34.239143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784729, 36.251858, 34.361019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889252, -0.455857, 0.037760,
		0.107089, 0.287735, 0.951704,
		-0.444706, -0.842261, 0.304686,
		27.651318, 35.999180, 34.452423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405403, 36.324093, 34.736523>,  <27.962612, 36.588760, 34.239143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405403, 36.324093, 34.736523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194326, 36.032028, 34.562897>,  <28.067680, 35.856789, 34.458721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194326, 36.032028, 34.562897>,  <28.405403, 36.324093, 34.736523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194326, 36.032028, 34.562897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818498, -0.573728, -0.029955,
		-0.227161, -0.371084, 0.900386,
		-0.527692, -0.730159, -0.434060,
		28.036018, 35.812981, 34.432678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337046, 35.690804, 35.093040>,  <28.405403, 36.324093, 34.736523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337046, 35.690804, 35.093040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337999, 35.620304, 34.699303>,  <28.338572, 35.578003, 34.463058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337999, 35.620304, 34.699303>,  <28.337046, 35.690804, 35.093040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337999, 35.620304, 34.699303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904814, -0.418755, 0.077170,
		-0.425800, -0.890831, 0.158473,
		0.002384, -0.176248, -0.984343,
		28.338715, 35.567429, 34.403999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487772, 34.964909, 35.150936>,  <28.337046, 35.690804, 35.093040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487772, 34.964909, 35.150936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588015, 35.131828, 34.801521>,  <28.648161, 35.231979, 34.591873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588015, 35.131828, 34.801521>,  <28.487772, 34.964909, 35.150936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588015, 35.131828, 34.801521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886842, -0.460798, 0.034297,
		-0.388210, -0.783280, -0.485556,
		0.250607, 0.417297, -0.873532,
		28.663197, 35.257019, 34.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912016, 34.476509, 34.813419>,  <28.487772, 34.964909, 35.150936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912016, 34.476509, 34.813419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011387, 34.825211, 34.644501>,  <29.071009, 35.034431, 34.543148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011387, 34.825211, 34.644501>,  <28.912016, 34.476509, 34.813419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011387, 34.825211, 34.644501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943196, -0.118414, 0.310418,
		0.220602, -0.475425, -0.851649,
		0.248427, 0.871751, -0.422296,
		29.085915, 35.086735, 34.517811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598297, 34.394165, 34.321659>,  <28.912016, 34.476509, 34.813419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598297, 34.394165, 34.321659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568064, 34.766644, 34.464294>,  <29.549923, 34.990131, 34.549877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568064, 34.766644, 34.464294>,  <29.598297, 34.394165, 34.321659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568064, 34.766644, 34.464294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943598, -0.048813, 0.327476,
		0.322351, 0.361232, -0.874986,
		-0.075584, 0.931197, 0.356593,
		29.545389, 35.046001, 34.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167601, 34.811043, 34.012684>,  <29.598297, 34.394165, 34.321659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167601, 34.811043, 34.012684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052683, 34.967228, 34.362541>,  <29.983732, 35.060940, 34.572456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052683, 34.967228, 34.362541>,  <30.167601, 34.811043, 34.012684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052683, 34.967228, 34.362541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944262, -0.037763, 0.327021,
		0.160718, 0.919844, -0.357849,
		-0.287295, 0.390462, 0.874644,
		29.966494, 35.084366, 34.624935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674942, 35.265808, 34.184799>,  <30.167601, 34.811043, 34.012684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674942, 35.265808, 34.184799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521242, 35.169189, 34.541229>,  <30.429022, 35.111217, 34.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521242, 35.169189, 34.541229>,  <30.674942, 35.265808, 34.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521242, 35.169189, 34.541229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919252, -0.189599, 0.345005,
		0.085611, 0.951687, 0.294894,
		-0.384248, -0.241546, 0.891072,
		30.405968, 35.096725, 34.808552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098072, 35.485741, 34.638412>,  <30.674942, 35.265808, 34.184799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098072, 35.485741, 34.638412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915241, 35.212055, 34.865719>,  <30.805544, 35.047844, 35.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915241, 35.212055, 34.865719>,  <31.098072, 35.485741, 34.638412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915241, 35.212055, 34.865719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884665, -0.283706, 0.369971,
		-0.091919, 0.671832, 0.734978,
		-0.457076, -0.684216, 0.568268,
		30.778118, 35.006790, 35.036198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409025, 35.485603, 35.453304>,  <31.098072, 35.485741, 34.638412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409025, 35.485603, 35.453304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307709, 35.155655, 35.251144>,  <31.246920, 34.957684, 35.129848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307709, 35.155655, 35.251144>,  <31.409025, 35.485603, 35.453304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307709, 35.155655, 35.251144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821166, -0.459510, 0.338433,
		-0.511400, -0.329293, 0.793748,
		-0.253292, -0.824873, -0.505398,
		31.231722, 34.908192, 35.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324585, 34.841202, 35.865707>,  <31.409025, 35.485603, 35.453304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324585, 34.841202, 35.865707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418550, 34.757946, 35.485920>,  <31.474930, 34.707993, 35.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418550, 34.757946, 35.485920>,  <31.324585, 34.841202, 35.865707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418550, 34.757946, 35.485920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835591, -0.455797, 0.306655,
		-0.496592, -0.865407, 0.066844,
		0.234914, -0.208136, -0.949471,
		31.489025, 34.695507, 35.201080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471109, 34.107239, 35.830200>,  <31.324585, 34.841202, 35.865707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471109, 34.107239, 35.830200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679968, 34.265419, 35.527946>,  <31.805283, 34.360329, 35.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679968, 34.265419, 35.527946>,  <31.471109, 34.107239, 35.830200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679968, 34.265419, 35.527946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836539, -0.409965, 0.363499,
		-0.166037, -0.821915, -0.544873,
		0.522144, 0.395454, -0.755633,
		31.836611, 34.384056, 35.301258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709204, 33.546425, 35.512913>,  <31.471109, 34.107239, 35.830200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709204, 33.546425, 35.512913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929012, 33.875885, 35.456871>,  <32.060898, 34.073563, 35.423248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929012, 33.875885, 35.456871>,  <31.709204, 33.546425, 35.512913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929012, 33.875885, 35.456871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809190, -0.482959, 0.334608,
		0.207936, -0.297242, -0.931885,
		0.549522, 0.823649, -0.140100,
		32.093868, 34.122978, 35.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289501, 33.371384, 35.087532>,  <31.709204, 33.546425, 35.512913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289501, 33.371384, 35.087532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353779, 33.695374, 35.313137>,  <32.392345, 33.889767, 35.448502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353779, 33.695374, 35.313137>,  <32.289501, 33.371384, 35.087532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353779, 33.695374, 35.313137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956462, -0.268849, 0.113583,
		0.243634, 0.521206, -0.817916,
		0.160696, 0.809978, 0.564015,
		32.401989, 33.938366, 35.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086575, 33.213249, 35.284298>,  <32.289501, 33.371384, 35.087532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086575, 33.213249, 35.284298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022961, 33.430229, 35.614258>,  <32.984795, 33.560417, 35.812233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022961, 33.430229, 35.614258>,  <33.086575, 33.213249, 35.284298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022961, 33.430229, 35.614258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967839, -0.079308, 0.238742,
		0.194926, 0.836336, -0.512392,
		-0.159032, 0.542450, 0.824898,
		32.975250, 33.592964, 35.861729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546684, 33.794510, 35.340790>,  <33.086575, 33.213249, 35.284298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546684, 33.794510, 35.340790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437279, 33.679211, 35.707855>,  <33.371635, 33.610031, 35.928093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437279, 33.679211, 35.707855>,  <33.546684, 33.794510, 35.340790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437279, 33.679211, 35.707855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961346, -0.113349, 0.250931,
		0.031687, 0.950824, 0.308105,
		-0.273515, -0.288245, 0.917663,
		33.355225, 33.592739, 35.983154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934010, 34.126484, 35.845177>,  <33.546684, 33.794510, 35.340790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934010, 34.126484, 35.845177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852760, 33.771088, 36.009777>,  <33.804012, 33.557850, 36.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852760, 33.771088, 36.009777>,  <33.934010, 34.126484, 35.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852760, 33.771088, 36.009777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962814, -0.104785, 0.249016,
		-0.178129, 0.446776, 0.876733,
		-0.203123, -0.888488, 0.411497,
		33.791824, 33.504539, 36.133224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002361, 34.350780, 36.593128>,  <33.934010, 34.126484, 35.845177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002361, 34.350780, 36.593128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074890, 33.987431, 36.442406>,  <34.118408, 33.769421, 36.351974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074890, 33.987431, 36.442406>,  <34.002361, 34.350780, 36.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074890, 33.987431, 36.442406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835398, -0.059882, 0.546374,
		-0.518875, -0.413851, 0.747994,
		0.181326, -0.908373, -0.376802,
		34.129288, 33.714920, 36.329365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266121, 34.009129, 37.138485>,  <34.002361, 34.350780, 36.593128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266121, 34.009129, 37.138485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394630, 33.801430, 36.821709>,  <34.471737, 33.676811, 36.631645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394630, 33.801430, 36.821709>,  <34.266121, 34.009129, 37.138485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394630, 33.801430, 36.821709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882839, -0.138324, 0.448845,
		-0.342606, -0.843355, 0.413972,
		0.321274, -0.519248, -0.791937,
		34.491013, 33.645657, 36.584126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417034, 33.339367, 37.173519>,  <34.266121, 34.009129, 37.138485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417034, 33.339367, 37.173519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679535, 33.432545, 36.886448>,  <34.837036, 33.488449, 36.714203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679535, 33.432545, 36.886448>,  <34.417034, 33.339367, 37.173519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679535, 33.432545, 36.886448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720154, -0.477226, 0.503621,
		-0.225181, -0.847345, -0.480937,
		0.656256, 0.232943, -0.717681,
		34.876411, 33.502426, 36.671143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752960, 32.714859, 37.004215>,  <34.417034, 33.339367, 37.173519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752960, 32.714859, 37.004215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989265, 33.033932, 36.955711>,  <35.131046, 33.225376, 36.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989265, 33.033932, 36.955711>,  <34.752960, 32.714859, 37.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989265, 33.033932, 36.955711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742192, -0.478303, 0.469443,
		0.316470, -0.367324, -0.874597,
		0.590761, 0.797683, -0.121257,
		35.166492, 33.273235, 36.919334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994801, 32.859135, 37.816299>,  <34.752960, 32.714859, 37.004215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994801, 32.859135, 37.816299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089569, 33.229195, 37.934940>,  <35.146431, 33.451229, 38.006123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089569, 33.229195, 37.934940>,  <34.994801, 32.859135, 37.816299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089569, 33.229195, 37.934940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821261, -0.353818, 0.447597,
		0.519035, 0.137539, -0.843614,
		0.236924, 0.925146, 0.296599,
		35.160645, 33.506737, 38.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778107, 32.857338, 37.683659>,  <34.994801, 32.859135, 37.816299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778107, 32.857338, 37.683659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660267, 33.106998, 37.973110>,  <35.589561, 33.256794, 38.146782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660267, 33.106998, 37.973110>,  <35.778107, 32.857338, 37.683659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660267, 33.106998, 37.973110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840351, -0.191333, 0.507151,
		0.454993, 0.757514, -0.468138,
		-0.294604, 0.624151, 0.723633,
		35.571884, 33.294243, 38.190201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357101, 33.272343, 37.940796>,  <35.778107, 32.857338, 37.683659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357101, 33.272343, 37.940796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110275, 33.221600, 38.251442>,  <35.962177, 33.191154, 38.437828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110275, 33.221600, 38.251442>,  <36.357101, 33.272343, 37.940796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110275, 33.221600, 38.251442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785982, -0.147269, 0.600453,
		0.038198, 0.980927, 0.190585,
		-0.617068, -0.126861, 0.776617,
		35.925156, 33.183540, 38.484428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519787, 33.767387, 38.450859>,  <36.357101, 33.272343, 37.940796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519787, 33.767387, 38.450859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326653, 33.464073, 38.626076>,  <36.210773, 33.282085, 38.731205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326653, 33.464073, 38.626076>,  <36.519787, 33.767387, 38.450859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326653, 33.464073, 38.626076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797420, -0.173968, 0.577804,
		-0.361933, 0.628286, 0.688666,
		-0.482832, -0.758282, 0.438043,
		36.181805, 33.236588, 38.757488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610611, 34.582161, 38.698051>,  <36.519787, 33.767387, 38.450859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610611, 34.582161, 38.698051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817772, 34.910496, 38.601715>,  <36.942070, 35.107494, 38.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817772, 34.910496, 38.601715>,  <36.610611, 34.582161, 38.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817772, 34.910496, 38.601715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227515, 0.139232, 0.963769,
		0.824628, -0.553936, -0.114644,
		0.517905, 0.820835, -0.240843,
		36.973145, 35.156746, 38.529461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328289, 34.534718, 38.888611>,  <36.610611, 34.582161, 38.698051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328289, 34.534718, 38.888611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197350, 34.911541, 38.917934>,  <37.118786, 35.137634, 38.935528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197350, 34.911541, 38.917934>,  <37.328289, 34.534718, 38.888611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197350, 34.911541, 38.917934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372936, 0.057524, 0.926072,
		0.868194, 0.330488, -0.370157,
		-0.327349, 0.942055, 0.073310,
		37.099144, 35.194157, 38.939926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835693, 34.996300, 38.939087>,  <37.328289, 34.534718, 38.888611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835693, 34.996300, 38.939087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512081, 35.132435, 39.130768>,  <37.317913, 35.214115, 39.245777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512081, 35.132435, 39.130768>,  <37.835693, 34.996300, 38.939087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512081, 35.132435, 39.130768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484578, -0.075201, 0.871509,
		0.332646, 0.937290, -0.104082,
		-0.809030, 0.340340, 0.479206,
		37.269371, 35.234535, 39.274529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013607, 35.547073, 39.327641>,  <37.835693, 34.996300, 38.939087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013607, 35.547073, 39.327641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687370, 35.399090, 39.505604>,  <37.491631, 35.310299, 39.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687370, 35.399090, 39.505604>,  <38.013607, 35.547073, 39.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687370, 35.399090, 39.505604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502483, -0.071561, 0.861621,
		-0.286930, 0.926286, 0.244265,
		-0.815587, -0.369963, 0.444910,
		37.442696, 35.288101, 39.639076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237904, 35.385796, 39.967972>,  <38.013607, 35.547073, 39.327641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237904, 35.385796, 39.967972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897911, 35.175385, 39.979424>,  <37.693916, 35.049137, 39.986294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897911, 35.175385, 39.979424>,  <38.237904, 35.385796, 39.967972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897911, 35.175385, 39.979424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222599, -0.309366, 0.924522,
		-0.477466, 0.792204, 0.380050,
		-0.849985, -0.526027, 0.028632,
		37.642914, 35.017578, 39.988014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973351, 35.485546, 40.605892>,  <38.237904, 35.385796, 39.967972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973351, 35.485546, 40.605892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822762, 35.140415, 40.470959>,  <37.732407, 34.933334, 40.389999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822762, 35.140415, 40.470959>,  <37.973351, 35.485546, 40.605892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822762, 35.140415, 40.470959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048254, -0.345367, 0.937227,
		-0.925171, 0.369117, 0.088386,
		-0.376472, -0.862829, -0.337334,
		37.709820, 34.881565, 40.369759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249001, 35.360672, 40.814632>,  <37.973351, 35.485546, 40.605892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249001, 35.360672, 40.814632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486473, 35.039719, 40.790260>,  <37.628956, 34.847145, 40.775635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486473, 35.039719, 40.790260>,  <37.249001, 35.360672, 40.814632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486473, 35.039719, 40.790260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337522, -0.317039, 0.886321,
		-0.730491, -0.505630, -0.459045,
		0.593685, -0.802387, -0.060933,
		37.664577, 34.799004, 40.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807232, 34.664345, 40.825874>,  <37.249001, 35.360672, 40.814632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807232, 34.664345, 40.825874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183815, 34.621330, 40.953678>,  <37.409767, 34.595520, 41.030361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183815, 34.621330, 40.953678>,  <36.807232, 34.664345, 40.825874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183815, 34.621330, 40.953678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336472, -0.240906, 0.910357,
		-0.020925, -0.964572, -0.262987,
		0.941461, -0.107537, 0.319511,
		37.466251, 34.589069, 41.049530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882629, 34.393726, 40.163380>,  <36.807232, 34.664345, 40.825874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882629, 34.393726, 40.163380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049210, 34.751495, 40.228603>,  <37.149158, 34.966156, 40.267738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049210, 34.751495, 40.228603>,  <36.882629, 34.393726, 40.163380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049210, 34.751495, 40.228603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464238, 0.363406, -0.807724,
		-0.781700, 0.260676, 0.566562,
		0.416447, 0.894418, 0.163058,
		37.174145, 35.019821, 40.277519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359097, 34.836399, 40.075363>,  <36.882629, 34.393726, 40.163380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359097, 34.836399, 40.075363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702145, 35.005730, 39.958557>,  <36.907974, 35.107327, 39.888474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702145, 35.005730, 39.958557>,  <36.359097, 34.836399, 40.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702145, 35.005730, 39.958557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431221, 0.282536, -0.856868,
		-0.280231, 0.860795, 0.424857,
		0.857624, 0.423328, -0.292017,
		36.959431, 35.132729, 39.870953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104683, 35.447842, 39.891514>,  <36.359097, 34.836399, 40.075363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104683, 35.447842, 39.891514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445953, 35.356331, 39.704002>,  <36.650715, 35.301422, 39.591496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445953, 35.356331, 39.704002>,  <36.104683, 35.447842, 39.891514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445953, 35.356331, 39.704002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459579, 0.095428, -0.882995,
		0.246748, 0.968789, -0.023726,
		0.853172, -0.228781, -0.468782,
		36.701904, 35.287697, 39.563370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136482, 35.915970, 39.290115>,  <36.104683, 35.447842, 39.891514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136482, 35.915970, 39.290115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361145, 35.595890, 39.206001>,  <36.495945, 35.403843, 39.155533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361145, 35.595890, 39.206001>,  <36.136482, 35.915970, 39.290115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361145, 35.595890, 39.206001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386341, -0.028905, -0.921903,
		0.731627, 0.599038, -0.325384,
		0.561660, -0.800198, -0.210285,
		36.529644, 35.355831, 39.142918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567211, 36.160282, 38.860355>,  <36.136482, 35.915970, 39.290115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567211, 36.160282, 38.860355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521343, 35.767345, 38.801216>,  <36.493824, 35.531582, 38.765732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521343, 35.767345, 38.801216>,  <36.567211, 36.160282, 38.860355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521343, 35.767345, 38.801216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276254, 0.174490, -0.945112,
		0.954220, -0.067529, -0.291383,
		-0.114666, -0.982341, -0.147847,
		36.486942, 35.472645, 38.756863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059998, 35.921410, 38.348404>,  <36.567211, 36.160282, 38.860355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059998, 35.921410, 38.348404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728889, 35.698624, 38.375473>,  <36.530224, 35.564953, 38.391716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728889, 35.698624, 38.375473>,  <37.059998, 35.921410, 38.348404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728889, 35.698624, 38.375473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255581, 0.266943, -0.929204,
		0.499473, -0.786464, -0.363319,
		-0.827771, -0.556970, 0.067674,
		36.480556, 35.531532, 38.395775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935555, 35.481560, 37.681923>,  <37.059998, 35.921410, 38.348404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935555, 35.481560, 37.681923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609673, 35.563210, 37.899029>,  <36.414143, 35.612198, 38.029293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609673, 35.563210, 37.899029>,  <36.935555, 35.481560, 37.681923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609673, 35.563210, 37.899029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515394, 0.174084, -0.839085,
		-0.265764, -0.963342, -0.036622,
		-0.814701, 0.204123, 0.542766,
		36.365261, 35.624447, 38.061859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531410, 35.130592, 37.213253>,  <36.935555, 35.481560, 37.681923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531410, 35.130592, 37.213253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353062, 35.376938, 37.473072>,  <36.246052, 35.524746, 37.628963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353062, 35.376938, 37.473072>,  <36.531410, 35.130592, 37.213253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353062, 35.376938, 37.473072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559372, 0.374805, -0.739341,
		-0.698784, -0.692992, 0.177379,
		-0.445874, 0.615860, 0.649547,
		36.219299, 35.561695, 37.667934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857830, 35.195660, 37.035549>,  <36.531410, 35.130592, 37.213253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857830, 35.195660, 37.035549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904415, 35.537354, 37.238220>,  <35.932365, 35.742371, 37.359825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904415, 35.537354, 37.238220>,  <35.857830, 35.195660, 37.035549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904415, 35.537354, 37.238220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376058, 0.510098, -0.773551,
		-0.919248, -0.100450, 0.380649,
		0.116465, 0.854230, 0.506682,
		35.939354, 35.793621, 37.390224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244595, 35.486641, 36.984123>,  <35.857830, 35.195660, 37.035549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244595, 35.486641, 36.984123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538620, 35.753613, 37.031822>,  <35.715034, 35.913795, 37.060440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538620, 35.753613, 37.031822>,  <35.244595, 35.486641, 36.984123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538620, 35.753613, 37.031822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414721, 0.581757, -0.699690,
		-0.536364, 0.464864, 0.704426,
		0.735065, 0.667428, 0.119245,
		35.759140, 35.953842, 37.067596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860638, 35.449627, 36.355389>,  <35.244595, 35.486641, 36.984123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860638, 35.449627, 36.355389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252129, 35.484879, 36.429501>,  <35.487022, 35.506027, 36.473969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252129, 35.484879, 36.429501>,  <34.860638, 35.449627, 36.355389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252129, 35.484879, 36.429501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056373, 0.752789, -0.655843,
		-0.197270, 0.652336, 0.731807,
		0.978727, 0.088124, 0.185277,
		35.545746, 35.511314, 36.485085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041565, 36.072472, 36.430046>,  <34.860638, 35.449627, 36.355389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041565, 36.072472, 36.430046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410084, 35.966064, 36.316597>,  <35.631195, 35.902222, 36.248528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410084, 35.966064, 36.316597>,  <35.041565, 36.072472, 36.430046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410084, 35.966064, 36.316597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007748, 0.741799, -0.670577,
		0.388775, 0.615605, 0.685481,
		0.921300, -0.266015, -0.283624,
		35.686474, 35.886261, 36.231510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445309, 36.643425, 36.310181>,  <35.041565, 36.072472, 36.430046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445309, 36.643425, 36.310181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630150, 36.355595, 36.102848>,  <35.741055, 36.182896, 35.978447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630150, 36.355595, 36.102848>,  <35.445309, 36.643425, 36.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630150, 36.355595, 36.102848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030699, 0.597108, -0.801573,
		0.886297, 0.354494, 0.298013,
		0.462099, -0.719581, -0.518332,
		35.768780, 36.139721, 35.947350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761272, 36.818844, 35.646923>,  <35.445309, 36.643425, 36.310181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761272, 36.818844, 35.646923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032856, 36.534286, 35.719524>,  <36.195805, 36.363552, 35.763084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032856, 36.534286, 35.719524>,  <35.761272, 36.818844, 35.646923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032856, 36.534286, 35.719524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327947, 0.072679, -0.941896,
		0.656863, 0.699030, 0.282644,
		0.678956, -0.711389, 0.181504,
		36.236542, 36.320869, 35.773975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461121, 37.034073, 35.500385>,  <35.761272, 36.818844, 35.646923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461121, 37.034073, 35.500385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371136, 36.650772, 35.429794>,  <36.317146, 36.420792, 35.387440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371136, 36.650772, 35.429794>,  <36.461121, 37.034073, 35.500385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371136, 36.650772, 35.429794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329266, 0.095700, -0.939375,
		0.917048, -0.269431, 0.293991,
		-0.224961, -0.958253, -0.176476,
		36.303646, 36.363297, 35.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022320, 36.678783, 35.047974>,  <36.461121, 37.034073, 35.500385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022320, 36.678783, 35.047974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678066, 36.476799, 35.021667>,  <36.471516, 36.355610, 35.005886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678066, 36.476799, 35.021667>,  <37.022320, 36.678783, 35.047974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678066, 36.476799, 35.021667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084924, -0.014992, -0.996275,
		0.502094, -0.863012, 0.055786,
		-0.860633, -0.504961, -0.065763,
		36.419876, 36.325310, 35.001938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 36.190243, 34.553360>,  <37.022320, 36.678783, 35.047974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161320, 36.190243, 34.553360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765400, 36.247215, 34.551914>,  <36.527847, 36.281399, 34.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765400, 36.247215, 34.551914>,  <37.161320, 36.190243, 34.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765400, 36.247215, 34.551914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015263, -0.131193, -0.991239,
		-0.141682, -0.981068, 0.132028,
		-0.989795, 0.142455, -0.003614,
		36.468460, 36.289948, 34.550831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937881, 35.704239, 34.103565>,  <37.161320, 36.190243, 34.553360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937881, 35.704239, 34.103565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624046, 35.952095, 34.094894>,  <36.435745, 36.100807, 34.089691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624046, 35.952095, 34.094894>,  <36.937881, 35.704239, 34.103565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624046, 35.952095, 34.094894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105706, -0.168133, -0.980080,
		-0.610938, -0.766670, 0.197415,
		-0.784590, 0.619636, -0.021677,
		36.388668, 36.137985, 34.088390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415936, 35.397087, 33.705704>,  <36.937881, 35.704239, 34.103565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415936, 35.397087, 33.705704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344822, 35.790207, 33.685707>,  <36.302155, 36.026077, 33.673710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344822, 35.790207, 33.685707>,  <36.415936, 35.397087, 33.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344822, 35.790207, 33.685707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165634, -0.079961, -0.982940,
		-0.970030, -0.166469, 0.177000,
		-0.177782, 0.982799, -0.049992,
		36.291489, 36.085045, 33.670708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816273, 35.566730, 33.659752>,  <36.415936, 35.397087, 33.705704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816273, 35.566730, 33.659752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013264, 35.851608, 33.459652>,  <36.131458, 36.022533, 33.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013264, 35.851608, 33.459652>,  <35.816273, 35.566730, 33.659752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013264, 35.851608, 33.459652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221337, -0.453401, -0.863387,
		-0.841711, 0.535921, -0.065654,
		0.492475, 0.712191, -0.500252,
		36.161007, 36.065266, 33.309578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408451, 35.740669, 33.199806>,  <35.816273, 35.566730, 33.659752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408451, 35.740669, 33.199806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783321, 35.810844, 33.079189>,  <36.008244, 35.852951, 33.006821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783321, 35.810844, 33.079189>,  <35.408451, 35.740669, 33.199806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783321, 35.810844, 33.079189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165932, -0.536156, -0.827650,
		-0.306874, 0.825687, -0.473360,
		0.937174, 0.175438, -0.301540,
		36.064472, 35.863476, 32.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387554, 36.036831, 32.482353>,  <35.408451, 35.740669, 33.199806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387554, 36.036831, 32.482353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 35.838474, 32.571476>,  <35.924717, 35.719460, 32.624950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 35.838474, 32.571476>,  <35.387554, 36.036831, 32.482353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723282, 35.838474, 32.571476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079835, -0.517819, -0.851757,
		0.537751, 0.697105, -0.474203,
		0.839315, -0.495891, 0.222804,
		35.975075, 35.689709, 32.638317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608795, 35.469990, 31.970903>,  <35.387554, 36.036831, 32.482353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608795, 35.469990, 31.970903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824722, 35.207005, 32.181175>,  <35.954277, 35.049213, 32.307339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824722, 35.207005, 32.181175>,  <35.608795, 35.469990, 31.970903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824722, 35.207005, 32.181175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099546, -0.570245, -0.815421,
		0.835877, 0.492506, -0.242378,
		0.539814, -0.657464, 0.525682,
		35.986668, 35.009766, 32.338879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360870, 35.273712, 31.642750>,  <35.608795, 35.469990, 31.970903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360870, 35.273712, 31.642750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224190, 34.970047, 31.864347>,  <36.142181, 34.787849, 31.997307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224190, 34.970047, 31.864347>,  <36.360870, 35.273712, 31.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224190, 34.970047, 31.864347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098973, -0.557130, -0.824506,
		0.934581, -0.336568, 0.115237,
		-0.341705, -0.759162, 0.553994,
		36.121677, 34.742298, 32.030544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831188, 34.707638, 31.596848>,  <36.360870, 35.273712, 31.642750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831188, 34.707638, 31.596848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436352, 34.673443, 31.651031>,  <36.199451, 34.652927, 31.683542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436352, 34.673443, 31.651031>,  <36.831188, 34.707638, 31.596848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436352, 34.673443, 31.651031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107852, -0.270536, -0.956649,
		0.118430, -0.958906, 0.257823,
		-0.987088, -0.085490, 0.135459,
		36.140224, 34.647797, 31.691669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525467, 34.075947, 31.429960>,  <36.831188, 34.707638, 31.596848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525467, 34.075947, 31.429960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254364, 34.339382, 31.299175>,  <36.091702, 34.497444, 31.220705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254364, 34.339382, 31.299175>,  <36.525467, 34.075947, 31.429960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254364, 34.339382, 31.299175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066556, -0.497797, -0.864736,
		-0.732269, -0.564318, 0.381218,
		-0.677755, 0.658592, -0.326963,
		36.051037, 34.536961, 31.201086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035957, 33.719772, 31.134253>,  <36.525467, 34.075947, 31.429960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035957, 33.719772, 31.134253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935352, 34.073566, 30.977060>,  <35.874989, 34.285843, 30.882746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935352, 34.073566, 30.977060>,  <36.035957, 33.719772, 31.134253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935352, 34.073566, 30.977060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240621, -0.450425, -0.859779,
		-0.937467, -0.121685, 0.326111,
		-0.251511, 0.884483, -0.392979,
		35.859898, 34.338913, 30.859167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530598, 33.567764, 30.815071>,  <36.035957, 33.719772, 31.134253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530598, 33.567764, 30.815071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619202, 33.912285, 30.632164>,  <35.672363, 34.118996, 30.522419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619202, 33.912285, 30.632164>,  <35.530598, 33.567764, 30.815071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619202, 33.912285, 30.632164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037855, -0.476160, -0.878543,
		-0.974423, 0.177295, -0.138079,
		0.221509, 0.861300, -0.457270,
		35.685654, 34.170673, 30.494984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990803, 33.628910, 30.322895>,  <35.530598, 33.567764, 30.815071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990803, 33.628910, 30.322895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314812, 33.821754, 30.189371>,  <35.509216, 33.937462, 30.109257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314812, 33.821754, 30.189371>,  <34.990803, 33.628910, 30.322895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314812, 33.821754, 30.189371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042112, -0.519962, -0.853151,
		-0.584880, 0.705132, -0.400880,
		0.810026, 0.482109, -0.333810,
		35.557819, 33.966389, 30.089228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894409, 33.880077, 29.594261>,  <34.990803, 33.628910, 30.322895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894409, 33.880077, 29.594261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294155, 33.880024, 29.608505>,  <35.534004, 33.879993, 29.617052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294155, 33.880024, 29.608505>,  <34.894409, 33.880077, 29.594261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294155, 33.880024, 29.608505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031223, -0.477791, -0.877918,
		0.017128, 0.878473, -0.477484,
		0.999366, -0.000129, 0.035612,
		35.593964, 33.879986, 29.619188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122845, 34.017925, 28.905312>,  <34.894409, 33.880077, 29.594261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122845, 34.017925, 28.905312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441151, 33.843658, 29.073574>,  <35.632133, 33.739098, 29.174532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441151, 33.843658, 29.073574>,  <35.122845, 34.017925, 28.905312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441151, 33.843658, 29.073574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179992, -0.493078, -0.851162,
		0.578238, 0.753041, -0.313958,
		0.795766, -0.435665, 0.420658,
		35.679882, 33.712959, 29.199772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703037, 34.024723, 28.440508>,  <35.122845, 34.017925, 28.905312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703037, 34.024723, 28.440508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796200, 33.716827, 28.678247>,  <35.852097, 33.532089, 28.820890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796200, 33.716827, 28.678247>,  <35.703037, 34.024723, 28.440508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796200, 33.716827, 28.678247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321561, -0.515824, -0.794055,
		0.917797, 0.376062, 0.127379,
		0.232909, -0.769742, 0.594349,
		35.866074, 33.485905, 28.856552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440678, 33.746540, 28.146614>,  <35.703037, 34.024723, 28.440508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440678, 33.746540, 28.146614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245277, 33.469574, 28.359005>,  <36.128036, 33.303394, 28.486439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245277, 33.469574, 28.359005>,  <36.440678, 33.746540, 28.146614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245277, 33.469574, 28.359005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042534, -0.626695, -0.778103,
		0.871528, -0.357517, 0.335590,
		-0.488498, -0.692412, 0.530976,
		36.098728, 33.261848, 28.518297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853401, 33.189610, 28.084213>,  <36.440678, 33.746540, 28.146614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853401, 33.189610, 28.084213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520035, 33.012493, 28.216488>,  <36.320015, 32.906223, 28.295853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520035, 33.012493, 28.216488>,  <36.853401, 33.189610, 28.084213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520035, 33.012493, 28.216488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155090, -0.761712, -0.629081,
		0.530442, -0.472999, 0.703494,
		-0.833414, -0.442795, 0.330686,
		36.270012, 32.879654, 28.315693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998260, 32.504898, 28.244024>,  <36.853401, 33.189610, 28.084213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998260, 32.504898, 28.244024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603271, 32.484848, 28.184172>,  <36.366280, 32.472816, 28.148260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603271, 32.484848, 28.184172>,  <36.998260, 32.504898, 28.244024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603271, 32.484848, 28.184172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138595, -0.728854, -0.670495,
		-0.075450, -0.682832, 0.726669,
		-0.987471, -0.050124, -0.149629,
		36.307030, 32.469810, 28.139282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975189, 31.793425, 28.218172>,  <36.998260, 32.504898, 28.244024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975189, 31.793425, 28.218172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655907, 31.972422, 28.056871>,  <36.464336, 32.079819, 27.960091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655907, 31.972422, 28.056871>,  <36.975189, 31.793425, 28.218172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655907, 31.972422, 28.056871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048983, -0.618998, -0.783863,
		-0.600377, -0.645444, 0.472175,
		-0.798215, 0.447485, -0.403248,
		36.416443, 32.106670, 27.935896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450710, 31.298433, 27.983212>,  <36.975189, 31.793425, 28.218172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450710, 31.298433, 27.983212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368141, 31.627438, 27.771225>,  <36.318600, 31.824841, 27.644033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368141, 31.627438, 27.771225>,  <36.450710, 31.298433, 27.983212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368141, 31.627438, 27.771225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228853, -0.486023, -0.843450,
		-0.951322, -0.295395, -0.087906,
		-0.206426, 0.822510, -0.529967,
		36.306213, 31.874191, 27.612234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162975, 30.982489, 27.466665>,  <36.450710, 31.298433, 27.983212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162975, 30.982489, 27.466665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258282, 31.345377, 27.327997>,  <36.315464, 31.563110, 27.244797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258282, 31.345377, 27.327997>,  <36.162975, 30.982489, 27.466665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258282, 31.345377, 27.327997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181191, -0.392207, -0.901856,
		-0.954149, 0.152067, -0.257830,
		0.238265, 0.907220, -0.346671,
		36.329762, 31.617542, 27.223995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830067, 31.008690, 26.788687>,  <36.162975, 30.982489, 27.466665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830067, 31.008690, 26.788687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094810, 31.307962, 26.770065>,  <36.253654, 31.487526, 26.758892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094810, 31.307962, 26.770065>,  <35.830067, 31.008690, 26.788687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094810, 31.307962, 26.770065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169312, -0.209698, -0.962995,
		-0.730259, 0.629484, -0.265467,
		0.661858, 0.748182, -0.046554,
		36.293369, 31.532417, 26.756100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626553, 31.445545, 26.201950>,  <35.830067, 31.008690, 26.788687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626553, 31.445545, 26.201950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011299, 31.534189, 26.266079>,  <36.242146, 31.587376, 26.304556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011299, 31.534189, 26.266079>,  <35.626553, 31.445545, 26.201950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011299, 31.534189, 26.266079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159271, 0.022721, -0.986973,
		-0.222366, 0.974870, -0.013442,
		0.961866, 0.221611, 0.160321,
		36.299858, 31.600672, 26.314175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826038, 32.107250, 25.803429>,  <35.626553, 31.445545, 26.201950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826038, 32.107250, 25.803429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165970, 31.907297, 25.870260>,  <36.369926, 31.787325, 25.910358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165970, 31.907297, 25.870260>,  <35.826038, 32.107250, 25.803429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165970, 31.907297, 25.870260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234926, 0.075488, -0.969078,
		0.471812, 0.862798, 0.181587,
		0.849826, -0.499881, 0.167077,
		36.420918, 31.757332, 25.920383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196800, 32.525700, 25.441174>,  <35.826038, 32.107250, 25.803429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196800, 32.525700, 25.441174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361210, 32.162346, 25.471872>,  <36.459854, 31.944332, 25.490292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361210, 32.162346, 25.471872>,  <36.196800, 32.525700, 25.441174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361210, 32.162346, 25.471872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207218, 0.011115, -0.978232,
		0.887762, 0.417979, 0.192803,
		0.411023, -0.908389, 0.076746,
		36.484516, 31.889830, 25.494896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809811, 32.541275, 25.112514>,  <36.196800, 32.525700, 25.441174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809811, 32.541275, 25.112514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765823, 32.146057, 25.155720>,  <36.739429, 31.908926, 25.181643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765823, 32.146057, 25.155720>,  <36.809811, 32.541275, 25.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765823, 32.146057, 25.155720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297223, -0.136389, -0.945017,
		0.948454, -0.071822, 0.308670,
		-0.109972, -0.988048, 0.108012,
		36.732830, 31.849642, 25.188124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383846, 32.213417, 24.703068>,  <36.809811, 32.541275, 25.112514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383846, 32.213417, 24.703068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106346, 31.926846, 24.732563>,  <36.939846, 31.754902, 24.750261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106346, 31.926846, 24.732563>,  <37.383846, 32.213417, 24.703068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106346, 31.926846, 24.732563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168488, -0.260987, -0.950525,
		0.700232, -0.647001, 0.301769,
		-0.693748, -0.716433, 0.073739,
		36.898220, 31.711916, 24.754684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676651, 31.530100, 24.442387>,  <37.383846, 32.213417, 24.703068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676651, 31.530100, 24.442387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277843, 31.513927, 24.416105>,  <37.038559, 31.504223, 24.400337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277843, 31.513927, 24.416105>,  <37.676651, 31.530100, 24.442387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277843, 31.513927, 24.416105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069721, -0.107641, -0.991742,
		0.033025, -0.993367, 0.110139,
		-0.997020, -0.040431, -0.065704,
		36.978737, 31.501799, 24.396395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543301, 30.975269, 24.011700>,  <37.676651, 31.530100, 24.442387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543301, 30.975269, 24.011700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216259, 31.205465, 24.019039>,  <37.020035, 31.343584, 24.023443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216259, 31.205465, 24.019039>,  <37.543301, 30.975269, 24.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216259, 31.205465, 24.019039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027713, -0.007498, -0.999588,
		-0.575118, -0.817773, 0.022079,
		-0.817601, 0.575492, 0.018350,
		36.970978, 31.378113, 24.024544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180603, 30.787970, 23.438251>,  <37.543301, 30.975269, 24.011700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180603, 30.787970, 23.438251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019291, 31.144941, 23.519184>,  <36.922504, 31.359125, 23.567743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019291, 31.144941, 23.519184>,  <37.180603, 30.787970, 23.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019291, 31.144941, 23.519184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079323, 0.254370, -0.963849,
		-0.911633, -0.372649, -0.173372,
		-0.403277, 0.892429, 0.202332,
		36.898308, 31.412670, 23.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645378, 30.863924, 22.880388>,  <37.180603, 30.787970, 23.438251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645378, 30.863924, 22.880388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780014, 31.210289, 23.028391>,  <36.860794, 31.418108, 23.117193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780014, 31.210289, 23.028391>,  <36.645378, 30.863924, 22.880388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780014, 31.210289, 23.028391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047264, 0.376905, -0.925045,
		-0.940466, 0.328845, 0.085934,
		0.336585, 0.865912, 0.370009,
		36.880989, 31.470062, 23.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333778, 31.357950, 22.465837>,  <36.645378, 30.863924, 22.880388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333778, 31.357950, 22.465837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653629, 31.531729, 22.631655>,  <36.845539, 31.635996, 22.731146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653629, 31.531729, 22.631655>,  <36.333778, 31.357950, 22.465837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653629, 31.531729, 22.631655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217525, 0.433890, -0.874312,
		-0.559710, 0.789300, 0.252448,
		0.799630, 0.434447, 0.414545,
		36.893517, 31.662064, 22.756018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327667, 31.979551, 22.113146>,  <36.333778, 31.357950, 22.465837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327667, 31.979551, 22.113146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683273, 31.984137, 22.296236>,  <36.896637, 31.986887, 22.406090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683273, 31.984137, 22.296236>,  <36.327667, 31.979551, 22.113146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683273, 31.984137, 22.296236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376182, 0.551611, -0.744454,
		-0.261021, 0.834023, 0.486081,
		0.889019, 0.011463, 0.457726,
		36.949978, 31.987576, 22.433554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589745, 32.744766, 22.085051>,  <36.327667, 31.979551, 22.113146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589745, 32.744766, 22.085051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869411, 32.462742, 22.132471>,  <37.037212, 32.293526, 22.160923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869411, 32.462742, 22.132471>,  <36.589745, 32.744766, 22.085051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869411, 32.462742, 22.132471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586216, 0.470412, -0.659594,
		0.409286, 0.530662, 0.742214,
		0.699168, -0.705060, 0.118550,
		37.079163, 32.251225, 22.168036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144295, 33.153084, 21.917837>,  <36.589745, 32.744766, 22.085051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144295, 33.153084, 21.917837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263538, 32.771420, 21.907116>,  <37.335083, 32.542423, 21.900684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263538, 32.771420, 21.907116>,  <37.144295, 33.153084, 21.917837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263538, 32.771420, 21.907116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781124, 0.259991, -0.567671,
		0.548614, 0.148292, 0.822820,
		0.298107, -0.954156, -0.026801,
		37.352970, 32.485172, 21.899076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823502, 33.215736, 22.035942>,  <37.144295, 33.153084, 21.917837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823502, 33.215736, 22.035942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754841, 32.868187, 21.850214>,  <37.713642, 32.659657, 21.738777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754841, 32.868187, 21.850214>,  <37.823502, 33.215736, 22.035942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754841, 32.868187, 21.850214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623715, 0.268978, -0.733915,
		0.762571, -0.415582, 0.495759,
		-0.171654, -0.868874, -0.464319,
		37.703346, 32.607525, 21.710918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439251, 32.992401, 21.743286>,  <37.823502, 33.215736, 22.035942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439251, 32.992401, 21.743286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164825, 32.773808, 21.551172>,  <38.000172, 32.642654, 21.435904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164825, 32.773808, 21.551172>,  <38.439251, 32.992401, 21.743286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164825, 32.773808, 21.551172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469842, 0.171238, -0.865983,
		0.555485, -0.819779, 0.139279,
		-0.686065, -0.546479, -0.480287,
		37.959007, 32.609863, 21.407085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820187, 32.568825, 21.186064>,  <38.439251, 32.992401, 21.743286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820187, 32.568825, 21.186064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442150, 32.556450, 21.055931>,  <38.215328, 32.549026, 20.977852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442150, 32.556450, 21.055931>,  <38.820187, 32.568825, 21.186064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442150, 32.556450, 21.055931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323287, 0.057042, -0.944580,
		0.047752, -0.997893, -0.043919,
		-0.945095, -0.030907, -0.325330,
		38.158623, 32.547169, 20.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779152, 32.076263, 20.623325>,  <38.820187, 32.568825, 21.186064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779152, 32.076263, 20.623325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475052, 32.331100, 20.572535>,  <38.292591, 32.484005, 20.542059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475052, 32.331100, 20.572535>,  <38.779152, 32.076263, 20.623325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475052, 32.331100, 20.572535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338655, 0.221875, -0.914377,
		-0.554373, -0.738159, -0.384437,
		-0.760252, 0.637098, -0.126979,
		38.246975, 32.522228, 20.534441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684002, 32.046436, 19.920567>,  <38.779152, 32.076263, 20.623325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684002, 32.046436, 19.920567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487427, 32.383961, 20.006802>,  <38.369480, 32.586475, 20.058542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487427, 32.383961, 20.006802>,  <38.684002, 32.046436, 19.920567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487427, 32.383961, 20.006802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235343, 0.367001, -0.899958,
		-0.838512, -0.391536, -0.378942,
		-0.491438, 0.843806, 0.215589,
		38.339996, 32.637104, 20.071478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189392, 32.207645, 19.389341>,  <38.684002, 32.046436, 19.920567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189392, 32.207645, 19.389341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271648, 32.554031, 19.571686>,  <38.321003, 32.761864, 19.681093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271648, 32.554031, 19.571686>,  <38.189392, 32.207645, 19.389341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271648, 32.554031, 19.571686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097527, 0.445365, -0.890022,
		-0.973757, 0.227480, 0.007128,
		0.205637, 0.865969, 0.455862,
		38.333340, 32.813824, 19.708445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789288, 32.742119, 19.044378>,  <38.189392, 32.207645, 19.389341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789288, 32.742119, 19.044378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085155, 32.946407, 19.219671>,  <38.262676, 33.068981, 19.324848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085155, 32.946407, 19.219671>,  <37.789288, 32.742119, 19.044378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085155, 32.946407, 19.219671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168165, 0.490266, -0.855196,
		-0.651618, 0.706260, 0.276750,
		0.739672, 0.510722, 0.438235,
		38.307056, 33.099625, 19.351141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760330, 33.376884, 18.713816>,  <37.789288, 32.742119, 19.044378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760330, 33.376884, 18.713816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114738, 33.375244, 18.899267>,  <38.327385, 33.374260, 19.010538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114738, 33.375244, 18.899267>,  <37.760330, 33.376884, 18.713816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114738, 33.375244, 18.899267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392230, 0.539842, -0.744799,
		-0.247233, 0.841756, 0.479918,
		0.886020, -0.004099, 0.463629,
		38.380543, 33.374016, 19.038357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036663, 34.072300, 18.755041>,  <37.760330, 33.376884, 18.713816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036663, 34.072300, 18.755041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356148, 33.834137, 18.789808>,  <38.547840, 33.691238, 18.810669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356148, 33.834137, 18.789808>,  <38.036663, 34.072300, 18.755041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356148, 33.834137, 18.789808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432954, 0.468356, -0.770190,
		0.417866, 0.652791, 0.631864,
		0.798711, -0.595405, 0.086918,
		38.595760, 33.655514, 18.815884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644405, 34.538372, 18.597202>,  <38.036663, 34.072300, 18.755041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644405, 34.538372, 18.597202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746830, 34.156029, 18.539558>,  <38.808285, 33.926624, 18.504972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746830, 34.156029, 18.539558>,  <38.644405, 34.538372, 18.597202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746830, 34.156029, 18.539558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451888, 0.250152, -0.856283,
		0.854535, 0.154141, 0.495996,
		0.256063, -0.955858, -0.144109,
		38.823650, 33.869270, 18.496326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251305, 34.729149, 18.302744>,  <38.644405, 34.538372, 18.597202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251305, 34.729149, 18.302744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173885, 34.347206, 18.212603>,  <39.127434, 34.118038, 18.158518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173885, 34.347206, 18.212603>,  <39.251305, 34.729149, 18.302744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173885, 34.347206, 18.212603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434741, 0.122445, -0.892192,
		0.879511, -0.270652, 0.391418,
		-0.193546, -0.954859, -0.225355,
		39.115822, 34.060749, 18.144997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853874, 34.465374, 18.022058>,  <39.251305, 34.729149, 18.302744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853874, 34.465374, 18.022058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594257, 34.196083, 17.880352>,  <39.438488, 34.034508, 17.795328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594257, 34.196083, 17.880352>,  <39.853874, 34.465374, 18.022058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594257, 34.196083, 17.880352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490763, -0.014707, -0.871169,
		0.581285, -0.739289, 0.339941,
		-0.649045, -0.673228, -0.354267,
		39.399544, 33.994114, 17.774073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261860, 33.946518, 17.732548>,  <39.853874, 34.465374, 18.022058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261860, 33.946518, 17.732548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895325, 33.910938, 17.576391>,  <39.675404, 33.889591, 17.482697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895325, 33.910938, 17.576391>,  <40.261860, 33.946518, 17.732548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895325, 33.910938, 17.576391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396217, -0.060925, -0.916134,
		0.057706, -0.994171, 0.091072,
		-0.916342, -0.088951, -0.390391,
		39.620422, 33.884254, 17.459274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297485, 33.453388, 17.225719>,  <40.261860, 33.946518, 17.732548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297485, 33.453388, 17.225719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985092, 33.675419, 17.111210>,  <39.797657, 33.808636, 17.042505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985092, 33.675419, 17.111210>,  <40.297485, 33.453388, 17.225719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985092, 33.675419, 17.111210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367690, 0.038132, -0.929166,
		-0.504840, -0.830926, -0.233876,
		-0.780987, 0.555075, -0.286272,
		39.750797, 33.841942, 17.025328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118286, 33.224998, 16.510368>,  <40.297485, 33.453388, 17.225719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118286, 33.224998, 16.510368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973381, 33.589260, 16.589832>,  <39.886436, 33.807819, 16.637510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973381, 33.589260, 16.589832>,  <40.118286, 33.224998, 16.510368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973381, 33.589260, 16.589832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493929, 0.368313, -0.787642,
		-0.790441, -0.187212, -0.583228,
		-0.362267, 0.910658, 0.198660,
		39.864700, 33.862457, 16.649431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549267, 33.450436, 16.181515>,  <40.118286, 33.224998, 16.510368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549267, 33.450436, 16.181515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812073, 33.737007, 16.275381>,  <39.969757, 33.908951, 16.331701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812073, 33.737007, 16.275381>,  <39.549267, 33.450436, 16.181515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812073, 33.737007, 16.275381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159882, 0.171778, -0.972075,
		-0.736732, 0.676183, -0.001683,
		0.657011, 0.716428, 0.234664,
		40.009174, 33.951935, 16.345779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446014, 33.982140, 15.682755>,  <39.549267, 33.450436, 16.181515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446014, 33.982140, 15.682755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818100, 34.029068, 15.821854>,  <40.041351, 34.057224, 15.905313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818100, 34.029068, 15.821854>,  <39.446014, 33.982140, 15.682755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818100, 34.029068, 15.821854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355846, -0.056438, -0.932839,
		-0.089817, 0.991489, -0.094249,
		0.930218, 0.117322, 0.347749,
		40.097164, 34.064266, 15.926178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685120, 34.675163, 15.475501>,  <39.446014, 33.982140, 15.682755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685120, 34.675163, 15.475501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962933, 34.388885, 15.504899>,  <40.129620, 34.217117, 15.522537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962933, 34.388885, 15.504899>,  <39.685120, 34.675163, 15.475501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962933, 34.388885, 15.504899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286431, 0.181351, -0.940781,
		0.659988, 0.674453, 0.330952,
		0.694531, -0.715699, 0.073494,
		40.171291, 34.174175, 15.526947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347111, 34.999298, 15.306427>,  <39.685120, 34.675163, 15.475501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347111, 34.999298, 15.306427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351334, 34.604057, 15.245040>,  <40.353867, 34.366913, 15.208208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351334, 34.604057, 15.245040>,  <40.347111, 34.999298, 15.306427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351334, 34.604057, 15.245040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110054, 0.153691, -0.981971,
		0.993869, -0.006525, 0.110366,
		0.010555, -0.988097, -0.153467,
		40.354500, 34.307629, 15.199000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016632, 34.789993, 14.873469>,  <40.347111, 34.999298, 15.306427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016632, 34.789993, 14.873469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684597, 34.573948, 14.817982>,  <40.485378, 34.444321, 14.784689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684597, 34.573948, 14.817982>,  <41.016632, 34.789993, 14.873469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684597, 34.573948, 14.817982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002913, 0.252959, -0.967473,
		0.557632, -0.802679, -0.211550,
		-0.830083, -0.540110, -0.138719,
		40.435574, 34.411915, 14.776366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231323, 35.244370, 15.420436>,  <41.016632, 34.789993, 14.873469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231323, 35.244370, 15.420436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411686, 34.888187, 15.445025>,  <41.519905, 34.674480, 15.459779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411686, 34.888187, 15.445025>,  <41.231323, 35.244370, 15.420436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411686, 34.888187, 15.445025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639468, 0.370329, 0.673749,
		-0.622706, -0.264488, 0.736399,
		0.450908, -0.890451, 0.061474,
		41.546959, 34.621052, 15.463468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377151, 35.932659, 15.614269>,  <41.231323, 35.244370, 15.420436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377151, 35.932659, 15.614269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566113, 36.083782, 15.295748>,  <41.679489, 36.174458, 15.104635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566113, 36.083782, 15.295748>,  <41.377151, 35.932659, 15.614269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566113, 36.083782, 15.295748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056629, -0.888593, -0.455188,
		-0.879562, 0.260125, -0.398379,
		0.472403, 0.377807, -0.796303,
		41.707832, 36.197124, 15.056857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643658, 36.122845, 15.759046>,  <41.377151, 35.932659, 15.614269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643658, 36.122845, 15.759046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537491, 36.454365, 15.562009>,  <40.473789, 36.653275, 15.443787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537491, 36.454365, 15.562009>,  <40.643658, 36.122845, 15.759046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537491, 36.454365, 15.562009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505298, 0.315549, 0.803183,
		0.821113, 0.462086, 0.335037,
		-0.265419, 0.828798, -0.492593,
		40.457867, 36.703003, 15.414231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952412, 36.788914, 16.039999>,  <40.643658, 36.122845, 15.759046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952412, 36.788914, 16.039999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581020, 36.827011, 15.896413>,  <40.358185, 36.849869, 15.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581020, 36.827011, 15.896413>,  <40.952412, 36.788914, 16.039999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581020, 36.827011, 15.896413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347550, 0.117881, 0.930222,
		0.130910, 0.988450, -0.076349,
		-0.928478, 0.095241, -0.358967,
		40.302475, 36.855583, 15.788723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552216, 37.274624, 16.421890>,  <40.952412, 36.788914, 16.039999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552216, 37.274624, 16.421890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250263, 37.080563, 16.245354>,  <40.069092, 36.964127, 16.139433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250263, 37.080563, 16.245354>,  <40.552216, 37.274624, 16.421890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250263, 37.080563, 16.245354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511417, 0.014123, 0.859217,
		-0.410622, 0.874313, -0.258778,
		-0.754879, -0.485157, -0.441339,
		40.023800, 36.935017, 16.112951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720181, 37.531216, 16.396610>,  <40.552216, 37.274624, 16.421890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720181, 37.531216, 16.396610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812283, 37.144814, 16.443634>,  <39.867542, 36.912971, 16.471848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812283, 37.144814, 16.443634>,  <39.720181, 37.531216, 16.396610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812283, 37.144814, 16.443634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267859, 0.053224, 0.961987,
		-0.935541, -0.252987, -0.246498,
		0.230250, -0.966005, 0.117558,
		39.881359, 36.855011, 16.478901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424507, 37.391483, 16.989349>,  <39.720181, 37.531216, 16.396610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424507, 37.391483, 16.989349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627693, 37.048035, 16.961811>,  <39.749603, 36.841965, 16.945288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627693, 37.048035, 16.961811>,  <39.424507, 37.391483, 16.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627693, 37.048035, 16.961811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083198, -0.128457, 0.988219,
		-0.857351, -0.496252, -0.136687,
		0.507964, -0.858623, -0.068845,
		39.780083, 36.790447, 16.941158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942669, 36.992599, 17.331905>,  <39.424507, 37.391483, 16.989349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942669, 36.992599, 17.331905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277126, 36.773281, 17.337997>,  <39.477802, 36.641689, 17.341652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277126, 36.773281, 17.337997>,  <38.942669, 36.992599, 17.331905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277126, 36.773281, 17.337997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210974, -0.295853, 0.931644,
		-0.506315, -0.782201, -0.363052,
		0.836143, -0.548301, 0.015229,
		39.527969, 36.608791, 17.342566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734131, 36.482006, 17.690943>,  <38.942669, 36.992599, 17.331905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734131, 36.482006, 17.690943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133198, 36.456413, 17.700384>,  <39.372639, 36.441055, 17.706049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133198, 36.456413, 17.700384>,  <38.734131, 36.482006, 17.690943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133198, 36.456413, 17.700384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046853, -0.391521, 0.918976,
		-0.049559, -0.917942, -0.393607,
		0.997671, -0.063985, 0.023605,
		39.432499, 36.437218, 17.707466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819328, 35.875359, 18.064573>,  <38.734131, 36.482006, 17.690943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819328, 35.875359, 18.064573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171280, 36.064426, 18.084181>,  <39.382450, 36.177868, 18.095945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171280, 36.064426, 18.084181>,  <38.819328, 35.875359, 18.064573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171280, 36.064426, 18.084181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098658, -0.282603, 0.954150,
		0.464850, -0.834697, -0.295288,
		0.879875, 0.472670, 0.049019,
		39.435242, 36.206226, 18.098886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292679, 35.445774, 18.220991>,  <38.819328, 35.875359, 18.064573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292679, 35.445774, 18.220991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434982, 35.802223, 18.333656>,  <39.520363, 36.016094, 18.401257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434982, 35.802223, 18.333656>,  <39.292679, 35.445774, 18.220991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434982, 35.802223, 18.333656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121464, -0.342911, 0.931482,
		0.926653, -0.297167, -0.230232,
		0.355755, 0.891125, 0.281665,
		39.541710, 36.069561, 18.418156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774059, 35.268501, 18.739685>,  <39.292679, 35.445774, 18.220991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774059, 35.268501, 18.739685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719055, 35.660332, 18.798361>,  <39.686054, 35.895432, 18.833567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719055, 35.660332, 18.798361>,  <39.774059, 35.268501, 18.739685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719055, 35.660332, 18.798361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331371, -0.094065, 0.938800,
		0.933426, 0.177703, -0.311668,
		-0.137511, 0.979578, 0.146688,
		39.677803, 35.954205, 18.842367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324028, 35.404602, 19.224596>,  <39.774059, 35.268501, 18.739685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324028, 35.404602, 19.224596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083900, 35.722694, 19.258598>,  <39.939823, 35.913548, 19.278999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083900, 35.722694, 19.258598>,  <40.324028, 35.404602, 19.224596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083900, 35.722694, 19.258598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300139, 0.125499, 0.945604,
		0.741302, 0.593181, -0.314018,
		-0.600324, 0.795227, 0.085004,
		39.903805, 35.961262, 19.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670902, 35.877792, 19.708164>,  <40.324028, 35.404602, 19.224596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670902, 35.877792, 19.708164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283962, 35.975609, 19.734783>,  <40.051796, 36.034298, 19.750755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283962, 35.975609, 19.734783>,  <40.670902, 35.877792, 19.708164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283962, 35.975609, 19.734783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045089, -0.092339, 0.994706,
		0.249390, 0.965233, 0.078298,
		-0.967353, 0.244539, 0.066549,
		39.993755, 36.048969, 19.754747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638378, 36.311779, 20.287338>,  <40.670902, 35.877792, 19.708164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638378, 36.311779, 20.287338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259193, 36.196854, 20.232473>,  <40.031681, 36.127899, 20.199554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259193, 36.196854, 20.232473>,  <40.638378, 36.311779, 20.287338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259193, 36.196854, 20.232473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066713, -0.241995, 0.967981,
		-0.311305, 0.926763, 0.210235,
		-0.947965, -0.287312, -0.137161,
		39.974804, 36.110661, 20.191324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306660, 36.531067, 20.866890>,  <40.638378, 36.311779, 20.287338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306660, 36.531067, 20.866890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058521, 36.253426, 20.720797>,  <39.909637, 36.086842, 20.633141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058521, 36.253426, 20.720797>,  <40.306660, 36.531067, 20.866890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058521, 36.253426, 20.720797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221918, -0.291307, 0.930533,
		-0.752279, 0.658304, 0.026678,
		-0.620345, -0.694100, -0.365234,
		39.872417, 36.045197, 20.611227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631672, 36.582726, 21.283699>,  <40.306660, 36.531067, 20.866890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631672, 36.582726, 21.283699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621494, 36.221725, 21.111727>,  <39.615387, 36.005123, 21.008543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621494, 36.221725, 21.111727>,  <39.631672, 36.582726, 21.283699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621494, 36.221725, 21.111727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299077, -0.403500, 0.864720,
		-0.953889, 0.150587, -0.259650,
		-0.025447, -0.902503, -0.429932,
		39.613861, 35.950974, 20.982748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958775, 36.306839, 21.344357>,  <39.631672, 36.582726, 21.283699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958775, 36.306839, 21.344357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230839, 36.016388, 21.304111>,  <39.394077, 35.842117, 21.279964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230839, 36.016388, 21.304111>,  <38.958775, 36.306839, 21.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230839, 36.016388, 21.304111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251470, -0.360036, 0.898408,
		-0.688579, -0.585763, -0.427481,
		0.680163, -0.726124, -0.100612,
		39.434887, 35.798550, 21.273928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586136, 35.780319, 21.562326>,  <38.958775, 36.306839, 21.344357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586136, 35.780319, 21.562326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960766, 35.640232, 21.567608>,  <39.185543, 35.556179, 21.570776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960766, 35.640232, 21.567608>,  <38.586136, 35.780319, 21.562326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960766, 35.640232, 21.567608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114595, -0.270420, 0.955898,
		-0.331210, -0.896780, -0.293403,
		0.936573, -0.350225, 0.013201,
		39.241737, 35.535164, 21.571568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511395, 35.110622, 21.932793>,  <38.586136, 35.780319, 21.562326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511395, 35.110622, 21.932793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899387, 35.206654, 21.948275>,  <39.132183, 35.264271, 21.957563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899387, 35.206654, 21.948275>,  <38.511395, 35.110622, 21.932793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899387, 35.206654, 21.948275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057451, -0.380892, 0.922833,
		0.236294, -0.892908, -0.383251,
		0.969982, 0.240078, 0.038704,
		39.190380, 35.278675, 21.959887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810757, 34.496490, 22.307543>,  <38.511395, 35.110622, 21.932793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810757, 34.496490, 22.307543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048183, 34.813103, 22.365717>,  <39.190639, 35.003071, 22.400621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048183, 34.813103, 22.365717>,  <38.810757, 34.496490, 22.307543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048183, 34.813103, 22.365717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123117, -0.267900, 0.955548,
		0.795309, -0.549280, -0.256468,
		0.593571, 0.791531, 0.145438,
		39.226254, 35.050564, 22.409348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109360, 34.310780, 22.817959>,  <38.810757, 34.496490, 22.307543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109360, 34.310780, 22.817959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176521, 34.705025, 22.825619>,  <39.216820, 34.941574, 22.830215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176521, 34.705025, 22.825619>,  <39.109360, 34.310780, 22.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176521, 34.705025, 22.825619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075972, -0.006431, 0.997089,
		0.982871, -0.168874, 0.073799,
		0.167908, 0.985617, 0.019151,
		39.226894, 35.000710, 22.831364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500614, 34.477173, 23.437668>,  <39.109360, 34.310780, 22.817959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500614, 34.477173, 23.437668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353420, 34.824280, 23.304060>,  <39.265102, 35.032543, 23.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353420, 34.824280, 23.304060>,  <39.500614, 34.477173, 23.437668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353420, 34.824280, 23.304060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260808, 0.248476, 0.932866,
		0.892505, 0.430397, 0.134884,
		-0.367987, 0.867766, -0.334017,
		39.243023, 35.084610, 23.203856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795605, 34.983738, 23.873125>,  <39.500614, 34.477173, 23.437668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795605, 34.983738, 23.873125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441380, 35.115887, 23.742502>,  <39.228844, 35.195175, 23.664129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441380, 35.115887, 23.742502>,  <39.795605, 34.983738, 23.873125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441380, 35.115887, 23.742502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222668, 0.315066, 0.922579,
		0.407681, 0.889712, -0.205447,
		-0.885559, 0.330371, -0.326557,
		39.175713, 35.214996, 23.644535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580070, 35.541374, 24.382095>,  <39.795605, 34.983738, 23.873125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580070, 35.541374, 24.382095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252529, 35.472343, 24.163115>,  <39.056004, 35.430923, 24.031727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252529, 35.472343, 24.163115>,  <39.580070, 35.541374, 24.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252529, 35.472343, 24.163115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573806, 0.271415, 0.772710,
		0.015231, 0.946863, -0.321276,
		-0.818849, -0.172581, -0.547450,
		39.006874, 35.420570, 23.998880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225006, 36.089672, 24.494658>,  <39.580070, 35.541374, 24.382095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225006, 36.089672, 24.494658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962208, 35.807922, 24.387167>,  <38.804531, 35.638870, 24.322672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962208, 35.807922, 24.387167>,  <39.225006, 36.089672, 24.494658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962208, 35.807922, 24.387167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608614, 0.285185, 0.740444,
		-0.444916, 0.650016, -0.616059,
		-0.656992, -0.704378, -0.268726,
		38.765110, 35.596607, 24.306549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612343, 36.443089, 24.519156>,  <39.225006, 36.089672, 24.494658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612343, 36.443089, 24.519156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473480, 36.068108, 24.508793>,  <38.390163, 35.843121, 24.502575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473480, 36.068108, 24.508793>,  <38.612343, 36.443089, 24.519156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473480, 36.068108, 24.508793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726744, 0.251465, 0.639224,
		-0.592725, 0.240741, -0.768584,
		-0.347160, -0.937448, -0.025908,
		38.369331, 35.786873, 24.501020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912899, 36.479870, 24.444761>,  <38.612343, 36.443089, 24.519156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912899, 36.479870, 24.444761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979229, 36.120026, 24.606358>,  <38.019028, 35.904121, 24.703316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979229, 36.120026, 24.606358>,  <37.912899, 36.479870, 24.444761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979229, 36.120026, 24.606358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642109, 0.212424, 0.736595,
		-0.748463, -0.381556, -0.542419,
		0.165829, -0.899606, 0.403991,
		38.028976, 35.850143, 24.727554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205044, 36.284855, 24.681879>,  <37.912899, 36.479870, 24.444761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205044, 36.284855, 24.681879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460800, 36.044395, 24.873629>,  <37.614254, 35.900120, 24.988678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460800, 36.044395, 24.873629>,  <37.205044, 36.284855, 24.681879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460800, 36.044395, 24.873629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597232, 0.004361, 0.802057,
		-0.484248, -0.799123, -0.356238,
		0.639388, -0.601152, 0.479374,
		37.652618, 35.864052, 25.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811954, 35.671692, 24.876610>,  <37.205044, 36.284855, 24.681879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811954, 35.671692, 24.876610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131657, 35.738811, 25.107445>,  <37.323479, 35.779083, 25.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131657, 35.738811, 25.107445>,  <36.811954, 35.671692, 24.876610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131657, 35.738811, 25.107445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589793, 0.034541, 0.806815,
		0.115455, -0.985215, 0.126578,
		0.799258, 0.167806, 0.577085,
		37.371433, 35.789150, 25.280571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700581, 35.300179, 25.465399>,  <36.811954, 35.671692, 24.876610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700581, 35.300179, 25.465399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973297, 35.570347, 25.577806>,  <37.136929, 35.732449, 25.645250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973297, 35.570347, 25.577806>,  <36.700581, 35.300179, 25.465399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973297, 35.570347, 25.577806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443420, 0.076021, 0.893084,
		0.581841, -0.733507, 0.351324,
		0.681791, 0.675417, 0.281020,
		37.177834, 35.772972, 25.662113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784065, 35.193180, 26.170534>,  <36.700581, 35.300179, 25.465399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784065, 35.193180, 26.170534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954327, 35.549889, 26.109137>,  <37.056484, 35.763916, 26.072298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954327, 35.549889, 26.109137>,  <36.784065, 35.193180, 26.170534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954327, 35.549889, 26.109137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157362, 0.239993, 0.957936,
		0.891099, -0.383594, 0.242485,
		0.425653, 0.891774, -0.153494,
		37.082024, 35.817421, 26.063087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227161, 35.310268, 26.757938>,  <36.784065, 35.193180, 26.170534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227161, 35.310268, 26.757938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148514, 35.664627, 26.589876>,  <37.101326, 35.877243, 26.489038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148514, 35.664627, 26.589876>,  <37.227161, 35.310268, 26.757938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148514, 35.664627, 26.589876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150201, 0.396247, 0.905775,
		0.968906, 0.241203, 0.055151,
		-0.196622, 0.885894, -0.420156,
		37.089527, 35.930397, 26.463829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605457, 35.783035, 27.113478>,  <37.227161, 35.310268, 26.757938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605457, 35.783035, 27.113478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341274, 36.029991, 26.942537>,  <37.182762, 36.178165, 26.839973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341274, 36.029991, 26.942537>,  <37.605457, 35.783035, 27.113478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341274, 36.029991, 26.942537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144459, 0.454037, 0.879194,
		0.736834, 0.642407, -0.210686,
		-0.660459, 0.617385, -0.427351,
		37.143135, 36.215206, 26.814331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697773, 36.495148, 27.435719>,  <37.605457, 35.783035, 27.113478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697773, 36.495148, 27.435719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329887, 36.516582, 27.280149>,  <37.109158, 36.529442, 27.186808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329887, 36.516582, 27.280149>,  <37.697773, 36.495148, 27.435719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329887, 36.516582, 27.280149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296960, 0.553030, 0.778442,
		0.256801, 0.831436, -0.492715,
		-0.919711, 0.053588, -0.388922,
		37.053974, 36.532658, 27.163473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500885, 37.218746, 27.522030>,  <37.697773, 36.495148, 27.435719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500885, 37.218746, 27.522030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164978, 37.011395, 27.457449>,  <36.963432, 36.886982, 27.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164978, 37.011395, 27.457449>,  <37.500885, 37.218746, 27.522030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164978, 37.011395, 27.457449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430030, 0.453512, 0.780641,
		-0.331449, 0.724989, -0.603765,
		-0.839771, -0.518380, -0.161451,
		36.913048, 36.855881, 27.409014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878292, 37.583988, 27.664276>,  <37.500885, 37.218746, 27.522030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878292, 37.583988, 27.664276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721180, 37.216148, 27.667255>,  <36.626911, 36.995445, 27.669043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721180, 37.216148, 27.667255>,  <36.878292, 37.583988, 27.664276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721180, 37.216148, 27.667255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496854, 0.219019, 0.839742,
		-0.773859, 0.326135, -0.542935,
		-0.392783, -0.919602, 0.007448,
		36.603344, 36.940269, 27.669491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161385, 37.732449, 27.793274>,  <36.878292, 37.583988, 27.664276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161385, 37.732449, 27.793274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295509, 37.375404, 27.913815>,  <36.375984, 37.161179, 27.986139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295509, 37.375404, 27.913815>,  <36.161385, 37.732449, 27.793274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295509, 37.375404, 27.913815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529147, 0.086211, 0.844139,
		-0.779467, -0.442509, -0.443415,
		0.335312, -0.892611, 0.301351,
		36.396103, 37.107620, 28.004219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575272, 37.252300, 27.969822>,  <36.161385, 37.732449, 27.793274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575272, 37.252300, 27.969822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888439, 37.104843, 28.170279>,  <36.076340, 37.016369, 28.290552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888439, 37.104843, 28.170279>,  <35.575272, 37.252300, 27.969822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888439, 37.104843, 28.170279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559870, -0.066259, 0.825927,
		-0.271270, -0.927205, -0.258269,
		0.782917, -0.368646, 0.501140,
		36.123314, 36.994247, 28.320621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285599, 36.834873, 28.464308>,  <35.575272, 37.252300, 27.969822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285599, 36.834873, 28.464308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656742, 36.885147, 28.604757>,  <35.879429, 36.915310, 28.689028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656742, 36.885147, 28.604757>,  <35.285599, 36.834873, 28.464308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656742, 36.885147, 28.604757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345353, -0.065825, 0.936162,
		0.140774, -0.989884, -0.017670,
		0.927854, 0.125684, 0.351125,
		35.935097, 36.922852, 28.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509289, 36.204632, 28.837149>,  <35.285599, 36.834873, 28.464308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509289, 36.204632, 28.837149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730309, 36.505974, 28.979782>,  <35.862919, 36.686779, 29.065363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730309, 36.505974, 28.979782>,  <35.509289, 36.204632, 28.837149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730309, 36.505974, 28.979782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236233, -0.268728, 0.933798,
		0.799304, -0.600203, 0.029482,
		0.552546, 0.753354, 0.356583,
		35.896072, 36.731979, 29.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666046, 35.909241, 29.457773>,  <35.509289, 36.204632, 28.837149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666046, 35.909241, 29.457773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773438, 36.291264, 29.508018>,  <35.837872, 36.520477, 29.538166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773438, 36.291264, 29.508018>,  <35.666046, 35.909241, 29.457773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773438, 36.291264, 29.508018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048930, -0.116709, 0.991960,
		0.962043, -0.272462, 0.015397,
		0.268475, 0.955062, 0.125611,
		35.853981, 36.577782, 29.545702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204899, 35.908318, 29.897600>,  <35.666046, 35.909241, 29.457773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204899, 35.908318, 29.897600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062622, 36.280830, 29.929077>,  <35.977257, 36.504337, 29.947964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062622, 36.280830, 29.929077>,  <36.204899, 35.908318, 29.897600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062622, 36.280830, 29.929077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174878, -0.149030, 0.973246,
		0.918097, 0.332412, 0.215870,
		-0.355690, 0.931285, 0.078692,
		35.955914, 36.560215, 29.952684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438908, 36.078671, 30.449141>,  <36.204899, 35.908318, 29.897600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438908, 36.078671, 30.449141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191608, 36.389732, 30.403496>,  <36.043228, 36.576370, 30.376110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191608, 36.389732, 30.403496>,  <36.438908, 36.078671, 30.449141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191608, 36.389732, 30.403496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077755, 0.083955, 0.993431,
		0.782125, 0.623062, 0.008561,
		-0.618251, 0.777653, -0.114110,
		36.006134, 36.623028, 30.369263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697926, 36.582111, 30.836123>,  <36.438908, 36.078671, 30.449141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697926, 36.582111, 30.836123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307442, 36.667336, 30.820045>,  <36.073151, 36.718468, 30.810400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307442, 36.667336, 30.820045>,  <36.697926, 36.582111, 30.836123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307442, 36.667336, 30.820045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024325, 0.076579, 0.996767,
		0.215445, 0.974034, -0.069575,
		-0.976213, 0.213056, -0.040191,
		36.014576, 36.731251, 30.807987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326218, 36.895031, 30.598122>,  <36.697926, 36.582111, 30.836123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326218, 36.895031, 30.598122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682484, 36.954456, 30.770002>,  <37.896244, 36.990112, 30.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682484, 36.954456, 30.770002>,  <37.326218, 36.895031, 30.598122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682484, 36.954456, 30.770002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448298, -0.129417, -0.884466,
		-0.075788, 0.980398, -0.181867,
		0.890665, 0.148563, 0.429702,
		37.949684, 36.999023, 30.898912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720802, 37.311752, 30.129086>,  <37.326218, 36.895031, 30.598122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720802, 37.311752, 30.129086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989578, 37.133659, 30.365820>,  <38.150845, 37.026802, 30.507860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989578, 37.133659, 30.365820>,  <37.720802, 37.311752, 30.129086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989578, 37.133659, 30.365820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503060, -0.312094, -0.805933,
		0.543536, 0.839265, 0.014270,
		0.671938, -0.445232, 0.591835,
		38.191158, 37.000092, 30.543371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217098, 37.379150, 29.778011>,  <37.720802, 37.311752, 30.129086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217098, 37.379150, 29.778011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331718, 37.080170, 30.017746>,  <38.400490, 36.900780, 30.161587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331718, 37.080170, 30.017746>,  <38.217098, 37.379150, 29.778011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331718, 37.080170, 30.017746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636560, -0.318987, -0.702167,
		0.716018, 0.582717, 0.384395,
		0.286548, -0.747455, 0.599335,
		38.417683, 36.855934, 30.197546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920971, 37.482330, 29.848557>,  <38.217098, 37.379150, 29.778011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920971, 37.482330, 29.848557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833996, 37.096825, 29.910378>,  <38.781811, 36.865520, 29.947470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833996, 37.096825, 29.910378>,  <38.920971, 37.482330, 29.848557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833996, 37.096825, 29.910378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813814, -0.266428, -0.516452,
		0.538914, 0.013483, 0.842253,
		-0.217436, -0.963760, 0.154555,
		38.768764, 36.807697, 29.956743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550751, 37.205662, 29.997038>,  <38.920971, 37.482330, 29.848557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550751, 37.205662, 29.997038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351902, 36.874996, 29.891592>,  <39.232594, 36.676598, 29.828325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351902, 36.874996, 29.891592>,  <39.550751, 37.205662, 29.997038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351902, 36.874996, 29.891592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671709, -0.174336, -0.720010,
		0.549249, -0.535007, 0.641945,
		-0.497125, -0.826664, -0.263615,
		39.202766, 36.626995, 29.812508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081837, 36.662937, 30.018118>,  <39.550751, 37.205662, 29.997038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081837, 36.662937, 30.018118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775791, 36.569096, 29.778263>,  <39.592163, 36.512791, 29.634350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775791, 36.569096, 29.778263>,  <40.081837, 36.662937, 30.018118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775791, 36.569096, 29.778263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632544, -0.099765, -0.768073,
		0.120370, -0.966958, 0.224728,
		-0.765114, -0.234603, -0.599635,
		39.546257, 36.498714, 29.598373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357132, 36.193367, 29.554033>,  <40.081837, 36.662937, 30.018118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357132, 36.193367, 29.554033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020420, 36.299980, 29.366259>,  <39.818394, 36.363949, 29.253593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020420, 36.299980, 29.366259>,  <40.357132, 36.193367, 29.554033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020420, 36.299980, 29.366259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485344, -0.007041, -0.874295,
		-0.236332, -0.963801, -0.123433,
		-0.841777, 0.266531, -0.469438,
		39.767887, 36.379940, 29.225428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251698, 35.740551, 29.029631>,  <40.357132, 36.193367, 29.554033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251698, 35.740551, 29.029631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042942, 36.062927, 28.917849>,  <39.917686, 36.256351, 28.850779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042942, 36.062927, 28.917849>,  <40.251698, 35.740551, 29.029631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042942, 36.062927, 28.917849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438959, -0.027162, -0.898097,
		-0.731400, -0.591378, -0.339598,
		-0.521891, 0.805937, -0.279457,
		39.886375, 36.304707, 28.834011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022293, 35.689976, 28.404966>,  <40.251698, 35.740551, 29.029631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022293, 35.689976, 28.404966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933723, 36.079556, 28.385405>,  <39.880581, 36.313305, 28.373667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933723, 36.079556, 28.385405>,  <40.022293, 35.689976, 28.404966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933723, 36.079556, 28.385405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357403, 0.034389, -0.933317,
		-0.907322, -0.224140, -0.355708,
		-0.221426, 0.973950, -0.048906,
		39.867294, 36.371742, 28.370733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706627, 35.770901, 27.822403>,  <40.022293, 35.689976, 28.404966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706627, 35.770901, 27.822403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822216, 36.148510, 27.886049>,  <39.891571, 36.375076, 27.924236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822216, 36.148510, 27.886049>,  <39.706627, 35.770901, 27.822403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822216, 36.148510, 27.886049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273803, 0.077764, -0.958637,
		-0.917347, 0.320587, -0.236004,
		0.288974, 0.944022, 0.159114,
		39.908909, 36.431717, 27.933783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458893, 36.290627, 27.293682>,  <39.706627, 35.770901, 27.822403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458893, 36.290627, 27.293682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803268, 36.428341, 27.443480>,  <40.009895, 36.510967, 27.533358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803268, 36.428341, 27.443480>,  <39.458893, 36.290627, 27.293682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803268, 36.428341, 27.443480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250377, 0.354044, -0.901091,
		-0.442818, 0.869552, 0.218611,
		0.860943, 0.344284, 0.374493,
		40.061550, 36.531628, 27.555828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553230, 37.049057, 27.084955>,  <39.458893, 36.290627, 27.293682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553230, 37.049057, 27.084955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913708, 36.898098, 27.170206>,  <40.129993, 36.807522, 27.221357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913708, 36.898098, 27.170206>,  <39.553230, 37.049057, 27.084955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913708, 36.898098, 27.170206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352896, 0.353433, -0.866343,
		0.251631, 0.855953, 0.451694,
		0.901192, -0.377400, 0.213127,
		40.184067, 36.784878, 27.234144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931541, 37.397461, 26.633221>,  <39.553230, 37.049057, 27.084955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931541, 37.397461, 26.633221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227402, 37.166698, 26.771837>,  <40.404919, 37.028240, 26.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227402, 37.166698, 26.771837>,  <39.931541, 37.397461, 26.633221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227402, 37.166698, 26.771837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563933, 0.250297, -0.786976,
		0.367273, 0.777516, 0.510470,
		0.739655, -0.576906, 0.346539,
		40.449299, 36.993626, 26.875799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573647, 37.809971, 26.723513>,  <39.931541, 37.397461, 26.633221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573647, 37.809971, 26.723513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670555, 37.427784, 26.656130>,  <40.728703, 37.198471, 26.615700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670555, 37.427784, 26.656130>,  <40.573647, 37.809971, 26.723513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670555, 37.427784, 26.656130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466571, 0.266974, -0.843230,
		0.850655, 0.125697, 0.510476,
		0.242275, -0.955471, -0.168457,
		40.743237, 37.141144, 26.605593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200249, 37.855545, 26.440847>,  <40.573647, 37.809971, 26.723513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200249, 37.855545, 26.440847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057533, 37.502129, 26.319487>,  <40.971905, 37.290077, 26.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057533, 37.502129, 26.319487>,  <41.200249, 37.855545, 26.440847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057533, 37.502129, 26.319487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436382, 0.129534, -0.890388,
		0.825998, -0.450078, 0.339347,
		-0.356787, -0.883544, -0.303401,
		40.950497, 37.237064, 26.228466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779686, 37.520134, 26.135799>,  <41.200249, 37.855545, 26.440847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779686, 37.520134, 26.135799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465107, 37.329319, 25.978861>,  <41.276360, 37.214828, 25.884697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465107, 37.329319, 25.978861>,  <41.779686, 37.520134, 26.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465107, 37.329319, 25.978861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498974, -0.116293, -0.858779,
		0.364043, -0.871155, 0.329488,
		-0.786446, -0.477038, -0.392348,
		41.229172, 37.186207, 25.861156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058582, 37.049213, 25.625305>,  <41.779686, 37.520134, 26.135799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058582, 37.049213, 25.625305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670647, 37.040466, 25.528194>,  <41.437885, 37.035217, 25.469927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670647, 37.040466, 25.528194>,  <42.058582, 37.049213, 25.625305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670647, 37.040466, 25.528194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243338, -0.145566, -0.958956,
		-0.014371, -0.989107, 0.146496,
		-0.969836, -0.021867, -0.242779,
		41.379696, 37.033905, 25.455360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977470, 36.491570, 25.257366>,  <42.058582, 37.049213, 25.625305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977470, 36.491570, 25.257366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 36.722790, 25.153263>,  <41.482506, 36.861523, 25.090801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 36.722790, 25.153263>,  <41.977470, 36.491570, 25.257366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668118, 36.722790, 25.153263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042391, -0.362466, -0.931033,
		-0.632523, -0.731075, 0.255820,
		-0.773381, 0.578055, -0.260259,
		41.436104, 36.896206, 25.075186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460110, 36.100956, 24.875769>,  <41.977470, 36.491570, 25.257366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460110, 36.100956, 24.875769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407055, 36.488949, 24.794239>,  <41.375221, 36.721745, 24.745321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407055, 36.488949, 24.794239>,  <41.460110, 36.100956, 24.875769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407055, 36.488949, 24.794239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120179, -0.219860, -0.968100,
		-0.983852, -0.103912, 0.145733,
		-0.132638, 0.969981, -0.203822,
		41.367264, 36.779942, 24.733093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864174, 36.071995, 24.465212>,  <41.460110, 36.100956, 24.875769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864174, 36.071995, 24.465212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046497, 36.422794, 24.404406>,  <41.155891, 36.633274, 24.367922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046497, 36.422794, 24.404406>,  <40.864174, 36.071995, 24.465212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046497, 36.422794, 24.404406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118266, -0.228951, -0.966227,
		-0.882187, 0.422433, -0.208077,
		0.455805, 0.877002, -0.152018,
		41.183239, 36.685894, 24.358801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450317, 36.409409, 23.961975>,  <40.864174, 36.071995, 24.465212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450317, 36.409409, 23.961975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817108, 36.566238, 23.932482>,  <41.037182, 36.660336, 23.914785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817108, 36.566238, 23.932482>,  <40.450317, 36.409409, 23.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817108, 36.566238, 23.932482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023354, -0.237252, -0.971167,
		-0.398263, 0.888813, -0.226710,
		0.916974, 0.392075, -0.073731,
		41.092201, 36.683861, 23.910362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532265, 36.487343, 23.301851>,  <40.450317, 36.409409, 23.961975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532265, 36.487343, 23.301851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907158, 36.544930, 23.428885>,  <41.132095, 36.579483, 23.505104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907158, 36.544930, 23.428885>,  <40.532265, 36.487343, 23.301851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907158, 36.544930, 23.428885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338061, -0.151988, -0.928771,
		-0.085445, 0.977841, -0.191119,
		0.937238, 0.143968, 0.317583,
		41.188328, 36.588120, 23.524160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860737, 37.052021, 22.941330>,  <40.532265, 36.487343, 23.301851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860737, 37.052021, 22.941330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150059, 36.810074, 23.074575>,  <41.323654, 36.664906, 23.154522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150059, 36.810074, 23.074575>,  <40.860737, 37.052021, 22.941330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150059, 36.810074, 23.074575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275269, -0.189849, -0.942435,
		0.633289, 0.773365, 0.029182,
		0.723307, -0.604866, 0.333113,
		41.367050, 36.628613, 23.174509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437237, 37.272305, 22.638182>,  <40.860737, 37.052021, 22.941330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437237, 37.272305, 22.638182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553276, 36.911236, 22.765320>,  <41.622902, 36.694595, 22.841602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553276, 36.911236, 22.765320>,  <41.437237, 37.272305, 22.638182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553276, 36.911236, 22.765320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306863, -0.226852, -0.924323,
		0.906463, 0.365683, 0.211186,
		0.290102, -0.902671, 0.317847,
		41.640308, 36.640434, 22.860674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850197, 37.183651, 22.160540>,  <41.437237, 37.272305, 22.638182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850197, 37.183651, 22.160540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834938, 36.819759, 22.325920>,  <41.825783, 36.601425, 22.425148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834938, 36.819759, 22.325920>,  <41.850197, 37.183651, 22.160540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834938, 36.819759, 22.325920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136285, -0.414623, -0.899730,
		0.989935, 0.022029, 0.139797,
		-0.038143, -0.909727, 0.413452,
		41.823494, 36.546841, 22.449955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426949, 36.836422, 22.030361>,  <41.850197, 37.183651, 22.160540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426949, 36.836422, 22.030361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150852, 36.551552, 22.081539>,  <41.985195, 36.380630, 22.112246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150852, 36.551552, 22.081539>,  <42.426949, 36.836422, 22.030361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150852, 36.551552, 22.081539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247170, -0.398251, -0.883348,
		0.680057, -0.578097, 0.450918,
		-0.690239, -0.712180, 0.127945,
		41.943779, 36.337898, 22.119923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729389, 36.154778, 21.919790>,  <42.426949, 36.836422, 22.030361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729389, 36.154778, 21.919790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333450, 36.120815, 21.874205>,  <42.095886, 36.100437, 21.846853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333450, 36.120815, 21.874205>,  <42.729389, 36.154778, 21.919790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333450, 36.120815, 21.874205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137817, -0.377693, -0.915617,
		0.034702, -0.922030, 0.385561,
		-0.989850, -0.084911, -0.113964,
		42.036495, 36.095341, 21.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804008, 35.582375, 21.649954>,  <42.729389, 36.154778, 21.919790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804008, 35.582375, 21.649954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434975, 35.718380, 21.577042>,  <42.213554, 35.799984, 21.533295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434975, 35.718380, 21.577042>,  <42.804008, 35.582375, 21.649954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434975, 35.718380, 21.577042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049711, -0.363770, -0.930161,
		-0.382587, -0.867211, 0.318704,
		-0.922581, 0.340025, -0.182284,
		42.158199, 35.820385, 21.522358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420448, 34.981346, 21.352865>,  <42.804008, 35.582375, 21.649954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420448, 34.981346, 21.352865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269993, 35.335247, 21.242786>,  <42.179718, 35.547588, 21.176739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269993, 35.335247, 21.242786>,  <42.420448, 34.981346, 21.352865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269993, 35.335247, 21.242786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084380, -0.263066, -0.961081,
		-0.922714, -0.384720, 0.024294,
		-0.376138, 0.884752, -0.275197,
		42.157150, 35.600674, 21.160227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916012, 34.821896, 20.887527>,  <42.420448, 34.981346, 21.352865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916012, 34.821896, 20.887527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017399, 35.201012, 20.810118>,  <42.078232, 35.428482, 20.763672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017399, 35.201012, 20.810118>,  <41.916012, 34.821896, 20.887527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017399, 35.201012, 20.810118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066777, -0.182437, -0.980947,
		-0.965035, 0.261565, 0.017048,
		0.253471, 0.947787, -0.193524,
		42.093441, 35.485348, 20.752060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706890, 34.884418, 20.253679>,  <41.916012, 34.821896, 20.887527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706890, 34.884418, 20.253679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928501, 35.215023, 20.293535>,  <42.061470, 35.413387, 20.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928501, 35.215023, 20.293535>,  <41.706890, 34.884418, 20.253679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928501, 35.215023, 20.293535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125362, 0.035493, -0.991476,
		-0.823002, 0.561801, -0.083949,
		0.554032, 0.826511, 0.099639,
		42.094711, 35.462975, 20.323427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365273, 35.385201, 19.835188>,  <41.706890, 34.884418, 20.253679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365273, 35.385201, 19.835188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748978, 35.477814, 19.899944>,  <41.979202, 35.533382, 19.938799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748978, 35.477814, 19.899944>,  <41.365273, 35.385201, 19.835188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748978, 35.477814, 19.899944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169789, -0.014468, -0.985374,
		-0.225805, 0.972719, -0.053191,
		0.959262, 0.231534, 0.161891,
		42.036755, 35.547276, 19.948511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491383, 35.880543, 19.345102>,  <41.365273, 35.385201, 19.835188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491383, 35.880543, 19.345102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845390, 35.734112, 19.460157>,  <42.057793, 35.646255, 19.529190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845390, 35.734112, 19.460157>,  <41.491383, 35.880543, 19.345102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845390, 35.734112, 19.460157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329071, 0.054835, -0.942712,
		0.329328, 0.928969, 0.168994,
		0.885017, -0.366073, 0.287638,
		42.110897, 35.624290, 19.546450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993603, 36.383278, 19.067863>,  <41.491383, 35.880543, 19.345102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993603, 36.383278, 19.067863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170086, 36.028683, 19.123671>,  <42.275974, 35.815926, 19.157156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170086, 36.028683, 19.123671>,  <41.993603, 36.383278, 19.067863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170086, 36.028683, 19.123671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279975, -0.011734, -0.959936,
		0.852612, 0.462594, 0.243018,
		0.441209, -0.886492, 0.139520,
		42.302448, 35.762733, 19.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711487, 36.376083, 18.778046>,  <41.993603, 36.383278, 19.067863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711487, 36.376083, 18.778046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639126, 35.982994, 18.793678>,  <42.595711, 35.747139, 18.803059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639126, 35.982994, 18.793678>,  <42.711487, 36.376083, 18.778046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639126, 35.982994, 18.793678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217288, -0.078693, -0.972930,
		0.959198, -0.167513, 0.227770,
		-0.180902, -0.982724, 0.039083,
		42.584854, 35.688175, 18.805403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204262, 36.044910, 18.392754>,  <42.711487, 36.376083, 18.778046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204262, 36.044910, 18.392754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955444, 35.732544, 18.415482>,  <42.806152, 35.545124, 18.429119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955444, 35.732544, 18.415482>,  <43.204262, 36.044910, 18.392754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955444, 35.732544, 18.415482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228947, -0.250808, -0.940573,
		0.748762, -0.572068, 0.334803,
		-0.622044, -0.780918, 0.056822,
		42.768829, 35.498268, 18.432528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557926, 35.500233, 17.962622>,  <43.204262, 36.044910, 18.392754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557926, 35.500233, 17.962622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180096, 35.384415, 18.024511>,  <42.953396, 35.314926, 18.061646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180096, 35.384415, 18.024511>,  <43.557926, 35.500233, 17.962622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180096, 35.384415, 18.024511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020712, -0.522924, -0.852128,
		0.327635, -0.801696, 0.499939,
		-0.944577, -0.289542, 0.154723,
		42.896721, 35.297554, 18.070929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526039, 34.790173, 17.980347>,  <43.557926, 35.500233, 17.962622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526039, 34.790173, 17.980347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164070, 34.922298, 17.873011>,  <42.946888, 35.001572, 17.808609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164070, 34.922298, 17.873011>,  <43.526039, 34.790173, 17.980347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164070, 34.922298, 17.873011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061887, -0.521698, -0.850883,
		-0.421048, -0.786591, 0.451656,
		-0.904925, 0.330311, -0.268339,
		42.892593, 35.021393, 17.792509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899624, 34.103550, 18.267256>,  <43.526039, 34.790173, 17.980347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899624, 34.103550, 18.267256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171616, 33.826485, 18.363468>,  <44.334808, 33.660244, 18.421196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171616, 33.826485, 18.363468>,  <43.899624, 34.103550, 18.267256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171616, 33.826485, 18.363468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259740, 0.079222, 0.962424,
		-0.685690, -0.716898, -0.126043,
		0.679975, -0.692662, 0.240529,
		44.375607, 33.618687, 18.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511600, 33.599438, 18.673010>,  <43.899624, 34.103550, 18.267256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511600, 33.599438, 18.673010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899414, 33.592918, 18.770781>,  <44.132103, 33.589008, 18.829443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899414, 33.592918, 18.770781>,  <43.511600, 33.599438, 18.673010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899414, 33.592918, 18.770781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243733, 0.036047, 0.969172,
		-0.024608, -0.999217, 0.030976,
		0.969530, -0.016299, 0.244429,
		44.190273, 33.588028, 18.844109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557899, 33.238029, 19.394718>,  <43.511600, 33.599438, 18.673010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557899, 33.238029, 19.394718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932747, 33.374222, 19.364061>,  <44.157658, 33.455936, 19.345667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932747, 33.374222, 19.364061>,  <43.557899, 33.238029, 19.394718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932747, 33.374222, 19.364061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029792, 0.140765, 0.989595,
		0.347729, -0.929654, 0.121770,
		0.937122, 0.340483, -0.076645,
		44.213882, 33.476368, 19.341068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852604, 32.870331, 19.884262>,  <43.557899, 33.238029, 19.394718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852604, 32.870331, 19.884262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050884, 33.207951, 19.802420>,  <44.169853, 33.410522, 19.753315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050884, 33.207951, 19.802420>,  <43.852604, 32.870331, 19.884262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050884, 33.207951, 19.802420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019267, 0.246216, 0.969023,
		0.868279, -0.476404, 0.138312,
		0.495701, 0.844048, -0.204606,
		44.199596, 33.461166, 19.741037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267220, 32.968891, 20.433512>,  <43.852604, 32.870331, 19.884262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267220, 32.968891, 20.433512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277542, 33.345619, 20.299461>,  <44.283733, 33.571655, 20.219032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277542, 33.345619, 20.299461>,  <44.267220, 32.968891, 20.433512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277542, 33.345619, 20.299461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116325, 0.330130, 0.936740,
		0.992876, -0.063153, -0.101039,
		0.025802, 0.941821, -0.335125,
		44.285282, 33.628166, 20.198923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019291, 33.262863, 20.474947>,  <44.267220, 32.968891, 20.433512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019291, 33.262863, 20.474947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741631, 33.550797, 20.475246>,  <44.575035, 33.723557, 20.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741631, 33.550797, 20.475246>,  <45.019291, 33.262863, 20.474947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741631, 33.550797, 20.475246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275952, 0.265142, 0.923878,
		0.664838, 0.641515, -0.382687,
		-0.694148, 0.719832, 0.000751,
		44.533386, 33.766747, 20.475471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336323, 33.816479, 20.793526>,  <45.019291, 33.262863, 20.474947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336323, 33.816479, 20.793526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956997, 33.941029, 20.818007>,  <44.729401, 34.015759, 20.832695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956997, 33.941029, 20.818007>,  <45.336323, 33.816479, 20.793526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956997, 33.941029, 20.818007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148071, 0.263599, 0.953200,
		0.280670, 0.912995, -0.296080,
		-0.948314, 0.311376, 0.061203,
		44.672504, 34.034443, 20.836367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441025, 34.376434, 21.104536>,  <45.336323, 33.816479, 20.793526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441025, 34.376434, 21.104536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046291, 34.327396, 21.146736>,  <44.809452, 34.297974, 21.172056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046291, 34.327396, 21.146736>,  <45.441025, 34.376434, 21.104536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046291, 34.327396, 21.146736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050301, 0.387327, 0.920569,
		-0.153719, 0.913756, -0.376060,
		-0.986834, -0.122592, 0.105502,
		44.750240, 34.290619, 21.178387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269154, 35.004246, 21.318897>,  <45.441025, 34.376434, 21.104536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269154, 35.004246, 21.318897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959618, 34.774467, 21.425619>,  <44.773895, 34.636600, 21.489653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959618, 34.774467, 21.425619>,  <45.269154, 35.004246, 21.318897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959618, 34.774467, 21.425619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005451, 0.415184, 0.909721,
		-0.633355, 0.705435, -0.318156,
		-0.773842, -0.574442, 0.266804,
		44.727467, 34.602135, 21.505661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769596, 35.403736, 21.703178>,  <45.269154, 35.004246, 21.318897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769596, 35.403736, 21.703178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720074, 35.019650, 21.803297>,  <44.690361, 34.789196, 21.863369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720074, 35.019650, 21.803297>,  <44.769596, 35.403736, 21.703178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720074, 35.019650, 21.803297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150038, 0.267452, 0.951818,
		-0.980897, 0.080291, -0.177182,
		-0.123810, -0.960220, 0.250296,
		44.682930, 34.731583, 21.878386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145073, 35.333988, 22.054279>,  <44.769596, 35.403736, 21.703178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145073, 35.333988, 22.054279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364754, 35.020237, 22.169600>,  <44.496563, 34.831985, 22.238792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364754, 35.020237, 22.169600>,  <44.145073, 35.333988, 22.054279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364754, 35.020237, 22.169600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289794, 0.144824, 0.946068,
		-0.783832, -0.603134, -0.147771,
		0.549205, -0.784382, 0.288303,
		44.529514, 34.784924, 22.256090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605453, 34.883968, 22.455076>,  <44.145073, 35.333988, 22.054279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605453, 34.883968, 22.455076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967968, 34.780396, 22.588701>,  <44.185478, 34.718250, 22.668877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967968, 34.780396, 22.588701>,  <43.605453, 34.883968, 22.455076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967968, 34.780396, 22.588701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367356, -0.091669, 0.925552,
		-0.209035, -0.961535, -0.178200,
		0.906286, -0.258935, 0.334064,
		44.239853, 34.702717, 22.688921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450516, 34.413063, 22.868608>,  <43.605453, 34.883968, 22.455076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450516, 34.413063, 22.868608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813526, 34.534634, 22.984556>,  <44.031334, 34.607574, 23.054125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813526, 34.534634, 22.984556>,  <43.450516, 34.413063, 22.868608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813526, 34.534634, 22.984556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308851, 0.015223, 0.950989,
		0.284616, -0.952574, 0.107683,
		0.907527, 0.303925, 0.289871,
		44.085785, 34.625813, 23.071518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745453, 33.929253, 23.247772>,  <43.450516, 34.413063, 22.868608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745453, 33.929253, 23.247772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972980, 34.239719, 23.356596>,  <44.109497, 34.425999, 23.421890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972980, 34.239719, 23.356596>,  <43.745453, 33.929253, 23.247772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972980, 34.239719, 23.356596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337018, -0.081776, 0.937940,
		0.750245, -0.625204, 0.215066,
		0.568816, 0.776166, 0.272057,
		44.143627, 34.472569, 23.438213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912468, 33.814758, 23.954170>,  <43.745453, 33.929253, 23.247772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912468, 33.814758, 23.954170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978230, 34.208633, 23.931004>,  <44.017689, 34.444958, 23.917103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978230, 34.208633, 23.931004>,  <43.912468, 33.814758, 23.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978230, 34.208633, 23.931004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328976, 0.110091, 0.937899,
		0.929917, -0.135146, 0.342039,
		0.164408, 0.984691, -0.057916,
		44.027554, 34.504040, 23.913630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258175, 33.940117, 24.611362>,  <43.912468, 33.814758, 23.954170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258175, 33.940117, 24.611362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114819, 34.282612, 24.462549>,  <44.028805, 34.488110, 24.373262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114819, 34.282612, 24.462549>,  <44.258175, 33.940117, 24.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114819, 34.282612, 24.462549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318070, 0.262673, 0.910952,
		0.877718, 0.444807, 0.178206,
		-0.358388, 0.856242, -0.372032,
		44.007301, 34.539486, 24.350939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525459, 34.458759, 25.052866>,  <44.258175, 33.940117, 24.611362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525459, 34.458759, 25.052866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202518, 34.623661, 24.883993>,  <44.008755, 34.722603, 24.782669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202518, 34.623661, 24.883993>,  <44.525459, 34.458759, 25.052866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202518, 34.623661, 24.883993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361067, 0.220750, 0.906035,
		0.466711, 0.883922, -0.029372,
		-0.807349, 0.412251, -0.422181,
		43.960316, 34.747337, 24.757339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502010, 35.134239, 25.387146>,  <44.525459, 34.458759, 25.052866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502010, 35.134239, 25.387146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143436, 35.063782, 25.224476>,  <43.928291, 35.021507, 25.126873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143436, 35.063782, 25.224476>,  <44.502010, 35.134239, 25.387146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143436, 35.063782, 25.224476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442886, 0.389502, 0.807552,
		0.016160, 0.904026, -0.427172,
		-0.896432, -0.176139, -0.406675,
		43.874508, 35.010941, 25.102474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143181, 35.723412, 25.487906>,  <44.502010, 35.134239, 25.387146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143181, 35.723412, 25.487906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852879, 35.460094, 25.407970>,  <43.678699, 35.302105, 25.360010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852879, 35.460094, 25.407970>,  <44.143181, 35.723412, 25.487906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852879, 35.460094, 25.407970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557407, 0.392427, 0.731641,
		-0.403213, 0.642380, -0.651742,
		-0.725752, -0.658293, -0.199835,
		43.635155, 35.262608, 25.348021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486225, 36.100712, 25.565317>,  <44.143181, 35.723412, 25.487906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486225, 36.100712, 25.565317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376522, 35.716305, 25.551283>,  <43.310699, 35.485661, 25.542862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376522, 35.716305, 25.551283>,  <43.486225, 36.100712, 25.565317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376522, 35.716305, 25.551283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656479, 0.160438, 0.737085,
		-0.702721, 0.225186, -0.674888,
		-0.274259, -0.961016, -0.035087,
		43.294243, 35.428001, 25.540756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766499, 36.060867, 25.592506>,  <43.486225, 36.100712, 25.565317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766499, 36.060867, 25.592506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882614, 35.708111, 25.741096>,  <42.952282, 35.496456, 25.830252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882614, 35.708111, 25.741096>,  <42.766499, 36.060867, 25.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882614, 35.708111, 25.741096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560601, 0.157884, 0.812895,
		-0.775539, -0.444222, -0.448560,
		0.290286, -0.881895, 0.371476,
		42.969700, 35.443542, 25.852539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116188, 35.803535, 25.857462>,  <42.766499, 36.060867, 25.592506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116188, 35.803535, 25.857462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418072, 35.600647, 26.023907>,  <42.599201, 35.478916, 26.123774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418072, 35.600647, 26.023907>,  <42.116188, 35.803535, 25.857462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418072, 35.600647, 26.023907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495761, -0.025496, 0.868085,
		-0.429699, -0.861441, -0.270701,
		0.754705, -0.507218, 0.416114,
		42.644482, 35.448483, 26.148741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768375, 35.418915, 26.316057>,  <42.116188, 35.803535, 25.857462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768375, 35.418915, 26.316057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144184, 35.399117, 26.451618>,  <42.369667, 35.387238, 26.532955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144184, 35.399117, 26.451618>,  <41.768375, 35.418915, 26.316057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144184, 35.399117, 26.451618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335047, 0.072448, 0.939412,
		-0.071049, -0.996143, 0.051483,
		0.939519, -0.049495, 0.338902,
		42.426041, 35.384270, 26.553289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896965, 34.749878, 26.770752>,  <41.768375, 35.418915, 26.316057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896965, 34.749878, 26.770752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174057, 35.025391, 26.856264>,  <42.340313, 35.190701, 26.907572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174057, 35.025391, 26.856264>,  <41.896965, 34.749878, 26.770752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174057, 35.025391, 26.856264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203996, -0.097186, 0.974136,
		0.691748, -0.718421, 0.073186,
		0.692728, 0.688786, 0.213783,
		42.381874, 35.232025, 26.920399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277496, 34.434093, 27.350054>,  <41.896965, 34.749878, 26.770752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277496, 34.434093, 27.350054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365192, 34.823555, 27.375124>,  <42.417809, 35.057232, 27.390167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365192, 34.823555, 27.375124>,  <42.277496, 34.434093, 27.350054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365192, 34.823555, 27.375124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141116, -0.031920, 0.989478,
		0.965412, -0.225779, 0.130401,
		0.219241, 0.973655, 0.062677,
		42.430965, 35.115650, 27.393927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767506, 34.581989, 27.858288>,  <42.277496, 34.434093, 27.350054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767506, 34.581989, 27.858288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579025, 34.933022, 27.822905>,  <42.465939, 35.143642, 27.801674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579025, 34.933022, 27.822905>,  <42.767506, 34.581989, 27.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579025, 34.933022, 27.822905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010149, 0.105677, 0.994349,
		0.881968, 0.467640, -0.058701,
		-0.471200, 0.877579, -0.088458,
		42.437664, 35.196297, 27.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095482, 34.987263, 28.372076>,  <42.767506, 34.581989, 27.858288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095482, 34.987263, 28.372076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761349, 35.194324, 28.298056>,  <42.560867, 35.318562, 28.253643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761349, 35.194324, 28.298056>,  <43.095482, 34.987263, 28.372076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761349, 35.194324, 28.298056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132891, 0.136491, 0.981687,
		0.533434, 0.844632, -0.045224,
		-0.835337, 0.517655, -0.185052,
		42.510746, 35.349621, 28.242540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107830, 35.598736, 28.864264>,  <43.095482, 34.987263, 28.372076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107830, 35.598736, 28.864264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730164, 35.591381, 28.732683>,  <42.503563, 35.586967, 28.653734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730164, 35.591381, 28.732683>,  <43.107830, 35.598736, 28.864264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730164, 35.591381, 28.732683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320726, 0.279732, 0.904922,
		0.075380, 0.959902, -0.270011,
		-0.944168, -0.018387, -0.328952,
		42.446915, 35.585865, 28.633997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876705, 36.184147, 29.128939>,  <43.107830, 35.598736, 28.864264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876705, 36.184147, 29.128939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590637, 35.912308, 29.063597>,  <42.418995, 35.749207, 29.024391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590637, 35.912308, 29.063597>,  <42.876705, 36.184147, 29.128939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590637, 35.912308, 29.063597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300091, 0.087474, 0.949892,
		-0.631251, 0.728355, -0.266499,
		-0.715170, -0.679593, -0.163355,
		42.376087, 35.708431, 29.014589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367680, 36.490772, 29.397207>,  <42.876705, 36.184147, 29.128939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367680, 36.490772, 29.397207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239929, 36.111977, 29.383242>,  <42.163280, 35.884701, 29.374863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239929, 36.111977, 29.383242>,  <42.367680, 36.490772, 29.397207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239929, 36.111977, 29.383242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400580, 0.101525, 0.910620,
		-0.858798, 0.304817, -0.411767,
		-0.319377, -0.946984, -0.034914,
		42.144115, 35.827881, 29.372766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741642, 36.593796, 29.508335>,  <42.367680, 36.490772, 29.397207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741642, 36.593796, 29.508335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815182, 36.217091, 29.620968>,  <41.859306, 35.991070, 29.688547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815182, 36.217091, 29.620968>,  <41.741642, 36.593796, 29.508335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815182, 36.217091, 29.620968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294228, 0.220604, 0.929927,
		-0.937886, -0.253812, -0.236535,
		0.183847, -0.941761, 0.281580,
		41.870335, 35.934563, 29.705442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140919, 36.357632, 29.917297>,  <41.741642, 36.593796, 29.508335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140919, 36.357632, 29.917297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456326, 36.126053, 30.000309>,  <41.645569, 35.987106, 30.050116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456326, 36.126053, 30.000309>,  <41.140919, 36.357632, 29.917297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456326, 36.126053, 30.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151400, 0.144325, 0.977879,
		-0.596090, -0.802492, 0.026151,
		0.788514, -0.578945, 0.207528,
		41.692879, 35.952370, 30.062567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896156, 35.922714, 30.471018>,  <41.140919, 36.357632, 29.917297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896156, 35.922714, 30.471018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295845, 35.929615, 30.456787>,  <41.535656, 35.933754, 30.448250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295845, 35.929615, 30.456787>,  <40.896156, 35.922714, 30.471018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295845, 35.929615, 30.456787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030488, 0.236704, 0.971103,
		0.025175, -0.971429, 0.235992,
		0.999218, 0.017252, -0.035576,
		41.595612, 35.934792, 30.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148415, 35.422447, 30.803745>,  <40.896156, 35.922714, 30.471018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148415, 35.422447, 30.803745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445812, 35.689247, 30.823051>,  <41.624252, 35.849327, 30.834635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445812, 35.689247, 30.823051>,  <41.148415, 35.422447, 30.803745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445812, 35.689247, 30.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056531, -0.009228, 0.998358,
		0.666347, -0.745004, 0.030845,
		0.743496, 0.666996, 0.048265,
		41.668861, 35.889347, 30.837530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513714, 35.259655, 31.463364>,  <41.148415, 35.422447, 30.803745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513714, 35.259655, 31.463364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625603, 35.624371, 31.343100>,  <41.692738, 35.843201, 31.270941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625603, 35.624371, 31.343100>,  <41.513714, 35.259655, 31.463364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625603, 35.624371, 31.343100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059541, 0.329036, 0.942438,
		0.958232, -0.245723, 0.146329,
		0.279726, 0.911787, -0.300662,
		41.709522, 35.897907, 31.252901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022217, 35.528458, 31.911907>,  <41.513714, 35.259655, 31.463364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022217, 35.528458, 31.911907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900810, 35.855598, 31.716356>,  <41.827969, 36.051884, 31.599026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900810, 35.855598, 31.716356>,  <42.022217, 35.528458, 31.911907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900810, 35.855598, 31.716356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117708, 0.476965, 0.871004,
		0.945529, 0.321906, -0.048497,
		-0.303513, 0.817851, -0.488875,
		41.809757, 36.100952, 31.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468826, 36.129925, 32.075447>,  <42.022217, 35.528458, 31.911907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468826, 36.129925, 32.075447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116112, 36.288986, 31.974003>,  <41.904484, 36.384422, 31.913137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116112, 36.288986, 31.974003>,  <42.468826, 36.129925, 32.075447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116112, 36.288986, 31.974003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014335, 0.514868, 0.857149,
		0.471426, 0.759461, -0.448305,
		-0.881789, 0.397656, -0.253609,
		41.851574, 36.408283, 31.897921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488731, 36.817039, 32.381371>,  <42.468826, 36.129925, 32.075447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488731, 36.817039, 32.381371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106335, 36.738819, 32.293888>,  <41.876896, 36.691887, 32.241398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106335, 36.738819, 32.293888>,  <42.488731, 36.817039, 32.381371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106335, 36.738819, 32.293888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283201, 0.420449, 0.861986,
		-0.076612, 0.885992, -0.457328,
		-0.955996, -0.195554, -0.218702,
		41.819534, 36.680153, 32.228279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074848, 37.344086, 32.715748>,  <42.488731, 36.817039, 32.381371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074848, 37.344086, 32.715748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791874, 37.075672, 32.626980>,  <41.622089, 36.914623, 32.573719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791874, 37.075672, 32.626980>,  <42.074848, 37.344086, 32.715748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791874, 37.075672, 32.626980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502878, 0.257265, 0.825184,
		-0.496634, 0.695363, -0.519447,
		-0.707438, -0.671032, -0.221916,
		41.579643, 36.874363, 32.560406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443966, 37.667988, 32.850136>,  <42.074848, 37.344086, 32.715748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443966, 37.667988, 32.850136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348347, 37.279896, 32.865707>,  <41.290977, 37.047043, 32.875050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348347, 37.279896, 32.865707>,  <41.443966, 37.667988, 32.850136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348347, 37.279896, 32.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353237, 0.124235, 0.927248,
		-0.904479, 0.207901, -0.372418,
		-0.239043, -0.970228, 0.038930,
		41.276634, 36.988827, 32.877388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691010, 37.378666, 32.885521>,  <41.443966, 37.667988, 32.850136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691010, 37.378666, 32.885521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938580, 37.131794, 33.079849>,  <41.087124, 36.983673, 33.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938580, 37.131794, 33.079849>,  <40.691010, 37.378666, 32.885521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938580, 37.131794, 33.079849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512149, 0.151838, 0.845369,
		-0.595509, -0.772034, -0.222110,
		0.618928, -0.617178, 0.485817,
		41.124260, 36.946640, 33.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390690, 36.728012, 33.264511>,  <40.691010, 37.378666, 32.885521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390690, 36.728012, 33.264511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694561, 36.931507, 33.426540>,  <40.876884, 37.053604, 33.523758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694561, 36.931507, 33.426540>,  <40.390690, 36.728012, 33.264511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694561, 36.931507, 33.426540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619305, 0.375945, 0.689295,
		0.198382, -0.774504, 0.600657,
		0.759675, 0.508733, 0.405074,
		40.922462, 37.084126, 33.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383072, 36.627441, 34.048862>,  <40.390690, 36.728012, 33.264511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383072, 36.627441, 34.048862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532291, 36.979568, 33.931644>,  <40.621822, 37.190845, 33.861313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532291, 36.979568, 33.931644>,  <40.383072, 36.627441, 34.048862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532291, 36.979568, 33.931644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711976, 0.474129, 0.517969,
		0.594919, 0.015415, 0.803638,
		0.373044, 0.880320, -0.293043,
		40.644203, 37.243664, 33.843731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453526, 37.064529, 34.627052>,  <40.383072, 36.627441, 34.048862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453526, 37.064529, 34.627052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383961, 37.307117, 34.316711>,  <40.342220, 37.452671, 34.130508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383961, 37.307117, 34.316711>,  <40.453526, 37.064529, 34.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383961, 37.307117, 34.316711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611720, 0.550881, 0.567741,
		0.771721, 0.573342, 0.275185,
		-0.173915, 0.606473, -0.775850,
		40.331787, 37.489059, 34.083958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003532, 36.682495, 35.056515>,  <40.453526, 37.064529, 34.627052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003532, 36.682495, 35.056515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029789, 36.382751, 35.320076>,  <41.045544, 36.202904, 35.478210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029789, 36.382751, 35.320076>,  <41.003532, 36.682495, 35.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029789, 36.382751, 35.320076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993844, 0.009968, 0.110340,
		-0.089253, -0.662085, -0.744095,
		0.065637, -0.749362, 0.658899,
		41.049480, 36.157944, 35.517746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569992, 36.222340, 34.814014>,  <41.003532, 36.682495, 35.056515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569992, 36.222340, 34.814014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605694, 36.109192, 35.196014>,  <40.627117, 36.041302, 35.425213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605694, 36.109192, 35.196014>,  <40.569992, 36.222340, 34.814014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605694, 36.109192, 35.196014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976444, 0.164260, 0.139916,
		-0.196446, -0.944988, -0.261547,
		0.089257, -0.282872, 0.954996,
		40.632469, 36.024330, 35.482513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355167, 35.480804, 34.862137>,  <40.569992, 36.222340, 34.814014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355167, 35.480804, 34.862137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355778, 35.083904, 34.812454>,  <40.356144, 34.845764, 34.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355778, 35.083904, 34.812454>,  <40.355167, 35.480804, 34.862137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355778, 35.083904, 34.812454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480517, 0.108203, -0.870285,
		0.876984, 0.061012, -0.476630,
		0.001525, -0.992255, -0.124210,
		40.356236, 34.786228, 34.775192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988564, 35.436512, 34.275143>,  <40.355167, 35.480804, 34.862137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988564, 35.436512, 34.275143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082066, 35.049107, 34.309422>,  <40.138165, 34.816662, 34.329990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082066, 35.049107, 34.309422>,  <39.988564, 35.436512, 34.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082066, 35.049107, 34.309422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473565, -0.190385, -0.859936,
		0.849174, 0.160429, -0.503157,
		0.233752, -0.968512, 0.085697,
		40.152191, 34.758553, 34.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386707, 35.290054, 33.689651>,  <39.988564, 35.436512, 34.275143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386707, 35.290054, 33.689651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190823, 34.973301, 33.835583>,  <40.073292, 34.783249, 33.923141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190823, 34.973301, 33.835583>,  <40.386707, 35.290054, 33.689651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190823, 34.973301, 33.835583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356970, -0.199657, -0.912529,
		0.795461, -0.577106, -0.184906,
		-0.489708, -0.791887, 0.364829,
		40.043911, 34.735733, 33.945030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641403, 34.531258, 33.466618>,  <40.386707, 35.290054, 33.689651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641403, 34.531258, 33.466618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254829, 34.620865, 33.516933>,  <40.022884, 34.674629, 33.547123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254829, 34.620865, 33.516933>,  <40.641403, 34.531258, 33.466618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254829, 34.620865, 33.516933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170367, -0.192311, -0.966432,
		-0.192311, -0.955422, 0.224021,
		0.966432, -0.224021, -0.125789,
		39.964901, 34.688072, 33.554668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145802, 34.010891, 33.600929>,  <40.641403, 34.531258, 33.466618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145802, 34.010891, 33.600929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006920, 34.306103, 33.369495>,  <39.923592, 34.483231, 33.230633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006920, 34.306103, 33.369495>,  <40.145802, 34.010891, 33.600929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006920, 34.306103, 33.369495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039557, -0.604895, -0.795322,
		-0.936955, -0.299026, 0.180828,
		-0.347204, 0.738028, -0.578588,
		39.902760, 34.527512, 33.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624706, 33.751873, 33.148655>,  <40.145802, 34.010891, 33.600929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624706, 33.751873, 33.148655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787437, 34.071735, 32.972000>,  <39.885075, 34.263653, 32.866009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787437, 34.071735, 32.972000>,  <39.624706, 33.751873, 33.148655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787437, 34.071735, 32.972000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130154, -0.529258, -0.838418,
		-0.904185, 0.283612, -0.319396,
		0.406828, 0.799656, -0.441634,
		39.909485, 34.311634, 32.839508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315742, 33.860477, 32.554752>,  <39.624706, 33.751873, 33.148655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315742, 33.860477, 32.554752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697552, 33.976982, 32.580193>,  <39.926640, 34.046886, 32.595455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697552, 33.976982, 32.580193>,  <39.315742, 33.860477, 32.554752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697552, 33.976982, 32.580193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274395, -0.774912, -0.569402,
		-0.116565, 0.560959, -0.819596,
		0.954526, 0.291265, 0.063597,
		39.983910, 34.064362, 32.599270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452053, 34.569073, 32.439171>,  <39.315742, 33.860477, 32.554752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452053, 34.569073, 32.439171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087154, 34.585865, 32.276176>,  <38.868214, 34.595940, 32.178379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087154, 34.585865, 32.276176>,  <39.452053, 34.569073, 32.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087154, 34.585865, 32.276176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363175, 0.377273, 0.851921,
		0.189495, 0.925150, -0.328920,
		-0.912247, 0.041979, -0.407483,
		38.813480, 34.598457, 32.153931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185123, 35.323452, 32.327457>,  <39.452053, 34.569073, 32.439171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185123, 35.323452, 32.327457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906708, 35.047794, 32.408070>,  <38.739658, 34.882401, 32.456436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906708, 35.047794, 32.408070>,  <39.185123, 35.323452, 32.327457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906708, 35.047794, 32.408070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118101, 0.386740, 0.914595,
		-0.708226, 0.612792, -0.350574,
		-0.696038, -0.689143, 0.201527,
		38.697895, 34.841053, 32.468529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566193, 35.721909, 32.603874>,  <39.185123, 35.323452, 32.327457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566193, 35.721909, 32.603874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524918, 35.356140, 32.760433>,  <38.500153, 35.136681, 32.854370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524918, 35.356140, 32.760433>,  <38.566193, 35.721909, 32.603874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524918, 35.356140, 32.760433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243082, 0.404751, 0.881526,
		-0.964502, -0.004181, -0.264043,
		-0.103187, -0.914417, 0.391399,
		38.493961, 35.081814, 32.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900089, 35.763206, 32.921753>,  <38.566193, 35.721909, 32.603874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900089, 35.763206, 32.921753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103775, 35.457619, 33.080265>,  <38.225986, 35.274265, 33.175373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103775, 35.457619, 33.080265>,  <37.900089, 35.763206, 32.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103775, 35.457619, 33.080265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174060, 0.359517, 0.916761,
		-0.842852, -0.535808, 0.050096,
		0.509218, -0.763974, 0.396283,
		38.256542, 35.228428, 33.199150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155128, 35.980221, 33.023441>,  <37.900089, 35.763206, 32.921753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155128, 35.980221, 33.023441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523010, 36.134720, 32.995281>,  <37.743740, 36.227421, 32.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523010, 36.134720, 32.995281>,  <37.155128, 35.980221, 33.023441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523010, 36.134720, 32.995281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194666, -0.292900, 0.936117,
		0.340957, -0.874654, -0.344571,
		0.919703, 0.386252, -0.070399,
		37.798920, 36.250595, 32.974163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802216, 36.699715, 32.967087>,  <37.155128, 35.980221, 33.023441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802216, 36.699715, 32.967087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403717, 36.709003, 32.933731>,  <36.164619, 36.714577, 32.913719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403717, 36.709003, 32.933731>,  <36.802216, 36.699715, 32.967087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403717, 36.709003, 32.933731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086400, -0.208634, 0.974170,
		0.005222, 0.977718, 0.209857,
		-0.996247, 0.023219, -0.083385,
		36.104843, 36.715969, 32.908714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514629, 37.228642, 33.424328>,  <36.802216, 36.699715, 32.967087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514629, 37.228642, 33.424328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256416, 36.929672, 33.361538>,  <36.101486, 36.750290, 33.323864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256416, 36.929672, 33.361538>,  <36.514629, 37.228642, 33.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256416, 36.929672, 33.361538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112258, -0.110442, 0.987522,
		-0.755436, 0.655101, -0.012610,
		-0.645534, -0.747425, -0.156972,
		36.062756, 36.705444, 33.314445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893894, 37.337402, 33.743477>,  <36.514629, 37.228642, 33.424328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893894, 37.337402, 33.743477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981945, 36.947979, 33.719036>,  <36.034775, 36.714325, 33.704372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981945, 36.947979, 33.719036>,  <35.893894, 37.337402, 33.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981945, 36.947979, 33.719036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064286, -0.076981, 0.994958,
		-0.973351, -0.215087, -0.079531,
		0.220125, -0.973556, -0.061103,
		36.047981, 36.655910, 33.700706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405926, 36.952637, 34.158051>,  <35.893894, 37.337402, 33.743477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405926, 36.952637, 34.158051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719074, 36.707462, 34.115295>,  <35.906963, 36.560356, 34.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719074, 36.707462, 34.115295>,  <35.405926, 36.952637, 34.158051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719074, 36.707462, 34.115295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060952, -0.095420, 0.993569,
		-0.619195, -0.784349, -0.037341,
		0.782868, -0.612937, -0.106891,
		35.953934, 36.523582, 34.083229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176998, 36.385616, 34.526573>,  <35.405926, 36.952637, 34.158051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176998, 36.385616, 34.526573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568050, 36.301556, 34.530033>,  <35.802681, 36.251118, 34.532108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568050, 36.301556, 34.530033>,  <35.176998, 36.385616, 34.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568050, 36.301556, 34.530033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081003, -0.338213, 0.937577,
		-0.194106, -0.917305, -0.347670,
		0.977631, -0.210151, 0.008655,
		35.861340, 36.238510, 34.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281631, 35.708557, 34.946449>,  <35.176998, 36.385616, 34.526573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281631, 35.708557, 34.946449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649376, 35.865925, 34.947346>,  <35.870022, 35.960346, 34.947884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649376, 35.865925, 34.947346>,  <35.281631, 35.708557, 34.946449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649376, 35.865925, 34.947346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153397, -0.363701, 0.918799,
		0.362285, -0.844361, -0.394720,
		0.919358, 0.393415, 0.002241,
		35.925182, 35.983948, 34.948017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753811, 35.186214, 35.030148>,  <35.281631, 35.708557, 34.946449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753811, 35.186214, 35.030148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929626, 35.523201, 35.154766>,  <36.035114, 35.725391, 35.229538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929626, 35.523201, 35.154766>,  <35.753811, 35.186214, 35.030148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929626, 35.523201, 35.154766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060295, -0.373738, 0.925572,
		0.896197, -0.388040, -0.215069,
		0.439539, 0.842463, 0.311547,
		36.061489, 35.775940, 35.248230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466702, 35.234081, 35.247482>,  <35.753811, 35.186214, 35.030148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466702, 35.234081, 35.247482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230839, 35.471012, 35.467098>,  <36.089321, 35.613171, 35.598869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230839, 35.471012, 35.467098>,  <36.466702, 35.234081, 35.247482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230839, 35.471012, 35.467098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233904, -0.525426, 0.818056,
		0.773039, 0.610798, 0.171275,
		-0.589660, 0.592328, 0.549043,
		36.053940, 35.648712, 35.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679710, 35.225559, 35.842552>,  <36.466702, 35.234081, 35.247482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679710, 35.225559, 35.842552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338184, 35.405514, 35.947319>,  <36.133270, 35.513489, 36.010178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338184, 35.405514, 35.947319>,  <36.679710, 35.225559, 35.842552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338184, 35.405514, 35.947319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160753, -0.250678, 0.954630,
		0.495134, 0.857182, 0.141711,
		-0.853815, 0.449889, 0.261914,
		36.082039, 35.540482, 36.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819302, 35.563419, 36.483776>,  <36.679710, 35.225559, 35.842552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819302, 35.563419, 36.483776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426765, 35.501266, 36.438477>,  <36.191242, 35.463974, 36.411297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426765, 35.501266, 36.438477>,  <36.819302, 35.563419, 36.483776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426765, 35.501266, 36.438477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009659, -0.628091, 0.778080,
		-0.192029, 0.762469, 0.617872,
		-0.981342, -0.155382, -0.113247,
		36.132362, 35.454651, 36.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239445, 35.254532, 36.998795>,  <36.819302, 35.563419, 36.483776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239445, 35.254532, 36.998795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313915, 34.971066, 36.726578>,  <37.358597, 34.800987, 36.563248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313915, 34.971066, 36.726578>,  <37.239445, 35.254532, 36.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313915, 34.971066, 36.726578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729808, 0.563488, -0.387120,
		0.657814, -0.424589, 0.622097,
		0.186177, -0.708664, -0.680539,
		37.369770, 34.758465, 36.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004238, 35.037117, 37.082115>,  <37.239445, 35.254532, 36.998795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004238, 35.037117, 37.082115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887402, 34.969849, 36.705521>,  <37.817299, 34.929489, 36.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887402, 34.969849, 36.705521>,  <38.004238, 35.037117, 37.082115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887402, 34.969849, 36.705521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756939, 0.561057, -0.335049,
		0.584575, -0.810514, -0.036582,
		-0.292087, -0.168171, -0.941490,
		37.799774, 34.919399, 36.423073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597511, 35.063278, 36.798454>,  <38.004238, 35.037117, 37.082115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597511, 35.063278, 36.798454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324074, 35.118793, 36.511837>,  <38.160011, 35.152103, 36.339867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324074, 35.118793, 36.511837>,  <38.597511, 35.063278, 36.798454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324074, 35.118793, 36.511837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594429, 0.675526, -0.436257,
		0.423496, -0.724157, -0.544287,
		-0.683598, 0.138787, -0.716542,
		38.118996, 35.160431, 36.296875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847260, 34.870724, 36.239250>,  <38.597511, 35.063278, 36.798454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847260, 34.870724, 36.239250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587688, 35.169708, 36.182419>,  <38.431946, 35.349098, 36.148319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587688, 35.169708, 36.182419>,  <38.847260, 34.870724, 36.239250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587688, 35.169708, 36.182419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751162, 0.599703, -0.275882,
		-0.121006, -0.285754, -0.950632,
		-0.648932, 0.747463, -0.142080,
		38.393009, 35.393948, 36.139793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982368, 35.105904, 35.563316>,  <38.847260, 34.870724, 36.239250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982368, 35.105904, 35.563316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818630, 35.364594, 35.820744>,  <38.720387, 35.519806, 35.975201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818630, 35.364594, 35.820744>,  <38.982368, 35.105904, 35.563316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818630, 35.364594, 35.820744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811543, 0.580429, -0.067084,
		-0.416932, 0.494826, -0.762440,
		-0.409347, 0.646722, 0.643572,
		38.695827, 35.558609, 36.013817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977829, 35.824688, 35.434822>,  <38.982368, 35.105904, 35.563316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977829, 35.824688, 35.434822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012436, 35.815273, 35.833210>,  <39.033199, 35.809624, 36.072243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012436, 35.815273, 35.833210>,  <38.977829, 35.824688, 35.434822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012436, 35.815273, 35.833210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943519, 0.322872, -0.074331,
		-0.319822, 0.946150, 0.050146,
		0.086519, -0.023541, 0.995972,
		39.038391, 35.808212, 36.132000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358047, 36.442780, 35.678085>,  <38.977829, 35.824688, 35.434822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358047, 36.442780, 35.678085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405518, 36.158794, 35.955750>,  <39.433998, 35.988403, 36.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405518, 36.158794, 35.955750>,  <39.358047, 36.442780, 35.678085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405518, 36.158794, 35.955750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989918, 0.139037, -0.027037,
		-0.077320, 0.690375, 0.719308,
		0.118676, -0.709965, 0.694165,
		39.441120, 35.945805, 36.163998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920261, 36.608353, 36.106285>,  <39.358047, 36.442780, 35.678085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920261, 36.608353, 36.106285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874046, 36.211033, 36.104641>,  <39.846317, 35.972641, 36.103653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874046, 36.211033, 36.104641>,  <39.920261, 36.608353, 36.106285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874046, 36.211033, 36.104641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929305, -0.106628, -0.353585,
		0.350776, -0.044673, 0.935393,
		-0.115535, -0.993295, -0.004113,
		39.839386, 35.913044, 36.103409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297653, 36.261326, 36.665440>,  <39.920261, 36.608353, 36.106285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297653, 36.261326, 36.665440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265461, 36.041882, 36.332561>,  <40.246147, 35.910213, 36.132835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265461, 36.041882, 36.332561>,  <40.297653, 36.261326, 36.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265461, 36.041882, 36.332561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994907, 0.006627, -0.100582,
		0.060695, -0.836052, 0.545283,
		-0.080479, -0.548611, -0.832195,
		40.241318, 35.877300, 36.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856750, 35.671104, 36.695427>,  <40.297653, 36.261326, 36.665440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856750, 35.671104, 36.695427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760639, 35.756653, 36.316689>,  <40.702972, 35.807983, 36.089443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760639, 35.756653, 36.316689>,  <40.856750, 35.671104, 36.695427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760639, 35.756653, 36.316689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960960, -0.085449, -0.263161,
		-0.137190, -0.973117, -0.184991,
		-0.240279, 0.213873, -0.946850,
		40.688557, 35.820816, 36.032635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060234, 35.130760, 36.233494>,  <40.856750, 35.671104, 36.695427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060234, 35.130760, 36.233494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065731, 35.470215, 36.021976>,  <41.069031, 35.673889, 35.895065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065731, 35.470215, 36.021976>,  <41.060234, 35.130760, 36.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065731, 35.470215, 36.021976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943246, -0.186496, -0.274783,
		-0.331810, -0.495003, -0.803040,
		0.013746, 0.848641, -0.528791,
		41.069855, 35.724808, 35.863338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151356, 35.001076, 35.420261>,  <41.060234, 35.130760, 36.233494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151356, 35.001076, 35.420261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299561, 35.320423, 35.610138>,  <41.388485, 35.512032, 35.724064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299561, 35.320423, 35.610138>,  <41.151356, 35.001076, 35.420261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299561, 35.320423, 35.610138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925305, -0.361726, -0.113860,
		0.080807, 0.481424, -0.872755,
		0.370513, 0.798364, 0.474694,
		41.410713, 35.559933, 35.752544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180862, 34.519199, 34.750443>,  <41.151356, 35.001076, 35.420261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180862, 34.519199, 34.750443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031898, 34.200504, 34.940823>,  <40.942520, 34.009289, 35.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031898, 34.200504, 34.940823>,  <41.180862, 34.519199, 34.750443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031898, 34.200504, 34.940823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839189, -0.508093, -0.193916,
		0.396327, 0.327196, 0.857828,
		-0.372408, -0.796733, 0.475950,
		40.920177, 33.961483, 35.083607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634094, 34.302937, 35.327152>,  <41.180862, 34.519199, 34.750443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634094, 34.302937, 35.327152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421402, 33.980000, 35.224812>,  <41.293785, 33.786236, 35.163406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421402, 33.980000, 35.224812>,  <41.634094, 34.302937, 35.327152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421402, 33.980000, 35.224812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846460, -0.496745, -0.191702,
		0.027676, -0.318503, 0.947518,
		-0.531732, -0.807342, -0.255852,
		41.261883, 33.737797, 35.148056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643532, 33.675076, 35.801807>,  <41.634094, 34.302937, 35.327152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643532, 33.675076, 35.801807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604450, 33.605366, 35.409874>,  <41.581001, 33.563541, 35.174713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604450, 33.605366, 35.409874>,  <41.643532, 33.675076, 35.801807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604450, 33.605366, 35.409874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866080, -0.499899, 0.002551,
		-0.490265, -0.848369, 0.199778,
		-0.097704, -0.174274, -0.979838,
		41.575138, 33.553082, 35.115921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667423, 32.971798, 35.699009>,  <41.643532, 33.675076, 35.801807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667423, 32.971798, 35.699009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791492, 33.138088, 35.357025>,  <41.865936, 33.237862, 35.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791492, 33.138088, 35.357025>,  <41.667423, 32.971798, 35.699009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791492, 33.138088, 35.357025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741598, -0.668502, -0.056009,
		-0.594829, -0.616667, -0.515655,
		0.310178, 0.415725, -0.854963,
		41.884544, 33.262806, 35.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978245, 32.424622, 35.420879>,  <41.667423, 32.971798, 35.699009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978245, 32.424622, 35.420879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112556, 32.742710, 35.218937>,  <42.193142, 32.933563, 35.097771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112556, 32.742710, 35.218937>,  <41.978245, 32.424622, 35.420879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112556, 32.742710, 35.218937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843306, -0.492564, -0.214980,
		-0.419631, -0.353565, -0.836004,
		0.335776, 0.795219, -0.504858,
		42.213287, 32.981277, 35.067478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298538, 32.054600, 34.834698>,  <41.978245, 32.424622, 35.420879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298538, 32.054600, 34.834698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438633, 32.429035, 34.847759>,  <42.522690, 32.653698, 34.855595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438633, 32.429035, 34.847759>,  <42.298538, 32.054600, 34.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438633, 32.429035, 34.847759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864639, -0.309708, -0.395576,
		-0.360181, 0.166782, -0.917853,
		0.350241, 0.936090, 0.032655,
		42.543705, 32.709862, 34.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758831, 32.226418, 34.211910>,  <42.298538, 32.054600, 34.834698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758831, 32.226418, 34.211910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833420, 32.521358, 34.471615>,  <42.878174, 32.698322, 34.627438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833420, 32.521358, 34.471615>,  <42.758831, 32.226418, 34.211910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833420, 32.521358, 34.471615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962618, -0.004972, -0.270816,
		-0.196458, 0.675492, -0.710714,
		0.186467, 0.737350, 0.649265,
		42.889359, 32.742565, 34.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426895, 32.537308, 34.436142>,  <42.758831, 32.226418, 34.211910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426895, 32.537308, 34.436142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813152, 32.470345, 34.515644>,  <44.044907, 32.430168, 34.563347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813152, 32.470345, 34.515644>,  <43.426895, 32.537308, 34.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813152, 32.470345, 34.515644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046370, -0.863580, -0.502075,
		0.255690, 0.475610, -0.841675,
		0.965646, -0.167404, 0.198754,
		44.102848, 32.420124, 34.575272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474602, 31.699970, 34.553265>,  <43.426895, 32.537308, 34.436142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474602, 31.699970, 34.553265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145237, 31.487804, 34.472607>,  <42.947620, 31.360506, 34.424213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145237, 31.487804, 34.472607>,  <43.474602, 31.699970, 34.553265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145237, 31.487804, 34.472607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378036, -0.777764, 0.502168,
		-0.423185, 0.337262, 0.840933,
		-0.823409, -0.530413, -0.201640,
		42.898212, 31.328680, 34.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505238, 31.232029, 35.099133>,  <43.474602, 31.699970, 34.553265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505238, 31.232029, 35.099133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252087, 31.064493, 34.838661>,  <43.100197, 30.963972, 34.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252087, 31.064493, 34.838661>,  <43.505238, 31.232029, 35.099133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252087, 31.064493, 34.838661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281863, -0.907971, 0.310068,
		-0.721120, 0.012694, 0.692694,
		-0.632882, -0.418841, -0.651178,
		43.062222, 30.938841, 34.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260616, 30.906658, 35.375423>,  <43.505238, 31.232029, 35.099133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260616, 30.906658, 35.375423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522694, 31.184500, 35.494255>,  <44.679939, 31.351204, 35.565552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522694, 31.184500, 35.494255>,  <44.260616, 30.906658, 35.375423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522694, 31.184500, 35.494255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687271, 0.711298, -0.147356,
		-0.313663, -0.107625, 0.943415,
		0.655190, 0.694602, 0.297075,
		44.719250, 31.392879, 35.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089329, 31.259813, 36.003555>,  <44.260616, 30.906658, 35.375423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089329, 31.259813, 36.003555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293941, 31.506285, 35.764004>,  <44.416710, 31.654167, 35.620274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293941, 31.506285, 35.764004>,  <44.089329, 31.259813, 36.003555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293941, 31.506285, 35.764004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760918, 0.648615, 0.017411,
		0.399168, 0.446788, 0.800653,
		0.511536, 0.616181, -0.598876,
		44.447403, 31.691139, 35.584339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386398, 31.927525, 36.264153>,  <44.089329, 31.259813, 36.003555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386398, 31.927525, 36.264153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247074, 31.909647, 35.889626>,  <44.163479, 31.898920, 35.664909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247074, 31.909647, 35.889626>,  <44.386398, 31.927525, 36.264153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247074, 31.909647, 35.889626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796338, 0.541040, 0.270410,
		0.494498, 0.839808, -0.224040,
		-0.348307, -0.044695, -0.936314,
		44.142582, 31.896238, 35.608730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119751, 32.565437, 36.075008>,  <44.386398, 31.927525, 36.264153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119751, 32.565437, 36.075008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926270, 32.293571, 35.854431>,  <43.810181, 32.130451, 35.722084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926270, 32.293571, 35.854431>,  <44.119751, 32.565437, 36.075008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926270, 32.293571, 35.854431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849701, 0.515733, 0.109668,
		0.209857, 0.521605, -0.826975,
		-0.483702, -0.679668, -0.551439,
		43.781158, 32.089672, 35.688999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299370, 33.287468, 35.871677>,  <44.119751, 32.565437, 36.075008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299370, 33.287468, 35.871677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273857, 33.615494, 36.099163>,  <44.258549, 33.812309, 36.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273857, 33.615494, 36.099163>,  <44.299370, 33.287468, 35.871677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273857, 33.615494, 36.099163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839578, -0.263967, 0.474795,
		0.539482, 0.507763, -0.671667,
		-0.063786, 0.820060, 0.568712,
		44.254723, 33.861511, 36.269775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950203, 33.754696, 35.795692>,  <44.299370, 33.287468, 35.871677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950203, 33.754696, 35.795692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739204, 33.735424, 36.134968>,  <44.612606, 33.723862, 36.338531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739204, 33.735424, 36.134968>,  <44.950203, 33.754696, 35.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739204, 33.735424, 36.134968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823943, -0.272323, 0.496949,
		0.207037, 0.960999, 0.183349,
		-0.527498, -0.048182, 0.848189,
		44.580956, 33.720970, 36.389423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598125, 34.357780, 35.547646>,  <44.950203, 33.754696, 35.795692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598125, 34.357780, 35.547646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677921, 34.699509, 35.739620>,  <44.725800, 34.904545, 35.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677921, 34.699509, 35.739620>,  <44.598125, 34.357780, 35.547646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677921, 34.699509, 35.739620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796136, -0.426853, 0.428911,
		0.571290, 0.296533, -0.765308,
		0.199488, 0.854321, 0.479937,
		44.737766, 34.955807, 35.883602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516399, 35.105316, 35.389908>,  <44.598125, 34.357780, 35.547646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516399, 35.105316, 35.389908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457401, 35.070904, 34.995781>,  <44.422001, 35.050255, 34.759304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457401, 35.070904, 34.995781>,  <44.516399, 35.105316, 35.389908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457401, 35.070904, 34.995781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823902, 0.540468, -0.170527,
		0.547202, -0.836954, -0.008833,
		-0.147498, -0.086036, -0.985314,
		44.413151, 35.045094, 34.700188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995914, 34.824112, 35.037697>,  <44.516399, 35.105316, 35.389908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995914, 34.824112, 35.037697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837921, 35.091133, 34.785236>,  <44.743126, 35.251347, 34.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837921, 35.091133, 34.785236>,  <44.995914, 34.824112, 35.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837921, 35.091133, 34.785236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918179, 0.309707, -0.247041,
		0.030560, -0.677091, -0.735264,
		-0.394986, 0.667554, -0.631156,
		44.719425, 35.291401, 34.595890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123627, 34.648483, 34.289162>,  <44.995914, 34.824112, 35.037697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123627, 34.648483, 34.289162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079388, 35.034004, 34.386204>,  <45.052845, 35.265316, 34.444431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079388, 35.034004, 34.386204>,  <45.123627, 34.648483, 34.289162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079388, 35.034004, 34.386204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991137, 0.125033, -0.044881,
		-0.073590, 0.235496, -0.969085,
		-0.110598, 0.963799, 0.242610,
		45.046207, 35.323143, 34.458988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591904, 34.903645, 33.843170>,  <45.123627, 34.648483, 34.289162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591904, 34.903645, 33.843170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522667, 35.139816, 34.158493>,  <45.481125, 35.281521, 34.347687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522667, 35.139816, 34.158493>,  <45.591904, 34.903645, 33.843170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522667, 35.139816, 34.158493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977210, 0.202815, 0.062667,
		-0.122880, 0.781191, -0.612080,
		-0.173094, 0.590430, 0.788309,
		45.470737, 35.316944, 34.394985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768681, 35.697330, 33.779091>,  <45.591904, 34.903645, 33.843170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768681, 35.697330, 33.779091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812382, 35.555023, 34.150356>,  <45.838604, 35.469639, 34.373116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812382, 35.555023, 34.150356>,  <45.768681, 35.697330, 33.779091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812382, 35.555023, 34.150356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940854, 0.338283, 0.018919,
		-0.320713, 0.871201, 0.371687,
		0.109253, -0.355771, 0.928165,
		45.845158, 35.448292, 34.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100780, 36.104725, 34.230568>,  <45.768681, 35.697330, 33.779091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100780, 36.104725, 34.230568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207523, 35.755356, 34.393497>,  <46.271568, 35.545734, 34.491253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207523, 35.755356, 34.393497>,  <46.100780, 36.104725, 34.230568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207523, 35.755356, 34.393497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962631, 0.221350, -0.156033,
		0.046123, 0.433739, 0.899857,
		0.266861, -0.873427, 0.407321,
		46.287582, 35.493328, 34.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614971, 36.180534, 34.775093>,  <46.100780, 36.104725, 34.230568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614971, 36.180534, 34.775093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659683, 35.819576, 34.608627>,  <46.686512, 35.603001, 34.508747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659683, 35.819576, 34.608627>,  <46.614971, 36.180534, 34.775093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659683, 35.819576, 34.608627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980742, 0.167673, -0.100154,
		0.160157, -0.396955, 0.903757,
		0.111779, -0.902393, -0.416165,
		46.693218, 35.548859, 34.483776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100620, 35.968842, 35.249222>,  <46.614971, 36.180534, 34.775093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100620, 35.968842, 35.249222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111935, 35.849472, 34.867615>,  <47.118725, 35.777851, 34.638653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111935, 35.849472, 34.867615>,  <47.100620, 35.968842, 35.249222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111935, 35.849472, 34.867615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903333, 0.416284, -0.103429,
		0.428007, -0.858867, 0.281349,
		0.028289, -0.298420, -0.954015,
		47.120422, 35.759945, 34.581409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822563, 35.687286, 35.179520>,  <47.100620, 35.968842, 35.249222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822563, 35.687286, 35.179520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652485, 35.861755, 34.862289>,  <47.550438, 35.966434, 34.671951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652485, 35.861755, 34.862289>,  <47.822563, 35.687286, 35.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652485, 35.861755, 34.862289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902875, 0.265832, -0.337861,
		0.063459, -0.859703, -0.506836,
		-0.425194, 0.436169, -0.793074,
		47.524925, 35.992607, 34.624367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.306553, 35.178921, 34.804390>,  <47.822563, 35.687286, 35.179520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.306553, 35.178921, 34.804390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915653, 35.137653, 34.878506>,  <47.681114, 35.112892, 34.922977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915653, 35.137653, 34.878506>,  <48.306553, 35.178921, 34.804390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.915653, 35.137653, 34.878506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144043, -0.318358, -0.936963,
		0.155658, -0.942339, 0.296255,
		-0.977252, -0.103172, 0.185293,
		47.622478, 35.106701, 34.934093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.022999, 31.467813, 24.143791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663704, 31.371338, 23.996824>,  <40.448128, 31.313454, 23.908644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663704, 31.371338, 23.996824>,  <41.022999, 31.467813, 24.143791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663704, 31.371338, 23.996824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364995, -0.056340, 0.929303,
		-0.244837, 0.968842, -0.037426,
		-0.898239, -0.241188, -0.367416,
		40.394234, 31.298981, 23.886599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494404, 32.007320, 24.441956>,  <41.022999, 31.467813, 24.143791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494404, 32.007320, 24.441956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267990, 31.692015, 24.345417>,  <40.132141, 31.502831, 24.287495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267990, 31.692015, 24.345417>,  <40.494404, 32.007320, 24.441956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267990, 31.692015, 24.345417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605366, 0.198715, 0.770743,
		-0.559590, 0.582368, -0.589667,
		-0.566031, -0.788264, -0.241347,
		40.098179, 31.455536, 24.273012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804699, 32.204311, 24.393301>,  <40.494404, 32.007320, 24.441956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804699, 32.204311, 24.393301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762672, 31.806862, 24.409620>,  <39.737457, 31.568392, 24.419413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762672, 31.806862, 24.409620>,  <39.804699, 32.204311, 24.393301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762672, 31.806862, 24.409620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611056, 0.096872, 0.785637,
		-0.784584, 0.057612, -0.617340,
		-0.105065, -0.993628, 0.040800,
		39.731152, 31.508774, 24.421860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145115, 32.118763, 24.589640>,  <39.804699, 32.204311, 24.393301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145115, 32.118763, 24.589640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307613, 31.766884, 24.688511>,  <39.405113, 31.555756, 24.747833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307613, 31.766884, 24.688511>,  <39.145115, 32.118763, 24.589640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307613, 31.766884, 24.688511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658507, -0.094309, 0.746642,
		-0.633509, -0.466087, -0.617599,
		0.406246, -0.879698, 0.247176,
		39.429485, 31.502974, 24.762663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515808, 31.608761, 24.784716>,  <39.145115, 32.118763, 24.589640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515808, 31.608761, 24.784716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858318, 31.482872, 24.948538>,  <39.063824, 31.407339, 25.046831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858318, 31.482872, 24.948538>,  <38.515808, 31.608761, 24.784716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858318, 31.482872, 24.948538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455477, -0.086182, 0.886066,
		-0.243571, -0.945262, -0.217146,
		0.856279, -0.314725, 0.409554,
		39.115204, 31.388454, 25.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430550, 30.877436, 25.059725>,  <38.515808, 31.608761, 24.784716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430550, 30.877436, 25.059725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703075, 31.097979, 25.252316>,  <38.866592, 31.230305, 25.367870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703075, 31.097979, 25.252316>,  <38.430550, 30.877436, 25.059725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703075, 31.097979, 25.252316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543224, -0.060035, 0.837439,
		0.490631, -0.832108, 0.258607,
		0.681313, 0.551355, 0.481476,
		38.907471, 31.263386, 25.396759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507580, 30.648745, 25.736282>,  <38.430550, 30.877436, 25.059725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507580, 30.648745, 25.736282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703434, 30.988831, 25.813633>,  <38.820946, 31.192883, 25.860044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703434, 30.988831, 25.813633>,  <38.507580, 30.648745, 25.736282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703434, 30.988831, 25.813633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426881, 0.040361, 0.903407,
		0.760285, -0.524886, 0.382703,
		0.489632, 0.850215, 0.193379,
		38.850323, 31.243895, 25.871647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861183, 30.580053, 26.504324>,  <38.507580, 30.648745, 25.736282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861183, 30.580053, 26.504324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845890, 30.969620, 26.414858>,  <38.836716, 31.203360, 26.361177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845890, 30.969620, 26.414858>,  <38.861183, 30.580053, 26.504324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845890, 30.969620, 26.414858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249194, 0.207467, 0.945970,
		0.967699, 0.091903, 0.234762,
		-0.038232, 0.973915, -0.223668,
		38.834419, 31.261795, 26.347757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057476, 30.845304, 27.042177>,  <38.861183, 30.580053, 26.504324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057476, 30.845304, 27.042177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929550, 31.187050, 26.878330>,  <38.852795, 31.392097, 26.780022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929550, 31.187050, 26.878330>,  <39.057476, 30.845304, 27.042177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929550, 31.187050, 26.878330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114361, 0.394353, 0.911815,
		0.940553, 0.338455, -0.028414,
		-0.319813, 0.854361, -0.409617,
		38.833607, 31.443357, 26.755445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469967, 31.325441, 27.414072>,  <39.057476, 30.845304, 27.042177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469967, 31.325441, 27.414072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173042, 31.554733, 27.275288>,  <38.994888, 31.692308, 27.192017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173042, 31.554733, 27.275288>,  <39.469967, 31.325441, 27.414072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173042, 31.554733, 27.275288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017799, 0.534494, 0.844985,
		0.669820, 0.621065, -0.406963,
		-0.742310, 0.573232, -0.346960,
		38.950348, 31.726704, 27.171200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658875, 31.921637, 27.586971>,  <39.469967, 31.325441, 27.414072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658875, 31.921637, 27.586971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264439, 31.970545, 27.541918>,  <39.027779, 31.999889, 27.514885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264439, 31.970545, 27.541918>,  <39.658875, 31.921637, 27.586971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264439, 31.970545, 27.541918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038017, 0.493724, 0.868787,
		0.161837, 0.860980, -0.482205,
		-0.986085, 0.122270, -0.112634,
		38.968613, 32.007225, 27.508127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606541, 32.609673, 27.669798>,  <39.658875, 31.921637, 27.586971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606541, 32.609673, 27.669798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259125, 32.430946, 27.755579>,  <39.050674, 32.323711, 27.807047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259125, 32.430946, 27.755579>,  <39.606541, 32.609673, 27.669798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259125, 32.430946, 27.755579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035337, 0.487430, 0.872447,
		-0.494351, 0.750180, -0.439143,
		-0.868544, -0.446814, 0.214452,
		38.998562, 32.296902, 27.819914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182461, 33.139633, 27.783321>,  <39.606541, 32.609673, 27.669798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182461, 33.139633, 27.783321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015015, 32.826637, 27.967695>,  <38.914547, 32.638840, 28.078320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015015, 32.826637, 27.967695>,  <39.182461, 33.139633, 27.783321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015015, 32.826637, 27.967695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191696, 0.572248, 0.797361,
		-0.887700, 0.245431, -0.389555,
		-0.418619, -0.782494, 0.460936,
		38.889427, 32.591888, 28.105976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751076, 33.517544, 28.187397>,  <39.182461, 33.139633, 27.783321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751076, 33.517544, 28.187397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725227, 33.147781, 28.337757>,  <38.709721, 32.925922, 28.427973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725227, 33.147781, 28.337757>,  <38.751076, 33.517544, 28.187397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725227, 33.147781, 28.337757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259774, 0.379282, 0.888067,
		-0.963505, -0.040263, -0.264645,
		-0.064619, -0.924405, 0.375900,
		38.705841, 32.870461, 28.450527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045464, 33.514519, 28.565840>,  <38.751076, 33.517544, 28.187397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045464, 33.514519, 28.565840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281982, 33.222115, 28.702070>,  <38.423893, 33.046673, 28.783810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281982, 33.222115, 28.702070>,  <38.045464, 33.514519, 28.565840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281982, 33.222115, 28.702070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197834, 0.277927, 0.940010,
		-0.781812, -0.623202, 0.019718,
		0.591296, -0.731010, 0.340577,
		38.459370, 33.002811, 28.804243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677532, 33.251129, 29.114799>,  <38.045464, 33.514519, 28.565840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677532, 33.251129, 29.114799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060658, 33.154778, 29.177492>,  <38.290535, 33.096966, 29.215107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060658, 33.154778, 29.177492>,  <37.677532, 33.251129, 29.114799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060658, 33.154778, 29.177492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117540, 0.169313, 0.978528,
		-0.262246, -0.955672, 0.133857,
		0.957816, -0.240882, 0.156732,
		38.348003, 33.082512, 29.224512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696804, 32.730721, 29.572325>,  <37.677532, 33.251129, 29.114799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696804, 32.730721, 29.572325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068008, 32.876251, 29.604372>,  <38.290733, 32.963570, 29.623600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068008, 32.876251, 29.604372>,  <37.696804, 32.730721, 29.572325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068008, 32.876251, 29.604372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092621, 0.017019, 0.995556,
		0.360848, -0.931311, 0.049492,
		0.928014, 0.363828, 0.080117,
		38.346413, 32.985401, 29.628407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728668, 32.622410, 30.242161>,  <37.696804, 32.730721, 29.572325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728668, 32.622410, 30.242161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053478, 32.844414, 30.169954>,  <38.248363, 32.977615, 30.126629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053478, 32.844414, 30.169954>,  <37.728668, 32.622410, 30.242161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053478, 32.844414, 30.169954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009384, 0.321681, 0.946802,
		0.583551, -0.767130, 0.266420,
		0.812022, 0.555007, -0.180519,
		38.297085, 33.010918, 30.115799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259430, 32.480911, 30.775846>,  <37.728668, 32.622410, 30.242161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259430, 32.480911, 30.775846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373283, 32.831684, 30.620943>,  <38.441597, 33.042149, 30.528002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373283, 32.831684, 30.620943>,  <38.259430, 32.480911, 30.775846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373283, 32.831684, 30.620943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020741, 0.398240, 0.917047,
		0.958412, -0.269054, 0.095164,
		0.284633, 0.876935, -0.387258,
		38.458672, 33.094765, 30.504766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665676, 32.838425, 31.303053>,  <38.259430, 32.480911, 30.775846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665676, 32.838425, 31.303053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541126, 33.133781, 31.063782>,  <38.466396, 33.310997, 30.920219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541126, 33.133781, 31.063782>,  <38.665676, 32.838425, 31.303053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541126, 33.133781, 31.063782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017137, 0.633731, 0.773363,
		0.950133, 0.230555, -0.209982,
		-0.311375, 0.738396, -0.598178,
		38.447712, 33.355301, 30.884329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086742, 33.549957, 31.441181>,  <38.665676, 32.838425, 31.303053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086742, 33.549957, 31.441181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719097, 33.605328, 31.293633>,  <38.498508, 33.638550, 31.205103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719097, 33.605328, 31.293633>,  <39.086742, 33.549957, 31.441181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719097, 33.605328, 31.293633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240831, 0.543586, 0.804062,
		0.311816, 0.827861, -0.466281,
		-0.919114, 0.138424, -0.368873,
		38.443363, 33.646854, 31.182970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946056, 34.284473, 31.273800>,  <39.086742, 33.549957, 31.441181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946056, 34.284473, 31.273800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597561, 34.104595, 31.352509>,  <38.388466, 33.996666, 31.399734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597561, 34.104595, 31.352509>,  <38.946056, 34.284473, 31.273800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597561, 34.104595, 31.352509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119894, 0.583684, 0.803080,
		-0.475997, 0.676081, -0.562443,
		-0.871236, -0.449697, 0.196774,
		38.336189, 33.969685, 31.411541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512238, 34.073795, 31.820818>,  <38.946056, 34.284473, 31.273800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512238, 34.073795, 31.820818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874077, 34.056221, 31.990414>,  <40.091183, 34.045677, 32.092171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874077, 34.056221, 31.990414>,  <39.512238, 34.073795, 31.820818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874077, 34.056221, 31.990414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399004, -0.262678, -0.878519,
		0.149973, 0.963883, -0.220087,
		0.904602, -0.043939, 0.423987,
		40.145458, 34.043041, 32.117611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987446, 34.415836, 31.346186>,  <39.512238, 34.073795, 31.820818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987446, 34.415836, 31.346186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218971, 34.178520, 31.569967>,  <40.357887, 34.036133, 31.704235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218971, 34.178520, 31.569967>,  <39.987446, 34.415836, 31.346186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218971, 34.178520, 31.569967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496603, -0.287716, -0.818905,
		0.646808, 0.751819, 0.128094,
		0.578813, -0.593286, 0.559452,
		40.392616, 34.000534, 31.737803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573624, 34.489098, 31.089453>,  <39.987446, 34.415836, 31.346186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573624, 34.489098, 31.089453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.637611, 34.146404, 31.285585>,  <40.676003, 33.940788, 31.403265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.637611, 34.146404, 31.285585>,  <40.573624, 34.489098, 31.089453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637611, 34.146404, 31.285585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536946, -0.341294, -0.771497,
		0.828311, 0.386696, 0.405422,
		0.159967, -0.856729, 0.490332,
		40.685600, 33.889385, 31.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312965, 34.290127, 30.992302>,  <40.573624, 34.489098, 31.089453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312965, 34.290127, 30.992302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139477, 33.956024, 31.127495>,  <41.035381, 33.755562, 31.208611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139477, 33.956024, 31.127495>,  <41.312965, 34.290127, 30.992302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139477, 33.956024, 31.127495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459062, -0.527606, -0.714768,
		0.775334, -0.154860, 0.612271,
		-0.433726, -0.835255, 0.337981,
		41.009357, 33.705448, 31.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842083, 33.841286, 31.111441>,  <41.312965, 34.290127, 30.992302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842083, 33.841286, 31.111441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502758, 33.642895, 31.037287>,  <41.299164, 33.523861, 30.992794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502758, 33.642895, 31.037287>,  <41.842083, 33.841286, 31.111441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502758, 33.642895, 31.037287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389869, -0.348179, -0.852510,
		0.358277, -0.795474, 0.488731,
		-0.848316, -0.495976, -0.185386,
		41.248264, 33.494102, 30.981670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098846, 33.124210, 30.998499>,  <41.842083, 33.841286, 31.111441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098846, 33.124210, 30.998499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.735313, 33.150509, 30.833715>,  <41.517193, 33.166286, 30.734846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.735313, 33.150509, 30.833715>,  <42.098846, 33.124210, 30.998499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735313, 33.150509, 30.833715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278285, -0.640139, -0.716086,
		-0.310788, -0.765441, 0.563482,
		-0.908828, 0.065742, -0.411958,
		41.462666, 33.170231, 30.710129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982857, 32.438705, 30.817883>,  <42.098846, 33.124210, 30.998499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982857, 32.438705, 30.817883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.756893, 32.685921, 30.599195>,  <41.621315, 32.834251, 30.467983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.756893, 32.685921, 30.599195>,  <41.982857, 32.438705, 30.817883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756893, 32.685921, 30.599195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094948, -0.609479, -0.787096,
		-0.819670, -0.496550, 0.285621,
		-0.564913, 0.618040, -0.546718,
		41.587418, 32.871334, 30.435181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631573, 31.960749, 30.338863>,  <41.982857, 32.438705, 30.817883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631573, 31.960749, 30.338863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525318, 32.306568, 30.168222>,  <41.461567, 32.514061, 30.065838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525318, 32.306568, 30.168222>,  <41.631573, 31.960749, 30.338863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525318, 32.306568, 30.168222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077234, -0.460162, -0.884469,
		-0.960975, -0.201998, 0.189007,
		-0.265635, 0.864551, -0.426603,
		41.445629, 32.565933, 30.040241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171684, 31.789749, 29.818916>,  <41.631573, 31.960749, 30.338863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171684, 31.789749, 29.818916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282219, 32.159016, 29.712030>,  <41.348537, 32.380577, 29.647900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282219, 32.159016, 29.712030>,  <41.171684, 31.789749, 29.818916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282219, 32.159016, 29.712030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131744, -0.239029, -0.962034,
		-0.951989, 0.301047, 0.055570,
		0.276334, 0.923166, -0.267214,
		41.365120, 32.435966, 29.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797398, 32.005486, 29.217402>,  <41.171684, 31.789749, 29.818916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797398, 32.005486, 29.217402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.116726, 32.246372, 29.216082>,  <41.308323, 32.390903, 29.215290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.116726, 32.246372, 29.216082>,  <40.797398, 32.005486, 29.217402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116726, 32.246372, 29.216082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031743, -0.047551, -0.998364,
		-0.601392, 0.796913, -0.057077,
		0.798323, 0.602220, -0.003301,
		41.356224, 32.427040, 29.215092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656334, 32.503323, 28.770618>,  <40.797398, 32.005486, 29.217402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656334, 32.503323, 28.770618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055870, 32.522251, 28.767107>,  <41.295593, 32.533607, 28.764999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055870, 32.522251, 28.767107>,  <40.656334, 32.503323, 28.770618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055870, 32.522251, 28.767107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010090, 0.027543, -0.999570,
		-0.047059, 0.998500, 0.027989,
		0.998841, 0.047321, -0.008778,
		41.355522, 32.536446, 28.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844437, 32.768368, 28.101286>,  <40.656334, 32.503323, 28.770618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844437, 32.768368, 28.101286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.204922, 32.672520, 28.245728>,  <41.421211, 32.615009, 28.332392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.204922, 32.672520, 28.245728>,  <40.844437, 32.768368, 28.101286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204922, 32.672520, 28.245728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401586, 0.148501, -0.903701,
		0.162925, 0.959441, 0.230061,
		0.901213, -0.239625, 0.361104,
		41.475285, 32.600632, 28.354059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312931, 33.221687, 27.754557>,  <40.844437, 32.768368, 28.101286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312931, 33.221687, 27.754557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.485012, 32.884426, 27.883566>,  <41.588261, 32.682072, 27.960972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.485012, 32.884426, 27.883566>,  <41.312931, 33.221687, 27.754557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485012, 32.884426, 27.883566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423424, -0.127068, -0.896976,
		0.797267, 0.522450, 0.302344,
		0.430207, -0.843149, 0.322525,
		41.614075, 32.631481, 27.980324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985043, 33.199417, 27.510941>,  <41.312931, 33.221687, 27.754557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985043, 33.199417, 27.510941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.911839, 32.811588, 27.575968>,  <41.867916, 32.578892, 27.614985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.911839, 32.811588, 27.575968>,  <41.985043, 33.199417, 27.510941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911839, 32.811588, 27.575968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457710, -0.230378, -0.858736,
		0.870062, -0.082750, 0.485947,
		-0.183012, -0.969576, 0.162568,
		41.856934, 32.520714, 27.624739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690361, 32.765198, 27.610298>,  <41.985043, 33.199417, 27.510941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690361, 32.765198, 27.610298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372627, 32.547562, 27.502216>,  <42.181988, 32.416981, 27.437366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.372627, 32.547562, 27.502216>,  <42.690361, 32.765198, 27.610298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372627, 32.547562, 27.502216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465218, -0.258788, -0.846523,
		0.390656, -0.798122, 0.458681,
		-0.794330, -0.544086, -0.270204,
		42.134327, 32.384335, 27.421156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060970, 32.321899, 27.165972>,  <42.690361, 32.765198, 27.610298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060970, 32.321899, 27.165972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.677803, 32.220898, 27.111370>,  <42.447903, 32.160297, 27.078609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.677803, 32.220898, 27.111370>,  <43.060970, 32.321899, 27.165972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677803, 32.220898, 27.111370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198339, -0.238502, -0.950673,
		0.207496, -0.937740, 0.278547,
		-0.957918, -0.252507, -0.136503,
		42.390427, 32.145145, 27.070419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080639, 31.735622, 26.721416>,  <43.060970, 32.321899, 27.165972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080639, 31.735622, 26.721416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717205, 31.901922, 26.705290>,  <42.499146, 32.001701, 26.695614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717205, 31.901922, 26.705290>,  <43.080639, 31.735622, 26.721416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717205, 31.901922, 26.705290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000666, -0.095077, -0.995470,
		-0.417698, -0.904497, 0.086109,
		-0.908586, 0.415748, -0.040316,
		42.444630, 32.026646, 26.693195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649029, 31.169008, 26.312405>,  <43.080639, 31.735622, 26.721416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649029, 31.169008, 26.312405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.520348, 31.547131, 26.290834>,  <42.443138, 31.774004, 26.277891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.520348, 31.547131, 26.290834>,  <42.649029, 31.169008, 26.312405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520348, 31.547131, 26.290834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057268, -0.037424, -0.997657,
		-0.945108, -0.324035, -0.042097,
		-0.321701, 0.945305, -0.053926,
		42.423836, 31.830723, 26.274656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.516350, 31.215570, 25.670441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.684719, 31.574358, 25.724506>,  <41.785740, 31.789631, 25.756947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.684719, 31.574358, 25.724506>,  <41.516350, 31.215570, 25.670441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684719, 31.574358, 25.724506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033828, 0.133382, -0.990487,
		-0.906467, 0.421488, 0.025800,
		0.420920, 0.896971, 0.135164,
		41.810997, 31.843449, 25.765057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215878, 31.594627, 25.187605>,  <41.516350, 31.215570, 25.670441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215878, 31.594627, 25.187605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.554886, 31.791922, 25.266016>,  <41.758289, 31.910299, 25.313063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.554886, 31.791922, 25.266016>,  <41.215878, 31.594627, 25.187605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554886, 31.791922, 25.266016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111086, 0.196307, -0.974230,
		-0.519007, 0.847456, 0.111582,
		0.847521, 0.493237, 0.196025,
		41.809143, 31.939892, 25.324823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210724, 32.059940, 24.708099>,  <41.215878, 31.594627, 25.187605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210724, 32.059940, 24.708099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.589069, 32.071102, 24.837450>,  <41.816074, 32.077801, 24.915060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.589069, 32.071102, 24.837450>,  <41.210724, 32.059940, 24.708099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589069, 32.071102, 24.837450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323288, 0.007684, -0.946269,
		-0.028889, 0.999581, -0.001753,
		0.945860, 0.027904, 0.323375,
		41.872826, 32.079472, 24.934462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494019, 32.653492, 24.333576>,  <41.210724, 32.059940, 24.708099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494019, 32.653492, 24.333576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.792618, 32.419716, 24.460800>,  <41.971779, 32.279449, 24.537134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.792618, 32.419716, 24.460800>,  <41.494019, 32.653492, 24.333576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792618, 32.419716, 24.460800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363932, -0.041541, -0.930498,
		0.557034, 0.810372, 0.181686,
		0.746503, -0.584440, 0.318061,
		42.016567, 32.244385, 24.556219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276917, 33.008884, 24.180861>,  <41.494019, 32.653492, 24.333576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276917, 33.008884, 24.180861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293617, 32.609684, 24.199810>,  <42.303638, 32.370163, 24.211180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293617, 32.609684, 24.199810>,  <42.276917, 33.008884, 24.180861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293617, 32.609684, 24.199810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459006, -0.022956, -0.888136,
		0.887451, 0.058825, 0.457132,
		0.041750, -0.998004, 0.047373,
		42.306141, 32.310284, 24.214022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839275, 32.949955, 23.837955>,  <42.276917, 33.008884, 24.180861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839275, 32.949955, 23.837955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.743050, 32.562569, 23.863897>,  <42.685314, 32.330139, 23.879463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.743050, 32.562569, 23.863897>,  <42.839275, 32.949955, 23.837955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743050, 32.562569, 23.863897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440860, -0.168549, -0.881609,
		0.864738, -0.183492, 0.467504,
		-0.240566, -0.968464, 0.064856,
		42.670879, 32.272030, 23.883354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462097, 32.575748, 23.632656>,  <42.839275, 32.949955, 23.837955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462097, 32.575748, 23.632656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.158737, 32.319717, 23.583466>,  <42.976719, 32.166100, 23.553951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.158737, 32.319717, 23.583466>,  <43.462097, 32.575748, 23.632656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158737, 32.319717, 23.583466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401771, -0.310530, -0.861482,
		0.513229, -0.702759, 0.492672,
		-0.758403, -0.640079, -0.122975,
		42.931217, 32.127693, 23.546574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737846, 31.982264, 23.305296>,  <43.462097, 32.575748, 23.632656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737846, 31.982264, 23.305296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347237, 31.910345, 23.257851>,  <43.112869, 31.867193, 23.229383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347237, 31.910345, 23.257851>,  <43.737846, 31.982264, 23.305296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347237, 31.910345, 23.257851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183367, -0.404990, -0.895745,
		0.113016, -0.896469, 0.428452,
		-0.976526, -0.179798, -0.118613,
		43.054279, 31.856405, 23.222267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588844, 31.250023, 23.221264>,  <43.737846, 31.982264, 23.305296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588844, 31.250023, 23.221264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.309669, 31.481352, 23.052299>,  <43.142166, 31.620150, 22.950920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.309669, 31.481352, 23.052299>,  <43.588844, 31.250023, 23.221264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309669, 31.481352, 23.052299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294423, -0.305975, -0.905370,
		-0.652844, -0.756255, 0.043279,
		-0.697932, 0.578323, -0.422413,
		43.100288, 31.654848, 22.925575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280659, 30.701349, 22.704500>,  <43.588844, 31.250023, 23.221264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280659, 30.701349, 22.704500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.163841, 31.062866, 22.579363>,  <43.093750, 31.279776, 22.504280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.163841, 31.062866, 22.579363>,  <43.280659, 30.701349, 22.704500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163841, 31.062866, 22.579363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166622, -0.274023, -0.947179,
		-0.941778, -0.328746, -0.070565,
		-0.292045, 0.903790, -0.312846,
		43.076229, 31.334003, 22.485510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725586, 30.644747, 22.183662>,  <43.280659, 30.701349, 22.704500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725586, 30.644747, 22.183662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883625, 31.004709, 22.109831>,  <42.978447, 31.220686, 22.065533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883625, 31.004709, 22.109831>,  <42.725586, 30.644747, 22.183662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883625, 31.004709, 22.109831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065559, -0.228035, -0.971443,
		-0.916297, 0.371713, -0.149093,
		0.395097, 0.899905, -0.184579,
		43.002155, 31.274681, 22.054457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498215, 30.625275, 21.595455>,  <42.725586, 30.644747, 22.183662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498215, 30.625275, 21.595455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.751965, 30.934040, 21.578884>,  <42.904213, 31.119299, 21.568941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.751965, 30.934040, 21.578884>,  <42.498215, 30.625275, 21.595455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751965, 30.934040, 21.578884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345807, -0.331306, -0.877869,
		-0.691365, 0.542573, -0.477106,
		0.634376, 0.771914, -0.041428,
		42.942276, 31.165615, 21.566456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273575, 31.052197, 20.950367>,  <42.498215, 30.625275, 21.595455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273575, 31.052197, 20.950367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648666, 31.131624, 21.064371>,  <42.873722, 31.179281, 21.132774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648666, 31.131624, 21.064371>,  <42.273575, 31.052197, 20.950367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648666, 31.131624, 21.064371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268921, 0.104345, -0.957493,
		-0.219870, 0.974516, 0.044447,
		0.937730, 0.198572, 0.285010,
		42.929985, 31.191196, 21.149874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476986, 31.630892, 20.584894>,  <42.273575, 31.052197, 20.950367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476986, 31.630892, 20.584894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825943, 31.471729, 20.698452>,  <43.035316, 31.376232, 20.766586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825943, 31.471729, 20.698452>,  <42.476986, 31.630892, 20.584894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825943, 31.471729, 20.698452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379722, 0.185970, -0.906216,
		0.307794, 0.898379, 0.313333,
		0.872396, -0.397908, 0.283894,
		43.087662, 31.352358, 20.783621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942684, 32.095314, 20.428852>,  <42.476986, 31.630892, 20.584894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942684, 32.095314, 20.428852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.162601, 31.761240, 20.434389>,  <43.294552, 31.560795, 20.437712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.162601, 31.761240, 20.434389>,  <42.942684, 32.095314, 20.428852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162601, 31.761240, 20.434389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144298, 0.078641, -0.986404,
		0.822741, 0.544318, 0.163752,
		0.549796, -0.835184, 0.013843,
		43.327541, 31.510685, 20.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487423, 32.219452, 19.993731>,  <42.942684, 32.095314, 20.428852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487423, 32.219452, 19.993731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535343, 31.822901, 20.014931>,  <43.564095, 31.584969, 20.027651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535343, 31.822901, 20.014931>,  <43.487423, 32.219452, 19.993731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535343, 31.822901, 20.014931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094614, -0.041742, -0.994639,
		0.988279, 0.124172, 0.088798,
		0.119800, -0.991382, 0.053001,
		43.571281, 31.525486, 20.030830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157318, 32.086960, 19.737877>,  <43.487423, 32.219452, 19.993731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157318, 32.086960, 19.737877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.938652, 31.754213, 19.699602>,  <43.807453, 31.554565, 19.676638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.938652, 31.754213, 19.699602>,  <44.157318, 32.086960, 19.737877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938652, 31.754213, 19.699602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212100, -0.027016, -0.976874,
		0.810041, -0.554322, 0.191207,
		-0.546668, -0.831864, -0.095688,
		43.774651, 31.504654, 19.670897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534370, 31.629396, 19.409405>,  <44.157318, 32.086960, 19.737877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534370, 31.629396, 19.409405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.161106, 31.511795, 19.326677>,  <43.937149, 31.441235, 19.277040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.161106, 31.511795, 19.326677>,  <44.534370, 31.629396, 19.409405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161106, 31.511795, 19.326677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264757, -0.172988, -0.948672,
		0.243138, -0.940019, 0.239265,
		-0.933160, -0.294006, -0.206817,
		43.881157, 31.423594, 19.264633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572372, 31.176157, 18.838659>,  <44.534370, 31.629396, 19.409405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572372, 31.176157, 18.838659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.177704, 31.238087, 18.858665>,  <43.940903, 31.275244, 18.870668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.177704, 31.238087, 18.858665>,  <44.572372, 31.176157, 18.838659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177704, 31.238087, 18.858665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065792, -0.098513, -0.992958,
		-0.148813, -0.983017, 0.107387,
		-0.986674, 0.154831, 0.050015,
		43.881702, 31.284534, 18.873671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096336, 30.536873, 18.531002>,  <44.572372, 31.176157, 18.838659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096336, 30.536873, 18.531002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.904289, 30.885664, 18.492764>,  <43.789059, 31.094938, 18.469820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.904289, 30.885664, 18.492764>,  <44.096336, 30.536873, 18.531002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904289, 30.885664, 18.492764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012554, -0.115795, -0.993194,
		-0.877112, -0.475653, 0.066542,
		-0.480121, 0.871978, -0.095594,
		43.760254, 31.147257, 18.464085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634224, 30.535801, 17.936159>,  <44.096336, 30.536873, 18.531002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634224, 30.535801, 17.936159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643227, 30.932299, 17.988197>,  <43.648628, 31.170198, 18.019421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643227, 30.932299, 17.988197>,  <43.634224, 30.535801, 17.936159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643227, 30.932299, 17.988197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062997, 0.131278, -0.989342,
		-0.997760, 0.014072, 0.065401,
		0.022508, 0.991246, 0.130097,
		43.649979, 31.229671, 18.027225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285870, 30.772799, 17.375122>,  <43.634224, 30.535801, 17.936159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285870, 30.772799, 17.375122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.504936, 31.084299, 17.497503>,  <43.636375, 31.271200, 17.570932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.504936, 31.084299, 17.497503>,  <43.285870, 30.772799, 17.375122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504936, 31.084299, 17.497503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241027, 0.203329, -0.948980,
		-0.801230, 0.593467, -0.076344,
		0.547665, 0.778752, 0.305955,
		43.669235, 31.317924, 17.589291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005795, 31.334787, 17.113455>,  <43.285870, 30.772799, 17.375122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005795, 31.334787, 17.113455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.393948, 31.404924, 17.179918>,  <43.626839, 31.447006, 17.219795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.393948, 31.404924, 17.179918>,  <43.005795, 31.334787, 17.113455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393948, 31.404924, 17.179918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101733, 0.327225, -0.939454,
		-0.219097, 0.928536, 0.299696,
		0.970385, 0.175343, 0.166157,
		43.685062, 31.457527, 17.229765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322449, 31.847601, 16.742476>,  <43.005795, 31.334787, 17.113455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322449, 31.847601, 16.742476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.052757, 31.801161, 16.450741>,  <42.890942, 31.773296, 16.275700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.052757, 31.801161, 16.450741>,  <43.322449, 31.847601, 16.742476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052757, 31.801161, 16.450741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559411, 0.725032, 0.401731,
		0.482152, 0.678859, -0.553787,
		-0.674232, -0.116100, -0.729337,
		42.850487, 31.766331, 16.231939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001770, 32.429073, 16.828505>,  <43.322449, 31.847601, 16.742476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001770, 32.429073, 16.828505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.741123, 32.192223, 16.638865>,  <42.584736, 32.050110, 16.525080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.741123, 32.192223, 16.638865>,  <43.001770, 32.429073, 16.828505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741123, 32.192223, 16.638865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729937, 0.319454, 0.604269,
		-0.206353, 0.739818, -0.640381,
		-0.651622, -0.592130, -0.474100,
		42.545635, 32.014584, 16.496634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307526, 32.838013, 16.590136>,  <43.001770, 32.429073, 16.828505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307526, 32.838013, 16.590136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.222328, 32.447456, 16.604568>,  <42.171211, 32.213123, 16.613228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.222328, 32.447456, 16.604568>,  <42.307526, 32.838013, 16.590136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222328, 32.447456, 16.604568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794069, 0.194502, 0.575867,
		-0.569288, 0.094004, -0.816746,
		-0.212992, -0.976387, 0.036082,
		42.158432, 32.154541, 16.615393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494434, 32.797329, 16.433882>,  <42.307526, 32.838013, 16.590136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494434, 32.797329, 16.433882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614532, 32.464535, 16.620497>,  <41.686592, 32.264858, 16.732466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614532, 32.464535, 16.620497>,  <41.494434, 32.797329, 16.433882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614532, 32.464535, 16.620497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817755, 0.027276, 0.574920,
		-0.491048, -0.554133, -0.672167,
		0.300248, -0.831981, 0.466538,
		41.704605, 32.214939, 16.760458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888874, 32.503803, 16.689493>,  <41.494434, 32.797329, 16.433882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888874, 32.503803, 16.689493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140488, 32.293282, 16.918339>,  <41.291458, 32.166969, 17.055645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140488, 32.293282, 16.918339>,  <40.888874, 32.503803, 16.689493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140488, 32.293282, 16.918339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587586, 0.159951, 0.793195,
		-0.508973, -0.835116, -0.208635,
		0.629038, -0.526306, 0.572113,
		41.329201, 32.135391, 17.089973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505817, 32.005814, 17.172709>,  <40.888874, 32.503803, 16.689493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505817, 32.005814, 17.172709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852379, 32.041027, 17.369320>,  <41.060314, 32.062157, 17.487288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852379, 32.041027, 17.369320>,  <40.505817, 32.005814, 17.172709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852379, 32.041027, 17.369320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494574, 0.015461, 0.868998,
		0.068912, -0.995996, 0.056940,
		0.866399, 0.088045, 0.491529,
		41.112297, 32.067440, 17.516779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377964, 31.723139, 17.822958>,  <40.505817, 32.005814, 17.172709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377964, 31.723139, 17.822958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720196, 31.914211, 17.902761>,  <40.925533, 32.028854, 17.950644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720196, 31.914211, 17.902761>,  <40.377964, 31.723139, 17.822958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720196, 31.914211, 17.902761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217890, -0.017296, 0.975820,
		0.469581, -0.878363, 0.089284,
		0.855580, 0.477681, 0.199508,
		40.976871, 32.057514, 17.962614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733257, 31.250807, 18.273529>,  <40.377964, 31.723139, 17.822958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733257, 31.250807, 18.273529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.894100, 31.611641, 18.336201>,  <40.990608, 31.828142, 18.373804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.894100, 31.611641, 18.336201>,  <40.733257, 31.250807, 18.273529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894100, 31.611641, 18.336201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230465, -0.065891, 0.970847,
		0.886111, -0.426497, 0.181404,
		0.402111, 0.902086, 0.156679,
		41.014732, 31.882267, 18.383204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060654, 31.220785, 18.892851>,  <40.733257, 31.250807, 18.273529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060654, 31.220785, 18.892851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036705, 31.617205, 18.845127>,  <41.022335, 31.855057, 18.816492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036705, 31.617205, 18.845127>,  <41.060654, 31.220785, 18.892851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036705, 31.617205, 18.845127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007554, 0.119971, 0.992749,
		0.998177, 0.058538, -0.014669,
		-0.059873, 0.991050, -0.119310,
		41.018742, 31.914520, 18.809334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557644, 31.441034, 19.331650>,  <41.060654, 31.220785, 18.892851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557644, 31.441034, 19.331650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334419, 31.770023, 19.287645>,  <41.200485, 31.967417, 19.261242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334419, 31.770023, 19.287645>,  <41.557644, 31.441034, 19.331650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334419, 31.770023, 19.287645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103907, 0.200797, 0.974107,
		0.823267, 0.532183, -0.197518,
		-0.558064, 0.822473, -0.110012,
		41.167000, 32.016766, 19.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810394, 32.012150, 19.733030>,  <41.557644, 31.441034, 19.331650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810394, 32.012150, 19.733030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423851, 32.105350, 19.689461>,  <41.191925, 32.161270, 19.663319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423851, 32.105350, 19.689461>,  <41.810394, 32.012150, 19.733030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423851, 32.105350, 19.689461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073345, 0.156269, 0.984988,
		0.246523, 0.959839, -0.133922,
		-0.966358, 0.232999, -0.108923,
		41.133945, 32.175251, 19.656784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720558, 32.524971, 20.152391>,  <41.810394, 32.012150, 19.733030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720558, 32.524971, 20.152391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.363201, 32.358269, 20.085270>,  <41.148785, 32.258247, 20.044996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.363201, 32.358269, 20.085270>,  <41.720558, 32.524971, 20.152391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363201, 32.358269, 20.085270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219778, 0.079645, 0.972293,
		-0.391843, 0.905523, -0.162748,
		-0.893396, -0.416755, -0.167806,
		41.095181, 32.233242, 20.034927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236347, 33.011604, 20.559818>,  <41.720558, 32.524971, 20.152391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236347, 33.011604, 20.559818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040714, 32.668209, 20.498098>,  <40.923336, 32.462173, 20.461067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040714, 32.668209, 20.498098>,  <41.236347, 33.011604, 20.559818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040714, 32.668209, 20.498098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383748, 0.052922, 0.921920,
		-0.783287, 0.510104, -0.355324,
		-0.489079, -0.858483, -0.154298,
		40.893990, 32.410664, 20.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600502, 33.057507, 21.007616>,  <41.236347, 33.011604, 20.559818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600502, 33.057507, 21.007616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669842, 32.669971, 20.936846>,  <40.711445, 32.437450, 20.894384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669842, 32.669971, 20.936846>,  <40.600502, 33.057507, 21.007616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669842, 32.669971, 20.936846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286944, -0.221533, 0.931980,
		-0.942133, -0.110787, -0.316405,
		0.173345, -0.968839, -0.176924,
		40.721844, 32.379318, 20.883768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003613, 32.598843, 21.296062>,  <40.600502, 33.057507, 21.007616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003613, 32.598843, 21.296062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302097, 32.338902, 21.238289>,  <40.481186, 32.182938, 21.203625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302097, 32.338902, 21.238289>,  <40.003613, 32.598843, 21.296062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302097, 32.338902, 21.238289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254750, -0.479200, 0.839923,
		-0.615040, -0.589964, -0.523134,
		0.746210, -0.649854, -0.144433,
		40.525959, 32.143944, 21.194960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656513, 32.036839, 21.496967>,  <40.003613, 32.598843, 21.296062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656513, 32.036839, 21.496967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044350, 31.938944, 21.496536>,  <40.277050, 31.880209, 21.496277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044350, 31.938944, 21.496536>,  <39.656513, 32.036839, 21.496967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044350, 31.938944, 21.496536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114636, -0.458054, 0.881501,
		-0.216225, -0.854572, -0.472180,
		0.969590, -0.244732, -0.001078,
		40.335228, 31.865524, 21.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627167, 31.362482, 21.516220>,  <39.656513, 32.036839, 21.496967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627167, 31.362482, 21.516220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984123, 31.468678, 21.662182>,  <40.198296, 31.532394, 21.749760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984123, 31.468678, 21.662182>,  <39.627167, 31.362482, 21.516220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984123, 31.468678, 21.662182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175460, -0.540861, 0.822607,
		0.415757, -0.798113, -0.436076,
		0.892390, 0.265490, 0.364904,
		40.251839, 31.548325, 21.771652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021400, 30.712166, 21.697372>,  <39.627167, 31.362482, 21.516220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021400, 30.712166, 21.697372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162174, 31.010389, 21.923748>,  <40.246639, 31.189323, 22.059572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162174, 31.010389, 21.923748>,  <40.021400, 30.712166, 21.697372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162174, 31.010389, 21.923748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138511, -0.556480, 0.819234,
		0.925719, -0.366707, -0.092577,
		0.351937, 0.745558, 0.565937,
		40.267754, 31.234056, 22.093529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396870, 30.387897, 22.253807>,  <40.021400, 30.712166, 21.697372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396870, 30.387897, 22.253807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352955, 30.760254, 22.393171>,  <40.326607, 30.983667, 22.476789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352955, 30.760254, 22.393171>,  <40.396870, 30.387897, 22.253807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352955, 30.760254, 22.393171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121518, -0.360468, 0.924822,
		0.986499, 0.059196, 0.152695,
		-0.109787, 0.930891, 0.348408,
		40.320019, 31.039522, 22.497694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836151, 30.439047, 22.915367>,  <40.396870, 30.387897, 22.253807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836151, 30.439047, 22.915367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.592594, 30.752623, 22.963852>,  <40.446461, 30.940767, 22.992943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.592594, 30.752623, 22.963852>,  <40.836151, 30.439047, 22.915367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592594, 30.752623, 22.963852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120954, -0.059265, 0.990887,
		0.783977, 0.618005, -0.058734,
		-0.608893, 0.783937, 0.121213,
		40.409927, 30.987804, 23.000216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094082, 30.750700, 23.551516>,  <40.836151, 30.439047, 22.915367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094082, 30.750700, 23.551516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734047, 30.911180, 23.483534>,  <40.518028, 31.007469, 23.442745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734047, 30.911180, 23.483534>,  <41.094082, 30.750700, 23.551516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734047, 30.911180, 23.483534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257573, -0.175329, 0.950219,
		0.351431, 0.899054, 0.261149,
		-0.900085, 0.401201, -0.169956,
		40.464020, 31.031540, 23.432547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.585594, 31.966444, 28.484833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.251335, 32.185558, 28.468739>,  <42.050777, 32.317028, 28.459082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.251335, 32.185558, 28.468739>,  <42.585594, 31.966444, 28.484833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251335, 32.185558, 28.468739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234578, 0.422165, 0.875643,
		0.496649, 0.722294, -0.481280,
		-0.835651, 0.547785, -0.040234,
		42.000641, 32.349895, 28.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708405, 32.544491, 28.891027>,  <42.585594, 31.966444, 28.484833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708405, 32.544491, 28.891027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.309155, 32.550026, 28.867174>,  <42.069603, 32.553349, 28.852863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.309155, 32.550026, 28.867174>,  <42.708405, 32.544491, 28.891027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309155, 32.550026, 28.867174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052465, 0.308524, 0.949769,
		0.031542, 0.951116, -0.307219,
		-0.998125, 0.013839, -0.059631,
		42.009716, 32.554176, 28.849285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485363, 33.167397, 29.183445>,  <42.708405, 32.544491, 28.891027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485363, 33.167397, 29.183445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144207, 32.958618, 29.178541>,  <41.939514, 32.833351, 29.175600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144207, 32.958618, 29.178541>,  <42.485363, 33.167397, 29.183445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144207, 32.958618, 29.178541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152941, 0.227329, 0.961733,
		-0.499189, 0.822126, -0.273714,
		-0.852889, -0.521949, -0.012257,
		41.888340, 32.802032, 29.174864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947891, 33.578182, 29.388357>,  <42.485363, 33.167397, 29.183445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947891, 33.578182, 29.388357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 33.234673, 29.448641>,  <41.634487, 33.028568, 29.484812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 33.234673, 29.448641>,  <41.947891, 33.578182, 29.388357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752014, 33.234673, 29.448641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341121, 0.347779, 0.873319,
		-0.802394, 0.376250, -0.463250,
		-0.489695, -0.858770, 0.150709,
		41.605106, 32.977043, 29.493855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281647, 33.728577, 29.563604>,  <41.947891, 33.578182, 29.388357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281647, 33.728577, 29.563604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318512, 33.356354, 29.705345>,  <41.340630, 33.133018, 29.790390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318512, 33.356354, 29.705345>,  <41.281647, 33.728577, 29.563604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318512, 33.356354, 29.705345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340709, 0.304918, 0.889349,
		-0.935641, -0.202693, -0.288949,
		0.092159, -0.930559, 0.354353,
		41.346161, 33.077187, 29.811651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665112, 33.538307, 29.714268>,  <41.281647, 33.728577, 29.563604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665112, 33.538307, 29.714268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914684, 33.321182, 29.939146>,  <41.064426, 33.190907, 30.074072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914684, 33.321182, 29.939146>,  <40.665112, 33.538307, 29.714268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914684, 33.321182, 29.939146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546162, 0.211656, 0.810499,
		-0.558943, -0.812744, -0.164407,
		0.623930, -0.542816, 0.562194,
		41.101864, 33.158337, 30.107803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309547, 33.195026, 30.126335>,  <40.665112, 33.538307, 29.714268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309547, 33.195026, 30.126335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658592, 33.179058, 30.321049>,  <40.868019, 33.169476, 30.437878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658592, 33.179058, 30.321049>,  <40.309547, 33.195026, 30.126335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658592, 33.179058, 30.321049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476057, 0.153296, 0.865950,
		-0.109194, -0.987374, 0.114761,
		0.872609, -0.039924, 0.486786,
		40.920376, 33.167080, 30.467085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129826, 32.827190, 30.783009>,  <40.309547, 33.195026, 30.126335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129826, 32.827190, 30.783009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475918, 33.017643, 30.845835>,  <40.683575, 33.131912, 30.883530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475918, 33.017643, 30.845835>,  <40.129826, 32.827190, 30.783009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475918, 33.017643, 30.845835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294785, 0.229713, 0.927542,
		0.405551, -0.848841, 0.339112,
		0.865234, 0.476130, 0.157065,
		40.735489, 33.160480, 30.892954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354424, 32.588772, 31.490314>,  <40.129826, 32.827190, 30.783009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354424, 32.588772, 31.490314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556427, 32.924278, 31.408890>,  <40.677628, 33.125584, 31.360035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556427, 32.924278, 31.408890>,  <40.354424, 32.588772, 31.490314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556427, 32.924278, 31.408890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195473, 0.340865, 0.919566,
		0.840687, -0.424598, 0.336096,
		0.505010, 0.838765, -0.203564,
		40.707932, 33.175907, 31.347820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557079, 32.773602, 32.113922>,  <40.354424, 32.588772, 31.490314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557079, 32.773602, 32.113922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639236, 33.107735, 31.909950>,  <40.688530, 33.308216, 31.787567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639236, 33.107735, 31.909950>,  <40.557079, 32.773602, 32.113922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639236, 33.107735, 31.909950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206083, 0.546270, 0.811862,
		0.956735, -0.061666, 0.284350,
		0.205396, 0.835336, -0.509928,
		40.700855, 33.358337, 31.756971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900013, 33.222916, 32.603485>,  <40.557079, 32.773602, 32.113922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900013, 33.222916, 32.603485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776169, 33.468536, 32.313084>,  <40.701862, 33.615910, 32.138844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776169, 33.468536, 32.313084>,  <40.900013, 33.222916, 32.603485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776169, 33.468536, 32.313084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167399, 0.716400, 0.677310,
		0.936012, 0.331235, -0.119014,
		-0.309611, 0.614048, -0.726008,
		40.683285, 33.652752, 32.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273064, 33.783756, 32.738224>,  <40.900013, 33.222916, 32.603485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273064, 33.783756, 32.738224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929386, 33.864506, 32.550163>,  <40.723179, 33.912956, 32.437328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929386, 33.864506, 32.550163>,  <41.273064, 33.783756, 32.738224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929386, 33.864506, 32.550163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262631, 0.614590, 0.743844,
		0.439109, 0.762579, -0.475032,
		-0.859190, 0.201870, -0.470150,
		40.671631, 33.925068, 32.409119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201839, 34.502041, 32.783764>,  <41.273064, 33.783756, 32.738224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201839, 34.502041, 32.783764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838604, 34.345894, 32.723118>,  <40.620663, 34.252205, 32.686729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838604, 34.345894, 32.723118>,  <41.201839, 34.502041, 32.783764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838604, 34.345894, 32.723118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348284, 0.502953, 0.791035,
		-0.232540, 0.771135, -0.592685,
		-0.908088, -0.390370, -0.151618,
		40.566177, 34.228783, 32.677631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712746, 35.060009, 32.680500>,  <41.201839, 34.502041, 32.783764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712746, 35.060009, 32.680500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514725, 34.745415, 32.828209>,  <40.395912, 34.556660, 32.916832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514725, 34.745415, 32.828209>,  <40.712746, 35.060009, 32.680500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514725, 34.745415, 32.828209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289559, 0.550049, 0.783327,
		-0.819193, 0.280864, -0.500038,
		-0.495054, -0.786487, 0.369270,
		40.366207, 34.509468, 32.938992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003494, 35.716373, 32.910557>,  <40.712746, 35.060009, 32.680500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003494, 35.716373, 32.910557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072323, 36.110397, 32.907970>,  <41.113621, 36.346813, 32.906418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.072323, 36.110397, 32.907970>,  <41.003494, 35.716373, 32.910557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072323, 36.110397, 32.907970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282670, -0.055661, -0.957601,
		-0.943657, 0.162949, -0.288025,
		0.172072, 0.985063, -0.006465,
		41.123943, 36.405918, 32.906033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659409, 36.007095, 32.315773>,  <41.003494, 35.716373, 32.910557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659409, 36.007095, 32.315773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.943630, 36.274113, 32.404766>,  <41.114162, 36.434322, 32.458164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.943630, 36.274113, 32.404766>,  <40.659409, 36.007095, 32.315773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943630, 36.274113, 32.404766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, -0.010247, -0.951477,
		-0.632870, 0.744503, -0.212583,
		0.710555, 0.667541, 0.222487,
		41.156796, 36.474377, 32.471512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605946, 36.412373, 31.772007>,  <40.659409, 36.007095, 32.315773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605946, 36.412373, 31.772007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967739, 36.500130, 31.918304>,  <41.184814, 36.552784, 32.006084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967739, 36.500130, 31.918304>,  <40.605946, 36.412373, 31.772007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967739, 36.500130, 31.918304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397218, -0.121069, -0.909703,
		-0.155301, 0.968096, -0.196652,
		0.904488, 0.219392, 0.365743,
		41.239086, 36.565948, 32.028027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871929, 36.900444, 31.260923>,  <40.605946, 36.412373, 31.772007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871929, 36.900444, 31.260923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167969, 36.745022, 31.480480>,  <41.345592, 36.651768, 31.612215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167969, 36.745022, 31.480480>,  <40.871929, 36.900444, 31.260923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167969, 36.745022, 31.480480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537353, -0.149088, -0.830075,
		0.404362, 0.909285, 0.098451,
		0.740097, -0.388553, 0.548893,
		41.389999, 36.628456, 31.645147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474148, 37.194611, 30.910217>,  <40.871929, 36.900444, 31.260923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474148, 37.194611, 30.910217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568497, 36.865025, 31.116301>,  <41.625107, 36.667271, 31.239950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568497, 36.865025, 31.116301>,  <41.474148, 37.194611, 30.910217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568497, 36.865025, 31.116301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526296, -0.337375, -0.780506,
		0.816931, 0.455252, 0.354074,
		0.235871, -0.823968, 0.515210,
		41.639259, 36.617836, 31.270864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247246, 37.044170, 30.945370>,  <41.474148, 37.194611, 30.910217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247246, 37.044170, 30.945370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058498, 36.696068, 31.001928>,  <41.945248, 36.487206, 31.035864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058498, 36.696068, 31.001928>,  <42.247246, 37.044170, 30.945370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058498, 36.696068, 31.001928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486378, -0.390704, -0.781528,
		0.735373, -0.300008, 0.607636,
		-0.471871, -0.870256, 0.141396,
		41.916939, 36.434990, 31.044348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811157, 36.477077, 30.866108>,  <42.247246, 37.044170, 30.945370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811157, 36.477077, 30.866108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449181, 36.308243, 30.844490>,  <42.231995, 36.206940, 30.831518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449181, 36.308243, 30.844490>,  <42.811157, 36.477077, 30.866108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449181, 36.308243, 30.844490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232752, -0.384634, -0.893243,
		0.356242, -0.820911, 0.446314,
		-0.904941, -0.422091, -0.054046,
		42.177700, 36.181614, 30.828276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888615, 35.860729, 30.417442>,  <42.811157, 36.477077, 30.866108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888615, 35.860729, 30.417442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489281, 35.878441, 30.432232>,  <42.249680, 35.889069, 30.441107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489281, 35.878441, 30.432232>,  <42.888615, 35.860729, 30.417442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489281, 35.878441, 30.432232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056517, -0.622370, -0.780680,
		-0.011553, -0.781470, 0.623836,
		-0.998335, 0.044277, 0.036976,
		42.189781, 35.891724, 30.443325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681953, 35.171917, 30.279140>,  <42.888615, 35.860729, 30.417442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681953, 35.171917, 30.279140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380230, 35.423111, 30.202560>,  <42.199196, 35.573826, 30.156612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380230, 35.423111, 30.202560>,  <42.681953, 35.171917, 30.279140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380230, 35.423111, 30.202560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206588, -0.503848, -0.838724,
		-0.623167, -0.593106, 0.509792,
		-0.754310, 0.627982, -0.191452,
		42.153938, 35.611504, 30.145124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141304, 34.704250, 29.951778>,  <42.681953, 35.171917, 30.279140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141304, 34.704250, 29.951778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041912, 35.083595, 29.872927>,  <41.982277, 35.311203, 29.825615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041912, 35.083595, 29.872927>,  <42.141304, 34.704250, 29.951778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041912, 35.083595, 29.872927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198682, -0.249085, -0.947883,
		-0.948041, -0.196366, 0.250316,
		-0.248482, 0.948365, -0.197129,
		41.967369, 35.368103, 29.813787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794750, 34.591507, 29.351885>,  <42.141304, 34.704250, 29.951778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794750, 34.591507, 29.351885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870026, 34.984192, 29.363356>,  <41.915192, 35.219803, 29.370239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870026, 34.984192, 29.363356>,  <41.794750, 34.591507, 29.351885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870026, 34.984192, 29.363356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055714, 0.018482, -0.998276,
		-0.980551, 0.189465, -0.051217,
		0.188192, 0.981714, 0.028679,
		41.926483, 35.278706, 29.371960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313816, 35.061619, 28.776047>,  <41.794750, 34.591507, 29.351885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313816, 35.061619, 28.776047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646244, 35.271919, 28.848612>,  <41.845699, 35.398102, 28.892151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646244, 35.271919, 28.848612>,  <41.313816, 35.061619, 28.776047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646244, 35.271919, 28.848612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174822, 0.062710, -0.982601,
		-0.527983, 0.848322, -0.039798,
		0.831066, 0.525755, 0.181415,
		41.895565, 35.429646, 28.903036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183273, 35.625320, 28.374449>,  <41.313816, 35.061619, 28.776047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183273, 35.625320, 28.374449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573692, 35.593281, 28.455362>,  <41.807945, 35.574059, 28.503910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573692, 35.593281, 28.455362>,  <41.183273, 35.625320, 28.374449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573692, 35.593281, 28.455362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206957, 0.055073, -0.976799,
		0.067096, 0.995265, 0.070330,
		0.976047, -0.080095, 0.202282,
		41.866505, 35.569252, 28.516047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435097, 35.994526, 27.859762>,  <41.183273, 35.625320, 28.374449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435097, 35.994526, 27.859762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761833, 35.809063, 27.997042>,  <41.957874, 35.697784, 28.079409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761833, 35.809063, 27.997042>,  <41.435097, 35.994526, 27.859762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761833, 35.809063, 27.997042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391451, 0.008538, -0.920159,
		0.423710, 0.885972, 0.188474,
		0.816845, -0.463659, 0.343198,
		42.006886, 35.669964, 28.100000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388981, 36.669888, 27.648014>,  <41.435097, 35.994526, 27.859762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388981, 36.669888, 27.648014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015793, 36.680954, 27.504454>,  <40.791882, 36.687592, 27.418318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015793, 36.680954, 27.504454>,  <41.388981, 36.669888, 27.648014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015793, 36.680954, 27.504454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353230, 0.121584, 0.927602,
		0.069296, 0.992196, -0.103663,
		-0.932967, 0.027662, -0.358899,
		40.735905, 36.689251, 27.396784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029011, 37.062607, 28.178576>,  <41.388981, 36.669888, 27.648014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029011, 37.062607, 28.178576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704918, 36.929482, 27.985596>,  <40.510464, 36.849606, 27.869808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704918, 36.929482, 27.985596>,  <41.029011, 37.062607, 28.178576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704918, 36.929482, 27.985596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514495, 0.009582, 0.857440,
		-0.280747, 0.942943, -0.178996,
		-0.810232, -0.332816, -0.482449,
		40.461849, 36.829636, 27.840860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457890, 37.578617, 28.264212>,  <41.029011, 37.062607, 28.178576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457890, 37.578617, 28.264212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281384, 37.235600, 28.158447>,  <40.175480, 37.029789, 28.094988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281384, 37.235600, 28.158447>,  <40.457890, 37.578617, 28.264212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281384, 37.235600, 28.158447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656373, 0.107502, 0.746738,
		-0.611933, 0.503060, -0.610302,
		-0.441262, -0.857540, -0.264411,
		40.149006, 36.978336, 28.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850330, 37.619678, 28.570665>,  <40.457890, 37.578617, 28.264212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850330, 37.619678, 28.570665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.864288, 37.232281, 28.472031>,  <39.872662, 36.999844, 28.412849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.864288, 37.232281, 28.472031>,  <39.850330, 37.619678, 28.570665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864288, 37.232281, 28.472031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649203, -0.209555, 0.731178,
		-0.759814, 0.134574, -0.636060,
		0.034892, -0.968492, -0.246588,
		39.874756, 36.941734, 28.398054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210651, 37.369823, 28.552153>,  <39.850330, 37.619678, 28.570665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210651, 37.369823, 28.552153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413719, 37.033794, 28.628616>,  <39.535561, 36.832176, 28.674494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413719, 37.033794, 28.628616>,  <39.210651, 37.369823, 28.552153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413719, 37.033794, 28.628616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546119, -0.142175, 0.825555,
		-0.666352, -0.523504, -0.530959,
		0.507671, -0.840077, 0.191157,
		39.566021, 36.781773, 28.685963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747990, 36.757507, 28.546951>,  <39.210651, 37.369823, 28.552153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747990, 36.757507, 28.546951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066196, 36.662411, 28.769892>,  <39.257118, 36.605354, 28.903656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066196, 36.662411, 28.769892>,  <38.747990, 36.757507, 28.546951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066196, 36.662411, 28.769892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600975, -0.192111, 0.775836,
		-0.077372, -0.952142, -0.295701,
		0.795514, -0.237737, 0.557350,
		39.304852, 36.591087, 28.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526482, 36.189548, 28.822166>,  <38.747990, 36.757507, 28.546951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526482, 36.189548, 28.822166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826897, 36.282166, 29.069498>,  <39.007145, 36.337734, 29.217896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826897, 36.282166, 29.069498>,  <38.526482, 36.189548, 28.822166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826897, 36.282166, 29.069498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604510, -0.135486, 0.784992,
		0.265533, -0.963344, 0.038214,
		0.751040, 0.231542, 0.618327,
		39.052208, 36.351627, 29.254995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346088, 35.671803, 29.453508>,  <38.526482, 36.189548, 28.822166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346088, 35.671803, 29.453508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626263, 35.935619, 29.562603>,  <38.794369, 36.093910, 29.628059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626263, 35.935619, 29.562603>,  <38.346088, 35.671803, 29.453508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626263, 35.935619, 29.562603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414173, 0.064412, 0.907917,
		0.581245, -0.748900, 0.318282,
		0.700439, 0.659546, 0.272735,
		38.836395, 36.133484, 29.644424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420147, 35.587551, 30.163507>,  <38.346088, 35.671803, 29.453508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420147, 35.587551, 30.163507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549759, 35.960094, 30.097090>,  <38.627525, 36.183620, 30.057240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549759, 35.960094, 30.097090>,  <38.420147, 35.587551, 30.163507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549759, 35.960094, 30.097090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237100, 0.249862, 0.938804,
		0.915853, -0.264834, 0.301789,
		0.324032, 0.931361, -0.166045,
		38.646969, 36.239502, 30.047276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731987, 35.799980, 30.848614>,  <38.420147, 35.587551, 30.163507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731987, 35.799980, 30.848614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643318, 36.135788, 30.650190>,  <38.590118, 36.337273, 30.531136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643318, 36.135788, 30.650190>,  <38.731987, 35.799980, 30.848614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643318, 36.135788, 30.650190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417296, 0.378109, 0.826376,
		0.881321, 0.390186, 0.266511,
		-0.221670, 0.839517, -0.496058,
		38.576817, 36.387642, 30.501373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967239, 36.391209, 31.365078>,  <38.731987, 35.799980, 30.848614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967239, 36.391209, 31.365078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740414, 36.595718, 31.106764>,  <38.604321, 36.718426, 30.951777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740414, 36.595718, 31.106764>,  <38.967239, 36.391209, 31.365078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740414, 36.595718, 31.106764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447427, 0.467064, 0.762666,
		0.691556, 0.721420, -0.036096,
		-0.567062, 0.511277, -0.645784,
		38.570293, 36.749100, 30.913029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071075, 37.033272, 31.622803>,  <38.967239, 36.391209, 31.365078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071075, 37.033272, 31.622803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744167, 37.035603, 31.392313>,  <38.548023, 37.036999, 31.254019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744167, 37.035603, 31.392313>,  <39.071075, 37.033272, 31.622803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744167, 37.035603, 31.392313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516277, 0.436799, 0.736657,
		0.255984, 0.899540, -0.353977,
		-0.817270, 0.005822, -0.576226,
		38.498985, 37.037350, 31.219444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.182304, 37.332573, 23.992947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834179, 37.144035, 23.935816>,  <41.625305, 37.030914, 23.901537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834179, 37.144035, 23.935816>,  <42.182304, 37.332573, 23.992947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834179, 37.144035, 23.935816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325225, 0.332231, 0.885353,
		-0.369850, 0.816983, -0.442436,
		-0.870310, -0.471340, -0.142828,
		41.573086, 37.002632, 23.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731983, 37.904533, 24.168156>,  <42.182304, 37.332573, 23.992947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731983, 37.904533, 24.168156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545891, 37.553181, 24.211983>,  <41.434235, 37.342369, 24.238279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545891, 37.553181, 24.211983>,  <41.731983, 37.904533, 24.168156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545891, 37.553181, 24.211983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182586, 0.216339, 0.959093,
		-0.866156, 0.426192, -0.261027,
		-0.465228, -0.878384, 0.109567,
		41.406322, 37.289665, 24.244852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002052, 38.013058, 24.568275>,  <41.731983, 37.904533, 24.168156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002052, 38.013058, 24.568275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127731, 37.635357, 24.607620>,  <41.203140, 37.408737, 24.631227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127731, 37.635357, 24.607620>,  <41.002052, 38.013058, 24.568275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127731, 37.635357, 24.607620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219959, 0.028386, 0.975096,
		-0.923525, -0.328009, -0.198777,
		0.314198, -0.944248, 0.098364,
		41.221992, 37.352081, 24.637129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420513, 37.764664, 24.943157>,  <41.002052, 38.013058, 24.568275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420513, 37.764664, 24.943157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702820, 37.482246, 24.966475>,  <40.872204, 37.312798, 24.980465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702820, 37.482246, 24.966475>,  <40.420513, 37.764664, 24.943157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702820, 37.482246, 24.966475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293613, -0.216624, 0.931056,
		-0.644739, -0.674223, -0.360189,
		0.705765, -0.706044, 0.058295,
		40.914551, 37.270432, 24.983963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110447, 37.231762, 25.142773>,  <40.420513, 37.764664, 24.943157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110447, 37.231762, 25.142773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493553, 37.167988, 25.238493>,  <40.723415, 37.129723, 25.295925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493553, 37.167988, 25.238493>,  <40.110447, 37.231762, 25.142773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493553, 37.167988, 25.238493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283461, -0.383670, 0.878890,
		-0.048315, -0.909603, -0.412660,
		0.957766, -0.159436, 0.239300,
		40.780884, 37.120155, 25.310284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160881, 36.632778, 25.395782>,  <40.110447, 37.231762, 25.142773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160881, 36.632778, 25.395782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479691, 36.808380, 25.561687>,  <40.670975, 36.913742, 25.661230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479691, 36.808380, 25.561687>,  <40.160881, 36.632778, 25.395782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479691, 36.808380, 25.561687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298177, -0.311180, 0.902362,
		0.525209, -0.842876, -0.117116,
		0.797023, 0.439008, 0.414761,
		40.718796, 36.940083, 25.686115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519814, 36.113686, 25.822451>,  <40.160881, 36.632778, 25.395782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519814, 36.113686, 25.822451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677078, 36.445164, 25.981794>,  <40.771439, 36.644051, 26.077400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677078, 36.445164, 25.981794>,  <40.519814, 36.113686, 25.822451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677078, 36.445164, 25.981794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207614, -0.342051, 0.916459,
		0.895722, -0.443024, 0.037565,
		0.393164, 0.828692, 0.398361,
		40.795029, 36.693771, 26.101303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994686, 35.902855, 26.444450>,  <40.519814, 36.113686, 25.822451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994686, 35.902855, 26.444450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920647, 36.292469, 26.496592>,  <40.876221, 36.526237, 26.527876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920647, 36.292469, 26.496592>,  <40.994686, 35.902855, 26.444450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920647, 36.292469, 26.496592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180924, -0.164153, 0.969701,
		0.965922, 0.155909, 0.206611,
		-0.185101, 0.974036, 0.130352,
		40.865116, 36.584679, 26.535698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358143, 36.088032, 27.127035>,  <40.994686, 35.902855, 26.444450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358143, 36.088032, 27.127035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087597, 36.375366, 27.061888>,  <40.925270, 36.547768, 27.022799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087597, 36.375366, 27.061888>,  <41.358143, 36.088032, 27.127035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087597, 36.375366, 27.061888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309259, -0.076265, 0.947915,
		0.668501, 0.691502, 0.273734,
		-0.676362, 0.718337, -0.162870,
		40.884689, 36.590866, 27.013027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002777, 36.312092, 27.543751>,  <41.358143, 36.088032, 27.127035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002777, 36.312092, 27.543751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195053, 35.974236, 27.637999>,  <42.310421, 35.771523, 27.694548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195053, 35.974236, 27.637999>,  <42.002777, 36.312092, 27.543751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195053, 35.974236, 27.637999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357265, -0.056745, -0.932278,
		0.800810, 0.532318, 0.274484,
		0.480693, -0.844640, 0.235621,
		42.339260, 35.720844, 27.708685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777264, 36.358952, 27.405077>,  <42.002777, 36.312092, 27.543751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777264, 36.358952, 27.405077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690762, 35.969158, 27.429115>,  <42.638859, 35.735283, 27.443539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690762, 35.969158, 27.429115>,  <42.777264, 36.358952, 27.405077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690762, 35.969158, 27.429115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429620, -0.150253, -0.890422,
		0.876733, -0.166740, 0.451151,
		-0.216256, -0.974485, 0.060097,
		42.625885, 35.676811, 27.447144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374313, 35.936131, 27.341267>,  <42.777264, 36.358952, 27.405077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374313, 35.936131, 27.341267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055012, 35.746635, 27.192480>,  <42.863430, 35.632938, 27.103209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055012, 35.746635, 27.192480>,  <43.374313, 35.936131, 27.341267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055012, 35.746635, 27.192480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499336, -0.175151, -0.848520,
		0.336830, -0.863070, 0.376371,
		-0.798254, -0.473742, -0.371966,
		42.815536, 35.604511, 27.080891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710529, 35.568893, 26.781269>,  <43.374313, 35.936131, 27.341267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710529, 35.568893, 26.781269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322376, 35.487385, 26.729355>,  <43.089485, 35.438480, 26.698206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322376, 35.487385, 26.729355>,  <43.710529, 35.568893, 26.781269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322376, 35.487385, 26.729355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208801, -0.437144, -0.874818,
		0.121525, -0.876004, 0.466742,
		-0.970378, -0.203768, -0.129787,
		43.031261, 35.426254, 26.690418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647236, 34.871391, 26.711014>,  <43.710529, 35.568893, 26.781269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647236, 34.871391, 26.711014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323776, 35.029968, 26.537151>,  <43.129700, 35.125114, 26.432835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323776, 35.029968, 26.537151>,  <43.647236, 34.871391, 26.711014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323776, 35.029968, 26.537151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266169, -0.412344, -0.871279,
		-0.524640, -0.820247, 0.227919,
		-0.808646, 0.396443, -0.434656,
		43.081181, 35.148899, 26.406755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347191, 34.317665, 26.258801>,  <43.647236, 34.871391, 26.711014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347191, 34.317665, 26.258801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202217, 34.665367, 26.124321>,  <43.115231, 34.873989, 26.043633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202217, 34.665367, 26.124321>,  <43.347191, 34.317665, 26.258801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202217, 34.665367, 26.124321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413267, -0.173434, -0.893941,
		-0.835373, -0.462940, -0.296376,
		-0.362439, 0.869257, -0.336200,
		43.093487, 34.926144, 26.023460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979404, 34.173557, 25.662924>,  <43.347191, 34.317665, 26.258801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979404, 34.173557, 25.662924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085754, 34.557549, 25.627697>,  <43.149563, 34.787945, 25.606562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085754, 34.557549, 25.627697>,  <42.979404, 34.173557, 25.662924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085754, 34.557549, 25.627697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274300, -0.162913, -0.947744,
		-0.924159, 0.227825, -0.306636,
		0.265874, 0.959977, -0.088065,
		43.165516, 34.845543, 25.601278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642830, 34.505295, 25.139387>,  <42.979404, 34.173557, 25.662924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642830, 34.505295, 25.139387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980904, 34.709797, 25.201729>,  <43.183746, 34.832497, 25.239134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980904, 34.709797, 25.201729>,  <42.642830, 34.505295, 25.139387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980904, 34.709797, 25.201729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288109, -0.190186, -0.938522,
		-0.450182, 0.838122, -0.308038,
		0.845180, 0.511254, 0.155852,
		43.234459, 34.863174, 25.248484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735954, 34.852921, 24.526693>,  <42.642830, 34.505295, 25.139387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735954, 34.852921, 24.526693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088108, 34.892307, 24.712263>,  <43.299400, 34.915939, 24.823605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088108, 34.892307, 24.712263>,  <42.735954, 34.852921, 24.526693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088108, 34.892307, 24.712263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472643, -0.101518, -0.875387,
		-0.039096, 0.989949, -0.135913,
		0.880386, 0.098462, 0.463923,
		43.352222, 34.921844, 24.851440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017620, 35.413036, 24.161812>,  <42.735954, 34.852921, 24.526693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017620, 35.413036, 24.161812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308975, 35.213028, 24.349184>,  <43.483788, 35.093021, 24.461609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308975, 35.213028, 24.349184>,  <43.017620, 35.413036, 24.161812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308975, 35.213028, 24.349184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538458, -0.005024, -0.842637,
		0.423690, 0.865998, 0.265581,
		0.728388, -0.500022, 0.468433,
		43.527493, 35.063023, 24.489714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611759, 35.697346, 23.856112>,  <43.017620, 35.413036, 24.161812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611759, 35.697346, 23.856112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724350, 35.345024, 24.008402>,  <43.791904, 35.133633, 24.099775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724350, 35.345024, 24.008402>,  <43.611759, 35.697346, 23.856112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724350, 35.345024, 24.008402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581850, -0.158833, -0.797635,
		0.763033, 0.446045, 0.467788,
		0.281481, -0.880804, 0.380726,
		43.808796, 35.080784, 24.122620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275417, 35.716286, 23.862091>,  <43.611759, 35.697346, 23.856112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275417, 35.716286, 23.862091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164707, 35.331936, 23.866444>,  <44.098282, 35.101326, 23.869055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164707, 35.331936, 23.866444>,  <44.275417, 35.716286, 23.862091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164707, 35.331936, 23.866444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512854, -0.157283, -0.843945,
		0.812636, -0.228001, 0.536320,
		-0.276774, -0.960873, 0.010882,
		44.081676, 35.043674, 23.869709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903698, 35.505497, 23.638521>,  <44.275417, 35.716286, 23.862091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903698, 35.505497, 23.638521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665001, 35.186398, 23.603901>,  <44.521782, 34.994938, 23.583128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665001, 35.186398, 23.603901>,  <44.903698, 35.505497, 23.638521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665001, 35.186398, 23.603901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536453, -0.316399, -0.782374,
		0.596757, -0.513304, 0.616765,
		-0.596740, -0.797753, -0.086550,
		44.485977, 34.947071, 23.577936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279465, 35.023472, 23.444805>,  <44.903698, 35.505497, 23.638521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279465, 35.023472, 23.444805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918858, 34.891357, 23.332960>,  <44.702496, 34.812088, 23.265854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918858, 34.891357, 23.332960>,  <45.279465, 35.023472, 23.444805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918858, 34.891357, 23.332960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374782, -0.272859, -0.886051,
		0.216353, -0.903582, 0.369771,
		-0.901515, -0.330283, -0.279613,
		44.648403, 34.792271, 23.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.227589, 31.513901, 21.195290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374748, 31.852785, 21.348589>,  <37.463043, 32.056114, 21.440569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374748, 31.852785, 21.348589>,  <37.227589, 31.513901, 21.195290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374748, 31.852785, 21.348589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298496, -0.282741, 0.911569,
		0.880652, -0.449767, 0.148868,
		0.367902, 0.847211, 0.383250,
		37.485119, 32.106949, 21.463564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819286, 31.335197, 21.737175>,  <37.227589, 31.513901, 21.195290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819286, 31.335197, 21.737175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669853, 31.701319, 21.797384>,  <37.580193, 31.920992, 21.833509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669853, 31.701319, 21.797384>,  <37.819286, 31.335197, 21.737175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669853, 31.701319, 21.797384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074401, -0.191316, 0.978705,
		0.924610, 0.354424, 0.139572,
		-0.373578, 0.915304, 0.150523,
		37.557781, 31.975910, 21.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158390, 31.486355, 22.318319>,  <37.819286, 31.335197, 21.737175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158390, 31.486355, 22.318319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829983, 31.713062, 22.290907>,  <37.632938, 31.849087, 22.274460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829983, 31.713062, 22.290907>,  <38.158390, 31.486355, 22.318319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829983, 31.713062, 22.290907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230714, -0.219592, 0.947919,
		0.522200, 0.794074, 0.311051,
		-0.821023, 0.566767, -0.068533,
		37.583675, 31.883093, 22.270348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172100, 31.867556, 22.942425>,  <38.158390, 31.486355, 22.318319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172100, 31.867556, 22.942425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.804264, 31.929611, 22.798040>,  <37.583565, 31.966845, 22.711411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.804264, 31.929611, 22.798040>,  <38.172100, 31.867556, 22.942425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804264, 31.929611, 22.798040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375649, -0.078023, 0.923472,
		0.115101, 0.984807, 0.130026,
		-0.919587, 0.155137, -0.360961,
		37.528389, 31.976152, 22.689753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851139, 32.377728, 23.413858>,  <38.172100, 31.867556, 22.942425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851139, 32.377728, 23.413858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568272, 32.177876, 23.213745>,  <37.398552, 32.057964, 23.093678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568272, 32.177876, 23.213745>,  <37.851139, 32.377728, 23.413858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568272, 32.177876, 23.213745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473076, -0.191502, 0.859957,
		-0.525467, 0.844805, -0.100939,
		-0.707166, -0.499631, -0.500285,
		37.356121, 32.027985, 23.063660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120651, 32.635220, 23.644453>,  <37.851139, 32.377728, 23.413858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120651, 32.635220, 23.644453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062439, 32.278706, 23.472672>,  <37.027512, 32.064796, 23.369602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062439, 32.278706, 23.472672>,  <37.120651, 32.635220, 23.644453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062439, 32.278706, 23.472672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346440, -0.360683, 0.865960,
		-0.926714, 0.274807, -0.256285,
		-0.145534, -0.891285, -0.429454,
		37.018780, 32.011322, 23.343836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466785, 32.589043, 23.862383>,  <37.120651, 32.635220, 23.644453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466785, 32.589043, 23.862383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572792, 32.213638, 23.773867>,  <36.636395, 31.988396, 23.720757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572792, 32.213638, 23.773867>,  <36.466785, 32.589043, 23.862383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572792, 32.213638, 23.773867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269684, -0.292479, 0.917457,
		-0.925763, -0.183463, -0.330612,
		0.265016, -0.938508, -0.221289,
		36.652298, 31.932085, 23.707479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882557, 32.091896, 24.025373>,  <36.466785, 32.589043, 23.862383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882557, 32.091896, 24.025373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218151, 31.874254, 24.022533>,  <36.419506, 31.743668, 24.020830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218151, 31.874254, 24.022533>,  <35.882557, 32.091896, 24.025373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218151, 31.874254, 24.022533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113425, -0.187625, 0.975670,
		-0.532201, -0.817768, -0.219130,
		0.838986, -0.544107, -0.007099,
		36.469845, 31.711021, 24.020403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666542, 31.383711, 24.318340>,  <35.882557, 32.091896, 24.025373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666542, 31.383711, 24.318340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 31.432554, 24.359022>,  <36.298409, 31.461861, 24.383430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 31.432554, 24.359022>,  <35.666542, 31.383711, 24.318340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061459, 31.432554, 24.359022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073420, -0.217104, 0.973384,
		0.140940, -0.968481, -0.205380,
		0.987292, 0.122109, 0.101704,
		36.357647, 31.469187, 24.389534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868271, 30.875473, 24.768869>,  <35.666542, 31.383711, 24.318340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868271, 30.875473, 24.768869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.182816, 31.122576, 24.770041>,  <36.371544, 31.270838, 24.770744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.182816, 31.122576, 24.770041>,  <35.868271, 30.875473, 24.768869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182816, 31.122576, 24.770041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108063, -0.142222, 0.983918,
		0.608241, -0.773399, -0.178595,
		0.786362, 0.617759, 0.002930,
		36.418724, 31.307903, 24.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408325, 30.651079, 25.295950>,  <35.868271, 30.875473, 24.768869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408325, 30.651079, 25.295950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553699, 31.021242, 25.252989>,  <36.640923, 31.243340, 25.227213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.553699, 31.021242, 25.252989>,  <36.408325, 30.651079, 25.295950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553699, 31.021242, 25.252989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207541, 0.031963, 0.977704,
		0.908208, -0.377623, -0.180443,
		0.363436, 0.925408, -0.107402,
		36.662731, 31.298864, 25.220768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074486, 30.739752, 25.767836>,  <36.408325, 30.651079, 25.295950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074486, 30.739752, 25.767836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920425, 31.097130, 25.675386>,  <36.827988, 31.311556, 25.619917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920425, 31.097130, 25.675386>,  <37.074486, 30.739752, 25.767836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920425, 31.097130, 25.675386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146475, 0.306453, 0.940548,
		0.911156, 0.328398, -0.248898,
		-0.385149, 0.893444, -0.231124,
		36.804882, 31.365164, 25.606049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594131, 31.211924, 26.043386>,  <37.074486, 30.739752, 25.767836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594131, 31.211924, 26.043386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226166, 31.366125, 26.014698>,  <37.005386, 31.458645, 25.997486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226166, 31.366125, 26.014698>,  <37.594131, 31.211924, 26.043386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226166, 31.366125, 26.014698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002790, 0.189333, 0.981909,
		0.392108, 0.903073, -0.175246,
		-0.919915, 0.385503, -0.071720,
		36.950191, 31.481775, 25.993181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548206, 31.818203, 26.523243>,  <37.594131, 31.211924, 26.043386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548206, 31.818203, 26.523243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157700, 31.754593, 26.464445>,  <36.923393, 31.716427, 26.429167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157700, 31.754593, 26.464445>,  <37.548206, 31.818203, 26.523243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157700, 31.754593, 26.464445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174888, 0.178657, 0.968244,
		-0.127715, 0.970975, -0.202229,
		-0.976270, -0.159027, -0.146994,
		36.864819, 31.706884, 26.420347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991196, 32.439514, 26.704998>,  <37.548206, 31.818203, 26.523243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991196, 32.439514, 26.704998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280220, 32.203518, 26.849119>,  <38.453632, 32.061920, 26.935591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280220, 32.203518, 26.849119>,  <37.991196, 32.439514, 26.704998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280220, 32.203518, 26.849119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249635, -0.263339, -0.931845,
		0.644663, 0.763257, -0.042995,
		0.722559, -0.589993, 0.360301,
		38.496986, 32.026520, 26.957209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479507, 32.644829, 26.303106>,  <37.991196, 32.439514, 26.704998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479507, 32.644829, 26.303106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.561615, 32.274288, 26.429428>,  <38.610878, 32.051964, 26.505222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.561615, 32.274288, 26.429428>,  <38.479507, 32.644829, 26.303106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561615, 32.274288, 26.429428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371683, -0.224717, -0.900752,
		0.905382, 0.302277, 0.298182,
		0.205270, -0.926354, 0.315806,
		38.623196, 31.996382, 26.524170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977673, 32.485649, 25.925636>,  <38.479507, 32.644829, 26.303106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977673, 32.485649, 25.925636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908821, 32.116394, 26.063154>,  <38.867512, 31.894842, 26.145664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908821, 32.116394, 26.063154>,  <38.977673, 32.485649, 25.925636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908821, 32.116394, 26.063154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420139, -0.384462, -0.821993,
		0.890986, 0.002956, 0.454020,
		-0.172124, -0.923136, 0.343793,
		38.857185, 31.839453, 26.166292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607677, 32.280369, 26.125809>,  <38.977673, 32.485649, 25.925636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607677, 32.280369, 26.125809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383549, 31.957054, 26.053457>,  <39.249073, 31.763065, 26.010046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383549, 31.957054, 26.053457>,  <39.607677, 32.280369, 26.125809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383549, 31.957054, 26.053457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624435, -0.268756, -0.733383,
		0.544170, -0.523876, 0.655311,
		-0.560321, -0.808284, -0.180877,
		39.215454, 31.714569, 25.999193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036201, 31.642435, 26.018923>,  <39.607677, 32.280369, 26.125809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036201, 31.642435, 26.018923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691895, 31.554041, 25.835516>,  <39.485310, 31.501005, 25.725471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691895, 31.554041, 25.835516>,  <40.036201, 31.642435, 26.018923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691895, 31.554041, 25.835516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508201, -0.322973, -0.798386,
		0.028342, -0.920247, 0.390310,
		-0.860772, -0.220984, -0.458517,
		39.433662, 31.487745, 25.697962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206799, 30.982811, 25.672598>,  <40.036201, 31.642435, 26.018923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206799, 30.982811, 25.672598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871620, 31.101551, 25.489412>,  <39.670513, 31.172794, 25.379501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871620, 31.101551, 25.489412>,  <40.206799, 30.982811, 25.672598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871620, 31.101551, 25.489412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442756, -0.120855, -0.888460,
		-0.319088, -0.947245, -0.030163,
		-0.837944, 0.296851, -0.457962,
		39.620235, 31.190605, 25.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088177, 30.398718, 25.181084>,  <40.206799, 30.982811, 25.672598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088177, 30.398718, 25.181084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883507, 30.719755, 25.058426>,  <39.760704, 30.912376, 24.984831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883507, 30.719755, 25.058426>,  <40.088177, 30.398718, 25.181084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883507, 30.719755, 25.058426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340207, -0.138470, -0.930100,
		-0.788952, -0.580234, -0.202195,
		-0.511677, 0.802593, -0.306646,
		39.730003, 30.960533, 24.966433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734722, 30.212337, 24.575783>,  <40.088177, 30.398718, 25.181084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734722, 30.212337, 24.575783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739990, 30.610403, 24.536840>,  <39.743149, 30.849241, 24.513475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739990, 30.610403, 24.536840>,  <39.734722, 30.212337, 24.575783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739990, 30.610403, 24.536840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274127, -0.097228, -0.956766,
		-0.961603, -0.014089, -0.274081,
		0.013168, 0.995162, -0.097357,
		39.743942, 30.908953, 24.507633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362968, 30.360146, 23.992224>,  <39.734722, 30.212337, 24.575783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362968, 30.360146, 23.992224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586052, 30.688011, 24.044556>,  <39.719902, 30.884731, 24.075954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586052, 30.688011, 24.044556>,  <39.362968, 30.360146, 23.992224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586052, 30.688011, 24.044556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189049, 0.028041, -0.981567,
		-0.808224, 0.572158, -0.139318,
		0.557705, 0.819664, 0.130829,
		39.753365, 30.933910, 24.083805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183342, 30.814573, 23.523928>,  <39.362968, 30.360146, 23.992224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183342, 30.814573, 23.523928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525711, 30.981768, 23.645700>,  <39.731133, 31.082085, 23.718765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525711, 30.981768, 23.645700>,  <39.183342, 30.814573, 23.523928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525711, 30.981768, 23.645700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293643, 0.091712, -0.951506,
		-0.425637, 0.903812, -0.044240,
		0.855925, 0.417986, 0.304434,
		39.782490, 31.107164, 23.737030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241505, 31.480906, 23.225473>,  <39.183342, 30.814573, 23.523928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241505, 31.480906, 23.225473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610794, 31.350544, 23.306902>,  <39.832367, 31.272327, 23.355759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610794, 31.350544, 23.306902>,  <39.241505, 31.480906, 23.225473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610794, 31.350544, 23.306902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265447, 0.157859, -0.951114,
		0.277837, 0.932130, 0.232250,
		0.923225, -0.325905, 0.203572,
		39.887760, 31.252773, 23.367973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638618, 32.007931, 23.018543>,  <39.241505, 31.480906, 23.225473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638618, 32.007931, 23.018543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887520, 31.694925, 23.009893>,  <40.036861, 31.507122, 23.004704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887520, 31.694925, 23.009893>,  <39.638618, 32.007931, 23.018543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887520, 31.694925, 23.009893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275276, 0.244590, -0.929731,
		0.732819, 0.572576, 0.367605,
		0.622254, -0.782517, -0.021624,
		40.074196, 31.460171, 23.003407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336075, 32.269524, 22.884396>,  <39.638618, 32.007931, 23.018543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336075, 32.269524, 22.884396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339863, 31.887119, 22.767122>,  <40.342136, 31.657677, 22.696758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339863, 31.887119, 22.767122>,  <40.336075, 32.269524, 22.884396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339863, 31.887119, 22.767122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335715, 0.279219, -0.899629,
		0.941916, -0.089910, 0.323590,
		0.009467, -0.956009, -0.293185,
		40.342701, 31.600317, 22.679167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027405, 32.130043, 22.717333>,  <40.336075, 32.269524, 22.884396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027405, 32.130043, 22.717333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801735, 31.853113, 22.537376>,  <40.666332, 31.686956, 22.429401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801735, 31.853113, 22.537376>,  <41.027405, 32.130043, 22.717333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801735, 31.853113, 22.537376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469525, 0.179193, -0.864544,
		0.679159, -0.698986, 0.223967,
		-0.564171, -0.692321, -0.449892,
		40.632484, 31.645416, 22.402409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777893, 31.925716, 22.932405>,  <41.027405, 32.130043, 22.717333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777893, 31.925716, 22.932405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167393, 31.919863, 23.023262>,  <42.401093, 31.916349, 23.077776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167393, 31.919863, 23.023262>,  <41.777893, 31.925716, 22.932405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167393, 31.919863, 23.023262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227543, -0.086769, 0.969894,
		0.005518, -0.996121, -0.087821,
		0.973752, -0.014631, 0.227139,
		42.459518, 31.915472, 23.091404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897530, 31.378998, 23.350330>,  <41.777893, 31.925716, 22.932405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897530, 31.378998, 23.350330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.208237, 31.617731, 23.430744>,  <42.394661, 31.760971, 23.478992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.208237, 31.617731, 23.430744>,  <41.897530, 31.378998, 23.350330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208237, 31.617731, 23.430744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232522, -0.024870, 0.972273,
		0.585285, -0.801979, 0.119459,
		0.776772, 0.596834, 0.201034,
		42.441269, 31.796782, 23.491055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225250, 31.027231, 23.872532>,  <41.897530, 31.378998, 23.350330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225250, 31.027231, 23.872532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.359386, 31.403780, 23.887331>,  <42.439869, 31.629709, 23.896210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.359386, 31.403780, 23.887331>,  <42.225250, 31.027231, 23.872532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359386, 31.403780, 23.887331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195624, 0.031162, 0.980184,
		0.921564, -0.335930, 0.194605,
		0.335338, 0.941371, 0.036998,
		42.459988, 31.686192, 23.898430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681602, 31.113470, 24.427773>,  <42.225250, 31.027231, 23.872532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681602, 31.113470, 24.427773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566067, 31.489031, 24.352903>,  <42.496746, 31.714367, 24.307981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566067, 31.489031, 24.352903>,  <42.681602, 31.113470, 24.427773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566067, 31.489031, 24.352903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103218, 0.163825, 0.981075,
		0.951798, 0.302690, 0.049593,
		-0.288837, 0.938904, -0.187171,
		42.479416, 31.770702, 24.296753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865833, 31.382122, 25.017952>,  <42.681602, 31.113470, 24.427773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865833, 31.382122, 25.017952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.661934, 31.682428, 24.849903>,  <42.539593, 31.862612, 24.749073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.661934, 31.682428, 24.849903>,  <42.865833, 31.382122, 25.017952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661934, 31.682428, 24.849903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266526, 0.326499, 0.906842,
		0.817998, 0.574235, 0.033667,
		-0.509748, 0.750768, -0.420125,
		42.509010, 31.907660, 24.723866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086102, 31.903568, 25.353260>,  <42.865833, 31.382122, 25.017952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086102, 31.903568, 25.353260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.708591, 31.950699, 25.229706>,  <42.482086, 31.978977, 25.155573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.708591, 31.950699, 25.229706>,  <43.086102, 31.903568, 25.353260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708591, 31.950699, 25.229706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244886, 0.378510, 0.892615,
		0.222092, 0.918067, -0.328373,
		-0.943772, 0.117829, -0.308886,
		42.425461, 31.986048, 25.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922771, 32.584904, 25.589996>,  <43.086102, 31.903568, 25.353260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922771, 32.584904, 25.589996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.583492, 32.383080, 25.525536>,  <42.379925, 32.261986, 25.486858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.583492, 32.383080, 25.525536>,  <42.922771, 32.584904, 25.589996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583492, 32.383080, 25.525536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345211, 0.295847, 0.890676,
		-0.401725, 0.811105, -0.425118,
		-0.848202, -0.504562, -0.161153,
		42.329033, 32.231712, 25.477190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393082, 32.987347, 25.810553>,  <42.922771, 32.584904, 25.589996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393082, 32.987347, 25.810553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236233, 32.619427, 25.816257>,  <42.142124, 32.398674, 25.819679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236233, 32.619427, 25.816257>,  <42.393082, 32.987347, 25.810553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236233, 32.619427, 25.816257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182882, 0.093138, 0.978713,
		-0.901550, 0.381169, -0.204737,
		-0.392124, -0.919802, 0.014260,
		42.118595, 32.343487, 25.820536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741966, 32.928532, 26.168840>,  <42.393082, 32.987347, 25.810553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741966, 32.928532, 26.168840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936443, 32.579323, 26.184040>,  <42.053131, 32.369797, 26.193159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936443, 32.579323, 26.184040>,  <41.741966, 32.928532, 26.168840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936443, 32.579323, 26.184040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227809, -0.084648, 0.970019,
		-0.843636, -0.480271, -0.240039,
		0.486191, -0.873026, 0.037998,
		42.082302, 32.317413, 26.195440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296360, 32.579979, 26.436563>,  <41.741966, 32.928532, 26.168840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296360, 32.579979, 26.436563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637215, 32.388081, 26.520189>,  <41.841728, 32.272942, 26.570364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637215, 32.388081, 26.520189>,  <41.296360, 32.579979, 26.436563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637215, 32.388081, 26.520189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208469, 0.055239, 0.976468,
		-0.480003, -0.875668, -0.052941,
		0.852137, -0.479744, 0.209064,
		41.892857, 32.244156, 26.582909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208401, 31.825073, 26.639969>,  <41.296360, 32.579979, 26.436563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208401, 31.825073, 26.639969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.564350, 31.927729, 26.790842>,  <41.777920, 31.989323, 26.881365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.564350, 31.927729, 26.790842>,  <41.208401, 31.825073, 26.639969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564350, 31.927729, 26.790842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334665, -0.194660, 0.922013,
		0.310046, -0.946702, -0.087334,
		0.889871, 0.256639, 0.377181,
		41.831310, 32.004719, 26.903996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233459, 31.491211, 27.239151>,  <41.208401, 31.825073, 26.639969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233459, 31.491211, 27.239151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.523300, 31.764095, 27.278227>,  <41.697205, 31.927826, 27.301672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.523300, 31.764095, 27.278227>,  <41.233459, 31.491211, 27.239151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523300, 31.764095, 27.278227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187205, 0.058420, 0.980582,
		0.663255, -0.728819, 0.170044,
		0.724601, 0.682209, 0.097691,
		41.740681, 31.968758, 27.307533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636101, 31.255350, 27.785797>,  <41.233459, 31.491211, 27.239151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636101, 31.255350, 27.785797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685108, 31.647865, 27.726381>,  <41.714512, 31.883375, 27.690733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685108, 31.647865, 27.726381>,  <41.636101, 31.255350, 27.785797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685108, 31.647865, 27.726381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134514, 0.164703, 0.977128,
		0.983309, -0.099733, 0.152175,
		0.122515, 0.981288, -0.148539,
		41.721863, 31.942251, 27.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067047, 31.465973, 28.378677>,  <41.636101, 31.255350, 27.785797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067047, 31.465973, 28.378677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.935032, 31.820267, 28.248110>,  <41.855824, 32.032845, 28.169769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.935032, 31.820267, 28.248110>,  <42.067047, 31.465973, 28.378677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935032, 31.820267, 28.248110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105121, 0.378131, 0.919764,
		0.938095, 0.269246, -0.217908,
		-0.330041, 0.885733, -0.326420,
		41.836021, 32.085987, 28.150185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.417034, 34.282936, 22.975605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.038761, 34.390484, 22.902504>,  <44.811798, 34.455013, 22.858643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.038761, 34.390484, 22.902504>,  <45.417034, 34.282936, 22.975605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038761, 34.390484, 22.902504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102556, -0.286709, -0.952513,
		-0.308505, -0.919513, 0.243559,
		-0.945678, 0.268876, -0.182753,
		44.755058, 34.471146, 22.847679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127678, 33.713993, 22.652893>,  <45.417034, 34.282936, 22.975605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127678, 33.713993, 22.652893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954029, 34.053043, 22.530865>,  <44.849838, 34.256474, 22.457647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954029, 34.053043, 22.530865>,  <45.127678, 33.713993, 22.652893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954029, 34.053043, 22.530865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149075, -0.266380, -0.952270,
		-0.888435, -0.458878, -0.010719,
		-0.434121, 0.847627, -0.305069,
		44.823792, 34.307331, 22.439344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421940, 33.511570, 22.225294>,  <45.127678, 33.713993, 22.652893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421940, 33.511570, 22.225294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509232, 33.884605, 22.110302>,  <44.561607, 34.108429, 22.041307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509232, 33.884605, 22.110302>,  <44.421940, 33.511570, 22.225294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509232, 33.884605, 22.110302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186687, -0.249246, -0.950276,
		-0.957874, 0.261051, 0.119709,
		0.218234, 0.932593, -0.287481,
		44.574703, 34.164383, 22.024057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833782, 33.786598, 21.951326>,  <44.421940, 33.511570, 22.225294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833782, 33.786598, 21.951326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.137417, 33.995987, 21.796530>,  <44.319599, 34.121620, 21.703651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.137417, 33.995987, 21.796530>,  <43.833782, 33.786598, 21.951326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137417, 33.995987, 21.796530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350026, -0.173026, -0.920621,
		-0.548880, 0.834289, 0.051887,
		0.759087, 0.523473, -0.386993,
		44.365143, 34.153030, 21.680431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490822, 34.104271, 21.436939>,  <43.833782, 33.786598, 21.951326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490822, 34.104271, 21.436939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882828, 34.130947, 21.361979>,  <44.118031, 34.146954, 21.317001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882828, 34.130947, 21.361979>,  <43.490822, 34.104271, 21.436939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882828, 34.130947, 21.361979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182291, -0.075937, -0.980308,
		-0.079606, 0.994880, -0.062263,
		0.980017, 0.066688, -0.187403,
		44.176834, 34.150955, 21.305758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446087, 34.460979, 20.855030>,  <43.490822, 34.104271, 21.436939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446087, 34.460979, 20.855030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.820049, 34.319088, 20.850847>,  <44.044426, 34.233952, 20.848337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.820049, 34.319088, 20.850847>,  <43.446087, 34.460979, 20.855030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820049, 34.319088, 20.850847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007395, 0.009987, -0.999923,
		0.354807, 0.934916, 0.006714,
		0.934910, -0.354730, -0.010457,
		44.100521, 34.212669, 20.847710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756496, 34.746304, 20.310619>,  <43.446087, 34.460979, 20.855030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756496, 34.746304, 20.310619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.001675, 34.439114, 20.384926>,  <44.148781, 34.254799, 20.429510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.001675, 34.439114, 20.384926>,  <43.756496, 34.746304, 20.310619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001675, 34.439114, 20.384926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138543, -0.127006, -0.982179,
		0.777886, 0.627756, 0.028551,
		0.612943, -0.767979, 0.185767,
		44.185558, 34.208721, 20.440657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416286, 34.871166, 19.845675>,  <43.756496, 34.746304, 20.310619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416286, 34.871166, 19.845675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373070, 34.485512, 19.942646>,  <44.347137, 34.254120, 20.000828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373070, 34.485512, 19.942646>,  <44.416286, 34.871166, 19.845675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373070, 34.485512, 19.942646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168193, -0.258067, -0.951374,
		0.979815, -0.062015, 0.190043,
		-0.108044, -0.964135, 0.242427,
		44.340656, 34.196270, 20.015375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908054, 34.547432, 19.476089>,  <44.416286, 34.871166, 19.845675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908054, 34.547432, 19.476089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.681049, 34.229393, 19.561649>,  <44.544846, 34.038570, 19.612986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.681049, 34.229393, 19.561649>,  <44.908054, 34.547432, 19.476089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681049, 34.229393, 19.561649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173330, -0.369332, -0.912990,
		0.804913, -0.481060, 0.347414,
		-0.567514, -0.795095, 0.213898,
		44.510796, 33.990864, 19.625818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355171, 34.087250, 19.276150>,  <44.908054, 34.547432, 19.476089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355171, 34.087250, 19.276150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.004208, 33.895473, 19.282928>,  <44.793629, 33.780407, 19.286997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.004208, 33.895473, 19.282928>,  <45.355171, 34.087250, 19.276150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004208, 33.895473, 19.282928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145652, -0.299880, -0.942792,
		0.457097, -0.824747, 0.332950,
		-0.877410, -0.479442, 0.016948,
		44.740986, 33.751640, 19.288013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471249, 33.423889, 19.191372>,  <45.355171, 34.087250, 19.276150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471249, 33.423889, 19.191372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.091370, 33.477367, 19.078094>,  <44.863441, 33.509453, 19.010128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.091370, 33.477367, 19.078094>,  <45.471249, 33.423889, 19.191372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091370, 33.477367, 19.078094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174865, -0.523798, -0.833701,
		-0.259797, -0.841286, 0.474072,
		-0.949699, 0.133695, -0.283192,
		44.806461, 33.517475, 18.993137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227310, 32.772289, 18.906015>,  <45.471249, 33.423889, 19.191372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227310, 32.772289, 18.906015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.986759, 33.054249, 18.755573>,  <44.842426, 33.223427, 18.665308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.986759, 33.054249, 18.755573>,  <45.227310, 32.772289, 18.906015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986759, 33.054249, 18.755573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258060, -0.274138, -0.926420,
		-0.756140, -0.654187, -0.017046,
		-0.601379, 0.704902, -0.376106,
		44.806347, 33.265720, 18.642742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929470, 32.480675, 18.356873>,  <45.227310, 32.772289, 18.906015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929470, 32.480675, 18.356873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.919319, 32.876915, 18.303110>,  <44.913227, 33.114658, 18.270853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.919319, 32.876915, 18.303110>,  <44.929470, 32.480675, 18.356873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919319, 32.876915, 18.303110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185939, -0.127425, -0.974264,
		-0.982233, -0.049714, -0.180958,
		-0.025376, 0.990602, -0.134404,
		44.911705, 33.174095, 18.262789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752579, 31.868393, 17.818987>,  <44.929470, 32.480675, 18.356873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752579, 31.868393, 17.818987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424480, 31.810001, 17.597759>,  <44.227623, 31.774967, 17.465023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424480, 31.810001, 17.597759>,  <44.752579, 31.868393, 17.818987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424480, 31.810001, 17.597759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559560, 0.004130, 0.828780,
		-0.118701, 0.989279, -0.085071,
		-0.820246, -0.145979, -0.553070,
		44.178406, 31.766207, 17.431839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241512, 32.411945, 17.959517>,  <44.752579, 31.868393, 17.818987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241512, 32.411945, 17.959517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.069695, 32.070911, 17.840460>,  <43.966606, 31.866291, 17.769026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.069695, 32.070911, 17.840460>,  <44.241512, 32.411945, 17.959517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069695, 32.070911, 17.840460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523797, -0.033260, 0.851193,
		-0.735616, 0.521527, -0.432295,
		-0.429542, -0.852586, -0.297641,
		43.940830, 31.815136, 17.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545498, 32.510220, 18.252241>,  <44.241512, 32.411945, 17.959517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545498, 32.510220, 18.252241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.596432, 32.121891, 18.170952>,  <43.626991, 31.888895, 18.122179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.596432, 32.121891, 18.170952>,  <43.545498, 32.510220, 18.252241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596432, 32.121891, 18.170952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421304, -0.238429, 0.875017,
		-0.897936, -0.025806, -0.439370,
		0.127339, -0.970817, -0.203222,
		43.634632, 31.830647, 18.109985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896000, 32.202705, 18.442463>,  <43.545498, 32.510220, 18.252241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896000, 32.202705, 18.442463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.151138, 31.894640, 18.441740>,  <43.304222, 31.709801, 18.441305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.151138, 31.894640, 18.441740>,  <42.896000, 32.202705, 18.442463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151138, 31.894640, 18.441740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252923, -0.211688, 0.944044,
		-0.727450, -0.601696, -0.329816,
		0.637845, -0.770163, -0.001809,
		43.342491, 31.663591, 18.441196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573059, 31.578514, 18.774784>,  <42.896000, 32.202705, 18.442463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573059, 31.578514, 18.774784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963299, 31.497316, 18.808241>,  <43.197445, 31.448599, 18.828316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963299, 31.497316, 18.808241>,  <42.573059, 31.578514, 18.774784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963299, 31.497316, 18.808241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116439, -0.155415, 0.980963,
		-0.186139, -0.966766, -0.175260,
		0.975599, -0.203003, 0.083640,
		43.255978, 31.436419, 18.833334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672989, 30.955820, 19.252323>,  <42.573059, 31.578514, 18.774784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672989, 30.955820, 19.252323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040020, 31.114531, 19.242350>,  <43.260239, 31.209757, 19.236366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040020, 31.114531, 19.242350>,  <42.672989, 30.955820, 19.252323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040020, 31.114531, 19.242350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088658, -0.143087, 0.985731,
		0.387549, -0.906694, -0.166471,
		0.917576, 0.396778, -0.024932,
		43.315292, 31.233564, 19.234869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023369, 30.427340, 19.612883>,  <42.672989, 30.955820, 19.252323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023369, 30.427340, 19.612883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239449, 30.763903, 19.618771>,  <43.369095, 30.965841, 19.622303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239449, 30.763903, 19.618771>,  <43.023369, 30.427340, 19.612883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239449, 30.763903, 19.618771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050778, -0.050049, 0.997455,
		0.840005, -0.538075, -0.069761,
		0.540197, 0.841410, 0.014719,
		43.401508, 31.016325, 19.623186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508575, 30.250465, 20.155954>,  <43.023369, 30.427340, 19.612883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508575, 30.250465, 20.155954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540466, 30.646252, 20.107626>,  <43.559601, 30.883724, 20.078629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540466, 30.646252, 20.107626>,  <43.508575, 30.250465, 20.155954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540466, 30.646252, 20.107626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035013, 0.123913, 0.991675,
		0.996201, -0.074837, 0.044524,
		0.079732, 0.989467, -0.120822,
		43.564384, 30.943092, 20.071379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069344, 30.470816, 20.556839>,  <43.508575, 30.250465, 20.155954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069344, 30.470816, 20.556839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.813225, 30.775408, 20.516502>,  <43.659554, 30.958162, 20.492300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.813225, 30.775408, 20.516502>,  <44.069344, 30.470816, 20.556839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813225, 30.775408, 20.516502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015455, 0.118486, 0.992835,
		0.767972, 0.637268, -0.064098,
		-0.640297, 0.761479, -0.100843,
		43.621136, 31.003851, 20.486250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233047, 30.879915, 21.084484>,  <44.069344, 30.470816, 20.556839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233047, 30.879915, 21.084484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881245, 31.048594, 20.996269>,  <43.670162, 31.149801, 20.943340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881245, 31.048594, 20.996269>,  <44.233047, 30.879915, 21.084484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881245, 31.048594, 20.996269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128575, 0.235617, 0.963303,
		0.458182, 0.875590, -0.153008,
		-0.879510, 0.421695, -0.220535,
		43.617393, 31.175102, 20.930109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207848, 31.485220, 21.489946>,  <44.233047, 30.879915, 21.084484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207848, 31.485220, 21.489946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.826160, 31.428362, 21.384680>,  <43.597149, 31.394247, 21.321520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.826160, 31.428362, 21.384680>,  <44.207848, 31.485220, 21.489946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826160, 31.428362, 21.384680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298968, 0.427105, 0.853346,
		-0.008902, 0.892959, -0.450050,
		-0.954222, -0.142147, -0.263164,
		43.539894, 31.385717, 21.305731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906715, 32.026581, 21.830750>,  <44.207848, 31.485220, 21.489946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906715, 32.026581, 21.830750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.598888, 31.792187, 21.729242>,  <43.414192, 31.651552, 21.668337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.598888, 31.792187, 21.729242>,  <43.906715, 32.026581, 21.830750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598888, 31.792187, 21.729242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484290, 0.276544, 0.830052,
		-0.416216, 0.761676, -0.496602,
		-0.769563, -0.585981, -0.253770,
		43.368019, 31.616392, 21.653111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361691, 32.462532, 21.713274>,  <43.906715, 32.026581, 21.830750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361691, 32.462532, 21.713274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.241238, 32.094650, 21.814045>,  <43.168968, 31.873920, 21.874508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.241238, 32.094650, 21.814045>,  <43.361691, 32.462532, 21.713274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241238, 32.094650, 21.814045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389462, 0.359767, 0.847872,
		-0.870425, 0.157204, -0.466526,
		-0.301130, -0.919704, 0.251925,
		43.150898, 31.818739, 21.889622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743488, 32.495399, 21.960569>,  <43.361691, 32.462532, 21.713274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743488, 32.495399, 21.960569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.804474, 32.138985, 22.131596>,  <42.841064, 31.925137, 22.234211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.804474, 32.138985, 22.131596>,  <42.743488, 32.495399, 21.960569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804474, 32.138985, 22.131596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452506, 0.321676, 0.831723,
		-0.878632, -0.320280, -0.354157,
		0.152460, -0.891036, 0.427563,
		42.850212, 31.871674, 22.259865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123890, 32.330791, 22.364769>,  <42.743488, 32.495399, 21.960569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123890, 32.330791, 22.364769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.423477, 32.120583, 22.526196>,  <42.603230, 31.994457, 22.623051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.423477, 32.120583, 22.526196>,  <42.123890, 32.330791, 22.364769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423477, 32.120583, 22.526196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318216, 0.248944, 0.914749,
		-0.581188, -0.813542, 0.019222,
		0.748972, -0.525525, 0.403565,
		42.648170, 31.962925, 22.647264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399479, 32.057915, 22.100948>,  <42.123890, 32.330791, 22.364769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399479, 32.057915, 22.100948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.052902, 31.875631, 22.019358>,  <40.844955, 31.766262, 21.970404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.052902, 31.875631, 22.019358>,  <41.399479, 32.057915, 22.100948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052902, 31.875631, 22.019358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139026, 0.172174, -0.975207,
		0.479526, -0.873320, -0.085825,
		-0.866444, -0.455706, -0.203976,
		40.792969, 31.738920, 21.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565475, 31.564438, 21.589272>,  <41.399479, 32.057915, 22.100948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565475, 31.564438, 21.589272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177734, 31.661341, 21.572906>,  <40.945091, 31.719482, 21.563087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177734, 31.661341, 21.572906>,  <41.565475, 31.564438, 21.589272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177734, 31.661341, 21.572906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083952, 0.170109, -0.981843,
		-0.230898, -0.955183, -0.185233,
		-0.969349, 0.242256, -0.040911,
		40.886929, 31.734018, 21.560633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391937, 31.265936, 20.910587>,  <41.565475, 31.564438, 21.589272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391937, 31.265936, 20.910587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120579, 31.538610, 21.020193>,  <40.957764, 31.702215, 21.085957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120579, 31.538610, 21.020193>,  <41.391937, 31.265936, 20.910587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120579, 31.538610, 21.020193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129022, 0.256625, -0.957860,
		-0.723280, -0.685161, -0.086140,
		-0.678394, 0.681687, 0.274013,
		40.917061, 31.743116, 21.102396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934731, 31.161602, 20.474691>,  <41.391937, 31.265936, 20.910587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934731, 31.161602, 20.474691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865124, 31.533281, 20.605110>,  <40.823360, 31.756289, 20.683361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865124, 31.533281, 20.605110>,  <40.934731, 31.161602, 20.474691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865124, 31.533281, 20.605110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296238, 0.266368, -0.917219,
		-0.939128, -0.256196, 0.228913,
		-0.174013, 0.929199, 0.326049,
		40.812920, 31.812040, 20.702925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226025, 31.291754, 20.257504>,  <40.934731, 31.161602, 20.474691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226025, 31.291754, 20.257504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411629, 31.641876, 20.311964>,  <40.522991, 31.851950, 20.344641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411629, 31.641876, 20.311964>,  <40.226025, 31.291754, 20.257504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411629, 31.641876, 20.311964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237564, 0.271030, -0.932795,
		-0.853382, 0.400477, 0.333701,
		0.464006, 0.875306, 0.136153,
		40.550831, 31.904469, 20.352810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828365, 31.861599, 19.974344>,  <40.226025, 31.291754, 20.257504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828365, 31.861599, 19.974344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209702, 31.982271, 19.978750>,  <40.438503, 32.054676, 19.981394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209702, 31.982271, 19.978750>,  <39.828365, 31.861599, 19.974344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209702, 31.982271, 19.978750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052007, 0.200068, -0.978401,
		-0.297370, 0.932181, 0.206423,
		0.953345, 0.301682, 0.011014,
		40.495705, 32.072777, 19.982054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903667, 32.582111, 19.627968>,  <39.828365, 31.861599, 19.974344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903667, 32.582111, 19.627968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274078, 32.431271, 19.621393>,  <40.496326, 32.340767, 19.617449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274078, 32.431271, 19.621393>,  <39.903667, 32.582111, 19.627968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274078, 32.431271, 19.621393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072002, 0.219224, -0.973014,
		0.370525, 0.899854, 0.230159,
		0.926027, -0.377098, -0.016437,
		40.551888, 32.318142, 19.616463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586502, 33.347431, 19.595289>,  <39.903667, 32.582111, 19.627968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586502, 33.347431, 19.595289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.223824, 33.341904, 19.426666>,  <39.006218, 33.338589, 19.325493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.223824, 33.341904, 19.426666>,  <39.586502, 33.347431, 19.595289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223824, 33.341904, 19.426666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403094, -0.265838, 0.875697,
		-0.124169, 0.963919, 0.235463,
		-0.906696, -0.013820, -0.421559,
		38.951817, 33.337757, 19.300200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199287, 33.715641, 20.112360>,  <39.586502, 33.347431, 19.595289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199287, 33.715641, 20.112360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.941132, 33.526726, 19.872223>,  <38.786236, 33.413376, 19.728140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.941132, 33.526726, 19.872223>,  <39.199287, 33.715641, 20.112360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941132, 33.526726, 19.872223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455920, -0.392411, 0.798843,
		-0.612867, 0.789275, 0.037931,
		-0.645391, -0.472291, -0.600342,
		38.747513, 33.385036, 19.692120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527523, 33.900146, 20.422129>,  <39.199287, 33.715641, 20.112360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527523, 33.900146, 20.422129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470760, 33.580341, 20.188669>,  <38.436703, 33.388458, 20.048594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470760, 33.580341, 20.188669>,  <38.527523, 33.900146, 20.422129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470760, 33.580341, 20.188669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523099, -0.439994, 0.729913,
		-0.840374, 0.408889, -0.355783,
		-0.141911, -0.799510, -0.583649,
		38.428188, 33.340488, 20.013575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912487, 33.797352, 20.374744>,  <38.527523, 33.900146, 20.422129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912487, 33.797352, 20.374744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029797, 33.426369, 20.281952>,  <38.100182, 33.203781, 20.226276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029797, 33.426369, 20.281952>,  <37.912487, 33.797352, 20.374744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029797, 33.426369, 20.281952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549729, -0.362122, 0.752772,
		-0.782168, -0.093242, -0.616051,
		0.293276, -0.927455, -0.231982,
		38.117779, 33.148132, 20.212357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293671, 33.364582, 20.478409>,  <37.912487, 33.797352, 20.374744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293671, 33.364582, 20.478409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604279, 33.113884, 20.504356>,  <37.790646, 32.963467, 20.519924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604279, 33.113884, 20.504356>,  <37.293671, 33.364582, 20.478409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604279, 33.113884, 20.504356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406884, -0.420169, 0.811112,
		-0.481103, -0.656240, -0.581282,
		0.776521, -0.626743, 0.064869,
		37.837234, 32.925861, 20.523817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935402, 32.700188, 20.534462>,  <37.293671, 33.364582, 20.478409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935402, 32.700188, 20.534462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303192, 32.684723, 20.690954>,  <37.523869, 32.675446, 20.784849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303192, 32.684723, 20.690954>,  <36.935402, 32.700188, 20.534462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303192, 32.684723, 20.690954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374633, -0.387887, 0.842137,
		0.119198, -0.920896, -0.371137,
		0.919479, -0.038659, 0.391233,
		37.579037, 32.673126, 20.808325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027840, 32.024666, 20.743214>,  <36.935402, 32.700188, 20.534462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027840, 32.024666, 20.743214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314339, 32.205235, 20.956083>,  <37.486237, 32.313576, 21.083805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314339, 32.205235, 20.956083>,  <37.027840, 32.024666, 20.743214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314339, 32.205235, 20.956083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325064, -0.458990, 0.826839,
		0.617513, -0.765212, -0.182011,
		0.716248, 0.451418, 0.532175,
		37.529213, 32.340660, 21.115736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.660545, 35.301270, 17.438221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017532, 35.178104, 17.570095>,  <42.231724, 35.104206, 17.649220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017532, 35.178104, 17.570095>,  <41.660545, 35.301270, 17.438221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017532, 35.178104, 17.570095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204183, 0.375962, 0.903860,
		-0.402262, -0.873980, 0.272661,
		0.892465, -0.307916, 0.329687,
		42.285271, 35.085732, 17.669001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617676, 34.932503, 18.096716>,  <41.660545, 35.301270, 17.438221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617676, 34.932503, 18.096716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005386, 35.030876, 18.094732>,  <42.238010, 35.089901, 18.093542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005386, 35.030876, 18.094732>,  <41.617676, 34.932503, 18.096716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005386, 35.030876, 18.094732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066408, 0.281034, 0.957398,
		0.236846, -0.927652, 0.288731,
		0.969275, 0.245930, -0.004959,
		42.296169, 35.104656, 18.093245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935825, 34.535446, 18.524744>,  <41.617676, 34.932503, 18.096716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935825, 34.535446, 18.524744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194260, 34.840256, 18.507338>,  <42.349319, 35.023140, 18.496893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194260, 34.840256, 18.507338>,  <41.935825, 34.535446, 18.524744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194260, 34.840256, 18.507338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043618, 0.093784, 0.994637,
		0.762015, -0.640725, 0.093830,
		0.646088, 0.762021, -0.043518,
		42.388084, 35.068863, 18.494282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472076, 34.420605, 19.019073>,  <41.935825, 34.535446, 18.524744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472076, 34.420605, 19.019073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.483299, 34.813969, 18.947382>,  <42.490032, 35.049988, 18.904367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.483299, 34.813969, 18.947382>,  <42.472076, 34.420605, 19.019073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483299, 34.813969, 18.947382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017030, 0.178803, 0.983737,
		0.999461, -0.030655, -0.011730,
		0.028059, 0.983407, -0.179228,
		42.491718, 35.108990, 18.893614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972637, 34.671421, 19.431156>,  <42.472076, 34.420605, 19.019073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972637, 34.671421, 19.431156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.743095, 34.987717, 19.345905>,  <42.605370, 35.177494, 19.294754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.743095, 34.987717, 19.345905>,  <42.972637, 34.671421, 19.431156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743095, 34.987717, 19.345905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109589, 0.183757, 0.976844,
		0.811593, 0.583921, -0.018793,
		-0.573853, 0.790740, -0.213127,
		42.570938, 35.224937, 19.281967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332245, 35.230576, 19.862646>,  <42.972637, 34.671421, 19.431156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332245, 35.230576, 19.862646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.958542, 35.340595, 19.771868>,  <42.734318, 35.406609, 19.717400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.958542, 35.340595, 19.771868>,  <43.332245, 35.230576, 19.862646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958542, 35.340595, 19.771868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079801, 0.459024, 0.884833,
		0.347551, 0.844774, -0.406898,
		-0.934259, 0.275053, -0.226948,
		42.678265, 35.423111, 19.703783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269867, 35.951691, 20.216738>,  <43.332245, 35.230576, 19.862646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269867, 35.951691, 20.216738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.907776, 35.809414, 20.123745>,  <42.690521, 35.724049, 20.067949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.907776, 35.809414, 20.123745>,  <43.269867, 35.951691, 20.216738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907776, 35.809414, 20.123745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342078, 0.285439, 0.895269,
		-0.252078, 0.889950, -0.380060,
		-0.905229, -0.355688, -0.232480,
		42.636208, 35.702709, 20.054001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925377, 36.469662, 20.373487>,  <43.269867, 35.951691, 20.216738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925377, 36.469662, 20.373487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670265, 36.162518, 20.349392>,  <42.517197, 35.978233, 20.334934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670265, 36.162518, 20.349392>,  <42.925377, 36.469662, 20.373487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670265, 36.162518, 20.349392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421780, 0.282742, 0.861486,
		-0.644467, 0.574848, -0.504195,
		-0.637781, -0.767858, -0.060241,
		42.478931, 35.932159, 20.331320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320263, 36.731319, 20.605984>,  <42.925377, 36.469662, 20.373487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320263, 36.731319, 20.605984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.252266, 36.341690, 20.665693>,  <42.211468, 36.107914, 20.701519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.252266, 36.341690, 20.665693>,  <42.320263, 36.731319, 20.605984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252266, 36.341690, 20.665693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357512, 0.202118, 0.911775,
		-0.918307, 0.101629, -0.382602,
		-0.169993, -0.974074, 0.149273,
		42.201267, 36.049469, 20.710476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543732, 36.695236, 20.748388>,  <42.320263, 36.731319, 20.605984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543732, 36.695236, 20.748388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.719307, 36.358654, 20.874430>,  <41.824654, 36.156704, 20.950054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.719307, 36.358654, 20.874430>,  <41.543732, 36.695236, 20.748388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719307, 36.358654, 20.874430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472466, 0.082147, 0.877512,
		-0.764270, -0.534050, -0.361500,
		0.438940, -0.841453, 0.315103,
		41.850990, 36.106220, 20.968960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023926, 36.321053, 21.099556>,  <41.543732, 36.695236, 20.748388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023926, 36.321053, 21.099556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.373203, 36.187729, 21.241789>,  <41.582771, 36.107735, 21.327127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.373203, 36.187729, 21.241789>,  <41.023926, 36.321053, 21.099556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373203, 36.187729, 21.241789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348787, 0.082228, 0.933588,
		-0.340414, -0.939224, -0.044454,
		0.873193, -0.333311, 0.355581,
		41.635162, 36.087734, 21.348463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842537, 35.812954, 21.572279>,  <41.023926, 36.321053, 21.099556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842537, 35.812954, 21.572279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.212315, 35.919449, 21.681477>,  <41.434181, 35.983345, 21.746996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.212315, 35.919449, 21.681477>,  <40.842537, 35.812954, 21.572279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212315, 35.919449, 21.681477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296477, 0.051590, 0.953646,
		0.239817, -0.962525, 0.126627,
		0.924440, 0.266243, 0.272994,
		41.489647, 35.999321, 21.763374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476860, 35.178608, 21.623669>,  <40.842537, 35.812954, 21.572279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476860, 35.178608, 21.623669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096985, 35.299984, 21.592625>,  <39.869061, 35.372810, 21.573999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096985, 35.299984, 21.592625>,  <40.476860, 35.178608, 21.623669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096985, 35.299984, 21.592625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140436, 0.191053, -0.971482,
		-0.279963, -0.933499, -0.224054,
		-0.949684, 0.303444, -0.077609,
		39.812080, 35.391018, 21.569342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174129, 34.788765, 20.964725>,  <40.476860, 35.178608, 21.623669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174129, 34.788765, 20.964725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.932602, 35.092670, 21.061192>,  <39.787685, 35.275013, 21.119072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.932602, 35.092670, 21.061192>,  <40.174129, 34.788765, 20.964725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932602, 35.092670, 21.061192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012607, 0.293407, -0.955905,
		-0.797019, -0.580237, -0.167588,
		-0.603823, 0.759761, 0.241166,
		39.751453, 35.320599, 21.133541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649570, 34.775665, 20.537283>,  <40.174129, 34.788765, 20.964725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649570, 34.775665, 20.537283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677635, 35.154346, 20.663036>,  <39.694473, 35.381554, 20.738487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677635, 35.154346, 20.663036>,  <39.649570, 34.775665, 20.537283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677635, 35.154346, 20.663036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147121, 0.321534, -0.935399,
		-0.986627, 0.019379, 0.161840,
		0.070164, 0.946700, 0.314383,
		39.698685, 35.438358, 20.757351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145237, 35.104538, 20.119415>,  <39.649570, 34.775665, 20.537283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145237, 35.104538, 20.119415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365036, 35.397957, 20.279398>,  <39.496914, 35.574005, 20.375387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365036, 35.397957, 20.279398>,  <39.145237, 35.104538, 20.119415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365036, 35.397957, 20.279398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140939, 0.553232, -0.821018,
		-0.823522, 0.394779, 0.407384,
		0.549499, 0.733542, 0.399959,
		39.529884, 35.618019, 20.399385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762066, 35.706078, 19.866304>,  <39.145237, 35.104538, 20.119415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762066, 35.706078, 19.866304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.135860, 35.814281, 19.958872>,  <39.360138, 35.879204, 20.014412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.135860, 35.814281, 19.958872>,  <38.762066, 35.706078, 19.866304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135860, 35.814281, 19.958872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094513, 0.438209, -0.893891,
		-0.343220, 0.857202, 0.383934,
		0.934488, 0.270514, 0.231419,
		39.416206, 35.895435, 20.028297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753773, 36.342800, 19.758207>,  <38.762066, 35.706078, 19.866304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753773, 36.342800, 19.758207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138954, 36.237141, 19.736496>,  <39.370064, 36.173744, 19.723469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138954, 36.237141, 19.736496>,  <38.753773, 36.342800, 19.758207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138954, 36.237141, 19.736496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026698, 0.293672, -0.955533,
		0.268340, 0.918686, 0.289845,
		0.962954, -0.264146, -0.054277,
		39.427841, 36.157898, 19.720213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978867, 36.912319, 19.329117>,  <38.753773, 36.342800, 19.758207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978867, 36.912319, 19.329117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.273628, 36.642349, 19.344381>,  <39.450485, 36.480370, 19.353540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.273628, 36.642349, 19.344381>,  <38.978867, 36.912319, 19.329117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273628, 36.642349, 19.344381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219290, 0.185264, -0.957909,
		0.639442, 0.714254, 0.284525,
		0.736903, -0.674920, 0.038163,
		39.494698, 36.439873, 19.355831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515633, 37.200573, 19.130053>,  <38.978867, 36.912319, 19.329117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515633, 37.200573, 19.130053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591599, 36.818012, 19.041298>,  <39.637177, 36.588478, 18.988045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591599, 36.818012, 19.041298>,  <39.515633, 37.200573, 19.130053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591599, 36.818012, 19.041298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204204, 0.259536, -0.943897,
		0.960330, 0.133949, 0.244590,
		0.189914, -0.956399, -0.221887,
		39.648571, 36.531094, 18.974731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960175, 37.291203, 18.622200>,  <39.515633, 37.200573, 19.130053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960175, 37.291203, 18.622200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.863838, 36.905281, 18.579973>,  <39.806038, 36.673729, 18.554636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.863838, 36.905281, 18.579973>,  <39.960175, 37.291203, 18.622200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863838, 36.905281, 18.579973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290519, 0.032121, -0.956330,
		0.926065, -0.260989, 0.272559,
		-0.240836, -0.964807, -0.105568,
		39.791588, 36.615837, 18.548304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438896, 37.051208, 18.258741>,  <39.960175, 37.291203, 18.622200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438896, 37.051208, 18.258741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175110, 36.752007, 18.228825>,  <40.016838, 36.572487, 18.210875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175110, 36.752007, 18.228825>,  <40.438896, 37.051208, 18.258741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175110, 36.752007, 18.228825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216197, -0.093427, -0.971869,
		0.719976, -0.657083, 0.223329,
		-0.659464, -0.748006, -0.074794,
		39.977272, 36.527603, 18.206387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717918, 36.452541, 17.901785>,  <40.438896, 37.051208, 18.258741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717918, 36.452541, 17.901785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325787, 36.455524, 17.822887>,  <40.090508, 36.457314, 17.775549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325787, 36.455524, 17.822887>,  <40.717918, 36.452541, 17.901785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325787, 36.455524, 17.822887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196403, -0.062690, -0.978517,
		-0.019657, -0.998005, 0.059993,
		-0.980326, 0.007451, -0.197244,
		40.031689, 36.457760, 17.763714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700077, 35.923622, 17.388893>,  <40.717918, 36.452541, 17.901785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700077, 35.923622, 17.388893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372520, 36.152000, 17.365456>,  <40.175987, 36.289028, 17.351393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372520, 36.152000, 17.365456>,  <40.700077, 35.923622, 17.388893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372520, 36.152000, 17.365456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012292, -0.084616, -0.996338,
		-0.573817, -0.816613, 0.062273,
		-0.818891, 0.570950, -0.058592,
		40.126854, 36.323284, 17.347878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157146, 35.520679, 16.964567>,  <40.700077, 35.923622, 17.388893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157146, 35.520679, 16.964567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067501, 35.910454, 16.958372>,  <40.013714, 36.144318, 16.954655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067501, 35.910454, 16.958372>,  <40.157146, 35.520679, 16.964567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067501, 35.910454, 16.958372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188469, -0.058929, -0.980310,
		-0.956165, -0.216782, 0.196858,
		-0.224114, 0.974440, -0.015489,
		40.000267, 36.202785, 16.953726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630859, 35.531551, 16.515640>,  <40.157146, 35.520679, 16.964567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630859, 35.531551, 16.515640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.761726, 35.909531, 16.513140>,  <39.840244, 36.136318, 16.511639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.761726, 35.909531, 16.513140>,  <39.630859, 35.531551, 16.515640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761726, 35.909531, 16.513140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098338, 0.027465, -0.994774,
		-0.939836, 0.326071, 0.101910,
		0.327166, 0.944946, -0.006253,
		39.859875, 36.193016, 16.511263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100327, 34.953911, 16.794193>,  <39.630859, 35.531551, 16.515640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100327, 34.953911, 16.794193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302208, 34.622578, 16.696918>,  <39.423336, 34.423779, 16.638554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302208, 34.622578, 16.696918>,  <39.100327, 34.953911, 16.794193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302208, 34.622578, 16.696918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697067, -0.557200, 0.451249,
		-0.509287, -0.058232, -0.858624,
		0.504702, -0.828334, -0.243184,
		39.453617, 34.374077, 16.623962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697861, 34.483971, 16.637104>,  <39.100327, 34.953911, 16.794193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697861, 34.483971, 16.637104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019115, 34.286022, 16.769810>,  <39.211868, 34.167252, 16.849434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019115, 34.286022, 16.769810>,  <38.697861, 34.483971, 16.637104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019115, 34.286022, 16.769810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546773, -0.391029, 0.740362,
		-0.236654, -0.776015, -0.584633,
		0.803140, -0.494871, 0.331765,
		39.260056, 34.137562, 16.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423286, 33.798107, 16.923269>,  <38.697861, 34.483971, 16.637104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423286, 33.798107, 16.923269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793854, 33.818848, 17.072428>,  <39.016193, 33.831291, 17.161922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793854, 33.818848, 17.072428>,  <38.423286, 33.798107, 16.923269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793854, 33.818848, 17.072428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321486, -0.406510, 0.855217,
		0.195929, -0.912174, -0.359931,
		0.926423, 0.051849, 0.372898,
		39.071781, 33.834404, 17.184298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623993, 33.158337, 17.192133>,  <38.423286, 33.798107, 16.923269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623993, 33.158337, 17.192133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853699, 33.427383, 17.378813>,  <38.991524, 33.588810, 17.490820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853699, 33.427383, 17.378813>,  <38.623993, 33.158337, 17.192133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853699, 33.427383, 17.378813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231377, -0.413482, 0.880623,
		0.785293, -0.613694, -0.081820,
		0.574264, 0.672616, 0.466700,
		39.025978, 33.629169, 17.518824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900509, 32.769100, 17.754160>,  <38.623993, 33.158337, 17.192133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900509, 32.769100, 17.754160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.949177, 33.150894, 17.863085>,  <38.978378, 33.379971, 17.928440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.949177, 33.150894, 17.863085>,  <38.900509, 32.769100, 17.754160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949177, 33.150894, 17.863085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228360, -0.240071, 0.943513,
		0.965944, -0.176980, 0.188758,
		0.121668, 0.954486, 0.272310,
		38.985676, 33.437241, 17.944778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303711, 32.675091, 18.338127>,  <38.900509, 32.769100, 17.754160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303711, 32.675091, 18.338127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.156109, 33.042900, 18.392248>,  <39.067547, 33.263588, 18.424721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.156109, 33.042900, 18.392248>,  <39.303711, 32.675091, 18.338127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156109, 33.042900, 18.392248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026550, -0.135087, 0.990478,
		0.929049, 0.369081, 0.025434,
		-0.369002, 0.919528, 0.135302,
		39.045410, 33.318760, 18.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629948, 32.922264, 18.958088>,  <39.303711, 32.675091, 18.338127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629948, 32.922264, 18.958088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303719, 33.144032, 18.891808>,  <39.107979, 33.277092, 18.852039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303719, 33.144032, 18.891808>,  <39.629948, 32.922264, 18.958088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303719, 33.144032, 18.891808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308670, -0.174619, 0.935003,
		0.489446, 0.813714, 0.313547,
		-0.815577, 0.554416, -0.165702,
		39.059044, 33.310356, 18.842096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375839, 33.057034, 19.105473>,  <39.629948, 32.922264, 18.958088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375839, 33.057034, 19.105473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.609436, 32.733959, 19.137941>,  <40.749596, 32.540115, 19.157423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.609436, 32.733959, 19.137941>,  <40.375839, 33.057034, 19.105473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609436, 32.733959, 19.137941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203823, 0.049108, -0.977775,
		0.785752, 0.587560, 0.193305,
		0.583994, -0.807689, 0.081172,
		40.784634, 32.491653, 19.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744904, 33.163662, 18.564745>,  <40.375839, 33.057034, 19.105473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744904, 33.163662, 18.564745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848221, 32.788582, 18.657703>,  <40.910210, 32.563534, 18.713478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848221, 32.788582, 18.657703>,  <40.744904, 33.163662, 18.564745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848221, 32.788582, 18.657703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268339, -0.161454, -0.949698,
		0.928051, 0.307662, 0.209919,
		0.258293, -0.937698, 0.232395,
		40.925709, 32.507271, 18.727423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480423, 33.065689, 18.585899>,  <40.744904, 33.163662, 18.564745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480423, 33.065689, 18.585899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.325916, 32.705048, 18.508013>,  <41.233212, 32.488663, 18.461281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.325916, 32.705048, 18.508013>,  <41.480423, 33.065689, 18.585899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325916, 32.705048, 18.508013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550388, -0.055891, -0.833036,
		0.740182, -0.428946, 0.517818,
		-0.386268, -0.901599, -0.194717,
		41.210037, 32.434566, 18.449598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930588, 32.850426, 18.135513>,  <41.480423, 33.065689, 18.585899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930588, 32.850426, 18.135513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654327, 32.562454, 18.108074>,  <41.488571, 32.389671, 18.091612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654327, 32.562454, 18.108074>,  <41.930588, 32.850426, 18.135513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654327, 32.562454, 18.108074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392599, -0.293588, -0.871592,
		0.607344, -0.628896, 0.485410,
		-0.690651, -0.719928, -0.068596,
		41.447132, 32.346478, 18.087496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271446, 32.218273, 18.075445>,  <41.930588, 32.850426, 18.135513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271446, 32.218273, 18.075445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913898, 32.175320, 17.901333>,  <41.699371, 32.149548, 17.796865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913898, 32.175320, 17.901333>,  <42.271446, 32.218273, 18.075445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913898, 32.175320, 17.901333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445989, -0.312123, -0.838853,
		-0.045782, -0.943953, 0.326888,
		-0.893867, -0.107385, -0.435282,
		41.645737, 32.143105, 17.770748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316406, 31.595942, 17.675980>,  <42.271446, 32.218273, 18.075445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316406, 31.595942, 17.675980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987396, 31.744701, 17.503868>,  <41.789989, 31.833958, 17.400600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987396, 31.744701, 17.503868>,  <42.316406, 31.595942, 17.675980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987396, 31.744701, 17.503868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383453, -0.196097, -0.902502,
		-0.420015, -0.907325, 0.018690,
		-0.822528, 0.371897, -0.430280,
		41.740639, 31.856270, 17.374784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051182, 31.044502, 17.268654>,  <42.316406, 31.595942, 17.675980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051182, 31.044502, 17.268654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.936703, 31.398266, 17.121189>,  <41.868015, 31.610525, 17.032711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.936703, 31.398266, 17.121189>,  <42.051182, 31.044502, 17.268654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936703, 31.398266, 17.121189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425343, -0.227501, -0.875972,
		-0.858589, -0.407507, -0.311068,
		-0.286196, 0.884410, -0.368660,
		41.850845, 31.663589, 17.010592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769634, 30.964874, 16.544935>,  <42.051182, 31.044502, 17.268654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769634, 30.964874, 16.544935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890072, 31.346298, 16.548189>,  <41.962334, 31.575153, 16.550142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890072, 31.346298, 16.548189>,  <41.769634, 30.964874, 16.544935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890072, 31.346298, 16.548189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563030, -0.170884, -0.808577,
		-0.769636, 0.248038, -0.588335,
		0.301095, 0.953560, 0.008135,
		41.980400, 31.632366, 16.550629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809532, 31.074305, 15.856154>,  <41.769634, 30.964874, 16.544935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809532, 31.074305, 15.856154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.020130, 31.337589, 16.071398>,  <42.146488, 31.495560, 16.200544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.020130, 31.337589, 16.071398>,  <41.809532, 31.074305, 15.856154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020130, 31.337589, 16.071398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691821, 0.036194, -0.721161,
		-0.494153, 0.751963, -0.436308,
		0.526495, 0.658211, 0.538109,
		42.178078, 31.535053, 16.232830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.099037, 33.623821, 31.130493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458633, 33.779327, 31.211168>,  <37.674389, 33.872631, 31.259573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458633, 33.779327, 31.211168>,  <37.099037, 33.623821, 31.130493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458633, 33.779327, 31.211168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355145, -0.377589, -0.855160,
		-0.256304, 0.840407, -0.477518,
		0.898988, 0.388769, 0.201689,
		37.728329, 33.895958, 31.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377094, 34.095963, 30.640625>,  <37.099037, 33.623821, 31.130493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377094, 34.095963, 30.640625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691463, 33.923145, 30.817562>,  <37.880085, 33.819454, 30.923725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691463, 33.923145, 30.817562>,  <37.377094, 34.095963, 30.640625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691463, 33.923145, 30.817562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412515, -0.166551, -0.895596,
		0.460605, 0.886343, 0.047326,
		0.785923, -0.432038, 0.442344,
		37.927238, 33.793533, 30.950266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883743, 34.267162, 30.116352>,  <37.377094, 34.095963, 30.640625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883743, 34.267162, 30.116352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067047, 33.992889, 30.342571>,  <38.177029, 33.828327, 30.478304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067047, 33.992889, 30.342571>,  <37.883743, 34.267162, 30.116352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067047, 33.992889, 30.342571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517749, -0.311261, -0.796902,
		0.722451, 0.657999, 0.212371,
		0.458258, -0.685678, 0.565549,
		38.204525, 33.787186, 30.512236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590862, 34.239925, 29.911390>,  <37.883743, 34.267162, 30.116352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590862, 34.239925, 29.911390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546906, 33.887531, 30.095470>,  <38.520531, 33.676094, 30.205919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546906, 33.887531, 30.095470>,  <38.590862, 34.239925, 29.911390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546906, 33.887531, 30.095470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543765, -0.440861, -0.714116,
		0.832011, 0.171767, 0.527497,
		-0.109892, -0.880987, 0.460202,
		38.513939, 33.623234, 30.233530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219879, 33.905815, 29.920134>,  <38.590862, 34.239925, 29.911390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219879, 33.905815, 29.920134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946400, 33.617496, 29.965763>,  <38.782310, 33.444508, 29.993141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946400, 33.617496, 29.965763>,  <39.219879, 33.905815, 29.920134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946400, 33.617496, 29.965763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424966, -0.520323, -0.740721,
		0.593262, -0.457953, 0.662057,
		-0.683699, -0.720793, 0.114073,
		38.741291, 33.401260, 29.999985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585354, 33.291893, 29.823135>,  <39.219879, 33.905815, 29.920134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585354, 33.291893, 29.823135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199543, 33.206966, 29.760389>,  <38.968056, 33.156010, 29.722742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199543, 33.206966, 29.760389>,  <39.585354, 33.291893, 29.823135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199543, 33.206966, 29.760389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242068, -0.474347, -0.846403,
		0.105297, -0.854352, 0.508916,
		-0.964529, -0.212316, -0.156864,
		38.910183, 33.143272, 29.713329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599106, 32.732571, 29.355089>,  <39.585354, 33.291893, 29.823135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599106, 32.732571, 29.355089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210579, 32.823261, 29.326406>,  <38.977463, 32.877678, 29.309196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210579, 32.823261, 29.326406>,  <39.599106, 32.732571, 29.355089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210579, 32.823261, 29.326406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045319, -0.472519, -0.880155,
		-0.233439, -0.851658, 0.469239,
		-0.971315, 0.226728, -0.071708,
		38.919186, 32.891281, 29.304893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267891, 32.094738, 29.193012>,  <39.599106, 32.732571, 29.355089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267891, 32.094738, 29.193012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027767, 32.396774, 29.087589>,  <38.883694, 32.577995, 29.024336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027767, 32.396774, 29.087589>,  <39.267891, 32.094738, 29.193012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027767, 32.396774, 29.087589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137831, -0.422290, -0.895921,
		-0.787801, -0.501504, 0.357580,
		-0.600310, 0.755093, -0.263557,
		38.847675, 32.623302, 29.008522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707523, 31.729601, 29.034630>,  <39.267891, 32.094738, 29.193012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707523, 31.729601, 29.034630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694126, 32.076614, 28.836128>,  <38.686089, 32.284821, 28.717028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694126, 32.076614, 28.836128>,  <38.707523, 31.729601, 29.034630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694126, 32.076614, 28.836128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157989, -0.494884, -0.854477,
		-0.986873, 0.049783, 0.153636,
		-0.033494, 0.867532, -0.496252,
		38.684078, 32.336876, 28.687252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126404, 31.682978, 28.687634>,  <38.707523, 31.729601, 29.034630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126404, 31.682978, 28.687634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360504, 31.946011, 28.497868>,  <38.500965, 32.103828, 28.384008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360504, 31.946011, 28.497868>,  <38.126404, 31.682978, 28.687634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360504, 31.946011, 28.497868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082249, -0.533918, -0.841526,
		-0.806671, 0.531523, -0.258390,
		0.585250, 0.657582, -0.474414,
		38.536079, 32.143284, 28.355543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846420, 31.734951, 28.054775>,  <38.126404, 31.682978, 28.687634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846420, 31.734951, 28.054775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192432, 31.916050, 27.968302>,  <38.400040, 32.024712, 27.916418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192432, 31.916050, 27.968302>,  <37.846420, 31.734951, 28.054775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192432, 31.916050, 27.968302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053461, -0.345256, -0.936984,
		-0.498858, 0.822080, -0.274454,
		0.865033, 0.452750, -0.216183,
		38.451942, 32.051876, 27.903446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705200, 32.154182, 27.349701>,  <37.846420, 31.734951, 28.054775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705200, 32.154182, 27.349701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099583, 32.099258, 27.387722>,  <38.336212, 32.066303, 27.410534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099583, 32.099258, 27.387722>,  <37.705200, 32.154182, 27.349701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099583, 32.099258, 27.387722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062285, -0.225743, -0.972194,
		0.154952, 0.964461, -0.214020,
		0.985957, -0.137313, 0.095051,
		38.395370, 32.058064, 27.416237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244823, 32.412224, 26.837217>,  <37.705200, 32.154182, 27.349701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244823, 32.412224, 26.837217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927132, 32.171135, 26.806414>,  <36.736515, 32.026482, 26.787931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927132, 32.171135, 26.806414>,  <37.244823, 32.412224, 26.837217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927132, 32.171135, 26.806414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327056, 0.317240, 0.890165,
		-0.512088, 0.732182, -0.449083,
		-0.794230, -0.602718, -0.077010,
		36.688862, 31.990320, 26.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577629, 32.827595, 26.700720>,  <37.244823, 32.412224, 26.837217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577629, 32.827595, 26.700720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507290, 32.473701, 26.873379>,  <36.465088, 32.261364, 26.976974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507290, 32.473701, 26.873379>,  <36.577629, 32.827595, 26.700720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507290, 32.473701, 26.873379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396414, 0.464996, 0.791602,
		-0.901074, -0.031912, -0.432489,
		-0.175844, -0.884737, 0.431647,
		36.454536, 32.208279, 27.002872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987453, 32.962013, 27.052866>,  <36.577629, 32.827595, 26.700720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987453, 32.962013, 27.052866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084141, 32.608047, 27.212111>,  <36.142151, 32.395668, 27.307657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084141, 32.608047, 27.212111>,  <35.987453, 32.962013, 27.052866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084141, 32.608047, 27.212111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417318, 0.275593, 0.865964,
		-0.876025, -0.375456, -0.302677,
		0.241716, -0.884919, 0.398111,
		36.156654, 32.342571, 27.331543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404305, 32.599911, 27.303629>,  <35.987453, 32.962013, 27.052866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404305, 32.599911, 27.303629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715981, 32.466232, 27.515734>,  <35.902985, 32.386024, 27.642996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715981, 32.466232, 27.515734>,  <35.404305, 32.599911, 27.303629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715981, 32.466232, 27.515734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474316, 0.238653, 0.847390,
		-0.409745, -0.911787, 0.027440,
		0.779188, -0.334199, 0.530262,
		35.949738, 32.365974, 27.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094013, 32.532921, 27.885208>,  <35.404305, 32.599911, 27.303629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094013, 32.532921, 27.885208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487423, 32.527187, 27.957281>,  <35.723469, 32.523746, 28.000525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487423, 32.527187, 27.957281>,  <35.094013, 32.532921, 27.885208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487423, 32.527187, 27.957281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155705, 0.439079, 0.884853,
		-0.091799, -0.898334, 0.429614,
		0.983529, -0.014335, 0.180182,
		35.782482, 32.522888, 28.011335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075249, 32.500130, 28.637028>,  <35.094013, 32.532921, 27.885208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075249, 32.500130, 28.637028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447727, 32.608456, 28.539425>,  <35.671215, 32.673450, 28.480864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447727, 32.608456, 28.539425>,  <35.075249, 32.500130, 28.637028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447727, 32.608456, 28.539425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080088, 0.501034, 0.861714,
		0.355618, -0.821964, 0.444871,
		0.931193, 0.270812, -0.244006,
		35.727085, 32.689701, 28.466223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498550, 32.308262, 29.197701>,  <35.075249, 32.500130, 28.637028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498550, 32.308262, 29.197701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690659, 32.584648, 28.981590>,  <35.805923, 32.750481, 28.851923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690659, 32.584648, 28.981590>,  <35.498550, 32.308262, 29.197701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690659, 32.584648, 28.981590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002654, 0.617109, 0.786873,
		0.877116, -0.376479, 0.298214,
		0.480272, 0.690970, -0.540277,
		35.834740, 32.791939, 28.819508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179974, 32.519661, 29.629206>,  <35.498550, 32.308262, 29.197701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179974, 32.519661, 29.629206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078609, 32.813274, 29.377182>,  <36.017792, 32.989445, 29.225967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078609, 32.813274, 29.377182>,  <36.179974, 32.519661, 29.629206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078609, 32.813274, 29.377182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055690, 0.639169, 0.767047,
		0.965756, 0.229463, -0.121092,
		-0.253407, 0.734037, -0.630060,
		36.002586, 33.033485, 29.188164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666401, 33.003208, 29.738293>,  <36.179974, 32.519661, 29.629206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666401, 33.003208, 29.738293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348610, 33.198673, 29.594059>,  <36.157936, 33.315952, 29.507519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348610, 33.198673, 29.594059>,  <36.666401, 33.003208, 29.738293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348610, 33.198673, 29.594059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068891, 0.662439, 0.745942,
		0.603379, 0.567790, -0.559954,
		-0.794473, 0.488661, -0.360586,
		36.110268, 33.345272, 29.485884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865837, 33.751049, 29.794033>,  <36.666401, 33.003208, 29.738293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865837, 33.751049, 29.794033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469017, 33.777855, 29.751432>,  <36.230923, 33.793938, 29.725872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469017, 33.777855, 29.751432>,  <36.865837, 33.751049, 29.794033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469017, 33.777855, 29.751432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028977, 0.701980, 0.711607,
		0.122447, 0.709037, -0.694459,
		-0.992052, 0.067010, -0.106501,
		36.171402, 33.797958, 29.719482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663002, 34.484833, 29.728243>,  <36.865837, 33.751049, 29.794033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663002, 34.484833, 29.728243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317863, 34.316029, 29.839531>,  <36.110783, 34.214745, 29.906303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317863, 34.316029, 29.839531>,  <36.663002, 34.484833, 29.728243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317863, 34.316029, 29.839531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154597, 0.744367, 0.649629,
		-0.481251, 0.517515, -0.707514,
		-0.862842, -0.422014, 0.278221,
		36.059010, 34.189423, 29.922997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297504, 35.113037, 29.936596>,  <36.663002, 34.484833, 29.728243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297504, 35.113037, 29.936596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055241, 34.834408, 30.090460>,  <35.909882, 34.667229, 30.182779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055241, 34.834408, 30.090460>,  <36.297504, 35.113037, 29.936596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055241, 34.834408, 30.090460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226481, 0.614321, 0.755854,
		-0.762812, 0.370672, -0.529830,
		-0.605659, -0.696572, 0.384662,
		35.873543, 34.625435, 30.205858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650047, 35.403782, 30.186850>,  <36.297504, 35.113037, 29.936596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650047, 35.403782, 30.186850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706596, 35.070141, 30.400124>,  <35.740524, 34.869957, 30.528088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706596, 35.070141, 30.400124>,  <35.650047, 35.403782, 30.186850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706596, 35.070141, 30.400124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126826, 0.518896, 0.845377,
		-0.981799, -0.187135, -0.032428,
		0.141373, -0.834103, 0.533185,
		35.749008, 34.819908, 30.560080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153168, 35.436539, 30.767904>,  <35.650047, 35.403782, 30.186850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153168, 35.436539, 30.767904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421494, 35.167622, 30.893145>,  <35.582489, 35.006271, 30.968288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421494, 35.167622, 30.893145>,  <35.153168, 35.436539, 30.767904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421494, 35.167622, 30.893145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120492, 0.317774, 0.940479,
		-0.731775, -0.668610, 0.132160,
		0.670811, -0.672295, 0.313101,
		35.622738, 34.965935, 30.987074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297974, 36.057613, 31.195045>,  <35.153168, 35.436539, 30.767904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297974, 36.057613, 31.195045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421993, 36.402905, 31.354399>,  <35.496407, 36.610081, 31.450010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421993, 36.402905, 31.354399>,  <35.297974, 36.057613, 31.195045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421993, 36.402905, 31.354399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004508, 0.420362, -0.907345,
		-0.950710, 0.279526, 0.134225,
		0.310049, 0.863227, 0.398383,
		35.515007, 36.661873, 31.473913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746979, 36.579235, 31.201378>,  <35.297974, 36.057613, 31.195045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746979, 36.579235, 31.201378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120789, 36.721073, 31.189209>,  <35.345074, 36.806175, 31.181908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120789, 36.721073, 31.189209>,  <34.746979, 36.579235, 31.201378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120789, 36.721073, 31.189209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071525, 0.103390, -0.992066,
		-0.348634, 0.929287, 0.121983,
		0.934526, 0.354593, -0.030422,
		35.401146, 36.827450, 31.180082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748726, 37.104862, 30.672977>,  <34.746979, 36.579235, 31.201378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748726, 37.104862, 30.672977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130703, 36.996017, 30.720369>,  <35.359890, 36.930710, 30.748804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130703, 36.996017, 30.720369>,  <34.748726, 37.104862, 30.672977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130703, 36.996017, 30.720369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152065, 0.105777, -0.982694,
		0.254870, 0.956434, 0.142389,
		0.954944, -0.272112, 0.118481,
		35.417187, 36.914383, 30.755913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948360, 37.371685, 30.155704>,  <34.748726, 37.104862, 30.672977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948360, 37.371685, 30.155704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264828, 37.144428, 30.246275>,  <35.454708, 37.008076, 30.300617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264828, 37.144428, 30.246275>,  <34.948360, 37.371685, 30.155704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264828, 37.144428, 30.246275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367047, 0.144939, -0.918841,
		0.489212, 0.810068, 0.323206,
		0.791169, -0.568140, 0.226427,
		35.502178, 36.973988, 30.314203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527851, 37.793636, 30.050486>,  <34.948360, 37.371685, 30.155704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527851, 37.793636, 30.050486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664631, 37.419044, 30.019323>,  <35.746700, 37.194290, 30.000626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664631, 37.419044, 30.019323>,  <35.527851, 37.793636, 30.050486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664631, 37.419044, 30.019323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305383, 0.189148, -0.933255,
		0.888713, 0.295336, 0.350665,
		0.341951, -0.936482, -0.077908,
		35.767216, 37.138100, 29.995951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075592, 37.841961, 29.712423>,  <35.527851, 37.793636, 30.050486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075592, 37.841961, 29.712423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056904, 37.445671, 29.661373>,  <36.045689, 37.207897, 29.630743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056904, 37.445671, 29.661373>,  <36.075592, 37.841961, 29.712423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056904, 37.445671, 29.661373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424088, 0.096004, -0.900518,
		0.904415, -0.096199, 0.415667,
		-0.046723, -0.990722, -0.127624,
		36.042889, 37.148453, 29.623085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795353, 37.586689, 29.576887>,  <36.075592, 37.841961, 29.712423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795353, 37.586689, 29.576887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517921, 37.338570, 29.430365>,  <36.351463, 37.189697, 29.342451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517921, 37.338570, 29.430365>,  <36.795353, 37.586689, 29.576887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517921, 37.338570, 29.430365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479111, -0.017465, -0.877581,
		0.537966, -0.784169, 0.309306,
		-0.693574, -0.620301, -0.366309,
		36.309849, 37.152481, 29.320473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161858, 37.165535, 29.132566>,  <36.795353, 37.586689, 29.576887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161858, 37.165535, 29.132566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791759, 37.096832, 28.997259>,  <36.569702, 37.055611, 28.916075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791759, 37.096832, 28.997259>,  <37.161858, 37.165535, 29.132566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791759, 37.096832, 28.997259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334208, 0.052933, -0.941012,
		0.179533, -0.983716, 0.008427,
		-0.925242, -0.171759, -0.338269,
		36.514187, 37.045303, 28.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137226, 36.379307, 28.847700>,  <37.161858, 37.165535, 29.132566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137226, 36.379307, 28.847700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840919, 36.584778, 28.674540>,  <36.663136, 36.708061, 28.570642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840919, 36.584778, 28.674540>,  <37.137226, 36.379307, 28.847700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840919, 36.584778, 28.674540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186461, -0.461877, -0.867123,
		-0.645367, -0.723054, 0.246363,
		-0.740766, 0.513675, -0.432902,
		36.618690, 36.738880, 28.544670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809048, 35.886871, 28.327198>,  <37.137226, 36.379307, 28.847700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809048, 35.886871, 28.327198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.670174, 36.247833, 28.225124>,  <36.586849, 36.464413, 28.163879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.670174, 36.247833, 28.225124>,  <36.809048, 35.886871, 28.327198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670174, 36.247833, 28.225124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165838, -0.208745, -0.963807,
		-0.923015, -0.376943, -0.077179,
		-0.347189, 0.902408, -0.255186,
		36.566017, 36.518555, 28.148569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275650, 35.756962, 27.815924>,  <36.809048, 35.886871, 28.327198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275650, 35.756962, 27.815924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365871, 36.143021, 27.762844>,  <36.420006, 36.374657, 27.730997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365871, 36.143021, 27.762844>,  <36.275650, 35.756962, 27.815924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365871, 36.143021, 27.762844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168022, -0.172706, -0.970537,
		-0.959632, 0.196615, -0.201121,
		0.225556, 0.965150, -0.132698,
		36.433537, 36.432568, 27.723034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832211, 36.081470, 27.302696>,  <36.275650, 35.756962, 27.815924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832211, 36.081470, 27.302696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152035, 36.321571, 27.310802>,  <36.343929, 36.465630, 27.315666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152035, 36.321571, 27.310802>,  <35.832211, 36.081470, 27.302696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152035, 36.321571, 27.310802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253654, -0.306905, -0.917316,
		-0.544398, 0.738587, -0.397643,
		0.799557, 0.600248, 0.020267,
		36.391903, 36.501644, 27.316883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790764, 36.446793, 26.674171>,  <35.832211, 36.081470, 27.302696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790764, 36.446793, 26.674171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161530, 36.496841, 26.815689>,  <36.383991, 36.526871, 26.900600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161530, 36.496841, 26.815689>,  <35.790764, 36.446793, 26.674171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161530, 36.496841, 26.815689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375267, -0.307925, -0.874275,
		-0.000447, 0.943148, -0.332374,
		0.926916, 0.125120, 0.353795,
		36.439606, 36.534378, 26.921827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185566, 36.813744, 26.174160>,  <35.790764, 36.446793, 26.674171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185566, 36.813744, 26.174160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474514, 36.641270, 26.390406>,  <36.647881, 36.537785, 26.520153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474514, 36.641270, 26.390406>,  <36.185566, 36.813744, 26.174160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474514, 36.641270, 26.390406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569344, -0.072853, -0.818865,
		0.392468, 0.899317, 0.192866,
		0.722368, -0.431186, 0.540614,
		36.691223, 36.511913, 26.552589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730366, 37.098797, 25.907673>,  <36.185566, 36.813744, 26.174160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730366, 37.098797, 25.907673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879539, 36.774746, 26.088608>,  <36.969044, 36.580315, 26.197168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879539, 36.774746, 26.088608>,  <36.730366, 37.098797, 25.907673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879539, 36.774746, 26.088608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509848, -0.228390, -0.829393,
		0.775225, 0.539935, 0.327867,
		0.372936, -0.810129, 0.452338,
		36.991421, 36.531708, 26.224310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525467, 37.003876, 25.860880>,  <36.730366, 37.098797, 25.907673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525467, 37.003876, 25.860880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398388, 36.633163, 25.941025>,  <37.322140, 36.410736, 25.989111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398388, 36.633163, 25.941025>,  <37.525467, 37.003876, 25.860880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398388, 36.633163, 25.941025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470928, -0.337629, -0.815005,
		0.822980, -0.164567, 0.543711,
		-0.317696, -0.926782, 0.200362,
		37.303078, 36.355129, 26.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144978, 36.574703, 26.059895>,  <37.525467, 37.003876, 25.860880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144978, 36.574703, 26.059895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842739, 36.357628, 25.913162>,  <37.661396, 36.227383, 25.825123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842739, 36.357628, 25.913162>,  <38.144978, 36.574703, 26.059895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842739, 36.357628, 25.913162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580113, -0.294311, -0.759506,
		0.304213, -0.786683, 0.537201,
		-0.755595, -0.542689, -0.366832,
		37.616062, 36.194820, 25.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402386, 35.816719, 26.020403>,  <38.144978, 36.574703, 26.059895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402386, 35.816719, 26.020403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082169, 35.824821, 25.780828>,  <37.890038, 35.829681, 25.637085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082169, 35.824821, 25.780828>,  <38.402386, 35.816719, 26.020403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082169, 35.824821, 25.780828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505848, -0.513043, -0.693473,
		-0.321325, -0.858124, 0.400467,
		-0.800542, 0.020255, -0.598934,
		37.842007, 35.830898, 25.601149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524239, 35.195187, 25.715250>,  <38.402386, 35.816719, 26.020403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524239, 35.195187, 25.715250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272564, 35.396530, 25.478352>,  <38.121559, 35.517338, 25.336212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272564, 35.396530, 25.478352>,  <38.524239, 35.195187, 25.715250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272564, 35.396530, 25.478352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265265, -0.577158, -0.772349,
		-0.730590, -0.643052, 0.229615,
		-0.629184, 0.503361, -0.592245,
		38.083809, 35.547539, 25.300678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430763, 34.720715, 25.228371>,  <38.524239, 35.195187, 25.715250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430763, 34.720715, 25.228371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279186, 35.056705, 25.073013>,  <38.188240, 35.258301, 24.979799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279186, 35.056705, 25.073013>,  <38.430763, 34.720715, 25.228371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279186, 35.056705, 25.073013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301548, -0.284709, -0.909950,
		-0.874912, -0.461937, -0.145404,
		-0.378942, 0.839973, -0.388392,
		38.165504, 35.308697, 24.956495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061531, 34.527855, 24.650679>,  <38.430763, 34.720715, 25.228371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061531, 34.527855, 24.650679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158840, 34.913414, 24.607386>,  <38.217224, 35.144749, 24.581409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158840, 34.913414, 24.607386>,  <38.061531, 34.527855, 24.650679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158840, 34.913414, 24.607386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303510, -0.181627, -0.935357,
		-0.921250, 0.194695, -0.336738,
		0.243270, 0.963901, -0.108232,
		38.231823, 35.202583, 24.574917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826824, 34.771049, 23.925833>,  <38.061531, 34.527855, 24.650679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826824, 34.771049, 23.925833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131641, 34.992424, 24.060291>,  <38.314533, 35.125248, 24.140966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131641, 34.992424, 24.060291>,  <37.826824, 34.771049, 23.925833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131641, 34.992424, 24.060291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483633, -0.141273, -0.863795,
		-0.430571, 0.820820, -0.375318,
		0.762042, 0.553441, 0.336148,
		38.360252, 35.158455, 24.161135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864216, 35.321507, 23.406736>,  <37.826824, 34.771049, 23.925833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864216, 35.321507, 23.406736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221443, 35.345177, 23.585138>,  <38.435780, 35.359379, 23.692179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221443, 35.345177, 23.585138>,  <37.864216, 35.321507, 23.406736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221443, 35.345177, 23.585138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439120, 0.101181, -0.892713,
		-0.097956, 0.993106, 0.064376,
		0.893072, 0.059178, 0.446004,
		38.489365, 35.362930, 23.718939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188679, 35.929974, 23.189325>,  <37.864216, 35.321507, 23.406736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188679, 35.929974, 23.189325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480366, 35.688679, 23.318535>,  <38.655380, 35.543903, 23.396061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480366, 35.688679, 23.318535>,  <38.188679, 35.929974, 23.189325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480366, 35.688679, 23.318535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530973, 0.201060, -0.823191,
		0.431630, 0.771805, 0.466919,
		0.729221, -0.603235, 0.323024,
		38.699131, 35.507710, 23.415442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713215, 36.169632, 22.861412>,  <38.188679, 35.929974, 23.189325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713215, 36.169632, 22.861412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890450, 35.840641, 23.004072>,  <38.996792, 35.643246, 23.089668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890450, 35.840641, 23.004072>,  <38.713215, 36.169632, 22.861412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890450, 35.840641, 23.004072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617553, -0.008356, -0.786485,
		0.649848, 0.568733, 0.504222,
		0.443086, -0.822480, 0.356653,
		39.023376, 35.593899, 23.111069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446815, 36.325165, 22.830624>,  <38.713215, 36.169632, 22.861412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446815, 36.325165, 22.830624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377178, 35.931477, 22.817974>,  <39.335396, 35.695263, 22.810385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377178, 35.931477, 22.817974>,  <39.446815, 36.325165, 22.830624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377178, 35.931477, 22.817974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449879, -0.050927, -0.891636,
		0.875957, -0.169452, 0.451647,
		-0.174091, -0.984222, -0.031623,
		39.324951, 35.636211, 22.808487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021240, 36.034958, 22.524939>,  <39.446815, 36.325165, 22.830624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021240, 36.034958, 22.524939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730343, 35.763302, 22.485153>,  <39.555805, 35.600307, 22.461281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730343, 35.763302, 22.485153>,  <40.021240, 36.034958, 22.524939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730343, 35.763302, 22.485153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115635, 0.021617, -0.993056,
		0.676572, -0.733692, 0.062811,
		-0.727240, -0.679138, -0.099466,
		39.512169, 35.559559, 22.455313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407661, 35.550125, 22.221128>,  <40.021240, 36.034958, 22.524939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407661, 35.550125, 22.221128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.027927, 35.461571, 22.131914>,  <39.800087, 35.408440, 22.078384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.027927, 35.461571, 22.131914>,  <40.407661, 35.550125, 22.221128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027927, 35.461571, 22.131914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241253, -0.058614, -0.968691,
		0.201378, -0.973424, 0.109054,
		-0.949339, -0.221383, -0.223038,
		39.743126, 35.395157, 22.065002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152054, 35.351360, 22.209375>,  <40.407661, 35.550125, 22.221128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152054, 35.351360, 22.209375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363419, 35.690872, 22.201893>,  <41.490238, 35.894581, 22.197403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363419, 35.690872, 22.201893>,  <41.152054, 35.351360, 22.209375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363419, 35.690872, 22.201893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006748, 0.017834, 0.999818,
		0.848964, -0.528438, 0.003696,
		0.528408, 0.848784, -0.018706,
		41.521942, 35.945507, 22.196281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487152, 35.322346, 22.898907>,  <41.152054, 35.351360, 22.209375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487152, 35.322346, 22.898907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594826, 35.684174, 22.766672>,  <41.659431, 35.901272, 22.687332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594826, 35.684174, 22.766672>,  <41.487152, 35.322346, 22.898907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594826, 35.684174, 22.766672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093617, 0.317054, 0.943776,
		0.958527, -0.285002, 0.000664,
		0.269188, 0.904572, -0.330586,
		41.675583, 35.955544, 22.667496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052723, 35.466625, 23.233244>,  <41.487152, 35.322346, 22.898907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052723, 35.466625, 23.233244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.903923, 35.823090, 23.129356>,  <41.814644, 36.036968, 23.067024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.903923, 35.823090, 23.129356>,  <42.052723, 35.466625, 23.233244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903923, 35.823090, 23.129356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012311, 0.275036, 0.961355,
		0.928150, 0.360823, -0.091343,
		-0.372002, 0.891157, -0.259717,
		41.792324, 36.090435, 23.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350441, 35.981190, 23.719315>,  <42.052723, 35.466625, 23.233244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350441, 35.981190, 23.719315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058807, 36.188583, 23.540600>,  <41.883827, 36.313019, 23.433371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058807, 36.188583, 23.540600>,  <42.350441, 35.981190, 23.719315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058807, 36.188583, 23.540600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124962, 0.540980, 0.831700,
		0.672924, 0.662208, -0.329628,
		-0.729080, 0.518480, -0.446789,
		41.840084, 36.344128, 23.406563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434120, 36.674885, 23.892639>,  <42.350441, 35.981190, 23.719315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434120, 36.674885, 23.892639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.049843, 36.662460, 23.782295>,  <41.819275, 36.655006, 23.716089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.049843, 36.662460, 23.782295>,  <42.434120, 36.674885, 23.892639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049843, 36.662460, 23.782295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250179, 0.527532, 0.811862,
		0.120305, 0.848967, -0.514570,
		-0.960696, -0.031064, -0.275858,
		41.761635, 36.653141, 23.699537>
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
