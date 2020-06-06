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
	<24.070292, 34.896702, 35.143291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356392, 34.819874, 34.874508>,  <24.528051, 34.773777, 34.713238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356392, 34.819874, 34.874508>,  <24.070292, 34.896702, 35.143291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356392, 34.819874, 34.874508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675416, -0.057025, 0.735229,
		-0.179535, -0.979723, 0.088941,
		0.715249, -0.192072, -0.671958,
		24.570967, 34.762253, 34.672920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401209, 34.382561, 35.416862>,  <24.070292, 34.896702, 35.143291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401209, 34.382561, 35.416862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652248, 34.580692, 35.176605>,  <24.802872, 34.699570, 35.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652248, 34.580692, 35.176605>,  <24.401209, 34.382561, 35.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652248, 34.580692, 35.176605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769569, -0.277925, 0.574910,
		0.117834, -0.823049, -0.555612,
		0.627598, 0.495326, -0.600644,
		24.840528, 34.729290, 34.996410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101543, 34.004887, 35.490089>,  <24.401209, 34.382561, 35.416862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101543, 34.004887, 35.490089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189144, 34.378330, 35.376656>,  <25.241705, 34.602394, 35.308594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189144, 34.378330, 35.376656>,  <25.101543, 34.004887, 35.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189144, 34.378330, 35.376656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820524, -0.018943, 0.571298,
		0.527995, -0.357804, -0.770193,
		0.219002, 0.933605, -0.283585,
		25.254845, 34.658413, 35.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911341, 34.037838, 35.331642>,  <25.101543, 34.004887, 35.490089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911341, 34.037838, 35.331642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739891, 34.384487, 35.433811>,  <25.637020, 34.592476, 35.495113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739891, 34.384487, 35.433811>,  <25.911341, 34.037838, 35.331642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739891, 34.384487, 35.433811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821174, 0.255792, 0.510141,
		0.376767, 0.428403, -0.821290,
		-0.428626, 0.866626, 0.255419,
		25.611303, 34.644474, 35.510437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277283, 34.605026, 35.053032>,  <25.911341, 34.037838, 35.331642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277283, 34.605026, 35.053032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110317, 34.752815, 35.385120>,  <26.010138, 34.841488, 35.584373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110317, 34.752815, 35.385120>,  <26.277283, 34.605026, 35.053032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110317, 34.752815, 35.385120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898287, 0.305794, 0.315549,
		-0.137291, 0.877487, -0.459530,
		-0.417412, 0.369468, 0.830217,
		25.985094, 34.863655, 35.634186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436178, 35.416065, 35.179520>,  <26.277283, 34.605026, 35.053032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436178, 35.416065, 35.179520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362886, 35.188564, 35.500256>,  <26.318911, 35.052063, 35.692699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362886, 35.188564, 35.500256>,  <26.436178, 35.416065, 35.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362886, 35.188564, 35.500256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850506, 0.317343, 0.419443,
		-0.493017, 0.758828, 0.425576,
		-0.183231, -0.568748, 0.801843,
		26.307917, 35.017941, 35.740810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299652, 35.517845, 35.872578>,  <26.436178, 35.416065, 35.179520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299652, 35.517845, 35.872578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512993, 35.180336, 35.896549>,  <26.640997, 34.977833, 35.910931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512993, 35.180336, 35.896549>,  <26.299652, 35.517845, 35.872578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512993, 35.180336, 35.896549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739131, 0.499317, 0.452071,
		-0.411365, -0.196818, 0.889967,
		0.533351, -0.843769, 0.059927,
		26.672998, 34.927204, 35.914528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495930, 35.436005, 36.534817>,  <26.299652, 35.517845, 35.872578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495930, 35.436005, 36.534817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761951, 35.277229, 36.281788>,  <26.921564, 35.181965, 36.129971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761951, 35.277229, 36.281788>,  <26.495930, 35.436005, 36.534817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761951, 35.277229, 36.281788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673367, 0.685009, 0.278099,
		0.322927, -0.610902, 0.722853,
		0.665052, -0.396940, -0.632570,
		26.961468, 35.158146, 36.092018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018326, 35.520451, 36.980549>,  <26.495930, 35.436005, 36.534817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018326, 35.520451, 36.980549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181606, 35.479862, 36.617653>,  <27.279575, 35.455509, 36.399918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181606, 35.479862, 36.617653>,  <27.018326, 35.520451, 36.980549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181606, 35.479862, 36.617653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545561, 0.823928, 0.153318,
		0.731940, -0.557536, 0.391686,
		0.408201, -0.101469, -0.907235,
		27.304066, 35.449421, 36.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804958, 35.539963, 36.989941>,  <27.018326, 35.520451, 36.980549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804958, 35.539963, 36.989941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735847, 35.627247, 36.605747>,  <27.694382, 35.679615, 36.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735847, 35.627247, 36.605747>,  <27.804958, 35.539963, 36.989941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735847, 35.627247, 36.605747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725033, 0.688226, 0.025933,
		0.666690, -0.691903, -0.277117,
		-0.172776, 0.218208, -0.960486,
		27.684015, 35.692711, 36.317600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494343, 35.468445, 36.485958>,  <27.804958, 35.539963, 36.989941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494343, 35.468445, 36.485958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230263, 35.715221, 36.314602>,  <28.071815, 35.863289, 36.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230263, 35.715221, 36.314602>,  <28.494343, 35.468445, 36.485958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230263, 35.715221, 36.314602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720504, 0.681310, -0.129194,
		0.212160, -0.393950, -0.894311,
		-0.660199, 0.616945, -0.428389,
		28.032204, 35.900303, 36.186085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845219, 35.706070, 36.031921>,  <28.494343, 35.468445, 36.485958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845219, 35.706070, 36.031921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563625, 35.981895, 36.099934>,  <28.394670, 36.147392, 36.140739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563625, 35.981895, 36.099934>,  <28.845219, 35.706070, 36.031921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563625, 35.981895, 36.099934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658649, 0.723440, -0.206924,
		-0.265692, -0.033682, -0.963470,
		-0.703982, 0.689566, 0.170027,
		28.352430, 36.188766, 36.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691185, 36.162281, 35.420059>,  <28.845219, 35.706070, 36.031921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691185, 36.162281, 35.420059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610350, 36.369431, 35.752556>,  <28.561848, 36.493721, 35.952053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610350, 36.369431, 35.752556>,  <28.691185, 36.162281, 35.420059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610350, 36.369431, 35.752556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667977, 0.693586, -0.269715,
		-0.716218, 0.500746, -0.486092,
		-0.202088, 0.517872, 0.831245,
		28.549723, 36.524792, 36.001930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433079, 36.848618, 35.277275>,  <28.691185, 36.162281, 35.420059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433079, 36.848618, 35.277275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628389, 36.829216, 35.625809>,  <28.745577, 36.817574, 35.834930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628389, 36.829216, 35.625809>,  <28.433079, 36.848618, 35.277275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628389, 36.829216, 35.625809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610927, 0.731988, -0.301599,
		-0.623179, 0.679588, 0.387049,
		0.488279, -0.048508, 0.871339,
		28.774874, 36.814663, 35.887211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232656, 37.460476, 35.791477>,  <28.433079, 36.848618, 35.277275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232656, 37.460476, 35.791477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605822, 37.334606, 35.721447>,  <28.829721, 37.259087, 35.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605822, 37.334606, 35.721447>,  <28.232656, 37.460476, 35.791477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605822, 37.334606, 35.721447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146070, 0.775081, -0.614747,
		0.329140, 0.547934, 0.769049,
		0.932915, -0.314672, -0.175073,
		28.885696, 37.240204, 35.668926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514467, 37.061050, 35.891937>,  <28.232656, 37.460476, 35.791477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514467, 37.061050, 35.891937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773428, 36.757057, 35.914906>,  <27.928804, 36.574661, 35.928688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773428, 36.757057, 35.914906>,  <27.514467, 37.061050, 35.891937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773428, 36.757057, 35.914906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754287, -0.649698, -0.094568,
		0.109177, 0.017912, -0.993861,
		0.647404, -0.759981, 0.057421,
		27.967649, 36.529064, 35.932133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376421, 36.595619, 35.357327>,  <27.514467, 37.061050, 35.891937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376421, 36.595619, 35.357327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578451, 36.365551, 35.614723>,  <27.699669, 36.227512, 35.769161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578451, 36.365551, 35.614723>,  <27.376421, 36.595619, 35.357327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578451, 36.365551, 35.614723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661812, -0.736672, -0.138997,
		0.553987, -0.355665, -0.752729,
		0.505078, -0.575167, 0.643490,
		27.729975, 36.193001, 35.807770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391520, 35.935688, 35.080154>,  <27.376421, 36.595619, 35.357327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391520, 35.935688, 35.080154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479593, 35.857025, 35.462326>,  <27.532438, 35.809830, 35.691628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479593, 35.857025, 35.462326>,  <27.391520, 35.935688, 35.080154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479593, 35.857025, 35.462326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584716, -0.810603, -0.032091,
		0.780785, -0.551589, -0.293470,
		0.220186, -0.196653, 0.955430,
		27.545649, 35.798031, 35.748955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811033, 35.382988, 35.088474>,  <27.391520, 35.935688, 35.080154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811033, 35.382988, 35.088474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640558, 35.393017, 35.450188>,  <27.538273, 35.399036, 35.667217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640558, 35.393017, 35.450188>,  <27.811033, 35.382988, 35.088474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640558, 35.393017, 35.450188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234653, -0.968466, -0.083734,
		0.873672, -0.247880, 0.418632,
		-0.426187, 0.025077, 0.904287,
		27.512703, 35.400539, 35.721474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989786, 34.805744, 35.492908>,  <27.811033, 35.382988, 35.088474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989786, 34.805744, 35.492908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664696, 34.898327, 35.706787>,  <27.469643, 34.953876, 35.835114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664696, 34.898327, 35.706787>,  <27.989786, 34.805744, 35.492908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664696, 34.898327, 35.706787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241577, -0.968973, 0.052261,
		0.530207, -0.086697, 0.843424,
		-0.812724, 0.231461, 0.534701,
		27.420879, 34.967766, 35.867199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933916, 34.374855, 36.124676>,  <27.989786, 34.805744, 35.492908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933916, 34.374855, 36.124676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570761, 34.509403, 36.024597>,  <27.352867, 34.590134, 35.964550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570761, 34.509403, 36.024597>,  <27.933916, 34.374855, 36.124676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570761, 34.509403, 36.024597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311193, -0.940650, -0.135409,
		-0.280892, -0.045077, 0.958680,
		-0.907887, 0.336370, -0.250193,
		27.298395, 34.610313, 35.949539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040390, 33.987350, 36.842564>,  <27.933916, 34.374855, 36.124676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040390, 33.987350, 36.842564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317003, 33.701973, 36.887783>,  <28.482971, 33.530746, 36.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317003, 33.701973, 36.887783>,  <28.040390, 33.987350, 36.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317003, 33.701973, 36.887783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631456, 0.673072, 0.385017,
		-0.350780, -0.194864, 0.915959,
		0.691532, -0.713444, 0.113052,
		28.524464, 33.487938, 36.921700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356838, 34.137581, 37.417774>,  <28.040390, 33.987350, 36.842564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356838, 34.137581, 37.417774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654257, 33.923882, 37.256920>,  <28.832708, 33.795662, 37.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654257, 33.923882, 37.256920>,  <28.356838, 34.137581, 37.417774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654257, 33.923882, 37.256920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667649, 0.626581, 0.402045,
		0.037176, -0.567424, 0.822586,
		0.743547, -0.534253, -0.402134,
		28.877321, 33.763607, 37.136280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380383, 34.688583, 36.968220>,  <28.356838, 34.137581, 37.417774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380383, 34.688583, 36.968220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556337, 34.346977, 36.857109>,  <28.661911, 34.142014, 36.790443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556337, 34.346977, 36.857109>,  <28.380383, 34.688583, 36.968220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556337, 34.346977, 36.857109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557341, -0.017075, -0.830108,
		0.704181, 0.519970, -0.483488,
		0.439887, -0.854014, -0.277777,
		28.688303, 34.090775, 36.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775307, 34.721237, 36.304008>,  <28.380383, 34.688583, 36.968220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775307, 34.721237, 36.304008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605341, 34.372604, 36.401821>,  <28.503361, 34.163425, 36.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605341, 34.372604, 36.401821>,  <28.775307, 34.721237, 36.304008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605341, 34.372604, 36.401821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494976, -0.002467, -0.868903,
		0.757923, -0.490245, -0.430364,
		-0.424914, -0.871581, 0.244529,
		28.477867, 34.111130, 36.475182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511156, 34.553741, 36.418640>,  <28.775307, 34.721237, 36.304008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511156, 34.553741, 36.418640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787045, 34.587280, 36.706322>,  <29.952578, 34.607403, 36.878929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787045, 34.587280, 36.706322>,  <29.511156, 34.553741, 36.418640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787045, 34.587280, 36.706322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253069, 0.902714, -0.347941,
		-0.678410, 0.421991, 0.601402,
		0.689722, 0.083850, 0.719203,
		29.993961, 34.612434, 36.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516699, 35.252792, 36.582092>,  <29.511156, 34.553741, 36.418640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516699, 35.252792, 36.582092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883743, 35.110714, 36.653446>,  <30.103970, 35.025467, 36.696259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883743, 35.110714, 36.653446>,  <29.516699, 35.252792, 36.582092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883743, 35.110714, 36.653446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396539, 0.848885, -0.349502,
		-0.027286, 0.391444, 0.919797,
		0.917612, -0.355199, 0.178385,
		30.159027, 35.004154, 36.706963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964981, 35.771931, 36.824150>,  <29.516699, 35.252792, 36.582092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964981, 35.771931, 36.824150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213451, 35.518921, 36.639084>,  <30.362534, 35.367115, 36.528046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213451, 35.518921, 36.639084>,  <29.964981, 35.771931, 36.824150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213451, 35.518921, 36.639084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453026, 0.771567, -0.446601,
		0.639462, 0.067818, 0.765826,
		0.621173, -0.632523, -0.462664,
		30.399803, 35.329163, 36.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554773, 36.078415, 37.070801>,  <29.964981, 35.771931, 36.824150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554773, 36.078415, 37.070801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592974, 35.853180, 36.742455>,  <30.615894, 35.718040, 36.545448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592974, 35.853180, 36.742455>,  <30.554773, 36.078415, 37.070801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592974, 35.853180, 36.742455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278716, 0.806772, -0.520995,
		0.955613, -0.179031, 0.233989,
		0.095502, -0.563087, -0.820861,
		30.621624, 35.684254, 36.496197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161697, 36.179813, 36.727997>,  <30.554773, 36.078415, 37.070801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161697, 36.179813, 36.727997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965773, 36.054188, 36.402679>,  <30.848217, 35.978813, 36.207489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965773, 36.054188, 36.402679>,  <31.161697, 36.179813, 36.727997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965773, 36.054188, 36.402679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377699, 0.764334, -0.522626,
		0.785768, -0.563168, -0.255756,
		-0.489809, -0.314064, -0.813297,
		30.818829, 35.959969, 36.158691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615959, 36.043808, 36.007584>,  <31.161697, 36.179813, 36.727997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615959, 36.043808, 36.007584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235708, 36.160728, 35.965889>,  <31.007557, 36.230881, 35.940872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235708, 36.160728, 35.965889>,  <31.615959, 36.043808, 36.007584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235708, 36.160728, 35.965889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309849, 0.875371, -0.371106,
		-0.017231, -0.385081, -0.922722,
		-0.950629, 0.292299, -0.104234,
		30.950520, 36.248417, 35.934620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790459, 36.647713, 35.837967>,  <31.615959, 36.043808, 36.007584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790459, 36.647713, 35.837967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414608, 36.613083, 35.705540>,  <31.189098, 36.592304, 35.626083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414608, 36.613083, 35.705540>,  <31.790459, 36.647713, 35.837967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414608, 36.613083, 35.705540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107041, 0.844566, -0.524643,
		0.325030, -0.528406, -0.784310,
		-0.939626, -0.086571, -0.331071,
		31.132721, 36.587112, 35.606220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769577, 36.586456, 35.102856>,  <31.790459, 36.647713, 35.837967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769577, 36.586456, 35.102856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411108, 36.728218, 35.209641>,  <31.196026, 36.813274, 35.273712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411108, 36.728218, 35.209641>,  <31.769577, 36.586456, 35.102856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411108, 36.728218, 35.209641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158013, 0.817143, -0.554355,
		-0.414616, -0.454614, -0.788302,
		-0.896172, 0.354407, 0.266966,
		31.142256, 36.834541, 35.289730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438593, 36.718639, 34.481636>,  <31.769577, 36.586456, 35.102856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438593, 36.718639, 34.481636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278803, 36.954189, 34.762676>,  <31.182928, 37.095520, 34.931301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278803, 36.954189, 34.762676>,  <31.438593, 36.718639, 34.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278803, 36.954189, 34.762676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209206, 0.804743, -0.555538,
		-0.892554, -0.074936, -0.444671,
		-0.399475, 0.588875, 0.702599,
		31.158960, 37.130852, 34.973457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577982, 37.142925, 33.879589>,  <31.438593, 36.718639, 34.481636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577982, 37.142925, 33.879589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804192, 37.471561, 33.850830>,  <31.939917, 37.668743, 33.833576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804192, 37.471561, 33.850830>,  <31.577982, 37.142925, 33.879589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804192, 37.471561, 33.850830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791351, 0.516018, -0.327854,
		-0.232264, 0.242303, 0.941989,
		0.565524, 0.821593, -0.071894,
		31.973848, 37.718040, 33.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238710, 37.657082, 34.200943>,  <31.577982, 37.142925, 33.879589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238710, 37.657082, 34.200943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461336, 37.871418, 33.946976>,  <31.594912, 38.000019, 33.794598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461336, 37.871418, 33.946976>,  <31.238710, 37.657082, 34.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461336, 37.871418, 33.946976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825738, 0.441056, -0.351606,
		0.091628, 0.719963, 0.687937,
		0.556562, 0.535838, -0.634914,
		31.628305, 38.032169, 33.756500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114157, 38.363571, 34.337376>,  <31.238710, 37.657082, 34.200943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114157, 38.363571, 34.337376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275547, 38.374058, 33.971531>,  <31.372381, 38.380348, 33.752022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275547, 38.374058, 33.971531>,  <31.114157, 38.363571, 34.337376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275547, 38.374058, 33.971531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701661, 0.650428, -0.290888,
		0.587264, 0.759116, 0.280828,
		0.403475, 0.026218, -0.914615,
		31.396589, 38.381924, 33.697147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436581, 38.269691, 35.047604>,  <31.114157, 38.363571, 34.337376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436581, 38.269691, 35.047604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075224, 38.136982, 34.938931>,  <30.858410, 38.057358, 34.873726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075224, 38.136982, 34.938931>,  <31.436581, 38.269691, 35.047604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075224, 38.136982, 34.938931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178484, -0.866993, 0.465260,
		-0.389911, 0.371819, 0.842449,
		-0.903390, -0.331773, -0.271686,
		30.804207, 38.037449, 34.857426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092842, 38.089493, 35.606087>,  <31.436581, 38.269691, 35.047604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092842, 38.089493, 35.606087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944180, 37.873924, 35.303711>,  <30.854982, 37.744583, 35.122288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944180, 37.873924, 35.303711>,  <31.092842, 38.089493, 35.606087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944180, 37.873924, 35.303711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016336, -0.817931, 0.575084,
		-0.928227, 0.201384, 0.312791,
		-0.371654, -0.538919, -0.755936,
		30.832684, 37.712250, 35.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547962, 37.792110, 35.905704>,  <31.092842, 38.089493, 35.606087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547962, 37.792110, 35.905704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696678, 37.588718, 35.595036>,  <30.785908, 37.466682, 35.408634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696678, 37.588718, 35.595036>,  <30.547962, 37.792110, 35.905704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696678, 37.588718, 35.595036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294179, -0.858062, 0.420939,
		-0.880474, 0.071982, -0.468599,
		0.371786, -0.508477, -0.776676,
		30.808216, 37.436176, 35.362034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012934, 37.301689, 35.689018>,  <30.547962, 37.792110, 35.905704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012934, 37.301689, 35.689018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356407, 37.158737, 35.542080>,  <30.562490, 37.072968, 35.453918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356407, 37.158737, 35.542080>,  <30.012934, 37.301689, 35.689018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356407, 37.158737, 35.542080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273672, -0.925754, 0.260926,
		-0.433322, -0.123521, -0.892734,
		0.858683, -0.357381, -0.367345,
		30.614012, 37.051521, 35.431877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726711, 36.640007, 35.459133>,  <30.012934, 37.301689, 35.689018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726711, 36.640007, 35.459133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126501, 36.628929, 35.465851>,  <30.366375, 36.622284, 35.469883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126501, 36.628929, 35.465851>,  <29.726711, 36.640007, 35.459133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126501, 36.628929, 35.465851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032166, -0.909338, 0.414813,
		0.003784, -0.415136, -0.909751,
		0.999475, -0.027693, 0.016794,
		30.426344, 36.620621, 35.470890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910297, 35.960278, 35.266293>,  <29.726711, 36.640007, 35.459133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910297, 35.960278, 35.266293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231813, 36.100029, 35.458900>,  <30.424723, 36.183880, 35.574463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231813, 36.100029, 35.458900>,  <29.910297, 35.960278, 35.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231813, 36.100029, 35.458900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055727, -0.850045, 0.523754,
		0.592299, -0.394154, -0.702727,
		0.803789, 0.349379, 0.481516,
		30.472950, 36.204842, 35.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175186, 35.319561, 35.332253>,  <29.910297, 35.960278, 35.266293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175186, 35.319561, 35.332253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396538, 35.537346, 35.584389>,  <30.529348, 35.668018, 35.735672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396538, 35.537346, 35.584389>,  <30.175186, 35.319561, 35.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396538, 35.537346, 35.584389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013610, -0.762588, 0.646741,
		0.832819, -0.349313, -0.429410,
		0.553378, 0.544462, 0.630344,
		30.562551, 35.700684, 35.773491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771526, 34.883877, 35.443577>,  <30.175186, 35.319561, 35.332253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771526, 34.883877, 35.443577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730968, 35.127747, 35.758034>,  <30.706635, 35.274067, 35.946709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730968, 35.127747, 35.758034>,  <30.771526, 34.883877, 35.443577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730968, 35.127747, 35.758034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112858, -0.792161, 0.599787,
		0.988424, -0.027908, 0.149126,
		-0.101393, 0.609674, 0.786140,
		30.700550, 35.310650, 35.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334776, 34.689045, 35.980385>,  <30.771526, 34.883877, 35.443577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334776, 34.689045, 35.980385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036545, 34.874664, 36.171707>,  <30.857605, 34.986034, 36.286499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036545, 34.874664, 36.171707>,  <31.334776, 34.689045, 35.980385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036545, 34.874664, 36.171707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047887, -0.753171, 0.656079,
		0.664695, 0.466254, 0.583770,
		-0.745579, 0.464047, 0.478301,
		30.812872, 35.013878, 36.315197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278788, 34.327435, 36.506062>,  <31.334776, 34.689045, 35.980385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278788, 34.327435, 36.506062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941267, 34.533615, 36.565811>,  <30.738754, 34.657322, 36.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941267, 34.533615, 36.565811>,  <31.278788, 34.327435, 36.506062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941267, 34.533615, 36.565811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259097, -0.635033, 0.727738,
		0.469969, 0.575364, 0.669392,
		-0.843800, 0.515452, 0.149371,
		30.688128, 34.688251, 36.610622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199020, 34.431927, 37.288925>,  <31.278788, 34.327435, 36.506062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199020, 34.431927, 37.288925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837999, 34.426231, 37.116791>,  <30.621386, 34.422813, 37.013508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837999, 34.426231, 37.116791>,  <31.199020, 34.431927, 37.288925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837999, 34.426231, 37.116791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344810, -0.574690, 0.742185,
		-0.257880, 0.818247, 0.513779,
		-0.902554, -0.014239, -0.430341,
		30.567232, 34.421959, 36.987690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535603, 34.276291, 37.976040>,  <31.199020, 34.431927, 37.288925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535603, 34.276291, 37.976040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488710, 33.879848, 38.001247>,  <31.460575, 33.641983, 38.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488710, 33.879848, 38.001247>,  <31.535603, 34.276291, 37.976040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488710, 33.879848, 38.001247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341004, -0.019431, -0.939861,
		0.932724, -0.131669, -0.335693,
		-0.117228, -0.991103, 0.063023,
		31.453543, 33.582516, 38.020153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997818, 33.836311, 37.389542>,  <31.535603, 34.276291, 37.976040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997818, 33.836311, 37.389542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682791, 33.636723, 37.534187>,  <31.493774, 33.516968, 37.620975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682791, 33.636723, 37.534187>,  <31.997818, 33.836311, 37.389542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682791, 33.636723, 37.534187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333369, -0.148542, -0.931021,
		0.518269, -0.853792, -0.049356,
		-0.787567, -0.498973, 0.361613,
		31.446520, 33.487030, 37.642670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823742, 33.524433, 36.849628>,  <31.997818, 33.836311, 37.389542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823742, 33.524433, 36.849628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508623, 33.417942, 37.071800>,  <31.319551, 33.354046, 37.205105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508623, 33.417942, 37.071800>,  <31.823742, 33.524433, 36.849628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508623, 33.417942, 37.071800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566335, -0.041449, -0.823132,
		0.242166, -0.963017, -0.118123,
		-0.787794, -0.266232, 0.555428,
		31.272285, 33.338074, 37.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545723, 32.864632, 36.852737>,  <31.823742, 33.524433, 36.849628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545723, 32.864632, 36.852737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256737, 33.132267, 36.922443>,  <31.083345, 33.292847, 36.964268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256737, 33.132267, 36.922443>,  <31.545723, 32.864632, 36.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256737, 33.132267, 36.922443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432172, -0.240268, -0.869195,
		-0.539694, -0.703277, 0.462745,
		-0.722467, 0.669085, 0.174265,
		31.039997, 33.332993, 36.974724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200954, 32.736580, 36.822140>,  <31.545723, 32.864632, 36.852737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200954, 32.736580, 36.822140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924810, 32.546635, 36.603817>,  <31.759123, 32.432667, 36.472824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924810, 32.546635, 36.603817>,  <32.200954, 32.736580, 36.822140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924810, 32.546635, 36.603817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235209, -0.860774, 0.451381,
		-0.684162, 0.183237, 0.705936,
		-0.690361, -0.474860, -0.545810,
		31.717703, 32.404175, 36.440075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721123, 32.224514, 37.248684>,  <32.200954, 32.736580, 36.822140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721123, 32.224514, 37.248684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770548, 32.094425, 36.873672>,  <31.800203, 32.016373, 36.648666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770548, 32.094425, 36.873672>,  <31.721123, 32.224514, 37.248684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770548, 32.094425, 36.873672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179335, -0.921896, 0.343432,
		-0.975997, -0.210568, -0.055590,
		0.123564, -0.325220, -0.937531,
		31.807617, 31.996859, 36.592415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344927, 31.518045, 37.319546>,  <31.721123, 32.224514, 37.248684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344927, 31.518045, 37.319546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338959, 31.132000, 37.424107>,  <31.335377, 30.900373, 37.486843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338959, 31.132000, 37.424107>,  <31.344927, 31.518045, 37.319546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338959, 31.132000, 37.424107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025707, -0.260976, -0.965003,
		0.999558, -0.021119, -0.020916,
		-0.014921, -0.965114, 0.261404,
		31.334482, 30.842466, 37.502529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704142, 31.252516, 36.822678>,  <31.344927, 31.518045, 37.319546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704142, 31.252516, 36.822678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496380, 30.945307, 36.972538>,  <31.371723, 30.760983, 37.062454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496380, 30.945307, 36.972538>,  <31.704142, 31.252516, 36.822678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496380, 30.945307, 36.972538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049176, -0.410838, -0.910381,
		0.853113, -0.491279, 0.175623,
		-0.519404, -0.768021, 0.374650,
		31.340559, 30.714901, 37.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859175, 30.640814, 36.557602>,  <31.704142, 31.252516, 36.822678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859175, 30.640814, 36.557602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488049, 30.536800, 36.664589>,  <31.265373, 30.474392, 36.728783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488049, 30.536800, 36.664589>,  <31.859175, 30.640814, 36.557602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488049, 30.536800, 36.664589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114933, -0.482860, -0.868123,
		0.354891, -0.836199, 0.418119,
		-0.927816, -0.260033, 0.267469,
		31.209703, 30.458790, 36.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828844, 29.970190, 36.282825>,  <31.859175, 30.640814, 36.557602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828844, 29.970190, 36.282825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475563, 30.156744, 36.302593>,  <31.263596, 30.268677, 36.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475563, 30.156744, 36.302593>,  <31.828844, 29.970190, 36.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475563, 30.156744, 36.302593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159095, -0.198805, -0.967040,
		-0.441186, -0.861953, 0.249784,
		-0.883200, 0.466384, 0.049422,
		31.210604, 30.296659, 36.317421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194477, 29.519800, 36.169968>,  <31.828844, 29.970190, 36.282825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194477, 29.519800, 36.169968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164339, 29.894939, 36.034462>,  <31.146255, 30.120024, 35.953159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164339, 29.894939, 36.034462>,  <31.194477, 29.519800, 36.169968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164339, 29.894939, 36.034462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157975, -0.324215, -0.932700,
		-0.984564, -0.123792, -0.123729,
		-0.075346, 0.937849, -0.338766,
		31.141735, 30.176294, 35.932831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708876, 29.534052, 35.611824>,  <31.194477, 29.519800, 36.169968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708876, 29.534052, 35.611824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968796, 29.837318, 35.590130>,  <31.124748, 30.019279, 35.577114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968796, 29.837318, 35.590130>,  <30.708876, 29.534052, 35.611824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968796, 29.837318, 35.590130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180485, -0.223216, -0.957914,
		-0.738367, 0.612663, -0.281884,
		0.649799, 0.758168, -0.054240,
		31.163736, 30.064770, 35.573856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567007, 29.820715, 35.027042>,  <30.708876, 29.534052, 35.611824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567007, 29.820715, 35.027042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940914, 29.925615, 35.122906>,  <31.165258, 29.988556, 35.180424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940914, 29.925615, 35.122906>,  <30.567007, 29.820715, 35.027042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940914, 29.925615, 35.122906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249794, -0.005487, -0.968284,
		-0.252618, 0.964984, -0.070638,
		0.934766, 0.262251, 0.239661,
		31.221344, 30.004290, 35.194805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789618, 30.374283, 34.616261>,  <30.567007, 29.820715, 35.027042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789618, 30.374283, 34.616261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113316, 30.180511, 34.749195>,  <31.307535, 30.064249, 34.828957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113316, 30.180511, 34.749195>,  <30.789618, 30.374283, 34.616261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113316, 30.180511, 34.749195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373271, -0.012842, -0.927634,
		0.453641, 0.874736, 0.170431,
		0.809246, -0.484429, 0.332339,
		31.356089, 30.035183, 34.848896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172880, 30.325865, 34.049740>,  <30.789618, 30.374283, 34.616261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172880, 30.325865, 34.049740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399328, 30.102091, 34.291912>,  <31.535196, 29.967827, 34.437214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399328, 30.102091, 34.291912>,  <31.172880, 30.325865, 34.049740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399328, 30.102091, 34.291912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608791, -0.211437, -0.764636,
		0.555772, 0.801455, 0.220879,
		0.566119, -0.559433, 0.605429,
		31.569164, 29.934261, 34.473541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988956, 30.427618, 34.120159>,  <31.172880, 30.325865, 34.049740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988956, 30.427618, 34.120159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903532, 30.046074, 34.204578>,  <31.852278, 29.817146, 34.255230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903532, 30.046074, 34.204578>,  <31.988956, 30.427618, 34.120159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903532, 30.046074, 34.204578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502556, -0.292520, -0.813554,
		0.837753, -0.067678, 0.541839,
		-0.213559, -0.953861, 0.211048,
		31.839464, 29.759916, 34.267891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632633, 30.172548, 34.188896>,  <31.988956, 30.427618, 34.120159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632633, 30.172548, 34.188896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386887, 29.874826, 34.084164>,  <32.239437, 29.696194, 34.021324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386887, 29.874826, 34.084164>,  <32.632633, 30.172548, 34.188896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386887, 29.874826, 34.084164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669091, -0.315595, -0.672842,
		0.418168, -0.588564, 0.691901,
		-0.614371, -0.744307, -0.261831,
		32.202576, 29.651535, 34.005615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960934, 29.557934, 34.156460>,  <32.632633, 30.172548, 34.188896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960934, 29.557934, 34.156460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666794, 29.575266, 33.885941>,  <32.490311, 29.585665, 33.723629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666794, 29.575266, 33.885941>,  <32.960934, 29.557934, 34.156460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666794, 29.575266, 33.885941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674762, -0.045803, -0.736613,
		-0.062902, -0.998010, 0.004437,
		-0.735350, 0.043340, -0.676300,
		32.446190, 29.588266, 33.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127495, 29.052086, 33.742443>,  <32.960934, 29.557934, 34.156460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127495, 29.052086, 33.742443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932156, 29.351931, 33.563736>,  <32.814953, 29.531837, 33.456512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932156, 29.351931, 33.563736>,  <33.127495, 29.052086, 33.742443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932156, 29.351931, 33.563736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634719, -0.046232, -0.771360,
		-0.598876, -0.660260, -0.453216,
		-0.488344, 0.749613, -0.446766,
		32.785652, 29.576815, 33.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857807, 28.803619, 33.120506>,  <33.127495, 29.052086, 33.742443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857807, 28.803619, 33.120506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965210, 29.188931, 33.120094>,  <33.029652, 29.420116, 33.119846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965210, 29.188931, 33.120094>,  <32.857807, 28.803619, 33.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965210, 29.188931, 33.120094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510998, -0.143344, -0.847546,
		-0.816569, 0.227048, -0.530721,
		0.268509, 0.963277, -0.001029,
		33.045761, 29.477913, 33.119785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916424, 29.000561, 32.445869>,  <32.857807, 28.803619, 33.120506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916424, 29.000561, 32.445869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120857, 29.292255, 32.627865>,  <33.243515, 29.467272, 32.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120857, 29.292255, 32.627865>,  <32.916424, 29.000561, 32.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120857, 29.292255, 32.627865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669258, -0.005465, -0.743010,
		-0.539343, 0.684241, -0.490840,
		0.511079, 0.729236, 0.454987,
		33.274181, 29.511026, 32.764362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035946, 29.555981, 31.908377>,  <32.916424, 29.000561, 32.445869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035946, 29.555981, 31.908377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304245, 29.646484, 32.190910>,  <33.465225, 29.700787, 32.360432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304245, 29.646484, 32.190910>,  <33.035946, 29.555981, 31.908377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304245, 29.646484, 32.190910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710219, 0.078531, -0.699587,
		-0.213756, 0.970897, -0.108018,
		0.670743, 0.226257, 0.706336,
		33.505466, 29.714361, 32.402813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392315, 30.080290, 31.618309>,  <33.035946, 29.555981, 31.908377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392315, 30.080290, 31.618309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633728, 29.957052, 31.912472>,  <33.778576, 29.883110, 32.088970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633728, 29.957052, 31.912472>,  <33.392315, 30.080290, 31.618309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633728, 29.957052, 31.912472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796472, 0.190005, -0.574047,
		0.037129, 0.932189, 0.360062,
		0.603534, -0.308093, 0.735408,
		33.814789, 29.864624, 32.133095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985657, 30.547993, 31.684547>,  <33.392315, 30.080290, 31.618309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985657, 30.547993, 31.684547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126316, 30.212517, 31.850895>,  <34.210712, 30.011230, 31.950703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126316, 30.212517, 31.850895>,  <33.985657, 30.547993, 31.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126316, 30.212517, 31.850895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844418, 0.092404, -0.527655,
		0.404111, 0.536714, 0.740697,
		0.351644, -0.838689, 0.415869,
		34.231808, 29.960911, 31.975657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694954, 30.682560, 31.986464>,  <33.985657, 30.547993, 31.684547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694954, 30.682560, 31.986464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637218, 30.291542, 31.925051>,  <34.602577, 30.056931, 31.888203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637218, 30.291542, 31.925051>,  <34.694954, 30.682560, 31.986464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637218, 30.291542, 31.925051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818737, -0.030843, -0.573340,
		0.555731, -0.208456, 0.804804,
		-0.144339, -0.977545, -0.153530,
		34.593918, 29.998278, 31.878992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419201, 30.445358, 31.937593>,  <34.694954, 30.682560, 31.986464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419201, 30.445358, 31.937593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196983, 30.167027, 31.755520>,  <35.063652, 30.000027, 31.646276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196983, 30.167027, 31.755520>,  <35.419201, 30.445358, 31.937593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196983, 30.167027, 31.755520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702851, -0.100491, -0.704203,
		0.444263, -0.711143, 0.544892,
		-0.555545, -0.695829, -0.455183,
		35.030319, 29.958279, 31.618965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949509, 30.068518, 31.595205>,  <35.419201, 30.445358, 31.937593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949509, 30.068518, 31.595205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615471, 29.917183, 31.435463>,  <35.415051, 29.826382, 31.339617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615471, 29.917183, 31.435463>,  <35.949509, 30.068518, 31.595205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615471, 29.917183, 31.435463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429989, 0.003888, -0.902826,
		0.343125, -0.925660, 0.159434,
		-0.835090, -0.378336, -0.399358,
		35.364944, 29.803682, 31.315655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047256, 29.459209, 31.144066>,  <35.949509, 30.068518, 31.595205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047256, 29.459209, 31.144066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699455, 29.618422, 31.027077>,  <35.490776, 29.713949, 30.956882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699455, 29.618422, 31.027077>,  <36.047256, 29.459209, 31.144066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699455, 29.618422, 31.027077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310059, -0.021094, -0.950484,
		-0.384491, -0.917130, -0.105072,
		-0.869500, 0.398031, -0.292474,
		35.438606, 29.737831, 30.939335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925926, 29.067307, 30.610680>,  <36.047256, 29.459209, 31.144066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925926, 29.067307, 30.610680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665466, 29.369446, 30.581163>,  <35.509190, 29.550730, 30.563454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665466, 29.369446, 30.581163>,  <35.925926, 29.067307, 30.610680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665466, 29.369446, 30.581163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152792, 0.035233, -0.987630,
		-0.743406, -0.654374, -0.138353,
		-0.651155, 0.755350, -0.073790,
		35.470119, 29.596050, 30.559027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720379, 28.947662, 29.930363>,  <35.925926, 29.067307, 30.610680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720379, 28.947662, 29.930363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605015, 29.323675, 30.003204>,  <35.535797, 29.549282, 30.046909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605015, 29.323675, 30.003204>,  <35.720379, 28.947662, 29.930363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605015, 29.323675, 30.003204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186732, 0.241751, -0.952201,
		-0.939124, -0.240616, -0.245257,
		-0.288406, 0.940032, 0.182104,
		35.518494, 29.605684, 30.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026825, 29.188154, 29.558926>,  <35.720379, 28.947662, 29.930363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026825, 29.188154, 29.558926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267262, 29.493486, 29.653599>,  <35.411522, 29.676685, 29.710403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267262, 29.493486, 29.653599>,  <35.026825, 29.188154, 29.558926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267262, 29.493486, 29.653599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079147, 0.351561, -0.932813,
		-0.795253, 0.541971, 0.271734,
		0.601089, 0.763330, 0.236684,
		35.447590, 29.722485, 29.724604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756851, 29.718969, 29.213160>,  <35.026825, 29.188154, 29.558926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756851, 29.718969, 29.213160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121937, 29.849237, 29.311863>,  <35.340988, 29.927399, 29.371084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121937, 29.849237, 29.311863>,  <34.756851, 29.718969, 29.213160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121937, 29.849237, 29.311863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108190, 0.389740, -0.914548,
		-0.394012, 0.861419, 0.320488,
		0.912715, 0.325670, 0.246759,
		35.395752, 29.946938, 29.385891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658520, 30.326357, 28.905075>,  <34.756851, 29.718969, 29.213160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658520, 30.326357, 28.905075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048267, 30.264231, 28.970175>,  <35.282116, 30.226955, 29.009235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048267, 30.264231, 28.970175>,  <34.658520, 30.326357, 28.905075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048267, 30.264231, 28.970175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210264, 0.371473, -0.904321,
		0.080000, 0.915360, 0.394609,
		0.974366, -0.155317, 0.162750,
		35.340576, 30.217636, 29.018999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001034, 30.878864, 28.777142>,  <34.658520, 30.326357, 28.905075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001034, 30.878864, 28.777142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286846, 30.604494, 28.722076>,  <35.458332, 30.439873, 28.689037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286846, 30.604494, 28.722076>,  <35.001034, 30.878864, 28.777142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286846, 30.604494, 28.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002117, 0.194652, -0.980870,
		0.699599, 0.701155, 0.137633,
		0.714532, -0.685925, -0.137663,
		35.501205, 30.398716, 28.680779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407845, 31.179333, 28.240719>,  <35.001034, 30.878864, 28.777142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407845, 31.179333, 28.240719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485748, 30.787174, 28.252668>,  <35.532490, 30.551880, 28.259838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485748, 30.787174, 28.252668>,  <35.407845, 31.179333, 28.240719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485748, 30.787174, 28.252668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062646, -0.017960, -0.997874,
		0.978849, 0.196215, 0.057920,
		0.194758, -0.980396, 0.029872,
		35.544174, 30.493055, 28.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978775, 31.196079, 27.902424>,  <35.407845, 31.179333, 28.240719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978775, 31.196079, 27.902424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825005, 30.827301, 27.883514>,  <35.732742, 30.606033, 27.872168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825005, 30.827301, 27.883514>,  <35.978775, 31.196079, 27.902424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825005, 30.827301, 27.883514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056003, 0.027826, -0.998043,
		0.921457, -0.386317, 0.040935,
		-0.384422, -0.921946, -0.047276,
		35.709679, 30.550716, 27.869331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337749, 30.923059, 27.355104>,  <35.978775, 31.196079, 27.902424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337749, 30.923059, 27.355104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026882, 30.674244, 27.393227>,  <35.840363, 30.524954, 27.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026882, 30.674244, 27.393227>,  <36.337749, 30.923059, 27.355104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026882, 30.674244, 27.393227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001583, -0.149515, -0.988758,
		0.629296, -0.768578, 0.115213,
		-0.777164, -0.622039, 0.095306,
		35.793732, 30.487633, 27.421818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534103, 30.350258, 27.018446>,  <36.337749, 30.923059, 27.355104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534103, 30.350258, 27.018446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134930, 30.325077, 27.023661>,  <35.895428, 30.309969, 27.026789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134930, 30.325077, 27.023661>,  <36.534103, 30.350258, 27.018446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134930, 30.325077, 27.023661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006847, -0.097543, -0.995208,
		0.063926, -0.993238, 0.096910,
		-0.997931, -0.062956, 0.013036,
		35.835548, 30.306190, 27.027571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353748, 29.874592, 26.591955>,  <36.534103, 30.350258, 27.018446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353748, 29.874592, 26.591955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997448, 30.055574, 26.609169>,  <35.783669, 30.164164, 26.619497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997448, 30.055574, 26.609169>,  <36.353748, 29.874592, 26.591955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997448, 30.055574, 26.609169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033964, 0.028155, -0.999026,
		-0.453230, -0.891341, -0.009712,
		-0.890746, 0.452459, 0.043034,
		35.730225, 30.191313, 26.622080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038189, 29.658157, 26.002625>,  <36.353748, 29.874592, 26.591955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038189, 29.658157, 26.002625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790062, 29.940975, 26.138445>,  <35.641186, 30.110666, 26.219936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790062, 29.940975, 26.138445>,  <36.038189, 29.658157, 26.002625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790062, 29.940975, 26.138445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268746, 0.215106, -0.938885,
		-0.736871, -0.673662, 0.056581,
		-0.620320, 0.707043, 0.339549,
		35.603966, 30.153088, 26.240309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479267, 29.485321, 25.662060>,  <36.038189, 29.658157, 26.002625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479267, 29.485321, 25.662060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453022, 29.869862, 25.769016>,  <35.437275, 30.100586, 25.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453022, 29.869862, 25.769016>,  <35.479267, 29.485321, 25.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453022, 29.869862, 25.769016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429869, 0.214597, -0.877018,
		-0.900504, -0.172485, 0.399176,
		-0.065611, 0.961352, 0.267392,
		35.433338, 30.158268, 25.849234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718288, 29.796740, 25.492666>,  <35.479267, 29.485321, 25.662060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718288, 29.796740, 25.492666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008537, 30.071642, 25.506197>,  <35.182686, 30.236584, 25.514317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008537, 30.071642, 25.506197>,  <34.718288, 29.796740, 25.492666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008537, 30.071642, 25.506197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266057, 0.325569, -0.907314,
		-0.634571, 0.649370, 0.419091,
		0.725626, 0.687257, 0.033828,
		35.226227, 30.277819, 25.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433990, 30.330517, 25.120783>,  <34.718288, 29.796740, 25.492666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433990, 30.330517, 25.120783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824184, 30.417538, 25.107498>,  <35.058300, 30.469751, 25.099527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824184, 30.417538, 25.107498>,  <34.433990, 30.330517, 25.120783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824184, 30.417538, 25.107498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056185, 0.100267, -0.993373,
		-0.212782, 0.970885, 0.110032,
		0.975483, 0.217554, -0.033214,
		35.116829, 30.482803, 25.097534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557106, 30.898191, 24.592754>,  <34.433990, 30.330517, 25.120783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557106, 30.898191, 24.592754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930164, 30.760155, 24.634857>,  <35.153999, 30.677332, 24.660118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930164, 30.760155, 24.634857>,  <34.557106, 30.898191, 24.592754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930164, 30.760155, 24.634857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128715, 0.045715, -0.990627,
		0.337046, 0.937455, 0.087054,
		0.932648, -0.345092, 0.105257,
		35.209957, 30.656628, 24.666433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927982, 31.368998, 24.244493>,  <34.557106, 30.898191, 24.592754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927982, 31.368998, 24.244493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145962, 31.034178, 24.263975>,  <35.276749, 30.833286, 24.275665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145962, 31.034178, 24.263975>,  <34.927982, 31.368998, 24.244493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145962, 31.034178, 24.263975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181125, 0.060804, -0.981579,
		0.818670, 0.543735, 0.184746,
		0.544952, -0.837051, 0.048705,
		35.309448, 30.783062, 24.278587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465199, 31.525404, 23.680933>,  <34.927982, 31.368998, 24.244493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465199, 31.525404, 23.680933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552532, 31.139931, 23.742439>,  <35.604931, 30.908648, 23.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552532, 31.139931, 23.742439>,  <35.465199, 31.525404, 23.680933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552532, 31.139931, 23.742439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312787, -0.080149, -0.946436,
		0.924389, 0.254737, 0.283928,
		0.218336, -0.963683, 0.153767,
		35.618034, 30.850826, 23.788568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117405, 31.387604, 23.442404>,  <35.465199, 31.525404, 23.680933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117405, 31.387604, 23.442404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939751, 31.029398, 23.431103>,  <35.833157, 30.814474, 23.424322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939751, 31.029398, 23.431103>,  <36.117405, 31.387604, 23.442404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939751, 31.029398, 23.431103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287646, -0.112652, -0.951089,
		0.848530, -0.430539, 0.307624,
		-0.444135, -0.895514, -0.028254,
		35.806511, 30.760744, 23.422626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597248, 30.998285, 23.093428>,  <36.117405, 31.387604, 23.442404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597248, 30.998285, 23.093428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261593, 30.780756, 23.089407>,  <36.060200, 30.650238, 23.086994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261593, 30.780756, 23.089407>,  <36.597248, 30.998285, 23.093428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261593, 30.780756, 23.089407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184631, -0.267408, -0.945729,
		0.511624, -0.795454, 0.324799,
		-0.839138, -0.543826, -0.010054,
		36.009850, 30.617609, 23.086391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776917, 30.289110, 22.924040>,  <36.597248, 30.998285, 23.093428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776917, 30.289110, 22.924040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386478, 30.325079, 22.844889>,  <36.152218, 30.346661, 22.797398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386478, 30.325079, 22.844889>,  <36.776917, 30.289110, 22.924040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386478, 30.325079, 22.844889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174853, -0.215916, -0.960628,
		-0.129104, -0.972263, 0.195031,
		-0.976093, 0.089919, -0.197879,
		36.093651, 30.352055, 22.785524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551823, 29.701973, 22.513157>,  <36.776917, 30.289110, 22.924040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551823, 29.701973, 22.513157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310490, 30.016455, 22.459682>,  <36.165691, 30.205143, 22.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310490, 30.016455, 22.459682>,  <36.551823, 29.701973, 22.513157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310490, 30.016455, 22.459682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035723, -0.194110, -0.980329,
		-0.796689, -0.586690, 0.145198,
		-0.603333, 0.786204, -0.133687,
		36.129490, 30.252316, 22.419577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112858, 29.397785, 22.069218>,  <36.551823, 29.701973, 22.513157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112858, 29.397785, 22.069218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092537, 29.795685, 22.033688>,  <36.080345, 30.034426, 22.012369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092537, 29.795685, 22.033688>,  <36.112858, 29.397785, 22.069218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092537, 29.795685, 22.033688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025535, -0.090204, -0.995596,
		-0.998383, -0.048306, 0.029983,
		-0.050798, 0.994751, -0.088825,
		36.077297, 30.094110, 22.007040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597260, 29.536390, 21.509220>,  <36.112858, 29.397785, 22.069218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597260, 29.536390, 21.509220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815395, 29.871416, 21.522425>,  <35.946278, 30.072432, 21.530348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815395, 29.871416, 21.522425>,  <35.597260, 29.536390, 21.509220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815395, 29.871416, 21.522425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045841, 0.069127, -0.996554,
		-0.836959, 0.541950, 0.076092,
		0.545343, 0.837563, 0.033013,
		35.979000, 30.122684, 21.532328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293468, 29.949642, 20.954355>,  <35.597260, 29.536390, 21.509220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293468, 29.949642, 20.954355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637527, 30.131460, 21.046898>,  <35.843964, 30.240551, 21.102425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637527, 30.131460, 21.046898>,  <35.293468, 29.949642, 20.954355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637527, 30.131460, 21.046898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132606, 0.238707, -0.961995,
		-0.492499, 0.858141, 0.145048,
		0.860151, 0.454547, 0.231357,
		35.895573, 30.267824, 21.116304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257030, 30.489487, 20.689335>,  <35.293468, 29.949642, 20.954355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257030, 30.489487, 20.689335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653767, 30.487709, 20.740297>,  <35.891808, 30.486643, 20.770874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653767, 30.487709, 20.740297>,  <35.257030, 30.489487, 20.689335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653767, 30.487709, 20.740297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121981, 0.323529, -0.938323,
		-0.037048, 0.946208, 0.321432,
		0.991841, -0.004446, 0.127406,
		35.951321, 30.486376, 20.778519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445816, 31.199217, 20.537258>,  <35.257030, 30.489487, 20.689335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445816, 31.199217, 20.537258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777645, 30.979469, 20.497265>,  <35.976742, 30.847620, 20.473269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777645, 30.979469, 20.497265>,  <35.445816, 31.199217, 20.537258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777645, 30.979469, 20.497265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268772, 0.549798, -0.790875,
		0.489454, 0.629218, 0.603754,
		0.829576, -0.549369, -0.099984,
		36.026520, 30.814659, 20.467270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029671, 31.599060, 20.546869>,  <35.445816, 31.199217, 20.537258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029671, 31.599060, 20.546869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142605, 31.267496, 20.353708>,  <36.210365, 31.068558, 20.237812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142605, 31.267496, 20.353708>,  <36.029671, 31.599060, 20.546869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142605, 31.267496, 20.353708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311918, 0.555351, -0.770904,
		0.907190, 0.067028, 0.415347,
		0.282335, -0.828911, -0.482902,
		36.227306, 31.018824, 20.208838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717445, 31.693752, 20.321869>,  <36.029671, 31.599060, 20.546869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717445, 31.693752, 20.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570248, 31.405764, 20.086506>,  <36.481930, 31.232971, 19.945288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570248, 31.405764, 20.086506>,  <36.717445, 31.693752, 20.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570248, 31.405764, 20.086506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195186, 0.558902, -0.805935,
		0.909113, -0.411425, -0.065142,
		-0.367990, -0.719971, -0.588409,
		36.459850, 31.189772, 19.909983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181892, 31.696945, 19.743984>,  <36.717445, 31.693752, 20.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181892, 31.696945, 19.743984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871460, 31.486219, 19.605330>,  <36.685200, 31.359783, 19.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871460, 31.486219, 19.605330>,  <37.181892, 31.696945, 19.743984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871460, 31.486219, 19.605330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095787, 0.444819, -0.890484,
		0.623311, -0.724294, -0.294756,
		-0.776085, -0.526814, -0.346638,
		36.638634, 31.328175, 19.501339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428768, 31.350950, 19.077644>,  <37.181892, 31.696945, 19.743984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428768, 31.350950, 19.077644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030510, 31.358665, 19.041174>,  <36.791553, 31.363295, 19.019291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030510, 31.358665, 19.041174>,  <37.428768, 31.350950, 19.077644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030510, 31.358665, 19.041174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091293, 0.398453, -0.912634,
		0.018727, -0.916986, -0.398480,
		-0.995648, 0.019288, -0.091176,
		36.731815, 31.364452, 19.013821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307873, 31.026106, 18.354614>,  <37.428768, 31.350950, 19.077644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307873, 31.026106, 18.354614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962456, 31.211168, 18.434855>,  <36.755207, 31.322206, 18.482998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962456, 31.211168, 18.434855>,  <37.307873, 31.026106, 18.354614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962456, 31.211168, 18.434855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144874, 0.153415, -0.977484,
		-0.483016, -0.873162, -0.065453,
		-0.863543, 0.462658, 0.200600,
		36.703392, 31.349966, 18.495035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792133, 30.826477, 17.913605>,  <37.307873, 31.026106, 18.354614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792133, 30.826477, 17.913605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659203, 31.187157, 18.024239>,  <36.579445, 31.403564, 18.090620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659203, 31.187157, 18.024239>,  <36.792133, 30.826477, 17.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659203, 31.187157, 18.024239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217563, 0.212056, -0.952732,
		-0.917730, -0.376789, 0.125705,
		-0.332323, 0.901699, 0.276586,
		36.559505, 31.457666, 18.107214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195526, 30.938961, 17.438744>,  <36.792133, 30.826477, 17.913605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195526, 30.938961, 17.438744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288288, 31.293676, 17.598656>,  <36.343945, 31.506506, 17.694603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288288, 31.293676, 17.598656>,  <36.195526, 30.938961, 17.438744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288288, 31.293676, 17.598656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203442, 0.446112, -0.871548,
		-0.951225, 0.120788, 0.283867,
		0.231909, 0.886789, 0.399779,
		36.357861, 31.559713, 17.718590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587204, 31.470322, 17.417225>,  <36.195526, 30.938961, 17.438744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587204, 31.470322, 17.417225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940495, 31.657698, 17.425955>,  <36.152470, 31.770124, 17.431192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940495, 31.657698, 17.425955>,  <35.587204, 31.470322, 17.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940495, 31.657698, 17.425955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144937, 0.316941, -0.937305,
		-0.445990, 0.824688, 0.347825,
		0.883225, 0.468441, 0.021824,
		36.205463, 31.798229, 17.432503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511570, 32.175217, 17.118963>,  <35.587204, 31.470322, 17.417225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511570, 32.175217, 17.118963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885807, 32.052906, 17.048342>,  <36.110348, 31.979521, 17.005968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885807, 32.052906, 17.048342>,  <35.511570, 32.175217, 17.118963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885807, 32.052906, 17.048342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063010, 0.347418, -0.935591,
		0.347418, 0.886455, 0.305774,
		0.935591, -0.305774, -0.176554,
		36.166485, 31.961174, 16.995375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223656, 32.691414, 17.501211>,  <35.511570, 32.175217, 17.118963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223656, 32.691414, 17.501211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272377, 33.085629, 17.548347>,  <35.301609, 33.322155, 17.576630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272377, 33.085629, 17.548347>,  <35.223656, 32.691414, 17.501211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272377, 33.085629, 17.548347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305063, 0.150149, -0.940421,
		-0.944511, 0.078598, 0.318938,
		0.121803, 0.985534, 0.117840,
		35.308918, 33.381290, 17.583700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640625, 32.991234, 17.152475>,  <35.223656, 32.691414, 17.501211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640625, 32.991234, 17.152475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906837, 33.288181, 17.183338>,  <35.066566, 33.466351, 17.201855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906837, 33.288181, 17.183338>,  <34.640625, 32.991234, 17.152475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906837, 33.288181, 17.183338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024998, 0.125486, -0.991780,
		-0.745950, 0.658134, 0.102073,
		0.665533, 0.742370, 0.077155,
		35.106499, 33.510891, 17.206484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615200, 33.447716, 16.534407>,  <34.640625, 32.991234, 17.152475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615200, 33.447716, 16.534407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995960, 33.508549, 16.640806>,  <35.224415, 33.545048, 16.704647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995960, 33.508549, 16.640806>,  <34.615200, 33.447716, 16.534407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995960, 33.508549, 16.640806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221854, 0.256702, -0.940683,
		-0.211342, 0.954451, 0.210616,
		0.951901, 0.152080, 0.266001,
		35.281532, 33.554173, 16.720606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110336, 33.497509, 16.030190>,  <34.615200, 33.447716, 16.534407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110336, 33.497509, 16.030190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363270, 33.807327, 16.036287>,  <35.515030, 33.993217, 16.039946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363270, 33.807327, 16.036287>,  <35.110336, 33.497509, 16.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363270, 33.807327, 16.036287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041884, -0.053829, 0.997671,
		0.773564, -0.630222, -0.066479,
		0.632333, 0.774547, 0.015244,
		35.552971, 34.039692, 16.040861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896641, 33.429142, 16.411280>,  <35.110336, 33.497509, 16.030190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896641, 33.429142, 16.411280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663643, 33.754265, 16.414061>,  <35.523846, 33.949337, 16.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663643, 33.754265, 16.414061>,  <35.896641, 33.429142, 16.411280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663643, 33.754265, 16.414061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011442, -0.000354, 0.999934,
		0.812755, 0.582535, -0.009094,
		-0.582494, 0.812805, 0.006953,
		35.488895, 33.998108, 16.416147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117725, 34.185703, 16.671083>,  <35.896641, 33.429142, 16.411280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117725, 34.185703, 16.671083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729420, 34.112785, 16.733553>,  <35.496437, 34.069035, 16.771034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729420, 34.112785, 16.733553>,  <36.117725, 34.185703, 16.671083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729420, 34.112785, 16.733553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143519, 0.080750, 0.986348,
		-0.192416, 0.979923, -0.052227,
		-0.970762, -0.182293, 0.156175,
		35.438190, 34.058098, 16.780405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770424, 34.644283, 17.193632>,  <36.117725, 34.185703, 16.671083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770424, 34.644283, 17.193632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555782, 34.307079, 17.208515>,  <35.426998, 34.104755, 17.217445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555782, 34.307079, 17.208515>,  <35.770424, 34.644283, 17.193632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555782, 34.307079, 17.208515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022865, 0.029554, 0.999302,
		-0.843524, 0.537081, 0.003417,
		-0.536605, -0.843013, 0.037210,
		35.394802, 34.054176, 17.219679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445274, 34.627892, 17.834635>,  <35.770424, 34.644283, 17.193632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445274, 34.627892, 17.834635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 34.247345, 17.737686>,  <35.323563, 34.019016, 17.679516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 34.247345, 17.737686>,  <35.445274, 34.627892, 17.834635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369205, 34.247345, 17.737686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015670, -0.249788, 0.968174,
		-0.981625, 0.180322, 0.062410,
		-0.190173, -0.951362, -0.242372,
		35.312153, 33.961937, 17.664974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667206, 34.392136, 18.103197>,  <35.445274, 34.627892, 17.834635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667206, 34.392136, 18.103197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934349, 34.099483, 18.048527>,  <35.094635, 33.923893, 18.015724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934349, 34.099483, 18.048527>,  <34.667206, 34.392136, 18.103197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934349, 34.099483, 18.048527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053213, -0.230099, 0.971711,
		-0.742383, -0.641693, -0.192606,
		0.667859, -0.731631, -0.136675,
		35.134708, 33.879993, 18.007524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433212, 33.918697, 18.606419>,  <34.667206, 34.392136, 18.103197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433212, 33.918697, 18.606419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808804, 33.811375, 18.520327>,  <35.034161, 33.746979, 18.468672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808804, 33.811375, 18.520327>,  <34.433212, 33.918697, 18.606419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808804, 33.811375, 18.520327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120117, -0.330557, 0.936111,
		-0.322297, -0.904848, -0.278162,
		0.938987, -0.268294, -0.215225,
		35.090500, 33.730881, 18.455757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470863, 33.172314, 18.897861>,  <34.433212, 33.918697, 18.606419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470863, 33.172314, 18.897861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826542, 33.352089, 18.863611>,  <35.039951, 33.459953, 18.843061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826542, 33.352089, 18.863611>,  <34.470863, 33.172314, 18.897861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826542, 33.352089, 18.863611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197177, -0.207570, 0.958142,
		0.412849, -0.868863, -0.273189,
		0.889201, 0.449434, -0.085625,
		35.093304, 33.486919, 18.837923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901215, 32.725098, 19.221207>,  <34.470863, 33.172314, 18.897861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901215, 32.725098, 19.221207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115414, 33.062874, 19.216190>,  <35.243935, 33.265541, 19.213181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115414, 33.062874, 19.216190>,  <34.901215, 32.725098, 19.221207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115414, 33.062874, 19.216190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157775, -0.085442, 0.983772,
		0.829666, -0.528789, -0.178986,
		0.535501, 0.844442, -0.012542,
		35.276062, 33.316208, 19.212427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437439, 32.628757, 19.655581>,  <34.901215, 32.725098, 19.221207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437439, 32.628757, 19.655581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403835, 33.026588, 19.631031>,  <35.383671, 33.265285, 19.616302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403835, 33.026588, 19.631031>,  <35.437439, 32.628757, 19.655581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403835, 33.026588, 19.631031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105487, 0.070120, 0.991945,
		0.990865, 0.076860, -0.110806,
		-0.084011, 0.994573, -0.061371,
		35.378632, 33.324959, 19.612619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071079, 32.927277, 19.937027>,  <35.437439, 32.628757, 19.655581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071079, 32.927277, 19.937027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807419, 33.226498, 19.967836>,  <35.649223, 33.406033, 19.986322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807419, 33.226498, 19.967836>,  <36.071079, 32.927277, 19.937027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807419, 33.226498, 19.967836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121857, 0.005181, 0.992534,
		0.742073, 0.663614, -0.094571,
		-0.659150, 0.748057, 0.077022,
		35.609673, 33.450916, 19.990942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312904, 33.267727, 20.556217>,  <36.071079, 32.927277, 19.937027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312904, 33.267727, 20.556217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963531, 33.442402, 20.470028>,  <35.753910, 33.547207, 20.418314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963531, 33.442402, 20.470028>,  <36.312904, 33.267727, 20.556217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963531, 33.442402, 20.470028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149676, 0.180320, 0.972153,
		0.463381, 0.881356, -0.092135,
		-0.873427, 0.436687, -0.215475,
		35.701504, 33.573406, 20.405386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248245, 33.966042, 20.952362>,  <36.312904, 33.267727, 20.556217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248245, 33.966042, 20.952362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881763, 33.830624, 20.866604>,  <35.661877, 33.749374, 20.815149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881763, 33.830624, 20.866604>,  <36.248245, 33.966042, 20.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881763, 33.830624, 20.866604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248168, 0.059298, 0.966900,
		-0.314624, 0.939081, -0.138344,
		-0.916201, -0.338543, -0.214393,
		35.606903, 33.729061, 20.802286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760490, 34.352448, 21.356937>,  <36.248245, 33.966042, 20.952362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760490, 34.352448, 21.356937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565811, 34.015244, 21.265329>,  <35.449005, 33.812920, 21.210363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565811, 34.015244, 21.265329>,  <35.760490, 34.352448, 21.356937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565811, 34.015244, 21.265329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288106, -0.092600, 0.953111,
		-0.824693, 0.529861, -0.197809,
		-0.486700, -0.843014, -0.229022,
		35.419800, 33.762341, 21.196623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184723, 34.451855, 21.756401>,  <35.760490, 34.352448, 21.356937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184723, 34.451855, 21.756401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198055, 34.063156, 21.662937>,  <35.206055, 33.829937, 21.606859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198055, 34.063156, 21.662937>,  <35.184723, 34.451855, 21.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198055, 34.063156, 21.662937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320993, -0.231814, 0.918274,
		-0.946495, 0.044395, -0.319651,
		0.033332, -0.971747, -0.233661,
		35.208054, 33.771633, 21.592838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523548, 34.151848, 21.892059>,  <35.184723, 34.451855, 21.756401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523548, 34.151848, 21.892059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793865, 33.857029, 21.888832>,  <34.956055, 33.680138, 21.886896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793865, 33.857029, 21.888832>,  <34.523548, 34.151848, 21.892059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793865, 33.857029, 21.888832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229585, -0.220885, 0.947893,
		-0.700421, -0.638730, -0.318488,
		0.675796, -0.737044, -0.008070,
		34.996605, 33.635918, 21.886412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201584, 33.630165, 22.196781>,  <34.523548, 34.151848, 21.892059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201584, 33.630165, 22.196781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583931, 33.515343, 22.221785>,  <34.813339, 33.446449, 22.236786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583931, 33.515343, 22.221785>,  <34.201584, 33.630165, 22.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583931, 33.515343, 22.221785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145201, -0.276653, 0.949937,
		-0.255382, -0.917097, -0.306125,
		0.955875, -0.287047, 0.062511,
		34.870693, 33.429226, 22.240536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329292, 32.981480, 22.368809>,  <34.201584, 33.630165, 22.196781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329292, 32.981480, 22.368809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679535, 33.131527, 22.490528>,  <34.889679, 33.221558, 22.563560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679535, 33.131527, 22.490528>,  <34.329292, 32.981480, 22.368809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679535, 33.131527, 22.490528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199941, -0.292004, 0.935285,
		0.439701, -0.879783, -0.180678,
		0.875606, 0.375121, 0.304299,
		34.942215, 33.244064, 22.581818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499493, 32.563961, 22.851446>,  <34.329292, 32.981480, 22.368809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499493, 32.563961, 22.851446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733112, 32.881691, 22.918303>,  <34.873283, 33.072330, 22.958416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733112, 32.881691, 22.918303>,  <34.499493, 32.563961, 22.851446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733112, 32.881691, 22.918303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090298, -0.141055, 0.985875,
		0.806682, -0.590890, -0.010657,
		0.584047, 0.794325, 0.167143,
		34.908325, 33.119987, 22.968445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007881, 32.317444, 23.326494>,  <34.499493, 32.563961, 22.851446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007881, 32.317444, 23.326494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990967, 32.716343, 23.350872>,  <34.980820, 32.955681, 23.365499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990967, 32.716343, 23.350872>,  <35.007881, 32.317444, 23.326494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990967, 32.716343, 23.350872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053529, -0.058650, 0.996842,
		0.997671, 0.045415, -0.050901,
		-0.042286, 0.997245, 0.060945,
		34.978279, 33.015518, 23.369156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516315, 32.520920, 23.723389>,  <35.007881, 32.317444, 23.326494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516315, 32.520920, 23.723389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280594, 32.843548, 23.741961>,  <35.139160, 33.037125, 23.753103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280594, 32.843548, 23.741961>,  <35.516315, 32.520920, 23.723389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280594, 32.843548, 23.741961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021095, -0.042089, 0.998891,
		0.807633, 0.589634, 0.007789,
		-0.589308, 0.806573, 0.046431,
		35.103802, 33.085522, 23.755890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707882, 32.964325, 24.367252>,  <35.516315, 32.520920, 23.723389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707882, 32.964325, 24.367252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337883, 33.076523, 24.264717>,  <35.115883, 33.143841, 24.203196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337883, 33.076523, 24.264717>,  <35.707882, 32.964325, 24.367252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337883, 33.076523, 24.264717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257039, 0.034952, 0.965769,
		0.279850, 0.959220, 0.039767,
		-0.924995, 0.280492, -0.256338,
		35.060383, 33.160671, 24.187817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450611, 33.402840, 24.914719>,  <35.707882, 32.964325, 24.367252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450611, 33.402840, 24.914719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124840, 33.305492, 24.704014>,  <34.929379, 33.247082, 24.577591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124840, 33.305492, 24.704014>,  <35.450611, 33.402840, 24.914719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124840, 33.305492, 24.704014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503319, -0.155449, 0.850004,
		-0.288750, 0.957396, 0.004109,
		-0.814428, -0.243371, -0.526761,
		34.880512, 33.232483, 24.545986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903816, 33.732002, 25.246912>,  <35.450611, 33.402840, 24.914719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903816, 33.732002, 25.246912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734501, 33.438335, 25.034565>,  <34.632912, 33.262135, 24.907156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734501, 33.438335, 25.034565>,  <34.903816, 33.732002, 25.246912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734501, 33.438335, 25.034565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474244, -0.319715, 0.820290,
		-0.771958, 0.598981, -0.212843,
		-0.423289, -0.734169, -0.530870,
		34.607513, 33.218086, 24.875303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290882, 33.833340, 25.416767>,  <34.903816, 33.732002, 25.246912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290882, 33.833340, 25.416767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303120, 33.460369, 25.272747>,  <34.310463, 33.236588, 25.186335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303120, 33.460369, 25.272747>,  <34.290882, 33.833340, 25.416767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303120, 33.460369, 25.272747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545934, -0.317329, 0.775409,
		-0.837270, 0.172845, -0.518752,
		0.030589, -0.932431, -0.360052,
		34.312298, 33.180641, 25.164732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602329, 33.498802, 25.444082>,  <34.290882, 33.833340, 25.416767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602329, 33.498802, 25.444082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850983, 33.185562, 25.436863>,  <34.000175, 32.997616, 25.432531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850983, 33.185562, 25.436863>,  <33.602329, 33.498802, 25.444082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850983, 33.185562, 25.436863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499454, -0.414010, 0.761013,
		-0.603424, -0.464054, -0.648485,
		0.621631, -0.783102, -0.018050,
		34.037472, 32.950630, 25.431448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225033, 33.002869, 25.563051>,  <33.602329, 33.498802, 25.444082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225033, 33.002869, 25.563051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567566, 32.807991, 25.631561>,  <33.773087, 32.691063, 25.672668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567566, 32.807991, 25.631561>,  <33.225033, 33.002869, 25.563051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567566, 32.807991, 25.631561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444141, -0.525566, 0.725616,
		-0.263497, -0.697441, -0.666442,
		0.856334, -0.487193, 0.171277,
		33.824467, 32.661835, 25.682943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067688, 32.290508, 25.615419>,  <33.225033, 33.002869, 25.563051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067688, 32.290508, 25.615419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406712, 32.356102, 25.817314>,  <33.610126, 32.395458, 25.938450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406712, 32.356102, 25.817314>,  <33.067688, 32.290508, 25.615419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406712, 32.356102, 25.817314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322824, -0.595569, 0.735583,
		0.421228, -0.786388, -0.451841,
		0.847556, 0.163983, 0.504736,
		33.660980, 32.405296, 25.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087605, 31.715633, 25.933117>,  <33.067688, 32.290508, 25.615419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087605, 31.715633, 25.933117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356747, 31.925802, 26.141422>,  <33.518234, 32.051903, 26.266405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356747, 31.925802, 26.141422>,  <33.087605, 31.715633, 25.933117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356747, 31.925802, 26.141422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367068, -0.374054, 0.851671,
		0.642280, -0.764210, -0.058820,
		0.672857, 0.525421, 0.520765,
		33.558605, 32.083427, 26.297651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434818, 31.286572, 26.448420>,  <33.087605, 31.715633, 25.933117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434818, 31.286572, 26.448420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444553, 31.662714, 26.584146>,  <33.450394, 31.888399, 26.665583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444553, 31.662714, 26.584146>,  <33.434818, 31.286572, 26.448420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444553, 31.662714, 26.584146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179052, -0.329830, 0.926905,
		0.983539, -0.083313, 0.160346,
		0.024337, 0.940357, 0.339318,
		33.451855, 31.944820, 26.685942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795132, 31.163572, 27.097002>,  <33.434818, 31.286572, 26.448420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795132, 31.163572, 27.097002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648315, 31.533459, 27.137356>,  <33.560226, 31.755390, 27.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648315, 31.533459, 27.137356>,  <33.795132, 31.163572, 27.097002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648315, 31.533459, 27.137356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025556, -0.118436, 0.992633,
		0.929852, 0.361763, 0.067103,
		-0.367045, 0.924716, 0.100883,
		33.538200, 31.810873, 27.167620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172649, 31.425798, 27.626720>,  <33.795132, 31.163572, 27.097002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172649, 31.425798, 27.626720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855412, 31.669432, 27.625273>,  <33.665070, 31.815611, 27.624405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855412, 31.669432, 27.625273>,  <34.172649, 31.425798, 27.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855412, 31.669432, 27.625273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061520, 0.086011, 0.994393,
		0.605980, 0.788429, -0.105685,
		-0.793098, 0.609083, -0.003617,
		33.617481, 31.852158, 27.624187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323212, 32.095818, 27.947918>,  <34.172649, 31.425798, 27.626720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323212, 32.095818, 27.947918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924847, 32.073189, 27.976095>,  <33.685829, 32.059612, 27.993002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924847, 32.073189, 27.976095>,  <34.323212, 32.095818, 27.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924847, 32.073189, 27.976095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069947, 0.010679, 0.997494,
		-0.057178, 0.998342, -0.006678,
		-0.995911, -0.056567, 0.070442,
		33.626072, 32.056217, 27.997229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145412, 32.399162, 28.639526>,  <34.323212, 32.095818, 27.947918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145412, 32.399162, 28.639526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788979, 32.236988, 28.557949>,  <33.575119, 32.139683, 28.509003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788979, 32.236988, 28.557949>,  <34.145412, 32.399162, 28.639526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788979, 32.236988, 28.557949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237288, 0.033152, 0.970873,
		-0.386863, 0.913523, -0.125746,
		-0.891084, -0.405433, -0.203943,
		33.521652, 32.115356, 28.496765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550308, 32.836468, 28.928846>,  <34.145412, 32.399162, 28.639526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550308, 32.836468, 28.928846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441689, 32.451595, 28.920214>,  <33.376514, 32.220673, 28.915033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441689, 32.451595, 28.920214>,  <33.550308, 32.836468, 28.928846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441689, 32.451595, 28.920214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243527, 0.047000, 0.968755,
		-0.931104, 0.268323, -0.247080,
		-0.271552, -0.962182, -0.021582,
		33.360222, 32.162941, 28.913738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965603, 32.851776, 29.359951>,  <33.550308, 32.836468, 28.928846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965603, 32.851776, 29.359951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058800, 32.463829, 29.331455>,  <33.114719, 32.231060, 29.314358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058800, 32.463829, 29.331455>,  <32.965603, 32.851776, 29.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058800, 32.463829, 29.331455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257706, -0.132214, 0.957135,
		-0.937710, -0.204650, -0.280745,
		0.232996, -0.969865, -0.071239,
		33.128700, 32.172871, 29.310083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459652, 32.590469, 29.771723>,  <32.965603, 32.851776, 29.359951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459652, 32.590469, 29.771723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743034, 32.309151, 29.748182>,  <32.913063, 32.140362, 29.734058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743034, 32.309151, 29.748182>,  <32.459652, 32.590469, 29.771723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743034, 32.309151, 29.748182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067777, -0.150801, 0.986238,
		-0.702491, -0.694719, -0.154503,
		0.708458, -0.703295, -0.058850,
		32.955570, 32.098164, 29.730528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210690, 32.090981, 30.133080>,  <32.459652, 32.590469, 29.771723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210690, 32.090981, 30.133080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605564, 32.028309, 30.120922>,  <32.842487, 31.990705, 30.113628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605564, 32.028309, 30.120922>,  <32.210690, 32.090981, 30.133080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605564, 32.028309, 30.120922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015212, -0.281946, 0.959310,
		-0.158871, -0.946551, -0.280715,
		0.987182, -0.156677, -0.030394,
		32.901718, 31.981306, 30.111803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361496, 31.503502, 30.632900>,  <32.210690, 32.090981, 30.133080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361496, 31.503502, 30.632900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714119, 31.682491, 30.572744>,  <32.925694, 31.789885, 30.536650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714119, 31.682491, 30.572744>,  <32.361496, 31.503502, 30.632900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714119, 31.682491, 30.572744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098594, 0.137028, 0.985648,
		0.461661, -0.883736, 0.076680,
		0.881560, 0.447475, -0.150392,
		32.978588, 31.816734, 30.527626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730198, 31.255072, 31.143713>,  <32.361496, 31.503502, 30.632900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730198, 31.255072, 31.143713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902729, 31.598108, 31.031651>,  <33.006248, 31.803930, 30.964413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902729, 31.598108, 31.031651>,  <32.730198, 31.255072, 31.143713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902729, 31.598108, 31.031651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214655, 0.204062, 0.955135,
		0.876287, -0.472115, -0.096069,
		0.431329, 0.857593, -0.280158,
		33.032127, 31.855387, 30.947603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429630, 31.308559, 31.402557>,  <32.730198, 31.255072, 31.143713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429630, 31.308559, 31.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350155, 31.693089, 31.326263>,  <33.302467, 31.923805, 31.280487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350155, 31.693089, 31.326263>,  <33.429630, 31.308559, 31.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350155, 31.693089, 31.326263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232050, 0.235225, 0.943834,
		0.952194, 0.143273, -0.269812,
		-0.198693, 0.961323, -0.190733,
		33.290546, 31.981485, 31.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875397, 31.628021, 31.809856>,  <33.429630, 31.308559, 31.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875397, 31.628021, 31.809856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645741, 31.938147, 31.704597>,  <33.507946, 32.124222, 31.641443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645741, 31.938147, 31.704597>,  <33.875397, 31.628021, 31.809856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645741, 31.938147, 31.704597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093234, 0.381217, 0.919772,
		0.813429, 0.503547, -0.291159,
		-0.574143, 0.775315, -0.263145,
		33.473499, 32.170742, 31.625654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229393, 32.191032, 32.052265>,  <33.875397, 31.628021, 31.809856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229393, 32.191032, 32.052265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844753, 32.298164, 32.028313>,  <33.613968, 32.362442, 32.013943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844753, 32.298164, 32.028313>,  <34.229393, 32.191032, 32.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844753, 32.298164, 32.028313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039536, 0.351108, 0.935500,
		0.271578, 0.897213, -0.348216,
		-0.961604, 0.267828, -0.059881,
		33.556271, 32.378513, 32.010349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127991, 32.888237, 32.376423>,  <34.229393, 32.191032, 32.052265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127991, 32.888237, 32.376423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774132, 32.704357, 32.407619>,  <33.561817, 32.594028, 32.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774132, 32.704357, 32.407619>,  <34.127991, 32.888237, 32.376423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774132, 32.704357, 32.407619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000546, 0.166240, 0.986085,
		-0.466266, 0.872377, -0.146813,
		-0.884644, -0.459698, 0.077989,
		33.508739, 32.566448, 32.431015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834660, 33.267860, 32.221695>,  <34.127991, 32.888237, 32.376423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834660, 33.267860, 32.221695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855656, 33.614170, 32.420765>,  <34.868256, 33.821957, 32.540207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855656, 33.614170, 32.420765>,  <34.834660, 33.267860, 32.221695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855656, 33.614170, 32.420765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535575, 0.396221, -0.745767,
		-0.842854, 0.305690, -0.442888,
		0.052492, 0.865773, 0.497677,
		34.871403, 33.873901, 32.570068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609783, 33.811874, 31.726772>,  <34.834660, 33.267860, 32.221695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609783, 33.811874, 31.726772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824165, 34.020638, 31.992208>,  <34.952797, 34.145897, 32.151470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824165, 34.020638, 31.992208>,  <34.609783, 33.811874, 31.726772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824165, 34.020638, 31.992208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415170, 0.521472, -0.745453,
		-0.735106, 0.675036, 0.062805,
		0.535959, 0.521913, 0.663592,
		34.984955, 34.177212, 32.191288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598972, 34.383831, 31.434183>,  <34.609783, 33.811874, 31.726772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598972, 34.383831, 31.434183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911682, 34.406818, 31.682545>,  <35.099308, 34.420609, 31.831562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911682, 34.406818, 31.682545>,  <34.598972, 34.383831, 31.434183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911682, 34.406818, 31.682545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586945, 0.268359, -0.763858,
		-0.210519, 0.961604, 0.176069,
		0.781778, 0.057464, 0.620903,
		35.146217, 34.424057, 31.868816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901443, 35.054218, 31.237461>,  <34.598972, 34.383831, 31.434183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901443, 35.054218, 31.237461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169880, 34.830303, 31.431896>,  <35.330940, 34.695953, 31.548557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169880, 34.830303, 31.431896>,  <34.901443, 35.054218, 31.237461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169880, 34.830303, 31.431896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643024, 0.113155, -0.757441,
		0.369002, 0.820874, 0.435893,
		0.671087, -0.559787, 0.486087,
		35.371204, 34.662369, 31.577723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453156, 35.508484, 31.355225>,  <34.901443, 35.054218, 31.237461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453156, 35.508484, 31.355225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560982, 35.123310, 31.351309>,  <35.625679, 34.892208, 31.348959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560982, 35.123310, 31.351309>,  <35.453156, 35.508484, 31.355225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560982, 35.123310, 31.351309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805824, 0.231131, -0.545184,
		0.527237, 0.139077, 0.838259,
		0.269570, -0.962931, -0.009789,
		35.641853, 34.834431, 31.348372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232861, 35.561943, 31.311153>,  <35.453156, 35.508484, 31.355225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232861, 35.561943, 31.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150330, 35.179699, 31.227020>,  <36.100811, 34.950352, 31.176540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150330, 35.179699, 31.227020>,  <36.232861, 35.561943, 31.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150330, 35.179699, 31.227020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730755, -0.007537, -0.682599,
		0.650712, -0.294542, 0.699871,
		-0.206329, -0.955609, -0.210334,
		36.088432, 34.893017, 31.163919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895340, 35.137466, 31.358685>,  <36.232861, 35.561943, 31.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895340, 35.137466, 31.358685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645920, 34.945873, 31.111540>,  <36.496269, 34.830917, 30.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645920, 34.945873, 31.111540>,  <36.895340, 35.137466, 31.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645920, 34.945873, 31.111540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750483, -0.145356, -0.644707,
		0.218997, -0.865704, 0.450109,
		-0.623551, -0.478988, -0.617863,
		36.458855, 34.802177, 30.926182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319714, 34.912380, 30.854633>,  <36.895340, 35.137466, 31.358685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319714, 34.912380, 30.854633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971680, 34.831844, 30.674675>,  <36.762859, 34.783524, 30.566700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971680, 34.831844, 30.674675>,  <37.319714, 34.912380, 30.854633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971680, 34.831844, 30.674675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470816, -0.069370, -0.879500,
		0.145872, -0.977062, 0.155154,
		-0.870088, -0.201344, -0.449897,
		36.710651, 34.771442, 30.539705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342789, 34.188160, 30.481653>,  <37.319714, 34.912380, 30.854633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342789, 34.188160, 30.481653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091331, 34.434765, 30.292036>,  <36.940456, 34.582729, 30.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091331, 34.434765, 30.292036>,  <37.342789, 34.188160, 30.481653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091331, 34.434765, 30.292036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538759, -0.094345, -0.837161,
		-0.560847, -0.781670, -0.272844,
		-0.628642, 0.616516, -0.474044,
		36.902740, 34.619720, 30.149822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241333, 33.941025, 29.824121>,  <37.342789, 34.188160, 30.481653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241333, 33.941025, 29.824121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122322, 34.319103, 29.770334>,  <37.050915, 34.545952, 29.738062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122322, 34.319103, 29.770334>,  <37.241333, 33.941025, 29.824121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122322, 34.319103, 29.770334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442306, 0.011648, -0.896788,
		-0.846076, -0.326292, -0.421532,
		-0.297525, 0.945197, -0.134466,
		37.033066, 34.602661, 29.729994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850697, 33.912689, 29.141848>,  <37.241333, 33.941025, 29.824121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850697, 33.912689, 29.141848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922535, 34.298767, 29.217901>,  <36.965637, 34.530415, 29.263533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922535, 34.298767, 29.217901>,  <36.850697, 33.912689, 29.141848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922535, 34.298767, 29.217901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046873, 0.184661, -0.981684,
		-0.982624, 0.185215, -0.012077,
		0.179592, 0.965192, 0.190134,
		36.976414, 34.588326, 29.274942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292046, 34.318565, 28.887091>,  <36.850697, 33.912689, 29.141848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292046, 34.318565, 28.887091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609550, 34.558498, 28.927378>,  <36.800053, 34.702457, 28.951550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609550, 34.558498, 28.927378>,  <36.292046, 34.318565, 28.887091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609550, 34.558498, 28.927378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097546, 0.288996, -0.952348,
		-0.600354, 0.746114, 0.287906,
		0.793763, 0.599830, 0.100719,
		36.847679, 34.738449, 28.957594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993080, 34.871891, 28.691010>,  <36.292046, 34.318565, 28.887091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993080, 34.871891, 28.691010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389042, 34.912895, 28.651854>,  <36.626617, 34.937496, 28.628359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389042, 34.912895, 28.651854>,  <35.993080, 34.871891, 28.691010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389042, 34.912895, 28.651854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126649, 0.329541, -0.935608,
		-0.063651, 0.938560, 0.339196,
		0.989903, 0.102511, -0.097892,
		36.686012, 34.943649, 28.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087994, 35.532291, 28.344105>,  <35.993080, 34.871891, 28.691010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087994, 35.532291, 28.344105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403423, 35.293575, 28.284782>,  <36.592682, 35.150345, 28.249189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403423, 35.293575, 28.284782>,  <36.087994, 35.532291, 28.344105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403423, 35.293575, 28.284782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089350, 0.127414, -0.987817,
		0.608411, 0.792220, 0.047153,
		0.788576, -0.596786, -0.148305,
		36.639996, 35.114540, 28.240292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421585, 35.788315, 27.746965>,  <36.087994, 35.532291, 28.344105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421585, 35.788315, 27.746965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579758, 35.421631, 27.769888>,  <36.674660, 35.201622, 27.783642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579758, 35.421631, 27.769888>,  <36.421585, 35.788315, 27.746965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579758, 35.421631, 27.769888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101520, -0.018390, -0.994663,
		0.912867, 0.399141, 0.085792,
		0.395433, -0.916705, 0.057309,
		36.698387, 35.146618, 27.787081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966343, 35.883549, 27.284143>,  <36.421585, 35.788315, 27.746965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966343, 35.883549, 27.284143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917625, 35.489868, 27.335539>,  <36.888393, 35.253658, 27.366377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917625, 35.489868, 27.335539>,  <36.966343, 35.883549, 27.284143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917625, 35.489868, 27.335539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035203, -0.125089, -0.991521,
		0.991931, -0.125287, -0.019411,
		-0.121796, -0.984203, 0.128490,
		36.881088, 35.194607, 27.374086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487370, 35.602455, 26.941097>,  <36.966343, 35.883549, 27.284143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487370, 35.602455, 26.941097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197617, 35.326706, 26.943613>,  <37.023766, 35.161259, 26.945122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197617, 35.326706, 26.943613>,  <37.487370, 35.602455, 26.941097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197617, 35.326706, 26.943613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030095, 0.022509, -0.999294,
		0.688740, -0.724061, -0.037052,
		-0.724383, -0.689369, 0.006288,
		36.980301, 35.119896, 26.945499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669884, 35.182220, 26.378750>,  <37.487370, 35.602455, 26.941097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669884, 35.182220, 26.378750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297924, 35.074421, 26.478870>,  <37.074749, 35.009743, 26.538942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297924, 35.074421, 26.478870>,  <37.669884, 35.182220, 26.378750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297924, 35.074421, 26.478870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215963, -0.150793, -0.964687,
		0.297725, -0.951122, 0.082022,
		-0.929904, -0.269498, 0.250302,
		37.018951, 34.993572, 26.553961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577854, 34.647015, 25.950003>,  <37.669884, 35.182220, 26.378750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577854, 34.647015, 25.950003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197689, 34.732841, 26.040041>,  <36.969589, 34.784336, 26.094065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197689, 34.732841, 26.040041>,  <37.577854, 34.647015, 25.950003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197689, 34.732841, 26.040041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261271, -0.158382, -0.952183,
		-0.168655, -0.963782, 0.206589,
		-0.950417, 0.214566, 0.225096,
		36.912563, 34.797211, 26.107569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096119, 34.110428, 25.693007>,  <37.577854, 34.647015, 25.950003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096119, 34.110428, 25.693007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831650, 34.405090, 25.749844>,  <36.672970, 34.581886, 25.783947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831650, 34.405090, 25.749844>,  <37.096119, 34.110428, 25.693007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831650, 34.405090, 25.749844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239308, -0.027576, -0.970552,
		-0.711045, -0.675704, 0.194521,
		-0.661170, 0.736657, 0.142094,
		36.633297, 34.626087, 25.792471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374161, 33.912548, 25.381285>,  <37.096119, 34.110428, 25.693007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374161, 33.912548, 25.381285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406456, 34.309166, 25.421913>,  <36.425835, 34.547138, 25.446289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406456, 34.309166, 25.421913>,  <36.374161, 33.912548, 25.381285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406456, 34.309166, 25.421913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119028, 0.110764, -0.986693,
		-0.989602, 0.067577, 0.126965,
		0.080741, 0.991546, 0.101569,
		36.430679, 34.606628, 25.452383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038754, 34.208477, 24.799427>,  <36.374161, 33.912548, 25.381285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038754, 34.208477, 24.799427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221069, 34.550007, 24.900017>,  <36.330460, 34.754925, 24.960371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221069, 34.550007, 24.900017>,  <36.038754, 34.208477, 24.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221069, 34.550007, 24.900017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109636, 0.334227, -0.936094,
		-0.883311, 0.399089, 0.245946,
		0.455786, 0.853827, 0.251472,
		36.357803, 34.806156, 24.975458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605858, 34.785881, 24.577980>,  <36.038754, 34.208477, 24.799427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605858, 34.785881, 24.577980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984997, 34.913208, 24.584471>,  <36.212479, 34.989605, 24.588366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984997, 34.913208, 24.584471>,  <35.605858, 34.785881, 24.577980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984997, 34.913208, 24.584471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090036, 0.316245, -0.944396,
		-0.305747, 0.893681, 0.328411,
		0.947846, 0.318315, 0.016228,
		36.269352, 35.008701, 24.589338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567623, 35.461662, 24.266434>,  <35.605858, 34.785881, 24.577980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567623, 35.461662, 24.266434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947681, 35.339069, 24.243509>,  <36.175716, 35.265514, 24.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947681, 35.339069, 24.243509>,  <35.567623, 35.461662, 24.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947681, 35.339069, 24.243509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055326, 0.346620, -0.936373,
		0.306848, 0.886523, 0.346297,
		0.950149, -0.306483, -0.057311,
		36.232727, 35.247124, 24.226316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883377, 36.012573, 24.040833>,  <35.567623, 35.461662, 24.266434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883377, 36.012573, 24.040833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120308, 35.700066, 23.962078>,  <36.262466, 35.512562, 23.914825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120308, 35.700066, 23.962078>,  <35.883377, 36.012573, 24.040833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120308, 35.700066, 23.962078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008785, 0.238091, -0.971203,
		0.805652, 0.576996, 0.134164,
		0.592323, -0.781274, -0.196888,
		36.298004, 35.465683, 23.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413788, 36.290058, 23.552820>,  <35.883377, 36.012573, 24.040833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413788, 36.290058, 23.552820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435596, 35.893562, 23.504715>,  <36.448681, 35.655663, 23.475851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435596, 35.893562, 23.504715>,  <36.413788, 36.290058, 23.552820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435596, 35.893562, 23.504715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074574, 0.124148, -0.989458,
		0.995724, 0.044983, 0.080690,
		0.054526, -0.991244, -0.120262,
		36.451954, 35.596188, 23.468636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956646, 36.182297, 23.118601>,  <36.413788, 36.290058, 23.552820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956646, 36.182297, 23.118601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711773, 35.869217, 23.073683>,  <36.564850, 35.681370, 23.046732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711773, 35.869217, 23.073683>,  <36.956646, 36.182297, 23.118601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711773, 35.869217, 23.073683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101170, 0.063316, -0.992852,
		0.784216, -0.619169, 0.040425,
		-0.612184, -0.782701, -0.112295,
		36.528118, 35.634407, 23.039995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326595, 35.694225, 22.864744>,  <36.956646, 36.182297, 23.118601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326595, 35.694225, 22.864744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954350, 35.581402, 22.771446>,  <36.731003, 35.513706, 22.715467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954350, 35.581402, 22.771446>,  <37.326595, 35.694225, 22.864744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954350, 35.581402, 22.771446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230963, 0.041805, -0.972064,
		0.283930, -0.958486, 0.026241,
		-0.930613, -0.282058, -0.233245,
		36.675167, 35.496784, 22.701473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454086, 35.223606, 22.316805>,  <37.326595, 35.694225, 22.864744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454086, 35.223606, 22.316805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073357, 35.339520, 22.276703>,  <36.844917, 35.409065, 22.252642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073357, 35.339520, 22.276703>,  <37.454086, 35.223606, 22.316805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073357, 35.339520, 22.276703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079949, -0.081109, -0.993493,
		-0.296027, -0.953650, 0.054034,
		-0.951828, 0.289781, -0.100253,
		36.787807, 35.426453, 22.246626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086884, 34.774071, 21.750887>,  <37.454086, 35.223606, 22.316805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086884, 34.774071, 21.750887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880440, 35.113926, 21.794247>,  <36.756573, 35.317841, 21.820263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880440, 35.113926, 21.794247>,  <37.086884, 34.774071, 21.750887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880440, 35.113926, 21.794247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045582, 0.099135, -0.994029,
		-0.855311, -0.517965, -0.012436,
		-0.516105, 0.849638, 0.108401,
		36.725609, 35.368816, 21.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506039, 34.754887, 21.311226>,  <37.086884, 34.774071, 21.750887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506039, 34.754887, 21.311226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542389, 35.147953, 21.375866>,  <36.564198, 35.383793, 21.414650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542389, 35.147953, 21.375866>,  <36.506039, 34.754887, 21.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542389, 35.147953, 21.375866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027375, 0.159743, -0.986779,
		-0.995486, 0.094097, -0.012384,
		0.090875, 0.982664, 0.161598,
		36.569653, 35.442753, 21.424345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422272, 34.918282, 20.685822>,  <36.506039, 34.754887, 21.311226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422272, 34.918282, 20.685822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468697, 35.279259, 20.851772>,  <36.496552, 35.495846, 20.951344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468697, 35.279259, 20.851772>,  <36.422272, 34.918282, 20.685822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468697, 35.279259, 20.851772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196726, 0.388538, -0.900187,
		-0.973565, 0.186096, -0.132439,
		0.116064, 0.902444, 0.414877,
		36.503517, 35.549992, 20.976236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035130, 35.323456, 20.246861>,  <36.422272, 34.918282, 20.685822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035130, 35.323456, 20.246861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319935, 35.529587, 20.437637>,  <36.490818, 35.653267, 20.552103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319935, 35.529587, 20.437637>,  <36.035130, 35.323456, 20.246861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319935, 35.529587, 20.437637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317741, 0.369258, -0.873321,
		-0.626164, 0.773359, 0.099174,
		0.712011, 0.515330, 0.476944,
		36.533539, 35.684185, 20.580721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891605, 36.100536, 20.131338>,  <36.035130, 35.323456, 20.246861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891605, 36.100536, 20.131338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281555, 36.056660, 20.208897>,  <36.515526, 36.030334, 20.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281555, 36.056660, 20.208897>,  <35.891605, 36.100536, 20.131338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281555, 36.056660, 20.208897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221724, 0.393316, -0.892267,
		0.021615, 0.912836, 0.407754,
		0.974870, -0.109696, 0.193896,
		36.574017, 36.023750, 20.267065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269150, 36.804359, 20.051466>,  <35.891605, 36.100536, 20.131338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269150, 36.804359, 20.051466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546764, 36.517189, 20.029961>,  <36.713333, 36.344887, 20.017057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546764, 36.517189, 20.029961>,  <36.269150, 36.804359, 20.051466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546764, 36.517189, 20.029961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364864, 0.415134, -0.833389,
		0.620632, 0.558788, 0.550065,
		0.694039, -0.717927, -0.053764,
		36.754974, 36.301811, 20.013832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968437, 37.135284, 20.134750>,  <36.269150, 36.804359, 20.051466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968437, 37.135284, 20.134750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048794, 36.787251, 19.954708>,  <37.097008, 36.578430, 19.846682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048794, 36.787251, 19.954708>,  <36.968437, 37.135284, 20.134750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048794, 36.787251, 19.954708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512204, 0.484959, -0.708846,
		0.835038, -0.088145, 0.543085,
		0.200892, -0.870084, -0.450108,
		37.109062, 36.526226, 19.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743793, 37.102493, 20.042736>,  <36.968437, 37.135284, 20.134750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743793, 37.102493, 20.042736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563004, 36.865379, 19.776106>,  <37.454529, 36.723110, 19.616127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563004, 36.865379, 19.776106>,  <37.743793, 37.102493, 20.042736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563004, 36.865379, 19.776106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546267, 0.406818, -0.732183,
		0.705205, -0.695053, 0.139952,
		-0.451971, -0.592790, -0.666575,
		37.427414, 36.687542, 19.576134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364353, 36.955322, 19.687326>,  <37.743793, 37.102493, 20.042736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364353, 36.955322, 19.687326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050873, 36.875614, 19.452005>,  <37.862785, 36.827789, 19.310814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050873, 36.875614, 19.452005>,  <38.364353, 36.955322, 19.687326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050873, 36.875614, 19.452005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537308, 0.257685, -0.803056,
		0.311622, -0.945457, -0.094879,
		-0.783704, -0.199271, -0.588302,
		37.815762, 36.815834, 19.275515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775234, 36.464272, 19.203608>,  <38.364353, 36.955322, 19.687326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775234, 36.464272, 19.203608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081585, 36.218895, 19.126543>,  <39.265396, 36.071667, 19.080305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081585, 36.218895, 19.126543>,  <38.775234, 36.464272, 19.203608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081585, 36.218895, 19.126543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163315, -0.104216, 0.981054,
		-0.621899, -0.782832, 0.020367,
		0.765878, -0.613443, -0.192660,
		39.311348, 36.034863, 19.068745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703926, 35.740864, 19.518888>,  <38.775234, 36.464272, 19.203608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703926, 35.740864, 19.518888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086319, 35.845955, 19.466625>,  <39.315754, 35.909008, 19.435266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086319, 35.845955, 19.466625>,  <38.703926, 35.740864, 19.518888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086319, 35.845955, 19.466625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201174, -0.262705, 0.943671,
		0.213600, -0.928419, -0.303995,
		0.955983, 0.262724, -0.130660,
		39.373116, 35.924770, 19.427427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124767, 35.179878, 19.798862>,  <38.703926, 35.740864, 19.518888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124767, 35.179878, 19.798862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370495, 35.494812, 19.778006>,  <39.517929, 35.683773, 19.765491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370495, 35.494812, 19.778006>,  <39.124767, 35.179878, 19.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370495, 35.494812, 19.778006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478080, -0.318819, 0.818409,
		0.627737, -0.527692, -0.572265,
		0.614317, 0.787335, -0.052144,
		39.554790, 35.731010, 19.762362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845791, 34.921288, 19.814692>,  <39.124767, 35.179878, 19.798862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845791, 34.921288, 19.814692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890438, 35.304737, 19.919445>,  <39.917229, 35.534805, 19.982298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890438, 35.304737, 19.919445>,  <39.845791, 34.921288, 19.814692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890438, 35.304737, 19.919445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375711, -0.284679, 0.881929,
		0.919990, -0.000049, -0.391941,
		0.111621, 0.958623, 0.261884,
		39.923923, 35.592323, 19.998011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496197, 34.987354, 20.274420>,  <39.845791, 34.921288, 19.814692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496197, 34.987354, 20.274420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280331, 35.317513, 20.340729>,  <40.150810, 35.515610, 20.380514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280331, 35.317513, 20.340729>,  <40.496197, 34.987354, 20.274420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280331, 35.317513, 20.340729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098892, -0.133395, 0.986117,
		0.836054, 0.548562, -0.009637,
		-0.539661, 0.825400, 0.165774,
		40.118431, 35.565132, 20.390461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897530, 35.442219, 20.751232>,  <40.496197, 34.987354, 20.274420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897530, 35.442219, 20.751232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512478, 35.540913, 20.795889>,  <40.281448, 35.600128, 20.822683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512478, 35.540913, 20.795889>,  <40.897530, 35.442219, 20.751232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512478, 35.540913, 20.795889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072585, -0.162102, 0.984101,
		0.260909, 0.955429, 0.138135,
		-0.962631, 0.246734, 0.111644,
		40.223690, 35.614933, 20.829382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884708, 35.815128, 21.412333>,  <40.897530, 35.442219, 20.751232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884708, 35.815128, 21.412333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495052, 35.744789, 21.355576>,  <40.261261, 35.702583, 21.321522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495052, 35.744789, 21.355576>,  <40.884708, 35.815128, 21.412333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495052, 35.744789, 21.355576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137481, -0.037091, 0.989810,
		-0.179321, 0.983718, 0.011956,
		-0.974137, -0.175850, -0.141893,
		40.202812, 35.692036, 21.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496853, 36.202736, 21.930773>,  <40.884708, 35.815128, 21.412333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496853, 36.202736, 21.930773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226452, 35.931374, 21.815681>,  <40.064213, 35.768555, 21.746628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226452, 35.931374, 21.815681>,  <40.496853, 36.202736, 21.930773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226452, 35.931374, 21.815681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365863, -0.029946, 0.930187,
		-0.639661, 0.734076, -0.227961,
		-0.676001, -0.678407, -0.287726,
		40.023651, 35.727852, 21.729364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738514, 36.444538, 22.208994>,  <40.496853, 36.202736, 21.930773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738514, 36.444538, 22.208994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757626, 36.050762, 22.141344>,  <39.769093, 35.814499, 22.100754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757626, 36.050762, 22.141344>,  <39.738514, 36.444538, 22.208994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757626, 36.050762, 22.141344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221382, -0.175542, 0.959258,
		-0.974016, -0.008391, -0.226324,
		0.047779, -0.984436, -0.169123,
		39.771957, 35.755432, 22.090607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263229, 36.123676, 22.627302>,  <39.738514, 36.444538, 22.208994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263229, 36.123676, 22.627302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459301, 35.787735, 22.534031>,  <39.576942, 35.586170, 22.478067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459301, 35.787735, 22.534031>,  <39.263229, 36.123676, 22.627302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459301, 35.787735, 22.534031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242354, -0.388298, 0.889095,
		-0.837252, -0.379302, -0.393877,
		0.490177, -0.839854, -0.233179,
		39.606354, 35.535778, 22.464077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828011, 35.684879, 22.734539>,  <39.263229, 36.123676, 22.627302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828011, 35.684879, 22.734539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179493, 35.500061, 22.782505>,  <39.390385, 35.389168, 22.811285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179493, 35.500061, 22.782505>,  <38.828011, 35.684879, 22.734539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179493, 35.500061, 22.782505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, -0.373242, 0.872501,
		-0.358365, -0.804497, -0.473666,
		0.878717, -0.462034, 0.119923,
		39.443108, 35.361446, 22.818480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595089, 35.094742, 22.854303>,  <38.828011, 35.684879, 22.734539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595089, 35.094742, 22.854303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964485, 35.097549, 23.007729>,  <39.186123, 35.099232, 23.099785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964485, 35.097549, 23.007729>,  <38.595089, 35.094742, 22.854303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964485, 35.097549, 23.007729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360295, -0.327514, 0.873454,
		0.131751, -0.944820, -0.299927,
		0.923487, 0.007016, 0.383564,
		39.241531, 35.099655, 23.122797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675903, 34.492973, 23.434818>,  <38.595089, 35.094742, 22.854303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675903, 34.492973, 23.434818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942219, 34.786705, 23.487713>,  <39.102009, 34.962944, 23.519449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942219, 34.786705, 23.487713>,  <38.675903, 34.492973, 23.434818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942219, 34.786705, 23.487713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019721, -0.194484, 0.980707,
		0.745878, -0.650339, -0.143967,
		0.665791, 0.734327, 0.132236,
		39.141956, 35.007004, 23.527384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193600, 34.219593, 23.873423>,  <38.675903, 34.492973, 23.434818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193600, 34.219593, 23.873423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213249, 34.614120, 23.936361>,  <39.225037, 34.850838, 23.974125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213249, 34.614120, 23.936361>,  <39.193600, 34.219593, 23.873423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213249, 34.614120, 23.936361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053957, -0.159928, 0.985653,
		0.997334, -0.039926, -0.061075,
		0.049120, 0.986321, 0.157348,
		39.227985, 34.910015, 23.983566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844318, 34.408169, 24.230869>,  <39.193600, 34.219593, 23.873423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844318, 34.408169, 24.230869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588234, 34.704334, 24.312759>,  <39.434582, 34.882034, 24.361893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588234, 34.704334, 24.312759>,  <39.844318, 34.408169, 24.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588234, 34.704334, 24.312759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104517, -0.180067, 0.978086,
		0.761055, 0.647579, 0.037895,
		-0.640211, 0.740417, 0.204724,
		39.396172, 34.926460, 24.374176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123772, 34.679321, 24.791439>,  <39.844318, 34.408169, 24.230869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123772, 34.679321, 24.791439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766163, 34.858051, 24.804577>,  <39.551598, 34.965290, 24.812460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766163, 34.858051, 24.804577>,  <40.123772, 34.679321, 24.791439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766163, 34.858051, 24.804577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093243, 0.113854, 0.989112,
		0.438219, 0.887348, -0.143451,
		-0.894019, 0.446824, 0.032846,
		39.497955, 34.992100, 24.814430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167480, 35.282131, 25.097704>,  <40.123772, 34.679321, 24.791439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167480, 35.282131, 25.097704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773197, 35.221066, 25.126205>,  <39.536629, 35.184425, 25.143307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773197, 35.221066, 25.126205>,  <40.167480, 35.282131, 25.097704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773197, 35.221066, 25.126205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017827, 0.326053, 0.945184,
		-0.167526, 0.932944, -0.318671,
		-0.985707, -0.152662, 0.071254,
		39.477486, 35.175266, 25.147581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858620, 35.765408, 25.372965>,  <40.167480, 35.282131, 25.097704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858620, 35.765408, 25.372965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575298, 35.498859, 25.466141>,  <39.405308, 35.338932, 25.522045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575298, 35.498859, 25.466141>,  <39.858620, 35.765408, 25.372965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575298, 35.498859, 25.466141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126319, 0.444303, 0.886927,
		-0.694518, 0.598785, -0.398875,
		-0.708300, -0.666372, 0.232939,
		39.362808, 35.298946, 25.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242203, 36.086948, 25.845718>,  <39.858620, 35.765408, 25.372965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242203, 36.086948, 25.845718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217915, 35.691082, 25.897676>,  <39.203342, 35.453564, 25.928850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217915, 35.691082, 25.897676>,  <39.242203, 36.086948, 25.845718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217915, 35.691082, 25.897676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155871, 0.137939, 0.978099,
		-0.985909, 0.039148, -0.162637,
		-0.060724, -0.989667, 0.129894,
		39.199696, 35.394180, 25.936646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883114, 36.002995, 26.383284>,  <39.242203, 36.086948, 25.845718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883114, 36.002995, 26.383284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027924, 35.630867, 26.359810>,  <39.114811, 35.407589, 26.345726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027924, 35.630867, 26.359810>,  <38.883114, 36.002995, 26.383284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027924, 35.630867, 26.359810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065820, -0.088311, 0.993916,
		-0.929842, -0.355958, -0.093205,
		0.362023, -0.930320, -0.058686,
		39.136532, 35.351772, 26.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385563, 35.528374, 26.697651>,  <38.883114, 36.002995, 26.383284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385563, 35.528374, 26.697651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746075, 35.355431, 26.686666>,  <38.962383, 35.251663, 26.680077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746075, 35.355431, 26.686666>,  <38.385563, 35.528374, 26.697651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746075, 35.355431, 26.686666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067753, -0.203273, 0.976775,
		-0.427899, -0.878491, -0.212500,
		0.901283, -0.432359, -0.027460,
		39.016460, 35.225723, 26.678429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365734, 35.132660, 27.309540>,  <38.385563, 35.528374, 26.697651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365734, 35.132660, 27.309540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760639, 35.152752, 27.249159>,  <38.997581, 35.164806, 27.212931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760639, 35.152752, 27.249159>,  <38.365734, 35.132660, 27.309540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760639, 35.152752, 27.249159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159077, -0.323749, 0.932674,
		-0.002023, -0.944809, -0.327616,
		0.987264, 0.050229, -0.150952,
		39.056820, 35.167820, 27.203873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683636, 34.550266, 27.454826>,  <38.365734, 35.132660, 27.309540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683636, 34.550266, 27.454826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986179, 34.810719, 27.479971>,  <39.167706, 34.966991, 27.495058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986179, 34.810719, 27.479971>,  <38.683636, 34.550266, 27.454826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986179, 34.810719, 27.479971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130064, -0.243868, 0.961047,
		0.641097, -0.718719, -0.269140,
		0.756358, 0.651130, 0.062863,
		39.213085, 35.006058, 27.498831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269253, 34.184559, 27.715811>,  <38.683636, 34.550266, 27.454826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269253, 34.184559, 27.715811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347584, 34.564552, 27.813126>,  <39.394581, 34.792549, 27.871515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347584, 34.564552, 27.813126>,  <39.269253, 34.184559, 27.715811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347584, 34.564552, 27.813126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230948, -0.285788, 0.930048,
		0.953056, -0.125940, -0.275360,
		0.195825, 0.949981, 0.243287,
		39.406330, 34.849548, 27.886112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513374, 34.055210, 28.426378>,  <39.269253, 34.184559, 27.715811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513374, 34.055210, 28.426378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496754, 34.454769, 28.417704>,  <39.486782, 34.694504, 28.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496754, 34.454769, 28.417704>,  <39.513374, 34.055210, 28.426378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496754, 34.454769, 28.417704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017102, 0.020992, 0.999633,
		0.998990, 0.041908, 0.016211,
		-0.041552, 0.998901, -0.021688,
		39.484287, 34.754440, 28.411198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126091, 34.321003, 28.725397>,  <39.513374, 34.055210, 28.426378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126091, 34.321003, 28.725397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856197, 34.615910, 28.739143>,  <39.694263, 34.792854, 28.747391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856197, 34.615910, 28.739143>,  <40.126091, 34.321003, 28.725397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856197, 34.615910, 28.739143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082225, 0.028813, 0.996197,
		0.733469, 0.674991, -0.080063,
		-0.674731, 0.737263, 0.034367,
		39.653778, 34.837090, 28.749453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437981, 34.879086, 29.066540>,  <40.126091, 34.321003, 28.725397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437981, 34.879086, 29.066540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042503, 34.931129, 29.096350>,  <39.805218, 34.962357, 29.114235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042503, 34.931129, 29.096350>,  <40.437981, 34.879086, 29.066540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042503, 34.931129, 29.096350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075449, 0.002194, 0.997147,
		0.129575, 0.991497, -0.011986,
		-0.988695, 0.130110, 0.074523,
		39.745895, 34.970161, 29.118706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399780, 35.427101, 29.541254>,  <40.437981, 34.879086, 29.066540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399780, 35.427101, 29.541254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045937, 35.241276, 29.557472>,  <39.833630, 35.129780, 29.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045937, 35.241276, 29.557472>,  <40.399780, 35.427101, 29.541254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045937, 35.241276, 29.557472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011406, 0.108477, 0.994034,
		-0.466190, 0.878871, -0.101258,
		-0.884611, -0.464563, 0.040546,
		39.780552, 35.101906, 29.569635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871880, 35.864578, 29.835260>,  <40.399780, 35.427101, 29.541254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871880, 35.864578, 29.835260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713284, 35.503529, 29.902275>,  <39.618126, 35.286900, 29.942484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713284, 35.503529, 29.902275>,  <39.871880, 35.864578, 29.835260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713284, 35.503529, 29.902275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217511, 0.084935, 0.972355,
		-0.891901, 0.421967, 0.162655,
		-0.396487, -0.902624, 0.167536,
		39.594337, 35.232742, 29.952536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397728, 35.996342, 30.296125>,  <39.871880, 35.864578, 29.835260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397728, 35.996342, 30.296125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465439, 35.604355, 30.338110>,  <39.506065, 35.369164, 30.363300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465439, 35.604355, 30.338110>,  <39.397728, 35.996342, 30.296125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465439, 35.604355, 30.338110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068955, 0.118015, 0.990615,
		-0.983153, -0.160452, 0.087551,
		0.169278, -0.979963, 0.104963,
		39.516224, 35.310368, 30.369598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115112, 35.814529, 30.940855>,  <39.397728, 35.996342, 30.296125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115112, 35.814529, 30.940855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346729, 35.500023, 30.854603>,  <39.485699, 35.311317, 30.802853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346729, 35.500023, 30.854603>,  <39.115112, 35.814529, 30.940855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346729, 35.500023, 30.854603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143224, -0.162267, 0.976297,
		-0.802618, -0.596202, 0.018653,
		0.579043, -0.786265, -0.215629,
		39.520443, 35.264145, 30.789915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971016, 35.253422, 31.424978>,  <39.115112, 35.814529, 30.940855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971016, 35.253422, 31.424978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341396, 35.193283, 31.286406>,  <39.563625, 35.157200, 31.203262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341396, 35.193283, 31.286406>,  <38.971016, 35.253422, 31.424978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341396, 35.193283, 31.286406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314174, -0.202352, 0.927550,
		-0.209578, -0.967700, -0.140124,
		0.925944, -0.150370, -0.346435,
		39.619183, 35.148182, 31.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059204, 34.649837, 31.693489>,  <38.971016, 35.253422, 31.424978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059204, 34.649837, 31.693489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409489, 34.828510, 31.620159>,  <39.619659, 34.935715, 31.576162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409489, 34.828510, 31.620159>,  <39.059204, 34.649837, 31.693489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409489, 34.828510, 31.620159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303659, -0.214308, 0.928366,
		0.375396, -0.868647, -0.323310,
		0.875710, 0.446681, -0.183322,
		39.672203, 34.962513, 31.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519630, 34.205368, 32.074043>,  <39.059204, 34.649837, 31.693489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519630, 34.205368, 32.074043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742496, 34.528786, 31.998325>,  <39.876217, 34.722836, 31.952894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742496, 34.528786, 31.998325>,  <39.519630, 34.205368, 32.074043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742496, 34.528786, 31.998325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548342, -0.187036, 0.815070,
		0.623612, -0.557924, -0.547566,
		0.557162, 0.808541, -0.189295,
		39.909645, 34.771347, 31.941538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188072, 33.999039, 32.313755>,  <39.519630, 34.205368, 32.074043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188072, 33.999039, 32.313755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174881, 34.398293, 32.293209>,  <40.166965, 34.637844, 32.280880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174881, 34.398293, 32.293209>,  <40.188072, 33.999039, 32.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174881, 34.398293, 32.293209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521195, 0.061029, 0.851253,
		0.852800, 0.001303, -0.522236,
		-0.032980, 0.998135, -0.051366,
		40.164986, 34.697735, 32.277798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832573, 34.330143, 32.466007>,  <40.188072, 33.999039, 32.313755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832573, 34.330143, 32.466007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556908, 34.610306, 32.540287>,  <40.391506, 34.778404, 32.584854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556908, 34.610306, 32.540287>,  <40.832573, 34.330143, 32.466007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556908, 34.610306, 32.540287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300629, 0.043196, 0.952762,
		0.659297, 0.712438, -0.240331,
		-0.689166, 0.700404, 0.185701,
		40.350159, 34.820427, 32.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147179, 34.667339, 32.926807>,  <40.832573, 34.330143, 32.466007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147179, 34.667339, 32.926807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767082, 34.778019, 32.984043>,  <40.539024, 34.844429, 33.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767082, 34.778019, 32.984043>,  <41.147179, 34.667339, 32.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767082, 34.778019, 32.984043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131676, -0.059485, 0.989506,
		0.282310, 0.959113, 0.020090,
		-0.950243, 0.276702, 0.143085,
		40.482010, 34.861031, 33.026970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163956, 35.154037, 33.496998>,  <41.147179, 34.667339, 32.926807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163956, 35.154037, 33.496998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793427, 35.005962, 33.469028>,  <40.571110, 34.917118, 33.452248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793427, 35.005962, 33.469028>,  <41.163956, 35.154037, 33.496998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793427, 35.005962, 33.469028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038789, -0.090899, 0.995104,
		-0.374736, 0.924497, 0.069842,
		-0.926320, -0.370192, -0.069923,
		40.515530, 34.894905, 33.448051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762859, 35.445854, 34.022572>,  <41.163956, 35.154037, 33.496998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762859, 35.445854, 34.022572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577686, 35.105934, 33.921753>,  <40.466583, 34.901981, 33.861263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577686, 35.105934, 33.921753>,  <40.762859, 35.445854, 34.022572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577686, 35.105934, 33.921753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134801, -0.213546, 0.967588,
		-0.876084, 0.481903, -0.015697,
		-0.462932, -0.849804, -0.252046,
		40.438808, 34.850994, 33.846138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377285, 35.420101, 34.613186>,  <40.762859, 35.445854, 34.022572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377285, 35.420101, 34.613186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341755, 35.049671, 34.466492>,  <40.320438, 34.827412, 34.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341755, 35.049671, 34.466492>,  <40.377285, 35.420101, 34.613186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341755, 35.049671, 34.466492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087700, -0.359494, 0.929017,
		-0.992179, 0.114683, -0.049285,
		-0.088825, -0.926073, -0.366740,
		40.315109, 34.771851, 34.356468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814987, 35.174725, 34.869949>,  <40.377285, 35.420101, 34.613186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814987, 35.174725, 34.869949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039707, 34.857395, 34.776127>,  <40.174541, 34.666996, 34.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039707, 34.857395, 34.776127>,  <39.814987, 35.174725, 34.869949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039707, 34.857395, 34.776127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164213, -0.384830, 0.908262,
		-0.810809, -0.471747, -0.346473,
		0.561803, -0.793323, -0.234557,
		40.208248, 34.619400, 34.705761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453300, 34.718155, 35.264252>,  <39.814987, 35.174725, 34.869949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453300, 34.718155, 35.264252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797512, 34.540661, 35.164188>,  <40.004040, 34.434162, 35.104149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797512, 34.540661, 35.164188>,  <39.453300, 34.718155, 35.264252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797512, 34.540661, 35.164188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008624, -0.478332, 0.878137,
		-0.509329, -0.757820, -0.407791,
		0.860528, -0.443744, -0.250163,
		40.055672, 34.407539, 35.089142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350628, 34.022728, 35.494396>,  <39.453300, 34.718155, 35.264252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350628, 34.022728, 35.494396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745514, 34.077595, 35.461933>,  <39.982445, 34.110516, 35.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745514, 34.077595, 35.461933>,  <39.350628, 34.022728, 35.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745514, 34.077595, 35.461933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148461, -0.606158, 0.781365,
		0.057982, -0.783426, -0.618774,
		0.987217, 0.137169, -0.081162,
		40.041679, 34.118744, 35.437584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698483, 33.311443, 35.518330>,  <39.350628, 34.022728, 35.494396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698483, 33.311443, 35.518330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946404, 33.600048, 35.641792>,  <40.095158, 33.773209, 35.715870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946404, 33.600048, 35.641792>,  <39.698483, 33.311443, 35.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946404, 33.600048, 35.641792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255383, -0.557349, 0.790026,
		0.742040, -0.410836, -0.529708,
		0.619803, 0.721509, 0.308655,
		40.132343, 33.816502, 35.734390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327488, 32.963539, 35.476643>,  <39.698483, 33.311443, 35.518330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327488, 32.963539, 35.476643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344780, 33.276600, 35.725025>,  <40.355156, 33.464436, 35.874054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344780, 33.276600, 35.725025>,  <40.327488, 32.963539, 35.476643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344780, 33.276600, 35.725025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436553, -0.573862, 0.692895,
		0.898639, 0.241128, -0.366476,
		0.043230, 0.782649, 0.620960,
		40.357750, 33.511395, 35.911312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964859, 32.827423, 35.805058>,  <40.327488, 32.963539, 35.476643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964859, 32.827423, 35.805058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778770, 33.111576, 36.016312>,  <40.667118, 33.282066, 36.143066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778770, 33.111576, 36.016312>,  <40.964859, 32.827423, 35.805058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778770, 33.111576, 36.016312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495059, -0.285804, 0.820507,
		0.733816, 0.643177, -0.218718,
		-0.465221, 0.710380, 0.528138,
		40.639206, 33.324692, 36.174751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468250, 33.183941, 36.235317>,  <40.964859, 32.827423, 35.805058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468250, 33.183941, 36.235317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122917, 33.286209, 36.409351>,  <40.915718, 33.347569, 36.513771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122917, 33.286209, 36.409351>,  <41.468250, 33.183941, 36.235317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122917, 33.286209, 36.409351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386871, -0.218275, 0.895928,
		0.324028, 0.941801, 0.089532,
		-0.863329, 0.255668, 0.435083,
		40.863918, 33.362911, 36.539875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668293, 33.537758, 36.745426>,  <41.468250, 33.183941, 36.235317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668293, 33.537758, 36.745426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296673, 33.437180, 36.853966>,  <41.073700, 33.376831, 36.919090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296673, 33.437180, 36.853966>,  <41.668293, 33.537758, 36.745426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296673, 33.437180, 36.853966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341072, -0.298138, 0.891506,
		-0.143270, 0.920808, 0.362749,
		-0.929055, -0.251450, 0.271348,
		41.017956, 33.361744, 36.935371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390957, 33.860859, 37.327084>,  <41.668293, 33.537758, 36.745426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390957, 33.860859, 37.327084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200054, 33.509880, 37.307854>,  <41.085514, 33.299294, 37.296318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200054, 33.509880, 37.307854>,  <41.390957, 33.860859, 37.327084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200054, 33.509880, 37.307854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264687, -0.195699, 0.944269,
		-0.837955, 0.437934, 0.325647,
		-0.477256, -0.877449, -0.048072,
		41.056877, 33.246647, 37.293430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859081, 33.780663, 37.832924>,  <41.390957, 33.860859, 37.327084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859081, 33.780663, 37.832924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002159, 33.424252, 37.721123>,  <41.088005, 33.210403, 37.654041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002159, 33.424252, 37.721123>,  <40.859081, 33.780663, 37.832924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002159, 33.424252, 37.721123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210245, -0.214780, 0.953764,
		-0.909865, -0.399916, 0.110510,
		0.357690, -0.891031, -0.279501,
		41.109467, 33.156940, 37.637272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845478, 33.523273, 38.488770>,  <40.859081, 33.780663, 37.832924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845478, 33.523273, 38.488770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009815, 33.234238, 38.266392>,  <41.108418, 33.060818, 38.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009815, 33.234238, 38.266392>,  <40.845478, 33.523273, 38.488770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009815, 33.234238, 38.266392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339151, -0.444895, 0.828882,
		-0.846275, -0.529093, 0.062282,
		0.410846, -0.722585, -0.555946,
		41.133068, 33.017464, 38.099609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580120, 32.953484, 38.740707>,  <40.845478, 33.523273, 38.488770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580120, 32.953484, 38.740707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938667, 32.867580, 38.585583>,  <41.153797, 32.816040, 38.492508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938667, 32.867580, 38.585583>,  <40.580120, 32.953484, 38.740707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938667, 32.867580, 38.585583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249996, -0.477560, 0.842282,
		-0.366090, -0.851948, -0.374382,
		0.896370, -0.214757, -0.387814,
		41.207577, 32.803154, 38.469238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734303, 32.288288, 38.741535>,  <40.580120, 32.953484, 38.740707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734303, 32.288288, 38.741535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118942, 32.395576, 38.718239>,  <41.349724, 32.459949, 38.704262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118942, 32.395576, 38.718239>,  <40.734303, 32.288288, 38.741535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118942, 32.395576, 38.718239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204053, -0.556693, 0.805267,
		0.183564, -0.786226, -0.590045,
		0.961596, 0.268218, -0.058243,
		41.407421, 32.476044, 38.700768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135078, 31.673031, 38.841991>,  <40.734303, 32.288288, 38.741535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135078, 31.673031, 38.841991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397377, 31.972353, 38.882069>,  <41.554756, 32.151947, 38.906116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397377, 31.972353, 38.882069>,  <41.135078, 31.673031, 38.841991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397377, 31.972353, 38.882069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347145, -0.416693, 0.840153,
		0.670441, -0.516143, -0.533015,
		0.655743, 0.748307, 0.100192,
		41.594101, 32.196846, 38.912125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798199, 31.349611, 39.041321>,  <41.135078, 31.673031, 38.841991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798199, 31.349611, 39.041321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810329, 31.727839, 39.170925>,  <41.817608, 31.954775, 39.248688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810329, 31.727839, 39.170925>,  <41.798199, 31.349611, 39.041321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810329, 31.727839, 39.170925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455642, -0.301596, 0.837514,
		0.889646, 0.122232, -0.439987,
		0.030327, 0.945568, 0.324008,
		41.819427, 32.011509, 39.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439415, 31.430731, 39.347576>,  <41.798199, 31.349611, 39.041321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439415, 31.430731, 39.347576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250595, 31.760748, 39.471817>,  <42.137302, 31.958759, 39.546360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250595, 31.760748, 39.471817>,  <42.439415, 31.430731, 39.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250595, 31.760748, 39.471817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397126, -0.115542, 0.910462,
		0.787059, 0.553129, -0.273105,
		-0.472048, 0.825044, 0.310600,
		42.108982, 32.008263, 39.564999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979435, 31.988165, 39.512157>,  <42.439415, 31.430731, 39.347576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979435, 31.988165, 39.512157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639530, 31.998711, 39.722759>,  <42.435585, 32.005039, 39.849121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639530, 31.998711, 39.722759>,  <42.979435, 31.988165, 39.512157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639530, 31.998711, 39.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512142, -0.195418, 0.836375,
		0.124940, 0.980365, 0.152556,
		-0.849765, 0.026367, 0.526502,
		42.384602, 32.006622, 39.880711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206215, 32.151024, 40.141125>,  <42.979435, 31.988165, 39.512157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206215, 32.151024, 40.141125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836563, 32.035870, 40.241615>,  <42.614773, 31.966778, 40.301910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836563, 32.035870, 40.241615>,  <43.206215, 32.151024, 40.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836563, 32.035870, 40.241615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352044, -0.385977, 0.852694,
		-0.148510, 0.876438, 0.458040,
		-0.924127, -0.287884, 0.251223,
		42.559326, 31.949505, 40.316982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957901, 32.552307, 40.701107>,  <43.206215, 32.151024, 40.141125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957901, 32.552307, 40.701107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833195, 32.173290, 40.672928>,  <42.758369, 31.945879, 40.656021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833195, 32.173290, 40.672928>,  <42.957901, 32.552307, 40.701107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833195, 32.173290, 40.672928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529880, -0.234929, 0.814884,
		-0.788689, 0.216724, 0.575327,
		-0.311766, -0.947544, -0.070448,
		42.739666, 31.889027, 40.651794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636497, 32.340481, 41.358482>,  <42.957901, 32.552307, 40.701107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636497, 32.340481, 41.358482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798359, 32.029507, 41.165878>,  <42.895473, 31.842922, 41.050316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798359, 32.029507, 41.165878>,  <42.636497, 32.340481, 41.358482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798359, 32.029507, 41.165878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587160, -0.182793, 0.788562,
		-0.701071, -0.601818, 0.382509,
		0.404651, -0.777432, -0.481515,
		42.919754, 31.796276, 41.021423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585171, 31.597605, 41.717979>,  <42.636497, 32.340481, 41.358482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585171, 31.597605, 41.717979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916077, 31.625519, 41.494999>,  <43.114620, 31.642267, 41.361210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916077, 31.625519, 41.494999>,  <42.585171, 31.597605, 41.717979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916077, 31.625519, 41.494999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542561, -0.356724, 0.760510,
		-0.145786, -0.931600, -0.332969,
		0.827269, 0.069784, -0.557455,
		43.164257, 31.646454, 41.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979168, 30.918577, 41.686001>,  <42.585171, 31.597605, 41.717979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979168, 30.918577, 41.686001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244312, 31.210863, 41.620682>,  <43.403400, 31.386234, 41.581490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244312, 31.210863, 41.620682>,  <42.979168, 30.918577, 41.686001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244312, 31.210863, 41.620682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638006, -0.437094, 0.633954,
		0.391865, -0.524409, -0.755935,
		0.662866, 0.730715, -0.163295,
		43.443172, 31.430079, 41.571693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599613, 30.649958, 41.389263>,  <42.979168, 30.918577, 41.686001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599613, 30.649958, 41.389263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685196, 30.979837, 41.598679>,  <43.736546, 31.177765, 41.724327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685196, 30.979837, 41.598679>,  <43.599613, 30.649958, 41.389263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685196, 30.979837, 41.598679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781726, -0.465939, 0.414494,
		0.585769, 0.320576, -0.744383,
		0.213961, 0.824701, 0.523535,
		43.749386, 31.227247, 41.755737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877583, 31.012691, 40.720875>,  <43.599613, 30.649958, 41.389263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877583, 31.012691, 40.720875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576492, 31.137390, 40.952812>,  <43.395840, 31.212210, 41.091976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576492, 31.137390, 40.952812>,  <43.877583, 31.012691, 40.720875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576492, 31.137390, 40.952812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598254, 0.043706, -0.800113,
		-0.274777, -0.949159, 0.153607,
		-0.752721, 0.311749, 0.579848,
		43.350677, 31.230915, 41.126766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377598, 30.714809, 40.373310>,  <43.877583, 31.012691, 40.720875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377598, 30.714809, 40.373310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245480, 31.037453, 40.569386>,  <43.166206, 31.231039, 40.687031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245480, 31.037453, 40.569386>,  <43.377598, 30.714809, 40.373310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245480, 31.037453, 40.569386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496644, 0.293113, -0.816963,
		-0.802651, -0.513291, 0.303783,
		-0.330297, 0.806608, 0.490191,
		43.146389, 31.279436, 40.716442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613876, 30.715513, 40.316658>,  <43.377598, 30.714809, 40.373310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613876, 30.715513, 40.316658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736214, 31.092342, 40.371742>,  <42.809616, 31.318439, 40.404793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736214, 31.092342, 40.371742>,  <42.613876, 30.715513, 40.316658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736214, 31.092342, 40.371742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793473, 0.332148, -0.509979,
		-0.526178, 0.046699, 0.849092,
		0.305840, 0.942070, 0.137714,
		42.827965, 31.374964, 40.413055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075954, 31.151569, 40.569878>,  <42.613876, 30.715513, 40.316658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075954, 31.151569, 40.569878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333122, 31.378351, 40.363880>,  <42.487423, 31.514421, 40.240280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333122, 31.378351, 40.363880>,  <42.075954, 31.151569, 40.569878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333122, 31.378351, 40.363880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765345, 0.449082, -0.461056,
		-0.030122, 0.690570, 0.722638,
		0.642915, 0.566956, -0.514996,
		42.525997, 31.548437, 40.209381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397758, 31.449657, 40.576721>,  <42.075954, 31.151569, 40.569878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397758, 31.449657, 40.576721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748425, 31.630571, 40.511120>,  <41.958824, 31.739119, 40.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748425, 31.630571, 40.511120>,  <41.397758, 31.449657, 40.576721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748425, 31.630571, 40.511120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427034, 0.574521, -0.698260,
		-0.221585, 0.682177, 0.696803,
		0.876665, 0.452283, -0.164008,
		42.011425, 31.766256, 40.461918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301174, 32.193325, 40.552593>,  <41.397758, 31.449657, 40.576721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301174, 32.193325, 40.552593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640255, 32.121552, 40.352913>,  <41.843704, 32.078487, 40.233105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640255, 32.121552, 40.352913>,  <41.301174, 32.193325, 40.552593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640255, 32.121552, 40.352913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378134, 0.455601, -0.805880,
		0.372034, 0.871913, 0.318367,
		0.847706, -0.179429, -0.499199,
		41.894566, 32.067722, 40.203152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366535, 32.788422, 40.158352>,  <41.301174, 32.193325, 40.552593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366535, 32.788422, 40.158352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638870, 32.542912, 39.998482>,  <41.802273, 32.395607, 39.902561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638870, 32.542912, 39.998482>,  <41.366535, 32.788422, 40.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638870, 32.542912, 39.998482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016034, 0.533061, -0.845925,
		0.732255, 0.582349, 0.353089,
		0.680842, -0.613771, -0.399674,
		41.843124, 32.358780, 39.878578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898911, 33.250919, 39.746731>,  <41.366535, 32.788422, 40.158352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898911, 33.250919, 39.746731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868938, 32.878025, 39.605125>,  <41.850956, 32.654289, 39.520161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868938, 32.878025, 39.605125>,  <41.898911, 33.250919, 39.746731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868938, 32.878025, 39.605125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067308, 0.349478, -0.934524,
		0.994914, -0.093856, 0.036559,
		-0.074934, -0.932232, -0.354018,
		41.846458, 32.598354, 39.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258320, 33.259106, 39.154087>,  <41.898911, 33.250919, 39.746731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258320, 33.259106, 39.154087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039810, 32.928993, 39.096825>,  <41.908703, 32.730927, 39.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039810, 32.928993, 39.096825>,  <42.258320, 33.259106, 39.154087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039810, 32.928993, 39.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100710, 0.234383, -0.966914,
		0.831529, -0.513785, -0.211151,
		-0.546276, -0.825282, -0.143153,
		41.875927, 32.681408, 39.053879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444862, 33.212551, 38.444706>,  <42.258320, 33.259106, 39.154087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444862, 33.212551, 38.444706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134274, 32.973942, 38.525948>,  <41.947918, 32.830776, 38.574692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134274, 32.973942, 38.525948>,  <42.444862, 33.212551, 38.444706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134274, 32.973942, 38.525948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287688, 0.048818, -0.956479,
		0.560646, -0.801110, -0.209518,
		-0.776474, -0.596522, 0.203100,
		41.901333, 32.794987, 38.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431038, 32.670135, 37.964394>,  <42.444862, 33.212551, 38.444706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431038, 32.670135, 37.964394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056541, 32.687077, 38.103916>,  <41.831844, 32.697243, 38.187630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056541, 32.687077, 38.103916>,  <42.431038, 32.670135, 37.964394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056541, 32.687077, 38.103916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349534, -0.011066, -0.936858,
		-0.035830, -0.999041, 0.025168,
		-0.936238, 0.042365, 0.348803,
		41.775669, 32.699783, 38.208557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042561, 32.171570, 37.686543>,  <42.431038, 32.670135, 37.964394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042561, 32.171570, 37.686543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797901, 32.470863, 37.789330>,  <41.651104, 32.650440, 37.851002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797901, 32.470863, 37.789330>,  <42.042561, 32.171570, 37.686543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797901, 32.470863, 37.789330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314052, 0.068478, -0.946933,
		-0.726121, -0.659895, 0.193099,
		-0.611653, 0.748231, 0.256965,
		41.614407, 32.695332, 37.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524471, 31.949553, 37.290653>,  <42.042561, 32.171570, 37.686543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524471, 31.949553, 37.290653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410065, 32.323658, 37.374054>,  <41.341419, 32.548122, 37.424095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410065, 32.323658, 37.374054>,  <41.524471, 31.949553, 37.290653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410065, 32.323658, 37.374054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474635, 0.050744, -0.878719,
		-0.832415, -0.350293, 0.429395,
		-0.286020, 0.935264, 0.208502,
		41.324257, 32.604237, 37.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810226, 31.966156, 37.119926>,  <41.524471, 31.949553, 37.290653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810226, 31.966156, 37.119926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906204, 32.353935, 37.140297>,  <40.963791, 32.586605, 37.152519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906204, 32.353935, 37.140297>,  <40.810226, 31.966156, 37.119926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906204, 32.353935, 37.140297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544723, 0.177870, -0.819536,
		-0.803557, 0.168903, 0.570761,
		0.239943, 0.969451, 0.050923,
		40.978188, 32.644772, 37.155575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205120, 32.407021, 37.008999>,  <40.810226, 31.966156, 37.119926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205120, 32.407021, 37.008999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526417, 32.630516, 36.926430>,  <40.719196, 32.764614, 36.876888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526417, 32.630516, 36.926430>,  <40.205120, 32.407021, 37.008999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526417, 32.630516, 36.926430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365282, 0.188318, -0.911650,
		-0.470499, 0.807681, 0.355362,
		0.803243, 0.558738, -0.206427,
		40.767391, 32.798138, 36.864502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816582, 33.058479, 37.258858>,  <40.205120, 32.407021, 37.008999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816582, 33.058479, 37.258858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191925, 33.165916, 37.171825>,  <40.417130, 33.230377, 37.119606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191925, 33.165916, 37.171825>,  <39.816582, 33.058479, 37.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191925, 33.165916, 37.171825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318842, 0.429439, -0.844939,
		-0.133503, 0.862231, 0.488605,
		0.938359, 0.268590, -0.217584,
		40.473434, 33.246494, 37.106552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818218, 33.719353, 37.181675>,  <39.816582, 33.058479, 37.258858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818218, 33.719353, 37.181675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138416, 33.592968, 36.977959>,  <40.330536, 33.517136, 36.855728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138416, 33.592968, 36.977959>,  <39.818218, 33.719353, 37.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138416, 33.592968, 36.977959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237563, 0.612871, -0.753627,
		0.550247, 0.724262, 0.415538,
		0.800495, -0.315965, -0.509288,
		40.378563, 33.498180, 36.825172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165455, 34.298107, 36.935204>,  <39.818218, 33.719353, 37.181675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165455, 34.298107, 36.935204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330391, 33.995663, 36.731922>,  <40.429352, 33.814198, 36.609955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330391, 33.995663, 36.731922>,  <40.165455, 34.298107, 36.935204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330391, 33.995663, 36.731922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039193, 0.572037, -0.819291,
		0.910184, 0.317912, 0.265511,
		0.412345, -0.756112, -0.508199,
		40.454094, 33.768829, 36.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790768, 34.518204, 36.604889>,  <40.165455, 34.298107, 36.935204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790768, 34.518204, 36.604889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651707, 34.208065, 36.393993>,  <40.568268, 34.021984, 36.267456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651707, 34.208065, 36.393993>,  <40.790768, 34.518204, 36.604889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651707, 34.208065, 36.393993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092667, 0.531146, -0.842197,
		0.933032, -0.341651, -0.112807,
		-0.347655, -0.775344, -0.527236,
		40.547409, 33.975460, 36.235821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239292, 34.468193, 36.050831>,  <40.790768, 34.518204, 36.604889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239292, 34.468193, 36.050831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893547, 34.287102, 35.963276>,  <40.686100, 34.178448, 35.910744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893547, 34.287102, 35.963276>,  <41.239292, 34.468193, 36.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893547, 34.287102, 35.963276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008579, 0.448488, -0.893748,
		0.502796, -0.770644, -0.391540,
		-0.864362, -0.452732, -0.218887,
		40.634239, 34.151283, 35.897610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254238, 34.388081, 35.309830>,  <41.239292, 34.468193, 36.050831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254238, 34.388081, 35.309830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869331, 34.292206, 35.361359>,  <40.638386, 34.234680, 35.392277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869331, 34.292206, 35.361359>,  <41.254238, 34.388081, 35.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869331, 34.292206, 35.361359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168989, 0.155348, -0.973298,
		0.213274, -0.958341, -0.189990,
		-0.962266, -0.239685, 0.128817,
		40.580650, 34.220303, 35.400005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224556, 33.798180, 34.875259>,  <41.254238, 34.388081, 35.309830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224556, 33.798180, 34.875259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880539, 33.997269, 34.920143>,  <40.674129, 34.116722, 34.947075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880539, 33.997269, 34.920143>,  <41.224556, 33.798180, 34.875259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880539, 33.997269, 34.920143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018844, 0.188793, -0.981836,
		-0.509867, -0.846539, -0.152992,
		-0.860047, 0.497723, 0.112211,
		40.622524, 34.146584, 34.953808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803516, 33.522823, 34.397495>,  <41.224556, 33.798180, 34.875259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803516, 33.522823, 34.397495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649311, 33.880981, 34.486629>,  <40.556789, 34.095875, 34.540108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649311, 33.880981, 34.486629>,  <40.803516, 33.522823, 34.397495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649311, 33.880981, 34.486629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154235, 0.175568, -0.972310,
		-0.909722, -0.409203, 0.070418,
		-0.385509, 0.895393, 0.222832,
		40.533657, 34.149601, 34.553478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180767, 33.692116, 33.875622>,  <40.803516, 33.522823, 34.397495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180767, 33.692116, 33.875622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090923, 34.040119, 33.700062>,  <41.037018, 34.248920, 33.594727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090923, 34.040119, 33.700062>,  <41.180767, 33.692116, 33.875622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090923, 34.040119, 33.700062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771674, 0.433846, 0.465078,
		0.595037, -0.234224, -0.768811,
		-0.224613, 0.870010, -0.438899,
		41.023540, 34.301121, 33.568394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745865, 33.777298, 33.291348>,  <41.180767, 33.692116, 33.875622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745865, 33.777298, 33.291348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553738, 34.065037, 33.492077>,  <41.438461, 34.237682, 33.612514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553738, 34.065037, 33.492077>,  <41.745865, 33.777298, 33.291348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553738, 34.065037, 33.492077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854437, 0.254560, 0.452921,
		0.198065, 0.646323, -0.736910,
		-0.480321, 0.719350, 0.501823,
		41.409641, 34.280842, 33.642624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104061, 34.333202, 33.235424>,  <41.745865, 33.777298, 33.291348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104061, 34.333202, 33.235424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907993, 34.387020, 33.579895>,  <41.790352, 34.419312, 33.786579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907993, 34.387020, 33.579895>,  <42.104061, 34.333202, 33.235424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907993, 34.387020, 33.579895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866394, 0.183304, 0.464502,
		-0.095362, 0.973806, -0.206417,
		-0.490172, 0.134542, 0.861180,
		41.760941, 34.427383, 33.838249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570278, 34.686523, 33.666649>,  <42.104061, 34.333202, 33.235424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570278, 34.686523, 33.666649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313633, 34.572807, 33.951607>,  <42.159645, 34.504578, 34.122581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313633, 34.572807, 33.951607>,  <42.570278, 34.686523, 33.666649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313633, 34.572807, 33.951607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747362, -0.022741, 0.664028,
		-0.172577, 0.958468, 0.227059,
		-0.641613, -0.284291, 0.712398,
		42.121147, 34.487518, 34.165325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823673, 34.996979, 34.299332>,  <42.570278, 34.686523, 33.666649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823673, 34.996979, 34.299332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575272, 34.697994, 34.393692>,  <42.426231, 34.518604, 34.450310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575272, 34.697994, 34.393692>,  <42.823673, 34.996979, 34.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575272, 34.697994, 34.393692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599819, -0.259457, 0.756901,
		-0.504548, 0.611541, 0.609467,
		-0.621006, -0.747462, 0.235905,
		42.388969, 34.473755, 34.464462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836773, 35.500797, 34.959412>,  <42.823673, 34.996979, 34.299332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836773, 35.500797, 34.959412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127598, 35.283020, 35.126728>,  <43.302094, 35.152355, 35.227119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127598, 35.283020, 35.126728>,  <42.836773, 35.500797, 34.959412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127598, 35.283020, 35.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684278, 0.524825, -0.506282,
		0.056108, 0.654327, 0.754127,
		0.727059, -0.544440, 0.418295,
		43.345715, 35.119690, 35.252216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419273, 36.028439, 34.985836>,  <42.836773, 35.500797, 34.959412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419273, 36.028439, 34.985836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520119, 35.645012, 35.038883>,  <43.580627, 35.414955, 35.070709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520119, 35.645012, 35.038883>,  <43.419273, 36.028439, 34.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520119, 35.645012, 35.038883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787159, 0.123437, -0.604271,
		0.562865, 0.256736, 0.785665,
		0.252118, -0.958567, 0.132614,
		43.595753, 35.357441, 35.078667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037506, 35.968533, 35.233738>,  <43.419273, 36.028439, 34.985836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037506, 35.968533, 35.233738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971066, 35.638767, 35.017311>,  <43.931202, 35.440907, 34.887455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971066, 35.638767, 35.017311>,  <44.037506, 35.968533, 35.233738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971066, 35.638767, 35.017311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871226, 0.134337, -0.472142,
		0.461926, -0.549815, 0.695937,
		-0.166101, -0.824413, -0.541067,
		43.921234, 35.391445, 34.854992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677414, 35.625515, 35.344715>,  <44.037506, 35.968533, 35.233738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677414, 35.625515, 35.344715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513531, 35.498783, 35.002544>,  <44.415203, 35.422745, 34.797241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513531, 35.498783, 35.002544>,  <44.677414, 35.625515, 35.344715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513531, 35.498783, 35.002544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744392, 0.425916, -0.514273,
		0.527277, -0.847476, 0.061345,
		-0.409706, -0.316829, -0.855430,
		44.390617, 35.403736, 34.745914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236290, 35.376926, 34.991226>,  <44.677414, 35.625515, 35.344715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236290, 35.376926, 34.991226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945698, 35.491432, 34.741337>,  <44.771343, 35.560135, 34.591404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945698, 35.491432, 34.741337>,  <45.236290, 35.376926, 34.991226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945698, 35.491432, 34.741337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684551, 0.381063, -0.621435,
		0.060165, -0.879115, -0.472796,
		-0.726478, 0.286264, -0.624726,
		44.727753, 35.577312, 34.553921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431156, 35.193249, 34.274487>,  <45.236290, 35.376926, 34.991226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431156, 35.193249, 34.274487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172764, 35.498592, 34.274506>,  <45.017731, 35.681797, 34.274517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172764, 35.498592, 34.274506>,  <45.431156, 35.193249, 34.274487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172764, 35.498592, 34.274506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570411, 0.482739, -0.664526,
		-0.507292, -0.429244, -0.747265,
		-0.645978, 0.763356, 0.000044,
		44.978970, 35.727600, 34.274517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420441, 35.262779, 33.581409>,  <45.431156, 35.193249, 34.274487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420441, 35.262779, 33.581409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302345, 35.591488, 33.776356>,  <45.231487, 35.788712, 33.893322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302345, 35.591488, 33.776356>,  <45.420441, 35.262779, 33.581409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302345, 35.591488, 33.776356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554063, 0.562833, -0.613378,
		-0.778361, 0.088934, -0.621486,
		-0.295243, 0.821772, 0.487362,
		45.213772, 35.838020, 33.922565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943607, 35.435444, 33.035156>,  <45.420441, 35.262779, 33.581409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943607, 35.435444, 33.035156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027405, 35.151581, 32.766087>,  <45.077682, 34.981262, 32.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027405, 35.151581, 32.766087>,  <44.943607, 35.435444, 33.035156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027405, 35.151581, 32.766087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784932, -0.288188, 0.548480,
		-0.583092, -0.642908, 0.496662,
		0.209490, -0.709660, -0.672679,
		45.090252, 34.938683, 32.564281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738731, 34.749100, 33.223812>,  <44.943607, 35.435444, 33.035156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738731, 34.749100, 33.223812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072830, 34.776703, 33.005604>,  <45.273293, 34.793262, 32.874680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072830, 34.776703, 33.005604>,  <44.738731, 34.749100, 33.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072830, 34.776703, 33.005604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520079, -0.421251, 0.743011,
		-0.178528, -0.904315, -0.387740,
		0.835252, 0.069007, -0.545520,
		45.323406, 34.797405, 32.841949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182228, 34.067932, 33.124508>,  <44.738731, 34.749100, 33.223812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182228, 34.067932, 33.124508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429962, 34.381973, 33.126850>,  <45.578602, 34.570400, 33.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429962, 34.381973, 33.126850>,  <45.182228, 34.067932, 33.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429962, 34.381973, 33.126850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621549, -0.494839, 0.607299,
		0.479693, -0.372479, -0.794452,
		0.619332, 0.785108, 0.005857,
		45.615761, 34.617504, 33.128609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840389, 33.783638, 33.258430>,  <45.182228, 34.067932, 33.124508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840389, 33.783638, 33.258430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941898, 34.160736, 33.344994>,  <46.002804, 34.386993, 33.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941898, 34.160736, 33.344994>,  <45.840389, 33.783638, 33.258430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941898, 34.160736, 33.344994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753668, -0.332957, 0.566678,
		0.606286, 0.019289, -0.795013,
		0.253774, 0.942745, 0.216405,
		46.018032, 34.443558, 33.409916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439342, 33.948582, 33.147678>,  <45.840389, 33.783638, 33.258430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439342, 33.948582, 33.147678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353477, 34.190685, 33.454292>,  <46.301960, 34.335949, 33.638260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353477, 34.190685, 33.454292>,  <46.439342, 33.948582, 33.147678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353477, 34.190685, 33.454292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788291, -0.356004, 0.501856,
		0.576644, 0.711984, -0.400700,
		-0.214663, 0.605260, 0.766538,
		46.289078, 34.372265, 33.684254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116268, 34.349556, 33.320538>,  <46.439342, 33.948582, 33.147678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116268, 34.349556, 33.320538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878361, 34.248596, 33.625835>,  <46.735615, 34.188019, 33.809013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878361, 34.248596, 33.625835>,  <47.116268, 34.349556, 33.320538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878361, 34.248596, 33.625835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755387, -0.500292, 0.423199,
		0.275028, 0.828251, 0.488220,
		-0.594768, -0.252404, 0.763245,
		46.699932, 34.172874, 33.854809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.327770, 34.668533, 33.985767>,  <47.116268, 34.349556, 33.320538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.327770, 34.668533, 33.985767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140343, 34.321037, 34.049927>,  <47.027885, 34.112541, 34.088425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140343, 34.321037, 34.049927>,  <47.327770, 34.668533, 33.985767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140343, 34.321037, 34.049927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846630, -0.389735, 0.362386,
		-0.252305, 0.305606, 0.918122,
		-0.468572, -0.868741, 0.160403,
		46.999771, 34.060413, 34.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170471, 34.545708, 34.789238>,  <47.327770, 34.668533, 33.985767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170471, 34.545708, 34.789238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225231, 34.237442, 34.540295>,  <47.258087, 34.052483, 34.390930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225231, 34.237442, 34.540295>,  <47.170471, 34.545708, 34.789238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225231, 34.237442, 34.540295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851033, -0.230033, 0.472047,
		-0.506954, -0.594271, 0.624372,
		0.136898, -0.770667, -0.622360,
		47.266300, 34.006241, 34.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631516, 34.896465, 35.120777>,  <47.170471, 34.545708, 34.789238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631516, 34.896465, 35.120777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798401, 34.978134, 34.766544>,  <47.898533, 35.027138, 34.554005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798401, 34.978134, 34.766544>,  <47.631516, 34.896465, 35.120777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798401, 34.978134, 34.766544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225140, 0.920843, 0.318371,
		0.880481, -0.332207, 0.338219,
		0.417212, 0.204173, -0.885578,
		47.923565, 35.039387, 34.500870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.846241, 30.670668, 25.309198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628349, 30.368633, 25.163260>,  <38.497612, 30.187412, 25.075697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628349, 30.368633, 25.163260>,  <38.846241, 30.670668, 25.309198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628349, 30.368633, 25.163260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319885, -0.215074, 0.922723,
		-0.775203, 0.619346, -0.124383,
		-0.544733, -0.755085, -0.364846,
		38.464928, 30.142107, 25.053806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174034, 30.747179, 25.595299>,  <38.846241, 30.670668, 25.309198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174034, 30.747179, 25.595299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203548, 30.358162, 25.507011>,  <38.221256, 30.124752, 25.454039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203548, 30.358162, 25.507011>,  <38.174034, 30.747179, 25.595299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203548, 30.358162, 25.507011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313293, -0.232721, 0.920700,
		-0.946786, 0.001218, -0.321861,
		0.073782, -0.972543, -0.220718,
		38.225681, 30.066399, 25.440796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797211, 30.510391, 26.029604>,  <38.174034, 30.747179, 25.595299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797211, 30.510391, 26.029604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937134, 30.144070, 25.950678>,  <38.021088, 29.924276, 25.903322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937134, 30.144070, 25.950678>,  <37.797211, 30.510391, 26.029604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937134, 30.144070, 25.950678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113504, -0.250500, 0.961440,
		-0.929920, -0.313924, -0.191575,
		0.349809, -0.915806, -0.197313,
		38.042076, 29.869328, 25.891483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354469, 29.885742, 26.345631>,  <37.797211, 30.510391, 26.029604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354469, 29.885742, 26.345631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736626, 29.776167, 26.301458>,  <37.965919, 29.710423, 26.274956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736626, 29.776167, 26.301458>,  <37.354469, 29.885742, 26.345631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736626, 29.776167, 26.301458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004256, -0.386615, 0.922231,
		-0.295323, -0.880619, -0.370533,
		0.955388, -0.273933, -0.110428,
		38.023243, 29.693987, 26.268330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318874, 29.340284, 26.662996>,  <37.354469, 29.885742, 26.345631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318874, 29.340284, 26.662996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714958, 29.395952, 26.658607>,  <37.952606, 29.429354, 26.655975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714958, 29.395952, 26.658607>,  <37.318874, 29.340284, 26.662996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714958, 29.395952, 26.658607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058767, -0.344260, 0.937033,
		0.126631, -0.928502, -0.349068,
		0.990208, 0.139171, -0.010971,
		38.012020, 29.437704, 26.655315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524456, 28.773790, 26.997860>,  <37.318874, 29.340284, 26.662996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524456, 28.773790, 26.997860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816879, 29.046320, 27.012545>,  <37.992332, 29.209837, 27.021355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816879, 29.046320, 27.012545>,  <37.524456, 28.773790, 26.997860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816879, 29.046320, 27.012545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124958, -0.186584, 0.974460,
		0.670773, -0.707802, -0.221541,
		0.731060, 0.681325, 0.036710,
		38.036198, 29.250717, 27.023558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998409, 28.562107, 27.489103>,  <37.524456, 28.773790, 26.997860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998409, 28.562107, 27.489103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043728, 28.958687, 27.463217>,  <38.070919, 29.196634, 27.447685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043728, 28.958687, 27.463217>,  <37.998409, 28.562107, 27.489103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043728, 28.958687, 27.463217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168376, 0.045033, 0.984694,
		0.979190, -0.122460, -0.161834,
		0.113298, 0.991451, -0.064715,
		38.077717, 29.256123, 27.443802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555756, 28.794563, 27.856436>,  <37.998409, 28.562107, 27.489103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555756, 28.794563, 27.856436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364391, 29.145273, 27.836884>,  <38.249573, 29.355700, 27.825151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364391, 29.145273, 27.836884>,  <38.555756, 28.794563, 27.856436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364391, 29.145273, 27.836884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133204, 0.127478, 0.982856,
		0.867976, 0.463695, -0.177776,
		-0.478408, 0.876776, -0.048882,
		38.220871, 29.408306, 27.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966564, 29.308472, 28.406771>,  <38.555756, 28.794563, 27.856436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966564, 29.308472, 28.406771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628674, 29.513700, 28.345842>,  <38.425941, 29.636837, 28.309284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628674, 29.513700, 28.345842>,  <38.966564, 29.308472, 28.406771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628674, 29.513700, 28.345842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087438, 0.148483, 0.985042,
		0.528014, 0.845405, -0.080565,
		-0.844722, 0.513072, -0.152322,
		38.375256, 29.667622, 28.300146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095009, 29.877756, 28.745316>,  <38.966564, 29.308472, 28.406771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095009, 29.877756, 28.745316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697861, 29.870083, 28.698252>,  <38.459572, 29.865479, 28.670013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697861, 29.870083, 28.698252>,  <39.095009, 29.877756, 28.745316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697861, 29.870083, 28.698252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119132, 0.195597, 0.973422,
		0.004339, 0.980497, -0.196487,
		-0.992869, -0.019185, -0.117657,
		38.400002, 29.864328, 28.662954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848431, 30.484333, 29.028866>,  <39.095009, 29.877756, 28.745316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848431, 30.484333, 29.028866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511856, 30.269880, 29.055859>,  <38.309914, 30.141209, 29.072054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511856, 30.269880, 29.055859>,  <38.848431, 30.484333, 29.028866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511856, 30.269880, 29.055859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120307, 0.307618, 0.943874,
		-0.526797, 0.786089, -0.323341,
		-0.841434, -0.536130, 0.067481,
		38.259426, 30.109041, 29.076103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217453, 30.836529, 29.435024>,  <38.848431, 30.484333, 29.028866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217453, 30.836529, 29.435024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087040, 30.458405, 29.431211>,  <38.008793, 30.231531, 29.428923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087040, 30.458405, 29.431211>,  <38.217453, 30.836529, 29.435024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087040, 30.458405, 29.431211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273637, 0.084714, 0.958095,
		-0.904889, 0.314983, -0.286291,
		-0.326036, -0.945309, -0.009534,
		37.989227, 30.174812, 29.428350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565147, 30.863543, 29.713667>,  <38.217453, 30.836529, 29.435024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565147, 30.863543, 29.713667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694515, 30.490782, 29.779352>,  <37.772137, 30.267126, 29.818764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694515, 30.490782, 29.779352>,  <37.565147, 30.863543, 29.713667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694515, 30.490782, 29.779352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317140, 0.056752, 0.946679,
		-0.891529, -0.358248, -0.277188,
		0.323415, -0.931900, 0.164211,
		37.791538, 30.211212, 29.828615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101719, 30.670719, 30.130234>,  <37.565147, 30.863543, 29.713667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101719, 30.670719, 30.130234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382374, 30.391182, 30.185846>,  <37.550766, 30.223459, 30.219213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382374, 30.391182, 30.185846>,  <37.101719, 30.670719, 30.130234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382374, 30.391182, 30.185846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141428, 0.054653, 0.988439,
		-0.698362, -0.713184, -0.060489,
		0.701633, -0.698843, 0.139032,
		37.592865, 30.181528, 30.227556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809944, 30.064930, 30.588907>,  <37.101719, 30.670719, 30.130234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809944, 30.064930, 30.588907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208172, 30.099350, 30.604082>,  <37.447109, 30.120003, 30.613188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208172, 30.099350, 30.604082>,  <36.809944, 30.064930, 30.588907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208172, 30.099350, 30.604082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038995, 0.010650, 0.999183,
		0.085580, -0.996234, 0.013959,
		0.995568, 0.086055, 0.037937,
		37.506844, 30.125166, 30.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830818, 29.753614, 31.229959>,  <36.809944, 30.064930, 30.588907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830818, 29.753614, 31.229959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198589, 29.894428, 31.159842>,  <37.419250, 29.978916, 31.117771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198589, 29.894428, 31.159842>,  <36.830818, 29.753614, 31.229959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198589, 29.894428, 31.159842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215400, -0.077859, 0.973417,
		0.329028, -0.932743, -0.147413,
		0.919426, 0.352035, -0.175295,
		37.474419, 30.000038, 31.107254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329365, 29.300089, 31.602758>,  <36.830818, 29.753614, 31.229959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329365, 29.300089, 31.602758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532566, 29.639277, 31.542253>,  <37.654488, 29.842789, 31.505951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532566, 29.639277, 31.542253>,  <37.329365, 29.300089, 31.602758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532566, 29.639277, 31.542253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340784, -0.036583, 0.939430,
		0.791075, -0.528780, -0.307559,
		0.508003, 0.847970, -0.151260,
		37.684967, 29.893667, 31.496876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935852, 29.233158, 31.895077>,  <37.329365, 29.300089, 31.602758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935852, 29.233158, 31.895077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943550, 29.632315, 31.870283>,  <37.948170, 29.871809, 31.855408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943550, 29.632315, 31.870283>,  <37.935852, 29.233158, 31.895077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943550, 29.632315, 31.870283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413944, 0.048478, 0.909011,
		0.910099, -0.043153, -0.412138,
		0.019246, 0.997892, -0.061983,
		37.949326, 29.931683, 31.851688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678299, 29.432384, 31.917898>,  <37.935852, 29.233158, 31.895077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678299, 29.432384, 31.917898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479134, 29.769804, 31.998404>,  <38.359634, 29.972256, 32.046707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479134, 29.769804, 31.998404>,  <38.678299, 29.432384, 31.917898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479134, 29.769804, 31.998404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607035, 0.173263, 0.775557,
		0.619350, 0.508332, -0.598334,
		-0.497910, 0.843551, 0.201265,
		38.329762, 30.022869, 32.058784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184559, 29.908577, 32.151093>,  <38.678299, 29.432384, 31.917898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184559, 29.908577, 32.151093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849480, 30.084110, 32.281128>,  <38.648430, 30.189430, 32.359150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849480, 30.084110, 32.281128>,  <39.184559, 29.908577, 32.151093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849480, 30.084110, 32.281128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470416, 0.277425, 0.837702,
		0.277425, 0.854670, -0.438834,
		-0.837702, 0.438834, 0.325085,
		38.598167, 30.215761, 32.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343018, 30.597296, 32.366215>,  <39.184559, 29.908577, 32.151093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343018, 30.597296, 32.366215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008617, 30.498903, 32.562416>,  <38.807976, 30.439869, 32.680138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008617, 30.498903, 32.562416>,  <39.343018, 30.597296, 32.366215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008617, 30.498903, 32.562416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352372, 0.444577, 0.823520,
		-0.420637, 0.861304, -0.284991,
		-0.836002, -0.245980, 0.490505,
		38.757816, 30.425110, 32.709568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137341, 31.279785, 32.714840>,  <39.343018, 30.597296, 32.366215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137341, 31.279785, 32.714840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004452, 30.942638, 32.884171>,  <38.924721, 30.740351, 32.985771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004452, 30.942638, 32.884171>,  <39.137341, 31.279785, 32.714840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004452, 30.942638, 32.884171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472000, 0.240018, 0.848297,
		-0.816607, 0.481632, 0.318094,
		-0.332219, -0.842865, 0.423331,
		38.904785, 30.689779, 33.011169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795742, 31.277172, 33.160404>,  <39.137341, 31.279785, 32.714840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795742, 31.277172, 33.160404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.070499, 31.561697, 33.220013>,  <40.235355, 31.732412, 33.255775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.070499, 31.561697, 33.220013>,  <39.795742, 31.277172, 33.160404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070499, 31.561697, 33.220013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217632, -0.005688, -0.976014,
		-0.693406, 0.702851, -0.158711,
		0.686895, 0.711314, 0.149019,
		40.276569, 31.775091, 33.264717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692917, 31.935717, 32.766335>,  <39.795742, 31.277172, 33.160404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692917, 31.935717, 32.766335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083122, 31.933954, 32.854301>,  <40.317245, 31.932898, 32.907082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083122, 31.933954, 32.854301>,  <39.692917, 31.935717, 32.766335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083122, 31.933954, 32.854301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219644, 0.072839, -0.972857,
		-0.011732, 0.997334, 0.072023,
		0.975510, -0.004406, 0.219913,
		40.375774, 31.932632, 32.920277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035446, 32.610920, 32.519897>,  <39.692917, 31.935717, 32.766335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035446, 32.610920, 32.519897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317722, 32.327709, 32.530479>,  <40.487087, 32.157784, 32.536827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317722, 32.327709, 32.530479>,  <40.035446, 32.610920, 32.519897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317722, 32.327709, 32.530479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221210, 0.184700, -0.957576,
		0.673105, 0.681602, 0.286964,
		0.705688, -0.708028, 0.026455,
		40.529430, 32.115299, 32.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596279, 32.831150, 32.220474>,  <40.035446, 32.610920, 32.519897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596279, 32.831150, 32.220474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.653248, 32.438934, 32.166412>,  <40.687428, 32.203606, 32.133976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.653248, 32.438934, 32.166412>,  <40.596279, 32.831150, 32.220474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653248, 32.438934, 32.166412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134153, 0.154406, -0.978857,
		0.980673, 0.121276, 0.153532,
		0.142418, -0.980536, -0.135152,
		40.695972, 32.144775, 32.125866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165405, 32.786591, 31.796272>,  <40.596279, 32.831150, 32.220474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165405, 32.786591, 31.796272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.019543, 32.415195, 31.768162>,  <40.932026, 32.192360, 31.751295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.019543, 32.415195, 31.768162>,  <41.165405, 32.786591, 31.796272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019543, 32.415195, 31.768162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195804, -0.002674, -0.980639,
		0.910323, -0.371355, 0.182777,
		-0.364654, -0.928487, -0.070278,
		40.910145, 32.136650, 31.747078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556988, 32.447121, 31.288567>,  <41.165405, 32.786591, 31.796272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556988, 32.447121, 31.288567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.227291, 32.221241, 31.305231>,  <41.029472, 32.085712, 31.315229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.227291, 32.221241, 31.305231>,  <41.556988, 32.447121, 31.288567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227291, 32.221241, 31.305231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035481, -0.124941, -0.991529,
		0.565125, -0.815782, 0.123017,
		-0.824242, -0.564703, 0.041662,
		40.980019, 32.051830, 31.317730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714996, 31.936909, 30.839960>,  <41.556988, 32.447121, 31.288567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714996, 31.936909, 30.839960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317841, 31.916555, 30.882992>,  <41.079548, 31.904345, 30.908812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317841, 31.916555, 30.882992>,  <41.714996, 31.936909, 30.839960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317841, 31.916555, 30.882992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085574, -0.322951, -0.942539,
		0.082702, -0.945047, 0.316302,
		-0.992894, -0.050882, 0.107580,
		41.019974, 31.901291, 30.915266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474545, 31.336370, 30.605549>,  <41.714996, 31.936909, 30.839960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474545, 31.336370, 30.605549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154732, 31.572712, 30.562399>,  <40.962845, 31.714518, 30.536509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154732, 31.572712, 30.562399>,  <41.474545, 31.336370, 30.605549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154732, 31.572712, 30.562399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097089, -0.304381, -0.947589,
		-0.592723, -0.747156, 0.300728,
		-0.799533, 0.590855, -0.107873,
		40.914871, 31.749968, 30.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076962, 30.893877, 30.189861>,  <41.474545, 31.336370, 30.605549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076962, 30.893877, 30.189861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920658, 31.261393, 30.167490>,  <40.826874, 31.481903, 30.154068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920658, 31.261393, 30.167490>,  <41.076962, 30.893877, 30.189861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920658, 31.261393, 30.167490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099751, -0.102669, -0.989701,
		-0.915071, -0.381160, 0.131770,
		-0.390763, 0.918791, -0.055928,
		40.803429, 31.537029, 30.150711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632504, 30.776085, 29.641592>,  <41.076962, 30.893877, 30.189861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632504, 30.776085, 29.641592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613895, 31.174097, 29.676811>,  <40.602730, 31.412905, 29.697943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613895, 31.174097, 29.676811>,  <40.632504, 30.776085, 29.641592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613895, 31.174097, 29.676811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271438, 0.072233, -0.959742,
		-0.961331, -0.068550, 0.266728,
		-0.046523, 0.995029, 0.088047,
		40.599937, 31.472607, 29.703226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915291, 31.063528, 29.529837>,  <40.632504, 30.776085, 29.641592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915291, 31.063528, 29.529837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218548, 31.304947, 29.431080>,  <40.400501, 31.449799, 29.371826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218548, 31.304947, 29.431080>,  <39.915291, 31.063528, 29.529837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218548, 31.304947, 29.431080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349456, 0.056383, -0.935255,
		-0.550551, 0.795330, 0.253660,
		0.758138, 0.603549, -0.246891,
		40.445988, 31.486012, 29.357012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654408, 31.367947, 28.910648>,  <39.915291, 31.063528, 29.529837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654408, 31.367947, 28.910648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044319, 31.451056, 28.878048>,  <40.278267, 31.500921, 28.858488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044319, 31.451056, 28.878048>,  <39.654408, 31.367947, 28.910648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044319, 31.451056, 28.878048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076363, -0.032635, -0.996546,
		-0.209715, 0.977633, -0.015946,
		0.974776, 0.207773, -0.081499,
		40.336754, 31.513388, 28.853598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771053, 31.966055, 28.397329>,  <39.654408, 31.367947, 28.910648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771053, 31.966055, 28.397329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121101, 31.774523, 28.425306>,  <40.331131, 31.659603, 28.442093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121101, 31.774523, 28.425306>,  <39.771053, 31.966055, 28.397329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121101, 31.774523, 28.425306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134112, 0.101114, -0.985794,
		0.464957, 0.872064, 0.152704,
		0.875116, -0.478831, 0.069940,
		40.383636, 31.630873, 28.446289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180119, 32.340969, 28.123482>,  <39.771053, 31.966055, 28.397329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180119, 32.340969, 28.123482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387081, 31.999874, 28.094839>,  <40.511261, 31.795218, 28.077654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387081, 31.999874, 28.094839>,  <40.180119, 32.340969, 28.123482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387081, 31.999874, 28.094839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000297, 0.083855, -0.996478,
		0.855738, 0.515566, 0.043640,
		0.517410, -0.852737, -0.071605,
		40.542305, 31.744053, 28.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677631, 32.570263, 27.751705>,  <40.180119, 32.340969, 28.123482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677631, 32.570263, 27.751705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674202, 32.171089, 27.726263>,  <40.672142, 31.931583, 27.710999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674202, 32.171089, 27.726263>,  <40.677631, 32.570263, 27.751705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674202, 32.171089, 27.726263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165138, 0.061319, -0.984363,
		0.986233, -0.018946, 0.164271,
		-0.008577, -0.997938, -0.063604,
		40.671627, 31.871708, 27.707182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227222, 32.418053, 27.443357>,  <40.677631, 32.570263, 27.751705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227222, 32.418053, 27.443357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.995724, 32.101051, 27.366428>,  <40.856823, 31.910851, 27.320271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.995724, 32.101051, 27.366428>,  <41.227222, 32.418053, 27.443357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995724, 32.101051, 27.366428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152799, 0.126276, -0.980157,
		0.801062, -0.596652, 0.048012,
		-0.578750, -0.792503, -0.192323,
		40.822098, 31.863300, 27.308731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478024, 31.988634, 26.992836>,  <41.227222, 32.418053, 27.443357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478024, 31.988634, 26.992836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.099575, 31.863253, 26.960331>,  <40.872505, 31.788023, 26.940828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.099575, 31.863253, 26.960331>,  <41.478024, 31.988634, 26.992836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099575, 31.863253, 26.960331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057414, 0.084596, -0.994760,
		0.318687, -0.945827, -0.062041,
		-0.946119, -0.313455, -0.081263,
		40.815739, 31.769217, 26.935951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517281, 31.628559, 26.406183>,  <41.478024, 31.988634, 26.992836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517281, 31.628559, 26.406183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124508, 31.680216, 26.461517>,  <40.888844, 31.711210, 26.494719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124508, 31.680216, 26.461517>,  <41.517281, 31.628559, 26.406183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124508, 31.680216, 26.461517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121236, 0.132037, -0.983803,
		-0.145315, -0.982796, -0.113994,
		-0.981929, 0.129141, 0.138337,
		40.829929, 31.718958, 26.503019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.933121, 31.039467, 25.826412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719231, 31.354715, 25.948351>,  <40.590897, 31.543865, 26.021515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719231, 31.354715, 25.948351>,  <40.933121, 31.039467, 25.826412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719231, 31.354715, 25.948351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216946, 0.220627, -0.950925,
		-0.816701, -0.574621, 0.053004,
		-0.534727, 0.788121, 0.304848,
		40.558811, 31.591152, 26.039804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444805, 30.951340, 25.451086>,  <40.933121, 31.039467, 25.826412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444805, 30.951340, 25.451086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.404999, 31.327360, 25.581562>,  <40.381115, 31.552973, 25.659847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.404999, 31.327360, 25.581562>,  <40.444805, 30.951340, 25.451086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404999, 31.327360, 25.581562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400745, 0.262189, -0.877872,
		-0.910768, -0.218082, 0.350629,
		-0.099518, 0.940051, 0.326189,
		40.375145, 31.609375, 25.679419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837814, 31.118532, 25.292648>,  <40.444805, 30.951340, 25.451086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837814, 31.118532, 25.292648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999474, 31.482401, 25.330938>,  <40.096470, 31.700722, 25.353912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999474, 31.482401, 25.330938>,  <39.837814, 31.118532, 25.292648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999474, 31.482401, 25.330938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579294, 0.335540, -0.742853,
		-0.707871, 0.244771, 0.662575,
		0.404149, 0.909670, 0.095725,
		40.120720, 31.755302, 25.359655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266911, 31.573538, 25.210220>,  <39.837814, 31.118532, 25.292648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266911, 31.573538, 25.210220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590874, 31.786871, 25.112564>,  <39.785252, 31.914871, 25.053970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590874, 31.786871, 25.112564>,  <39.266911, 31.573538, 25.210220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590874, 31.786871, 25.112564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416609, 0.230053, -0.879496,
		-0.412900, 0.814021, 0.408514,
		0.809908, 0.533334, -0.244140,
		39.833847, 31.946871, 25.039322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969730, 32.155518, 24.909149>,  <39.266911, 31.573538, 25.210220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969730, 32.155518, 24.909149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348164, 32.179543, 24.781830>,  <39.575226, 32.193958, 24.705439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348164, 32.179543, 24.781830>,  <38.969730, 32.155518, 24.909149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348164, 32.179543, 24.781830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315950, 0.387705, -0.865945,
		0.071392, 0.919824, 0.385780,
		0.946086, 0.060066, -0.318297,
		39.631989, 32.197563, 24.686340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021042, 32.772346, 24.482300>,  <38.969730, 32.155518, 24.909149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021042, 32.772346, 24.482300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337597, 32.564350, 24.353733>,  <39.527531, 32.439552, 24.276592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337597, 32.564350, 24.353733>,  <39.021042, 32.772346, 24.482300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337597, 32.564350, 24.353733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121947, 0.380931, -0.916526,
		0.599023, 0.764527, 0.238055,
		0.791391, -0.519990, -0.321418,
		39.575016, 32.408352, 24.257307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286091, 33.181400, 23.943336>,  <39.021042, 32.772346, 24.482300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286091, 33.181400, 23.943336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444176, 32.816051, 23.904249>,  <39.539028, 32.596840, 23.880796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444176, 32.816051, 23.904249>,  <39.286091, 33.181400, 23.943336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444176, 32.816051, 23.904249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076398, 0.073325, -0.994377,
		0.915406, 0.400458, -0.040801,
		0.395214, -0.913377, -0.097717,
		39.562740, 32.542038, 23.874933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778320, 33.287254, 23.479965>,  <39.286091, 33.181400, 23.943336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778320, 33.287254, 23.479965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711174, 32.893166, 23.466402>,  <39.670887, 32.656712, 23.458263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711174, 32.893166, 23.466402>,  <39.778320, 33.287254, 23.479965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711174, 32.893166, 23.466402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024547, 0.030208, -0.999242,
		0.985504, -0.168571, 0.019113,
		-0.167866, -0.985227, -0.033908,
		39.660812, 32.597599, 23.456230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296284, 33.009617, 22.988705>,  <39.778320, 33.287254, 23.479965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296284, 33.009617, 22.988705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003525, 32.737209, 22.998055>,  <39.827869, 32.573765, 23.003664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003525, 32.737209, 22.998055>,  <40.296284, 33.009617, 22.988705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003525, 32.737209, 22.998055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150122, 0.127690, -0.980387,
		0.664678, -0.721047, -0.195692,
		-0.731893, -0.681019, 0.023372,
		39.783958, 32.532902, 23.005066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522964, 32.575222, 22.523819>,  <40.296284, 33.009617, 22.988705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522964, 32.575222, 22.523819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129692, 32.513653, 22.563126>,  <39.893726, 32.476711, 22.586710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129692, 32.513653, 22.563126>,  <40.522964, 32.575222, 22.523819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129692, 32.513653, 22.563126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121306, 0.148261, -0.981480,
		0.136481, -0.976900, -0.164438,
		-0.983187, -0.153901, 0.098269,
		39.834736, 32.467476, 22.592606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439594, 32.090694, 21.964462>,  <40.522964, 32.575222, 22.523819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439594, 32.090694, 21.964462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062958, 32.192249, 22.052961>,  <39.836975, 32.253181, 22.106062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062958, 32.192249, 22.052961>,  <40.439594, 32.090694, 21.964462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062958, 32.192249, 22.052961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211179, 0.066615, -0.975175,
		-0.262321, -0.964938, -0.009108,
		-0.941590, 0.253885, 0.221249,
		39.780479, 32.268414, 22.119335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895813, 31.659706, 21.696291>,  <40.439594, 32.090694, 21.964462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895813, 31.659706, 21.696291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717457, 32.016720, 21.723328>,  <39.610443, 32.230927, 21.739550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717457, 32.016720, 21.723328>,  <39.895813, 31.659706, 21.696291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717457, 32.016720, 21.723328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204563, -0.028097, -0.978450,
		-0.871400, -0.450107, 0.195108,
		-0.445889, 0.892533, 0.067591,
		39.583691, 32.284481, 21.743605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187622, 31.603216, 21.355293>,  <39.895813, 31.659706, 21.696291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187622, 31.603216, 21.355293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251205, 31.993788, 21.413698>,  <39.289356, 32.228130, 21.448742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251205, 31.993788, 21.413698>,  <39.187622, 31.603216, 21.355293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251205, 31.993788, 21.413698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338727, 0.192857, -0.920907,
		-0.927359, 0.096931, 0.361399,
		0.158963, 0.976428, 0.146014,
		39.298893, 32.286716, 21.457502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542152, 32.002048, 21.196976>,  <39.187622, 31.603216, 21.355293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542152, 32.002048, 21.196976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855858, 32.243057, 21.137794>,  <39.044083, 32.387665, 21.102285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855858, 32.243057, 21.137794>,  <38.542152, 32.002048, 21.196976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855858, 32.243057, 21.137794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389732, 0.292889, -0.873112,
		-0.482738, 0.742415, 0.464526,
		0.784266, 0.602525, -0.147954,
		39.091137, 32.423817, 21.093409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345078, 32.472218, 20.726885>,  <38.542152, 32.002048, 21.196976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345078, 32.472218, 20.726885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740501, 32.530586, 20.711596>,  <38.977757, 32.565609, 20.702421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.740501, 32.530586, 20.711596>,  <38.345078, 32.472218, 20.726885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740501, 32.530586, 20.711596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088094, 0.352793, -0.931545,
		-0.122447, 0.924253, 0.361611,
		0.988558, 0.145921, -0.038223,
		39.037067, 32.574364, 20.700129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403652, 33.147182, 20.356220>,  <38.345078, 32.472218, 20.726885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403652, 33.147182, 20.356220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774117, 32.996521, 20.348759>,  <38.996395, 32.906124, 20.344282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774117, 32.996521, 20.348759>,  <38.403652, 33.147182, 20.356220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774117, 32.996521, 20.348759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141126, 0.392037, -0.909060,
		0.349717, 0.839307, 0.416247,
		0.926165, -0.376657, -0.018654,
		39.051968, 32.883522, 20.343163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870407, 33.695824, 20.271120>,  <38.403652, 33.147182, 20.356220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870407, 33.695824, 20.271120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070442, 33.377277, 20.135050>,  <39.190464, 33.186150, 20.053408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070442, 33.377277, 20.135050>,  <38.870407, 33.695824, 20.271120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070442, 33.377277, 20.135050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201535, 0.489062, -0.848648,
		0.842200, 0.355838, 0.405067,
		0.500083, -0.796366, -0.340174,
		39.220467, 33.138367, 20.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406868, 33.948059, 19.916695>,  <38.870407, 33.695824, 20.271120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406868, 33.948059, 19.916695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407173, 33.576584, 19.768351>,  <39.407356, 33.353699, 19.679344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407173, 33.576584, 19.768351>,  <39.406868, 33.948059, 19.916695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407173, 33.576584, 19.768351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353910, 0.347109, -0.868483,
		0.935279, -0.130587, 0.328938,
		0.000764, -0.928689, -0.370860,
		39.407402, 33.297977, 19.657093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115715, 33.828751, 19.743607>,  <39.406868, 33.948059, 19.916695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115715, 33.828751, 19.743607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881817, 33.587021, 19.527142>,  <39.741478, 33.441982, 19.397263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881817, 33.587021, 19.527142>,  <40.115715, 33.828751, 19.743607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881817, 33.587021, 19.527142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489181, 0.269476, -0.829509,
		0.647126, -0.749780, 0.138050,
		-0.584748, -0.604328, -0.541163,
		39.706394, 33.405724, 19.364792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557465, 33.576500, 19.288235>,  <40.115715, 33.828751, 19.743607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557465, 33.576500, 19.288235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220413, 33.437355, 19.123814>,  <40.018181, 33.353867, 19.025162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220413, 33.437355, 19.123814>,  <40.557465, 33.576500, 19.288235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220413, 33.437355, 19.123814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394704, 0.120276, -0.910902,
		0.366311, -0.929798, 0.035955,
		-0.842630, -0.347865, -0.411053,
		39.967625, 33.332996, 19.000498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606712, 32.930984, 18.783329>,  <40.557465, 33.576500, 19.288235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606712, 32.930984, 18.783329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271999, 33.119850, 18.672434>,  <40.071171, 33.233170, 18.605898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271999, 33.119850, 18.672434>,  <40.606712, 32.930984, 18.783329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271999, 33.119850, 18.672434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393176, 0.165772, -0.904396,
		-0.381063, -0.865785, -0.324357,
		-0.836782, 0.472162, -0.277236,
		40.020966, 33.261497, 18.589262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597866, 32.643177, 18.212988>,  <40.606712, 32.930984, 18.783329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597866, 32.643177, 18.212988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.372353, 32.970100, 18.165398>,  <40.237045, 33.166256, 18.136843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.372353, 32.970100, 18.165398>,  <40.597866, 32.643177, 18.212988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372353, 32.970100, 18.165398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324595, 0.086802, -0.941862,
		-0.759463, -0.569626, -0.314232,
		-0.563785, 0.817307, -0.118975,
		40.203217, 33.215294, 18.129705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494034, 32.743061, 17.586229>,  <40.597866, 32.643177, 18.212988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494034, 32.743061, 17.586229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369648, 33.115276, 17.663580>,  <40.295017, 33.338608, 17.709990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369648, 33.115276, 17.663580>,  <40.494034, 32.743061, 17.586229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369648, 33.115276, 17.663580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136233, 0.245003, -0.959903,
		-0.940606, -0.272156, -0.202959,
		-0.310969, 0.930540, 0.193374,
		40.276356, 33.394440, 17.721592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426441, 31.972157, 17.625221>,  <40.494034, 32.743061, 17.586229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426441, 31.972157, 17.625221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109112, 31.870955, 17.403727>,  <39.918713, 31.810234, 17.270830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109112, 31.870955, 17.403727>,  <40.426441, 31.972157, 17.625221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109112, 31.870955, 17.403727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581393, 0.045016, 0.812377,
		-0.180608, 0.966417, -0.182807,
		-0.793324, -0.253004, -0.553738,
		39.871113, 31.795053, 17.237606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687157, 32.306095, 17.880793>,  <40.426441, 31.972157, 17.625221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687157, 32.306095, 17.880793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613598, 31.952114, 17.709661>,  <39.569462, 31.739725, 17.606983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613598, 31.952114, 17.709661>,  <39.687157, 32.306095, 17.880793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613598, 31.952114, 17.709661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565589, -0.260712, 0.782393,
		-0.803922, 0.385855, -0.452576,
		-0.183899, -0.884955, -0.427828,
		39.558430, 31.686628, 17.581314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998047, 32.210041, 18.018646>,  <39.687157, 32.306095, 17.880793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998047, 32.210041, 18.018646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099495, 31.844353, 17.892237>,  <39.160366, 31.624939, 17.816391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099495, 31.844353, 17.892237>,  <38.998047, 32.210041, 18.018646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099495, 31.844353, 17.892237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484721, -0.402845, 0.776377,
		-0.837090, -0.043724, -0.545314,
		0.253624, -0.914223, -0.316024,
		39.175583, 31.570086, 17.797430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311821, 31.813555, 18.073290>,  <38.998047, 32.210041, 18.018646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311821, 31.813555, 18.073290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630936, 31.573700, 18.098505>,  <38.822403, 31.429787, 18.113634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630936, 31.573700, 18.098505>,  <38.311821, 31.813555, 18.073290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630936, 31.573700, 18.098505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345196, -0.368522, 0.863152,
		-0.494348, -0.710370, -0.500994,
		0.797785, -0.599638, 0.063039,
		38.870270, 31.393808, 18.117416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123474, 31.177122, 18.058613>,  <38.311821, 31.813555, 18.073290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123474, 31.177122, 18.058613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486099, 31.120962, 18.217829>,  <38.703674, 31.087267, 18.313358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486099, 31.120962, 18.217829>,  <38.123474, 31.177122, 18.058613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486099, 31.120962, 18.217829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420662, -0.377611, 0.824896,
		0.034489, -0.915259, -0.401388,
		0.906562, -0.140399, 0.398038,
		38.758068, 31.078842, 18.337240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029179, 30.530443, 18.271603>,  <38.123474, 31.177122, 18.058613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029179, 30.530443, 18.271603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341022, 30.669506, 18.479963>,  <38.528130, 30.752943, 18.604979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341022, 30.669506, 18.479963>,  <38.029179, 30.530443, 18.271603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341022, 30.669506, 18.479963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388057, -0.384664, 0.837524,
		0.491543, -0.855084, -0.164979,
		0.779614, 0.347657, 0.520900,
		38.574905, 30.773804, 18.636232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217373, 30.000530, 18.636557>,  <38.029179, 30.530443, 18.271603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217373, 30.000530, 18.636557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435009, 30.273399, 18.831947>,  <38.565590, 30.437120, 18.949181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435009, 30.273399, 18.831947>,  <38.217373, 30.000530, 18.636557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435009, 30.273399, 18.831947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235992, -0.434264, 0.869323,
		0.805155, -0.588266, -0.075291,
		0.544089, 0.682172, 0.488476,
		38.598236, 30.478050, 18.978491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813137, 29.606403, 19.061483>,  <38.217373, 30.000530, 18.636557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813137, 29.606403, 19.061483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725105, 29.961878, 19.222382>,  <38.672287, 30.175163, 19.318920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725105, 29.961878, 19.222382>,  <38.813137, 29.606403, 19.061483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725105, 29.961878, 19.222382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033399, -0.405247, 0.913597,
		0.974910, 0.214497, 0.059504,
		-0.220078, 0.888688, 0.402244,
		38.659081, 30.228483, 19.343054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375702, 29.837656, 19.588699>,  <38.813137, 29.606403, 19.061483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375702, 29.837656, 19.588699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053093, 30.063375, 19.659231>,  <38.859528, 30.198807, 19.701550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053093, 30.063375, 19.659231>,  <39.375702, 29.837656, 19.588699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053093, 30.063375, 19.659231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032158, -0.255938, 0.966158,
		0.590331, 0.784896, 0.188272,
		-0.806520, 0.564299, 0.176329,
		38.811138, 30.232666, 19.712130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502151, 29.846815, 20.201536>,  <39.375702, 29.837656, 19.588699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502151, 29.846815, 20.201536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147873, 30.032492, 20.204611>,  <38.935307, 30.143898, 20.206455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147873, 30.032492, 20.204611>,  <39.502151, 29.846815, 20.201536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147873, 30.032492, 20.204611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064719, -0.139852, 0.988055,
		0.459723, 0.874624, 0.153909,
		-0.885701, 0.464193, 0.007689,
		38.882164, 30.171749, 20.206917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631973, 30.374712, 20.654034>,  <39.502151, 29.846815, 20.201536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631973, 30.374712, 20.654034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236172, 30.323675, 20.626898>,  <38.998692, 30.293053, 20.610617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236172, 30.323675, 20.626898>,  <39.631973, 30.374712, 20.654034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236172, 30.323675, 20.626898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049685, -0.140448, 0.988841,
		-0.135696, 0.981832, 0.132634,
		-0.989504, -0.127592, -0.067841,
		38.939320, 30.285398, 20.606546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318897, 30.802998, 21.180065>,  <39.631973, 30.374712, 20.654034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318897, 30.802998, 21.180065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018307, 30.549517, 21.106623>,  <38.837952, 30.397429, 21.062557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018307, 30.549517, 21.106623>,  <39.318897, 30.802998, 21.180065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018307, 30.549517, 21.106623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215479, -0.027294, 0.976127,
		-0.623583, 0.773097, -0.116038,
		-0.751474, -0.633700, -0.183607,
		38.792866, 30.359407, 21.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671520, 31.108631, 21.440878>,  <39.318897, 30.802998, 21.180065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671520, 31.108631, 21.440878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631313, 30.710985, 21.424700>,  <38.607189, 30.472399, 21.414993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631313, 30.710985, 21.424700>,  <38.671520, 31.108631, 21.440878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631313, 30.710985, 21.424700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242245, -0.014973, 0.970099,
		-0.964994, 0.107312, -0.239314,
		-0.100520, -0.994113, -0.040445,
		38.601158, 30.412752, 21.412567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061718, 30.936253, 21.870466>,  <38.671520, 31.108631, 21.440878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061718, 30.936253, 21.870466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279320, 30.601316, 21.848866>,  <38.409882, 30.400354, 21.835905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279320, 30.601316, 21.848866>,  <38.061718, 30.936253, 21.870466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279320, 30.601316, 21.848866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115464, -0.138452, 0.983615,
		-0.831098, -0.528859, -0.172001,
		0.544007, -0.837341, -0.054003,
		38.442520, 30.350115, 21.832664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688080, 30.393023, 22.248465>,  <38.061718, 30.936253, 21.870466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688080, 30.393023, 22.248465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063652, 30.256254, 22.232956>,  <38.288994, 30.174194, 22.223650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063652, 30.256254, 22.232956>,  <37.688080, 30.393023, 22.248465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063652, 30.256254, 22.232956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021930, -0.052985, 0.998354,
		-0.343411, -0.938234, -0.042251,
		0.938929, -0.341919, -0.038771,
		38.345329, 30.153679, 22.221325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670284, 29.840572, 22.681976>,  <37.688080, 30.393023, 22.248465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670284, 29.840572, 22.681976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057819, 29.932652, 22.645386>,  <38.290340, 29.987898, 22.623432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057819, 29.932652, 22.645386>,  <37.670284, 29.840572, 22.681976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057819, 29.932652, 22.645386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100886, -0.029416, 0.994463,
		0.226232, -0.972699, -0.051723,
		0.968835, 0.230198, -0.091477,
		38.348469, 30.001711, 22.617943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079262, 29.304708, 22.937218>,  <37.670284, 29.840572, 22.681976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079262, 29.304708, 22.937218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305271, 29.632145, 22.978502>,  <38.440876, 29.828608, 23.003273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305271, 29.632145, 22.978502>,  <38.079262, 29.304708, 22.937218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305271, 29.632145, 22.978502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058214, -0.085226, 0.994660,
		0.823016, -0.568019, -0.000502,
		0.565028, 0.818591, 0.103209,
		38.474781, 29.877722, 23.009464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534527, 29.271721, 23.598278>,  <38.079262, 29.304708, 22.937218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534527, 29.271721, 23.598278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527699, 29.665918, 23.530741>,  <38.523602, 29.902437, 23.490219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527699, 29.665918, 23.530741>,  <38.534527, 29.271721, 23.598278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527699, 29.665918, 23.530741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117194, 0.169674, 0.978507,
		0.992962, -0.003088, -0.118389,
		-0.017066, 0.985495, -0.168842,
		38.522579, 29.961567, 23.480087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202976, 29.466759, 23.827499>,  <38.534527, 29.271721, 23.598278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202976, 29.466759, 23.827499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945705, 29.772659, 23.842875>,  <38.791344, 29.956200, 23.852100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945705, 29.772659, 23.842875>,  <39.202976, 29.466759, 23.827499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945705, 29.772659, 23.842875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056184, -0.097197, 0.993678,
		0.763653, 0.636953, 0.105481,
		-0.643178, 0.764751, 0.038438,
		38.752750, 30.002085, 23.854406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412743, 29.811340, 24.429924>,  <39.202976, 29.466759, 23.827499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412743, 29.811340, 24.429924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050468, 29.961628, 24.351360>,  <38.833103, 30.051802, 24.304222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050468, 29.961628, 24.351360>,  <39.412743, 29.811340, 24.429924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050468, 29.961628, 24.351360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193682, 0.045424, 0.980012,
		0.377132, 0.925619, 0.031630,
		-0.905681, 0.375720, -0.196407,
		38.778763, 30.074345, 24.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299152, 30.306110, 24.875509>,  <39.412743, 29.811340, 24.429924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299152, 30.306110, 24.875509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938107, 30.185247, 24.752874>,  <38.721481, 30.112730, 24.679293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938107, 30.185247, 24.752874>,  <39.299152, 30.306110, 24.875509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938107, 30.185247, 24.752874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333403, 0.040211, 0.941926,
		-0.272282, 0.952409, -0.137035,
		-0.902610, -0.302158, -0.306588,
		38.667324, 30.094601, 24.660898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.594551, 31.795929, 28.696409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210186, 31.703953, 28.758078>,  <40.979565, 31.648767, 28.795078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210186, 31.703953, 28.758078>,  <41.594551, 31.795929, 28.696409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210186, 31.703953, 28.758078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070851, 0.334090, 0.939874,
		-0.267623, 0.914063, -0.304741,
		-0.960915, -0.229941, 0.154172,
		40.921913, 31.634970, 28.804329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404488, 32.307117, 29.157362>,  <41.594551, 31.795929, 28.696409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404488, 32.307117, 29.157362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109409, 32.041271, 29.204845>,  <40.932362, 31.881763, 29.233335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109409, 32.041271, 29.204845>,  <41.404488, 32.307117, 29.157362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109409, 32.041271, 29.204845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053749, 0.233085, 0.970970,
		-0.672993, 0.709898, -0.207667,
		-0.737693, -0.664618, 0.118708,
		40.888100, 31.841887, 29.240458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947506, 32.702232, 29.635853>,  <41.404488, 32.307117, 29.157362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947506, 32.702232, 29.635853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826790, 32.323559, 29.680954>,  <40.754360, 32.096355, 29.708015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826790, 32.323559, 29.680954>,  <40.947506, 32.702232, 29.635853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826790, 32.323559, 29.680954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053090, 0.134772, 0.989453,
		-0.951894, 0.292623, -0.090933,
		-0.301792, -0.946683, 0.112753,
		40.736252, 32.039555, 29.714781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325542, 32.758537, 30.122688>,  <40.947506, 32.702232, 29.635853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325542, 32.758537, 30.122688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480801, 32.389900, 30.123316>,  <40.573956, 32.168716, 30.123692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480801, 32.389900, 30.123316>,  <40.325542, 32.758537, 30.122688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480801, 32.389900, 30.123316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237289, -0.098294, 0.966454,
		-0.890526, -0.375498, -0.256837,
		0.388147, -0.921596, 0.001569,
		40.597244, 32.113422, 30.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861717, 32.409973, 30.486969>,  <40.325542, 32.758537, 30.122688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861717, 32.409973, 30.486969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207802, 32.210247, 30.505283>,  <40.415451, 32.090412, 30.516272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207802, 32.210247, 30.505283>,  <39.861717, 32.409973, 30.486969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207802, 32.210247, 30.505283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127314, -0.130450, 0.983247,
		-0.484974, -0.856546, -0.176436,
		0.865212, -0.499312, 0.045786,
		40.467365, 32.060455, 30.519018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706924, 31.896643, 31.047892>,  <39.861717, 32.409973, 30.486969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706924, 31.896643, 31.047892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102592, 31.854019, 31.007534>,  <40.339993, 31.828445, 30.983320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102592, 31.854019, 31.007534>,  <39.706924, 31.896643, 31.047892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102592, 31.854019, 31.007534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074841, -0.225083, 0.971461,
		-0.126223, -0.968496, -0.214672,
		0.989175, -0.106554, -0.100893,
		40.399345, 31.822052, 30.977266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875309, 31.386974, 31.471384>,  <39.706924, 31.896643, 31.047892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875309, 31.386974, 31.471384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235435, 31.548550, 31.406561>,  <40.451511, 31.645494, 31.367666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235435, 31.548550, 31.406561>,  <39.875309, 31.386974, 31.471384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235435, 31.548550, 31.406561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295028, -0.292661, 0.909565,
		0.319980, -0.866708, -0.382661,
		0.900317, 0.403938, -0.162057,
		40.505531, 31.669731, 31.357944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439419, 30.898487, 31.719980>,  <39.875309, 31.386974, 31.471384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439419, 30.898487, 31.719980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577274, 31.273949, 31.724966>,  <40.659988, 31.499226, 31.727959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577274, 31.273949, 31.724966>,  <40.439419, 30.898487, 31.719980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577274, 31.273949, 31.724966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098467, -0.049353, 0.993916,
		0.933558, -0.341310, -0.109436,
		0.344634, 0.938654, 0.012466,
		40.680664, 31.555546, 31.728706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932159, 30.882710, 32.218243>,  <40.439419, 30.898487, 31.719980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932159, 30.882710, 32.218243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854675, 31.272310, 32.171265>,  <40.808186, 31.506071, 32.143078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854675, 31.272310, 32.171265>,  <40.932159, 30.882710, 32.218243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854675, 31.272310, 32.171265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006926, 0.118349, 0.992948,
		0.981034, 0.193158, -0.016179,
		-0.193711, 0.974004, -0.117443,
		40.796562, 31.564512, 32.136032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447025, 31.280451, 32.643497>,  <40.932159, 30.882710, 32.218243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447025, 31.280451, 32.643497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.123425, 31.506256, 32.577972>,  <40.929264, 31.641739, 32.538658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.123425, 31.506256, 32.577972>,  <41.447025, 31.280451, 32.643497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123425, 31.506256, 32.577972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095437, 0.148848, 0.984244,
		0.580003, 0.811892, -0.066544,
		-0.809004, 0.564514, -0.163817,
		40.880722, 31.675610, 32.528828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628208, 31.945812, 33.039974>,  <41.447025, 31.280451, 32.643497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628208, 31.945812, 33.039974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229485, 31.942402, 33.008224>,  <40.990250, 31.940355, 32.989174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229485, 31.942402, 33.008224>,  <41.628208, 31.945812, 33.039974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229485, 31.942402, 33.008224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079782, 0.142514, 0.986572,
		0.002902, 0.989756, -0.142740,
		-0.996808, -0.008524, -0.079378,
		40.930443, 31.939844, 32.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309746, 32.551151, 33.332008>,  <41.628208, 31.945812, 33.039974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309746, 32.551151, 33.332008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.979565, 32.326103, 33.313778>,  <40.781456, 32.191074, 33.302837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.979565, 32.326103, 33.313778>,  <41.309746, 32.551151, 33.332008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979565, 32.326103, 33.313778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136834, 0.121108, 0.983163,
		-0.547630, 0.817795, -0.176956,
		-0.825456, -0.562623, -0.045580,
		40.731926, 32.157318, 33.300102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686104, 32.901180, 33.529179>,  <41.309746, 32.551151, 33.332008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686104, 32.901180, 33.529179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642860, 32.513199, 33.616367>,  <40.616913, 32.280411, 33.668678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642860, 32.513199, 33.616367>,  <40.686104, 32.901180, 33.529179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642860, 32.513199, 33.616367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162813, 0.233568, 0.958613,
		-0.980716, 0.068149, -0.183171,
		-0.108111, -0.969949, 0.217968,
		40.610428, 32.222214, 33.681759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984859, 32.822861, 33.883968>,  <40.686104, 32.901180, 33.529179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984859, 32.822861, 33.883968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276936, 32.573677, 33.996212>,  <40.452179, 32.424168, 34.063557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276936, 32.573677, 33.996212>,  <39.984859, 32.822861, 33.883968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276936, 32.573677, 33.996212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203872, 0.193337, 0.959717,
		-0.652120, -0.757983, 0.014168,
		0.730188, -0.622963, 0.280610,
		40.495991, 32.386787, 34.080395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055771, 33.566456, 33.968391>,  <39.984859, 32.822861, 33.883968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055771, 33.566456, 33.968391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148827, 33.939400, 34.079082>,  <40.204659, 34.163166, 34.145496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148827, 33.939400, 34.079082>,  <40.055771, 33.566456, 33.968391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148827, 33.939400, 34.079082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041267, 0.293743, -0.954993,
		-0.971687, 0.210748, 0.106812,
		0.232638, 0.932363, 0.276729,
		40.218616, 34.219109, 34.162102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723633, 33.848633, 33.411777>,  <40.055771, 33.566456, 33.968391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723633, 33.848633, 33.411777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921391, 34.164455, 33.557198>,  <40.040047, 34.353951, 33.644447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921391, 34.164455, 33.557198>,  <39.723633, 33.848633, 33.411777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921391, 34.164455, 33.557198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031955, 0.434465, -0.900122,
		-0.868648, 0.433402, 0.240030,
		0.494399, 0.789559, 0.363547,
		40.069710, 34.401321, 33.666264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301151, 34.491863, 33.297237>,  <39.723633, 33.848633, 33.411777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301151, 34.491863, 33.297237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673244, 34.628815, 33.350079>,  <39.896500, 34.710983, 33.381783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673244, 34.628815, 33.350079>,  <39.301151, 34.491863, 33.297237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673244, 34.628815, 33.350079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097272, 0.577139, -0.810832,
		-0.353852, 0.741410, 0.570175,
		0.930230, 0.342377, 0.132104,
		39.952312, 34.731529, 33.389709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353111, 35.370586, 33.430767>,  <39.301151, 34.491863, 33.297237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353111, 35.370586, 33.430767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 35.214012, 33.285892>,  <39.894505, 35.120068, 33.198967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 35.214012, 33.285892>,  <39.353111, 35.370586, 33.430767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691483, 35.214012, 33.285892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154155, 0.470681, -0.868732,
		0.510531, 0.790718, 0.337820,
		0.845928, -0.391438, -0.362191,
		39.945259, 35.096581, 33.177235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534801, 35.779640, 32.925301>,  <39.353111, 35.370586, 33.430767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534801, 35.779640, 32.925301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786293, 35.482597, 32.833015>,  <39.937187, 35.304371, 32.777645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786293, 35.482597, 32.833015>,  <39.534801, 35.779640, 32.925301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786293, 35.482597, 32.833015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006910, 0.291340, -0.956594,
		0.777591, 0.603036, 0.178043,
		0.628732, -0.742609, -0.230711,
		39.974911, 35.259815, 32.763802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954857, 35.975544, 32.252327>,  <39.534801, 35.779640, 32.925301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954857, 35.975544, 32.252327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044117, 35.585682, 32.258751>,  <40.097675, 35.351765, 32.262604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044117, 35.585682, 32.258751>,  <39.954857, 35.975544, 32.252327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044117, 35.585682, 32.258751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223231, -0.067132, -0.972451,
		0.948878, 0.213422, -0.232553,
		0.223154, -0.974651, 0.016057,
		40.111065, 35.293285, 32.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634323, 35.822842, 31.713797>,  <39.954857, 35.975544, 32.252327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634323, 35.822842, 31.713797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404076, 35.503105, 31.782753>,  <40.265926, 35.311264, 31.824127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404076, 35.503105, 31.782753>,  <40.634323, 35.822842, 31.713797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404076, 35.503105, 31.782753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140954, -0.110674, -0.983811,
		0.805480, -0.590596, -0.048965,
		-0.575616, -0.799342, 0.172392,
		40.231392, 35.263302, 31.834471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877972, 35.343872, 31.262987>,  <40.634323, 35.822842, 31.713797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877972, 35.343872, 31.262987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.501076, 35.241669, 31.349613>,  <40.274937, 35.180347, 31.401588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.501076, 35.241669, 31.349613>,  <40.877972, 35.343872, 31.262987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501076, 35.241669, 31.349613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188958, -0.128348, -0.973562,
		0.276551, -0.958249, 0.072654,
		-0.942239, -0.255511, 0.216563,
		40.218403, 35.165016, 31.414581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748722, 34.821358, 30.752333>,  <40.877972, 35.343872, 31.262987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748722, 34.821358, 30.752333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386436, 34.924862, 30.886635>,  <40.169067, 34.986965, 30.967216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386436, 34.924862, 30.886635>,  <40.748722, 34.821358, 30.752333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386436, 34.924862, 30.886635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382829, -0.159219, -0.909995,
		-0.182016, -0.952728, 0.243268,
		-0.905710, 0.258764, 0.335752,
		40.114723, 35.002487, 30.987362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346073, 34.226810, 30.576330>,  <40.748722, 34.821358, 30.752333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346073, 34.226810, 30.576330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112041, 34.546432, 30.631750>,  <39.971622, 34.738205, 30.665003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112041, 34.546432, 30.631750>,  <40.346073, 34.226810, 30.576330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112041, 34.546432, 30.631750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429858, -0.160691, -0.888482,
		-0.687680, -0.579390, 0.437496,
		-0.585079, 0.799053, 0.138551,
		39.936516, 34.786148, 30.673315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731571, 34.004032, 30.319489>,  <40.346073, 34.226810, 30.576330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731571, 34.004032, 30.319489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677086, 34.398991, 30.351734>,  <39.644394, 34.635963, 30.371082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677086, 34.398991, 30.351734>,  <39.731571, 34.004032, 30.319489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677086, 34.398991, 30.351734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445788, 0.011576, -0.895064,
		-0.884714, -0.157859, 0.438591,
		-0.136217, 0.987394, 0.080613,
		39.636219, 34.695210, 30.375917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024414, 34.105457, 30.095188>,  <39.731571, 34.004032, 30.319489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024414, 34.105457, 30.095188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211731, 34.455681, 30.047695>,  <39.324120, 34.665817, 30.019199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211731, 34.455681, 30.047695>,  <39.024414, 34.105457, 30.095188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211731, 34.455681, 30.047695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339248, 0.054088, -0.939141,
		-0.815852, 0.480071, 0.322361,
		0.468290, 0.875561, -0.118735,
		39.352219, 34.718349, 30.012075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662533, 34.507000, 29.491848>,  <39.024414, 34.105457, 30.095188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662533, 34.507000, 29.491848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009136, 34.700172, 29.542353>,  <39.217098, 34.816074, 29.572655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009136, 34.700172, 29.542353>,  <38.662533, 34.507000, 29.491848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009136, 34.700172, 29.542353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058467, 0.349397, -0.935149,
		-0.495726, 0.802933, 0.330991,
		0.866508, 0.482930, 0.126260,
		39.269089, 34.845051, 29.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467842, 35.136993, 29.213932>,  <38.662533, 34.507000, 29.491848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467842, 35.136993, 29.213932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861862, 35.074146, 29.185698>,  <39.098274, 35.036438, 29.168756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861862, 35.074146, 29.185698>,  <38.467842, 35.136993, 29.213932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861862, 35.074146, 29.185698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032926, 0.230480, -0.972520,
		0.169072, 0.960308, 0.221862,
		0.985053, -0.157121, -0.070587,
		39.157379, 35.027012, 29.164522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882992, 35.501427, 29.028311>,  <38.467842, 35.136993, 29.213932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882992, 35.501427, 29.028311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567417, 35.256447, 29.008352>,  <37.378075, 35.109459, 28.996376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567417, 35.256447, 29.008352>,  <37.882992, 35.501427, 29.028311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567417, 35.256447, 29.008352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109176, 0.059798, 0.992222,
		-0.604702, 0.788245, -0.114042,
		-0.788934, -0.612449, -0.049897,
		37.330738, 35.072712, 28.993383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375351, 35.829460, 29.455296>,  <37.882992, 35.501427, 29.028311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375351, 35.829460, 29.455296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.236286, 35.458828, 29.397898>,  <37.152847, 35.236450, 29.363459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.236286, 35.458828, 29.397898>,  <37.375351, 35.829460, 29.455296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236286, 35.458828, 29.397898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318511, -0.027232, 0.947528,
		-0.881864, 0.375120, -0.285658,
		-0.347658, -0.926576, -0.143495,
		37.131989, 35.180855, 29.354849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648762, 35.824604, 29.579271>,  <37.375351, 35.829460, 29.455296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648762, 35.824604, 29.579271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749313, 35.439251, 29.616604>,  <36.809647, 35.208038, 29.639004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749313, 35.439251, 29.616604>,  <36.648762, 35.824604, 29.579271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749313, 35.439251, 29.616604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462233, -0.034773, 0.886077,
		-0.850382, -0.265883, -0.454046,
		0.251381, -0.963378, 0.093330,
		36.824726, 35.150238, 29.644602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032497, 35.418037, 29.599409>,  <36.648762, 35.824604, 29.579271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032497, 35.418037, 29.599409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302895, 35.186035, 29.781231>,  <36.465134, 35.046833, 29.890324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302895, 35.186035, 29.781231>,  <36.032497, 35.418037, 29.599409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302895, 35.186035, 29.781231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625852, -0.126246, 0.769656,
		-0.389021, -0.804768, -0.448342,
		0.675996, -0.580009, 0.454553,
		36.505695, 35.012032, 29.917597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742847, 34.708027, 29.707396>,  <36.032497, 35.418037, 29.599409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742847, 34.708027, 29.707396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038174, 34.732582, 29.976059>,  <36.215370, 34.747314, 30.137257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038174, 34.732582, 29.976059>,  <35.742847, 34.708027, 29.707396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038174, 34.732582, 29.976059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627101, -0.304100, 0.717125,
		0.248276, -0.950660, -0.186023,
		0.738311, 0.061390, 0.671661,
		36.259666, 34.750999, 30.177557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738293, 34.134407, 30.093287>,  <35.742847, 34.708027, 29.707396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738293, 34.134407, 30.093287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.938808, 34.363052, 30.353125>,  <36.059116, 34.500240, 30.509027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.938808, 34.363052, 30.353125>,  <35.738293, 34.134407, 30.093287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938808, 34.363052, 30.353125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600087, -0.311201, 0.736919,
		0.623385, -0.759221, 0.187015,
		0.501285, 0.571610, 0.649596,
		36.089195, 34.534534, 30.548004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877518, 33.696800, 30.745234>,  <35.738293, 34.134407, 30.093287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877518, 33.696800, 30.745234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928288, 34.074890, 30.865528>,  <35.958748, 34.301743, 30.937704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928288, 34.074890, 30.865528>,  <35.877518, 33.696800, 30.745234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928288, 34.074890, 30.865528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421492, -0.223059, 0.878970,
		0.897906, -0.238320, 0.370093,
		0.126924, 0.945224, 0.300736,
		35.966366, 34.358456, 30.955750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196198, 33.660732, 31.430189>,  <35.877518, 33.696800, 30.745234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196198, 33.660732, 31.430189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047707, 34.031445, 31.407339>,  <35.958611, 34.253872, 31.393629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047707, 34.031445, 31.407339>,  <36.196198, 33.660732, 31.430189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047707, 34.031445, 31.407339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482778, -0.140096, 0.864464,
		0.793167, 0.348494, 0.499438,
		-0.371230, 0.926782, -0.057126,
		35.936337, 34.309479, 31.390202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384628, 34.028660, 32.043674>,  <36.196198, 33.660732, 31.430189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384628, 34.028660, 32.043674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.068695, 34.243416, 31.925072>,  <35.879135, 34.372269, 31.853909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.068695, 34.243416, 31.925072>,  <36.384628, 34.028660, 32.043674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068695, 34.243416, 31.925072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415440, -0.112669, 0.902616,
		0.451197, 0.836095, 0.312035,
		-0.789829, 0.536889, -0.296511,
		35.831745, 34.404484, 31.836119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174656, 34.479477, 32.635250>,  <36.384628, 34.028660, 32.043674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174656, 34.479477, 32.635250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.849632, 34.444927, 32.404675>,  <35.654617, 34.424198, 32.266327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.849632, 34.444927, 32.404675>,  <36.174656, 34.479477, 32.635250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849632, 34.444927, 32.404675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563806, -0.134448, 0.814891,
		-0.147887, 0.987149, 0.060548,
		-0.812559, -0.086375, -0.576443,
		35.605865, 34.419014, 32.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704021, 34.810120, 33.011494>,  <36.174656, 34.479477, 32.635250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704021, 34.810120, 33.011494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463390, 34.608757, 32.763401>,  <35.319012, 34.487938, 32.614544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463390, 34.608757, 32.763401>,  <35.704021, 34.810120, 33.011494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463390, 34.608757, 32.763401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718787, 0.002392, 0.695227,
		-0.348499, 0.864046, -0.363282,
		-0.601577, -0.503408, -0.620231,
		35.282917, 34.457733, 32.577332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976261, 35.133564, 33.014130>,  <35.704021, 34.810120, 33.011494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976261, 35.133564, 33.014130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.937130, 34.748768, 32.912140>,  <34.913651, 34.517891, 32.850948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.937130, 34.748768, 32.912140>,  <34.976261, 35.133564, 33.014130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937130, 34.748768, 32.912140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774937, -0.087112, 0.626006,
		-0.624421, 0.258831, -0.736957,
		-0.097832, -0.961987, -0.254973,
		34.907780, 34.460171, 32.835648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.378506, 35.881882, 25.313253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418224, 35.489788, 25.381693>,  <36.442055, 35.254532, 25.422756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418224, 35.489788, 25.381693>,  <36.378506, 35.881882, 25.313253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418224, 35.489788, 25.381693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056025, 0.166168, 0.984505,
		-0.993480, -0.107342, -0.038419,
		0.099295, -0.980238, 0.171098,
		36.448013, 35.195717, 25.433022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082729, 35.810940, 25.956472>,  <36.378506, 35.881882, 25.313253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082729, 35.810940, 25.956472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222092, 35.441727, 25.891207>,  <36.305710, 35.220200, 25.852047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222092, 35.441727, 25.891207>,  <36.082729, 35.810940, 25.956472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222092, 35.441727, 25.891207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073055, -0.146799, 0.986465,
		-0.934493, -0.355609, 0.016287,
		0.348405, -0.923034, -0.163162,
		36.326614, 35.164818, 25.842258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781658, 35.364410, 26.423597>,  <36.082729, 35.810940, 25.956472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781658, 35.364410, 26.423597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109631, 35.155033, 26.330885>,  <36.306412, 35.029408, 26.275257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109631, 35.155033, 26.330885>,  <35.781658, 35.364410, 26.423597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109631, 35.155033, 26.330885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122700, -0.234777, 0.964274,
		-0.559163, -0.819074, -0.128273,
		0.819928, -0.523447, -0.231779,
		36.355610, 34.997997, 26.261351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746742, 34.730877, 26.795057>,  <35.781658, 35.364410, 26.423597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746742, 34.730877, 26.795057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135788, 34.791134, 26.724268>,  <36.369217, 34.827290, 26.681793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135788, 34.791134, 26.724268>,  <35.746742, 34.730877, 26.795057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135788, 34.791134, 26.724268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201963, -0.171061, 0.964339,
		0.115001, -0.973675, -0.196802,
		0.972618, 0.150647, -0.176974,
		36.427574, 34.836327, 26.671175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086861, 34.231754, 27.144320>,  <35.746742, 34.730877, 26.795057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086861, 34.231754, 27.144320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369160, 34.504482, 27.067333>,  <36.538540, 34.668118, 27.021141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369160, 34.504482, 27.067333>,  <36.086861, 34.231754, 27.144320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369160, 34.504482, 27.067333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369439, -0.122372, 0.921162,
		0.604515, -0.721210, -0.338255,
		0.705745, 0.681821, -0.192467,
		36.580883, 34.709030, 27.009594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696236, 33.921356, 27.355879>,  <36.086861, 34.231754, 27.144320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696236, 33.921356, 27.355879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736347, 34.319077, 27.370350>,  <36.760414, 34.557709, 27.379032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736347, 34.319077, 27.370350>,  <36.696236, 33.921356, 27.355879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736347, 34.319077, 27.370350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475178, -0.079803, 0.876263,
		0.874157, -0.070678, -0.480472,
		0.100275, 0.994302, 0.036176,
		36.766430, 34.617367, 27.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343533, 34.019276, 27.743277>,  <36.696236, 33.921356, 27.355879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343533, 34.019276, 27.743277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117260, 34.349003, 27.752249>,  <36.981495, 34.546837, 27.757631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117260, 34.349003, 27.752249>,  <37.343533, 34.019276, 27.743277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117260, 34.349003, 27.752249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299881, 0.180302, 0.936783,
		0.768161, 0.536652, -0.349191,
		-0.565686, 0.824316, 0.022431,
		36.947556, 34.596298, 27.758978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774761, 34.469074, 28.053926>,  <37.343533, 34.019276, 27.743277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774761, 34.469074, 28.053926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429127, 34.667053, 28.090532>,  <37.221745, 34.785839, 28.112495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429127, 34.667053, 28.090532>,  <37.774761, 34.469074, 28.053926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429127, 34.667053, 28.090532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211549, 0.192144, 0.958294,
		0.456723, 0.847412, -0.270736,
		-0.864090, 0.494949, 0.091513,
		37.169899, 34.815536, 28.117987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946476, 35.108368, 28.363230>,  <37.774761, 34.469074, 28.053926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946476, 35.108368, 28.363230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570282, 35.005604, 28.452206>,  <37.344566, 34.943947, 28.505590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570282, 35.005604, 28.452206>,  <37.946476, 35.108368, 28.363230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570282, 35.005604, 28.452206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201609, 0.105100, 0.973811,
		-0.273559, 0.960704, -0.047050,
		-0.940489, -0.256909, 0.222438,
		37.288136, 34.928532, 28.518936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541920, 35.585526, 28.648941>,  <37.946476, 35.108368, 28.363230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541920, 35.585526, 28.648941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898281, 35.416183, 28.714750>,  <39.112099, 35.314579, 28.754236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898281, 35.416183, 28.714750>,  <38.541920, 35.585526, 28.648941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898281, 35.416183, 28.714750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314022, 0.312408, -0.896544,
		0.328155, 0.850396, 0.411267,
		0.890901, -0.423352, 0.164524,
		39.165550, 35.289177, 28.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146629, 36.025974, 28.542967>,  <38.541920, 35.585526, 28.648941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146629, 36.025974, 28.542967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258503, 35.648949, 28.469913>,  <39.325626, 35.422733, 28.426081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258503, 35.648949, 28.469913>,  <39.146629, 36.025974, 28.542967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258503, 35.648949, 28.469913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232770, 0.251121, -0.939551,
		0.931447, 0.220268, 0.289635,
		0.279687, -0.942560, -0.182634,
		39.342407, 35.366180, 28.415123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791004, 36.025349, 28.143894>,  <39.146629, 36.025974, 28.542967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791004, 36.025349, 28.143894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617596, 35.673004, 28.067844>,  <39.513550, 35.461597, 28.022215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617596, 35.673004, 28.067844>,  <39.791004, 36.025349, 28.143894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617596, 35.673004, 28.067844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213882, 0.104373, -0.971268,
		0.875393, -0.461730, 0.143152,
		-0.433522, -0.880859, -0.190123,
		39.487537, 35.408745, 28.010807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209324, 35.850101, 27.626026>,  <39.791004, 36.025349, 28.143894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209324, 35.850101, 27.626026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900291, 35.598507, 27.591396>,  <39.714874, 35.447548, 27.570620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900291, 35.598507, 27.591396>,  <40.209324, 35.850101, 27.626026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900291, 35.598507, 27.591396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229704, -0.149780, -0.961666,
		0.591910, -0.762850, 0.260198,
		-0.772579, -0.628988, -0.086574,
		39.668518, 35.409809, 27.565424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341927, 35.288879, 27.068712>,  <40.209324, 35.850101, 27.626026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341927, 35.288879, 27.068712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944805, 35.252941, 27.100399>,  <39.706532, 35.231377, 27.119411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944805, 35.252941, 27.100399>,  <40.341927, 35.288879, 27.068712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944805, 35.252941, 27.100399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064918, -0.152184, -0.986218,
		0.100663, -0.984260, 0.145256,
		-0.992801, -0.089846, 0.079215,
		39.646965, 35.225986, 27.124163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183567, 34.666420, 26.712900>,  <40.341927, 35.288879, 27.068712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183567, 34.666420, 26.712900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820168, 34.833309, 26.722246>,  <39.602127, 34.933445, 26.727854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820168, 34.833309, 26.722246>,  <40.183567, 34.666420, 26.712900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820168, 34.833309, 26.722246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103567, -0.170639, -0.979876,
		-0.404843, -0.892639, 0.198237,
		-0.908502, 0.417226, 0.023366,
		39.547615, 34.958477, 26.729256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708508, 34.178818, 26.398127>,  <40.183567, 34.666420, 26.712900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708508, 34.178818, 26.398127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552044, 34.546700, 26.384640>,  <39.458168, 34.767429, 26.376549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552044, 34.546700, 26.384640>,  <39.708508, 34.178818, 26.398127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552044, 34.546700, 26.384640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206130, -0.123254, -0.970731,
		-0.896943, -0.372759, 0.237791,
		-0.391158, 0.919706, -0.033715,
		39.434696, 34.822613, 26.374525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192829, 34.112961, 26.033148>,  <39.708508, 34.178818, 26.398127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192829, 34.112961, 26.033148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219337, 34.510376, 25.996271>,  <39.235241, 34.748825, 25.974146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219337, 34.510376, 25.996271>,  <39.192829, 34.112961, 26.033148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219337, 34.510376, 25.996271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285571, -0.069643, -0.955824,
		-0.956064, 0.089667, 0.279109,
		0.066268, 0.993534, -0.092190,
		39.239220, 34.808437, 25.968615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537746, 34.330952, 25.675512>,  <39.192829, 34.112961, 26.033148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537746, 34.330952, 25.675512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780411, 34.646175, 25.633718>,  <38.926010, 34.835312, 25.608643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780411, 34.646175, 25.633718>,  <38.537746, 34.330952, 25.675512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780411, 34.646175, 25.633718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064455, -0.082241, -0.994526,
		-0.792340, 0.610079, 0.000902,
		0.606665, 0.788061, -0.104486,
		38.962410, 34.882595, 25.602373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232140, 34.917175, 25.387306>,  <38.537746, 34.330952, 25.675512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232140, 34.917175, 25.387306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618877, 34.985420, 25.311310>,  <38.850922, 35.026367, 25.265711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618877, 34.985420, 25.311310>,  <38.232140, 34.917175, 25.387306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618877, 34.985420, 25.311310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197334, 0.026998, -0.979964,
		-0.162063, 0.984969, 0.059770,
		0.966848, 0.170610, -0.189992,
		38.908932, 35.036602, 25.254313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305996, 35.474586, 24.889404>,  <38.232140, 34.917175, 25.387306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305996, 35.474586, 24.889404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681522, 35.337627, 24.874544>,  <38.906837, 35.255451, 24.865627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681522, 35.337627, 24.874544>,  <38.305996, 35.474586, 24.889404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681522, 35.337627, 24.874544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034920, 0.201944, -0.978774,
		0.342635, 0.917595, 0.201546,
		0.938819, -0.342401, -0.037151,
		38.963169, 35.234909, 24.863400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634518, 35.964870, 24.498240>,  <38.305996, 35.474586, 24.889404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634518, 35.964870, 24.498240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873283, 35.645485, 24.466875>,  <39.016541, 35.453854, 24.448055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873283, 35.645485, 24.466875>,  <38.634518, 35.964870, 24.498240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873283, 35.645485, 24.466875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148748, 0.206176, -0.967143,
		0.788399, 0.565633, 0.241839,
		0.596910, -0.798467, -0.078412,
		39.052357, 35.405945, 24.443352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206402, 36.174656, 24.180517>,  <38.634518, 35.964870, 24.498240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206402, 36.174656, 24.180517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198444, 35.781166, 24.109081>,  <39.193668, 35.545074, 24.066219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198444, 35.781166, 24.109081>,  <39.206402, 36.174656, 24.180517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198444, 35.781166, 24.109081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086304, 0.176269, -0.980551,
		0.996070, -0.034918, 0.081393,
		-0.019892, -0.983723, -0.178590,
		39.192478, 35.486050, 24.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913872, 36.034836, 23.881350>,  <39.206402, 36.174656, 24.180517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913872, 36.034836, 23.881350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660946, 35.748550, 23.762735>,  <39.509190, 35.576778, 23.691566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660946, 35.748550, 23.762735>,  <39.913872, 36.034836, 23.881350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660946, 35.748550, 23.762735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256179, 0.168068, -0.951906,
		0.731133, -0.677867, 0.077080,
		-0.632311, -0.715717, -0.296535,
		39.471252, 35.533836, 23.673775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.954975, 29.753340, 23.484167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229958, 30.040726, 23.441805>,  <35.394947, 30.213158, 23.416388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229958, 30.040726, 23.441805>,  <34.954975, 29.753340, 23.484167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229958, 30.040726, 23.441805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215375, -0.062429, 0.974534,
		0.693558, -0.692755, -0.197657,
		0.687453, 0.718466, -0.105904,
		35.436192, 30.256266, 23.410034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620823, 29.558840, 23.897907>,  <34.954975, 29.753340, 23.484167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620823, 29.558840, 23.897907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625416, 29.956877, 23.858597>,  <35.628174, 30.195700, 23.835011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625416, 29.956877, 23.858597>,  <35.620823, 29.558840, 23.897907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625416, 29.956877, 23.858597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242793, 0.092567, 0.965652,
		0.970010, -0.034951, -0.240539,
		0.011484, 0.995093, -0.098276,
		35.628860, 30.255405, 23.829113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216476, 29.843502, 24.211140>,  <35.620823, 29.558840, 23.897907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216476, 29.843502, 24.211140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.928879, 30.121504, 24.210056>,  <35.756321, 30.288305, 24.209406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.928879, 30.121504, 24.210056>,  <36.216476, 29.843502, 24.211140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928879, 30.121504, 24.210056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070408, 0.076712, 0.994564,
		0.691436, 0.714899, -0.104090,
		-0.718998, 0.695007, -0.002707,
		35.713181, 30.330006, 24.209244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500515, 30.355213, 24.638376>,  <36.216476, 29.843502, 24.211140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500515, 30.355213, 24.638376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114159, 30.455326, 24.664921>,  <35.882343, 30.515394, 24.680847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114159, 30.455326, 24.664921>,  <36.500515, 30.355213, 24.638376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114159, 30.455326, 24.664921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026643, -0.158868, 0.986940,
		0.257558, 0.955050, 0.146781,
		-0.965896, 0.250283, 0.066363,
		35.824390, 30.530411, 24.684830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407589, 30.725952, 25.180855>,  <36.500515, 30.355213, 24.638376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407589, 30.725952, 25.180855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018070, 30.645927, 25.137583>,  <35.784359, 30.597912, 25.111620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018070, 30.645927, 25.137583>,  <36.407589, 30.725952, 25.180855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018070, 30.645927, 25.137583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109741, -0.003298, 0.993955,
		-0.199211, 0.979777, -0.018744,
		-0.973792, -0.200064, -0.108179,
		35.725933, 30.585909, 25.105129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106071, 31.212261, 25.452660>,  <36.407589, 30.725952, 25.180855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106071, 31.212261, 25.452660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829460, 30.924952, 25.483320>,  <35.663494, 30.752565, 25.501717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829460, 30.924952, 25.483320>,  <36.106071, 31.212261, 25.452660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829460, 30.924952, 25.483320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126118, 0.224539, 0.966269,
		-0.711259, 0.658531, -0.245861,
		-0.691524, -0.718275, 0.076653,
		35.622002, 30.709469, 25.506317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667732, 31.463507, 26.005852>,  <36.106071, 31.212261, 25.452660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667732, 31.463507, 26.005852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567486, 31.076540, 25.991436>,  <35.507339, 30.844360, 25.982786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567486, 31.076540, 25.991436>,  <35.667732, 31.463507, 26.005852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567486, 31.076540, 25.991436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156817, 0.003835, 0.987621,
		-0.955301, 0.253166, -0.152668,
		-0.250618, -0.967415, -0.036037,
		35.492302, 30.786316, 25.980625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008701, 31.332914, 26.367262>,  <35.667732, 31.463507, 26.005852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008701, 31.332914, 26.367262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215221, 30.991402, 26.340460>,  <35.339134, 30.786495, 26.324379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215221, 30.991402, 26.340460>,  <35.008701, 31.332914, 26.367262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215221, 30.991402, 26.340460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272749, -0.238096, 0.932158,
		-0.811812, -0.463000, -0.355797,
		0.516303, -0.853781, -0.067007,
		35.370113, 30.735268, 26.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649967, 30.851559, 26.654232>,  <35.008701, 31.332914, 26.367262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649967, 30.851559, 26.654232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983021, 30.630087, 26.659239>,  <35.182854, 30.497204, 26.662243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983021, 30.630087, 26.659239>,  <34.649967, 30.851559, 26.654232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983021, 30.630087, 26.659239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218320, -0.307374, 0.926206,
		-0.508974, -0.773925, -0.376810,
		0.832636, -0.553680, 0.012518,
		35.232811, 30.463984, 26.662994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509731, 30.248386, 27.090292>,  <34.649967, 30.851559, 26.654232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509731, 30.248386, 27.090292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908558, 30.273048, 27.072121>,  <35.147854, 30.287846, 27.061218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908558, 30.273048, 27.072121>,  <34.509731, 30.248386, 27.090292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908558, 30.273048, 27.072121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065765, -0.385376, 0.920413,
		0.039241, -0.920698, -0.388299,
		0.997063, 0.061655, -0.045427,
		35.207676, 30.291544, 27.058493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781116, 29.649864, 27.488737>,  <34.509731, 30.248386, 27.090292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781116, 29.649864, 27.488737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 29.903294, 27.467520>,  <35.275108, 30.055351, 27.454788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 29.903294, 27.467520>,  <34.781116, 29.649864, 27.488737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089863, 29.903294, 27.467520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187667, -0.147323, 0.971122,
		0.607462, -0.759527, -0.232614,
		0.771862, 0.633573, -0.053045,
		35.321423, 30.093365, 27.451607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272930, 29.314873, 27.909431>,  <34.781116, 29.649864, 27.488737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272930, 29.314873, 27.909431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411739, 29.689758, 27.895527>,  <35.495026, 29.914690, 27.887184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411739, 29.689758, 27.895527>,  <35.272930, 29.314873, 27.909431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411739, 29.689758, 27.895527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312923, -0.080766, 0.946338,
		0.884112, -0.339280, -0.321303,
		0.347024, 0.937212, -0.034763,
		35.515846, 29.970922, 27.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787228, 29.233105, 28.285942>,  <35.272930, 29.314873, 27.909431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787228, 29.233105, 28.285942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746593, 29.630289, 28.261583>,  <35.722214, 29.868599, 28.246967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746593, 29.630289, 28.261583>,  <35.787228, 29.233105, 28.285942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746593, 29.630289, 28.261583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129522, 0.073893, 0.988819,
		0.986360, 0.092558, -0.136116,
		-0.101581, 0.992962, -0.060897,
		35.716118, 29.928177, 28.243315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428432, 29.540941, 28.529324>,  <35.787228, 29.233105, 28.285942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428432, 29.540941, 28.529324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127880, 29.800266, 28.578493>,  <35.947548, 29.955862, 28.607994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127880, 29.800266, 28.578493>,  <36.428432, 29.540941, 28.529324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127880, 29.800266, 28.578493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140129, -0.025264, 0.989811,
		0.644813, 0.760955, -0.071864,
		-0.751386, 0.648313, 0.122923,
		35.902466, 29.994761, 28.615370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143642, 29.828758, 28.568419>,  <36.428432, 29.540941, 28.529324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143642, 29.828758, 28.568419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540138, 29.862953, 28.608690>,  <37.778034, 29.883471, 28.632854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540138, 29.862953, 28.608690>,  <37.143642, 29.828758, 28.568419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540138, 29.862953, 28.608690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097903, 0.036108, -0.994541,
		-0.088654, 0.995685, 0.027422,
		0.991239, 0.085485, 0.100681,
		37.837509, 29.888599, 28.638895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316074, 30.347902, 28.095728>,  <37.143642, 29.828758, 28.568419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316074, 30.347902, 28.095728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624615, 30.098116, 28.144810>,  <37.809738, 29.948244, 28.174259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624615, 30.098116, 28.144810>,  <37.316074, 30.347902, 28.095728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624615, 30.098116, 28.144810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209870, 0.067578, -0.975391,
		0.600805, 0.778125, 0.183183,
		0.771355, -0.624464, 0.122704,
		37.856022, 29.910776, 28.181622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756355, 30.597012, 27.654613>,  <37.316074, 30.347902, 28.095728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756355, 30.597012, 27.654613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.898312, 30.228693, 27.719349>,  <37.983486, 30.007702, 27.758190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.898312, 30.228693, 27.719349>,  <37.756355, 30.597012, 27.654613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898312, 30.228693, 27.719349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214265, -0.088393, -0.972768,
		0.910024, 0.379901, 0.165924,
		0.354889, -0.920794, 0.161839,
		38.004780, 29.952456, 27.767900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343029, 30.520884, 27.219036>,  <37.756355, 30.597012, 27.654613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343029, 30.520884, 27.219036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254345, 30.138933, 27.298090>,  <38.201134, 29.909763, 27.345522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254345, 30.138933, 27.298090>,  <38.343029, 30.520884, 27.219036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254345, 30.138933, 27.298090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308497, -0.260956, -0.914730,
		0.925026, -0.141837, 0.352433,
		-0.221713, -0.954874, 0.197635,
		38.187832, 29.852470, 27.357380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924980, 30.204323, 27.032902>,  <38.343029, 30.520884, 27.219036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924980, 30.204323, 27.032902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657032, 29.907515, 27.022436>,  <38.496265, 29.729429, 27.016157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657032, 29.907515, 27.022436>,  <38.924980, 30.204323, 27.032902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657032, 29.907515, 27.022436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235338, -0.178771, -0.955331,
		0.704198, -0.646101, 0.294378,
		-0.669866, -0.742020, -0.026162,
		38.456074, 29.684908, 27.014587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256508, 29.770729, 26.552505>,  <38.924980, 30.204323, 27.032902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256508, 29.770729, 26.552505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874527, 29.654968, 26.578762>,  <38.645340, 29.585512, 26.594517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874527, 29.654968, 26.578762>,  <39.256508, 29.770729, 26.552505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874527, 29.654968, 26.578762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028788, -0.129817, -0.991120,
		0.295356, -0.948363, 0.115638,
		-0.954953, -0.289405, 0.065643,
		38.588039, 29.568148, 26.598455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246689, 29.232588, 26.161690>,  <39.256508, 29.770729, 26.552505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246689, 29.232588, 26.161690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873920, 29.375992, 26.183582>,  <38.650261, 29.462034, 26.196718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873920, 29.375992, 26.183582>,  <39.246689, 29.232588, 26.161690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873920, 29.375992, 26.183582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056458, 0.005665, -0.998389,
		-0.358241, -0.933509, 0.014961,
		-0.931920, 0.358509, 0.054733,
		38.594345, 29.483545, 26.200003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878647, 28.958469, 25.481943>,  <39.246689, 29.232588, 26.161690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878647, 28.958469, 25.481943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608952, 29.231636, 25.594389>,  <38.447136, 29.395536, 25.661856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608952, 29.231636, 25.594389>,  <38.878647, 28.958469, 25.481943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608952, 29.231636, 25.594389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186014, 0.211335, -0.959550,
		-0.714704, -0.699257, -0.015458,
		-0.674239, 0.682918, 0.281113,
		38.406681, 29.436512, 25.678722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376060, 28.929680, 24.979490>,  <38.878647, 28.958469, 25.481943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376060, 28.929680, 24.979490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279575, 29.279617, 25.147522>,  <38.221684, 29.489580, 25.248341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279575, 29.279617, 25.147522>,  <38.376060, 28.929680, 24.979490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279575, 29.279617, 25.147522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266004, 0.356682, -0.895556,
		-0.933306, -0.327760, 0.146677,
		-0.241210, 0.874844, 0.420078,
		38.207211, 29.542070, 25.273546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685909, 29.185957, 24.635183>,  <38.376060, 28.929680, 24.979490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685909, 29.185957, 24.635183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930687, 29.476669, 24.759968>,  <38.077553, 29.651096, 24.834839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930687, 29.476669, 24.759968>,  <37.685909, 29.185957, 24.635183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930687, 29.476669, 24.759968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083580, 0.451653, -0.888270,
		-0.786475, 0.517495, 0.337129,
		0.611941, 0.726780, 0.311962,
		38.114269, 29.694704, 24.853556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455215, 29.793745, 24.357166>,  <37.685909, 29.185957, 24.635183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455215, 29.793745, 24.357166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832825, 29.893063, 24.444046>,  <38.059391, 29.952654, 24.496174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832825, 29.893063, 24.444046>,  <37.455215, 29.793745, 24.357166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832825, 29.893063, 24.444046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072035, 0.487358, -0.870226,
		-0.321925, 0.837157, 0.442190,
		0.944021, 0.248295, 0.217198,
		38.116032, 29.967550, 24.509205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589691, 30.543158, 24.255203>,  <37.455215, 29.793745, 24.357166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589691, 30.543158, 24.255203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946461, 30.366070, 24.218367>,  <38.160522, 30.259817, 24.196264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946461, 30.366070, 24.218367>,  <37.589691, 30.543158, 24.255203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946461, 30.366070, 24.218367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163491, 0.505590, -0.847142,
		0.421604, 0.740527, 0.523326,
		0.891920, -0.442718, -0.092090,
		38.214035, 30.233255, 24.190741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941391, 31.036959, 23.861988>,  <37.589691, 30.543158, 24.255203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941391, 31.036959, 23.861988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177937, 30.714411, 23.859148>,  <38.319866, 30.520882, 23.857443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177937, 30.714411, 23.859148>,  <37.941391, 31.036959, 23.861988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177937, 30.714411, 23.859148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251021, 0.192446, -0.948658,
		0.766337, 0.559224, 0.316223,
		0.591368, -0.806371, -0.007102,
		38.355347, 30.472500, 23.857018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622314, 31.214176, 23.522692>,  <37.941391, 31.036959, 23.861988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622314, 31.214176, 23.522692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609962, 30.816179, 23.484673>,  <38.602551, 30.577381, 23.461861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609962, 30.816179, 23.484673>,  <38.622314, 31.214176, 23.522692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609962, 30.816179, 23.484673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164044, 0.088758, -0.982452,
		0.985970, -0.045926, 0.160482,
		-0.030876, -0.994994, -0.095046,
		38.600700, 30.517681, 23.456160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326618, 31.338940, 23.536396>,  <38.622314, 31.214176, 23.522692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326618, 31.338940, 23.536396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443920, 31.718601, 23.490604>,  <39.514301, 31.946398, 23.463129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443920, 31.718601, 23.490604>,  <39.326618, 31.338940, 23.536396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443920, 31.718601, 23.490604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319028, 0.015723, 0.947615,
		0.901233, -0.314417, -0.298196,
		0.293258, 0.949155, -0.114478,
		39.531898, 32.003349, 23.456261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023266, 31.321255, 23.615826>,  <39.326618, 31.338940, 23.536396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023266, 31.321255, 23.615826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.889656, 31.688507, 23.701113>,  <39.809490, 31.908859, 23.752285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.889656, 31.688507, 23.701113>,  <40.023266, 31.321255, 23.615826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889656, 31.688507, 23.701113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360241, -0.084686, 0.929008,
		0.871009, 0.387118, -0.302462,
		-0.334021, 0.918133, 0.213218,
		39.789452, 31.963947, 23.765078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624409, 31.771503, 23.878220>,  <40.023266, 31.321255, 23.615826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624409, 31.771503, 23.878220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315804, 31.987173, 24.013311>,  <40.130642, 32.116577, 24.094366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315804, 31.987173, 24.013311>,  <40.624409, 31.771503, 23.878220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315804, 31.987173, 24.013311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358321, -0.070398, 0.930941,
		0.525716, 0.839246, -0.138885,
		-0.771511, 0.539176, 0.337728,
		40.084351, 32.148926, 24.114630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852962, 32.283085, 24.194548>,  <40.624409, 31.771503, 23.878220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852962, 32.283085, 24.194548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488258, 32.243549, 24.354010>,  <40.269436, 32.219826, 24.449688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488258, 32.243549, 24.354010>,  <40.852962, 32.283085, 24.194548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488258, 32.243549, 24.354010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398541, 0.021774, 0.916892,
		-0.099309, 0.994865, 0.019541,
		-0.911758, -0.098843, 0.398656,
		40.214729, 32.213898, 24.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826286, 32.745586, 24.766216>,  <40.852962, 32.283085, 24.194548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826286, 32.745586, 24.766216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535110, 32.484554, 24.850351>,  <40.360405, 32.327934, 24.900833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535110, 32.484554, 24.850351>,  <40.826286, 32.745586, 24.766216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535110, 32.484554, 24.850351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278744, -0.001389, 0.960364,
		-0.626420, 0.757720, 0.182913,
		-0.727942, -0.652578, 0.210340,
		40.316727, 32.288780, 24.913454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463051, 32.938549, 25.280312>,  <40.826286, 32.745586, 24.766216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463051, 32.938549, 25.280312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363655, 32.553429, 25.322786>,  <40.304016, 32.322357, 25.348270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363655, 32.553429, 25.322786>,  <40.463051, 32.938549, 25.280312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363655, 32.553429, 25.322786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356615, 0.010990, 0.934187,
		-0.900599, 0.270004, 0.340617,
		-0.248491, -0.962797, 0.106185,
		40.289108, 32.264591, 25.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329594, 32.939075, 25.961863>,  <40.463051, 32.938549, 25.280312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329594, 32.939075, 25.961863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338497, 32.544956, 25.894117>,  <40.343838, 32.308483, 25.853470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338497, 32.544956, 25.894117>,  <40.329594, 32.939075, 25.961863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338497, 32.544956, 25.894117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258713, -0.157960, 0.952951,
		-0.965698, -0.065027, 0.251394,
		0.022257, -0.985302, -0.169365,
		40.345173, 32.249367, 25.843307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917164, 32.629467, 26.398727>,  <40.329594, 32.939075, 25.961863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917164, 32.629467, 26.398727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104649, 32.295357, 26.283751>,  <40.217140, 32.094891, 26.214764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104649, 32.295357, 26.283751>,  <39.917164, 32.629467, 26.398727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104649, 32.295357, 26.283751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053840, -0.297783, 0.953114,
		-0.881708, -0.462213, -0.094604,
		0.468714, -0.835275, -0.287443,
		40.245262, 32.044773, 26.197517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645859, 32.073151, 26.879126>,  <39.917164, 32.629467, 26.398727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645859, 32.073151, 26.879126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990002, 31.942957, 26.722235>,  <40.196487, 31.864840, 26.628099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.990002, 31.942957, 26.722235>,  <39.645859, 32.073151, 26.879126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990002, 31.942957, 26.722235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213288, -0.469006, 0.857054,
		-0.462895, -0.821039, -0.334100,
		0.860370, -0.325466, -0.392218,
		40.248108, 31.845310, 26.604567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580704, 31.355837, 26.890987>,  <39.645859, 32.073151, 26.879126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580704, 31.355837, 26.890987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961964, 31.476830, 26.891954>,  <40.190720, 31.549425, 26.892534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961964, 31.476830, 26.891954>,  <39.580704, 31.355837, 26.890987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961964, 31.476830, 26.891954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092881, -0.300258, 0.949325,
		0.287879, -0.904627, -0.314287,
		0.953152, 0.302482, 0.002415,
		40.247910, 31.567574, 26.892679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103340, 30.768991, 27.141830>,  <39.580704, 31.355837, 26.890987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103340, 30.768991, 27.141830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319908, 31.098406, 27.209532>,  <40.449848, 31.296055, 27.250153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319908, 31.098406, 27.209532>,  <40.103340, 30.768991, 27.141830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319908, 31.098406, 27.209532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141765, -0.287856, 0.947123,
		0.828712, -0.488799, -0.272601,
		0.541423, 0.823538, 0.169255,
		40.482334, 31.345467, 27.260307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482578, 30.589649, 27.587379>,  <40.103340, 30.768991, 27.141830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482578, 30.589649, 27.587379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532837, 30.985554, 27.614458>,  <40.562992, 31.223097, 27.630705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532837, 30.985554, 27.614458>,  <40.482578, 30.589649, 27.587379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532837, 30.985554, 27.614458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126522, -0.083667, 0.988429,
		0.983974, -0.115632, -0.135740,
		0.125651, 0.989762, 0.067696,
		40.570534, 31.282482, 27.634768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113480, 30.632170, 28.004150>,  <40.482578, 30.589649, 27.587379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113480, 30.632170, 28.004150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949791, 30.996164, 28.030872>,  <40.851578, 31.214561, 28.046906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949791, 30.996164, 28.030872>,  <41.113480, 30.632170, 28.004150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949791, 30.996164, 28.030872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283705, 0.057312, 0.957197,
		0.867207, 0.410660, -0.281621,
		-0.409223, 0.909985, 0.066805,
		40.827023, 31.269159, 28.050915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516163, 30.991592, 28.473196>,  <41.113480, 30.632170, 28.004150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516163, 30.991592, 28.473196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.172283, 31.195869, 28.468998>,  <40.965954, 31.318436, 28.466478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.172283, 31.195869, 28.468998>,  <41.516163, 30.991592, 28.473196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172283, 31.195869, 28.468998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082429, 0.158981, 0.983835,
		0.504104, 0.844938, -0.178771,
		-0.859700, 0.510691, -0.010496,
		40.914371, 31.349077, 28.465849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.508514, 35.181892, 23.571312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140602, 35.125832, 23.424692>,  <39.919853, 35.092194, 23.336721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140602, 35.125832, 23.424692>,  <40.508514, 35.181892, 23.571312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140602, 35.125832, 23.424692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323593, 0.257543, -0.910472,
		0.222003, -0.956049, -0.191533,
		-0.919784, -0.140149, -0.366547,
		39.864666, 35.083786, 23.314728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587669, 34.784458, 22.982693>,  <40.508514, 35.181892, 23.571312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587669, 34.784458, 22.982693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228207, 34.950668, 22.926477>,  <40.012527, 35.050396, 22.892748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228207, 34.950668, 22.926477>,  <40.587669, 34.784458, 22.982693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228207, 34.950668, 22.926477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274802, 0.283584, -0.918729,
		-0.341900, -0.864245, -0.369033,
		-0.898659, 0.415524, -0.140539,
		39.958611, 35.075325, 22.884315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344669, 34.511303, 22.277037>,  <40.587669, 34.784458, 22.982693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344669, 34.511303, 22.277037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083778, 34.810230, 22.327814>,  <39.927242, 34.989586, 22.358280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083778, 34.810230, 22.327814>,  <40.344669, 34.511303, 22.277037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083778, 34.810230, 22.327814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195828, 0.327899, -0.924193,
		-0.732289, -0.577928, -0.360212,
		-0.652230, 0.747316, 0.126942,
		39.888111, 35.034424, 22.365896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823704, 34.490433, 21.794594>,  <40.344669, 34.511303, 22.277037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823704, 34.490433, 21.794594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814606, 34.880089, 21.884512>,  <39.809147, 35.113884, 21.938463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814606, 34.880089, 21.884512>,  <39.823704, 34.490433, 21.794594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814606, 34.880089, 21.884512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103778, 0.225941, -0.968597,
		-0.994340, 0.001295, -0.106234,
		-0.022748, 0.974140, 0.224796,
		39.807781, 35.172333, 21.951950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344727, 34.770351, 21.311924>,  <39.823704, 34.490433, 21.794594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344727, 34.770351, 21.311924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556011, 35.079811, 21.451900>,  <39.682781, 35.265488, 21.535887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556011, 35.079811, 21.451900>,  <39.344727, 34.770351, 21.311924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556011, 35.079811, 21.451900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028430, 0.395782, -0.917904,
		-0.848637, 0.494796, 0.187061,
		0.528210, 0.773650, 0.349942,
		39.714474, 35.311905, 21.556883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972374, 35.437740, 21.074541>,  <39.344727, 34.770351, 21.311924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972374, 35.437740, 21.074541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359238, 35.508129, 21.147911>,  <39.591354, 35.550362, 21.191933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.359238, 35.508129, 21.147911>,  <38.972374, 35.437740, 21.074541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359238, 35.508129, 21.147911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088414, 0.443664, -0.891821,
		-0.238310, 0.878748, 0.413534,
		0.967156, 0.175968, 0.183423,
		39.649384, 35.560921, 21.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098724, 36.163471, 21.010500>,  <38.972374, 35.437740, 21.074541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098724, 36.163471, 21.010500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.436649, 35.962940, 20.935698>,  <39.639404, 35.842621, 20.890816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.436649, 35.962940, 20.935698>,  <39.098724, 36.163471, 21.010500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436649, 35.962940, 20.935698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134686, 0.537492, -0.832444,
		0.517838, 0.678069, 0.521599,
		0.844810, -0.501323, -0.187007,
		39.690094, 35.812542, 20.879595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436615, 36.608154, 20.662294>,  <39.098724, 36.163471, 21.010500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436615, 36.608154, 20.662294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653229, 36.280312, 20.587477>,  <39.783199, 36.083607, 20.542585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653229, 36.280312, 20.587477>,  <39.436615, 36.608154, 20.662294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653229, 36.280312, 20.587477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230155, 0.358534, -0.904700,
		0.808558, 0.446879, 0.382796,
		0.541537, -0.819605, -0.187044,
		39.815689, 36.034431, 20.531364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065914, 36.766548, 20.414061>,  <39.436615, 36.608154, 20.662294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065914, 36.766548, 20.414061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013706, 36.402611, 20.256508>,  <39.982380, 36.184246, 20.161976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013706, 36.402611, 20.256508>,  <40.065914, 36.766548, 20.414061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013706, 36.402611, 20.256508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199473, 0.365058, -0.909365,
		0.971172, -0.197262, 0.133841,
		-0.130523, -0.909847, -0.393882,
		39.974548, 36.129658, 20.138344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426937, 36.699619, 19.869875>,  <40.065914, 36.766548, 20.414061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426937, 36.699619, 19.869875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175377, 36.401852, 19.780134>,  <40.024441, 36.223190, 19.726290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175377, 36.401852, 19.780134>,  <40.426937, 36.699619, 19.869875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175377, 36.401852, 19.780134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001166, 0.289461, -0.957189,
		0.777488, -0.601712, -0.182909,
		-0.628897, -0.744416, -0.224351,
		39.986710, 36.178528, 19.712830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577881, 36.424831, 19.181944>,  <40.426937, 36.699619, 19.869875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577881, 36.424831, 19.181944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210590, 36.285347, 19.257057>,  <39.990215, 36.201656, 19.302124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210590, 36.285347, 19.257057>,  <40.577881, 36.424831, 19.181944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210590, 36.285347, 19.257057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260222, 0.173752, -0.949787,
		0.298575, -0.920983, -0.250286,
		-0.918225, -0.348713, 0.187782,
		39.935123, 36.180733, 19.313393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341309, 36.062275, 18.593435>,  <40.577881, 36.424831, 19.181944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341309, 36.062275, 18.593435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998184, 35.857319, 18.577303>,  <39.792309, 35.734344, 18.567623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998184, 35.857319, 18.577303>,  <40.341309, 36.062275, 18.593435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998184, 35.857319, 18.577303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332657, -0.493670, -0.803511,
		0.391798, -0.702673, 0.593923,
		-0.857807, -0.512387, -0.040330,
		39.740841, 35.703602, 18.565205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539623, 35.377308, 18.610212>,  <40.341309, 36.062275, 18.593435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539623, 35.377308, 18.610212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.180519, 35.431965, 18.442709>,  <39.965057, 35.464760, 18.342207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.180519, 35.431965, 18.442709>,  <40.539623, 35.377308, 18.610212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180519, 35.431965, 18.442709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287246, -0.539126, -0.791728,
		-0.333945, -0.831068, 0.444755,
		-0.897758, 0.136639, -0.418759,
		39.911190, 35.472958, 18.317081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116409, 34.718086, 18.439060>,  <40.539623, 35.377308, 18.610212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116409, 34.718086, 18.439060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027077, 35.017685, 18.189541>,  <39.973476, 35.197445, 18.039829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027077, 35.017685, 18.189541>,  <40.116409, 34.718086, 18.439060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027077, 35.017685, 18.189541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269931, -0.567410, -0.777935,
		-0.936622, -0.342119, -0.075458,
		-0.223331, 0.748999, -0.623798,
		39.960079, 35.242386, 18.002401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472328, 34.317074, 18.191732>,  <40.116409, 34.718086, 18.439060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472328, 34.317074, 18.191732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663284, 33.968678, 18.145290>,  <39.777859, 33.759640, 18.117426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663284, 33.968678, 18.145290>,  <39.472328, 34.317074, 18.191732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663284, 33.968678, 18.145290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283844, -0.277909, 0.917714,
		-0.831583, -0.405152, -0.379896,
		0.477390, -0.870987, -0.116104,
		39.806503, 33.707382, 18.110458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952446, 33.781231, 18.208055>,  <39.472328, 34.317074, 18.191732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952446, 33.781231, 18.208055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.304626, 33.639030, 18.333548>,  <39.515934, 33.553711, 18.408842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.304626, 33.639030, 18.333548>,  <38.952446, 33.781231, 18.208055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304626, 33.639030, 18.333548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457174, -0.461105, 0.760509,
		-0.125700, -0.813020, -0.568506,
		0.880450, -0.355502, 0.313731,
		39.568760, 33.532379, 18.427668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801929, 33.144554, 18.463327>,  <38.952446, 33.781231, 18.208055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801929, 33.144554, 18.463327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.164387, 33.228100, 18.610451>,  <39.381859, 33.278229, 18.698725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.164387, 33.228100, 18.610451>,  <38.801929, 33.144554, 18.463327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164387, 33.228100, 18.610451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205914, -0.541746, 0.814930,
		0.369471, -0.814178, -0.447889,
		0.906140, 0.208867, 0.367810,
		39.436230, 33.290760, 18.720793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992664, 32.523895, 18.740864>,  <38.801929, 33.144554, 18.463327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992664, 32.523895, 18.740864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194603, 32.810215, 18.933846>,  <39.315765, 32.982006, 19.049635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194603, 32.810215, 18.933846>,  <38.992664, 32.523895, 18.740864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194603, 32.810215, 18.933846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159178, -0.472128, 0.867040,
		0.848405, -0.514520, -0.124414,
		0.504849, 0.715796, 0.482456,
		39.346058, 33.024956, 19.078583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141262, 32.095413, 19.241808>,  <38.992664, 32.523895, 18.740864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141262, 32.095413, 19.241808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262115, 32.457256, 19.362074>,  <39.334629, 32.674362, 19.434233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262115, 32.457256, 19.362074>,  <39.141262, 32.095413, 19.241808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262115, 32.457256, 19.362074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070675, -0.335793, 0.939281,
		0.950642, -0.262538, -0.165388,
		0.302133, 0.904609, 0.300664,
		39.352757, 32.728638, 19.452272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916069, 32.087692, 19.648026>,  <39.141262, 32.095413, 19.241808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916069, 32.087692, 19.648026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692276, 32.400135, 19.758909>,  <39.557999, 32.587601, 19.825439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692276, 32.400135, 19.758909>,  <39.916069, 32.087692, 19.648026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692276, 32.400135, 19.758909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168114, -0.220558, 0.960777,
		0.811612, 0.584144, -0.007916,
		-0.559486, 0.781108, 0.277210,
		39.524429, 32.634468, 19.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301430, 32.328968, 20.206648>,  <39.916069, 32.087692, 19.648026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301430, 32.328968, 20.206648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941307, 32.493462, 20.263681>,  <39.725231, 32.592159, 20.297901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941307, 32.493462, 20.263681>,  <40.301430, 32.328968, 20.206648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941307, 32.493462, 20.263681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038176, -0.251716, 0.967048,
		0.433573, 0.876086, 0.210923,
		-0.900310, 0.411233, 0.142583,
		39.671215, 32.616833, 20.306456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322666, 32.737473, 20.756905>,  <40.301430, 32.328968, 20.206648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322666, 32.737473, 20.756905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925945, 32.691727, 20.734114>,  <39.687912, 32.664280, 20.720440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.925945, 32.691727, 20.734114>,  <40.322666, 32.737473, 20.756905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925945, 32.691727, 20.734114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035280, -0.183462, 0.982394,
		-0.122801, 0.976352, 0.177923,
		-0.991804, -0.114362, -0.056975,
		39.628403, 32.657417, 20.717022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076275, 33.286350, 21.170792>,  <40.322666, 32.737473, 20.756905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076275, 33.286350, 21.170792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764740, 33.037312, 21.140387>,  <39.577820, 32.887886, 21.122145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764740, 33.037312, 21.140387>,  <40.076275, 33.286350, 21.170792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764740, 33.037312, 21.140387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045348, -0.064975, 0.996856,
		-0.625581, 0.779839, 0.022371,
		-0.778840, -0.622600, -0.076012,
		39.531090, 32.850533, 21.117582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501366, 33.537056, 21.553091>,  <40.076275, 33.286350, 21.170792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501366, 33.537056, 21.553091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456348, 33.140301, 21.529438>,  <39.429340, 32.902248, 21.515245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456348, 33.140301, 21.529438>,  <39.501366, 33.537056, 21.553091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456348, 33.140301, 21.529438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066694, -0.051838, 0.996426,
		-0.991406, 0.116082, -0.060319,
		-0.112541, -0.991886, -0.059134,
		39.422585, 32.842735, 21.511698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090691, 33.402225, 22.126768>,  <39.501366, 33.537056, 21.553091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090691, 33.402225, 22.126768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246441, 33.054401, 22.005276>,  <39.339890, 32.845707, 21.932381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246441, 33.054401, 22.005276>,  <39.090691, 33.402225, 22.126768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246441, 33.054401, 22.005276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046001, -0.310983, 0.949302,
		-0.919929, -0.383608, -0.081089,
		0.389377, -0.869560, -0.303729,
		39.363255, 32.793533, 21.914158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635525, 32.837559, 22.447992>,  <39.090691, 33.402225, 22.126768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635525, 32.837559, 22.447992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978775, 32.658199, 22.347942>,  <39.184723, 32.550583, 22.287912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978775, 32.658199, 22.347942>,  <38.635525, 32.837559, 22.447992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978775, 32.658199, 22.347942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025168, -0.449825, 0.892762,
		-0.512830, -0.772393, -0.374719,
		0.858121, -0.448404, -0.250123,
		39.236214, 32.523678, 22.272905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568371, 32.203571, 22.550915>,  <38.635525, 32.837559, 22.447992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568371, 32.203571, 22.550915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956799, 32.290886, 22.589655>,  <39.189854, 32.343273, 22.612900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956799, 32.290886, 22.589655>,  <38.568371, 32.203571, 22.550915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956799, 32.290886, 22.589655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028336, -0.297372, 0.954341,
		0.237122, -0.929473, -0.282582,
		0.971067, 0.218288, 0.096851,
		39.248119, 32.356373, 22.618710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859680, 31.565178, 22.926403>,  <38.568371, 32.203571, 22.550915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859680, 31.565178, 22.926403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105560, 31.878664, 22.962042>,  <39.253086, 32.066757, 22.983425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105560, 31.878664, 22.962042>,  <38.859680, 31.565178, 22.926403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105560, 31.878664, 22.962042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168970, -0.241171, 0.955660,
		0.770453, -0.572387, -0.280672,
		0.614697, 0.783715, 0.089095,
		39.289970, 32.113777, 22.988770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236507, 30.899557, 22.939325>,  <38.859680, 31.565178, 22.926403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236507, 30.899557, 22.939325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995453, 30.584951, 22.993320>,  <38.850819, 30.396189, 23.025717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995453, 30.584951, 22.993320>,  <39.236507, 30.899557, 22.939325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995453, 30.584951, 22.993320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011879, -0.177978, -0.983963,
		0.797925, -0.591372, 0.116600,
		-0.602640, -0.786513, 0.134988,
		38.814659, 30.348997, 23.033817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632202, 30.316269, 22.613325>,  <39.236507, 30.899557, 22.939325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632202, 30.316269, 22.613325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242054, 30.230328, 22.633287>,  <39.007965, 30.178762, 22.645266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242054, 30.230328, 22.633287>,  <39.632202, 30.316269, 22.613325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242054, 30.230328, 22.633287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002893, -0.238698, -0.971089,
		0.220553, -0.947028, 0.233441,
		-0.975370, -0.214852, 0.049906,
		38.949444, 30.165873, 22.648260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598736, 29.789436, 22.118124>,  <39.632202, 30.316269, 22.613325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598736, 29.789436, 22.118124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214508, 29.896217, 22.149231>,  <38.983971, 29.960287, 22.167894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214508, 29.896217, 22.149231>,  <39.598736, 29.789436, 22.118124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214508, 29.896217, 22.149231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135404, -0.204827, -0.969387,
		-0.242863, -0.941688, 0.232898,
		-0.960564, 0.266963, 0.077764,
		38.926338, 29.976303, 22.172562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189495, 29.314167, 21.696388>,  <39.598736, 29.789436, 22.118124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189495, 29.314167, 21.696388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975315, 29.648413, 21.745447>,  <38.846806, 29.848961, 21.774883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975315, 29.648413, 21.745447>,  <39.189495, 29.314167, 21.696388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975315, 29.648413, 21.745447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104754, 0.078390, -0.991404,
		-0.838046, -0.543694, 0.045560,
		-0.535448, 0.835615, 0.122649,
		38.814682, 29.899097, 21.782242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548580, 29.133348, 21.222961>,  <39.189495, 29.314167, 21.696388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548580, 29.133348, 21.222961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542889, 29.527807, 21.289068>,  <38.539474, 29.764482, 21.328732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542889, 29.527807, 21.289068>,  <38.548580, 29.133348, 21.222961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542889, 29.527807, 21.289068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227345, 0.157764, -0.960950,
		-0.973710, -0.051244, 0.221951,
		-0.014227, 0.986146, 0.165266,
		38.538620, 29.823650, 21.338648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952621, 29.386560, 20.945349>,  <38.548580, 29.133348, 21.222961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952621, 29.386560, 20.945349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.213074, 29.689436, 20.966108>,  <38.369347, 29.871161, 20.978563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.213074, 29.689436, 20.966108>,  <37.952621, 29.386560, 20.945349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213074, 29.689436, 20.966108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273506, 0.297884, -0.914582,
		-0.707971, 0.581318, 0.401057,
		0.651131, 0.757189, 0.051899,
		38.408413, 29.916594, 20.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718071, 29.935707, 20.532299>,  <37.952621, 29.386560, 20.945349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718071, 29.935707, 20.532299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104980, 30.035456, 20.551043>,  <38.337128, 30.095304, 20.562288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104980, 30.035456, 20.551043>,  <37.718071, 29.935707, 20.532299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104980, 30.035456, 20.551043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030726, 0.298434, -0.953936,
		-0.251867, 0.921277, 0.296330,
		0.967274, 0.249370, 0.046859,
		38.395164, 30.110268, 20.565100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258049, 30.472345, 20.829727>,  <37.718071, 29.935707, 20.532299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258049, 30.472345, 20.829727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858608, 30.467918, 20.809032>,  <36.618946, 30.465261, 20.796616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858608, 30.467918, 20.809032>,  <37.258049, 30.472345, 20.829727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858608, 30.467918, 20.809032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049142, -0.168392, 0.984494,
		-0.019608, 0.985658, 0.167613,
		-0.998599, -0.011067, -0.051739,
		36.559029, 30.464598, 20.793510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004219, 30.898731, 21.257378>,  <37.258049, 30.472345, 20.829727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004219, 30.898731, 21.257378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669907, 30.680002, 21.237543>,  <36.469318, 30.548765, 21.225641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669907, 30.680002, 21.237543>,  <37.004219, 30.898731, 21.257378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669907, 30.680002, 21.237543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152334, 0.144165, 0.977758,
		-0.527513, 0.824742, -0.203790,
		-0.835778, -0.546824, -0.049587,
		36.419174, 30.515955, 21.222668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474335, 31.327543, 21.449667>,  <37.004219, 30.898731, 21.257378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474335, 31.327543, 21.449667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358074, 30.948877, 21.505310>,  <36.288319, 30.721678, 21.538696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358074, 30.948877, 21.505310>,  <36.474335, 31.327543, 21.449667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358074, 30.948877, 21.505310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302887, 0.228936, 0.925120,
		-0.907625, 0.226752, -0.353272,
		-0.290650, -0.946663, 0.139108,
		36.270878, 30.664879, 21.547043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959320, 31.389061, 21.876808>,  <36.474335, 31.327543, 21.449667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959320, 31.389061, 21.876808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.981750, 30.990477, 21.901840>,  <35.995209, 30.751326, 21.916861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.981750, 30.990477, 21.901840>,  <35.959320, 31.389061, 21.876808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981750, 30.990477, 21.901840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472807, 0.028702, 0.880698,
		-0.879380, -0.078977, -0.469525,
		0.056079, -0.996463, 0.062581,
		35.998573, 30.691538, 21.920614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276043, 31.114414, 22.040470>,  <35.959320, 31.389061, 21.876808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276043, 31.114414, 22.040470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557121, 30.853199, 22.153435>,  <35.725769, 30.696470, 22.221214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557121, 30.853199, 22.153435>,  <35.276043, 31.114414, 22.040470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557121, 30.853199, 22.153435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458011, -0.111438, 0.881934,
		-0.544467, -0.749079, -0.377407,
		0.702696, -0.653040, 0.282413,
		35.767929, 30.657288, 22.238159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876583, 30.558853, 22.305458>,  <35.276043, 31.114414, 22.040470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876583, 30.558853, 22.305458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.246620, 30.519230, 22.452099>,  <35.468643, 30.495457, 22.540083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.246620, 30.519230, 22.452099>,  <34.876583, 30.558853, 22.305458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246620, 30.519230, 22.452099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378696, -0.168771, 0.910003,
		-0.028271, -0.980665, -0.193642,
		0.925089, -0.099058, 0.366602,
		35.524147, 30.489511, 22.562080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847301, 30.130066, 22.896257>,  <34.876583, 30.558853, 22.305458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847301, 30.130066, 22.896257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.210815, 30.289295, 22.946299>,  <35.428925, 30.384832, 22.976322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.210815, 30.289295, 22.946299>,  <34.847301, 30.130066, 22.896257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210815, 30.289295, 22.946299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048836, -0.196281, 0.979331,
		0.414400, -0.896109, -0.158937,
		0.908784, 0.398073, 0.125102,
		35.483452, 30.408716, 22.983829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.764874, 36.446167, 18.574450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.120640, 36.488159, 18.752401>,  <37.334099, 36.513355, 18.859173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.120640, 36.488159, 18.752401>,  <36.764874, 36.446167, 18.574450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120640, 36.488159, 18.752401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326920, -0.534142, 0.779625,
		0.319472, -0.838851, -0.440756,
		0.889416, 0.104977, 0.444881,
		37.387466, 36.519653, 18.885866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945251, 35.737705, 18.817192>,  <36.764874, 36.446167, 18.574450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945251, 35.737705, 18.817192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134823, 36.005100, 19.046457>,  <37.248566, 36.165535, 19.184017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134823, 36.005100, 19.046457>,  <36.945251, 35.737705, 18.817192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134823, 36.005100, 19.046457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150016, -0.580096, 0.800614,
		0.867689, -0.465420, -0.174642,
		0.473932, 0.668485, 0.573163,
		37.277004, 36.205647, 19.218407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436146, 35.382450, 19.290735>,  <36.945251, 35.737705, 18.817192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436146, 35.382450, 19.290735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.307804, 35.731155, 19.438833>,  <37.230797, 35.940376, 19.527693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.307804, 35.731155, 19.438833>,  <37.436146, 35.382450, 19.290735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307804, 35.731155, 19.438833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083373, -0.415395, 0.905812,
		0.943451, 0.259767, 0.205963,
		-0.320856, 0.871762, 0.370247,
		37.211548, 35.992683, 19.549908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817089, 35.517925, 19.976995>,  <37.436146, 35.382450, 19.290735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817089, 35.517925, 19.976995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.483433, 35.738235, 19.988667>,  <37.283237, 35.870422, 19.995668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.483433, 35.738235, 19.988667>,  <37.817089, 35.517925, 19.976995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483433, 35.738235, 19.988667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168012, -0.304121, 0.937701,
		0.525340, 0.777272, 0.346217,
		-0.834141, 0.550780, 0.029176,
		37.233192, 35.903469, 19.997419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760574, 35.722702, 20.628839>,  <37.817089, 35.517925, 19.976995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760574, 35.722702, 20.628839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407185, 35.867306, 20.509649>,  <37.195152, 35.954067, 20.438135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407185, 35.867306, 20.509649>,  <37.760574, 35.722702, 20.628839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407185, 35.867306, 20.509649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314558, 0.013600, 0.949141,
		0.347176, 0.932269, 0.101701,
		-0.883471, 0.361510, -0.297974,
		37.142143, 35.975758, 20.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575897, 36.358486, 20.968452>,  <37.760574, 35.722702, 20.628839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575897, 36.358486, 20.968452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235455, 36.167606, 20.880913>,  <37.031189, 36.053078, 20.828390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235455, 36.167606, 20.880913>,  <37.575897, 36.358486, 20.968452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235455, 36.167606, 20.880913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210518, -0.071655, 0.974960,
		-0.480929, 0.875871, -0.039472,
		-0.851111, -0.477196, -0.218848,
		36.980122, 36.024448, 20.815258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049320, 36.706955, 21.236071>,  <37.575897, 36.358486, 20.968452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049320, 36.706955, 21.236071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911552, 36.336086, 21.177097>,  <36.828892, 36.113567, 21.141714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911552, 36.336086, 21.177097>,  <37.049320, 36.706955, 21.236071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911552, 36.336086, 21.177097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359330, -0.014893, 0.933091,
		-0.867328, 0.374351, -0.328030,
		-0.344419, -0.927167, -0.147432,
		36.808228, 36.057938, 21.132868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565571, 36.697109, 21.773193>,  <37.049320, 36.706955, 21.236071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565571, 36.697109, 21.773193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571354, 36.313965, 21.658445>,  <36.574825, 36.084080, 21.589596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571354, 36.313965, 21.658445>,  <36.565571, 36.697109, 21.773193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571354, 36.313965, 21.658445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292009, -0.278440, 0.914987,
		-0.956306, 0.070539, -0.283729,
		0.014460, -0.957860, -0.286872,
		36.575691, 36.026608, 21.572384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014877, 36.402981, 22.047686>,  <36.565571, 36.697109, 21.773193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014877, 36.402981, 22.047686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.233204, 36.074059, 21.983320>,  <36.364201, 35.876705, 21.944700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.233204, 36.074059, 21.983320>,  <36.014877, 36.402981, 22.047686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233204, 36.074059, 21.983320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154793, -0.287696, 0.945130,
		-0.823483, -0.490959, -0.284317,
		0.545817, -0.822308, -0.160916,
		36.396950, 35.827366, 21.935045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524349, 35.747559, 22.169209>,  <36.014877, 36.402981, 22.047686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524349, 35.747559, 22.169209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911144, 35.650303, 22.199736>,  <36.143219, 35.591949, 22.218052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911144, 35.650303, 22.199736>,  <35.524349, 35.747559, 22.169209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911144, 35.650303, 22.199736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170595, -0.395157, 0.902634,
		-0.189308, -0.885853, -0.423589,
		0.966985, -0.243138, 0.076316,
		36.201241, 35.577362, 22.222630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541889, 35.040241, 22.397633>,  <35.524349, 35.747559, 22.169209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541889, 35.040241, 22.397633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.891422, 35.204563, 22.501678>,  <36.101143, 35.303158, 22.564106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.891422, 35.204563, 22.501678>,  <35.541889, 35.040241, 22.397633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891422, 35.204563, 22.501678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067107, -0.427952, 0.901307,
		0.481577, -0.805045, -0.346390,
		0.873831, 0.410803, 0.260116,
		36.153572, 35.327805, 22.579714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948193, 34.538864, 22.682047>,  <35.541889, 35.040241, 22.397633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948193, 34.538864, 22.682047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109680, 34.876644, 22.822851>,  <36.206573, 35.079311, 22.907333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109680, 34.876644, 22.822851>,  <35.948193, 34.538864, 22.682047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109680, 34.876644, 22.822851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209739, -0.459942, 0.862823,
		0.890517, -0.274508, -0.362802,
		0.403720, 0.844451, 0.352011,
		36.230797, 35.129978, 22.928455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078671, 33.736599, 22.761961>,  <35.948193, 34.538864, 22.682047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078671, 33.736599, 22.761961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724644, 33.558372, 22.708113>,  <35.512226, 33.451439, 22.675804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724644, 33.558372, 22.708113>,  <36.078671, 33.736599, 22.761961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724644, 33.558372, 22.708113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175964, -0.052535, -0.982994,
		0.430914, -0.893707, 0.124900,
		-0.885071, -0.445564, -0.134622,
		35.459122, 33.424702, 22.667727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171288, 33.129047, 22.360853>,  <36.078671, 33.736599, 22.761961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171288, 33.129047, 22.360853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784687, 33.225914, 22.326826>,  <35.552727, 33.284035, 22.306410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784687, 33.225914, 22.326826>,  <36.171288, 33.129047, 22.360853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784687, 33.225914, 22.326826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080927, -0.027006, -0.996354,
		-0.243578, -0.969859, 0.006503,
		-0.966499, 0.242164, -0.085066,
		35.494736, 33.298561, 22.301306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801804, 32.638023, 21.914593>,  <36.171288, 33.129047, 22.360853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801804, 32.638023, 21.914593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560947, 32.957115, 21.901608>,  <35.416431, 33.148571, 21.893816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560947, 32.957115, 21.901608>,  <35.801804, 32.638023, 21.914593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560947, 32.957115, 21.901608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023989, -0.058721, -0.997986,
		-0.798028, -0.600152, 0.054495,
		-0.602143, 0.797728, -0.032464,
		35.380306, 33.196434, 21.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237591, 32.507000, 21.381134>,  <35.801804, 32.638023, 21.914593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237591, 32.507000, 21.381134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.211514, 32.903748, 21.424849>,  <35.195866, 33.141796, 21.451077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.211514, 32.903748, 21.424849>,  <35.237591, 32.507000, 21.381134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211514, 32.903748, 21.424849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050638, 0.112664, -0.992342,
		-0.996587, -0.059159, -0.057572,
		-0.065193, 0.991870, 0.109284,
		35.191956, 33.201309, 21.457634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739998, 32.717503, 20.902237>,  <35.237591, 32.507000, 21.381134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739998, 32.717503, 20.902237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952396, 33.045483, 20.987776>,  <35.079834, 33.242271, 21.039099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952396, 33.045483, 20.987776>,  <34.739998, 32.717503, 20.902237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952396, 33.045483, 20.987776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095228, 0.193023, -0.976562,
		-0.842008, 0.538912, 0.024412,
		0.530994, 0.819948, 0.213847,
		35.111694, 33.291466, 21.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442047, 33.267017, 20.583321>,  <34.739998, 32.717503, 20.902237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442047, 33.267017, 20.583321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.814114, 33.399448, 20.646801>,  <35.037354, 33.478909, 20.684889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.814114, 33.399448, 20.646801>,  <34.442047, 33.267017, 20.583321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814114, 33.399448, 20.646801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050241, 0.313403, -0.948290,
		-0.363696, 0.890037, 0.274882,
		0.930162, 0.331079, 0.158700,
		35.093163, 33.498772, 20.694410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437389, 33.950092, 20.309332>,  <34.442047, 33.267017, 20.583321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437389, 33.950092, 20.309332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819798, 33.833496, 20.322304>,  <35.049244, 33.763538, 20.330086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819798, 33.833496, 20.322304>,  <34.437389, 33.950092, 20.309332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819798, 33.833496, 20.322304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109929, 0.253623, -0.961037,
		0.271913, 0.922337, 0.274513,
		0.956023, -0.291495, 0.032428,
		35.106606, 33.746048, 20.332031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795139, 34.440018, 19.985310>,  <34.437389, 33.950092, 20.309332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795139, 34.440018, 19.985310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056057, 34.136845, 19.982601>,  <35.212608, 33.954941, 19.980976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056057, 34.136845, 19.982601>,  <34.795139, 34.440018, 19.985310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056057, 34.136845, 19.982601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154107, 0.141363, -0.977890,
		0.742132, 0.636831, 0.209013,
		0.652297, -0.757933, -0.006770,
		35.251747, 33.909466, 19.980570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366947, 34.608322, 19.431938>,  <34.795139, 34.440018, 19.985310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366947, 34.608322, 19.431938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375027, 34.213081, 19.492924>,  <35.379875, 33.975937, 19.529516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375027, 34.213081, 19.492924>,  <35.366947, 34.608322, 19.431938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375027, 34.213081, 19.492924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165212, -0.147102, -0.975226,
		0.986051, 0.044884, 0.160276,
		0.020195, -0.988102, 0.152466,
		35.381084, 33.916649, 19.538664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943863, 34.449570, 19.108948>,  <35.366947, 34.608322, 19.431938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943863, 34.449570, 19.108948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751587, 34.100693, 19.145193>,  <35.636219, 33.891365, 19.166941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751587, 34.100693, 19.145193>,  <35.943863, 34.449570, 19.108948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751587, 34.100693, 19.145193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192039, -0.205535, -0.959623,
		0.855602, -0.443884, 0.266295,
		-0.480694, -0.872194, 0.090613,
		35.607380, 33.839035, 19.172377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309280, 33.945957, 18.802517>,  <35.943863, 34.449570, 19.108948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309280, 33.945957, 18.802517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.933350, 33.809620, 18.793150>,  <35.707790, 33.727818, 18.787529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.933350, 33.809620, 18.793150>,  <36.309280, 33.945957, 18.802517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933350, 33.809620, 18.793150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071769, -0.129949, -0.988920,
		0.334027, -0.931094, 0.146592,
		-0.939827, -0.340847, -0.023418,
		35.651402, 33.707367, 18.786125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325302, 33.435871, 18.372757>,  <36.309280, 33.945957, 18.802517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325302, 33.435871, 18.372757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.940842, 33.544678, 18.391470>,  <35.710163, 33.609962, 18.402699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.940842, 33.544678, 18.391470>,  <36.325302, 33.435871, 18.372757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940842, 33.544678, 18.391470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063066, -0.051425, -0.996684,
		-0.268706, -0.960919, 0.066582,
		-0.961156, 0.272014, 0.046783,
		35.652496, 33.626282, 18.405504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047436, 32.953674, 17.862627>,  <36.325302, 33.435871, 18.372757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047436, 32.953674, 17.862627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752861, 33.219509, 17.913208>,  <35.576118, 33.379009, 17.943556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752861, 33.219509, 17.913208>,  <36.047436, 32.953674, 17.862627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752861, 33.219509, 17.913208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136384, 0.037232, -0.989956,
		-0.662618, -0.746284, 0.063220,
		-0.736435, 0.664585, 0.126451,
		35.531929, 33.418884, 17.951143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667297, 32.715729, 18.289902>,  <36.047436, 32.953674, 17.862627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667297, 32.715729, 18.289902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535175, 32.385609, 18.106697>,  <36.455902, 32.187534, 17.996775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535175, 32.385609, 18.106697>,  <36.667297, 32.715729, 18.289902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535175, 32.385609, 18.106697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168614, -0.425846, 0.888945,
		-0.928692, 0.370848, 0.001500,
		-0.330303, -0.825304, -0.458010,
		36.436085, 32.138016, 17.969294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102970, 32.513256, 18.693174>,  <36.667297, 32.715729, 18.289902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102970, 32.513256, 18.693174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.217232, 32.188145, 18.490078>,  <36.285789, 31.993078, 18.368221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.217232, 32.188145, 18.490078>,  <36.102970, 32.513256, 18.693174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217232, 32.188145, 18.490078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013930, -0.526238, 0.850223,
		-0.958232, -0.249941, -0.138999,
		0.285652, -0.812775, -0.507739,
		36.302929, 31.944313, 18.337755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588089, 31.995520, 18.799507>,  <36.102970, 32.513256, 18.693174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588089, 31.995520, 18.799507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.926189, 31.802053, 18.708633>,  <36.129051, 31.685974, 18.654110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.926189, 31.802053, 18.708633>,  <35.588089, 31.995520, 18.799507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926189, 31.802053, 18.708633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098091, -0.558363, 0.823777,
		-0.525283, -0.674017, -0.519403,
		0.845255, -0.483665, -0.227184,
		36.179768, 31.656954, 18.640478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426590, 31.210690, 18.901218>,  <35.588089, 31.995520, 18.799507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426590, 31.210690, 18.901218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.820236, 31.262680, 18.949585>,  <36.056423, 31.293875, 18.978605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.820236, 31.262680, 18.949585>,  <35.426590, 31.210690, 18.901218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820236, 31.262680, 18.949585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000215, -0.681992, 0.731360,
		0.177525, -0.719717, -0.671187,
		0.984116, 0.129979, 0.120916,
		36.115471, 31.301674, 18.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609867, 30.585005, 19.192883>,  <35.426590, 31.210690, 18.901218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609867, 30.585005, 19.192883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938988, 30.801107, 19.263447>,  <36.136459, 30.930769, 19.305786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938988, 30.801107, 19.263447>,  <35.609867, 30.585005, 19.192883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938988, 30.801107, 19.263447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169926, -0.530062, 0.830758,
		0.542334, -0.653571, -0.527939,
		0.822800, 0.540259, 0.176412,
		36.185829, 30.963184, 19.316370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174118, 30.162920, 19.169374>,  <35.609867, 30.585005, 19.192883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174118, 30.162920, 19.169374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.246075, 30.484661, 19.395880>,  <36.289249, 30.677706, 19.531784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.246075, 30.484661, 19.395880>,  <36.174118, 30.162920, 19.169374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246075, 30.484661, 19.395880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015133, -0.577850, 0.816002,
		0.983570, -0.138221, -0.116121,
		0.179889, 0.804353, 0.566265,
		36.300041, 30.725967, 19.565760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453018, 29.891605, 19.700796>,  <36.174118, 30.162920, 19.169374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453018, 29.891605, 19.700796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434105, 30.257332, 19.861687>,  <36.422756, 30.476768, 19.958221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434105, 30.257332, 19.861687>,  <36.453018, 29.891605, 19.700796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434105, 30.257332, 19.861687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105797, -0.395827, 0.912210,
		0.993263, 0.085690, -0.078015,
		-0.047287, 0.914318, 0.402226,
		36.419918, 30.531628, 19.982355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040760, 30.029430, 20.148373>,  <36.453018, 29.891605, 19.700796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040760, 30.029430, 20.148373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738308, 30.258379, 20.275280>,  <36.556835, 30.395748, 20.351425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738308, 30.258379, 20.275280>,  <37.040760, 30.029430, 20.148373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738308, 30.258379, 20.275280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068370, -0.413064, 0.908132,
		0.650839, 0.708358, 0.273197,
		-0.756131, 0.572370, 0.317269,
		36.511467, 30.430090, 20.370461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646988, 30.531490, 20.120808>,  <37.040760, 30.029430, 20.148373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646988, 30.531490, 20.120808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027134, 30.415869, 20.166855>,  <38.255222, 30.346497, 20.194483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027134, 30.415869, 20.166855>,  <37.646988, 30.531490, 20.120808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027134, 30.415869, 20.166855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253713, 0.505801, -0.824497,
		0.180096, 0.812781, 0.554033,
		0.950366, -0.289054, 0.115120,
		38.312244, 30.329153, 20.201391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884457, 31.097746, 20.007383>,  <37.646988, 30.531490, 20.120808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884457, 31.097746, 20.007383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177223, 30.834890, 19.935303>,  <38.352882, 30.677177, 19.892054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177223, 30.834890, 19.935303>,  <37.884457, 31.097746, 20.007383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177223, 30.834890, 19.935303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245559, 0.501063, -0.829841,
		0.635614, 0.563121, 0.528101,
		0.731913, -0.657138, -0.180204,
		38.396797, 30.637749, 19.881241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425365, 31.440434, 19.783333>,  <37.884457, 31.097746, 20.007383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425365, 31.440434, 19.783333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522755, 31.075209, 19.652468>,  <38.581188, 30.856073, 19.573950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522755, 31.075209, 19.652468>,  <38.425365, 31.440434, 19.783333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522755, 31.075209, 19.652468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420976, 0.403367, -0.812450,
		0.873784, 0.060087, 0.482588,
		0.243478, -0.913063, -0.327160,
		38.595798, 30.801291, 19.554319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109955, 31.482082, 19.611073>,  <38.425365, 31.440434, 19.783333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109955, 31.482082, 19.611073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970024, 31.160814, 19.418182>,  <38.886066, 30.968054, 19.302448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.970024, 31.160814, 19.418182>,  <39.109955, 31.482082, 19.611073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970024, 31.160814, 19.418182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362900, 0.358380, -0.860155,
		0.863671, -0.475902, 0.166101,
		-0.349822, -0.803169, -0.482227,
		38.865078, 30.919863, 19.273514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683277, 31.201971, 19.275572>,  <39.109955, 31.482082, 19.611073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683277, 31.201971, 19.275572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362514, 31.043663, 19.096546>,  <39.170055, 30.948679, 18.989130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362514, 31.043663, 19.096546>,  <39.683277, 31.201971, 19.275572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362514, 31.043663, 19.096546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405450, 0.189718, -0.894213,
		0.438812, -0.898540, 0.008328,
		-0.801907, -0.395768, -0.447564,
		39.121941, 30.924932, 18.962276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849247, 30.667698, 18.851091>,  <39.683277, 31.201971, 19.275572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849247, 30.667698, 18.851091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506756, 30.800798, 18.693026>,  <39.301262, 30.880659, 18.598186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506756, 30.800798, 18.693026>,  <39.849247, 30.667698, 18.851091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506756, 30.800798, 18.693026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400373, -0.055971, -0.914641,
		-0.326466, -0.941352, -0.085301,
		-0.856225, 0.332752, -0.395164,
		39.249889, 30.900623, 18.574476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857349, 30.571445, 18.187744>,  <39.849247, 30.667698, 18.851091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857349, 30.571445, 18.187744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539860, 30.813404, 18.162117>,  <39.349365, 30.958578, 18.146740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539860, 30.813404, 18.162117>,  <39.857349, 30.571445, 18.187744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539860, 30.813404, 18.162117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263094, 0.246427, -0.932768,
		-0.548438, -0.757216, -0.354739,
		-0.793724, 0.604895, -0.064068,
		39.301743, 30.994873, 18.142897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546566, 30.343252, 17.556353>,  <39.857349, 30.571445, 18.187744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546566, 30.343252, 17.556353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449997, 30.724503, 17.629309>,  <39.392056, 30.953253, 17.673082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449997, 30.724503, 17.629309>,  <39.546566, 30.343252, 17.556353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449997, 30.724503, 17.629309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403561, 0.269535, -0.874351,
		-0.882526, -0.137485, -0.449717,
		-0.241424, 0.953126, 0.182388,
		39.377571, 31.010441, 17.684025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410194, 30.594061, 16.909344>,  <39.546566, 30.343252, 17.556353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410194, 30.594061, 16.909344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435303, 30.934793, 17.117361>,  <39.450367, 31.139233, 17.242170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435303, 30.934793, 17.117361>,  <39.410194, 30.594061, 16.909344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435303, 30.934793, 17.117361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352309, 0.468611, -0.810112,
		-0.933776, 0.234067, -0.270693,
		0.062771, 0.851831, 0.520042,
		39.454136, 31.190342, 17.273375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.240753, 29.715324, 33.558483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407558, 30.048120, 33.412117>,  <38.507641, 30.247797, 33.324295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407558, 30.048120, 33.412117>,  <38.240753, 29.715324, 33.558483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407558, 30.048120, 33.412117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522747, -0.109797, -0.845387,
		-0.743530, 0.543818, 0.389134,
		0.417011, 0.831989, -0.365917,
		38.532661, 30.297718, 33.302341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654610, 30.113577, 33.360947>,  <38.240753, 29.715324, 33.558483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654610, 30.113577, 33.360947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986416, 30.217642, 33.163269>,  <38.185497, 30.280081, 33.044662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986416, 30.217642, 33.163269>,  <37.654610, 30.113577, 33.360947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986416, 30.217642, 33.163269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520522, 0.039455, -0.852936,
		-0.202404, 0.964758, 0.168149,
		0.829512, 0.260162, -0.494192,
		38.235268, 30.295691, 33.015011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554817, 30.742897, 32.873215>,  <37.654610, 30.113577, 33.360947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554817, 30.742897, 32.873215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875679, 30.565157, 32.713665>,  <38.068195, 30.458513, 32.617935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875679, 30.565157, 32.713665>,  <37.554817, 30.742897, 32.873215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875679, 30.565157, 32.713665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391995, 0.112026, -0.913121,
		0.450431, 0.888821, -0.084321,
		0.802155, -0.444351, -0.398873,
		38.116325, 30.431852, 32.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551029, 31.124506, 32.314358>,  <37.554817, 30.742897, 32.873215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551029, 31.124506, 32.314358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787853, 30.808846, 32.248989>,  <37.929947, 30.619450, 32.209766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787853, 30.808846, 32.248989>,  <37.551029, 31.124506, 32.314358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787853, 30.808846, 32.248989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218352, 0.038119, -0.975125,
		0.775749, 0.613018, -0.149743,
		0.592061, -0.789149, -0.163425,
		37.965473, 30.572102, 32.199963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737125, 31.169411, 31.663042>,  <37.551029, 31.124506, 32.314358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737125, 31.169411, 31.663042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829788, 30.785543, 31.726757>,  <37.885387, 30.555223, 31.764986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829788, 30.785543, 31.726757>,  <37.737125, 31.169411, 31.663042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829788, 30.785543, 31.726757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059146, -0.177336, -0.982371,
		0.970997, 0.218155, -0.097842,
		0.231661, -0.959667, 0.159289,
		37.899288, 30.497643, 31.774544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266705, 31.037403, 31.217869>,  <37.737125, 31.169411, 31.663042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266705, 31.037403, 31.217869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108570, 30.681627, 31.309614>,  <38.013691, 30.468163, 31.364662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108570, 30.681627, 31.309614>,  <38.266705, 31.037403, 31.217869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108570, 30.681627, 31.309614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043935, -0.231110, -0.971935,
		0.917487, -0.394315, 0.052288,
		-0.395333, -0.889440, 0.229365,
		37.989971, 30.414795, 31.378424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657425, 30.596605, 30.857233>,  <38.266705, 31.037403, 31.217869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657425, 30.596605, 30.857233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313534, 30.406675, 30.932505>,  <38.107201, 30.292717, 30.977669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313534, 30.406675, 30.932505>,  <38.657425, 30.596605, 30.857233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313534, 30.406675, 30.932505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049079, -0.289932, -0.955788,
		0.508390, -0.830952, 0.225958,
		-0.859727, -0.474824, 0.188181,
		38.055614, 30.264229, 30.988958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824444, 29.989437, 30.589512>,  <38.657425, 30.596605, 30.857233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824444, 29.989437, 30.589512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426376, 30.019625, 30.614624>,  <38.187534, 30.037737, 30.629690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426376, 30.019625, 30.614624>,  <38.824444, 29.989437, 30.589512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426376, 30.019625, 30.614624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083313, -0.311089, -0.946722,
		-0.051917, -0.947380, 0.315874,
		-0.995170, 0.075468, 0.062778,
		38.127827, 30.042265, 30.633457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587238, 29.365530, 30.401030>,  <38.824444, 29.989437, 30.589512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587238, 29.365530, 30.401030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292576, 29.627687, 30.334347>,  <38.115776, 29.784983, 30.294336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292576, 29.627687, 30.334347>,  <38.587238, 29.365530, 30.401030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292576, 29.627687, 30.334347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145220, -0.394070, -0.907535,
		-0.660489, -0.644333, 0.385471,
		-0.736658, 0.655396, -0.166709,
		38.071579, 29.824306, 30.284334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198784, 28.992754, 30.016838>,  <38.587238, 29.365530, 30.401030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198784, 28.992754, 30.016838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044983, 29.355585, 29.948290>,  <37.952702, 29.573284, 29.907162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044983, 29.355585, 29.948290>,  <38.198784, 28.992754, 30.016838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044983, 29.355585, 29.948290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140361, -0.240930, -0.960339,
		-0.912389, -0.345203, 0.219957,
		-0.384507, 0.907076, -0.171369,
		37.929630, 29.627708, 29.896879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604347, 28.966208, 29.501837>,  <38.198784, 28.992754, 30.016838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604347, 28.966208, 29.501837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736206, 29.342886, 29.474890>,  <37.815323, 29.568893, 29.458721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736206, 29.342886, 29.474890>,  <37.604347, 28.966208, 29.501837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736206, 29.342886, 29.474890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091137, -0.039282, -0.995063,
		-0.939694, 0.334162, 0.072875,
		0.329650, 0.941697, -0.067368,
		37.835102, 29.625395, 29.454679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243660, 29.235926, 28.980816>,  <37.604347, 28.966208, 29.501837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243660, 29.235926, 28.980816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565121, 29.470062, 29.023741>,  <37.757999, 29.610544, 29.049496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565121, 29.470062, 29.023741>,  <37.243660, 29.235926, 28.980816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565121, 29.470062, 29.023741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158331, -0.036488, -0.986712,
		-0.573647, 0.809966, -0.122002,
		0.803654, 0.585341, 0.107311,
		37.806217, 29.645664, 29.055935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660652, 29.878584, 29.106979>,  <37.243660, 29.235926, 28.980816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660652, 29.878584, 29.106979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267944, 29.950905, 29.083502>,  <36.032322, 29.994297, 29.069416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267944, 29.950905, 29.083502>,  <36.660652, 29.878584, 29.106979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267944, 29.950905, 29.083502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061751, -0.011319, 0.998027,
		0.179782, 0.983454, 0.022277,
		-0.981766, 0.180803, -0.058694,
		35.973415, 30.005146, 29.065893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560493, 30.381676, 29.665228>,  <36.660652, 29.878584, 29.106979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560493, 30.381676, 29.665228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207287, 30.216211, 29.576532>,  <35.995361, 30.116934, 29.523315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207287, 30.216211, 29.576532>,  <36.560493, 30.381676, 29.665228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207287, 30.216211, 29.576532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292461, 0.115449, 0.949283,
		-0.367080, 0.903082, -0.222922,
		-0.883017, -0.413659, -0.221738,
		35.942383, 30.092113, 29.510012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087711, 30.756403, 30.033234>,  <36.560493, 30.381676, 29.665228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087711, 30.756403, 30.033234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892361, 30.424747, 29.924410>,  <35.775150, 30.225754, 29.859116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892361, 30.424747, 29.924410>,  <36.087711, 30.756403, 30.033234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892361, 30.424747, 29.924410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532524, 0.036193, 0.845641,
		-0.691306, 0.557872, -0.459211,
		-0.488379, -0.829138, -0.272060,
		35.745846, 30.176006, 29.842793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429733, 30.919556, 30.101696>,  <36.087711, 30.756403, 30.033234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429733, 30.919556, 30.101696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448257, 30.520575, 30.123400>,  <35.459373, 30.281185, 30.136423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448257, 30.520575, 30.123400>,  <35.429733, 30.919556, 30.101696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448257, 30.520575, 30.123400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431022, 0.029048, 0.901874,
		-0.901152, -0.065155, -0.428579,
		0.046313, -0.997452, 0.054260,
		35.462151, 30.221338, 30.139677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810921, 30.746922, 30.429480>,  <35.429733, 30.919556, 30.101696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810921, 30.746922, 30.429480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021404, 30.410686, 30.480890>,  <35.147694, 30.208946, 30.511736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021404, 30.410686, 30.480890>,  <34.810921, 30.746922, 30.429480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021404, 30.410686, 30.480890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522444, -0.200327, 0.828807,
		-0.670936, -0.503275, -0.544573,
		0.526210, -0.840585, 0.128527,
		35.179268, 30.158510, 30.519449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294067, 30.196039, 30.507902>,  <34.810921, 30.746922, 30.429480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294067, 30.196039, 30.507902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648800, 30.063328, 30.636564>,  <34.861637, 29.983702, 30.713762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648800, 30.063328, 30.636564>,  <34.294067, 30.196039, 30.507902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648800, 30.063328, 30.636564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449165, -0.455346, 0.768707,
		-0.108574, -0.826187, -0.552835,
		0.886827, -0.331776, 0.321655,
		34.914848, 29.963795, 30.733061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110611, 29.569855, 30.782246>,  <34.294067, 30.196039, 30.507902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110611, 29.569855, 30.782246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479729, 29.627573, 30.925150>,  <34.701199, 29.662203, 31.010893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479729, 29.627573, 30.925150>,  <34.110611, 29.569855, 30.782246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479729, 29.627573, 30.925150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261851, -0.445332, 0.856220,
		0.282646, -0.883662, -0.373165,
		0.922792, 0.144294, 0.357259,
		34.756565, 29.670860, 31.032328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267227, 28.959187, 31.129711>,  <34.110611, 29.569855, 30.782246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267227, 28.959187, 31.129711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490726, 29.260622, 31.268221>,  <34.624825, 29.441483, 31.351326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490726, 29.260622, 31.268221>,  <34.267227, 28.959187, 31.129711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490726, 29.260622, 31.268221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379255, -0.139139, 0.914771,
		0.737540, -0.642453, 0.208058,
		0.558749, 0.753587, 0.346274,
		34.658352, 29.486698, 31.372103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558632, 28.694006, 31.809875>,  <34.267227, 28.959187, 31.129711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558632, 28.694006, 31.809875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540707, 29.093493, 31.800453>,  <34.529953, 29.333185, 31.794800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540707, 29.093493, 31.800453>,  <34.558632, 28.694006, 31.809875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540707, 29.093493, 31.800453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645595, -0.010954, 0.763601,
		0.762364, 0.049425, 0.645258,
		-0.044809, 0.998717, -0.023557,
		34.527264, 29.393108, 31.793386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529179, 28.819527, 32.532005>,  <34.558632, 28.694006, 31.809875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529179, 28.819527, 32.532005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421371, 29.161446, 32.354610>,  <34.356689, 29.366598, 32.248173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421371, 29.161446, 32.354610>,  <34.529179, 28.819527, 32.532005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421371, 29.161446, 32.354610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700934, 0.141660, 0.699017,
		0.660343, 0.499250, 0.560979,
		-0.269516, 0.854800, -0.443485,
		34.340515, 29.417885, 32.221565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630524, 29.364923, 33.013069>,  <34.529179, 28.819527, 32.532005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630524, 29.364923, 33.013069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363815, 29.505032, 32.749939>,  <34.203789, 29.589096, 32.592060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363815, 29.505032, 32.749939>,  <34.630524, 29.364923, 33.013069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363815, 29.505032, 32.749939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578400, 0.313406, 0.753146,
		0.469970, 0.882659, -0.006374,
		-0.666770, 0.350269, -0.657822,
		34.163784, 29.610113, 32.552593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448025, 30.093544, 33.085037>,  <34.630524, 29.364923, 33.013069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448025, 30.093544, 33.085037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118477, 29.951000, 32.908745>,  <33.920750, 29.865475, 32.802971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118477, 29.951000, 32.908745>,  <34.448025, 30.093544, 33.085037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118477, 29.951000, 32.908745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549818, 0.313704, 0.774138,
		-0.137611, 0.880112, -0.454385,
		-0.823871, -0.356359, -0.440733,
		33.871315, 29.844093, 32.776524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929634, 30.494061, 33.447243>,  <34.448025, 30.093544, 33.085037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929634, 30.494061, 33.447243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730679, 30.217924, 33.237087>,  <33.611305, 30.052242, 33.110992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730679, 30.217924, 33.237087>,  <33.929634, 30.494061, 33.447243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730679, 30.217924, 33.237087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806081, 0.143893, 0.574046,
		-0.320686, 0.709031, -0.628041,
		-0.497387, -0.690340, -0.525392,
		33.581463, 30.010822, 33.079472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299335, 30.791367, 33.152466>,  <33.929634, 30.494061, 33.447243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299335, 30.791367, 33.152466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250656, 30.394369, 33.157337>,  <33.221451, 30.156170, 33.160259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250656, 30.394369, 33.157337>,  <33.299335, 30.791367, 33.152466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250656, 30.394369, 33.157337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710139, 0.095634, 0.697536,
		-0.693465, 0.076237, -0.716446,
		-0.121695, -0.992492, 0.012180,
		33.214149, 30.096621, 33.160992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770733, 31.209890, 33.384495>,  <33.299335, 30.791367, 33.152466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770733, 31.209890, 33.384495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032051, 31.499519, 33.472973>,  <33.188843, 31.673298, 33.526058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032051, 31.499519, 33.472973>,  <32.770733, 31.209890, 33.384495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032051, 31.499519, 33.472973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531624, 0.646730, -0.546916,
		-0.539059, 0.239705, 0.807438,
		0.653293, 0.724073, 0.221193,
		33.228039, 31.716742, 33.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725060, 31.850437, 32.842194>,  <32.770733, 31.209890, 33.384495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725060, 31.850437, 32.842194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843021, 32.229797, 32.795609>,  <32.913799, 32.457413, 32.767658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843021, 32.229797, 32.795609>,  <32.725060, 31.850437, 32.842194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843021, 32.229797, 32.795609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048245, -0.106949, -0.993093,
		-0.954307, 0.298490, 0.014216,
		0.294908, 0.948402, -0.116462,
		32.931496, 32.514317, 32.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325424, 32.066216, 32.350098>,  <32.725060, 31.850437, 32.842194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325424, 32.066216, 32.350098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671425, 32.266563, 32.362080>,  <32.879025, 32.386772, 32.369270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671425, 32.266563, 32.362080>,  <32.325424, 32.066216, 32.350098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671425, 32.266563, 32.362080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189878, -0.271492, -0.943524,
		-0.464448, 0.821841, -0.329946,
		0.865005, 0.500868, 0.029955,
		32.930927, 32.416824, 32.371067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283657, 32.691376, 31.894451>,  <32.325424, 32.066216, 32.350098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283657, 32.691376, 31.894451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668209, 32.594410, 31.946571>,  <32.898941, 32.536232, 31.977844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668209, 32.594410, 31.946571>,  <32.283657, 32.691376, 31.894451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668209, 32.594410, 31.946571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108864, -0.099876, -0.989026,
		0.252766, 0.965019, -0.069629,
		0.961383, -0.242412, 0.130302,
		32.956623, 32.521687, 31.985662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614410, 33.034668, 31.365814>,  <32.283657, 32.691376, 31.894451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614410, 33.034668, 31.365814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912769, 32.785275, 31.459541>,  <33.091785, 32.635639, 31.515778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912769, 32.785275, 31.459541>,  <32.614410, 33.034668, 31.365814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912769, 32.785275, 31.459541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125094, -0.214403, -0.968702,
		0.654213, 0.751860, -0.081927,
		0.745894, -0.623488, 0.234318,
		33.136536, 32.598228, 31.529837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182125, 33.198132, 30.975426>,  <32.614410, 33.034668, 31.365814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182125, 33.198132, 30.975426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228310, 32.810009, 31.060448>,  <33.256020, 32.577137, 31.111462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228310, 32.810009, 31.060448>,  <33.182125, 33.198132, 30.975426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228310, 32.810009, 31.060448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144822, -0.195257, -0.970000,
		0.982698, 0.142783, 0.117976,
		0.115464, -0.970303, 0.212557,
		33.262947, 32.518917, 31.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664959, 32.984295, 30.580107>,  <33.182125, 33.198132, 30.975426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664959, 32.984295, 30.580107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483101, 32.641758, 30.678061>,  <33.373985, 32.436237, 30.736834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483101, 32.641758, 30.678061>,  <33.664959, 32.984295, 30.580107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483101, 32.641758, 30.678061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155945, -0.347235, -0.924721,
		0.876912, -0.382235, 0.291413,
		-0.454650, -0.856343, 0.244887,
		33.346706, 32.384853, 30.751526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048317, 32.441242, 30.191086>,  <33.664959, 32.984295, 30.580107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048317, 32.441242, 30.191086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711250, 32.258190, 30.304571>,  <33.509010, 32.148361, 30.372662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711250, 32.258190, 30.304571>,  <34.048317, 32.441242, 30.191086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711250, 32.258190, 30.304571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080431, -0.627991, -0.774053,
		0.532397, -0.629448, 0.565993,
		-0.842665, -0.457627, 0.283713,
		33.458450, 32.120903, 30.389685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150745, 31.687824, 30.057261>,  <34.048317, 32.441242, 30.191086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150745, 31.687824, 30.057261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756298, 31.753534, 30.066988>,  <33.519630, 31.792959, 30.072824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756298, 31.753534, 30.066988>,  <34.150745, 31.687824, 30.057261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756298, 31.753534, 30.066988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080148, -0.342533, -0.936081,
		-0.145442, -0.925033, 0.350943,
		-0.986115, 0.164272, 0.024320,
		33.460464, 31.802816, 30.074284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897694, 31.150288, 29.703308>,  <34.150745, 31.687824, 30.057261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897694, 31.150288, 29.703308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627998, 31.445690, 29.702150>,  <33.466183, 31.622932, 29.701456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627998, 31.445690, 29.702150>,  <33.897694, 31.150288, 29.703308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627998, 31.445690, 29.702150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072133, -0.069757, -0.994953,
		-0.734983, -0.670626, 0.100304,
		-0.674238, 0.738508, -0.002896,
		33.425728, 31.667242, 29.701283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375004, 30.911900, 29.282986>,  <33.897694, 31.150288, 29.703308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375004, 30.911900, 29.282986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301224, 31.304947, 29.291349>,  <33.256958, 31.540775, 29.296368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301224, 31.304947, 29.291349>,  <33.375004, 30.911900, 29.282986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301224, 31.304947, 29.291349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197986, -0.016311, -0.980069,
		-0.962694, -0.184911, 0.197553,
		-0.184448, 0.982620, 0.020907,
		33.245888, 31.599733, 29.297621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958580, 30.962278, 28.742189>,  <33.375004, 30.911900, 29.282986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958580, 30.962278, 28.742189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071396, 31.341368, 28.801884>,  <33.139084, 31.568821, 28.837700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071396, 31.341368, 28.801884>,  <32.958580, 30.962278, 28.742189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071396, 31.341368, 28.801884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119688, 0.189092, -0.974638,
		-0.951908, 0.257023, 0.166763,
		0.282038, 0.947725, 0.149235,
		33.156006, 31.625685, 28.846655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442474, 31.463411, 28.426329>,  <32.958580, 30.962278, 28.742189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442474, 31.463411, 28.426329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805904, 31.628258, 28.453627>,  <33.023960, 31.727165, 28.470005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805904, 31.628258, 28.453627>,  <32.442474, 31.463411, 28.426329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805904, 31.628258, 28.453627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033413, 0.234549, -0.971530,
		-0.416388, 0.880425, 0.226875,
		0.908573, 0.412114, 0.068246,
		33.078476, 31.751892, 28.474100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354656, 31.882513, 27.882629>,  <32.442474, 31.463411, 28.426329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354656, 31.882513, 27.882629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746342, 31.938206, 27.941635>,  <32.981354, 31.971621, 27.977039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746342, 31.938206, 27.941635>,  <32.354656, 31.882513, 27.882629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746342, 31.938206, 27.941635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092604, 0.340179, -0.935790,
		-0.180473, 0.929996, 0.320214,
		0.979211, 0.139232, 0.147514,
		33.040104, 31.979975, 27.985889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555408, 32.619129, 27.701939>,  <32.354656, 31.882513, 27.882629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555408, 32.619129, 27.701939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869389, 32.374352, 27.663198>,  <33.057777, 32.227486, 27.639954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869389, 32.374352, 27.663198>,  <32.555408, 32.619129, 27.701939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869389, 32.374352, 27.663198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181463, 0.376548, -0.908451,
		0.592387, 0.695514, 0.406616,
		0.784951, -0.611941, -0.096853,
		33.104874, 32.190769, 27.634142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025440, 32.968670, 27.342836>,  <32.555408, 32.619129, 27.701939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025440, 32.968670, 27.342836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186447, 32.608948, 27.274452>,  <33.283051, 32.393112, 27.233421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186447, 32.608948, 27.274452>,  <33.025440, 32.968670, 27.342836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186447, 32.608948, 27.274452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383333, 0.335182, -0.860645,
		0.831288, 0.280886, 0.479650,
		0.402513, -0.899309, -0.170959,
		33.307201, 32.339153, 27.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668888, 33.173462, 27.153578>,  <33.025440, 32.968670, 27.342836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668888, 33.173462, 27.153578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589527, 32.804569, 27.020842>,  <33.541908, 32.583233, 26.941200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589527, 32.804569, 27.020842>,  <33.668888, 33.173462, 27.153578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589527, 32.804569, 27.020842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165341, 0.302225, -0.938788,
		0.966074, -0.241126, 0.092520,
		-0.198404, -0.922235, -0.331840,
		33.530006, 32.527897, 26.921289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322582, 32.869392, 27.013226>,  <33.668888, 33.173462, 27.153578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322582, 32.869392, 27.013226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084705, 32.624088, 26.805281>,  <33.941978, 32.476906, 26.680513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084705, 32.624088, 26.805281>,  <34.322582, 32.869392, 27.013226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084705, 32.624088, 26.805281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388669, 0.346738, -0.853645,
		0.703761, -0.709709, 0.032152,
		-0.594691, -0.613259, -0.519862,
		33.906300, 32.440109, 26.649323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774731, 32.518456, 26.589388>,  <34.322582, 32.869392, 27.013226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774731, 32.518456, 26.589388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416107, 32.482315, 26.415941>,  <34.200935, 32.460632, 26.311872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416107, 32.482315, 26.415941>,  <34.774731, 32.518456, 26.589388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416107, 32.482315, 26.415941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408433, 0.210146, -0.888269,
		0.171370, -0.973487, -0.151510,
		-0.896557, -0.090341, -0.433617,
		34.147141, 32.455212, 26.285856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043003, 32.266380, 25.981482>,  <34.774731, 32.518456, 26.589388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043003, 32.266380, 25.981482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671902, 32.400024, 25.914984>,  <34.449242, 32.480209, 25.875086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671902, 32.400024, 25.914984>,  <35.043003, 32.266380, 25.981482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671902, 32.400024, 25.914984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229280, 0.158846, -0.960312,
		-0.294445, -0.929052, -0.223975,
		-0.927757, 0.334112, -0.166242,
		34.393574, 32.500259, 25.865110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814556, 31.877249, 25.355490>,  <35.043003, 32.266380, 25.981482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814556, 31.877249, 25.355490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593678, 32.210331, 25.371912>,  <34.461151, 32.410179, 25.381765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593678, 32.210331, 25.371912>,  <34.814556, 31.877249, 25.355490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593678, 32.210331, 25.371912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379844, 0.295114, -0.876713,
		-0.742158, -0.468522, -0.479258,
		-0.552195, 0.832703, 0.041056,
		34.428020, 32.460140, 25.384230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487766, 31.964945, 24.789816>,  <34.814556, 31.877249, 25.355490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487766, 31.964945, 24.789816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411217, 32.344521, 24.890125>,  <34.365288, 32.572266, 24.950310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411217, 32.344521, 24.890125>,  <34.487766, 31.964945, 24.789816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411217, 32.344521, 24.890125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347730, 0.304473, -0.886781,
		-0.917856, -0.082506, -0.388244,
		-0.191374, 0.948941, 0.250772,
		34.353806, 32.629204, 24.965357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104458, 32.231678, 24.147884>,  <34.487766, 31.964945, 24.789816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104458, 32.231678, 24.147884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269855, 32.519382, 24.371199>,  <34.369095, 32.692005, 24.505188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269855, 32.519382, 24.371199>,  <34.104458, 32.231678, 24.147884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269855, 32.519382, 24.371199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174054, 0.539410, -0.823858,
		-0.893714, 0.437835, 0.097854,
		0.413498, 0.719262, 0.558285,
		34.393906, 32.735161, 24.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824818, 32.799114, 23.923328>,  <34.104458, 32.231678, 24.147884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824818, 32.799114, 23.923328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153084, 32.936306, 24.106140>,  <34.350044, 33.018620, 24.215828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153084, 32.936306, 24.106140>,  <33.824818, 32.799114, 23.923328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153084, 32.936306, 24.106140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195438, 0.583110, -0.788535,
		-0.536949, 0.736443, 0.411506,
		0.820664, 0.342979, 0.457030,
		34.399284, 33.039200, 24.243250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905231, 33.463535, 23.678978>,  <33.824818, 32.799114, 23.923328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905231, 33.463535, 23.678978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257751, 33.387436, 23.852003>,  <34.469265, 33.341778, 23.955818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257751, 33.387436, 23.852003>,  <33.905231, 33.463535, 23.678978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257751, 33.387436, 23.852003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467994, 0.478184, -0.743184,
		-0.065455, 0.857407, 0.510460,
		0.881304, -0.190247, 0.432561,
		34.522144, 33.330360, 23.981771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272053, 34.126671, 23.747139>,  <33.905231, 33.463535, 23.678978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272053, 34.126671, 23.747139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513889, 33.808075, 23.750648>,  <34.658993, 33.616917, 23.752754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513889, 33.808075, 23.750648>,  <34.272053, 34.126671, 23.747139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513889, 33.808075, 23.750648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421778, 0.310775, -0.851776,
		0.675703, 0.518677, 0.523833,
		0.604590, -0.796488, 0.008775,
		34.695267, 33.569130, 23.753281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946587, 34.324539, 23.496384>,  <34.272053, 34.126671, 23.747139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946587, 34.324539, 23.496384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950253, 33.928017, 23.443869>,  <34.952454, 33.690105, 23.412359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950253, 33.928017, 23.443869>,  <34.946587, 34.324539, 23.496384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950253, 33.928017, 23.443869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399340, 0.123997, -0.908379,
		0.916757, -0.044100, 0.397004,
		0.009168, -0.991302, -0.131286,
		34.953003, 33.630627, 23.404484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662380, 34.134701, 23.271921>,  <34.946587, 34.324539, 23.496384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662380, 34.134701, 23.271921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432964, 33.821148, 23.176775>,  <35.295315, 33.633015, 23.119686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432964, 33.821148, 23.176775>,  <35.662380, 34.134701, 23.271921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432964, 33.821148, 23.176775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240262, 0.116634, -0.963675,
		0.783154, -0.609853, 0.121444,
		-0.573536, -0.783885, -0.237867,
		35.260902, 33.585983, 23.105415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367485, 34.296383, 23.306526>,  <35.662380, 34.134701, 23.271921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367485, 34.296383, 23.306526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405136, 34.688869, 23.373880>,  <36.427727, 34.924362, 23.414293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405136, 34.688869, 23.373880>,  <36.367485, 34.296383, 23.306526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405136, 34.688869, 23.373880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294997, -0.189033, 0.936613,
		0.950850, -0.038492, -0.307250,
		0.094132, 0.981216, 0.168387,
		36.433376, 34.983234, 23.424397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030670, 34.411640, 23.565285>,  <36.367485, 34.296383, 23.306526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030670, 34.411640, 23.565285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820145, 34.732990, 23.676695>,  <36.693829, 34.925800, 23.743542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820145, 34.732990, 23.676695>,  <37.030670, 34.411640, 23.565285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820145, 34.732990, 23.676695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398280, -0.056482, 0.915523,
		0.751244, 0.592782, -0.290243,
		-0.526312, 0.803380, 0.278525,
		36.662251, 34.974003, 23.760252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482872, 34.820248, 24.054264>,  <37.030670, 34.411640, 23.565285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482872, 34.820248, 24.054264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098522, 34.912270, 24.115965>,  <36.867912, 34.967484, 24.152985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098522, 34.912270, 24.115965>,  <37.482872, 34.820248, 24.054264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098522, 34.912270, 24.115965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147802, -0.045116, 0.987987,
		0.234246, 0.972133, 0.009349,
		-0.960876, 0.230050, 0.154252,
		36.810261, 34.981285, 24.162241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490562, 35.348415, 24.718613>,  <37.482872, 34.820248, 24.054264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490562, 35.348415, 24.718613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100887, 35.267086, 24.679390>,  <36.867081, 35.218288, 24.655857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100887, 35.267086, 24.679390>,  <37.490562, 35.348415, 24.718613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100887, 35.267086, 24.679390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120726, 0.102245, 0.987406,
		-0.190736, 0.973759, -0.124152,
		-0.974189, -0.203322, -0.098056,
		36.808632, 35.206089, 24.649973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060844, 35.920616, 24.978277>,  <37.490562, 35.348415, 24.718613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060844, 35.920616, 24.978277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845940, 35.583584, 24.993284>,  <36.716995, 35.381363, 25.002289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845940, 35.583584, 24.993284>,  <37.060844, 35.920616, 24.978277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845940, 35.583584, 24.993284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195873, 0.167913, 0.966146,
		-0.820356, 0.511724, -0.255252,
		-0.537261, -0.842581, 0.037516,
		36.684761, 35.330811, 25.004539>
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
