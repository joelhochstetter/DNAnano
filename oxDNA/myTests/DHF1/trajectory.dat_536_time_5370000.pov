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
	<4.713695, 3.542660, 5.030926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333015, 3.589329, 5.144527>,  <4.104608, 3.617330, 5.212688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333015, 3.589329, 5.144527>,  <4.713695, 3.542660, 5.030926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333015, 3.589329, 5.144527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237448, 0.306733, -0.921701,
		-0.194650, -0.944618, -0.264214,
		-0.951698, 0.116671, 0.284003,
		4.047506, 3.624330, 5.229728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.325552, 3.010862, 4.571259>,  <4.713695, 3.542660, 5.030926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.325552, 3.010862, 4.571259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213095, 3.386211, 4.651672>,  <4.145620, 3.611421, 4.699920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213095, 3.386211, 4.651672>,  <4.325552, 3.010862, 4.571259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.213095, 3.386211, 4.651672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121018, 0.173144, -0.977433,
		-0.952005, -0.299127, 0.064882,
		-0.281143, 0.938373, 0.201033,
		4.128752, 3.667723, 4.711982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.597343, 3.162711, 4.284330>,  <4.325552, 3.010862, 4.571259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.597343, 3.162711, 4.284330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.868256, 3.456692, 4.297802>,  <4.030803, 3.633080, 4.305885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.868256, 3.456692, 4.297802>,  <3.597343, 3.162711, 4.284330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868256, 3.456692, 4.297802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132052, 0.166470, -0.977164,
		-0.723776, 0.657367, 0.209799,
		0.677281, 0.734953, 0.033681,
		4.071440, 3.677178, 4.307906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263335, 3.804319, 4.074326>,  <3.597343, 3.162711, 4.284330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263335, 3.804319, 4.074326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.657349, 3.785000, 4.008144>,  <3.893757, 3.773409, 3.968436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.657349, 3.785000, 4.008144>,  <3.263335, 3.804319, 4.074326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.657349, 3.785000, 4.008144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158640, 0.121233, -0.979865,
		0.067383, 0.991449, 0.111756,
		0.985034, -0.048297, -0.165453,
		3.952859, 3.770511, 3.958508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.484683, 4.446235, 3.761034>,  <3.263335, 3.804319, 4.074326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.484683, 4.446235, 3.761034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.683643, 4.113667, 3.661972>,  <3.803020, 3.914126, 3.602535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.683643, 4.113667, 3.661972>,  <3.484683, 4.446235, 3.761034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683643, 4.113667, 3.661972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241503, 0.141484, -0.960031,
		0.833228, 0.537329, -0.130416,
		0.497401, -0.831420, -0.247655,
		3.832864, 3.864240, 3.587676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.822031, 4.628213, 3.079111>,  <3.484683, 4.446235, 3.761034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.822031, 4.628213, 3.079111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852839, 4.230221, 3.104664>,  <3.871323, 3.991425, 3.119996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852839, 4.230221, 3.104664>,  <3.822031, 4.628213, 3.079111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.852839, 4.230221, 3.104664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201544, -0.078286, -0.976346,
		0.976447, 0.062322, -0.206562,
		0.077019, -0.994981, 0.063882,
		3.875944, 3.931726, 3.123828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.189552, 4.457353, 2.537012>,  <3.822031, 4.628213, 3.079111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.189552, 4.457353, 2.537012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989517, 4.129307, 2.648239>,  <3.869496, 3.932479, 2.714975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989517, 4.129307, 2.648239>,  <4.189552, 4.457353, 2.537012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.989517, 4.129307, 2.648239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165222, -0.224844, -0.960285,
		0.850067, -0.526169, -0.023059,
		-0.500088, -0.820116, 0.278067,
		3.839491, 3.883272, 2.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.482035, 4.065719, 2.157836>,  <4.189552, 4.457353, 2.537012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.482035, 4.065719, 2.157836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178102, 3.841526, 2.289604>,  <3.995743, 3.707011, 2.368665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178102, 3.841526, 2.289604>,  <4.482035, 4.065719, 2.157836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.178102, 3.841526, 2.289604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195556, -0.286194, -0.938004,
		0.620012, -0.777144, 0.107854,
		-0.759831, -0.560482, 0.329419,
		3.950153, 3.673382, 2.388430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.711297, 3.910065, 1.298208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.537270, 3.550713, 1.322296>,  <3.432853, 3.335101, 1.336749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.537270, 3.550713, 1.322296>,  <3.711297, 3.910065, 1.298208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.537270, 3.550713, 1.322296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073080, 0.101893, 0.992108,
		-0.897427, 0.427233, -0.109984,
		-0.435068, -0.898382, 0.060220,
		3.406749, 3.281198, 1.340362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.064633, 3.911944, 1.728419>,  <3.711297, 3.910065, 1.298208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.064633, 3.911944, 1.728419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.264236, 3.565727, 1.745522>,  <3.383998, 3.357997, 1.755783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.264236, 3.565727, 1.745522>,  <3.064633, 3.911944, 1.728419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.264236, 3.565727, 1.745522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195574, 0.160543, 0.967459,
		-0.844241, -0.474407, 0.249390,
		0.499007, -0.865542, 0.042755,
		3.413939, 3.306065, 1.758348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.757353, 3.579942, 2.288296>,  <3.064633, 3.911944, 1.728419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.757353, 3.579942, 2.288296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.122250, 3.440315, 2.202538>,  <3.341188, 3.356539, 2.151082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.122250, 3.440315, 2.202538>,  <2.757353, 3.579942, 2.288296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.122250, 3.440315, 2.202538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224095, -0.012883, 0.974482,
		-0.342921, -0.937009, 0.066472,
		0.912242, -0.349067, -0.214397,
		3.395922, 3.335595, 2.138218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.929846, 3.024770, 2.830281>,  <2.757353, 3.579942, 2.288296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.929846, 3.024770, 2.830281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240925, 3.229668, 2.684517>,  <3.427572, 3.352606, 2.597059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240925, 3.229668, 2.684517>,  <2.929846, 3.024770, 2.830281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240925, 3.229668, 2.684517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399496, 0.044863, 0.915636,
		0.485378, -0.857667, -0.169750,
		0.777696, 0.512244, -0.364410,
		3.474234, 3.383341, 2.575194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.508163, 2.728098, 3.181834>,  <2.929846, 3.024770, 2.830281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.508163, 2.728098, 3.181834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.620499, 3.076317, 3.020203>,  <3.687900, 3.285248, 2.923224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.620499, 3.076317, 3.020203>,  <3.508163, 2.728098, 3.181834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.620499, 3.076317, 3.020203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556233, 0.195471, 0.807711,
		0.782135, -0.451597, -0.429331,
		0.280838, 0.870547, -0.404078,
		3.704750, 3.337481, 2.898979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.214785, 2.687279, 3.227949>,  <3.508163, 2.728098, 3.181834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.214785, 2.687279, 3.227949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.114555, 3.073235, 3.196442>,  <4.054418, 3.304808, 3.177537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.114555, 3.073235, 3.196442>,  <4.214785, 2.687279, 3.227949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.114555, 3.073235, 3.196442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515697, 0.201895, 0.832644,
		0.819310, 0.168019, -0.548179,
		-0.250575, 0.964888, -0.078767,
		4.039383, 3.362701, 3.172812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.754739, 3.059629, 3.106861>,  <4.214785, 2.687279, 3.227949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.754739, 3.059629, 3.106861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.495605, 3.307800, 3.283669>,  <4.340125, 3.456703, 3.389753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.495605, 3.307800, 3.283669>,  <4.754739, 3.059629, 3.106861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.495605, 3.307800, 3.283669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542592, -0.031467, 0.839407,
		0.534700, 0.783632, -0.316254,
		-0.647834, 0.620428, 0.442018,
		4.301255, 3.493929, 3.416274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.166721, 3.537036, 3.550603>,  <4.754739, 3.059629, 3.106861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.166721, 3.537036, 3.550603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.803158, 3.652145, 3.671318>,  <4.585020, 3.721211, 3.743747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.803158, 3.652145, 3.671318>,  <5.166721, 3.537036, 3.550603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.803158, 3.652145, 3.671318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392271, 0.344536, 0.852888,
		0.141461, 0.893578, -0.426035,
		-0.908907, 0.287772, 0.301786,
		4.530486, 3.738477, 3.761854>
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
