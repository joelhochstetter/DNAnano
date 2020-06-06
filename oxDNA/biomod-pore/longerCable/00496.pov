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
	<24.486132, 34.736443, 34.905411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270168, 35.046978, 35.035519>,  <24.140591, 35.233299, 35.113583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270168, 35.046978, 35.035519>,  <24.486132, 34.736443, 34.905411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270168, 35.046978, 35.035519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803935, -0.361121, -0.472524,
		-0.249376, -0.516616, 0.819097,
		-0.539907, 0.776337, 0.325271,
		24.108196, 35.279881, 35.133099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745289, 34.432358, 35.532257>,  <24.486132, 34.736443, 34.905411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745289, 34.432358, 35.532257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134008, 34.346416, 35.571133>,  <25.367241, 34.294853, 35.594456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134008, 34.346416, 35.571133>,  <24.745289, 34.432358, 35.532257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134008, 34.346416, 35.571133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229056, -0.958000, 0.172538,
		0.056033, -0.189933, -0.980197,
		0.971799, -0.214852, 0.097185,
		25.425549, 34.281960, 35.600288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.911732, 33.902042, 35.030788>,  <24.745289, 34.432358, 35.532257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.911732, 33.902042, 35.030788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187626, 33.882008, 35.319717>,  <25.353163, 33.869987, 35.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187626, 33.882008, 35.319717>,  <24.911732, 33.902042, 35.030788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187626, 33.882008, 35.319717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101713, -0.994415, 0.028166,
		0.716880, -0.092897, -0.690979,
		0.689737, -0.050090, 0.722325,
		25.394547, 33.866982, 35.536415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268372, 33.322815, 34.830029>,  <24.911732, 33.902042, 35.030788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268372, 33.322815, 34.830029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359667, 33.375710, 35.215862>,  <25.414444, 33.407448, 35.447361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359667, 33.375710, 35.215862>,  <25.268372, 33.322815, 34.830029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359667, 33.375710, 35.215862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047443, -0.988045, 0.146683,
		0.972449, -0.079242, -0.219235,
		0.228238, 0.132241, 0.964583,
		25.428139, 33.415382, 35.505238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770350, 32.933819, 34.965340>,  <25.268372, 33.322815, 34.830029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770350, 32.933819, 34.965340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605755, 32.984528, 35.326363>,  <25.506998, 33.014954, 35.542976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605755, 32.984528, 35.326363>,  <25.770350, 32.933819, 34.965340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605755, 32.984528, 35.326363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117878, -0.989364, 0.085228,
		0.903761, -0.071322, 0.422054,
		-0.411486, 0.126776, 0.902555,
		25.482309, 33.022560, 35.597130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235785, 32.359825, 34.733459>,  <25.770350, 32.933819, 34.965340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235785, 32.359825, 34.733459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416939, 32.489708, 34.401325>,  <25.525631, 32.567638, 34.202045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416939, 32.489708, 34.401325>,  <25.235785, 32.359825, 34.733459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416939, 32.489708, 34.401325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877383, 0.003164, 0.479780,
		0.158414, -0.945810, -0.283459,
		0.452884, 0.324706, -0.830339,
		25.552803, 32.587120, 34.152222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841249, 32.073204, 34.662922>,  <25.235785, 32.359825, 34.733459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841249, 32.073204, 34.662922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890999, 32.431740, 34.492699>,  <25.920849, 32.646862, 34.390564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890999, 32.431740, 34.492699>,  <25.841249, 32.073204, 34.662922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890999, 32.431740, 34.492699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906896, 0.071322, 0.415275,
		0.402580, -0.437589, -0.804018,
		0.124376, 0.896342, -0.425560,
		25.928312, 32.700642, 34.365032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110762, 32.426067, 35.356182>,  <25.841249, 32.073204, 34.662922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110762, 32.426067, 35.356182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840542, 32.516922, 35.636765>,  <25.678410, 32.571434, 35.805115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840542, 32.516922, 35.636765>,  <26.110762, 32.426067, 35.356182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840542, 32.516922, 35.636765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, -0.973105, 0.190824,
		0.725935, 0.038392, 0.686690,
		-0.675548, 0.227140, 0.701457,
		25.637877, 32.585064, 35.847202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368361, 32.167656, 35.903839>,  <26.110762, 32.426067, 35.356182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368361, 32.167656, 35.903839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972111, 32.200970, 35.947159>,  <25.734362, 32.220959, 35.973152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972111, 32.200970, 35.947159>,  <26.368361, 32.167656, 35.903839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972111, 32.200970, 35.947159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071933, -0.991886, 0.104821,
		0.116150, 0.096048, 0.988577,
		-0.990623, 0.083286, 0.108299,
		25.674923, 32.225956, 35.979649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109941, 31.869448, 36.620098>,  <26.368361, 32.167656, 35.903839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109941, 31.869448, 36.620098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761417, 31.878164, 36.424000>,  <25.552303, 31.883394, 36.306339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761417, 31.878164, 36.424000>,  <26.109941, 31.869448, 36.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761417, 31.878164, 36.424000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033063, -0.999350, 0.014340,
		-0.489614, 0.028704, 0.871467,
		-0.871312, 0.021793, -0.490245,
		25.500023, 31.884703, 36.276928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689159, 31.475189, 36.977264>,  <26.109941, 31.869448, 36.620098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689159, 31.475189, 36.977264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553581, 31.472837, 36.600948>,  <25.472235, 31.471426, 36.375160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553581, 31.472837, 36.600948>,  <25.689159, 31.475189, 36.977264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553581, 31.472837, 36.600948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117930, -0.991828, 0.048688,
		-0.933385, 0.127450, 0.335484,
		-0.338947, -0.005881, -0.940787,
		25.451897, 31.471073, 36.318710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140013, 30.908220, 36.922466>,  <25.689159, 31.475189, 36.977264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140013, 30.908220, 36.922466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272449, 30.965643, 36.549419>,  <25.351912, 31.000095, 36.325592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272449, 30.965643, 36.549419>,  <25.140013, 30.908220, 36.922466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272449, 30.965643, 36.549419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149361, -0.967926, -0.202015,
		-0.931703, 0.206182, -0.299030,
		0.331091, 0.143554, -0.932615,
		25.371777, 31.008709, 36.269634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510235, 30.312569, 36.746338>,  <25.140013, 30.908220, 36.922466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510235, 30.312569, 36.746338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383497, 30.061287, 36.462093>,  <25.307455, 29.910519, 36.291546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383497, 30.061287, 36.462093>,  <25.510235, 30.312569, 36.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383497, 30.061287, 36.462093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212056, 0.777166, -0.592490,
		0.924469, -0.037037, -0.379454,
		-0.316843, -0.628205, -0.710612,
		25.288445, 29.872826, 36.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913803, 30.452030, 36.030193>,  <25.510235, 30.312569, 36.746338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913803, 30.452030, 36.030193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524158, 30.365946, 36.057884>,  <25.290371, 30.314295, 36.074497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524158, 30.365946, 36.057884>,  <25.913803, 30.452030, 36.030193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524158, 30.365946, 36.057884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223411, 0.869614, -0.440294,
		0.034556, -0.444362, -0.895181,
		-0.974112, -0.215209, 0.069225,
		25.231926, 30.301384, 36.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755304, 30.607107, 35.386551>,  <25.913803, 30.452030, 36.030193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755304, 30.607107, 35.386551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451532, 30.659666, 35.641422>,  <25.269270, 30.691202, 35.794346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451532, 30.659666, 35.641422>,  <25.755304, 30.607107, 35.386551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451532, 30.659666, 35.641422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066186, 0.958707, -0.276587,
		-0.647215, -0.252221, -0.719373,
		-0.759429, 0.131399, 0.637183,
		25.223703, 30.699085, 35.832577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301014, 31.048290, 35.041821>,  <25.755304, 30.607107, 35.386551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301014, 31.048290, 35.041821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244326, 31.092699, 35.435284>,  <25.210312, 31.119345, 35.671364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244326, 31.092699, 35.435284>,  <25.301014, 31.048290, 35.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244326, 31.092699, 35.435284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138474, 0.981697, -0.130753,
		-0.980173, -0.154742, -0.123755,
		-0.141723, 0.111024, 0.983661,
		25.201809, 31.126007, 35.730381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709158, 31.497402, 35.189835>,  <25.301014, 31.048290, 35.041821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709158, 31.497402, 35.189835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935865, 31.504770, 35.519302>,  <25.071890, 31.509192, 35.716984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935865, 31.504770, 35.519302>,  <24.709158, 31.497402, 35.189835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935865, 31.504770, 35.519302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155574, 0.984157, 0.085042,
		-0.809056, -0.176341, 0.560654,
		0.566768, 0.018419, 0.823672,
		25.105896, 31.510296, 35.766403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464834, 31.948486, 35.558174>,  <24.709158, 31.497402, 35.189835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464834, 31.948486, 35.558174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804115, 31.933893, 35.769539>,  <25.007685, 31.925137, 35.896358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804115, 31.933893, 35.769539>,  <24.464834, 31.948486, 35.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804115, 31.933893, 35.769539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023030, 0.994141, 0.105605,
		-0.529170, -0.101744, 0.842394,
		0.848203, -0.036483, 0.528413,
		25.058577, 31.922949, 35.928062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402802, 32.352852, 36.221783>,  <24.464834, 31.948486, 35.558174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402802, 32.352852, 36.221783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786856, 32.306293, 36.120121>,  <25.017288, 32.278358, 36.059124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786856, 32.306293, 36.120121>,  <24.402802, 32.352852, 36.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786856, 32.306293, 36.120121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186729, 0.943643, 0.273259,
		0.208028, -0.309824, 0.927757,
		0.960134, -0.116393, -0.254158,
		25.074896, 32.271374, 36.043873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655939, 32.859634, 36.555710>,  <24.402802, 32.352852, 36.221783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655939, 32.859634, 36.555710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969524, 32.769672, 36.324257>,  <25.157675, 32.715694, 36.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969524, 32.769672, 36.324257>,  <24.655939, 32.859634, 36.555710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969524, 32.769672, 36.324257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232228, 0.970642, -0.062642,
		0.575738, -0.085266, 0.813176,
		0.783962, -0.224908, -0.578637,
		25.204714, 32.702202, 36.150665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309832, 33.192455, 36.864788>,  <24.655939, 32.859634, 36.555710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309832, 33.192455, 36.864788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344421, 33.145477, 36.469067>,  <25.365175, 33.117290, 36.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344421, 33.145477, 36.469067>,  <25.309832, 33.192455, 36.864788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344421, 33.145477, 36.469067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173425, 0.979640, -0.101138,
		0.981044, -0.162825, 0.105080,
		0.086473, -0.117444, -0.989308,
		25.370363, 33.110245, 36.172276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879553, 33.556637, 36.706001>,  <25.309832, 33.192455, 36.864788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879553, 33.556637, 36.706001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730190, 33.530514, 36.335854>,  <25.640574, 33.514839, 36.113766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730190, 33.530514, 36.335854>,  <25.879553, 33.556637, 36.706001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730190, 33.530514, 36.335854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259334, 0.950399, -0.171720,
		0.890681, -0.304100, -0.337949,
		-0.373406, -0.065306, -0.925366,
		25.618168, 33.510921, 36.058243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380884, 33.534248, 36.183399>,  <25.879553, 33.556637, 36.706001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380884, 33.534248, 36.183399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056808, 33.691689, 36.009651>,  <25.862364, 33.786152, 35.905403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056808, 33.691689, 36.009651>,  <26.380884, 33.534248, 36.183399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056808, 33.691689, 36.009651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518341, 0.827089, -0.217361,
		0.273710, -0.401255, -0.874115,
		-0.810189, 0.393596, -0.434370,
		25.813751, 33.809769, 35.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657450, 33.923389, 35.676399>,  <26.380884, 33.534248, 36.183399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657450, 33.923389, 35.676399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281179, 34.059097, 35.678570>,  <26.055418, 34.140522, 35.679874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281179, 34.059097, 35.678570>,  <26.657450, 33.923389, 35.676399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281179, 34.059097, 35.678570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313983, 0.876412, -0.365128,
		-0.128635, -0.341761, -0.930942,
		-0.940674, 0.339268, 0.005430,
		25.998978, 34.160877, 35.680199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544399, 34.073071, 35.038429>,  <26.657450, 33.923389, 35.676399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544399, 34.073071, 35.038429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318235, 34.295151, 35.282417>,  <26.182537, 34.428398, 35.428810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318235, 34.295151, 35.282417>,  <26.544399, 34.073071, 35.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318235, 34.295151, 35.282417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330046, 0.830035, -0.449568,
		-0.755899, -0.052871, -0.652550,
		-0.565409, 0.555199, 0.609973,
		26.148613, 34.461712, 35.465408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172979, 34.521545, 34.570629>,  <26.544399, 34.073071, 35.038429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172979, 34.521545, 34.570629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183697, 34.691792, 34.932430>,  <26.190126, 34.793938, 35.149513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183697, 34.691792, 34.932430>,  <26.172979, 34.521545, 34.570629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183697, 34.691792, 34.932430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354814, 0.841868, -0.406651,
		-0.934553, 0.331828, -0.128458,
		0.026794, 0.425615, 0.904508,
		26.191734, 34.819477, 35.203781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782635, 35.117073, 34.586178>,  <26.172979, 34.521545, 34.570629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782635, 35.117073, 34.586178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054972, 35.179142, 34.872501>,  <26.218374, 35.216381, 35.044296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054972, 35.179142, 34.872501>,  <25.782635, 35.117073, 34.586178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054972, 35.179142, 34.872501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272573, 0.853426, -0.444262,
		-0.679823, 0.497581, 0.538752,
		0.680842, 0.155170, 0.715805,
		26.259224, 35.225693, 35.087242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673590, 35.743431, 34.909245>,  <25.782635, 35.117073, 34.586178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673590, 35.743431, 34.909245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062195, 35.667870, 34.966484>,  <26.295359, 35.622532, 35.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062195, 35.667870, 34.966484>,  <25.673590, 35.743431, 34.909245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062195, 35.667870, 34.966484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234731, 0.850125, -0.471369,
		-0.032605, 0.491531, 0.870250,
		0.971513, -0.188906, 0.143096,
		26.353649, 35.611198, 35.009415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.911871, 36.078239, 34.734280>,  <25.673590, 35.743431, 34.909245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.911871, 36.078239, 34.734280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275776, 36.218678, 34.645683>,  <25.494120, 36.302940, 34.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275776, 36.218678, 34.645683>,  <24.911871, 36.078239, 34.734280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275776, 36.218678, 34.645683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196095, -0.106813, -0.974750,
		-0.365890, 0.930227, -0.028326,
		0.909764, 0.351097, -0.221495,
		25.548706, 36.324005, 34.579235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913301, 36.335945, 34.121475>,  <24.911871, 36.078239, 34.734280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913301, 36.335945, 34.121475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312704, 36.329475, 34.100609>,  <25.552345, 36.325596, 34.088089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312704, 36.329475, 34.100609>,  <24.913301, 36.335945, 34.121475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312704, 36.329475, 34.100609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051763, 0.024405, -0.998361,
		0.017417, 0.999572, 0.023532,
		0.998508, -0.016170, -0.052166,
		25.612257, 36.324623, 34.084961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149717, 36.809963, 33.603561>,  <24.913301, 36.335945, 34.121475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149717, 36.809963, 33.603561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478397, 36.585808, 33.645073>,  <25.675606, 36.451313, 33.669979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478397, 36.585808, 33.645073>,  <25.149717, 36.809963, 33.603561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478397, 36.585808, 33.645073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092367, -0.310637, -0.946030,
		0.562384, 0.767768, -0.307012,
		0.821701, -0.560390, 0.103781,
		25.724907, 36.417690, 33.676208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453354, 36.880226, 33.062012>,  <25.149717, 36.809963, 33.603561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453354, 36.880226, 33.062012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546852, 36.515400, 33.196774>,  <25.602951, 36.296505, 33.277630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546852, 36.515400, 33.196774>,  <25.453354, 36.880226, 33.062012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546852, 36.515400, 33.196774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082968, -0.363946, -0.927717,
		0.968752, 0.188896, -0.160743,
		0.233744, -0.912064, 0.336901,
		25.616976, 36.241779, 33.297844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848629, 36.633560, 32.604298>,  <25.453354, 36.880226, 33.062012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848629, 36.633560, 32.604298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734415, 36.304283, 32.800594>,  <25.665888, 36.106716, 32.918373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734415, 36.304283, 32.800594>,  <25.848629, 36.633560, 32.604298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734415, 36.304283, 32.800594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055844, -0.496896, -0.866012,
		0.956740, -0.274681, 0.095910,
		-0.285534, -0.823192, 0.490739,
		25.648754, 36.057327, 32.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234564, 36.002327, 32.272228>,  <25.848629, 36.633560, 32.604298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234564, 36.002327, 32.272228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915033, 35.864445, 32.469429>,  <25.723314, 35.781715, 32.587749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915033, 35.864445, 32.469429>,  <26.234564, 36.002327, 32.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915033, 35.864445, 32.469429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266980, -0.531257, -0.804045,
		0.539073, -0.773914, 0.332352,
		-0.798826, -0.344707, 0.493006,
		25.675386, 35.761032, 32.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427925, 35.264397, 32.236809>,  <26.234564, 36.002327, 32.272228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427925, 35.264397, 32.236809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048214, 35.374302, 32.297970>,  <25.820387, 35.440243, 32.334667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048214, 35.374302, 32.297970>,  <26.427925, 35.264397, 32.236809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048214, 35.374302, 32.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288695, -0.568879, -0.770086,
		-0.124605, -0.775167, 0.619346,
		-0.949278, 0.274759, 0.152901,
		25.763430, 35.456730, 32.343842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135958, 34.793491, 31.856707>,  <26.427925, 35.264397, 32.236809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135958, 34.793491, 31.856707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866852, 35.087574, 31.823559>,  <25.705389, 35.264023, 31.803671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866852, 35.087574, 31.823559>,  <26.135958, 34.793491, 31.856707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866852, 35.087574, 31.823559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389751, -0.447381, -0.804950,
		-0.628876, -0.509242, 0.587527,
		-0.672763, 0.735203, -0.082870,
		25.665022, 35.308136, 31.798698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889551, 34.373341, 32.460011>,  <26.135958, 34.793491, 31.856707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889551, 34.373341, 32.460011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609100, 34.631248, 32.338226>,  <25.440830, 34.785992, 32.265156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609100, 34.631248, 32.338226>,  <25.889551, 34.373341, 32.460011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609100, 34.631248, 32.338226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182160, -0.574788, -0.797770,
		-0.689375, -0.503878, 0.520451,
		-0.701127, 0.644768, -0.304458,
		25.398762, 34.824680, 32.246887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338354, 33.890434, 32.259995>,  <25.889551, 34.373341, 32.460011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338354, 33.890434, 32.259995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320080, 34.244968, 32.075680>,  <25.309114, 34.457687, 31.965090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320080, 34.244968, 32.075680>,  <25.338354, 33.890434, 32.259995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320080, 34.244968, 32.075680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040932, -0.462544, -0.885651,
		-0.998117, -0.021603, 0.057412,
		-0.045688, 0.886333, -0.460788,
		25.306374, 34.510868, 31.937443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014921, 33.751617, 31.664206>,  <25.338354, 33.890434, 32.259995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014921, 33.751617, 31.664206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211971, 34.095829, 31.612352>,  <25.330202, 34.302357, 31.581240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211971, 34.095829, 31.612352>,  <25.014921, 33.751617, 31.664206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211971, 34.095829, 31.612352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251602, -0.283437, -0.925397,
		-0.833077, 0.423258, -0.356140,
		0.492625, 0.860532, -0.129632,
		25.359758, 34.353989, 31.573463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867176, 33.861275, 30.919933>,  <25.014921, 33.751617, 31.664206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867176, 33.861275, 30.919933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191143, 34.032597, 31.080225>,  <25.385523, 34.135391, 31.176401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191143, 34.032597, 31.080225>,  <24.867176, 33.861275, 30.919933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191143, 34.032597, 31.080225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554032, -0.334344, -0.762405,
		-0.192561, 0.839504, -0.508088,
		0.809919, 0.428307, 0.400731,
		25.434118, 34.161087, 31.200443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353182, 34.015598, 30.451136>,  <24.867176, 33.861275, 30.919933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353182, 34.015598, 30.451136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111885, 34.333981, 30.471382>,  <24.967108, 34.525009, 30.483530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111885, 34.333981, 30.471382>,  <25.353182, 34.015598, 30.451136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111885, 34.333981, 30.471382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280336, 0.152191, 0.947760,
		0.746668, 0.585918, -0.314941,
		-0.603241, 0.795951, 0.050618,
		24.930912, 34.572765, 30.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734982, 34.604469, 30.713974>,  <25.353182, 34.015598, 30.451136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734982, 34.604469, 30.713974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351566, 34.643169, 30.821192>,  <25.121517, 34.666389, 30.885523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351566, 34.643169, 30.821192>,  <25.734982, 34.604469, 30.713974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351566, 34.643169, 30.821192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284230, 0.256902, 0.923696,
		0.020507, 0.961583, -0.273749,
		-0.958537, 0.096750, 0.268043,
		25.064005, 34.672195, 30.901604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758718, 35.214321, 31.090816>,  <25.734982, 34.604469, 30.713974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758718, 35.214321, 31.090816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458214, 34.983276, 31.218552>,  <25.277910, 34.844650, 31.295193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458214, 34.983276, 31.218552>,  <25.758718, 35.214321, 31.090816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458214, 34.983276, 31.218552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069893, 0.550743, 0.831743,
		-0.656294, 0.602537, -0.454123,
		-0.751261, -0.577608, 0.319336,
		25.232836, 34.809994, 31.314352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160650, 35.622616, 31.222979>,  <25.758718, 35.214321, 31.090816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160650, 35.622616, 31.222979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185549, 35.312828, 31.474798>,  <25.200489, 35.126957, 31.625889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185549, 35.312828, 31.474798>,  <25.160650, 35.622616, 31.222979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185549, 35.312828, 31.474798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046537, 0.627832, 0.776956,
		-0.996975, -0.077660, 0.003040,
		0.062247, -0.774465, 0.629547,
		25.204224, 35.080490, 31.663662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644276, 35.684128, 31.723745>,  <25.160650, 35.622616, 31.222979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644276, 35.684128, 31.723745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922438, 35.435360, 31.867762>,  <25.089334, 35.286098, 31.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922438, 35.435360, 31.867762>,  <24.644276, 35.684128, 31.723745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922438, 35.435360, 31.867762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109286, 0.586712, 0.802388,
		-0.710260, -0.518637, 0.475969,
		0.695404, -0.621921, 0.360039,
		25.131060, 35.248783, 31.975773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541140, 35.546524, 32.413643>,  <24.644276, 35.684128, 31.723745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541140, 35.546524, 32.413643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930288, 35.454807, 32.401356>,  <25.163778, 35.399776, 32.393982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930288, 35.454807, 32.401356>,  <24.541140, 35.546524, 32.413643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930288, 35.454807, 32.401356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101552, 0.303974, 0.947252,
		-0.207858, -0.924676, 0.319013,
		0.972873, -0.229291, -0.030719,
		25.222151, 35.386021, 32.392139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619146, 35.308071, 33.085667>,  <24.541140, 35.546524, 32.413643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619146, 35.308071, 33.085667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964136, 35.442539, 32.934334>,  <25.171129, 35.523220, 32.843533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964136, 35.442539, 32.934334>,  <24.619146, 35.308071, 33.085667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964136, 35.442539, 32.934334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246016, 0.374802, 0.893868,
		0.442289, -0.864011, 0.240554,
		0.862471, 0.336168, -0.378331,
		25.222878, 35.543388, 32.820835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190025, 35.029980, 33.607555>,  <24.619146, 35.308071, 33.085667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190025, 35.029980, 33.607555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349468, 35.329971, 33.396408>,  <25.445135, 35.509964, 33.269718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349468, 35.329971, 33.396408>,  <25.190025, 35.029980, 33.607555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349468, 35.329971, 33.396408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509042, 0.297852, 0.807564,
		0.762882, -0.590610, -0.263043,
		0.398608, 0.749976, -0.527871,
		25.469051, 35.554962, 33.238045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940975, 35.050369, 33.767826>,  <25.190025, 35.029980, 33.607555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940975, 35.050369, 33.767826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815369, 35.411705, 33.650959>,  <25.740004, 35.628506, 33.580837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815369, 35.411705, 33.650959>,  <25.940975, 35.050369, 33.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815369, 35.411705, 33.650959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595605, 0.427083, 0.680334,
		0.739356, 0.039620, -0.672148,
		-0.314018, 0.903344, -0.292169,
		25.721163, 35.682709, 33.563309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444826, 35.491772, 33.507629>,  <25.940975, 35.050369, 33.767826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444826, 35.491772, 33.507629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148191, 35.705471, 33.669930>,  <25.970211, 35.833691, 33.767311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148191, 35.705471, 33.669930>,  <26.444826, 35.491772, 33.507629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148191, 35.705471, 33.669930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595134, 0.244762, 0.765445,
		0.309623, 0.809119, -0.499460,
		-0.741585, 0.534245, 0.405750,
		25.925716, 35.865746, 33.791656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477980, 35.305767, 34.182190>,  <26.444826, 35.491772, 33.507629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477980, 35.305767, 34.182190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594164, 35.319664, 34.564693>,  <26.663874, 35.328003, 34.794193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594164, 35.319664, 34.564693>,  <26.477980, 35.305767, 34.182190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594164, 35.319664, 34.564693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740500, -0.641097, -0.201631,
		0.606047, 0.766673, -0.211941,
		0.290460, 0.034745, 0.956256,
		26.681301, 35.330086, 34.851570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128059, 35.594391, 34.228981>,  <26.477980, 35.305767, 34.182190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128059, 35.594391, 34.228981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036621, 35.318092, 34.503387>,  <26.981758, 35.152313, 34.668030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036621, 35.318092, 34.503387>,  <27.128059, 35.594391, 34.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036621, 35.318092, 34.503387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880538, -0.447248, -0.156917,
		0.415208, 0.568190, 0.710467,
		-0.228596, -0.690746, 0.686013,
		26.968042, 35.110870, 34.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352226, 35.365726, 34.886337>,  <27.128059, 35.594391, 34.228981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352226, 35.365726, 34.886337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618902, 35.424500, 35.178623>,  <27.778908, 35.459763, 35.353992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618902, 35.424500, 35.178623>,  <27.352226, 35.365726, 34.886337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618902, 35.424500, 35.178623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667289, 0.319087, -0.672985,
		-0.332041, 0.936267, 0.114688,
		0.666689, 0.146929, 0.730710,
		27.818909, 35.468578, 35.397835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603029, 36.029118, 34.952038>,  <27.352226, 35.365726, 34.886337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603029, 36.029118, 34.952038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885855, 35.761864, 35.044693>,  <28.055550, 35.601513, 35.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885855, 35.761864, 35.044693>,  <27.603029, 36.029118, 34.952038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885855, 35.761864, 35.044693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605569, 0.402941, -0.686240,
		0.365164, 0.625488, 0.689507,
		0.707066, -0.668133, 0.231636,
		28.097975, 35.561424, 35.114185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187527, 36.427429, 35.099159>,  <27.603029, 36.029118, 34.952038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187527, 36.427429, 35.099159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281618, 36.062889, 34.964035>,  <28.338072, 35.844166, 34.882961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281618, 36.062889, 34.964035>,  <28.187527, 36.427429, 35.099159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281618, 36.062889, 34.964035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644303, 0.406435, -0.647831,
		0.727696, -0.065265, 0.682787,
		0.235228, -0.911346, -0.337811,
		28.352186, 35.789486, 34.862690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895380, 36.563381, 34.905567>,  <28.187527, 36.427429, 35.099159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895380, 36.563381, 34.905567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817669, 36.221359, 34.713261>,  <28.771042, 36.016148, 34.597878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817669, 36.221359, 34.713261>,  <28.895380, 36.563381, 34.905567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817669, 36.221359, 34.713261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809725, 0.136868, -0.570625,
		0.553717, -0.500151, 0.665768,
		-0.194277, -0.855053, -0.480771,
		28.759386, 35.964844, 34.569031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501696, 36.216827, 34.866962>,  <28.895380, 36.563381, 34.905567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501696, 36.216827, 34.866962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285168, 36.062691, 34.568035>,  <29.155251, 35.970207, 34.388680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285168, 36.062691, 34.568035>,  <29.501696, 36.216827, 34.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285168, 36.062691, 34.568035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813895, -0.017041, -0.580762,
		0.211059, -0.922616, 0.322854,
		-0.541322, -0.385345, -0.747315,
		29.122770, 35.947086, 34.343842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815899, 35.673580, 34.619698>,  <29.501696, 36.216827, 34.866962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815899, 35.673580, 34.619698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589483, 35.789654, 34.311050>,  <29.453634, 35.859299, 34.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589483, 35.789654, 34.311050>,  <29.815899, 35.673580, 34.619698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589483, 35.789654, 34.311050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763226, -0.169310, -0.623555,
		-0.311588, -0.941874, -0.125641,
		-0.566038, 0.290185, -0.771618,
		29.419672, 35.876709, 34.079567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009972, 35.249214, 34.030952>,  <29.815899, 35.673580, 34.619698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009972, 35.249214, 34.030952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878433, 35.611774, 33.924904>,  <29.799511, 35.829311, 33.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878433, 35.611774, 33.924904>,  <30.009972, 35.249214, 34.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878433, 35.611774, 33.924904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788947, 0.109370, -0.604650,
		-0.519061, -0.408004, -0.751071,
		-0.328845, 0.906405, -0.265124,
		29.779779, 35.883698, 33.845367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534645, 35.255829, 33.450012>,  <30.009972, 35.249214, 34.030952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534645, 35.255829, 33.450012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355900, 35.611019, 33.406555>,  <30.248653, 35.824135, 33.380482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355900, 35.611019, 33.406555>,  <30.534645, 35.255829, 33.450012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355900, 35.611019, 33.406555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698478, 0.270433, -0.662567,
		-0.558964, -0.371964, -0.741081,
		-0.446864, 0.887980, -0.108647,
		30.221840, 35.877415, 33.373962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397911, 35.482327, 32.745628>,  <30.534645, 35.255829, 33.450012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397911, 35.482327, 32.745628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440554, 35.820255, 32.955357>,  <30.466139, 36.023014, 33.081192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440554, 35.820255, 32.955357>,  <30.397911, 35.482327, 32.745628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440554, 35.820255, 32.955357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722892, 0.296207, -0.624250,
		-0.682688, 0.445573, -0.579139,
		0.106604, 0.844823, 0.524319,
		30.472534, 36.073704, 33.112652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347406, 36.275105, 32.446144>,  <30.397911, 35.482327, 32.745628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347406, 36.275105, 32.446144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608049, 36.265709, 32.749420>,  <30.764435, 36.260071, 32.931385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608049, 36.265709, 32.749420>,  <30.347406, 36.275105, 32.446144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608049, 36.265709, 32.749420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733197, 0.275797, -0.621578,
		-0.194506, 0.960929, 0.196934,
		0.651605, -0.023491, 0.758194,
		30.803532, 36.258663, 32.976879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619946, 36.891724, 32.402321>,  <30.347406, 36.275105, 32.446144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619946, 36.891724, 32.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864790, 36.627041, 32.575508>,  <31.011698, 36.468231, 32.679420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864790, 36.627041, 32.575508>,  <30.619946, 36.891724, 32.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864790, 36.627041, 32.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705727, 0.210110, -0.676611,
		0.356744, 0.719723, 0.595594,
		0.612113, -0.661704, 0.432973,
		31.048424, 36.428528, 32.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275627, 37.249748, 32.402004>,  <30.619946, 36.891724, 32.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275627, 37.249748, 32.402004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335424, 36.856258, 32.362144>,  <31.371302, 36.620163, 32.338230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335424, 36.856258, 32.362144>,  <31.275627, 37.249748, 32.402004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335424, 36.856258, 32.362144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437936, 0.156230, -0.885327,
		0.886490, 0.088709, 0.454165,
		0.149491, -0.983729, -0.099647,
		31.380272, 36.561138, 32.332249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986128, 37.127922, 32.359287>,  <31.275627, 37.249748, 32.402004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986128, 37.127922, 32.359287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754644, 36.853523, 32.182877>,  <31.615755, 36.688885, 32.077030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754644, 36.853523, 32.182877>,  <31.986128, 37.127922, 32.359287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754644, 36.853523, 32.182877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269543, 0.349500, -0.897327,
		0.769704, -0.638165, -0.017352,
		-0.578707, -0.686000, -0.441025,
		31.581032, 36.647724, 32.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350178, 37.079109, 31.640339>,  <31.986128, 37.127922, 32.359287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350178, 37.079109, 31.640339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013809, 36.867481, 31.594860>,  <31.811987, 36.740505, 31.567574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013809, 36.867481, 31.594860>,  <32.350178, 37.079109, 31.640339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013809, 36.867481, 31.594860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093593, 0.064742, -0.993503,
		0.532998, -0.846102, -0.004926,
		-0.840924, -0.529074, -0.113697,
		31.761532, 36.708759, 31.560751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496086, 36.886402, 30.973129>,  <32.350178, 37.079109, 31.640339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496086, 36.886402, 30.973129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115147, 36.775105, 31.023098>,  <31.886581, 36.708324, 31.053080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115147, 36.775105, 31.023098>,  <32.496086, 36.886402, 30.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115147, 36.775105, 31.023098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137156, 0.024867, -0.990237,
		0.272426, -0.960187, -0.061846,
		-0.952351, -0.278249, 0.124921,
		31.829441, 36.691631, 31.060574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419258, 36.201218, 30.614544>,  <32.496086, 36.886402, 30.973129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419258, 36.201218, 30.614544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107212, 36.450993, 30.630028>,  <31.919985, 36.600857, 30.639318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107212, 36.450993, 30.630028>,  <32.419258, 36.201218, 30.614544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107212, 36.450993, 30.630028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210108, -0.203210, -0.956327,
		-0.589299, -0.754179, 0.289726,
		-0.780116, 0.624436, 0.038708,
		31.873177, 36.638325, 30.641640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890173, 35.820801, 30.255804>,  <32.419258, 36.201218, 30.614544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890173, 35.820801, 30.255804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743740, 36.193012, 30.251793>,  <31.655880, 36.416340, 30.249386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743740, 36.193012, 30.251793>,  <31.890173, 35.820801, 30.255804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743740, 36.193012, 30.251793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064606, -0.036163, -0.997255,
		-0.928338, -0.364427, 0.073356,
		-0.366080, 0.930529, -0.010028,
		31.633917, 36.472172, 30.248785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279465, 35.805008, 29.825863>,  <31.890173, 35.820801, 30.255804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279465, 35.805008, 29.825863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375309, 36.192989, 29.842695>,  <31.432816, 36.425777, 29.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375309, 36.192989, 29.842695>,  <31.279465, 35.805008, 29.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375309, 36.192989, 29.842695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190017, 0.089359, -0.977706,
		-0.952092, 0.226275, 0.205719,
		0.239613, 0.969956, 0.042082,
		31.447193, 36.483974, 29.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700481, 36.297321, 29.528118>,  <31.279465, 35.805008, 29.825863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700481, 36.297321, 29.528118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065649, 36.454098, 29.482584>,  <31.284750, 36.548164, 29.455263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065649, 36.454098, 29.482584>,  <30.700481, 36.297321, 29.528118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065649, 36.454098, 29.482584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218341, 0.233353, -0.947562,
		-0.344825, 0.889904, 0.298609,
		0.912920, 0.391941, -0.113836,
		31.339525, 36.571682, 29.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629145, 36.692894, 29.019884>,  <30.700481, 36.297321, 29.528118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629145, 36.692894, 29.019884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027914, 36.719982, 29.035662>,  <31.267176, 36.736233, 29.045128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027914, 36.719982, 29.035662>,  <30.629145, 36.692894, 29.019884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027914, 36.719982, 29.035662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025579, 0.194556, -0.980558,
		-0.074073, 0.978551, 0.192226,
		0.996925, 0.067716, 0.039442,
		31.326992, 36.740295, 29.047495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905899, 37.350224, 28.833357>,  <30.629145, 36.692894, 29.019884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905899, 37.350224, 28.833357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193794, 37.090034, 28.736311>,  <31.366531, 36.933922, 28.678083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193794, 37.090034, 28.736311>,  <30.905899, 37.350224, 28.833357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193794, 37.090034, 28.736311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259722, 0.071806, -0.963010,
		0.643831, 0.756129, -0.117259,
		0.719740, -0.650471, -0.242614,
		31.409716, 36.894894, 28.663527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215191, 37.608089, 28.178667>,  <30.905899, 37.350224, 28.833357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215191, 37.608089, 28.178667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347570, 37.230629, 28.178282>,  <31.426998, 37.004154, 28.178051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347570, 37.230629, 28.178282>,  <31.215191, 37.608089, 28.178667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347570, 37.230629, 28.178282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134492, -0.046155, -0.989839,
		0.934016, 0.327714, -0.142188,
		0.330947, -0.943649, -0.000965,
		31.446854, 36.947533, 28.177992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686764, 37.616936, 27.634176>,  <31.215191, 37.608089, 28.178667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686764, 37.616936, 27.634176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571920, 37.242649, 27.716162>,  <31.503016, 37.018078, 27.765352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571920, 37.242649, 27.716162>,  <31.686764, 37.616936, 27.634176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571920, 37.242649, 27.716162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277519, -0.123540, -0.952744,
		0.916817, -0.330419, -0.224210,
		-0.287106, -0.935714, 0.204961,
		31.485788, 36.961933, 27.777651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964033, 37.278912, 27.136992>,  <31.686764, 37.616936, 27.634176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964033, 37.278912, 27.136992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684156, 37.022339, 27.262852>,  <31.516232, 36.868397, 27.338367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684156, 37.022339, 27.262852>,  <31.964033, 37.278912, 27.136992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684156, 37.022339, 27.262852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111779, -0.336706, -0.934952,
		0.705649, -0.689348, 0.163891,
		-0.699690, -0.641428, 0.314651,
		31.474249, 36.829910, 27.357246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108780, 36.672523, 26.792545>,  <31.964033, 37.278912, 27.136992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108780, 36.672523, 26.792545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730082, 36.619469, 26.909903>,  <31.502863, 36.587635, 26.980316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730082, 36.619469, 26.909903>,  <32.108780, 36.672523, 26.792545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730082, 36.619469, 26.909903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236774, -0.330711, -0.913547,
		0.218198, -0.934365, 0.281695,
		-0.946746, -0.132636, 0.293394,
		31.446058, 36.579678, 26.997921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882803, 36.127224, 26.337605>,  <32.108780, 36.672523, 26.792545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882803, 36.127224, 26.337605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531801, 36.265312, 26.470758>,  <31.321199, 36.348164, 26.550650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531801, 36.265312, 26.470758>,  <31.882803, 36.127224, 26.337605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531801, 36.265312, 26.470758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349157, 0.015938, -0.936929,
		-0.328750, -0.938387, 0.106549,
		-0.877504, 0.345218, 0.332884,
		31.268551, 36.368877, 26.570623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342974, 35.622936, 26.097994>,  <31.882803, 36.127224, 26.337605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342974, 35.622936, 26.097994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151064, 35.964764, 26.177526>,  <31.035917, 36.169861, 26.225246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151064, 35.964764, 26.177526>,  <31.342974, 35.622936, 26.097994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151064, 35.964764, 26.177526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523239, -0.096767, -0.846674,
		-0.704298, -0.510248, 0.493569,
		-0.479775, 0.854566, 0.198829,
		31.007132, 36.221134, 26.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671410, 35.560802, 25.767672>,  <31.342974, 35.622936, 26.097994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671410, 35.560802, 25.767672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684212, 35.953888, 25.840603>,  <30.691893, 36.189739, 25.884361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684212, 35.953888, 25.840603>,  <30.671410, 35.560802, 25.767672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684212, 35.953888, 25.840603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615254, 0.163134, -0.771265,
		-0.787679, -0.087496, 0.609841,
		0.032003, 0.982717, 0.182330,
		30.693813, 36.248703, 25.895302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965572, 35.855766, 25.586309>,  <30.671410, 35.560802, 25.767672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965572, 35.855766, 25.586309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206570, 36.174381, 25.606426>,  <30.351168, 36.365551, 25.618496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206570, 36.174381, 25.606426>,  <29.965572, 35.855766, 25.586309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206570, 36.174381, 25.606426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520004, 0.439568, -0.732377,
		-0.605472, 0.415102, 0.679039,
		0.602495, 0.796537, 0.050291,
		30.387318, 36.413342, 25.621513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586386, 36.433884, 25.464243>,  <29.965572, 35.855766, 25.586309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586386, 36.433884, 25.464243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952606, 36.578411, 25.393570>,  <30.172338, 36.665127, 25.351166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952606, 36.578411, 25.393570>,  <29.586386, 36.433884, 25.464243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952606, 36.578411, 25.393570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370032, 0.584532, -0.722080,
		-0.157626, 0.726478, 0.668868,
		0.915549, 0.361321, -0.176683,
		30.227270, 36.686806, 25.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510044, 37.215492, 25.390560>,  <29.586386, 36.433884, 25.464243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510044, 37.215492, 25.390560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847403, 37.074497, 25.228357>,  <30.049818, 36.989899, 25.131035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847403, 37.074497, 25.228357>,  <29.510044, 37.215492, 25.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847403, 37.074497, 25.228357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336122, 0.242666, -0.910020,
		0.419174, 0.903806, 0.086184,
		0.843395, -0.352488, -0.405508,
		30.100422, 36.968750, 25.106705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830076, 37.792168, 24.920702>,  <29.510044, 37.215492, 25.390560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830076, 37.792168, 24.920702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971775, 37.449593, 24.770494>,  <30.056795, 37.244045, 24.680370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971775, 37.449593, 24.770494>,  <29.830076, 37.792168, 24.920702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971775, 37.449593, 24.770494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377844, 0.236238, -0.895224,
		0.855420, 0.459019, -0.239915,
		0.354248, -0.856442, -0.375520,
		30.078049, 37.192661, 24.657839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951611, 37.896358, 24.260313>,  <29.830076, 37.792168, 24.920702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951611, 37.896358, 24.260313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980299, 37.499004, 24.224443>,  <29.997513, 37.260593, 24.202921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980299, 37.499004, 24.224443>,  <29.951611, 37.896358, 24.260313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980299, 37.499004, 24.224443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188591, 0.074777, -0.979205,
		0.979433, 0.087143, -0.181980,
		0.071723, -0.993385, -0.089674,
		30.001816, 37.200989, 24.197542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494200, 37.736649, 23.676168>,  <29.951611, 37.896358, 24.260313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494200, 37.736649, 23.676168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224190, 37.449886, 23.745892>,  <30.062183, 37.277828, 23.787725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224190, 37.449886, 23.745892>,  <30.494200, 37.736649, 23.676168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224190, 37.449886, 23.745892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202124, -0.047522, -0.978206,
		0.709569, -0.695544, -0.112826,
		-0.675024, -0.716910, 0.174306,
		30.021683, 37.234814, 23.798183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624908, 37.250801, 23.109892>,  <30.494200, 37.736649, 23.676168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624908, 37.250801, 23.109892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269135, 37.121845, 23.239487>,  <30.055670, 37.044472, 23.317244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269135, 37.121845, 23.239487>,  <30.624908, 37.250801, 23.109892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269135, 37.121845, 23.239487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315430, -0.080025, -0.945569,
		0.330772, -0.943217, -0.030515,
		-0.889434, -0.322393, 0.323989,
		30.002304, 37.025127, 23.336683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467838, 36.576191, 22.807867>,  <30.624908, 37.250801, 23.109892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467838, 36.576191, 22.807867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122349, 36.761303, 22.887676>,  <29.915054, 36.872372, 22.935562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122349, 36.761303, 22.887676>,  <30.467838, 36.576191, 22.807867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122349, 36.761303, 22.887676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182182, 0.082412, -0.979805,
		-0.469882, -0.882632, 0.013130,
		-0.863725, 0.462785, 0.199523,
		29.863232, 36.900139, 22.947533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964218, 36.144543, 22.564199>,  <30.467838, 36.576191, 22.807867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964218, 36.144543, 22.564199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798534, 36.507843, 22.587910>,  <29.699123, 36.725822, 22.602137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798534, 36.507843, 22.587910>,  <29.964218, 36.144543, 22.564199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798534, 36.507843, 22.587910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128754, 0.006000, -0.991658,
		-0.901028, -0.418387, 0.114455,
		-0.414210, 0.908249, 0.059275,
		29.674271, 36.780319, 22.605692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440815, 36.042255, 22.072069>,  <29.964218, 36.144543, 22.564199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440815, 36.042255, 22.072069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405819, 36.430798, 22.160439>,  <29.384821, 36.663925, 22.213461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405819, 36.430798, 22.160439>,  <29.440815, 36.042255, 22.072069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405819, 36.430798, 22.160439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428156, 0.163578, -0.888777,
		-0.899460, -0.172349, 0.401582,
		-0.087489, 0.971359, 0.220924,
		29.379572, 36.722206, 22.226715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697977, 36.310791, 22.030106>,  <29.440815, 36.042255, 22.072069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697977, 36.310791, 22.030106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965681, 36.604015, 21.981592>,  <29.126303, 36.779949, 21.952484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965681, 36.604015, 21.981592>,  <28.697977, 36.310791, 22.030106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965681, 36.604015, 21.981592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255222, 0.073500, -0.964085,
		-0.697820, 0.676178, 0.236284,
		0.669260, 0.733063, -0.121286,
		29.166458, 36.823933, 21.945206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241791, 36.861263, 21.804825>,  <28.697977, 36.310791, 22.030106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241791, 36.861263, 21.804825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623062, 36.933784, 21.708012>,  <28.851824, 36.977299, 21.649923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623062, 36.933784, 21.708012>,  <28.241791, 36.861263, 21.804825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623062, 36.933784, 21.708012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284401, 0.265344, -0.921254,
		-0.102808, 0.946953, 0.304484,
		0.953177, 0.181308, -0.242035,
		28.909016, 36.988178, 21.635401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228580, 37.416405, 21.442759>,  <28.241791, 36.861263, 21.804825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228580, 37.416405, 21.442759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596245, 37.282803, 21.359247>,  <28.816843, 37.202641, 21.309141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596245, 37.282803, 21.359247>,  <28.228580, 37.416405, 21.442759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596245, 37.282803, 21.359247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166861, 0.149952, -0.974511,
		0.356796, 0.930568, 0.082098,
		0.919160, -0.334003, -0.208777,
		28.871992, 37.182602, 21.296614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410385, 37.810867, 20.795544>,  <28.228580, 37.416405, 21.442759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410385, 37.810867, 20.795544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684206, 37.519707, 20.811281>,  <28.848499, 37.345009, 20.820724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684206, 37.519707, 20.811281>,  <28.410385, 37.810867, 20.795544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684206, 37.519707, 20.811281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093531, 0.034178, -0.995030,
		0.722937, 0.684831, 0.091478,
		0.684554, -0.727900, 0.039344,
		28.889572, 37.301338, 20.823084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028320, 38.082420, 20.406965>,  <28.410385, 37.810867, 20.795544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028320, 38.082420, 20.406965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046932, 37.683144, 20.391781>,  <29.058100, 37.443577, 20.382671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046932, 37.683144, 20.391781>,  <29.028320, 38.082420, 20.406965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046932, 37.683144, 20.391781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005136, 0.038238, -0.999255,
		0.998904, 0.046302, 0.006906,
		0.046532, -0.998195, -0.037959,
		29.060892, 37.383686, 20.380394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675472, 37.926079, 19.982580>,  <29.028320, 38.082420, 20.406965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675472, 37.926079, 19.982580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424877, 37.614742, 19.966105>,  <29.274521, 37.427940, 19.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424877, 37.614742, 19.966105>,  <29.675472, 37.926079, 19.982580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424877, 37.614742, 19.966105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117195, -0.041825, -0.992228,
		0.770571, -0.626444, 0.117421,
		-0.626487, -0.778343, -0.041187,
		29.236931, 37.381241, 19.953749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931797, 37.517414, 19.483583>,  <29.675472, 37.926079, 19.982580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931797, 37.517414, 19.483583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557497, 37.377922, 19.504595>,  <29.332916, 37.294228, 19.517202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557497, 37.377922, 19.504595>,  <29.931797, 37.517414, 19.483583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557497, 37.377922, 19.504595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016429, -0.105686, -0.994264,
		0.352283, -0.931245, 0.093166,
		-0.935749, -0.348732, 0.052531,
		29.276772, 37.273304, 19.520353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923195, 36.928265, 19.022688>,  <29.931797, 37.517414, 19.483583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923195, 36.928265, 19.022688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535044, 37.018330, 19.057709>,  <29.302153, 37.072369, 19.078722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535044, 37.018330, 19.057709>,  <29.923195, 36.928265, 19.022688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535044, 37.018330, 19.057709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118710, -0.128765, -0.984544,
		-0.210416, -0.965773, 0.151681,
		-0.970378, 0.225170, 0.087553,
		29.243931, 37.085880, 19.083975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629614, 36.517239, 18.547012>,  <29.923195, 36.928265, 19.022688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629614, 36.517239, 18.547012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365129, 36.814934, 18.584763>,  <29.206438, 36.993553, 18.607412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365129, 36.814934, 18.584763>,  <29.629614, 36.517239, 18.547012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365129, 36.814934, 18.584763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094102, 0.042527, -0.994654,
		-0.744274, -0.666557, 0.041915,
		-0.661211, 0.744240, 0.094376,
		29.166765, 37.038204, 18.613075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000940, 36.318653, 18.193659>,  <29.629614, 36.517239, 18.547012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000940, 36.318653, 18.193659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989742, 36.718166, 18.209930>,  <28.983023, 36.957874, 18.219694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989742, 36.718166, 18.209930>,  <29.000940, 36.318653, 18.193659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989742, 36.718166, 18.209930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227034, 0.033279, -0.973318,
		-0.973484, -0.036485, 0.225826,
		-0.027996, 0.998780, 0.040680,
		28.981344, 37.017799, 18.222134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432083, 36.501926, 17.872076>,  <29.000940, 36.318653, 18.193659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432083, 36.501926, 17.872076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618000, 36.855885, 17.859880>,  <28.729549, 37.068260, 17.852562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618000, 36.855885, 17.859880>,  <28.432083, 36.501926, 17.872076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618000, 36.855885, 17.859880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440433, 0.201190, -0.874952,
		-0.768106, 0.420099, 0.483249,
		0.464792, 0.884895, -0.030490,
		28.757437, 37.121353, 17.850733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022385, 36.928570, 17.507908>,  <28.432083, 36.501926, 17.872076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022385, 36.928570, 17.507908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346428, 37.163078, 17.508781>,  <28.540854, 37.303783, 17.509306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346428, 37.163078, 17.508781>,  <28.022385, 36.928570, 17.507908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346428, 37.163078, 17.508781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345908, 0.480970, -0.805615,
		-0.473362, 0.651881, 0.592435,
		0.810109, 0.586276, 0.002183,
		28.589460, 37.338963, 17.509436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797129, 37.615360, 17.415495>,  <28.022385, 36.928570, 17.507908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797129, 37.615360, 17.415495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177599, 37.645248, 17.295706>,  <28.405880, 37.663181, 17.223833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177599, 37.645248, 17.295706>,  <27.797129, 37.615360, 17.415495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177599, 37.645248, 17.295706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280380, 0.614843, -0.737126,
		0.129051, 0.785102, 0.605773,
		0.951174, 0.074720, -0.299473,
		28.462952, 37.667664, 17.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976759, 38.356789, 17.325188>,  <27.797129, 37.615360, 17.415495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976759, 38.356789, 17.325188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254219, 38.162430, 17.112488>,  <28.420694, 38.045815, 16.984867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254219, 38.162430, 17.112488>,  <27.976759, 38.356789, 17.325188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254219, 38.162430, 17.112488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191213, 0.587525, -0.786290,
		0.694471, 0.647086, 0.314626,
		0.693648, -0.485895, -0.531750,
		28.462313, 38.016663, 16.952963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418385, 38.800022, 16.949772>,  <27.976759, 38.356789, 17.325188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418385, 38.800022, 16.949772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444834, 38.464355, 16.733835>,  <28.460703, 38.262955, 16.604273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444834, 38.464355, 16.733835>,  <28.418385, 38.800022, 16.949772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444834, 38.464355, 16.733835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139851, 0.527890, -0.837719,
		0.987962, 0.130891, -0.082452,
		0.066124, -0.839166, -0.539841,
		28.464670, 38.212605, 16.571882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644634, 38.955082, 16.402748>,  <28.418385, 38.800022, 16.949772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644634, 38.955082, 16.402748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507799, 38.593609, 16.299725>,  <28.425697, 38.376724, 16.237911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507799, 38.593609, 16.299725>,  <28.644634, 38.955082, 16.402748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507799, 38.593609, 16.299725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298541, 0.364417, -0.882085,
		0.890982, -0.224859, -0.394449,
		-0.342089, -0.903680, -0.257559,
		28.405172, 38.322506, 16.222456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069057, 38.672489, 15.834768>,  <28.644634, 38.955082, 16.402748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069057, 38.672489, 15.834768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693966, 38.534313, 15.820134>,  <28.468912, 38.451408, 15.811354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693966, 38.534313, 15.820134>,  <29.069057, 38.672489, 15.834768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693966, 38.534313, 15.820134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063366, 0.273659, -0.959737,
		0.341542, -0.897655, -0.278507,
		-0.937728, -0.345438, -0.036585,
		28.412647, 38.430683, 15.809158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991489, 38.483562, 15.139508>,  <29.069057, 38.672489, 15.834768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991489, 38.483562, 15.139508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623522, 38.502758, 15.295171>,  <28.402740, 38.514275, 15.388568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623522, 38.502758, 15.295171>,  <28.991489, 38.483562, 15.139508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623522, 38.502758, 15.295171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340685, 0.393514, -0.853862,
		-0.194111, -0.918066, -0.345654,
		-0.919921, 0.047985, 0.389156,
		28.347546, 38.517155, 15.411918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612297, 38.295704, 14.554361>,  <28.991489, 38.483562, 15.139508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612297, 38.295704, 14.554361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364716, 38.442928, 14.831901>,  <28.216167, 38.531265, 14.998425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364716, 38.442928, 14.831901>,  <28.612297, 38.295704, 14.554361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364716, 38.442928, 14.831901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466815, 0.538050, -0.701845,
		-0.631650, -0.758307, -0.161209,
		-0.618952, 0.368065, 0.693848,
		28.179029, 38.553349, 15.040055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893322, 38.223812, 14.256873>,  <28.612297, 38.295704, 14.554361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893322, 38.223812, 14.256873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880714, 38.510746, 14.535278>,  <27.873150, 38.682907, 14.702322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880714, 38.510746, 14.535278>,  <27.893322, 38.223812, 14.256873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880714, 38.510746, 14.535278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371021, 0.638209, -0.674561,
		-0.928090, -0.279496, 0.246031,
		-0.031518, 0.717336, 0.696014,
		27.871260, 38.725948, 14.744082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262749, 38.367222, 14.299046>,  <27.893322, 38.223812, 14.256873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262749, 38.367222, 14.299046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477211, 38.688740, 14.402160>,  <27.605888, 38.881649, 14.464028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477211, 38.688740, 14.402160>,  <27.262749, 38.367222, 14.299046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477211, 38.688740, 14.402160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593428, 0.576103, -0.562093,
		-0.600318, 0.148392, 0.785874,
		0.536155, 0.803794, 0.257785,
		27.638058, 38.929878, 14.479495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773294, 38.892647, 14.451855>,  <27.262749, 38.367222, 14.299046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773294, 38.892647, 14.451855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119873, 39.071892, 14.363794>,  <27.327820, 39.179440, 14.310958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119873, 39.071892, 14.363794>,  <26.773294, 38.892647, 14.451855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119873, 39.071892, 14.363794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485218, 0.651893, -0.582752,
		-0.117624, 0.611744, 0.782262,
		0.866446, 0.448113, -0.220151,
		27.379807, 39.206326, 14.297749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705076, 39.662228, 14.690475>,  <26.773294, 38.892647, 14.451855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705076, 39.662228, 14.690475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939312, 39.585278, 14.375496>,  <27.079853, 39.539108, 14.186508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939312, 39.585278, 14.375496>,  <26.705076, 39.662228, 14.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939312, 39.585278, 14.375496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547521, 0.622474, -0.559238,
		0.597751, 0.758629, 0.259183,
		0.585589, -0.192377, -0.787450,
		27.114988, 39.527565, 14.139261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752525, 40.256241, 14.308131>,  <26.705076, 39.662228, 14.690475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752525, 40.256241, 14.308131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782181, 39.989346, 14.011672>,  <26.799974, 39.829208, 13.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782181, 39.989346, 14.011672>,  <26.752525, 40.256241, 14.308131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782181, 39.989346, 14.011672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584599, 0.573025, -0.574357,
		0.807928, 0.475858, -0.347580,
		0.074141, -0.667234, -0.741149,
		26.804422, 39.789177, 13.789328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587614, 40.671345, 13.848295>,  <26.752525, 40.256241, 14.308131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587614, 40.671345, 13.848295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604887, 40.308060, 13.681787>,  <26.615250, 40.090088, 13.581882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604887, 40.308060, 13.681787>,  <26.587614, 40.671345, 13.848295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604887, 40.308060, 13.681787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567344, 0.320668, -0.758480,
		0.822348, 0.268921, -0.501424,
		0.043181, -0.908214, -0.416272,
		26.617842, 40.035595, 13.556905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002157, 40.495041, 13.181425>,  <26.587614, 40.671345, 13.848295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002157, 40.495041, 13.181425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245192, 40.792274, 13.293618>,  <27.391012, 40.970615, 13.360934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245192, 40.792274, 13.293618>,  <27.002157, 40.495041, 13.181425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245192, 40.792274, 13.293618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310330, -0.547168, 0.777369,
		0.731119, -0.385275, -0.563052,
		0.607585, 0.743082, 0.280483,
		27.427467, 41.015198, 13.377763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585905, 40.139160, 13.369088>,  <27.002157, 40.495041, 13.181425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585905, 40.139160, 13.369088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558512, 40.483631, 13.570560>,  <27.542076, 40.690311, 13.691442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558512, 40.483631, 13.570560>,  <27.585905, 40.139160, 13.369088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558512, 40.483631, 13.570560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345940, -0.453041, 0.821632,
		0.935754, 0.230511, -0.266888,
		-0.068484, 0.861173, 0.503677,
		27.537966, 40.741982, 13.721663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118883, 40.185577, 13.915815>,  <27.585905, 40.139160, 13.369088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118883, 40.185577, 13.915815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804457, 40.394981, 14.047289>,  <27.615801, 40.520626, 14.126173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804457, 40.394981, 14.047289>,  <28.118883, 40.185577, 13.915815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804457, 40.394981, 14.047289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254983, -0.209767, 0.943918,
		0.563100, 0.825792, 0.031405,
		-0.786067, 0.523513, 0.328683,
		27.568636, 40.552036, 14.145894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189257, 40.724136, 14.421173>,  <28.118883, 40.185577, 13.915815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189257, 40.724136, 14.421173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826099, 40.567020, 14.479748>,  <27.608204, 40.472752, 14.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826099, 40.567020, 14.479748>,  <28.189257, 40.724136, 14.421173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826099, 40.567020, 14.479748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156140, 0.007330, 0.987708,
		-0.389033, 0.919600, 0.054675,
		-0.907895, -0.392788, 0.146438,
		27.553730, 40.449184, 14.523679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727760, 41.264820, 14.770800>,  <28.189257, 40.724136, 14.421173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727760, 41.264820, 14.770800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596708, 40.903763, 14.882433>,  <27.518078, 40.687126, 14.949412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596708, 40.903763, 14.882433>,  <27.727760, 41.264820, 14.770800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596708, 40.903763, 14.882433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260931, 0.197452, 0.944948,
		-0.908060, 0.382414, 0.170838,
		-0.327629, -0.902647, 0.279082,
		27.498419, 40.632969, 14.966158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174561, 41.232834, 15.307889>,  <27.727760, 41.264820, 14.770800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174561, 41.232834, 15.307889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435059, 40.930779, 15.337943>,  <27.591356, 40.749546, 15.355975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435059, 40.930779, 15.337943>,  <27.174561, 41.232834, 15.307889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435059, 40.930779, 15.337943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323283, 0.365646, 0.872807,
		-0.686564, -0.544120, 0.482248,
		0.651244, -0.755140, 0.075135,
		27.630432, 40.704235, 15.360483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960546, 41.010822, 15.945574>,  <27.174561, 41.232834, 15.307889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960546, 41.010822, 15.945574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334112, 40.890278, 15.868643>,  <27.558250, 40.817951, 15.822484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334112, 40.890278, 15.868643>,  <26.960546, 41.010822, 15.945574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334112, 40.890278, 15.868643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263195, 0.215499, 0.940366,
		-0.241944, -0.928839, 0.280574,
		0.933912, -0.301362, -0.192327,
		27.614286, 40.799870, 15.810945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091450, 40.535072, 16.415436>,  <26.960546, 41.010822, 15.945574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091450, 40.535072, 16.415436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459072, 40.633366, 16.292179>,  <27.679646, 40.692341, 16.218225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459072, 40.633366, 16.292179>,  <27.091450, 40.535072, 16.415436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459072, 40.633366, 16.292179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311007, 0.028071, 0.949993,
		0.242095, -0.968931, -0.050626,
		0.919057, 0.245734, -0.308140,
		27.734789, 40.707085, 16.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521591, 40.165455, 16.782787>,  <27.091450, 40.535072, 16.415436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521591, 40.165455, 16.782787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756300, 40.475956, 16.690582>,  <27.897125, 40.662254, 16.635260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756300, 40.475956, 16.690582>,  <27.521591, 40.165455, 16.782787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756300, 40.475956, 16.690582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412832, -0.041880, 0.909844,
		0.696612, -0.629033, -0.345035,
		0.586772, 0.776250, -0.230511,
		27.932331, 40.708832, 16.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260063, 40.077599, 17.106916>,  <27.521591, 40.165455, 16.782787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260063, 40.077599, 17.106916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241655, 40.465538, 17.011187>,  <28.230610, 40.698303, 16.953749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241655, 40.465538, 17.011187>,  <28.260063, 40.077599, 17.106916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241655, 40.465538, 17.011187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318590, 0.241318, 0.916660,
		0.946775, -0.034063, -0.320090,
		-0.046019, 0.969848, -0.239326,
		28.227850, 40.756493, 16.939388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920925, 40.316795, 17.268467>,  <28.260063, 40.077599, 17.106916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920925, 40.316795, 17.268467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725258, 40.665665, 17.266338>,  <28.607857, 40.874985, 17.265062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725258, 40.665665, 17.266338>,  <28.920925, 40.316795, 17.268467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725258, 40.665665, 17.266338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397525, 0.228377, 0.888717,
		0.776330, 0.432617, -0.458426,
		-0.489168, 0.872174, -0.005320,
		28.578508, 40.927319, 17.264742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401855, 40.804638, 17.572872>,  <28.920925, 40.316795, 17.268467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401855, 40.804638, 17.572872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044380, 40.980881, 17.606787>,  <28.829895, 41.086624, 17.627136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044380, 40.980881, 17.606787>,  <29.401855, 40.804638, 17.572872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044380, 40.980881, 17.606787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177373, 0.173350, 0.968756,
		0.412139, 0.880806, -0.233072,
		-0.893689, 0.440603, 0.084787,
		28.776274, 41.113060, 17.632223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492563, 41.592358, 17.762928>,  <29.401855, 40.804638, 17.572872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492563, 41.592358, 17.762928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150772, 41.426441, 17.888029>,  <28.945698, 41.326889, 17.963089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150772, 41.426441, 17.888029>,  <29.492563, 41.592358, 17.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150772, 41.426441, 17.888029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235799, 0.226761, 0.944975,
		-0.462890, 0.881207, -0.095954,
		-0.854477, -0.414794, 0.312753,
		28.894428, 41.302002, 17.981855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424677, 41.828121, 18.493101>,  <29.492563, 41.592358, 17.762928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424677, 41.828121, 18.493101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143948, 41.544445, 18.466316>,  <28.975510, 41.374237, 18.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143948, 41.544445, 18.466316>,  <29.424677, 41.828121, 18.493101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143948, 41.544445, 18.466316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043438, -0.051221, 0.997742,
		-0.711023, 0.703150, 0.005142,
		-0.701826, -0.709194, -0.066963,
		28.933399, 41.331688, 18.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785603, 42.060280, 18.808558>,  <29.424677, 41.828121, 18.493101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785603, 42.060280, 18.808558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781269, 41.661152, 18.834600>,  <28.778669, 41.421677, 18.850225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781269, 41.661152, 18.834600>,  <28.785603, 42.060280, 18.808558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781269, 41.661152, 18.834600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081322, 0.064016, 0.994630,
		-0.996629, 0.016069, 0.080451,
		-0.010833, -0.997820, 0.065107,
		28.778019, 41.361805, 18.854132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507128, 41.980312, 19.463560>,  <28.785603, 42.060280, 18.808558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507128, 41.980312, 19.463560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606565, 41.602116, 19.379429>,  <28.666229, 41.375198, 19.328951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606565, 41.602116, 19.379429>,  <28.507128, 41.980312, 19.463560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606565, 41.602116, 19.379429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156215, -0.175164, 0.972067,
		-0.955927, -0.274508, 0.104155,
		0.248596, -0.945496, -0.210326,
		28.681145, 41.318466, 19.316332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097034, 41.572090, 19.945295>,  <28.507128, 41.980312, 19.463560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097034, 41.572090, 19.945295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412338, 41.356121, 19.827225>,  <28.601521, 41.226540, 19.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412338, 41.356121, 19.827225>,  <28.097034, 41.572090, 19.945295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412338, 41.356121, 19.827225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167970, -0.272676, 0.947330,
		-0.591974, -0.796323, -0.124248,
		0.788260, -0.539924, -0.295175,
		28.648817, 41.194145, 19.738672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044430, 40.846329, 20.226377>,  <28.097034, 41.572090, 19.945295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044430, 40.846329, 20.226377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437021, 40.900059, 20.171741>,  <28.672577, 40.932297, 20.138960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437021, 40.900059, 20.171741>,  <28.044430, 40.846329, 20.226377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437021, 40.900059, 20.171741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163474, -0.215520, 0.962719,
		0.099879, -0.967217, -0.233487,
		0.981479, 0.134325, -0.136588,
		28.731464, 40.940357, 20.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341417, 40.184582, 20.508802>,  <28.044430, 40.846329, 20.226377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341417, 40.184582, 20.508802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622063, 40.468922, 20.489050>,  <28.790449, 40.639526, 20.477200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622063, 40.468922, 20.489050>,  <28.341417, 40.184582, 20.508802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622063, 40.468922, 20.489050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321037, -0.253478, 0.912515,
		0.636141, -0.656084, -0.406052,
		0.701612, 0.710846, -0.049380,
		28.832546, 40.682175, 20.474236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955879, 39.809395, 20.817596>,  <28.341417, 40.184582, 20.508802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955879, 39.809395, 20.817596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024967, 40.203167, 20.830666>,  <29.066420, 40.439430, 20.838507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024967, 40.203167, 20.830666>,  <28.955879, 39.809395, 20.817596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024967, 40.203167, 20.830666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292186, -0.082886, 0.952763,
		0.940635, -0.155017, -0.301952,
		0.172722, 0.984429, 0.032672,
		29.076784, 40.498497, 20.840467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615896, 39.918411, 21.037645>,  <28.955879, 39.809395, 20.817596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615896, 39.918411, 21.037645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413267, 40.248158, 21.138680>,  <29.291689, 40.446007, 21.199301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413267, 40.248158, 21.138680>,  <29.615896, 39.918411, 21.037645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413267, 40.248158, 21.138680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210064, -0.166123, 0.963471,
		0.836216, 0.541128, -0.089017,
		-0.506573, 0.824369, 0.252586,
		29.261295, 40.495468, 21.214455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980066, 40.116768, 21.537369>,  <29.615896, 39.918411, 21.037645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980066, 40.116768, 21.537369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638597, 40.315285, 21.600536>,  <29.433716, 40.434395, 21.638437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638597, 40.315285, 21.600536>,  <29.980066, 40.116768, 21.537369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638597, 40.315285, 21.600536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130810, -0.089179, 0.987388,
		0.504114, 0.863565, 0.011210,
		-0.853673, 0.496290, 0.157919,
		29.382496, 40.464172, 21.647913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189711, 40.612171, 22.017395>,  <29.980066, 40.116768, 21.537369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189711, 40.612171, 22.017395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793653, 40.562588, 22.043482>,  <29.556019, 40.532837, 22.059134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793653, 40.562588, 22.043482>,  <30.189711, 40.612171, 22.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793653, 40.562588, 22.043482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077663, -0.098391, 0.992113,
		-0.116565, 0.987397, 0.107048,
		-0.990142, -0.123959, 0.065215,
		29.496611, 40.525398, 22.063046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020571, 40.966949, 22.571064>,  <30.189711, 40.612171, 22.017395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020571, 40.966949, 22.571064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705317, 40.725628, 22.522293>,  <29.516163, 40.580833, 22.493031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705317, 40.725628, 22.522293>,  <30.020571, 40.966949, 22.571064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705317, 40.725628, 22.522293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026707, -0.164387, 0.986034,
		-0.614920, 0.780386, 0.113447,
		-0.788137, -0.603303, -0.121927,
		29.468876, 40.544636, 22.485716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576576, 41.227173, 23.024675>,  <30.020571, 40.966949, 22.571064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576576, 41.227173, 23.024675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462543, 40.851940, 22.945957>,  <29.394123, 40.626801, 22.898726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462543, 40.851940, 22.945957>,  <29.576576, 41.227173, 23.024675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462543, 40.851940, 22.945957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004147, -0.206521, 0.978433,
		-0.958494, 0.278118, 0.062766,
		-0.285083, -0.938083, -0.196796,
		29.377018, 40.570515, 22.886919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303200, 41.087467, 23.703703>,  <29.576576, 41.227173, 23.024675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303200, 41.087467, 23.703703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308878, 40.729973, 23.524357>,  <29.312284, 40.515476, 23.416748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308878, 40.729973, 23.524357>,  <29.303200, 41.087467, 23.703703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308878, 40.729973, 23.524357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292790, -0.432472, 0.852785,
		-0.956071, 0.119171, -0.267817,
		0.014196, -0.893737, -0.448366,
		29.313137, 40.461853, 23.389847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661379, 40.694622, 23.827850>,  <29.303200, 41.087467, 23.703703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661379, 40.694622, 23.827850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952675, 40.428673, 23.761381>,  <29.127453, 40.269104, 23.721500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952675, 40.428673, 23.761381>,  <28.661379, 40.694622, 23.827850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952675, 40.428673, 23.761381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231204, -0.466605, 0.853712,
		-0.645147, -0.583286, -0.493521,
		0.728238, -0.664874, -0.166171,
		29.171146, 40.229210, 23.711531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350945, 40.060478, 23.996157>,  <28.661379, 40.694622, 23.827850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350945, 40.060478, 23.996157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746029, 40.006599, 24.027870>,  <28.983080, 39.974274, 24.046898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746029, 40.006599, 24.027870>,  <28.350945, 40.060478, 23.996157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746029, 40.006599, 24.027870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129736, -0.423645, 0.896490,
		-0.087167, -0.895758, -0.435913,
		0.987710, -0.134698, 0.079284,
		29.042341, 39.966190, 24.051655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404106, 39.328133, 24.084995>,  <28.350945, 40.060478, 23.996157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404106, 39.328133, 24.084995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750462, 39.489075, 24.203892>,  <28.958275, 39.585640, 24.275229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750462, 39.489075, 24.203892>,  <28.404106, 39.328133, 24.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750462, 39.489075, 24.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001638, -0.596473, 0.802632,
		0.500236, -0.694502, -0.517137,
		0.865887, 0.402353, 0.297240,
		29.010227, 39.609779, 24.293064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814989, 38.748199, 24.309450>,  <28.404106, 39.328133, 24.084995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814989, 38.748199, 24.309450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947889, 39.086037, 24.477390>,  <29.027630, 39.288738, 24.578154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947889, 39.086037, 24.477390>,  <28.814989, 38.748199, 24.309450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947889, 39.086037, 24.477390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001776, -0.445696, 0.895183,
		0.943190, -0.296678, -0.149582,
		0.332249, 0.844593, 0.419849,
		29.047564, 39.339417, 24.603346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335793, 38.498371, 24.771858>,  <28.814989, 38.748199, 24.309450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335793, 38.498371, 24.771858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263826, 38.868404, 24.905632>,  <29.220646, 39.090424, 24.985897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263826, 38.868404, 24.905632>,  <29.335793, 38.498371, 24.771858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263826, 38.868404, 24.905632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239969, -0.288436, 0.926941,
		0.953963, 0.247026, -0.170097,
		-0.179916, 0.925085, 0.334436,
		29.209852, 39.145931, 25.005962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785421, 38.575668, 25.387772>,  <29.335793, 38.498371, 24.771858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785421, 38.575668, 25.387772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529047, 38.879421, 25.432556>,  <29.375223, 39.061672, 25.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529047, 38.879421, 25.432556>,  <29.785421, 38.575668, 25.387772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529047, 38.879421, 25.432556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153021, -0.016524, 0.988085,
		0.752188, 0.650430, -0.105611,
		-0.640935, 0.759386, 0.111959,
		29.336767, 39.107239, 25.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177456, 39.138325, 25.638262>,  <29.785421, 38.575668, 25.387772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177456, 39.138325, 25.638262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800131, 39.203316, 25.754032>,  <29.573736, 39.242310, 25.823494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800131, 39.203316, 25.754032>,  <30.177456, 39.138325, 25.638262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800131, 39.203316, 25.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300495, 0.047750, 0.952587,
		0.140950, 0.985557, -0.093866,
		-0.943311, 0.162473, 0.289424,
		29.517138, 39.252056, 25.840858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077528, 39.724186, 26.078255>,  <30.177456, 39.138325, 25.638262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077528, 39.724186, 26.078255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743338, 39.526596, 26.174561>,  <29.542824, 39.408043, 26.232344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743338, 39.526596, 26.174561>,  <30.077528, 39.724186, 26.078255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743338, 39.526596, 26.174561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279214, -0.004232, 0.960219,
		-0.473309, 0.869464, 0.141461,
		-0.835475, -0.493979, 0.240764,
		29.492695, 39.378403, 26.246790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771408, 40.041573, 26.754482>,  <30.077528, 39.724186, 26.078255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771408, 40.041573, 26.754482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565248, 39.698811, 26.758091>,  <29.441553, 39.493153, 26.760256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565248, 39.698811, 26.758091>,  <29.771408, 40.041573, 26.754482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565248, 39.698811, 26.758091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137959, -0.072576, 0.987775,
		-0.845774, 0.510341, 0.155623,
		-0.515397, -0.856904, 0.009023,
		29.410629, 39.441738, 26.760798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314482, 40.143433, 27.256159>,  <29.771408, 40.041573, 26.754482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314482, 40.143433, 27.256159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313887, 39.744396, 27.228441>,  <29.313530, 39.504974, 27.211811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313887, 39.744396, 27.228441>,  <29.314482, 40.143433, 27.256159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313887, 39.744396, 27.228441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000183, -0.069292, 0.997596,
		-0.999999, 0.001471, 0.000285,
		-0.001487, -0.997595, -0.069292,
		29.313440, 39.445118, 27.207653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800991, 39.878021, 27.713873>,  <29.314482, 40.143433, 27.256159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800991, 39.878021, 27.713873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026779, 39.555454, 27.643379>,  <29.162252, 39.361912, 27.601084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026779, 39.555454, 27.643379>,  <28.800991, 39.878021, 27.713873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026779, 39.555454, 27.643379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017342, -0.225037, 0.974196,
		-0.825270, -0.546849, -0.141012,
		0.564471, -0.806421, -0.176233,
		29.196121, 39.313530, 27.590509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468906, 39.190891, 27.952286>,  <28.800991, 39.878021, 27.713873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468906, 39.190891, 27.952286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867918, 39.164066, 27.960632>,  <29.107325, 39.147972, 27.965639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867918, 39.164066, 27.960632>,  <28.468906, 39.190891, 27.952286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867918, 39.164066, 27.960632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039266, -0.286196, 0.957366,
		-0.058236, -0.955821, -0.288122,
		0.997530, -0.067067, 0.020865,
		29.167177, 39.143948, 27.966892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608526, 38.662025, 28.302866>,  <28.468906, 39.190891, 27.952286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608526, 38.662025, 28.302866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981955, 38.805271, 28.297209>,  <29.206011, 38.891220, 28.293814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981955, 38.805271, 28.297209>,  <28.608526, 38.662025, 28.302866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981955, 38.805271, 28.297209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166673, -0.398884, 0.901727,
		0.317282, -0.844183, -0.432074,
		0.933570, 0.358116, -0.014144,
		29.262026, 38.912704, 28.292965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033134, 38.032200, 28.482464>,  <28.608526, 38.662025, 28.302866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033134, 38.032200, 28.482464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247683, 38.359745, 28.564211>,  <29.376411, 38.556274, 28.613258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247683, 38.359745, 28.564211>,  <29.033134, 38.032200, 28.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247683, 38.359745, 28.564211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146779, -0.328961, 0.932867,
		0.831122, -0.470364, -0.296637,
		0.536370, 0.818866, 0.204367,
		29.408594, 38.605404, 28.625521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591362, 37.755680, 28.852203>,  <29.033134, 38.032200, 28.482464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591362, 37.755680, 28.852203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620142, 38.149292, 28.917334>,  <29.637411, 38.385460, 28.956411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620142, 38.149292, 28.917334>,  <29.591362, 37.755680, 28.852203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620142, 38.149292, 28.917334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284083, -0.176704, 0.942376,
		0.956096, -0.021549, -0.292259,
		0.071951, 0.984028, 0.162825,
		29.641727, 38.444500, 28.966181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239611, 37.913555, 29.157501>,  <29.591362, 37.755680, 28.852203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239611, 37.913555, 29.157501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008984, 38.221756, 29.266233>,  <29.870607, 38.406677, 29.331472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008984, 38.221756, 29.266233>,  <30.239611, 37.913555, 29.157501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008984, 38.221756, 29.266233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315758, -0.096720, 0.943897,
		0.753570, 0.630052, -0.187528,
		-0.576566, 0.770506, 0.271830,
		29.836014, 38.452908, 29.347782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709810, 38.496754, 29.431396>,  <30.239611, 37.913555, 29.157501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709810, 38.496754, 29.431396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336754, 38.541553, 29.568588>,  <30.112919, 38.568432, 29.650904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336754, 38.541553, 29.568588>,  <30.709810, 38.496754, 29.431396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336754, 38.541553, 29.568588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329784, -0.120985, 0.936272,
		0.146357, 0.986316, 0.075900,
		-0.932643, 0.111999, 0.342978,
		30.056961, 38.575153, 29.671482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744637, 39.068851, 29.976315>,  <30.709810, 38.496754, 29.431396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744637, 39.068851, 29.976315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406048, 38.865662, 30.040133>,  <30.202894, 38.743748, 30.078423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406048, 38.865662, 30.040133>,  <30.744637, 39.068851, 29.976315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406048, 38.865662, 30.040133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229663, -0.078000, 0.970140,
		-0.480358, 0.857835, 0.182686,
		-0.846470, -0.507971, 0.159545,
		30.152107, 38.713272, 30.087996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183073, 39.202251, 29.373863>,  <30.744637, 39.068851, 29.976315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183073, 39.202251, 29.373863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538326, 39.295364, 29.532372>,  <31.751478, 39.351231, 29.627476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538326, 39.295364, 29.532372>,  <31.183073, 39.202251, 29.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538326, 39.295364, 29.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240754, 0.498814, -0.832600,
		-0.391477, 0.834864, 0.386971,
		0.888135, 0.232779, 0.396271,
		31.804768, 39.365196, 29.651253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259962, 39.850872, 29.407177>,  <31.183073, 39.202251, 29.373863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259962, 39.850872, 29.407177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643900, 39.738819, 29.401165>,  <31.874262, 39.671585, 29.397558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643900, 39.738819, 29.401165>,  <31.259962, 39.850872, 29.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643900, 39.738819, 29.401165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142959, 0.534517, -0.832979,
		0.241382, 0.797380, 0.553100,
		0.959843, -0.280137, -0.015030,
		31.931852, 39.654778, 29.396656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631145, 40.476505, 29.284002>,  <31.259962, 39.850872, 29.407177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631145, 40.476505, 29.284002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885208, 40.179573, 29.198654>,  <32.037643, 40.001415, 29.147446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885208, 40.179573, 29.198654>,  <31.631145, 40.476505, 29.284002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885208, 40.179573, 29.198654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256472, 0.463271, -0.848294,
		0.728561, 0.484074, 0.484635,
		0.635154, -0.742329, -0.213370,
		32.075756, 39.956875, 29.134644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177761, 40.804775, 29.112373>,  <31.631145, 40.476505, 29.284002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177761, 40.804775, 29.112373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233219, 40.432255, 28.977636>,  <32.266495, 40.208744, 28.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233219, 40.432255, 28.977636>,  <32.177761, 40.804775, 29.112373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233219, 40.432255, 28.977636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109302, 0.352440, -0.929429,
		0.984292, 0.092043, 0.150656,
		0.138644, -0.931297, -0.336844,
		32.274811, 40.152866, 28.876583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776817, 40.844074, 28.646696>,  <32.177761, 40.804775, 29.112373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776817, 40.844074, 28.646696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580948, 40.510864, 28.543715>,  <32.463425, 40.310936, 28.481926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580948, 40.510864, 28.543715>,  <32.776817, 40.844074, 28.646696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580948, 40.510864, 28.543715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025032, 0.281724, -0.959169,
		0.871545, -0.476127, -0.117101,
		-0.489676, -0.833027, -0.257454,
		32.434044, 40.260956, 28.466478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153500, 40.532269, 28.150904>,  <32.776817, 40.844074, 28.646696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153500, 40.532269, 28.150904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784000, 40.392910, 28.087265>,  <32.562302, 40.309296, 28.049082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784000, 40.392910, 28.087265>,  <33.153500, 40.532269, 28.150904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784000, 40.392910, 28.087265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106078, 0.166417, -0.980333,
		0.368018, -0.922457, -0.116771,
		-0.923748, -0.348393, -0.159097,
		32.506874, 40.288391, 28.039536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195179, 40.053955, 27.607594>,  <33.153500, 40.532269, 28.150904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195179, 40.053955, 27.607594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816792, 40.183582, 27.612103>,  <32.589760, 40.261360, 27.614807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816792, 40.183582, 27.612103>,  <33.195179, 40.053955, 27.607594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816792, 40.183582, 27.612103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018328, 0.088138, -0.995940,
		-0.323748, -0.941918, -0.089315,
		-0.945966, 0.324071, 0.011271,
		32.533001, 40.280804, 27.615484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900532, 39.732265, 26.965391>,  <33.195179, 40.053955, 27.607594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900532, 39.732265, 26.965391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644913, 40.011436, 27.094709>,  <32.491543, 40.178940, 27.172300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644913, 40.011436, 27.094709>,  <32.900532, 39.732265, 26.965391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644913, 40.011436, 27.094709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153577, 0.296080, -0.942736,
		-0.753682, -0.652100, -0.082023,
		-0.639044, 0.697927, 0.323298,
		32.453201, 40.220814, 27.191698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239864, 39.627609, 26.563507>,  <32.900532, 39.732265, 26.965391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239864, 39.627609, 26.563507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270115, 40.001141, 26.703362>,  <32.288265, 40.225258, 26.787273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270115, 40.001141, 26.703362>,  <32.239864, 39.627609, 26.563507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270115, 40.001141, 26.703362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138311, 0.357076, -0.923779,
		-0.987497, 0.021504, 0.156164,
		0.075628, 0.933828, 0.349637,
		32.292805, 40.281288, 26.808252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876167, 39.912498, 26.029070>,  <32.239864, 39.627609, 26.563507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876167, 39.912498, 26.029070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039974, 40.229893, 26.209152>,  <32.138256, 40.420330, 26.317202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039974, 40.229893, 26.209152>,  <31.876167, 39.912498, 26.029070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039974, 40.229893, 26.209152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210124, 0.562249, -0.799827,
		-0.887776, 0.232943, 0.396979,
		0.409515, 0.793482, 0.450204,
		32.162830, 40.467937, 26.344213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462986, 40.498055, 25.824055>,  <31.876167, 39.912498, 26.029070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462986, 40.498055, 25.824055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819616, 40.645245, 25.929649>,  <32.033596, 40.733559, 25.993006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819616, 40.645245, 25.929649>,  <31.462986, 40.498055, 25.824055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819616, 40.645245, 25.929649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060030, 0.481746, -0.874252,
		-0.448876, 0.795309, 0.407423,
		0.891575, 0.367973, 0.263987,
		32.087090, 40.755638, 26.008846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404047, 41.251263, 25.992313>,  <31.462986, 40.498055, 25.824055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404047, 41.251263, 25.992313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767838, 41.136265, 25.872181>,  <31.986113, 41.067265, 25.800102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767838, 41.136265, 25.872181>,  <31.404047, 41.251263, 25.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767838, 41.136265, 25.872181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101517, 0.546943, -0.830992,
		0.403170, 0.786257, 0.468246,
		0.909477, -0.287496, -0.300329,
		32.040680, 41.050014, 25.782082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650499, 41.884335, 25.860720>,  <31.404047, 41.251263, 25.992313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650499, 41.884335, 25.860720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881443, 41.612072, 25.680334>,  <32.020008, 41.448715, 25.572104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881443, 41.612072, 25.680334>,  <31.650499, 41.884335, 25.860720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881443, 41.612072, 25.680334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108605, 0.611431, -0.783810,
		0.809234, 0.403564, 0.426938,
		0.577361, -0.680653, -0.450962,
		32.054649, 41.407875, 25.545046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117588, 42.283085, 25.437380>,  <31.650499, 41.884335, 25.860720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117588, 42.283085, 25.437380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095989, 41.922340, 25.265923>,  <32.083031, 41.705894, 25.163048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095989, 41.922340, 25.265923>,  <32.117588, 42.283085, 25.437380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095989, 41.922340, 25.265923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154217, 0.431650, -0.888761,
		0.986560, 0.018113, -0.162390,
		-0.053997, -0.901859, -0.428643,
		32.079788, 41.651783, 25.137329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464191, 42.409260, 24.841337>,  <32.117588, 42.283085, 25.437380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464191, 42.409260, 24.841337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269230, 42.067852, 24.767635>,  <32.152252, 41.863007, 24.723413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269230, 42.067852, 24.767635>,  <32.464191, 42.409260, 24.841337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269230, 42.067852, 24.767635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192734, 0.310972, -0.930672,
		0.851642, -0.418098, -0.316070,
		-0.487401, -0.853516, -0.184255,
		32.123009, 41.811798, 24.712358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700321, 42.217110, 24.247025>,  <32.464191, 42.409260, 24.841337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700321, 42.217110, 24.247025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373230, 41.986885, 24.249695>,  <32.176975, 41.848751, 24.251297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373230, 41.986885, 24.249695>,  <32.700321, 42.217110, 24.247025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373230, 41.986885, 24.249695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216731, 0.297128, -0.929915,
		0.533244, -0.761865, -0.367713,
		-0.817728, -0.575566, 0.006678,
		32.127911, 41.814217, 24.251698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831272, 41.762009, 23.749704>,  <32.700321, 42.217110, 24.247025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831272, 41.762009, 23.749704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434406, 41.790035, 23.791088>,  <32.196285, 41.806850, 23.815918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434406, 41.790035, 23.791088>,  <32.831272, 41.762009, 23.749704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434406, 41.790035, 23.791088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095762, 0.105503, -0.989797,
		-0.080263, -0.991948, -0.097967,
		-0.992163, 0.070063, 0.103459,
		32.136757, 41.811054, 23.822126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536617, 41.218323, 23.268120>,  <32.831272, 41.762009, 23.749704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536617, 41.218323, 23.268120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248337, 41.488415, 23.330936>,  <32.075367, 41.650467, 23.368626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248337, 41.488415, 23.330936>,  <32.536617, 41.218323, 23.268120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248337, 41.488415, 23.330936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151209, 0.067963, -0.986163,
		-0.676555, -0.734474, 0.053120,
		-0.720700, 0.675225, 0.157040,
		32.032127, 41.690983, 23.378048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058189, 40.944603, 22.894255>,  <32.536617, 41.218323, 23.268120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058189, 40.944603, 22.894255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932161, 41.320057, 22.950382>,  <31.856544, 41.545330, 22.984058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932161, 41.320057, 22.950382>,  <32.058189, 40.944603, 22.894255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932161, 41.320057, 22.950382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384740, 0.008834, -0.922983,
		-0.867586, -0.344790, 0.358349,
		-0.315070, 0.938638, 0.140319,
		31.837641, 41.601650, 22.992477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335192, 40.989391, 22.648794>,  <32.058189, 40.944603, 22.894255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335192, 40.989391, 22.648794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481529, 41.361568, 22.657103>,  <31.569332, 41.584877, 22.662088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481529, 41.361568, 22.657103>,  <31.335192, 40.989391, 22.648794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481529, 41.361568, 22.657103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361250, 0.162538, -0.918194,
		-0.857704, 0.328412, 0.395587,
		0.365844, 0.930444, 0.020770,
		31.591282, 41.640701, 22.663334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825928, 41.493565, 22.401899>,  <31.335192, 40.989391, 22.648794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825928, 41.493565, 22.401899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171885, 41.676464, 22.319059>,  <31.379457, 41.786205, 22.269356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171885, 41.676464, 22.319059>,  <30.825928, 41.493565, 22.401899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171885, 41.676464, 22.319059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348833, 0.250833, -0.902994,
		-0.360945, 0.853234, 0.376445,
		0.864890, 0.457247, -0.207099,
		31.431351, 41.813637, 22.256929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663994, 41.985260, 21.911690>,  <30.825928, 41.493565, 22.401899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663994, 41.985260, 21.911690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062653, 41.969894, 21.882784>,  <31.301847, 41.960674, 21.865440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062653, 41.969894, 21.882784>,  <30.663994, 41.985260, 21.911690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062653, 41.969894, 21.882784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056732, 0.312140, -0.948341,
		0.058987, 0.949259, 0.308913,
		0.996645, -0.038414, -0.072266,
		31.361647, 41.958370, 21.861105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809654, 42.611412, 21.717279>,  <30.663994, 41.985260, 21.911690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809654, 42.611412, 21.717279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092558, 42.357941, 21.591913>,  <31.262300, 42.205856, 21.516693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092558, 42.357941, 21.591913>,  <30.809654, 42.611412, 21.717279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092558, 42.357941, 21.591913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051644, 0.395840, -0.916866,
		0.705064, 0.664649, 0.247236,
		0.707260, -0.633682, -0.313417,
		31.304735, 42.167835, 21.497889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205812, 42.946335, 21.128326>,  <30.809654, 42.611412, 21.717279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205812, 42.946335, 21.128326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313128, 42.562557, 21.093712>,  <31.377518, 42.332291, 21.072943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313128, 42.562557, 21.093712>,  <31.205812, 42.946335, 21.128326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313128, 42.562557, 21.093712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009387, 0.092427, -0.995675,
		0.963293, 0.266316, 0.033803,
		0.268288, -0.959444, -0.086534,
		31.393614, 42.274723, 21.067751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754087, 42.914207, 20.648071>,  <31.205812, 42.946335, 21.128326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754087, 42.914207, 20.648071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580708, 42.553741, 20.646479>,  <31.476679, 42.337460, 20.645523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580708, 42.553741, 20.646479>,  <31.754087, 42.914207, 20.648071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580708, 42.553741, 20.646479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018270, -0.004371, -0.999824,
		0.900992, -0.433448, 0.018359,
		-0.433452, -0.901168, -0.003980,
		31.450672, 42.283390, 20.645285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168831, 42.456718, 20.256746>,  <31.754087, 42.914207, 20.648071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168831, 42.456718, 20.256746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812857, 42.274288, 20.256128>,  <31.599272, 42.164829, 20.255756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812857, 42.274288, 20.256128>,  <32.168831, 42.456718, 20.256746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812857, 42.274288, 20.256128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081281, -0.155265, -0.984523,
		0.448782, -0.876290, 0.175246,
		-0.889938, -0.456081, -0.001546,
		31.545876, 42.137463, 20.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260647, 42.025524, 19.773901>,  <32.168831, 42.456718, 20.256746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260647, 42.025524, 19.773901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864960, 41.979305, 19.809902>,  <31.627548, 41.951572, 19.831503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864960, 41.979305, 19.809902>,  <32.260647, 42.025524, 19.773901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864960, 41.979305, 19.809902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052466, -0.294155, -0.954317,
		0.136743, -0.948748, 0.284920,
		-0.989216, -0.115547, 0.090001,
		31.568195, 41.944641, 19.836903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073387, 41.363903, 19.486416>,  <32.260647, 42.025524, 19.773901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073387, 41.363903, 19.486416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748423, 41.596474, 19.468845>,  <31.553444, 41.736015, 19.458303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748423, 41.596474, 19.468845>,  <32.073387, 41.363903, 19.486416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748423, 41.596474, 19.468845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093219, -0.203883, -0.974547,
		-0.575580, -0.787642, 0.219838,
		-0.812415, 0.581423, -0.043928,
		31.504698, 41.770901, 19.455667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832834, 41.112293, 18.822922>,  <32.073387, 41.363903, 19.486416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832834, 41.112293, 18.822922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612757, 41.437054, 18.900999>,  <31.480711, 41.631908, 18.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612757, 41.437054, 18.900999>,  <31.832834, 41.112293, 18.822922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612757, 41.437054, 18.900999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132001, 0.146251, -0.980401,
		-0.824538, -0.565177, 0.026705,
		-0.550194, 0.811903, 0.195193,
		31.447699, 41.680626, 18.959557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177656, 41.031582, 18.458677>,  <31.832834, 41.112293, 18.822922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177656, 41.031582, 18.458677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243439, 41.420643, 18.524294>,  <31.282907, 41.654079, 18.563663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243439, 41.420643, 18.524294>,  <31.177656, 41.031582, 18.458677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243439, 41.420643, 18.524294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164355, 0.191001, -0.967732,
		-0.972595, 0.132189, 0.191271,
		0.164457, 0.972648, 0.164041,
		31.292776, 41.712437, 18.573505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586018, 41.363014, 18.081522>,  <31.177656, 41.031582, 18.458677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586018, 41.363014, 18.081522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839291, 41.663055, 18.157858>,  <30.991255, 41.843082, 18.203659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839291, 41.663055, 18.157858>,  <30.586018, 41.363014, 18.081522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839291, 41.663055, 18.157858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072307, 0.302810, -0.950304,
		-0.770616, 0.587918, 0.245973,
		0.633184, 0.750105, 0.190840,
		31.029245, 41.888088, 18.215109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271156, 41.889076, 17.803146>,  <30.586018, 41.363014, 18.081522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271156, 41.889076, 17.803146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649055, 42.008266, 17.857788>,  <30.875795, 42.079781, 17.890574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649055, 42.008266, 17.857788>,  <30.271156, 41.889076, 17.803146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649055, 42.008266, 17.857788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038056, 0.314221, -0.948587,
		-0.325576, 0.901376, 0.285520,
		0.944750, 0.297972, 0.136605,
		30.932480, 42.097656, 17.898769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282743, 42.591309, 17.631256>,  <30.271156, 41.889076, 17.803146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282743, 42.591309, 17.631256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656672, 42.456612, 17.586155>,  <30.881029, 42.375793, 17.559093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656672, 42.456612, 17.586155>,  <30.282743, 42.591309, 17.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656672, 42.456612, 17.586155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002319, 0.311711, -0.950174,
		0.355113, 0.888504, 0.290613,
		0.934820, -0.336745, -0.112753,
		30.937119, 42.355587, 17.552330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712156, 43.162281, 17.313448>,  <30.282743, 42.591309, 17.631256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712156, 43.162281, 17.313448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901243, 42.818287, 17.236546>,  <31.014694, 42.611889, 17.190403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901243, 42.818287, 17.236546>,  <30.712156, 43.162281, 17.313448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901243, 42.818287, 17.236546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013946, 0.210844, -0.977420,
		0.881104, 0.464724, 0.087676,
		0.472716, -0.859986, -0.192257,
		31.043058, 42.560291, 17.178869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104273, 43.392101, 16.707138>,  <30.712156, 43.162281, 17.313448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104273, 43.392101, 16.707138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115562, 42.992279, 16.703362>,  <31.122335, 42.752384, 16.701096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115562, 42.992279, 16.703362>,  <31.104273, 43.392101, 16.707138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115562, 42.992279, 16.703362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029836, 0.010281, -0.999502,
		0.999156, 0.027926, 0.030113,
		0.028222, -0.999557, -0.009439,
		31.124029, 42.692413, 16.700529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719982, 43.208645, 16.270308>,  <31.104273, 43.392101, 16.707138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719982, 43.208645, 16.270308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440763, 42.922962, 16.290819>,  <31.273232, 42.751553, 16.303127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440763, 42.922962, 16.290819>,  <31.719982, 43.208645, 16.270308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440763, 42.922962, 16.290819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063253, -0.132840, -0.989117,
		0.713251, -0.687209, 0.137905,
		-0.698049, -0.714212, 0.051280,
		31.231348, 42.708698, 16.306204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006165, 42.611374, 15.933686>,  <31.719982, 43.208645, 16.270308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006165, 42.611374, 15.933686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607401, 42.580242, 15.929482>,  <31.368143, 42.561562, 15.926958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607401, 42.580242, 15.929482>,  <32.006165, 42.611374, 15.933686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607401, 42.580242, 15.929482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024799, -0.184941, -0.982437,
		0.074523, -0.979663, 0.186300,
		-0.996911, -0.077834, -0.010513,
		31.308327, 42.556892, 15.926328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839722, 42.181068, 15.319542>,  <32.006165, 42.611374, 15.933686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839722, 42.181068, 15.319542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464853, 42.285427, 15.412187>,  <31.239933, 42.348042, 15.467773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464853, 42.285427, 15.412187>,  <31.839722, 42.181068, 15.319542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464853, 42.285427, 15.412187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308031, -0.307101, -0.900447,
		-0.163799, -0.915216, 0.368171,
		-0.937169, 0.260901, 0.231612,
		31.183702, 42.363697, 15.481670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385662, 41.857876, 14.839116>,  <31.839722, 42.181068, 15.319542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385662, 41.857876, 14.839116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751541, 41.766251, 14.705930>,  <32.971069, 41.711277, 14.626018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751541, 41.766251, 14.705930>,  <32.385662, 41.857876, 14.839116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751541, 41.766251, 14.705930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303521, -0.154645, 0.940192,
		-0.266853, -0.961049, -0.071928,
		0.914694, -0.229062, -0.332966,
		33.025948, 41.697533, 14.606040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669498, 41.170868, 15.182879>,  <32.385662, 41.857876, 14.839116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669498, 41.170868, 15.182879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995598, 41.372169, 15.068266>,  <33.191257, 41.492950, 14.999497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995598, 41.372169, 15.068266>,  <32.669498, 41.170868, 15.182879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995598, 41.372169, 15.068266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436673, -0.209231, 0.874951,
		0.380368, -0.838428, -0.390332,
		0.815253, 0.503251, -0.286534,
		33.240173, 41.523144, 14.982306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267914, 40.752712, 15.206978>,  <32.669498, 41.170868, 15.182879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267914, 40.752712, 15.206978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391491, 41.131638, 15.240790>,  <33.465637, 41.358994, 15.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391491, 41.131638, 15.240790>,  <33.267914, 40.752712, 15.206978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391491, 41.131638, 15.240790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439626, -0.221055, 0.870553,
		0.843376, -0.231788, -0.484759,
		0.308943, 0.947317, 0.084533,
		33.484173, 41.415833, 15.266150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909988, 40.655674, 15.481247>,  <33.267914, 40.752712, 15.206978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909988, 40.655674, 15.481247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839848, 41.047752, 15.518060>,  <33.797764, 41.282997, 15.540148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839848, 41.047752, 15.518060>,  <33.909988, 40.655674, 15.481247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839848, 41.047752, 15.518060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464156, -0.000128, 0.885754,
		0.868223, 0.198038, -0.454940,
		-0.175355, 0.980194, 0.092032,
		33.787243, 41.341812, 15.545670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512856, 40.815628, 15.846141>,  <33.909988, 40.655674, 15.481247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512856, 40.815628, 15.846141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258759, 41.121876, 15.886725>,  <34.106300, 41.305622, 15.911076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258759, 41.121876, 15.886725>,  <34.512856, 40.815628, 15.846141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258759, 41.121876, 15.886725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283590, 0.109044, 0.952726,
		0.718359, 0.633988, -0.286391,
		-0.635246, 0.765616, 0.101461,
		34.068184, 41.351562, 15.917164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930149, 41.420280, 16.010508>,  <34.512856, 40.815628, 15.846141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930149, 41.420280, 16.010508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559860, 41.492664, 16.143349>,  <34.337688, 41.536095, 16.223053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559860, 41.492664, 16.143349>,  <34.930149, 41.420280, 16.010508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559860, 41.492664, 16.143349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328650, -0.049634, 0.943147,
		0.187155, 0.982237, -0.013525,
		-0.925723, 0.180960, 0.332101,
		34.282143, 41.546951, 16.242979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028271, 41.530598, 16.747801>,  <34.930149, 41.420280, 16.010508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028271, 41.530598, 16.747801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631481, 41.480034, 16.747429>,  <34.393406, 41.449696, 16.747206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631481, 41.480034, 16.747429>,  <35.028271, 41.530598, 16.747801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631481, 41.480034, 16.747429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011859, -0.100365, 0.994880,
		-0.125857, 0.986888, 0.101059,
		-0.991978, -0.126411, -0.000929,
		34.333889, 41.442112, 16.747150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711357, 42.053078, 17.269060>,  <35.028271, 41.530598, 16.747801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711357, 42.053078, 17.269060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471840, 41.738495, 17.208504>,  <34.328129, 41.549744, 17.172169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471840, 41.738495, 17.208504>,  <34.711357, 42.053078, 17.269060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471840, 41.738495, 17.208504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034190, -0.213957, 0.976244,
		-0.800170, 0.579397, 0.155006,
		-0.598797, -0.786461, -0.151393,
		34.292202, 41.502556, 17.163086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259209, 42.231457, 17.785614>,  <34.711357, 42.053078, 17.269060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259209, 42.231457, 17.785614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197319, 41.842148, 17.717726>,  <34.160183, 41.608562, 17.676992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197319, 41.842148, 17.717726>,  <34.259209, 42.231457, 17.785614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197319, 41.842148, 17.717726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264309, -0.124749, 0.956336,
		-0.951945, 0.192829, -0.237942,
		-0.154727, -0.973270, -0.169721,
		34.150902, 41.550167, 17.666809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650871, 42.102230, 18.072763>,  <34.259209, 42.231457, 17.785614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650871, 42.102230, 18.072763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822994, 41.741894, 18.049734>,  <33.926270, 41.525692, 18.035917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822994, 41.741894, 18.049734>,  <33.650871, 42.102230, 18.072763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822994, 41.741894, 18.049734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130928, -0.125391, 0.983430,
		-0.893135, -0.415643, -0.171903,
		0.430311, -0.900843, -0.057572,
		33.952087, 41.471642, 18.032463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370014, 41.838821, 18.641251>,  <33.650871, 42.102230, 18.072763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370014, 41.838821, 18.641251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656017, 41.577545, 18.541561>,  <33.827618, 41.420780, 18.481747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656017, 41.577545, 18.541561>,  <33.370014, 41.838821, 18.641251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656017, 41.577545, 18.541561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027067, -0.382078, 0.923734,
		-0.698596, -0.653728, -0.290867,
		0.715005, -0.653190, -0.249223,
		33.870518, 41.381588, 18.466795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069279, 41.169945, 18.689507>,  <33.370014, 41.838821, 18.641251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069279, 41.169945, 18.689507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466442, 41.154518, 18.734491>,  <33.704739, 41.145264, 18.761482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466442, 41.154518, 18.734491>,  <33.069279, 41.169945, 18.689507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466442, 41.154518, 18.734491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114418, -0.052881, 0.992024,
		-0.032299, -0.997856, -0.056917,
		0.992907, -0.038554, 0.112465,
		33.764313, 41.142948, 18.768230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325607, 40.563133, 19.133190>,  <33.069279, 41.169945, 18.689507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325607, 40.563133, 19.133190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598553, 40.853710, 19.165836>,  <33.762321, 41.028057, 19.185425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598553, 40.853710, 19.165836>,  <33.325607, 40.563133, 19.133190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598553, 40.853710, 19.165836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, -0.085453, 0.995944,
		0.730472, -0.681892, -0.037859,
		0.682362, 0.726444, 0.081618,
		33.803261, 41.071644, 19.190321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984135, 40.226765, 19.486973>,  <33.325607, 40.563133, 19.133190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984135, 40.226765, 19.486973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996967, 40.623650, 19.535126>,  <34.004665, 40.861778, 19.564016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996967, 40.623650, 19.535126>,  <33.984135, 40.226765, 19.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996967, 40.623650, 19.535126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145884, -0.123802, 0.981525,
		0.988781, -0.013928, -0.148719,
		0.032082, 0.992209, 0.120381,
		34.006592, 40.921314, 19.571239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601646, 40.361721, 19.829306>,  <33.984135, 40.226765, 19.486973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601646, 40.361721, 19.829306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365456, 40.677841, 19.894741>,  <34.223740, 40.867512, 19.934002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365456, 40.677841, 19.894741>,  <34.601646, 40.361721, 19.829306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365456, 40.677841, 19.894741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079910, -0.144449, 0.986280,
		0.803089, 0.595448, 0.022141,
		-0.590477, 0.790301, 0.163587,
		34.188313, 40.914932, 19.943817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938900, 40.652302, 20.314594>,  <34.601646, 40.361721, 19.829306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938900, 40.652302, 20.314594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569221, 40.795765, 20.367096>,  <34.347416, 40.881844, 20.398598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569221, 40.795765, 20.367096>,  <34.938900, 40.652302, 20.314594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569221, 40.795765, 20.367096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074097, -0.168761, 0.982868,
		0.374667, 0.918086, 0.129392,
		-0.924194, 0.358661, 0.131256,
		34.291962, 40.903362, 20.406473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858292, 41.173363, 20.913971>,  <34.938900, 40.652302, 20.314594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858292, 41.173363, 20.913971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484192, 41.045994, 20.852106>,  <34.259731, 40.969574, 20.814987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484192, 41.045994, 20.852106>,  <34.858292, 41.173363, 20.913971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484192, 41.045994, 20.852106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204185, 0.128346, 0.970482,
		-0.289175, 0.939220, -0.185052,
		-0.935247, -0.318424, -0.154660,
		34.203617, 40.950466, 20.805708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570469, 41.563110, 21.408892>,  <34.858292, 41.173363, 20.913971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570469, 41.563110, 21.408892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305813, 41.276390, 21.320856>,  <34.147018, 41.104359, 21.268034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305813, 41.276390, 21.320856>,  <34.570469, 41.563110, 21.408892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305813, 41.276390, 21.320856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202505, -0.111796, 0.972879,
		-0.721961, 0.688262, -0.071186,
		-0.661637, -0.716797, -0.220088,
		34.107323, 41.061352, 21.254829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952782, 41.740421, 21.798647>,  <34.570469, 41.563110, 21.408892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952782, 41.740421, 21.798647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929287, 41.352009, 21.705992>,  <33.915188, 41.118961, 21.650398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929287, 41.352009, 21.705992>,  <33.952782, 41.740421, 21.798647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929287, 41.352009, 21.705992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088838, -0.226034, 0.970060,
		-0.994313, 0.077561, -0.072987,
		-0.058741, -0.971027, -0.231639,
		33.911663, 41.060699, 21.636499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404282, 41.575142, 22.190849>,  <33.952782, 41.740421, 21.798647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404282, 41.575142, 22.190849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617252, 41.245480, 22.113615>,  <33.745037, 41.047684, 22.067274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617252, 41.245480, 22.113615>,  <33.404282, 41.575142, 22.190849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617252, 41.245480, 22.113615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107720, -0.292224, 0.950264,
		-0.839591, -0.485151, -0.244367,
		0.532432, -0.824157, -0.193088,
		33.776981, 40.998234, 22.055689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096519, 40.968868, 22.532591>,  <33.404282, 41.575142, 22.190849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096519, 40.968868, 22.532591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464207, 40.831409, 22.455696>,  <33.684818, 40.748936, 22.409559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464207, 40.831409, 22.455696>,  <33.096519, 40.968868, 22.532591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464207, 40.831409, 22.455696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084759, -0.304078, 0.948869,
		-0.384530, -0.888507, -0.250385,
		0.919213, -0.343646, -0.192236,
		33.739971, 40.728317, 22.398026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067501, 40.351738, 22.806917>,  <33.096519, 40.968868, 22.532591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067501, 40.351738, 22.806917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459812, 40.417328, 22.764605>,  <33.695198, 40.456684, 22.739216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459812, 40.417328, 22.764605>,  <33.067501, 40.351738, 22.806917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459812, 40.417328, 22.764605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154770, -0.323502, 0.933484,
		0.118849, -0.931911, -0.342661,
		0.980776, 0.163977, -0.105784,
		33.754044, 40.466522, 22.732870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340721, 39.850826, 23.223030>,  <33.067501, 40.351738, 22.806917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340721, 39.850826, 23.223030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654640, 40.096577, 23.190472>,  <33.842991, 40.244026, 23.170937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654640, 40.096577, 23.190472>,  <33.340721, 39.850826, 23.223030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654640, 40.096577, 23.190472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309194, -0.274325, 0.910574,
		0.537109, -0.739787, -0.405253,
		0.784802, 0.614379, -0.081395,
		33.890079, 40.280891, 23.166054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886356, 39.454605, 23.364986>,  <33.340721, 39.850826, 23.223030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886356, 39.454605, 23.364986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999779, 39.832890, 23.428530>,  <34.067833, 40.059860, 23.466656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999779, 39.832890, 23.428530>,  <33.886356, 39.454605, 23.364986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999779, 39.832890, 23.428530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493186, -0.285886, 0.821606,
		0.822415, -0.154620, -0.547473,
		0.283552, 0.945707, 0.158861,
		34.084843, 40.116600, 23.476189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532352, 39.354507, 23.762045>,  <33.886356, 39.454605, 23.364986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532352, 39.354507, 23.762045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427116, 39.735313, 23.824585>,  <34.363976, 39.963799, 23.862110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427116, 39.735313, 23.824585>,  <34.532352, 39.354507, 23.762045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427116, 39.735313, 23.824585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463970, -0.017241, 0.885683,
		0.845882, 0.305555, -0.437172,
		-0.263087, 0.952018, 0.156352,
		34.348190, 40.020920, 23.871490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155769, 39.812950, 23.956003>,  <34.532352, 39.354507, 23.762045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155769, 39.812950, 23.956003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847988, 40.032528, 24.086599>,  <34.663319, 40.164276, 24.164957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847988, 40.032528, 24.086599>,  <35.155769, 39.812950, 23.956003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847988, 40.032528, 24.086599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472511, 0.145308, 0.869264,
		0.429739, 0.823129, -0.371192,
		-0.769453, 0.548949, 0.326492,
		34.617153, 40.197212, 24.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425697, 40.435619, 24.145859>,  <35.155769, 39.812950, 23.956003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425697, 40.435619, 24.145859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068684, 40.386581, 24.319460>,  <34.854477, 40.357159, 24.423620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068684, 40.386581, 24.319460>,  <35.425697, 40.435619, 24.145859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068684, 40.386581, 24.319460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429655, 0.061315, 0.900909,
		-0.137056, 0.990561, -0.002053,
		-0.892531, -0.122593, 0.434003,
		34.800922, 40.349804, 24.449661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458405, 40.871574, 24.738882>,  <35.425697, 40.435619, 24.145859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458405, 40.871574, 24.738882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134289, 40.652729, 24.822878>,  <34.939819, 40.521423, 24.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134289, 40.652729, 24.822878>,  <35.458405, 40.871574, 24.738882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134289, 40.652729, 24.822878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165406, 0.130239, 0.977588,
		-0.562199, 0.826865, -0.015036,
		-0.810292, -0.547112, 0.209989,
		34.891201, 40.488594, 24.885874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144733, 41.294777, 25.315567>,  <35.458405, 40.871574, 24.738882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144733, 41.294777, 25.315567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013241, 40.917667, 25.337894>,  <34.934345, 40.691402, 25.351292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013241, 40.917667, 25.337894>,  <35.144733, 41.294777, 25.315567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013241, 40.917667, 25.337894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020798, 0.051862, 0.998438,
		-0.944195, 0.329378, 0.002559,
		-0.328731, -0.942773, 0.055819,
		34.914623, 40.634834, 25.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709595, 41.347858, 25.991728>,  <35.144733, 41.294777, 25.315567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709595, 41.347858, 25.991728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803303, 40.969517, 25.901863>,  <34.859528, 40.742512, 25.847944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803303, 40.969517, 25.901863>,  <34.709595, 41.347858, 25.991728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803303, 40.969517, 25.901863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090368, -0.208905, 0.973752,
		-0.967962, -0.248424, 0.036535,
		0.234271, -0.945856, -0.224662,
		34.873585, 40.685760, 25.834465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259182, 41.070023, 26.520887>,  <34.709595, 41.347858, 25.991728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259182, 41.070023, 26.520887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553642, 40.834106, 26.388088>,  <34.730320, 40.692554, 26.308409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553642, 40.834106, 26.388088>,  <34.259182, 41.070023, 26.520887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553642, 40.834106, 26.388088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125264, -0.363325, 0.923203,
		-0.665123, -0.721206, -0.193583,
		0.736153, -0.589794, -0.331997,
		34.774487, 40.657169, 26.288488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220222, 40.523911, 26.962822>,  <34.259182, 41.070023, 26.520887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220222, 40.523911, 26.962822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589657, 40.488632, 26.813576>,  <34.811317, 40.467464, 26.724028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589657, 40.488632, 26.813576>,  <34.220222, 40.523911, 26.962822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589657, 40.488632, 26.813576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323917, -0.341141, 0.882440,
		-0.205112, -0.935865, -0.286505,
		0.923584, -0.088195, -0.373115,
		34.866734, 40.462173, 26.701641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473976, 39.952702, 27.264755>,  <34.220222, 40.523911, 26.962822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473976, 39.952702, 27.264755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805016, 40.128330, 27.124868>,  <35.003639, 40.233707, 27.040936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805016, 40.128330, 27.124868>,  <34.473976, 39.952702, 27.264755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805016, 40.128330, 27.124868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538705, -0.446182, 0.714646,
		0.157742, -0.779832, -0.605788,
		0.827596, 0.439070, -0.349718,
		35.053295, 40.260052, 27.019953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978832, 39.360271, 27.088680>,  <34.473976, 39.952702, 27.264755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978832, 39.360271, 27.088680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181149, 39.700878, 27.143953>,  <35.302540, 39.905243, 27.177116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181149, 39.700878, 27.143953>,  <34.978832, 39.360271, 27.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181149, 39.700878, 27.143953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549020, -0.441298, 0.709812,
		0.665396, -0.283152, -0.690704,
		0.505791, 0.851517, 0.138182,
		35.332886, 39.956333, 27.185408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681938, 39.128063, 27.228394>,  <34.978832, 39.360271, 27.088680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681938, 39.128063, 27.228394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681854, 39.499226, 27.377518>,  <35.681805, 39.721924, 27.466993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681854, 39.499226, 27.377518>,  <35.681938, 39.128063, 27.228394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681854, 39.499226, 27.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349785, -0.349194, 0.869318,
		0.936830, 0.130583, -0.324496,
		-0.000206, 0.927907, 0.372812,
		35.681793, 39.777599, 27.489361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291401, 39.167160, 27.493027>,  <35.681938, 39.128063, 27.228394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291401, 39.167160, 27.493027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108459, 39.462208, 27.691719>,  <35.998695, 39.639236, 27.810934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108459, 39.462208, 27.691719>,  <36.291401, 39.167160, 27.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108459, 39.462208, 27.691719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503838, -0.245344, 0.828223,
		0.732783, 0.629067, -0.259430,
		-0.457358, 0.737618, 0.496732,
		35.971252, 39.683495, 27.840738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737049, 39.446358, 27.860365>,  <36.291401, 39.167160, 27.493027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737049, 39.446358, 27.860365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397652, 39.541996, 28.049210>,  <36.194012, 39.599377, 28.162516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397652, 39.541996, 28.049210>,  <36.737049, 39.446358, 27.860365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397652, 39.541996, 28.049210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486141, -0.000330, 0.873880,
		0.209093, 0.970997, -0.115952,
		-0.848497, 0.239091, 0.472111,
		36.143105, 39.613724, 28.190844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941021, 40.023342, 28.305956>,  <36.737049, 39.446358, 27.860365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941021, 40.023342, 28.305956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614246, 39.833305, 28.436743>,  <36.418182, 39.719284, 28.515215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614246, 39.833305, 28.436743>,  <36.941021, 40.023342, 28.305956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614246, 39.833305, 28.436743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374779, -0.006402, 0.927092,
		-0.438364, 0.879911, 0.183286,
		-0.816932, -0.475095, 0.326965,
		36.369167, 39.690777, 28.534832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799232, 40.440002, 28.886526>,  <36.941021, 40.023342, 28.305956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799232, 40.440002, 28.886526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591232, 40.102352, 28.938759>,  <36.466431, 39.899761, 28.970098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591232, 40.102352, 28.938759>,  <36.799232, 40.440002, 28.886526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591232, 40.102352, 28.938759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489400, -0.169140, 0.855499,
		-0.700061, 0.508768, 0.501068,
		-0.520001, -0.844125, 0.130583,
		36.435230, 39.849113, 28.977934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693497, 40.357491, 29.590267>,  <36.799232, 40.440002, 28.886526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693497, 40.357491, 29.590267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655975, 39.981083, 29.460232>,  <36.633465, 39.755238, 29.382210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655975, 39.981083, 29.460232>,  <36.693497, 40.357491, 29.590267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655975, 39.981083, 29.460232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674186, -0.300306, 0.674752,
		-0.732581, -0.155879, 0.662591,
		-0.093800, -0.941020, -0.325090,
		36.627834, 39.698776, 29.362705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350883, 39.892452, 30.141735>,  <36.693497, 40.357491, 29.590267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350883, 39.892452, 30.141735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615116, 39.730431, 29.888893>,  <36.773655, 39.633217, 29.737188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615116, 39.730431, 29.888893>,  <36.350883, 39.892452, 30.141735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615116, 39.730431, 29.888893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587488, -0.245313, 0.771154,
		-0.467426, -0.880766, 0.075918,
		0.660583, -0.405059, -0.632106,
		36.813290, 39.608913, 29.699261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505730, 39.131187, 30.337013>,  <36.350883, 39.892452, 30.141735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505730, 39.131187, 30.337013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774937, 39.355289, 30.143866>,  <36.936462, 39.489750, 30.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774937, 39.355289, 30.143866>,  <36.505730, 39.131187, 30.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774937, 39.355289, 30.143866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596607, -0.025348, 0.802133,
		0.437159, -0.827933, -0.351311,
		0.673017, 0.560254, -0.482870,
		36.976841, 39.523365, 29.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267879, 38.995171, 30.428162>,  <36.505730, 39.131187, 30.337013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267879, 38.995171, 30.428162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320534, 39.383564, 30.348305>,  <37.352127, 39.616600, 30.300390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320534, 39.383564, 30.348305>,  <37.267879, 38.995171, 30.428162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320534, 39.383564, 30.348305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449532, 0.121023, 0.885028,
		0.883512, -0.206246, -0.420559,
		0.131636, 0.970987, -0.199640,
		37.360023, 39.674862, 30.288412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016705, 39.119953, 30.342031>,  <37.267879, 38.995171, 30.428162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016705, 39.119953, 30.342031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787651, 39.423698, 30.465620>,  <37.650219, 39.605946, 30.539774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787651, 39.423698, 30.465620>,  <38.016705, 39.119953, 30.342031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787651, 39.423698, 30.465620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588819, 0.118723, 0.799498,
		0.570424, 0.639749, -0.515110,
		-0.572633, 0.759359, 0.308974,
		37.615860, 39.651505, 30.558311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522591, 39.672188, 30.729616>,  <38.016705, 39.119953, 30.342031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522591, 39.672188, 30.729616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142872, 39.709930, 30.849575>,  <37.915043, 39.732574, 30.921551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142872, 39.709930, 30.849575>,  <38.522591, 39.672188, 30.729616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142872, 39.709930, 30.849575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297359, -0.040219, 0.953918,
		0.102066, 0.994726, 0.010123,
		-0.949295, 0.094352, 0.299895,
		37.858082, 39.738235, 30.939543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559483, 40.098110, 31.312864>,  <38.522591, 39.672188, 30.729616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559483, 40.098110, 31.312864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208939, 39.905445, 31.313873>,  <37.998611, 39.789848, 31.314478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208939, 39.905445, 31.313873>,  <38.559483, 40.098110, 31.312864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208939, 39.905445, 31.313873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144889, -0.258617, 0.955052,
		-0.459356, 0.837331, 0.296428,
		-0.876356, -0.481658, 0.002523,
		37.946033, 39.760948, 31.314631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157375, 40.332657, 31.854237>,  <38.559483, 40.098110, 31.312864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157375, 40.332657, 31.854237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078918, 39.946327, 31.786446>,  <38.031845, 39.714531, 31.745771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078918, 39.946327, 31.786446>,  <38.157375, 40.332657, 31.854237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078918, 39.946327, 31.786446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121576, -0.195454, 0.973148,
		-0.973010, 0.170267, 0.155756,
		-0.196138, -0.965819, -0.169479,
		38.020077, 39.656582, 31.735601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808254, 40.076080, 32.446213>,  <38.157375, 40.332657, 31.854237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808254, 40.076080, 32.446213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913059, 39.729862, 32.275482>,  <37.975941, 39.522133, 32.173042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913059, 39.729862, 32.275482>,  <37.808254, 40.076080, 32.446213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913059, 39.729862, 32.275482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213351, -0.379384, 0.900305,
		-0.941187, -0.326952, 0.085263,
		0.262009, -0.865546, -0.426827,
		37.991661, 39.470200, 32.147434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483444, 39.489624, 32.672462>,  <37.808254, 40.076080, 32.446213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483444, 39.489624, 32.672462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796619, 39.287659, 32.527100>,  <37.984524, 39.166477, 32.439880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796619, 39.287659, 32.527100>,  <37.483444, 39.489624, 32.672462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796619, 39.287659, 32.527100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172323, -0.385280, 0.906567,
		-0.597755, -0.772411, -0.214642,
		0.782939, -0.504917, -0.363407,
		38.031502, 39.136185, 32.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370590, 38.811825, 32.741505>,  <37.483444, 39.489624, 32.672462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370590, 38.811825, 32.741505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767693, 38.859760, 32.744865>,  <38.005955, 38.888523, 32.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767693, 38.859760, 32.744865>,  <37.370590, 38.811825, 32.741505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767693, 38.859760, 32.744865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068514, -0.622250, 0.779815,
		0.098680, -0.773592, -0.625954,
		0.992758, 0.119839, 0.008402,
		38.065521, 38.895714, 32.747387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622643, 38.143070, 32.602432>,  <37.370590, 38.811825, 32.741505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622643, 38.143070, 32.602432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857338, 38.375156, 32.828384>,  <37.998154, 38.514408, 32.963955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857338, 38.375156, 32.828384>,  <37.622643, 38.143070, 32.602432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857338, 38.375156, 32.828384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016157, -0.705819, 0.708209,
		0.809617, -0.406405, -0.423504,
		0.586737, 0.580220, 0.564876,
		38.033360, 38.549221, 32.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297855, 37.902897, 33.007420>,  <37.622643, 38.143070, 32.602432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297855, 37.902897, 33.007420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491398, 38.204113, 32.829063>,  <38.607525, 38.384842, 32.722050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491398, 38.204113, 32.829063>,  <38.297855, 37.902897, 33.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491398, 38.204113, 32.829063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517464, 0.164717, 0.839702,
		0.705772, -0.637029, -0.309969,
		0.483857, 0.753036, -0.445892,
		38.636555, 38.430023, 32.695297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883953, 37.760536, 33.235165>,  <38.297855, 37.902897, 33.007420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883953, 37.760536, 33.235165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867142, 38.151287, 33.151318>,  <38.857056, 38.385738, 33.101009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867142, 38.151287, 33.151318>,  <38.883953, 37.760536, 33.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867142, 38.151287, 33.151318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530672, 0.199589, 0.823742,
		0.846534, -0.076619, -0.526791,
		-0.042028, 0.976880, -0.209618,
		38.854534, 38.444351, 33.088432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566757, 37.999119, 33.436348>,  <38.883953, 37.760536, 33.235165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566757, 37.999119, 33.436348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306477, 38.302265, 33.455235>,  <39.150311, 38.484154, 33.466564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306477, 38.302265, 33.455235>,  <39.566757, 37.999119, 33.436348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306477, 38.302265, 33.455235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575793, 0.451924, 0.681342,
		0.495029, 0.470533, -0.730441,
		-0.650698, 0.757867, 0.047214,
		39.111267, 38.529625, 33.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951241, 38.447926, 33.856693>,  <39.566757, 37.999119, 33.436348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951241, 38.447926, 33.856693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580383, 38.597290, 33.869129>,  <39.357868, 38.686909, 33.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580383, 38.597290, 33.869129>,  <39.951241, 38.447926, 33.856693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580383, 38.597290, 33.869129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217881, 0.469755, 0.855487,
		0.304844, 0.799934, -0.516890,
		-0.927145, 0.373410, 0.031089,
		39.302238, 38.709312, 33.878456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008091, 39.245308, 33.974411>,  <39.951241, 38.447926, 33.856693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008091, 39.245308, 33.974411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666317, 39.127361, 34.145527>,  <39.461254, 39.056595, 34.248196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666317, 39.127361, 34.145527>,  <40.008091, 39.245308, 33.974411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666317, 39.127361, 34.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126839, 0.680067, 0.722094,
		-0.503842, 0.671241, -0.543672,
		-0.854433, -0.294862, 0.427786,
		39.409988, 39.038902, 34.273861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770031, 39.848640, 34.247826>,  <40.008091, 39.245308, 33.974411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770031, 39.848640, 34.247826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569107, 39.548412, 34.419556>,  <39.448551, 39.368275, 34.522594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569107, 39.548412, 34.419556>,  <39.770031, 39.848640, 34.247826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569107, 39.548412, 34.419556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206409, 0.378077, 0.902470,
		-0.839690, 0.541938, -0.034987,
		-0.502310, -0.750574, 0.429329,
		39.418415, 39.323238, 34.548355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573608, 40.189934, 34.814194>,  <39.770031, 39.848640, 34.247826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573608, 40.189934, 34.814194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527439, 39.797417, 34.875835>,  <39.499737, 39.561909, 34.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527439, 39.797417, 34.875835>,  <39.573608, 40.189934, 34.814194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527439, 39.797417, 34.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249680, 0.121496, 0.960676,
		-0.961424, 0.149362, 0.230985,
		-0.115425, -0.981290, 0.154102,
		39.492813, 39.503029, 34.922066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223301, 40.161015, 35.377953>,  <39.573608, 40.189934, 34.814194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223301, 40.161015, 35.377953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387203, 39.796719, 35.357346>,  <39.485546, 39.578140, 35.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387203, 39.796719, 35.357346>,  <39.223301, 40.161015, 35.377953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387203, 39.796719, 35.357346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282621, 0.073050, 0.956446,
		-0.867308, -0.406473, 0.287327,
		0.409759, -0.910738, -0.051521,
		39.510132, 39.523499, 35.341888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007240, 39.729126, 35.914234>,  <39.223301, 40.161015, 35.377953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007240, 39.729126, 35.914234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375877, 39.637325, 35.789021>,  <39.597061, 39.582245, 35.713894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375877, 39.637325, 35.789021>,  <39.007240, 39.729126, 35.914234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375877, 39.637325, 35.789021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372766, 0.298525, 0.878594,
		-0.108192, -0.926397, 0.360670,
		0.921597, -0.229502, -0.313032,
		39.652355, 39.568474, 35.695110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358719, 39.423088, 36.500568>,  <39.007240, 39.729126, 35.914234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358719, 39.423088, 36.500568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607662, 39.575169, 36.226891>,  <39.757027, 39.666416, 36.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607662, 39.575169, 36.226891>,  <39.358719, 39.423088, 36.500568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607662, 39.575169, 36.226891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492061, 0.489749, 0.719738,
		0.608727, -0.784598, 0.117717,
		0.622356, 0.380200, -0.684193,
		39.794369, 39.689228, 36.021633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103508, 39.379765, 36.708603>,  <39.358719, 39.423088, 36.500568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103508, 39.379765, 36.708603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141968, 39.647770, 36.414165>,  <40.165043, 39.808575, 36.237503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141968, 39.647770, 36.414165>,  <40.103508, 39.379765, 36.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141968, 39.647770, 36.414165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822986, 0.362446, 0.437409,
		0.559865, -0.647855, -0.516560,
		0.096153, 0.670012, -0.736097,
		40.170815, 39.848774, 36.193336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762272, 39.497467, 36.518147>,  <40.103508, 39.379765, 36.708603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762272, 39.497467, 36.518147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595757, 39.843697, 36.406803>,  <40.495846, 40.051434, 36.339996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595757, 39.843697, 36.406803>,  <40.762272, 39.497467, 36.518147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595757, 39.843697, 36.406803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849416, 0.479436, 0.220531,
		0.324342, -0.144640, -0.934816,
		-0.416287, 0.865575, -0.278361,
		40.470871, 40.103371, 36.323296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098103, 39.862175, 35.948776>,  <40.762272, 39.497467, 36.518147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098103, 39.862175, 35.948776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926617, 40.095188, 36.224995>,  <40.823727, 40.234997, 36.390724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926617, 40.095188, 36.224995>,  <41.098103, 39.862175, 35.948776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926617, 40.095188, 36.224995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899334, 0.347969, 0.264795,
		-0.086036, 0.734553, -0.673075,
		-0.428715, 0.582537, 0.690546,
		40.798000, 40.269951, 36.432159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549274, 39.641068, 35.364265>,  <41.098103, 39.862175, 35.948776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549274, 39.641068, 35.364265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361866, 39.452782, 35.663311>,  <40.249420, 39.339809, 35.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361866, 39.452782, 35.663311>,  <40.549274, 39.641068, 35.364265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361866, 39.452782, 35.663311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714337, -0.296074, -0.634084,
		0.519819, -0.831126, -0.197530,
		-0.468520, -0.470711, 0.747609,
		40.221310, 39.311569, 35.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538494, 38.982548, 35.103786>,  <40.549274, 39.641068, 35.364265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538494, 38.982548, 35.103786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235176, 39.074509, 35.347797>,  <40.053185, 39.129684, 35.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235176, 39.074509, 35.347797>,  <40.538494, 38.982548, 35.103786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235176, 39.074509, 35.347797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629324, -0.502331, -0.592971,
		0.170105, -0.833551, 0.525602,
		-0.758297, 0.229906, 0.610023,
		40.007687, 39.143482, 35.530804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059738, 38.372417, 35.332359>,  <40.538494, 38.982548, 35.103786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059738, 38.372417, 35.332359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844193, 38.709347, 35.336494>,  <39.714863, 38.911507, 35.338974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844193, 38.709347, 35.336494>,  <40.059738, 38.372417, 35.332359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844193, 38.709347, 35.336494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602118, -0.376556, -0.704031,
		-0.589132, -0.385603, 0.710094,
		-0.538866, 0.842328, 0.010337,
		39.682533, 38.962044, 35.339596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370029, 38.211655, 35.139111>,  <40.059738, 38.372417, 35.332359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370029, 38.211655, 35.139111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366367, 38.610153, 35.104683>,  <39.364170, 38.849251, 35.084026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366367, 38.610153, 35.104683>,  <39.370029, 38.211655, 35.139111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366367, 38.610153, 35.104683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579391, -0.075434, -0.811551,
		-0.814998, 0.042434, 0.577908,
		-0.009157, 0.996248, -0.086064,
		39.363621, 38.909027, 35.078865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747990, 38.282486, 34.939232>,  <39.370029, 38.211655, 35.139111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747990, 38.282486, 34.939232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937996, 38.617088, 34.829964>,  <39.051998, 38.817848, 34.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937996, 38.617088, 34.829964>,  <38.747990, 38.282486, 34.939232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937996, 38.617088, 34.829964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547477, 0.037895, -0.835962,
		-0.688932, 0.546652, 0.475967,
		0.475017, 0.836502, -0.273173,
		39.080502, 38.868038, 34.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255043, 38.713825, 34.585270>,  <38.747990, 38.282486, 34.939232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255043, 38.713825, 34.585270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622501, 38.822678, 34.470707>,  <38.842976, 38.887989, 34.401970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622501, 38.822678, 34.470707>,  <38.255043, 38.713825, 34.585270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622501, 38.822678, 34.470707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288353, -0.033729, -0.956930,
		-0.270071, 0.961669, 0.047484,
		0.918648, 0.272131, -0.286409,
		38.898094, 38.904316, 34.384785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118248, 39.143970, 34.037537>,  <38.255043, 38.713825, 34.585270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118248, 39.143970, 34.037537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504410, 39.067318, 33.966812>,  <38.736107, 39.021324, 33.924377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504410, 39.067318, 33.966812>,  <38.118248, 39.143970, 34.037537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504410, 39.067318, 33.966812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195355, -0.082475, -0.977259,
		0.172693, 0.977995, -0.117059,
		0.965408, -0.191634, -0.176813,
		38.794033, 39.009827, 33.913769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350716, 39.605740, 33.516293>,  <38.118248, 39.143970, 34.037537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350716, 39.605740, 33.516293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568951, 39.270588, 33.509441>,  <38.699890, 39.069496, 33.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568951, 39.270588, 33.509441>,  <38.350716, 39.605740, 33.516293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568951, 39.270588, 33.509441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326140, -0.193448, -0.925316,
		0.771991, 0.510424, -0.378809,
		0.545584, -0.837881, -0.017130,
		38.732624, 39.019222, 33.504303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799007, 39.634941, 32.855175>,  <38.350716, 39.605740, 33.516293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799007, 39.634941, 32.855175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746132, 39.255650, 32.970688>,  <38.714405, 39.028076, 33.039997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746132, 39.255650, 32.970688>,  <38.799007, 39.634941, 32.855175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746132, 39.255650, 32.970688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170625, -0.265225, -0.948970,
		0.976429, -0.174720, -0.126730,
		-0.132192, -0.948224, 0.288784,
		38.706474, 38.971184, 33.057323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197914, 39.238388, 32.445217>,  <38.799007, 39.634941, 32.855175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197914, 39.238388, 32.445217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868671, 39.037846, 32.551899>,  <38.671124, 38.917522, 32.615910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868671, 39.037846, 32.551899>,  <39.197914, 39.238388, 32.445217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868671, 39.037846, 32.551899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240071, -0.118421, -0.963505,
		0.514642, -0.857100, -0.022887,
		-0.823110, -0.501355, 0.266709,
		38.621738, 38.887440, 32.631912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099884, 38.601791, 32.003017>,  <39.197914, 39.238388, 32.445217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099884, 38.601791, 32.003017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760601, 38.769321, 32.132710>,  <38.557030, 38.869839, 32.210526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760601, 38.769321, 32.132710>,  <39.099884, 38.601791, 32.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760601, 38.769321, 32.132710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325980, 0.069687, -0.942805,
		-0.417462, -0.905390, 0.077418,
		-0.848211, 0.418822, 0.324231,
		38.506138, 38.894966, 32.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611141, 38.511501, 31.500242>,  <39.099884, 38.601791, 32.003017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611141, 38.511501, 31.500242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418114, 38.800938, 31.697639>,  <38.302296, 38.974602, 31.816078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418114, 38.800938, 31.697639>,  <38.611141, 38.511501, 31.500242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418114, 38.800938, 31.697639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417916, 0.304936, -0.855780,
		-0.769723, -0.619213, 0.155250,
		-0.482569, 0.723595, 0.493495,
		38.273342, 39.018017, 31.845688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207809, 38.107605, 31.387508>,  <38.611141, 38.511501, 31.500242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207809, 38.107605, 31.387508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364555, 37.801388, 31.183395>,  <39.458603, 37.617657, 31.060928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364555, 37.801388, 31.183395>,  <39.207809, 38.107605, 31.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364555, 37.801388, 31.183395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851395, 0.511941, -0.114204,
		0.348662, -0.389699, 0.852390,
		0.391868, -0.765540, -0.510283,
		39.482117, 37.571728, 31.030310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809078, 37.807041, 31.653296>,  <39.207809, 38.107605, 31.387508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809078, 37.807041, 31.653296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850296, 37.742661, 31.260668>,  <39.875027, 37.704033, 31.025091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850296, 37.742661, 31.260668>,  <39.809078, 37.807041, 31.653296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850296, 37.742661, 31.260668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728521, 0.684093, -0.035693,
		0.677229, -0.711416, 0.187746,
		0.103043, -0.160950, -0.981569,
		39.881210, 37.694374, 30.966198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622189, 37.805096, 31.736452>,  <39.809078, 37.807041, 31.653296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622189, 37.805096, 31.736452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000656, 37.792442, 31.607603>,  <41.227737, 37.784851, 31.530294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000656, 37.792442, 31.607603>,  <40.622189, 37.805096, 31.736452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000656, 37.792442, 31.607603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321590, 0.204563, 0.924518,
		0.036651, -0.978342, 0.203723,
		0.946169, -0.031630, -0.322122,
		41.284508, 37.782955, 31.510965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831501, 37.216301, 31.972570>,  <40.622189, 37.805096, 31.736452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831501, 37.216301, 31.972570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136753, 37.462162, 31.892731>,  <41.319904, 37.609680, 31.844828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136753, 37.462162, 31.892731>,  <40.831501, 37.216301, 31.972570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136753, 37.462162, 31.892731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503071, -0.371138, 0.780498,
		0.405658, -0.696029, -0.592439,
		0.763126, 0.614654, -0.199597,
		41.365692, 37.646557, 31.832851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542835, 36.901051, 32.215038>,  <40.831501, 37.216301, 31.972570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542835, 36.901051, 32.215038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652199, 37.283195, 32.170258>,  <41.717815, 37.512482, 32.143391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652199, 37.283195, 32.170258>,  <41.542835, 36.901051, 32.215038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652199, 37.283195, 32.170258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442015, -0.021415, 0.896752,
		0.854324, -0.294665, -0.428139,
		0.273410, 0.955361, -0.111951,
		41.734222, 37.569805, 32.136673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355328, 37.010632, 32.148159>,  <41.542835, 36.901051, 32.215038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355328, 37.010632, 32.148159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171440, 37.326374, 32.310925>,  <42.061108, 37.515820, 32.408585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171440, 37.326374, 32.310925>,  <42.355328, 37.010632, 32.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171440, 37.326374, 32.310925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704178, 0.044832, 0.708607,
		0.541099, 0.612300, -0.576456,
		-0.459723, 0.789354, 0.406909,
		42.033524, 37.563179, 32.432999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844860, 37.365520, 32.566574>,  <42.355328, 37.010632, 32.148159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844860, 37.365520, 32.566574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126740, 37.535595, 32.339375>,  <43.295868, 37.637638, 32.203056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126740, 37.535595, 32.339375>,  <42.844860, 37.365520, 32.566574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126740, 37.535595, 32.339375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583264, 0.108665, 0.804981,
		0.403987, -0.898560, -0.171418,
		0.704697, 0.425184, -0.567997,
		43.338150, 37.663151, 32.168976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407825, 37.035915, 32.568909>,  <42.844860, 37.365520, 32.566574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407825, 37.035915, 32.568909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527020, 37.415657, 32.529037>,  <43.598537, 37.643501, 32.505116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527020, 37.415657, 32.529037>,  <43.407825, 37.035915, 32.568909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527020, 37.415657, 32.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634876, -0.119122, 0.763375,
		0.712838, -0.290758, -0.638218,
		0.297983, 0.949352, -0.099680,
		43.616413, 37.700462, 32.499134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187275, 37.138477, 32.518330>,  <43.407825, 37.035915, 32.568909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187275, 37.138477, 32.518330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017647, 37.454376, 32.695629>,  <43.915871, 37.643913, 32.802010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017647, 37.454376, 32.695629>,  <44.187275, 37.138477, 32.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017647, 37.454376, 32.695629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674561, -0.051117, 0.736447,
		0.604263, 0.611302, -0.511054,
		-0.424068, 0.789745, 0.443249,
		43.890427, 37.691299, 32.828606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266678, 36.960350, 31.698820>,  <44.187275, 37.138477, 32.518330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266678, 36.960350, 31.698820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426571, 36.798874, 32.028000>,  <44.522507, 36.701988, 32.225510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426571, 36.798874, 32.028000>,  <44.266678, 36.960350, 31.698820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426571, 36.798874, 32.028000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732046, 0.680914, -0.021561,
		-0.551654, 0.611056, 0.567705,
		0.399734, -0.403692, 0.822949,
		44.546490, 36.677765, 32.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221073, 36.237297, 31.754967>,  <44.266678, 36.960350, 31.698820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221073, 36.237297, 31.754967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211277, 35.852203, 31.862698>,  <44.205399, 35.621147, 31.927336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211277, 35.852203, 31.862698>,  <44.221073, 36.237297, 31.754967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211277, 35.852203, 31.862698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304835, -0.263773, -0.915150,
		0.952090, 0.059685, 0.299937,
		-0.024495, -0.962737, 0.269329,
		44.203930, 35.563381, 31.943497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845226, 35.821522, 31.577459>,  <44.221073, 36.237297, 31.754967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845226, 35.821522, 31.577459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547558, 35.554775, 31.592962>,  <44.368958, 35.394726, 31.602264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547558, 35.554775, 31.592962>,  <44.845226, 35.821522, 31.577459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547558, 35.554775, 31.592962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335705, -0.423521, -0.841387,
		0.577509, -0.613122, 0.539041,
		-0.744168, -0.666867, 0.038758,
		44.324306, 35.354713, 31.604589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128265, 36.193211, 31.040445>,  <44.845226, 35.821522, 31.577459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128265, 36.193211, 31.040445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482536, 36.007584, 31.046427>,  <45.695099, 35.896206, 31.050016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482536, 36.007584, 31.046427>,  <45.128265, 36.193211, 31.040445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482536, 36.007584, 31.046427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340195, -0.626671, 0.701108,
		-0.315990, -0.626040, -0.712899,
		0.885674, -0.464067, 0.014954,
		45.748238, 35.868362, 31.050913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759422, 36.395485, 30.851435>,  <45.128265, 36.193211, 31.040445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759422, 36.395485, 30.851435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012569, 36.141235, 31.028282>,  <46.164455, 35.988686, 31.134390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012569, 36.141235, 31.028282>,  <45.759422, 36.395485, 30.851435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012569, 36.141235, 31.028282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550862, -0.770904, -0.319779,
		0.544088, -0.041168, -0.838018,
		0.632866, -0.635620, 0.442117,
		46.202431, 35.950550, 31.160917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996777, 35.746098, 30.376001>,  <45.759422, 36.395485, 30.851435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996777, 35.746098, 30.376001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003807, 35.634502, 30.760054>,  <46.008026, 35.567543, 30.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003807, 35.634502, 30.760054>,  <45.996777, 35.746098, 30.376001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003807, 35.634502, 30.760054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670234, -0.715871, -0.195742,
		0.741941, -0.640073, -0.199574,
		0.017580, -0.278991, 0.960133,
		46.009083, 35.550804, 31.048094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681511, 35.197426, 30.408953>,  <45.996777, 35.746098, 30.376001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681511, 35.197426, 30.408953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691372, 35.241268, 30.806421>,  <45.697289, 35.267574, 31.044903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691372, 35.241268, 30.806421>,  <45.681511, 35.197426, 30.408953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691372, 35.241268, 30.806421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834780, -0.544624, 0.080784,
		0.550031, -0.831487, 0.078072,
		0.024651, 0.109607, 0.993669,
		45.698769, 35.274151, 31.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683926, 34.563992, 30.747919>,  <45.681511, 35.197426, 30.408953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683926, 34.563992, 30.747919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492481, 34.841370, 30.963348>,  <45.377613, 35.007797, 31.092606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492481, 34.841370, 30.963348>,  <45.683926, 34.563992, 30.747919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492481, 34.841370, 30.963348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857521, -0.500960, -0.117032,
		0.188648, -0.517852, 0.834411,
		-0.478612, 0.693447, 0.538574,
		45.348896, 35.049404, 31.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384838, 34.257729, 31.333420>,  <45.683926, 34.563992, 30.747919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384838, 34.257729, 31.333420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181889, 34.584915, 31.224972>,  <45.060120, 34.781227, 31.159903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181889, 34.584915, 31.224972>,  <45.384838, 34.257729, 31.333420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181889, 34.584915, 31.224972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809551, -0.560262, -0.175311,
		-0.295297, 0.130539, 0.946446,
		-0.507373, 0.817964, -0.271121,
		45.029678, 34.830303, 31.143635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677101, 33.905598, 31.176403>,  <45.384838, 34.257729, 31.333420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677101, 33.905598, 31.176403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893658, 33.587910, 31.066051>,  <45.023590, 33.397297, 30.999840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893658, 33.587910, 31.066051>,  <44.677101, 33.905598, 31.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893658, 33.587910, 31.066051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277614, -0.140858, 0.950310,
		-0.793616, -0.591077, 0.144228,
		0.541391, -0.794221, -0.275878,
		45.056076, 33.349644, 30.983288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575890, 33.453045, 31.774225>,  <44.677101, 33.905598, 31.176403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575890, 33.453045, 31.774225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922256, 33.397812, 31.581923>,  <45.130077, 33.364674, 31.466541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922256, 33.397812, 31.581923>,  <44.575890, 33.453045, 31.774225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922256, 33.397812, 31.581923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489759, 0.038763, 0.870996,
		-0.101634, -0.989662, 0.101193,
		0.865914, -0.138083, -0.480756,
		45.182030, 33.356388, 31.437696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072567, 33.030853, 32.253929>,  <44.575890, 33.453045, 31.774225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072567, 33.030853, 32.253929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306702, 33.240658, 32.006615>,  <45.447182, 33.366539, 31.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306702, 33.240658, 32.006615>,  <45.072567, 33.030853, 32.253929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306702, 33.240658, 32.006615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513129, 0.350776, 0.783361,
		0.627761, -0.775785, -0.063822,
		0.585333, 0.524513, -0.618282,
		45.482300, 33.398010, 31.821131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800041, 32.837498, 32.227077>,  <45.072567, 33.030853, 32.253929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800041, 32.837498, 32.227077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692226, 33.221867, 32.201832>,  <45.627541, 33.452488, 32.186684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692226, 33.221867, 32.201832>,  <45.800041, 32.837498, 32.227077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692226, 33.221867, 32.201832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288990, 0.143232, 0.946557,
		0.918606, 0.236888, -0.316302,
		-0.269532, 0.960921, -0.063116,
		45.611366, 33.510143, 32.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391506, 33.386684, 32.238277>,  <45.800041, 32.837498, 32.227077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391506, 33.386684, 32.238277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062656, 33.517456, 32.424709>,  <45.865345, 33.595921, 32.536568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062656, 33.517456, 32.424709>,  <46.391506, 33.386684, 32.238277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062656, 33.517456, 32.424709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465451, -0.085430, 0.880941,
		0.327825, 0.941179, -0.081937,
		-0.822123, 0.326933, 0.466078,
		45.816021, 33.615536, 32.564533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458302, 34.107975, 32.534737>,  <46.391506, 33.386684, 32.238277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458302, 34.107975, 32.534737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198761, 33.881710, 32.738312>,  <46.043037, 33.745953, 32.860458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198761, 33.881710, 32.738312>,  <46.458302, 34.107975, 32.534737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198761, 33.881710, 32.738312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598287, 0.034013, 0.800560,
		-0.470155, 0.823937, 0.316358,
		-0.648851, -0.565660, 0.508942,
		46.004105, 33.712013, 32.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036373, 34.488724, 33.044445>,  <46.458302, 34.107975, 32.534737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036373, 34.488724, 33.044445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151703, 34.113251, 33.120056>,  <46.220901, 33.887966, 33.165424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151703, 34.113251, 33.120056>,  <46.036373, 34.488724, 33.044445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151703, 34.113251, 33.120056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537202, 0.321997, 0.779572,
		-0.792642, -0.123225, 0.597106,
		0.288328, -0.938687, 0.189031,
		46.238201, 33.831646, 33.176765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003025, 34.374577, 33.875580>,  <46.036373, 34.488724, 33.044445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003025, 34.374577, 33.875580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272125, 34.132793, 33.704918>,  <46.433586, 33.987724, 33.602520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272125, 34.132793, 33.704918>,  <46.003025, 34.374577, 33.875580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272125, 34.132793, 33.704918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657314, 0.223589, 0.719685,
		-0.339627, -0.764614, 0.547741,
		0.672750, -0.604462, -0.426654,
		46.473949, 33.951454, 33.576923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264984, 33.808746, 34.271442>,  <46.003025, 34.374577, 33.875580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264984, 33.808746, 34.271442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524036, 33.944965, 33.998795>,  <46.679466, 34.026699, 33.835205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524036, 33.944965, 33.998795>,  <46.264984, 33.808746, 34.271442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.524036, 33.944965, 33.998795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573973, 0.370306, 0.730361,
		0.501133, -0.864233, 0.044353,
		0.647627, 0.340550, -0.681619,
		46.718323, 34.047131, 33.794308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073166, 33.587391, 34.384983>,  <46.264984, 33.808746, 34.271442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073166, 33.587391, 34.384983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047375, 33.921478, 34.166531>,  <47.031902, 34.121929, 34.035461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047375, 33.921478, 34.166531>,  <47.073166, 33.587391, 34.384983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047375, 33.921478, 34.166531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484103, 0.504738, 0.714761,
		0.872632, -0.218298, -0.436874,
		-0.064476, 0.835216, -0.546129,
		47.028030, 34.172043, 34.002693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659550, 33.811508, 34.560211>,  <47.073166, 33.587391, 34.384983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659550, 33.811508, 34.560211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407646, 34.099346, 34.443192>,  <47.256504, 34.272049, 34.372978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407646, 34.099346, 34.443192>,  <47.659550, 33.811508, 34.560211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407646, 34.099346, 34.443192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242471, 0.539894, 0.806054,
		0.737981, 0.436682, -0.514483,
		-0.629755, 0.719600, -0.292549,
		47.218719, 34.315228, 34.355427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.146729, 34.429340, 34.708153>,  <47.659550, 33.811508, 34.560211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.146729, 34.429340, 34.708153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757477, 34.506855, 34.658405>,  <47.523926, 34.553364, 34.628559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757477, 34.506855, 34.658405>,  <48.146729, 34.429340, 34.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757477, 34.506855, 34.658405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021562, 0.614435, 0.788672,
		0.229247, 0.764799, -0.602103,
		-0.973129, 0.193783, -0.124367,
		47.465538, 34.564991, 34.621094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.103035, 35.083115, 34.601517>,  <48.146729, 34.429340, 34.708153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.103035, 35.083115, 34.601517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762974, 34.949848, 34.764610>,  <47.558937, 34.869888, 34.862465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762974, 34.949848, 34.764610>,  <48.103035, 35.083115, 34.601517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762974, 34.949848, 34.764610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158181, 0.576994, 0.801284,
		-0.502222, 0.745706, -0.437830,
		-0.850148, -0.333166, 0.407735,
		47.507931, 34.849899, 34.886932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.134838, 37.137592, 20.950401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 37.118362, 21.064005>,  <32.521965, 37.106823, 21.132166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 37.118362, 21.064005>,  <33.134838, 37.137592, 20.950401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751793, 37.118362, 21.064005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270667, 0.187126, 0.944311,
		-0.098545, 0.981158, -0.166182,
		-0.957616, -0.048077, 0.284008,
		32.464508, 37.103939, 21.149208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966084, 37.742428, 21.393387>,  <33.134838, 37.137592, 20.950401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966084, 37.742428, 21.393387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693512, 37.468189, 21.495844>,  <32.529968, 37.303646, 21.557318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693512, 37.468189, 21.495844>,  <32.966084, 37.742428, 21.393387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693512, 37.468189, 21.495844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133688, 0.227487, 0.964561,
		-0.719570, 0.691523, -0.063360,
		-0.681429, -0.685599, 0.256141,
		32.489082, 37.262508, 21.572687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460464, 38.081421, 22.022863>,  <32.966084, 37.742428, 21.393387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460464, 38.081421, 22.022863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413734, 37.684875, 22.046690>,  <32.385696, 37.446949, 22.060986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413734, 37.684875, 22.046690>,  <32.460464, 38.081421, 22.022863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413734, 37.684875, 22.046690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081614, 0.069356, 0.994248,
		-0.989793, 0.111292, -0.089012,
		-0.116825, -0.991365, 0.059565,
		32.378689, 37.387466, 22.064560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912325, 37.957310, 22.435301>,  <32.460464, 38.081421, 22.022863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912325, 37.957310, 22.435301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107197, 37.607998, 22.437599>,  <32.224121, 37.398411, 22.438978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107197, 37.607998, 22.437599>,  <31.912325, 37.957310, 22.435301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107197, 37.607998, 22.437599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057439, -0.025476, 0.998024,
		-0.871412, -0.486546, -0.062572,
		0.487178, -0.873284, 0.005747,
		32.253349, 37.346012, 22.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478802, 37.448483, 22.862572>,  <31.912325, 37.957310, 22.435301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478802, 37.448483, 22.862572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855314, 37.316566, 22.833656>,  <32.081223, 37.237415, 22.816307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855314, 37.316566, 22.833656>,  <31.478802, 37.448483, 22.862572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855314, 37.316566, 22.833656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025024, -0.145372, 0.989061,
		-0.336696, -0.932793, -0.128583,
		0.941281, -0.329795, -0.072288,
		32.137699, 37.217628, 22.811970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377529, 37.068264, 23.387928>,  <31.478802, 37.448483, 22.862572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377529, 37.068264, 23.387928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.773186, 37.108704, 23.345263>,  <32.010578, 37.132969, 23.319662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.773186, 37.108704, 23.345263>,  <31.377529, 37.068264, 23.387928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773186, 37.108704, 23.345263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091300, 0.146032, 0.985058,
		0.115160, -0.984101, 0.135216,
		0.989142, 0.101094, -0.106665,
		32.069927, 37.139034, 23.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669861, 36.566517, 23.797218>,  <31.377529, 37.068264, 23.387928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669861, 36.566517, 23.797218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957148, 36.838539, 23.738321>,  <32.129520, 37.001755, 23.702982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957148, 36.838539, 23.738321>,  <31.669861, 36.566517, 23.797218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957148, 36.838539, 23.738321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264818, -0.071465, 0.961646,
		0.643454, -0.729666, -0.231420,
		0.718219, 0.680059, -0.147244,
		32.172615, 37.042557, 23.694147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092632, 36.232868, 24.228069>,  <31.669861, 36.566517, 23.797218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092632, 36.232868, 24.228069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249996, 36.595428, 24.166529>,  <32.344414, 36.812965, 24.129604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249996, 36.595428, 24.166529>,  <32.092632, 36.232868, 24.228069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249996, 36.595428, 24.166529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396757, -0.016421, 0.917777,
		0.829347, -0.422100, -0.366081,
		0.393405, 0.906400, -0.153853,
		32.368019, 36.867348, 24.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802475, 36.202480, 24.330484>,  <32.092632, 36.232868, 24.228069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802475, 36.202480, 24.330484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.681149, 36.578259, 24.394276>,  <32.608353, 36.803726, 24.432550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.681149, 36.578259, 24.394276>,  <32.802475, 36.202480, 24.330484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681149, 36.578259, 24.394276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327850, -0.054259, 0.943170,
		0.894714, 0.338366, -0.291540,
		-0.303318, 0.939449, 0.159480,
		32.590153, 36.860092, 24.442120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457664, 36.556286, 24.518955>,  <32.802475, 36.202480, 24.330484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457664, 36.556286, 24.518955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164001, 36.794315, 24.649740>,  <32.987804, 36.937134, 24.728212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164001, 36.794315, 24.649740>,  <33.457664, 36.556286, 24.518955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164001, 36.794315, 24.649740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551686, 0.242087, 0.798146,
		0.395798, 0.766346, -0.506021,
		-0.734157, 0.595070, 0.326964,
		32.943756, 36.972836, 24.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780239, 37.175396, 24.791758>,  <33.457664, 36.556286, 24.518955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780239, 37.175396, 24.791758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.419300, 37.150162, 24.962301>,  <33.202736, 37.135021, 25.064627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.419300, 37.150162, 24.962301>,  <33.780239, 37.175396, 24.791758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419300, 37.150162, 24.962301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409013, 0.186589, 0.893248,
		-0.135909, 0.980410, -0.142565,
		-0.902351, -0.063089, 0.426360,
		33.148594, 37.131233, 25.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754894, 37.733166, 25.258465>,  <33.780239, 37.175396, 24.791758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754894, 37.733166, 25.258465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.467075, 37.489979, 25.392702>,  <33.294384, 37.344067, 25.473244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.467075, 37.489979, 25.392702>,  <33.754894, 37.733166, 25.258465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467075, 37.489979, 25.392702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229401, 0.248031, 0.941199,
		-0.655458, 0.754224, -0.039001,
		-0.719548, -0.607970, 0.335594,
		33.251209, 37.307587, 25.493380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571083, 38.039402, 25.813021>,  <33.754894, 37.733166, 25.258465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571083, 38.039402, 25.813021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439232, 37.664570, 25.859020>,  <33.360123, 37.439671, 25.886620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439232, 37.664570, 25.859020>,  <33.571083, 38.039402, 25.813021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439232, 37.664570, 25.859020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217534, 0.043143, 0.975099,
		-0.918708, 0.346435, 0.189626,
		-0.329627, -0.937082, 0.114997,
		33.340343, 37.383446, 25.893518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203300, 37.985245, 26.413673>,  <33.571083, 38.039402, 25.813021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203300, 37.985245, 26.413673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268501, 37.590847, 26.399597>,  <33.307621, 37.354206, 26.391151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268501, 37.590847, 26.399597>,  <33.203300, 37.985245, 26.413673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268501, 37.590847, 26.399597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191184, -0.003423, 0.981548,
		-0.967925, -0.166725, 0.187949,
		0.163005, -0.985997, -0.035188,
		33.317402, 37.295048, 26.389040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912357, 37.747532, 27.046169>,  <33.203300, 37.985245, 26.413673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912357, 37.747532, 27.046169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.148506, 37.455246, 26.909042>,  <33.290195, 37.279877, 26.826767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.148506, 37.455246, 26.909042>,  <32.912357, 37.747532, 27.046169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148506, 37.455246, 26.909042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347000, -0.153702, 0.925185,
		-0.728735, -0.665159, 0.162816,
		0.590370, -0.730711, -0.342818,
		33.325619, 37.236034, 26.806196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874035, 37.222801, 27.595318>,  <32.912357, 37.747532, 27.046169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874035, 37.222801, 27.595318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206158, 37.153221, 27.383532>,  <33.405430, 37.111473, 27.256460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206158, 37.153221, 27.383532>,  <32.874035, 37.222801, 27.595318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206158, 37.153221, 27.383532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463073, -0.313265, 0.829113,
		-0.310004, -0.933616, -0.179607,
		0.830338, -0.173857, -0.529445,
		33.455250, 37.101036, 27.224693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142994, 36.689243, 27.890368>,  <32.874035, 37.222801, 27.595318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142994, 36.689243, 27.890368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442284, 36.879944, 27.705814>,  <33.621857, 36.994362, 27.595081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442284, 36.879944, 27.705814>,  <33.142994, 36.689243, 27.890368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442284, 36.879944, 27.705814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550108, -0.057061, 0.833142,
		0.370872, -0.877186, -0.304958,
		0.748221, 0.476749, -0.461385,
		33.666752, 37.022968, 27.567398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740189, 36.342804, 27.981142>,  <33.142994, 36.689243, 27.890368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740189, 36.342804, 27.981142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880974, 36.707451, 27.896225>,  <33.965446, 36.926239, 27.845276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880974, 36.707451, 27.896225>,  <33.740189, 36.342804, 27.981142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880974, 36.707451, 27.896225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585158, -0.037282, 0.810061,
		0.730555, -0.409337, -0.546565,
		0.351965, 0.911621, -0.212291,
		33.986565, 36.980938, 27.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371365, 36.347195, 28.323708>,  <33.740189, 36.342804, 27.981142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371365, 36.347195, 28.323708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329018, 36.740063, 28.261566>,  <34.303608, 36.975784, 28.224281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329018, 36.740063, 28.261566>,  <34.371365, 36.347195, 28.323708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329018, 36.740063, 28.261566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501609, 0.187646, 0.844498,
		0.858592, 0.011477, -0.512531,
		-0.105867, 0.982170, -0.155355,
		34.297256, 37.034714, 28.214960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021687, 36.560577, 28.415724>,  <34.371365, 36.347195, 28.323708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021687, 36.560577, 28.415724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793358, 36.886822, 28.453545>,  <34.656361, 37.082569, 28.476238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793358, 36.886822, 28.453545>,  <35.021687, 36.560577, 28.415724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793358, 36.886822, 28.453545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465706, 0.226771, 0.855390,
		0.676222, 0.532313, -0.509280,
		-0.570826, 0.815609, 0.094554,
		34.622108, 37.131504, 28.481911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447395, 37.078396, 28.487434>,  <35.021687, 36.560577, 28.415724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447395, 37.078396, 28.487434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106796, 37.183895, 28.668715>,  <34.902435, 37.247192, 28.777483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106796, 37.183895, 28.668715>,  <35.447395, 37.078396, 28.487434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106796, 37.183895, 28.668715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474794, 0.020996, 0.879846,
		0.222540, 0.964364, -0.143103,
		-0.851496, 0.263746, 0.453202,
		34.851349, 37.263020, 28.804676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026363, 36.555279, 28.418861>,  <35.447395, 37.078396, 28.487434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026363, 36.555279, 28.418861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210949, 36.908806, 28.388090>,  <36.321701, 37.120922, 28.369627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210949, 36.908806, 28.388090>,  <36.026363, 36.555279, 28.418861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210949, 36.908806, 28.388090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107078, -0.030590, -0.993780,
		-0.880675, 0.466827, 0.080522,
		0.461460, 0.883819, -0.076927,
		36.349388, 37.173950, 28.365011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752327, 36.850388, 27.797636>,  <36.026363, 36.555279, 28.418861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752327, 36.850388, 27.797636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066696, 37.084187, 27.878325>,  <36.255318, 37.224464, 27.926737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066696, 37.084187, 27.878325>,  <35.752327, 36.850388, 27.797636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066696, 37.084187, 27.878325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189960, 0.082219, -0.978343,
		-0.588422, 0.807221, -0.046413,
		0.785923, 0.584495, 0.201719,
		36.302475, 37.259537, 27.938841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592148, 37.446362, 27.432384>,  <35.752327, 36.850388, 27.797636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592148, 37.446362, 27.432384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984814, 37.423615, 27.505167>,  <36.220413, 37.409966, 27.548836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984814, 37.423615, 27.505167>,  <35.592148, 37.446362, 27.432384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984814, 37.423615, 27.505167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187438, 0.113907, -0.975650,
		0.034758, 0.991863, 0.122477,
		0.981661, -0.056868, 0.181954,
		36.279312, 37.406555, 27.559753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886765, 37.974247, 27.074541>,  <35.592148, 37.446362, 27.432384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886765, 37.974247, 27.074541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177155, 37.708984, 27.147408>,  <36.351387, 37.549828, 27.191128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177155, 37.708984, 27.147408>,  <35.886765, 37.974247, 27.074541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177155, 37.708984, 27.147408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256917, 0.015813, -0.966304,
		0.637929, 0.748315, 0.181856,
		0.725975, -0.663155, 0.182168,
		36.394947, 37.510036, 27.202059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513382, 38.354259, 26.829256>,  <35.886765, 37.974247, 27.074541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513382, 38.354259, 26.829256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525688, 37.955006, 26.808170>,  <36.533073, 37.715454, 26.795519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525688, 37.955006, 26.808170>,  <36.513382, 38.354259, 26.829256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525688, 37.955006, 26.808170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239548, 0.058567, -0.969116,
		0.970397, 0.017186, 0.240904,
		0.030765, -0.998136, -0.052716,
		36.534916, 37.655563, 26.792356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984947, 38.250534, 26.263842>,  <36.513382, 38.354259, 26.829256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984947, 38.250534, 26.263842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822735, 37.890255, 26.326181>,  <36.725407, 37.674088, 26.363585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822735, 37.890255, 26.326181>,  <36.984947, 38.250534, 26.263842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822735, 37.890255, 26.326181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133879, -0.110134, -0.984859,
		0.904223, -0.420259, -0.075921,
		-0.405534, -0.900696, 0.155850,
		36.701073, 37.620045, 26.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324799, 37.717918, 25.757683>,  <36.984947, 38.250534, 26.263842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324799, 37.717918, 25.757683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973667, 37.558834, 25.864449>,  <36.762989, 37.463383, 25.928509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973667, 37.558834, 25.864449>,  <37.324799, 37.717918, 25.757683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973667, 37.558834, 25.864449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315687, 0.061308, -0.946881,
		0.360225, -0.915458, -0.179371,
		-0.877827, -0.397715, 0.266914,
		36.710320, 37.439518, 25.944523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328232, 37.098915, 25.371141>,  <37.324799, 37.717918, 25.757683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328232, 37.098915, 25.371141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946991, 37.156792, 25.477472>,  <36.718246, 37.191517, 25.541271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946991, 37.156792, 25.477472>,  <37.328232, 37.098915, 25.371141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946991, 37.156792, 25.477472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286726, -0.150492, -0.946119,
		-0.096884, -0.977966, 0.184919,
		-0.953101, 0.144685, 0.265828,
		36.661060, 37.200199, 25.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988071, 36.533649, 25.108082>,  <37.328232, 37.098915, 25.371141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988071, 36.533649, 25.108082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702267, 36.807125, 25.167459>,  <36.530785, 36.971210, 25.203087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702267, 36.807125, 25.167459>,  <36.988071, 36.533649, 25.108082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702267, 36.807125, 25.167459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233466, -0.032990, -0.971805,
		-0.659519, -0.729024, 0.183190,
		-0.714513, 0.683693, 0.148445,
		36.487911, 37.012234, 25.211992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472454, 36.207485, 24.753799>,  <36.988071, 36.533649, 25.108082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472454, 36.207485, 24.753799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320171, 36.572193, 24.815422>,  <36.228802, 36.791019, 24.852396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320171, 36.572193, 24.815422>,  <36.472454, 36.207485, 24.753799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320171, 36.572193, 24.815422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397652, -0.011018, -0.917470,
		-0.834825, -0.410553, 0.366762,
		-0.380711, 0.911770, 0.154059,
		36.205959, 36.845726, 24.861639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773617, 36.183105, 24.470642>,  <36.472454, 36.207485, 24.753799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773617, 36.183105, 24.470642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895470, 36.564083, 24.473505>,  <35.968582, 36.792671, 24.475224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895470, 36.564083, 24.473505>,  <35.773617, 36.183105, 24.470642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895470, 36.564083, 24.473505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490396, 0.163283, -0.856067,
		-0.816523, 0.257276, 0.516816,
		0.304633, 0.952443, 0.007157,
		35.986858, 36.849815, 24.475653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170605, 36.654652, 24.356497>,  <35.773617, 36.183105, 24.470642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170605, 36.654652, 24.356497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498547, 36.864735, 24.265289>,  <35.695312, 36.990784, 24.210566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498547, 36.864735, 24.265289>,  <35.170605, 36.654652, 24.356497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498547, 36.864735, 24.265289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444333, 0.332436, -0.831898,
		-0.361120, 0.783351, 0.505918,
		0.819854, 0.525211, -0.228019,
		35.744503, 37.022297, 24.196884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990482, 37.409084, 24.223366>,  <35.170605, 36.654652, 24.356497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990482, 37.409084, 24.223366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336735, 37.345642, 24.033409>,  <35.544487, 37.307575, 23.919436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336735, 37.345642, 24.033409>,  <34.990482, 37.409084, 24.223366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336735, 37.345642, 24.033409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329540, 0.533600, -0.778893,
		0.376940, 0.830732, 0.409635,
		0.865633, -0.158605, -0.474894,
		35.596424, 37.298061, 23.890942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057751, 37.943443, 23.650587>,  <34.990482, 37.409084, 24.223366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057751, 37.943443, 23.650587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364670, 37.703297, 23.560411>,  <35.548820, 37.559208, 23.506306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364670, 37.703297, 23.560411>,  <35.057751, 37.943443, 23.650587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364670, 37.703297, 23.560411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113159, 0.219269, -0.969080,
		0.631234, 0.769079, 0.100307,
		0.767293, -0.600366, -0.225439,
		35.594856, 37.523186, 23.492781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516922, 38.311352, 23.336029>,  <35.057751, 37.943443, 23.650587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516922, 38.311352, 23.336029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632317, 37.947071, 23.217779>,  <35.701553, 37.728500, 23.146830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632317, 37.947071, 23.217779>,  <35.516922, 38.311352, 23.336029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632317, 37.947071, 23.217779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264846, 0.220807, -0.938670,
		0.920126, 0.349089, -0.177496,
		0.288487, -0.910704, -0.295625,
		35.718864, 37.673859, 23.129091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918179, 38.444851, 22.755856>,  <35.516922, 38.311352, 23.336029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918179, 38.444851, 22.755856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790829, 38.066334, 22.733316>,  <35.714417, 37.839226, 22.719793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790829, 38.066334, 22.733316>,  <35.918179, 38.444851, 22.755856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790829, 38.066334, 22.733316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214811, 0.129910, -0.967977,
		0.923305, -0.296078, -0.244633,
		-0.318376, -0.946288, -0.056345,
		35.695316, 37.782448, 22.716413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298264, 38.011265, 22.195160>,  <35.918179, 38.444851, 22.755856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298264, 38.011265, 22.195160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941753, 37.836113, 22.242311>,  <35.727848, 37.731022, 22.270601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941753, 37.836113, 22.242311>,  <36.298264, 38.011265, 22.195160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941753, 37.836113, 22.242311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221531, 0.193624, -0.955737,
		0.395677, -0.877935, -0.269575,
		-0.891271, -0.437882, 0.117877,
		35.674374, 37.704750, 22.277676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314499, 37.668987, 21.631584>,  <36.298264, 38.011265, 22.195160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314499, 37.668987, 21.631584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934181, 37.650917, 21.754192>,  <35.705990, 37.640076, 21.827757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934181, 37.650917, 21.754192>,  <36.314499, 37.668987, 21.631584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934181, 37.650917, 21.754192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298839, -0.127457, -0.945754,
		0.081792, -0.990815, 0.107685,
		-0.950792, -0.045174, 0.306519,
		35.648945, 37.637363, 21.846148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964520, 37.139400, 21.227690>,  <36.314499, 37.668987, 21.631584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964520, 37.139400, 21.227690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663990, 37.371101, 21.354170>,  <35.483673, 37.510120, 21.430058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663990, 37.371101, 21.354170>,  <35.964520, 37.139400, 21.227690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663990, 37.371101, 21.354170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330093, 0.085039, -0.940110,
		-0.571446, -0.810704, 0.127314,
		-0.751324, 0.579248, 0.316202,
		35.438591, 37.544876, 21.449030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.324032, 36.836884, 20.948229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172123, 37.188873, 21.062359>,  <35.080978, 37.400066, 21.130836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172123, 37.188873, 21.062359>,  <35.324032, 36.836884, 20.948229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172123, 37.188873, 21.062359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412710, 0.114869, -0.903591,
		-0.827916, -0.460914, 0.319552,
		-0.379771, 0.879979, 0.285326,
		35.058193, 37.452866, 21.147957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550621, 36.934063, 20.772345>,  <35.324032, 36.836884, 20.948229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550621, 36.934063, 20.772345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674892, 37.311787, 20.815725>,  <34.749454, 37.538422, 20.841755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674892, 37.311787, 20.815725>,  <34.550621, 36.934063, 20.772345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674892, 37.311787, 20.815725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569459, 0.276272, -0.774203,
		-0.761047, 0.178772, 0.623577,
		0.310682, 0.944306, 0.108453,
		34.768097, 37.595078, 20.848261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955349, 37.376442, 20.773050>,  <34.550621, 36.934063, 20.772345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955349, 37.376442, 20.773050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256172, 37.606289, 20.643913>,  <34.436665, 37.744198, 20.566431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256172, 37.606289, 20.643913>,  <33.955349, 37.376442, 20.773050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256172, 37.606289, 20.643913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554097, 0.285954, -0.781797,
		-0.356918, 0.766840, 0.533448,
		0.752055, 0.574619, -0.322841,
		34.481789, 37.778675, 20.547062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702419, 37.985733, 20.627186>,  <33.955349, 37.376442, 20.773050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702419, 37.985733, 20.627186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040051, 37.992191, 20.412796>,  <34.242630, 37.996067, 20.284163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040051, 37.992191, 20.412796>,  <33.702419, 37.985733, 20.627186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040051, 37.992191, 20.412796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443298, 0.583378, -0.680556,
		0.301685, 0.812040, 0.499577,
		0.844081, 0.016148, -0.535972,
		34.293274, 37.997036, 20.252005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752579, 38.639870, 20.391182>,  <33.702419, 37.985733, 20.627186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752579, 38.639870, 20.391182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006596, 38.448967, 20.148216>,  <34.159004, 38.334427, 20.002438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006596, 38.448967, 20.148216>,  <33.752579, 38.639870, 20.391182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006596, 38.448967, 20.148216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391866, 0.478605, -0.785734,
		0.665705, 0.736999, 0.116915,
		0.635041, -0.477252, -0.607415,
		34.197109, 38.305790, 19.965992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843971, 39.143429, 19.798502>,  <33.752579, 38.639870, 20.391182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843971, 39.143429, 19.798502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000584, 38.809483, 19.643738>,  <34.094551, 38.609116, 19.550879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000584, 38.809483, 19.643738>,  <33.843971, 39.143429, 19.798502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000584, 38.809483, 19.643738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131064, 0.365595, -0.921500,
		0.910782, 0.411507, 0.033721,
		0.391532, -0.834867, -0.386911,
		34.118042, 38.559021, 19.527664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206001, 39.370701, 19.229883>,  <33.843971, 39.143429, 19.798502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206001, 39.370701, 19.229883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116928, 38.984402, 19.176590>,  <34.063484, 38.752625, 19.144615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116928, 38.984402, 19.176590>,  <34.206001, 39.370701, 19.229883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116928, 38.984402, 19.176590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288969, 0.195907, -0.937079,
		0.931080, -0.170168, -0.322695,
		-0.222679, -0.965745, -0.133231,
		34.050125, 38.694679, 19.136621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320877, 39.218895, 18.612946>,  <34.206001, 39.370701, 19.229883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320877, 39.218895, 18.612946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090473, 38.900913, 18.689117>,  <33.952229, 38.710125, 18.734821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090473, 38.900913, 18.689117>,  <34.320877, 39.218895, 18.612946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090473, 38.900913, 18.689117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289799, -0.019238, -0.956894,
		0.764348, -0.606368, -0.219295,
		-0.576011, -0.794951, 0.190430,
		33.917671, 38.662426, 18.746246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446758, 38.694138, 18.086317>,  <34.320877, 39.218895, 18.612946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446758, 38.694138, 18.086317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087864, 38.623295, 18.248110>,  <33.872528, 38.580788, 18.345184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087864, 38.623295, 18.248110>,  <34.446758, 38.694138, 18.086317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087864, 38.623295, 18.248110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380017, -0.156741, -0.911603,
		0.224852, -0.971630, 0.073328,
		-0.897234, -0.177110, 0.404480,
		33.818695, 38.570160, 18.369453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187492, 38.211643, 17.604536>,  <34.446758, 38.694138, 18.086317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187492, 38.211643, 17.604536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884632, 38.383812, 17.801092>,  <33.702915, 38.487114, 17.919025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884632, 38.383812, 17.801092>,  <34.187492, 38.211643, 17.604536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884632, 38.383812, 17.801092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405247, 0.280495, -0.870113,
		-0.512345, -0.857941, -0.037951,
		-0.757151, 0.430419, 0.491388,
		33.657486, 38.512939, 17.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560986, 37.874352, 17.399778>,  <34.187492, 38.211643, 17.604536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560986, 37.874352, 17.399778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454685, 38.237366, 17.529852>,  <33.390903, 38.455173, 17.607897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454685, 38.237366, 17.529852>,  <33.560986, 37.874352, 17.399778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454685, 38.237366, 17.529852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414101, 0.197147, -0.888624,
		-0.870572, -0.370815, 0.323421,
		-0.265753, 0.907541, 0.325186,
		33.374958, 38.509628, 17.627407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926846, 37.995525, 17.185364>,  <33.560986, 37.874352, 17.399778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926846, 37.995525, 17.185364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045902, 38.376961, 17.203573>,  <33.117336, 38.605824, 17.214499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045902, 38.376961, 17.203573>,  <32.926846, 37.995525, 17.185364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045902, 38.376961, 17.203573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411447, 0.171160, -0.895219,
		-0.861466, 0.247720, 0.443296,
		0.297638, 0.953593, 0.045525,
		33.135193, 38.663040, 17.217230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334530, 38.367035, 17.038267>,  <32.926846, 37.995525, 17.185364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334530, 38.367035, 17.038267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611691, 38.650421, 16.984657>,  <32.777985, 38.820454, 16.952492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611691, 38.650421, 16.984657>,  <32.334530, 38.367035, 17.038267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611691, 38.650421, 16.984657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398223, 0.221058, -0.890254,
		-0.601089, 0.670228, 0.435300,
		0.692900, 0.708468, -0.134025,
		32.819561, 38.862961, 16.944450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003937, 38.944286, 16.746483>,  <32.334530, 38.367035, 17.038267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003937, 38.944286, 16.746483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385719, 39.002560, 16.642342>,  <32.614788, 39.037525, 16.579857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385719, 39.002560, 16.642342>,  <32.003937, 38.944286, 16.746483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385719, 39.002560, 16.642342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279217, 0.128777, -0.951553,
		-0.105099, 0.980914, 0.163590,
		0.954459, 0.145684, -0.260354,
		32.672058, 39.046265, 16.564236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970131, 39.587086, 16.338547>,  <32.003937, 38.944286, 16.746483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970131, 39.587086, 16.338547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326878, 39.431980, 16.245413>,  <32.540924, 39.338917, 16.189531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326878, 39.431980, 16.245413>,  <31.970131, 39.587086, 16.338547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326878, 39.431980, 16.245413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154045, 0.223596, -0.962432,
		0.425258, 0.894228, 0.139685,
		0.891867, -0.387764, -0.232837,
		32.594437, 39.315651, 16.175562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357204, 40.037411, 15.842322>,  <31.970131, 39.587086, 16.338547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357204, 40.037411, 15.842322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531296, 39.679943, 15.798635>,  <32.635750, 39.465462, 15.772424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531296, 39.679943, 15.798635>,  <32.357204, 40.037411, 15.842322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531296, 39.679943, 15.798635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112416, 0.066418, -0.991439,
		0.893275, 0.443779, -0.071556,
		0.435227, -0.893672, -0.109217,
		32.661865, 39.411842, 15.765870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823689, 40.183617, 15.321774>,  <32.357204, 40.037411, 15.842322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823689, 40.183617, 15.321774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784595, 39.785732, 15.334352>,  <32.761139, 39.547001, 15.341898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784595, 39.785732, 15.334352>,  <32.823689, 40.183617, 15.321774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784595, 39.785732, 15.334352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024607, -0.034000, -0.999119,
		0.994908, -0.096877, 0.027800,
		-0.097737, -0.994716, 0.031443,
		32.755276, 39.487316, 15.343784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390854, 40.054585, 14.933147>,  <32.823689, 40.183617, 15.321774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390854, 40.054585, 14.933147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158054, 39.730274, 14.908101>,  <33.018375, 39.535686, 14.893073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158054, 39.730274, 14.908101>,  <33.390854, 40.054585, 14.933147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158054, 39.730274, 14.908101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064300, 0.030876, -0.997453,
		0.810645, -0.584540, 0.034163,
		-0.581996, -0.810777, -0.062615,
		32.983456, 39.487041, 14.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673332, 39.489826, 14.395242>,  <33.390854, 40.054585, 14.933147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673332, 39.489826, 14.395242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294495, 39.367252, 14.433412>,  <33.067192, 39.293709, 14.456313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294495, 39.367252, 14.433412>,  <33.673332, 39.489826, 14.395242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294495, 39.367252, 14.433412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056174, -0.134459, -0.989326,
		0.315997, -0.942346, 0.110132,
		-0.947096, -0.306438, 0.095424,
		33.010365, 39.275322, 14.462039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519524, 38.790844, 14.099521>,  <33.673332, 39.489826, 14.395242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519524, 38.790844, 14.099521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179657, 39.001728, 14.095015>,  <32.975739, 39.128258, 14.092311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179657, 39.001728, 14.095015>,  <33.519524, 38.790844, 14.099521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179657, 39.001728, 14.095015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187918, -0.322677, -0.927667,
		-0.492708, -0.786087, 0.373238,
		-0.849662, 0.527207, -0.011266,
		32.924759, 39.159889, 14.091635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928246, 38.373848, 13.710787>,  <33.519524, 38.790844, 14.099521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928246, 38.373848, 13.710787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778053, 38.744331, 13.724328>,  <32.687939, 38.966621, 13.732453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778053, 38.744331, 13.724328>,  <32.928246, 38.373848, 13.710787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778053, 38.744331, 13.724328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460954, -0.154932, -0.873795,
		-0.804073, -0.343702, 0.485115,
		-0.375485, 0.926210, 0.033854,
		32.665409, 39.022194, 13.734484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220833, 38.330990, 13.613130>,  <32.928246, 38.373848, 13.710787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220833, 38.330990, 13.613130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367886, 38.683640, 13.494754>,  <32.456120, 38.895229, 13.423728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367886, 38.683640, 13.494754>,  <32.220833, 38.330990, 13.613130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367886, 38.683640, 13.494754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, -0.136252, -0.905405,
		-0.838551, 0.451854, 0.304403,
		0.367635, 0.881626, -0.295940,
		32.478176, 38.948128, 13.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683023, 38.730331, 13.279961>,  <32.220833, 38.330990, 13.613130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683023, 38.730331, 13.279961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030785, 38.857037, 13.128278>,  <32.239441, 38.933060, 13.037268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030785, 38.857037, 13.128278>,  <31.683023, 38.730331, 13.279961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030785, 38.857037, 13.128278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375896, -0.074085, -0.923696,
		-0.320686, 0.945607, 0.054661,
		0.869404, 0.316763, -0.379208,
		32.291607, 38.952065, 13.014516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920132, 38.727169, 13.498747>,  <31.683023, 38.730331, 13.279961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920132, 38.727169, 13.498747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909777, 39.119991, 13.424034>,  <30.903563, 39.355686, 13.379207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909777, 39.119991, 13.424034>,  <30.920132, 38.727169, 13.498747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909777, 39.119991, 13.424034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203544, -0.188110, -0.960825,
		-0.978724, 0.013143, 0.204763,
		-0.025889, 0.982060, -0.186782,
		30.902010, 39.414608, 13.367999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773340, 38.087181, 13.453380>,  <30.920132, 38.727169, 13.498747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773340, 38.087181, 13.453380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409866, 37.943432, 13.538363>,  <30.191782, 37.857182, 13.589353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409866, 37.943432, 13.538363>,  <30.773340, 38.087181, 13.453380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409866, 37.943432, 13.538363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331417, -0.311493, 0.890581,
		-0.253875, 0.879671, 0.402153,
		-0.908686, -0.359377, 0.212458,
		30.137260, 37.835617, 13.602099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552469, 38.389091, 14.098332>,  <30.773340, 38.087181, 13.453380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552469, 38.389091, 14.098332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374203, 38.036442, 14.036206>,  <30.267242, 37.824852, 13.998931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374203, 38.036442, 14.036206>,  <30.552469, 38.389091, 14.098332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374203, 38.036442, 14.036206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321357, -0.319490, 0.891434,
		-0.835531, 0.347369, 0.425702,
		-0.445664, -0.881624, -0.155314,
		30.240503, 37.771954, 13.989612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222528, 38.294857, 14.753334>,  <30.552469, 38.389091, 14.098332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222528, 38.294857, 14.753334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192436, 37.929935, 14.592317>,  <30.174381, 37.710983, 14.495706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192436, 37.929935, 14.592317>,  <30.222528, 38.294857, 14.753334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192436, 37.929935, 14.592317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340722, -0.402909, 0.849454,
		-0.937149, -0.073252, 0.341153,
		-0.075229, -0.912304, -0.402544,
		30.169868, 37.656242, 14.471553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809992, 37.891182, 15.229025>,  <30.222528, 38.294857, 14.753334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809992, 37.891182, 15.229025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050827, 37.655376, 15.013632>,  <30.195328, 37.513893, 14.884397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050827, 37.655376, 15.013632>,  <29.809992, 37.891182, 15.229025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050827, 37.655376, 15.013632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369921, -0.391709, 0.842450,
		-0.707565, -0.706425, -0.017770,
		0.602088, -0.589515, -0.538482,
		30.231453, 37.478523, 14.852087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718983, 37.292328, 15.480177>,  <29.809992, 37.891182, 15.229025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718983, 37.292328, 15.480177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075756, 37.229309, 15.310644>,  <30.289820, 37.191498, 15.208924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075756, 37.229309, 15.310644>,  <29.718983, 37.292328, 15.480177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075756, 37.229309, 15.310644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348883, -0.356480, 0.866719,
		-0.287639, -0.920923, -0.262990,
		0.891933, -0.157550, -0.423832,
		30.343336, 37.182045, 15.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969337, 36.648281, 15.795915>,  <29.718983, 37.292328, 15.480177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969337, 36.648281, 15.795915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276064, 36.861351, 15.652666>,  <30.460100, 36.989193, 15.566717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276064, 36.861351, 15.652666>,  <29.969337, 36.648281, 15.795915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276064, 36.861351, 15.652666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543424, -0.241844, 0.803867,
		0.341591, -0.811029, -0.474918,
		0.766815, 0.532676, -0.358122,
		30.506109, 37.021152, 15.545230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538614, 36.308231, 15.902542>,  <29.969337, 36.648281, 15.795915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538614, 36.308231, 15.902542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703316, 36.668797, 15.849010>,  <30.802137, 36.885136, 15.816890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703316, 36.668797, 15.849010>,  <30.538614, 36.308231, 15.902542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703316, 36.668797, 15.849010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615932, -0.167048, 0.769885,
		0.671628, -0.399436, -0.623993,
		0.411756, 0.901413, -0.133831,
		30.826843, 36.939220, 15.808860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211699, 36.248783, 16.051128>,  <30.538614, 36.308231, 15.902542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211699, 36.248783, 16.051128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132257, 36.636444, 16.109516>,  <31.084593, 36.869041, 16.144548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132257, 36.636444, 16.109516>,  <31.211699, 36.248783, 16.051128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132257, 36.636444, 16.109516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606605, 0.004571, 0.794990,
		0.769797, 0.246431, -0.588799,
		-0.198602, 0.969149, 0.145968,
		31.072678, 36.927189, 16.153307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793161, 36.569469, 16.346151>,  <31.211699, 36.248783, 16.051128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793161, 36.569469, 16.346151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510252, 36.840004, 16.428446>,  <31.340506, 37.002327, 16.477823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.510252, 36.840004, 16.428446>,  <31.793161, 36.569469, 16.346151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510252, 36.840004, 16.428446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329824, 0.058286, 0.942241,
		0.625284, 0.734280, -0.264297,
		-0.707274, 0.676340, 0.205737,
		31.298069, 37.042908, 16.490168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111729, 37.073223, 16.775145>,  <31.793161, 36.569469, 16.346151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111729, 37.073223, 16.775145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717175, 37.095364, 16.837097>,  <31.480444, 37.108646, 16.874269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717175, 37.095364, 16.837097>,  <32.111729, 37.073223, 16.775145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717175, 37.095364, 16.837097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164299, 0.375405, 0.912183,
		-0.007652, 0.925207, -0.379386,
		-0.986381, 0.055353, 0.154883,
		31.421261, 37.111969, 16.883562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011177, 37.723957, 17.101639>,  <32.111729, 37.073223, 16.775145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011177, 37.723957, 17.101639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653786, 37.579472, 17.208385>,  <31.439350, 37.492783, 17.272434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653786, 37.579472, 17.208385>,  <32.011177, 37.723957, 17.101639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653786, 37.579472, 17.208385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217531, 0.171787, 0.960817,
		-0.392902, 0.916524, -0.074914,
		-0.893481, -0.361211, 0.266868,
		31.385742, 37.471107, 17.288446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695038, 38.169022, 17.519396>,  <32.011177, 37.723957, 17.101639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695038, 38.169022, 17.519396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520750, 37.823700, 17.621254>,  <31.416178, 37.616505, 17.682369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520750, 37.823700, 17.621254>,  <31.695038, 38.169022, 17.519396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520750, 37.823700, 17.621254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039725, 0.301084, 0.952770,
		-0.899204, 0.405027, -0.165484,
		-0.435722, -0.863309, 0.254646,
		31.390034, 37.564709, 17.697647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195885, 38.293568, 18.080509>,  <31.695038, 38.169022, 17.519396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195885, 38.293568, 18.080509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262691, 37.899521, 18.096773>,  <31.302774, 37.663094, 18.106531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262691, 37.899521, 18.096773>,  <31.195885, 38.293568, 18.080509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262691, 37.899521, 18.096773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117227, 0.060789, 0.991243,
		-0.978961, -0.160786, 0.125635,
		0.167015, -0.985115, 0.040662,
		31.312796, 37.603985, 18.108973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884119, 38.115387, 18.755119>,  <31.195885, 38.293568, 18.080509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884119, 38.115387, 18.755119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085562, 37.788132, 18.644096>,  <31.206427, 37.591778, 18.577482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085562, 37.788132, 18.644096>,  <30.884119, 38.115387, 18.755119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085562, 37.788132, 18.644096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136744, -0.241733, 0.960659,
		-0.853043, -0.521747, -0.009863,
		0.503606, -0.818135, -0.277555,
		31.236643, 37.542690, 18.560829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567741, 37.673386, 19.110764>,  <30.884119, 38.115387, 18.755119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567741, 37.673386, 19.110764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916607, 37.501110, 19.017950>,  <31.125927, 37.397747, 18.962261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916607, 37.501110, 19.017950>,  <30.567741, 37.673386, 19.110764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916607, 37.501110, 19.017950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225357, -0.067285, 0.971950,
		-0.434219, -0.899989, 0.038375,
		0.872163, -0.430687, -0.232036,
		31.178255, 37.371902, 18.948339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587404, 37.187149, 19.586327>,  <30.567741, 37.673386, 19.110764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587404, 37.187149, 19.586327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956961, 37.230782, 19.439615>,  <31.178694, 37.256962, 19.351587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.956961, 37.230782, 19.439615>,  <30.587404, 37.187149, 19.586327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956961, 37.230782, 19.439615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382630, -0.252072, 0.888850,
		0.004500, -0.961541, -0.274624,
		0.923891, 0.109079, -0.366780,
		31.234127, 37.263504, 19.329580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942139, 36.550068, 19.853699>,  <30.587404, 37.187149, 19.586327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942139, 36.550068, 19.853699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217909, 36.831257, 19.783823>,  <31.383371, 36.999969, 19.741898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217909, 36.831257, 19.783823>,  <30.942139, 36.550068, 19.853699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217909, 36.831257, 19.783823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439184, -0.213887, 0.872565,
		0.576027, -0.678291, -0.456195,
		0.689427, 0.702974, -0.174690,
		31.424738, 37.042149, 19.731417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605721, 36.282909, 20.049250>,  <30.942139, 36.550068, 19.853699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605721, 36.282909, 20.049250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665991, 36.677505, 20.074966>,  <31.702152, 36.914265, 20.090397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665991, 36.677505, 20.074966>,  <31.605721, 36.282909, 20.049250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665991, 36.677505, 20.074966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520724, -0.134478, 0.843067,
		0.840324, -0.093552, -0.533952,
		0.150675, 0.986491, 0.064290,
		31.711193, 36.973454, 20.094254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205143, 36.248432, 20.205256>,  <31.605721, 36.282909, 20.049250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205143, 36.248432, 20.205256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058674, 36.603226, 20.317810>,  <31.970793, 36.816101, 20.385344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058674, 36.603226, 20.317810>,  <32.205143, 36.248432, 20.205256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058674, 36.603226, 20.317810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393910, -0.126211, 0.910442,
		0.843060, 0.444223, -0.303176,
		-0.366175, 0.886982, 0.281387,
		31.948822, 36.869320, 20.402225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768387, 36.576271, 20.554363>,  <32.205143, 36.248432, 20.205256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768387, 36.576271, 20.554363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447124, 36.785965, 20.667580>,  <32.254368, 36.911781, 20.735510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447124, 36.785965, 20.667580>,  <32.768387, 36.576271, 20.554363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447124, 36.785965, 20.667580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398795, 0.120119, 0.909139,
		0.442605, 0.843058, -0.305538,
		-0.803158, 0.524237, 0.283042,
		32.206177, 36.943237, 20.752493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.853256, 37.139854, 23.525459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464245, 37.175194, 23.611603>,  <36.230839, 37.196396, 23.663288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464245, 37.175194, 23.611603>,  <36.853256, 37.139854, 23.525459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464245, 37.175194, 23.611603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223726, 0.099303, 0.969580,
		0.064276, 0.991127, -0.116341,
		-0.972530, 0.088350, 0.215358,
		36.172485, 37.201698, 23.676210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798466, 37.704849, 23.919588>,  <36.853256, 37.139854, 23.525459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798466, 37.704849, 23.919588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462669, 37.502045, 23.997759>,  <36.261192, 37.380363, 24.044661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462669, 37.502045, 23.997759>,  <36.798466, 37.704849, 23.919588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462669, 37.502045, 23.997759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202790, 0.041330, 0.978350,
		-0.504112, 0.860947, 0.068120,
		-0.839492, -0.507012, 0.195427,
		36.210823, 37.349941, 24.056387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472904, 38.044468, 24.488033>,  <36.798466, 37.704849, 23.919588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472904, 38.044468, 24.488033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333546, 37.670208, 24.465511>,  <36.249931, 37.445652, 24.451998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333546, 37.670208, 24.465511>,  <36.472904, 38.044468, 24.488033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333546, 37.670208, 24.465511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215503, -0.138415, 0.966643,
		-0.912236, 0.324645, 0.249860,
		-0.348401, -0.935653, -0.056305,
		36.229027, 37.389511, 24.448620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950779, 38.142086, 24.893747>,  <36.472904, 38.044468, 24.488033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950779, 38.142086, 24.893747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065208, 37.758904, 24.902481>,  <36.133865, 37.528992, 24.907721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065208, 37.758904, 24.902481>,  <35.950779, 38.142086, 24.893747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065208, 37.758904, 24.902481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070208, 0.043679, 0.996575,
		-0.955631, -0.283562, 0.079752,
		0.286075, -0.957958, 0.021832,
		36.151031, 37.471516, 24.909031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547199, 37.854092, 25.428986>,  <35.950779, 38.142086, 24.893747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547199, 37.854092, 25.428986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.839531, 37.589169, 25.362978>,  <36.014931, 37.430214, 25.323374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.839531, 37.589169, 25.362978>,  <35.547199, 37.854092, 25.428986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839531, 37.589169, 25.362978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096555, -0.139019, 0.985571,
		-0.675693, -0.736221, -0.037651,
		0.730833, -0.662309, -0.165020,
		36.058781, 37.390476, 25.313473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431416, 37.470757, 25.923443>,  <35.547199, 37.854092, 25.428986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431416, 37.470757, 25.923443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807087, 37.371098, 25.828899>,  <36.032490, 37.311302, 25.772173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807087, 37.371098, 25.828899>,  <35.431416, 37.470757, 25.923443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807087, 37.371098, 25.828899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239268, -0.019000, 0.970767,
		-0.246358, -0.968278, 0.041770,
		0.939180, -0.249150, -0.236359,
		36.088840, 37.296352, 25.757992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573231, 36.843994, 26.300104>,  <35.431416, 37.470757, 25.923443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573231, 36.843994, 26.300104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.906101, 37.041599, 26.199358>,  <36.105824, 37.160164, 26.138910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.906101, 37.041599, 26.199358>,  <35.573231, 36.843994, 26.300104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906101, 37.041599, 26.199358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362361, -0.140655, 0.921364,
		0.419742, -0.858000, -0.296062,
		0.832172, 0.494016, -0.251867,
		36.155754, 37.189804, 26.123798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108475, 36.489063, 26.709177>,  <35.573231, 36.843994, 26.300104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108475, 36.489063, 26.709177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276978, 36.834049, 26.596962>,  <36.378078, 37.041039, 26.529633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276978, 36.834049, 26.596962>,  <36.108475, 36.489063, 26.709177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276978, 36.834049, 26.596962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617288, -0.046035, 0.785389,
		0.664454, -0.504023, -0.551780,
		0.421256, 0.862463, -0.280539,
		36.403355, 37.092789, 26.512800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920746, 36.432255, 26.697950>,  <36.108475, 36.489063, 26.709177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920746, 36.432255, 26.697950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819851, 36.813679, 26.763802>,  <36.759315, 37.042534, 26.803312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819851, 36.813679, 26.763802>,  <36.920746, 36.432255, 26.697950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819851, 36.813679, 26.763802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555573, 0.003411, 0.831461,
		0.792286, 0.301186, -0.530632,
		-0.252235, 0.953559, 0.164628,
		36.744179, 37.099747, 26.813190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264420, 36.531006, 27.263784>,  <36.920746, 36.432255, 26.697950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264420, 36.531006, 27.263784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023605, 36.849766, 27.243771>,  <36.879116, 37.041023, 27.231762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023605, 36.849766, 27.243771>,  <37.264420, 36.531006, 27.263784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023605, 36.849766, 27.243771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125625, 0.156414, 0.979670,
		0.788524, 0.583512, -0.194277,
		-0.602037, 0.796899, -0.050033,
		36.842995, 37.088837, 27.228762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497639, 37.033100, 27.750744>,  <37.264420, 36.531006, 27.263784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497639, 37.033100, 27.750744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127205, 37.164021, 27.675652>,  <36.904945, 37.242573, 27.630596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127205, 37.164021, 27.675652>,  <37.497639, 37.033100, 27.750744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127205, 37.164021, 27.675652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126854, 0.198504, 0.971856,
		0.355358, 0.923833, -0.142311,
		-0.926082, 0.327304, -0.187732,
		36.849380, 37.262211, 27.619331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514584, 37.687893, 28.104769>,  <37.497639, 37.033100, 27.750744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514584, 37.687893, 28.104769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132820, 37.582050, 28.049507>,  <36.903763, 37.518547, 28.016350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132820, 37.582050, 28.049507>,  <37.514584, 37.687893, 28.104769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132820, 37.582050, 28.049507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232607, 0.369216, 0.899763,
		-0.187073, 0.890878, -0.413932,
		-0.954410, -0.264604, -0.138154,
		36.846497, 37.502670, 28.008060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955753, 38.309341, 28.277163>,  <37.514584, 37.687893, 28.104769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955753, 38.309341, 28.277163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784607, 37.948135, 28.292606>,  <36.681919, 37.731411, 28.301872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784607, 37.948135, 28.292606>,  <36.955753, 38.309341, 28.277163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784607, 37.948135, 28.292606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486853, 0.266249, 0.831916,
		-0.761514, 0.337153, -0.553556,
		-0.427867, -0.903017, 0.038608,
		36.656246, 37.677231, 28.304190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960293, 38.792072, 28.791435>,  <36.955753, 38.309341, 28.277163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960293, 38.792072, 28.791435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846268, 38.919571, 29.153017>,  <36.777851, 38.996071, 29.369967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846268, 38.919571, 29.153017>,  <36.960293, 38.792072, 28.791435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846268, 38.919571, 29.153017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688747, 0.587763, -0.424454,
		-0.666607, -0.743595, 0.051986,
		-0.285067, 0.318749, 0.903956,
		36.760746, 39.015194, 29.424204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252876, 38.516956, 29.015203>,  <36.960293, 38.792072, 28.791435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252876, 38.516956, 29.015203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357872, 38.879951, 29.146397>,  <36.420868, 39.097748, 29.225113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357872, 38.879951, 29.146397>,  <36.252876, 38.516956, 29.015203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357872, 38.879951, 29.146397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813407, 0.390951, -0.430727,
		-0.519103, -0.153721, 0.840775,
		0.262490, 0.907484, 0.327981,
		36.436619, 39.152195, 29.244791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649075, 38.816906, 29.255829>,  <36.252876, 38.516956, 29.015203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649075, 38.816906, 29.255829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 39.107441, 29.182068>,  <36.072845, 39.281761, 29.137812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 39.107441, 29.182068>,  <35.649075, 38.816906, 29.255829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913933, 39.107441, 29.182068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652972, 0.438483, -0.617543,
		-0.367687, 0.529310, 0.764616,
		0.662143, 0.726336, -0.184400,
		36.112576, 39.325340, 29.126747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212845, 39.247143, 28.932095>,  <35.649075, 38.816906, 29.255829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212845, 39.247143, 28.932095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561035, 39.416866, 28.832310>,  <35.769951, 39.518700, 28.772438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561035, 39.416866, 28.832310>,  <35.212845, 39.247143, 28.932095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561035, 39.416866, 28.832310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444186, 0.458836, -0.769525,
		-0.212053, 0.780662, 0.587878,
		0.870478, 0.424308, -0.249461,
		35.822178, 39.544159, 28.757471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094154, 39.977596, 28.808685>,  <35.212845, 39.247143, 28.932095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094154, 39.977596, 28.808685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429668, 39.880074, 28.613955>,  <35.630978, 39.821560, 28.497116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429668, 39.880074, 28.613955>,  <35.094154, 39.977596, 28.808685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429668, 39.880074, 28.613955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344425, 0.454893, -0.821245,
		0.421678, 0.856523, 0.297584,
		0.838784, -0.243806, -0.486826,
		35.681305, 39.806931, 28.467907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259674, 40.653561, 28.387169>,  <35.094154, 39.977596, 28.808685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259674, 40.653561, 28.387169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463287, 40.347515, 28.229443>,  <35.585457, 40.163887, 28.134808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463287, 40.347515, 28.229443>,  <35.259674, 40.653561, 28.387169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463287, 40.347515, 28.229443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137367, 0.380026, -0.914719,
		0.849713, 0.519791, 0.088346,
		0.509037, -0.765112, -0.394315,
		35.615997, 40.117981, 28.111149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672966, 41.019287, 27.911251>,  <35.259674, 40.653561, 28.387169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672966, 41.019287, 27.911251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.670601, 40.640900, 27.781570>,  <35.669182, 40.413868, 27.703762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.670601, 40.640900, 27.781570>,  <35.672966, 41.019287, 27.911251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670601, 40.640900, 27.781570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111726, 0.322801, -0.939849,
		0.993721, 0.030662, -0.107599,
		-0.005915, -0.945970, -0.324200,
		35.668827, 40.357109, 27.684311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161629, 40.953903, 27.284883>,  <35.672966, 41.019287, 27.911251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161629, 40.953903, 27.284883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.891975, 40.659882, 27.255917>,  <35.730183, 40.483471, 27.238537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.891975, 40.659882, 27.255917>,  <36.161629, 40.953903, 27.284883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891975, 40.659882, 27.255917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270137, 0.336621, -0.902060,
		0.687439, -0.588544, -0.425492,
		-0.674131, -0.735052, -0.072419,
		35.689735, 40.439365, 27.234192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148460, 40.781517, 26.664768>,  <36.161629, 40.953903, 27.284883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148460, 40.781517, 26.664768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.790451, 40.634937, 26.766472>,  <35.575645, 40.546989, 26.827494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.790451, 40.634937, 26.766472>,  <36.148460, 40.781517, 26.664768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790451, 40.634937, 26.766472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346276, 0.211608, -0.913956,
		0.281121, -0.906054, -0.316288,
		-0.895022, -0.366455, 0.254257,
		35.521946, 40.525002, 26.842749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025295, 40.259274, 26.208851>,  <36.148460, 40.781517, 26.664768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025295, 40.259274, 26.208851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658840, 40.345631, 26.343952>,  <35.438965, 40.397446, 26.425013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658840, 40.345631, 26.343952>,  <36.025295, 40.259274, 26.208851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658840, 40.345631, 26.343952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364946, -0.100644, -0.925573,
		-0.165839, -0.971215, 0.170996,
		-0.916140, 0.215900, 0.337750,
		35.383999, 40.410400, 26.445278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800461, 39.801735, 25.880419>,  <36.025295, 40.259274, 26.208851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800461, 39.801735, 25.880419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.519672, 40.049564, 26.020912>,  <35.351200, 40.198261, 26.105207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.519672, 40.049564, 26.020912>,  <35.800461, 39.801735, 25.880419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519672, 40.049564, 26.020912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481910, -0.050092, -0.874788,
		-0.524398, -0.783341, 0.333741,
		-0.701975, 0.619570, 0.351232,
		35.309078, 40.235435, 26.126282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229206, 39.493591, 25.545900>,  <35.800461, 39.801735, 25.880419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229206, 39.493591, 25.545900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083633, 39.849075, 25.657433>,  <34.996288, 40.062366, 25.724352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083633, 39.849075, 25.657433>,  <35.229206, 39.493591, 25.545900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083633, 39.849075, 25.657433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485991, 0.074198, -0.870808,
		-0.794586, -0.452424, 0.404903,
		-0.363931, 0.888711, 0.278831,
		34.974453, 40.115688, 25.741081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523273, 39.413872, 25.462515>,  <35.229206, 39.493591, 25.545900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523273, 39.413872, 25.462515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638378, 39.793179, 25.408867>,  <34.707443, 40.020763, 25.376678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638378, 39.793179, 25.408867>,  <34.523273, 39.413872, 25.462515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638378, 39.793179, 25.408867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500052, 0.029334, -0.865498,
		-0.816786, 0.316128, 0.482622,
		0.287765, 0.948263, -0.134121,
		34.724709, 40.077656, 25.368631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918541, 39.748108, 25.193842>,  <34.523273, 39.413872, 25.462515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918541, 39.748108, 25.193842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222652, 39.991230, 25.102152>,  <34.405121, 40.137104, 25.047138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222652, 39.991230, 25.102152>,  <33.918541, 39.748108, 25.193842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222652, 39.991230, 25.102152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376575, 0.124862, -0.917933,
		-0.529302, 0.784209, 0.323814,
		0.760283, 0.607804, -0.229224,
		34.450737, 40.173573, 25.033384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603210, 40.311966, 25.012985>,  <33.918541, 39.748108, 25.193842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603210, 40.311966, 25.012985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964764, 40.288860, 24.843445>,  <34.181698, 40.274998, 24.741720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964764, 40.288860, 24.843445>,  <33.603210, 40.311966, 25.012985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964764, 40.288860, 24.843445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412714, 0.142793, -0.899598,
		0.112490, 0.988065, 0.105228,
		0.903888, -0.057767, -0.423851,
		34.235931, 40.271530, 24.716290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288101, 40.801441, 25.611284>,  <33.603210, 40.311966, 25.012985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288101, 40.801441, 25.611284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.896782, 40.872765, 25.653507>,  <32.661991, 40.915558, 25.678841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.896782, 40.872765, 25.653507>,  <33.288101, 40.801441, 25.611284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896782, 40.872765, 25.653507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065232, -0.218492, 0.973656,
		0.196675, 0.959410, 0.202118,
		-0.978296, 0.178309, 0.105556,
		32.603294, 40.926258, 25.685175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208668, 41.355892, 26.143896>,  <33.288101, 40.801441, 25.611284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208668, 41.355892, 26.143896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855663, 41.168190, 26.131397>,  <32.643860, 41.055569, 26.123898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855663, 41.168190, 26.131397>,  <33.208668, 41.355892, 26.143896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855663, 41.168190, 26.131397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008125, -0.081648, 0.996628,
		-0.470222, 0.879281, 0.075868,
		-0.882511, -0.469253, -0.031248,
		32.590912, 41.027412, 26.122023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751408, 41.493748, 26.791576>,  <33.208668, 41.355892, 26.143896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751408, 41.493748, 26.791576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.564541, 41.169521, 26.650307>,  <32.452419, 40.974983, 26.565544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.564541, 41.169521, 26.650307>,  <32.751408, 41.493748, 26.791576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564541, 41.169521, 26.650307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222948, -0.278543, 0.934188,
		-0.855599, 0.515161, -0.050589,
		-0.467166, -0.810570, -0.353175,
		32.424393, 40.926350, 26.544353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311340, 41.471260, 27.294508>,  <32.751408, 41.493748, 26.791576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311340, 41.471260, 27.294508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.295242, 41.110138, 27.123245>,  <32.285583, 40.893463, 27.020489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.295242, 41.110138, 27.123245>,  <32.311340, 41.471260, 27.294508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295242, 41.110138, 27.123245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072168, -0.424757, 0.902427,
		-0.996580, 0.067217, -0.048059,
		-0.040245, -0.902809, -0.428155,
		32.283169, 40.839294, 26.994799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643539, 41.152538, 27.498714>,  <32.311340, 41.471260, 27.294508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643539, 41.152538, 27.498714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.919973, 40.874046, 27.421085>,  <32.085835, 40.706951, 27.374508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.919973, 40.874046, 27.421085>,  <31.643539, 41.152538, 27.498714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919973, 40.874046, 27.421085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242776, -0.476514, 0.844982,
		-0.680781, -0.536838, -0.498340,
		0.691084, -0.696232, -0.194071,
		32.127300, 40.665176, 27.362864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297310, 40.537231, 27.656349>,  <31.643539, 41.152538, 27.498714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297310, 40.537231, 27.656349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.691339, 40.468739, 27.649343>,  <31.927757, 40.427643, 27.645140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.691339, 40.468739, 27.649343>,  <31.297310, 40.537231, 27.656349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691339, 40.468739, 27.649343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088095, -0.588949, 0.803355,
		-0.147877, -0.789821, -0.595244,
		0.985074, -0.171236, -0.017513,
		31.986862, 40.417366, 27.644089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327261, 39.776035, 27.870684>,  <31.297310, 40.537231, 27.656349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327261, 39.776035, 27.870684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.679241, 39.958626, 27.923330>,  <31.890429, 40.068180, 27.954918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.679241, 39.958626, 27.923330>,  <31.327261, 39.776035, 27.870684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679241, 39.958626, 27.923330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130922, -0.499324, 0.856467,
		0.456672, -0.736416, -0.499142,
		0.879949, 0.456473, 0.131614,
		31.943226, 40.095566, 27.962814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720055, 39.224159, 28.137014>,  <31.327261, 39.776035, 27.870684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720055, 39.224159, 28.137014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.956720, 39.532356, 28.231907>,  <32.098721, 39.717274, 28.288841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.956720, 39.532356, 28.231907>,  <31.720055, 39.224159, 28.137014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956720, 39.532356, 28.231907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235163, -0.446413, 0.863373,
		0.771123, -0.455040, -0.445318,
		0.591665, 0.770490, 0.237231,
		32.134220, 39.763504, 28.303076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396008, 38.958591, 28.365168>,  <31.720055, 39.224159, 28.137014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396008, 38.958591, 28.365168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.353554, 39.320900, 28.529268>,  <32.328083, 39.538284, 28.627729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.353554, 39.320900, 28.529268>,  <32.396008, 38.958591, 28.365168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353554, 39.320900, 28.529268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231314, -0.378775, 0.896116,
		0.967073, 0.190005, -0.169318,
		-0.106133, 0.905775, 0.410254,
		32.321712, 39.592632, 28.652344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949749, 39.050266, 28.765612>,  <32.396008, 38.958591, 28.365168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949749, 39.050266, 28.765612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 39.325256, 28.903061>,  <32.540298, 39.490250, 28.985531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 39.325256, 28.903061>,  <32.949749, 39.050266, 28.765612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693844, 39.325256, 28.903061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008544, -0.453431, 0.891250,
		0.768522, 0.567256, 0.295963,
		-0.639766, 0.687474, 0.343625,
		32.501915, 39.531498, 29.006149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175526, 39.309658, 29.530952>,  <32.949749, 39.050266, 28.765612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175526, 39.309658, 29.530952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.791748, 39.409698, 29.478922>,  <32.561481, 39.469723, 29.447704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.791748, 39.409698, 29.478922>,  <33.175526, 39.309658, 29.530952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791748, 39.409698, 29.478922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183648, -0.204457, 0.961494,
		0.213875, 0.946387, 0.242095,
		-0.959443, 0.250100, -0.130074,
		32.503914, 39.484730, 29.439899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024258, 39.770512, 30.127552>,  <33.175526, 39.309658, 29.530952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024258, 39.770512, 30.127552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.686409, 39.602146, 29.995222>,  <32.483700, 39.501125, 29.915825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.686409, 39.602146, 29.995222>,  <33.024258, 39.770512, 30.127552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686409, 39.602146, 29.995222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176265, -0.364853, 0.914228,
		-0.505517, 0.830489, 0.233969,
		-0.844620, -0.420917, -0.330826,
		32.433022, 39.475872, 29.895975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.331600, 42.770325, 22.260691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056454, 42.482422, 22.298201>,  <31.891367, 42.309681, 22.320707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056454, 42.482422, 22.298201>,  <32.331600, 42.770325, 22.260691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056454, 42.482422, 22.298201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195494, -0.059293, 0.978911,
		-0.699018, 0.691689, 0.181494,
		-0.687863, -0.719757, 0.093774,
		31.850094, 42.266495, 22.326332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037857, 42.876057, 22.833735>,  <32.331600, 42.770325, 22.260691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037857, 42.876057, 22.833735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897335, 42.507080, 22.769629>,  <31.813023, 42.285694, 22.731165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897335, 42.507080, 22.769629>,  <32.037857, 42.876057, 22.833735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897335, 42.507080, 22.769629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061078, -0.193389, 0.979219,
		-0.934268, 0.334214, 0.124279,
		-0.351303, -0.922444, -0.160264,
		31.791945, 42.230347, 22.721550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350323, 42.806839, 23.231659>,  <32.037857, 42.876057, 22.833735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350323, 42.806839, 23.231659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488371, 42.440052, 23.151594>,  <31.571199, 42.219978, 23.103556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488371, 42.440052, 23.151594>,  <31.350323, 42.806839, 23.231659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488371, 42.440052, 23.151594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004084, -0.214730, 0.976665,
		-0.938549, -0.336250, -0.077853,
		0.345121, -0.916966, -0.200162,
		31.591908, 42.164963, 23.091545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915144, 42.350327, 23.568947>,  <31.350323, 42.806839, 23.231659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915144, 42.350327, 23.568947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247955, 42.137123, 23.507456>,  <31.447643, 42.009201, 23.470560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247955, 42.137123, 23.507456>,  <30.915144, 42.350327, 23.568947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247955, 42.137123, 23.507456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032879, -0.229252, 0.972812,
		-0.553756, -0.814462, -0.173219,
		0.832029, -0.533005, -0.153729,
		31.497564, 41.977222, 23.461338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845226, 41.703053, 24.033344>,  <30.915144, 42.350327, 23.568947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845226, 41.703053, 24.033344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238033, 41.731503, 23.963390>,  <31.473717, 41.748573, 23.921419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238033, 41.731503, 23.963390>,  <30.845226, 41.703053, 24.033344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238033, 41.731503, 23.963390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188788, -0.364126, 0.912015,
		0.001185, -0.928630, -0.371005,
		0.982017, 0.071123, -0.174883,
		31.532639, 41.752838, 23.910925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030773, 41.130405, 24.248251>,  <30.845226, 41.703053, 24.033344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030773, 41.130405, 24.248251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381136, 41.323387, 24.246210>,  <31.591352, 41.439178, 24.244986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381136, 41.323387, 24.246210>,  <31.030773, 41.130405, 24.248251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381136, 41.323387, 24.246210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294750, -0.526689, 0.797321,
		0.381986, -0.699882, -0.603534,
		0.875905, 0.482457, -0.005103,
		31.643908, 41.468124, 24.244678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575413, 40.680180, 24.527117>,  <31.030773, 41.130405, 24.248251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575413, 40.680180, 24.527117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776630, 41.024014, 24.563017>,  <31.897362, 41.230316, 24.584557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776630, 41.024014, 24.563017>,  <31.575413, 40.680180, 24.527117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776630, 41.024014, 24.563017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406595, -0.327015, 0.853078,
		0.762645, -0.392644, -0.514007,
		0.503044, 0.859588, 0.089749,
		31.927544, 41.281891, 24.589941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183422, 40.460510, 24.665640>,  <31.575413, 40.680180, 24.527117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183422, 40.460510, 24.665640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146343, 40.831341, 24.810930>,  <32.124096, 41.053841, 24.898106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146343, 40.831341, 24.810930>,  <32.183422, 40.460510, 24.665640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146343, 40.831341, 24.810930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381996, -0.303770, 0.872813,
		0.919503, 0.219661, -0.325981,
		-0.092700, 0.927078, 0.363227,
		32.118534, 41.109463, 24.919899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815136, 40.622150, 24.870441>,  <32.183422, 40.460510, 24.665640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815136, 40.622150, 24.870441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552128, 40.844597, 25.073776>,  <32.394321, 40.978065, 25.195776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552128, 40.844597, 25.073776>,  <32.815136, 40.622150, 24.870441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552128, 40.844597, 25.073776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438905, -0.265675, 0.858358,
		0.612395, 0.787500, -0.069393,
		-0.657522, 0.556111, 0.508336,
		32.354870, 41.011429, 25.226276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560780, 40.903259, 24.564392>,  <32.815136, 40.622150, 24.870441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560780, 40.903259, 24.564392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878330, 40.686733, 24.453587>,  <34.068863, 40.556820, 24.387104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878330, 40.686733, 24.453587>,  <33.560780, 40.903259, 24.564392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878330, 40.686733, 24.453587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098001, 0.335706, -0.936855,
		0.600125, 0.770898, 0.213461,
		0.793880, -0.541311, -0.277014,
		34.116493, 40.524342, 24.370481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009228, 41.285458, 24.169651>,  <33.560780, 40.903259, 24.564392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009228, 41.285458, 24.169651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110275, 40.908142, 24.083496>,  <34.170906, 40.681751, 24.031803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110275, 40.908142, 24.083496>,  <34.009228, 41.285458, 24.169651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110275, 40.908142, 24.083496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026550, 0.229281, -0.972998,
		0.967201, 0.240081, 0.082966,
		0.252621, -0.943288, -0.215386,
		34.186062, 40.625156, 24.018881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397118, 41.364819, 23.614889>,  <34.009228, 41.285458, 24.169651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397118, 41.364819, 23.614889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316090, 40.974525, 23.581654>,  <34.267471, 40.740349, 23.561712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316090, 40.974525, 23.581654>,  <34.397118, 41.364819, 23.614889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316090, 40.974525, 23.581654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183841, 0.045445, -0.981905,
		0.961856, -0.214183, 0.170174,
		-0.202574, -0.975736, -0.083087,
		34.255318, 40.681805, 23.556728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718414, 41.227150, 22.990917>,  <34.397118, 41.364819, 23.614889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718414, 41.227150, 22.990917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486492, 40.907402, 23.053951>,  <34.347340, 40.715553, 23.091772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486492, 40.907402, 23.053951>,  <34.718414, 41.227150, 22.990917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486492, 40.907402, 23.053951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122623, -0.105597, -0.986820,
		0.805477, -0.591484, -0.036796,
		-0.579802, -0.799372, 0.157586,
		34.312553, 40.667591, 23.101227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045589, 40.826015, 22.544424>,  <34.718414, 41.227150, 22.990917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045589, 40.826015, 22.544424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670204, 40.706287, 22.613352>,  <34.444973, 40.634449, 22.654709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670204, 40.706287, 22.613352>,  <35.045589, 40.826015, 22.544424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670204, 40.706287, 22.613352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164109, -0.052559, -0.985041,
		0.303902, -0.952703, 0.000203,
		-0.938463, -0.299322, 0.172320,
		34.388664, 40.616489, 22.665049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894108, 40.135040, 22.179817>,  <35.045589, 40.826015, 22.544424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894108, 40.135040, 22.179817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558113, 40.344666, 22.236059>,  <34.356514, 40.470440, 22.269804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558113, 40.344666, 22.236059>,  <34.894108, 40.135040, 22.179817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558113, 40.344666, 22.236059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141941, 0.037875, -0.989150,
		-0.523705, -0.850835, 0.042572,
		-0.839992, 0.524066, 0.140604,
		34.306114, 40.501884, 22.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513790, 39.828129, 21.786869>,  <34.894108, 40.135040, 22.179817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513790, 39.828129, 21.786869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291306, 40.152859, 21.857941>,  <34.157814, 40.347694, 21.900583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291306, 40.152859, 21.857941>,  <34.513790, 39.828129, 21.786869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291306, 40.152859, 21.857941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134845, 0.122803, -0.983228,
		-0.820026, -0.570844, 0.041165,
		-0.556214, 0.811823, 0.177677,
		34.124443, 40.396404, 21.911243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889091, 39.834782, 21.291746>,  <34.513790, 39.828129, 21.786869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889091, 39.834782, 21.291746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915730, 40.217384, 21.405348>,  <33.931713, 40.446945, 21.473509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915730, 40.217384, 21.405348>,  <33.889091, 39.834782, 21.291746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915730, 40.217384, 21.405348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212951, 0.291701, -0.932503,
		-0.974791, 0.001622, 0.223115,
		0.066595, 0.956508, 0.284002,
		33.935707, 40.504337, 21.490549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274426, 40.086395, 21.042973>,  <33.889091, 39.834782, 21.291746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274426, 40.086395, 21.042973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552990, 40.369274, 21.091757>,  <33.720131, 40.539001, 21.121027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552990, 40.369274, 21.091757>,  <33.274426, 40.086395, 21.042973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552990, 40.369274, 21.091757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052182, 0.219402, -0.974238,
		-0.715742, 0.672108, 0.189698,
		0.696413, 0.707201, 0.121963,
		33.761913, 40.581436, 21.128345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983276, 40.597710, 20.617054>,  <33.274426, 40.086395, 21.042973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983276, 40.597710, 20.617054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363358, 40.709606, 20.671988>,  <33.591408, 40.776745, 20.704947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363358, 40.709606, 20.671988>,  <32.983276, 40.597710, 20.617054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363358, 40.709606, 20.671988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066960, 0.247121, -0.966668,
		-0.304356, 0.927726, 0.216083,
		0.950202, 0.279743, 0.137333,
		33.648418, 40.793530, 20.713188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059422, 41.319653, 20.332743>,  <32.983276, 40.597710, 20.617054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059422, 41.319653, 20.332743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439423, 41.204903, 20.382055>,  <33.667423, 41.136051, 20.411642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439423, 41.204903, 20.382055>,  <33.059422, 41.319653, 20.332743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439423, 41.204903, 20.382055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232253, 0.385325, -0.893075,
		0.208701, 0.877055, 0.432687,
		0.950001, -0.286878, 0.123281,
		33.724422, 41.118839, 20.419039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443394, 41.924911, 20.134102>,  <33.059422, 41.319653, 20.332743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443394, 41.924911, 20.134102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690155, 41.614040, 20.084412>,  <33.838211, 41.427517, 20.054598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690155, 41.614040, 20.084412>,  <33.443394, 41.924911, 20.134102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690155, 41.614040, 20.084412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165116, 0.282126, -0.945062,
		0.769526, 0.562498, 0.302368,
		0.616901, -0.777175, -0.124226,
		33.875225, 41.380886, 20.047144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064247, 42.196968, 19.768652>,  <33.443394, 41.924911, 20.134102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064247, 42.196968, 19.768652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046452, 41.803928, 19.696516>,  <34.035774, 41.568104, 19.653234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046452, 41.803928, 19.696516>,  <34.064247, 42.196968, 19.768652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046452, 41.803928, 19.696516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073961, 0.176782, -0.981467,
		0.996268, -0.057006, 0.064809,
		-0.044492, -0.982598, -0.180338,
		34.033104, 41.509148, 19.642414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626083, 42.045872, 19.233376>,  <34.064247, 42.196968, 19.768652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626083, 42.045872, 19.233376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381050, 41.730530, 19.210619>,  <34.234032, 41.541325, 19.196966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381050, 41.730530, 19.210619>,  <34.626083, 42.045872, 19.233376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381050, 41.730530, 19.210619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183724, -0.072016, -0.980336,
		0.768757, -0.610990, 0.188956,
		-0.612583, -0.788356, -0.056891,
		34.197273, 41.494022, 19.193552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.021021, 36.126682, 20.398899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038998, 36.526257, 20.394773>,  <29.049784, 36.766003, 20.392298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038998, 36.526257, 20.394773>,  <29.021021, 36.126682, 20.398899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038998, 36.526257, 20.394773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169977, 0.002530, 0.985445,
		0.984423, -0.046039, -0.169683,
		0.044940, 0.998936, -0.010316,
		29.052479, 36.825939, 20.391678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620594, 36.277451, 20.740025>,  <29.021021, 36.126682, 20.398899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620594, 36.277451, 20.740025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.414740, 36.618408, 20.777048>,  <29.291227, 36.822983, 20.799263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.414740, 36.618408, 20.777048>,  <29.620594, 36.277451, 20.740025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414740, 36.618408, 20.777048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381145, 0.130736, 0.915225,
		0.768035, 0.506287, -0.392168,
		-0.514637, 0.852398, 0.092559,
		29.260349, 36.874126, 20.804815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074381, 36.849155, 20.927309>,  <29.620594, 36.277451, 20.740025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074381, 36.849155, 20.927309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.704611, 36.967361, 21.023733>,  <29.482748, 37.038284, 21.081587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.704611, 36.967361, 21.023733>,  <30.074381, 36.849155, 20.927309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704611, 36.967361, 21.023733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326067, 0.284637, 0.901478,
		0.197785, 0.911950, -0.359483,
		-0.924425, 0.295514, 0.241060,
		29.427284, 37.056015, 21.096050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186327, 37.447990, 21.349844>,  <30.074381, 36.849155, 20.927309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186327, 37.447990, 21.349844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.815399, 37.327732, 21.439011>,  <29.592842, 37.255577, 21.492512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.815399, 37.327732, 21.439011>,  <30.186327, 37.447990, 21.349844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815399, 37.327732, 21.439011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183740, 0.153201, 0.970963,
		-0.326071, 0.941350, -0.086824,
		-0.927317, -0.300649, 0.222918,
		29.537205, 37.237537, 21.505886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005430, 37.865055, 21.881599>,  <30.186327, 37.447990, 21.349844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005430, 37.865055, 21.881599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.751297, 37.556461, 21.895233>,  <29.598818, 37.371304, 21.903414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.751297, 37.556461, 21.895233>,  <30.005430, 37.865055, 21.881599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751297, 37.556461, 21.895233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068954, -0.012711, 0.997539,
		-0.769156, 0.636118, 0.061273,
		-0.635331, -0.771488, 0.034087,
		29.560698, 37.325016, 21.905458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492739, 37.995857, 22.445127>,  <30.005430, 37.865055, 21.881599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492739, 37.995857, 22.445127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.457205, 37.602402, 22.382431>,  <29.435884, 37.366329, 22.344814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.457205, 37.602402, 22.382431>,  <29.492739, 37.995857, 22.445127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457205, 37.602402, 22.382431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050291, -0.152731, 0.986987,
		-0.994776, 0.095563, -0.035900,
		-0.088836, -0.983637, -0.156739,
		29.430553, 37.307312, 22.335409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944597, 37.817333, 22.828962>,  <29.492739, 37.995857, 22.445127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944597, 37.817333, 22.828962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.182158, 37.505642, 22.748878>,  <29.324694, 37.318626, 22.700829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.182158, 37.505642, 22.748878>,  <28.944597, 37.817333, 22.828962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182158, 37.505642, 22.748878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004014, -0.245978, 0.969267,
		-0.804528, -0.576452, -0.142959,
		0.593901, -0.779229, -0.200210,
		29.360329, 37.271873, 22.688816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737167, 37.380913, 23.306593>,  <28.944597, 37.817333, 22.828962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737167, 37.380913, 23.306593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092695, 37.236725, 23.193411>,  <29.306011, 37.150211, 23.125502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092695, 37.236725, 23.193411>,  <28.737167, 37.380913, 23.306593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092695, 37.236725, 23.193411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146327, -0.361889, 0.920666,
		-0.434274, -0.859707, -0.268906,
		0.888816, -0.360473, -0.282957,
		29.359341, 37.128582, 23.108524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824156, 36.689808, 23.600445>,  <28.737167, 37.380913, 23.306593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824156, 36.689808, 23.600445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.205795, 36.787430, 23.531010>,  <29.434780, 36.846001, 23.489349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.205795, 36.787430, 23.531010>,  <28.824156, 36.689808, 23.600445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205795, 36.787430, 23.531010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222193, -0.188202, 0.956666,
		0.200807, -0.951325, -0.233791,
		0.954100, 0.244051, -0.173586,
		29.492025, 36.860645, 23.478933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237049, 36.179070, 23.974567>,  <28.824156, 36.689808, 23.600445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237049, 36.179070, 23.974567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.491909, 36.480995, 23.912220>,  <29.644825, 36.662151, 23.874811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.491909, 36.480995, 23.912220>,  <29.237049, 36.179070, 23.974567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491909, 36.480995, 23.912220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447583, -0.197723, 0.872109,
		0.627460, -0.625431, -0.463821,
		0.637152, 0.754813, -0.155869,
		29.683054, 36.707439, 23.865459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917606, 35.932491, 24.148344>,  <29.237049, 36.179070, 23.974567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917606, 35.932491, 24.148344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952312, 36.330078, 24.175200>,  <29.973135, 36.568630, 24.191313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.952312, 36.330078, 24.175200>,  <29.917606, 35.932491, 24.148344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952312, 36.330078, 24.175200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579801, -0.105185, 0.807940,
		0.810125, -0.031172, -0.585428,
		0.086764, 0.993964, 0.067139,
		29.978342, 36.628269, 24.195341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593813, 36.061306, 24.252682>,  <29.917606, 35.932491, 24.148344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593813, 36.061306, 24.252682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.434830, 36.406651, 24.377029>,  <30.339439, 36.613857, 24.451637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.434830, 36.406651, 24.377029>,  <30.593813, 36.061306, 24.252682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434830, 36.406651, 24.377029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567323, -0.035073, 0.822748,
		0.721230, 0.503370, -0.475863,
		-0.397456, 0.863359, 0.310869,
		30.315594, 36.665657, 24.470291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125135, 36.517765, 24.506342>,  <30.593813, 36.061306, 24.252682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125135, 36.517765, 24.506342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807665, 36.665882, 24.699406>,  <30.617184, 36.754753, 24.815245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807665, 36.665882, 24.699406>,  <31.125135, 36.517765, 24.506342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807665, 36.665882, 24.699406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537489, 0.055231, 0.841460,
		0.284930, 0.927271, -0.242865,
		-0.793675, 0.370295, 0.482661,
		30.569563, 36.776970, 24.844204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408194, 37.035255, 24.944073>,  <31.125135, 36.517765, 24.506342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408194, 37.035255, 24.944073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048903, 36.923183, 25.079535>,  <30.833328, 36.855942, 25.160810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048903, 36.923183, 25.079535>,  <31.408194, 37.035255, 24.944073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048903, 36.923183, 25.079535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366950, -0.053909, 0.928677,
		-0.241941, 0.958432, 0.151235,
		-0.898227, -0.280181, 0.338654,
		30.779434, 36.839130, 25.181131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895702, 37.627392, 25.132038>,  <31.408194, 37.035255, 24.944073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895702, 37.627392, 25.132038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229156, 37.439285, 25.016176>,  <32.429230, 37.326420, 24.946659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229156, 37.439285, 25.016176>,  <31.895702, 37.627392, 25.132038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229156, 37.439285, 25.016176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247366, 0.151001, -0.957083,
		0.493824, 0.869509, 0.009551,
		0.833635, -0.470268, -0.289655,
		32.479248, 37.298206, 24.929279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209801, 38.081406, 24.639292>,  <31.895702, 37.627392, 25.132038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209801, 38.081406, 24.639292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347122, 37.710171, 24.581615>,  <32.429516, 37.487431, 24.547009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347122, 37.710171, 24.581615>,  <32.209801, 38.081406, 24.639292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347122, 37.710171, 24.581615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371830, 0.006678, -0.928277,
		0.862486, 0.372299, -0.342799,
		0.343307, -0.928089, -0.144192,
		32.450115, 37.431744, 24.538359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594055, 38.114334, 23.974108>,  <32.209801, 38.081406, 24.639292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594055, 38.114334, 23.974108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.492775, 37.734200, 24.046497>,  <32.432007, 37.506119, 24.089931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.492775, 37.734200, 24.046497>,  <32.594055, 38.114334, 23.974108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492775, 37.734200, 24.046497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330526, -0.090834, -0.939416,
		0.909200, -0.297675, -0.291111,
		-0.253198, -0.950336, 0.180976,
		32.416817, 37.449100, 24.100790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115143, 37.907822, 23.512308>,  <32.594055, 38.114334, 23.974108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115143, 37.907822, 23.512308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824959, 37.638546, 23.569618>,  <32.650848, 37.476982, 23.604004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824959, 37.638546, 23.569618>,  <33.115143, 37.907822, 23.512308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824959, 37.638546, 23.569618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054886, -0.264087, -0.962936,
		0.686074, -0.690706, 0.228532,
		-0.725458, -0.673189, 0.143273,
		32.607323, 37.436588, 23.612600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330654, 37.336143, 23.124704>,  <33.115143, 37.907822, 23.512308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330654, 37.336143, 23.124704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943798, 37.252556, 23.182627>,  <32.711685, 37.202404, 23.217381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943798, 37.252556, 23.182627>,  <33.330654, 37.336143, 23.124704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943798, 37.252556, 23.182627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074002, -0.313526, -0.946692,
		0.243228, -0.926302, 0.287760,
		-0.967142, -0.208967, 0.144807,
		32.653656, 37.189865, 23.226068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247105, 36.677002, 22.783764>,  <33.330654, 37.336143, 23.124704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247105, 36.677002, 22.783764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884838, 36.843510, 22.815964>,  <32.667477, 36.943417, 22.835283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884838, 36.843510, 22.815964>,  <33.247105, 36.677002, 22.783764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884838, 36.843510, 22.815964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178366, -0.201826, -0.963043,
		-0.384642, -0.886557, 0.257036,
		-0.905669, 0.416273, 0.080501,
		32.613136, 36.968391, 22.840115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813335, 36.171619, 22.495058>,  <33.247105, 36.677002, 22.783764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813335, 36.171619, 22.495058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680626, 36.547272, 22.459372>,  <32.601002, 36.772663, 22.437960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680626, 36.547272, 22.459372>,  <32.813335, 36.171619, 22.495058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680626, 36.547272, 22.459372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245920, -0.177401, -0.952918,
		-0.910743, -0.294209, 0.289807,
		-0.331769, 0.939132, -0.089215,
		32.581097, 36.829010, 22.432608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209518, 36.099827, 22.113457>,  <32.813335, 36.171619, 22.495058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209518, 36.099827, 22.113457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264065, 36.495193, 22.086824>,  <32.296795, 36.732414, 22.070845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264065, 36.495193, 22.086824>,  <32.209518, 36.099827, 22.113457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264065, 36.495193, 22.086824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237925, -0.032565, -0.970738,
		-0.961663, 0.148221, 0.230728,
		0.136371, 0.988418, -0.066582,
		32.304977, 36.791718, 22.066851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600636, 36.437164, 21.846354>,  <32.209518, 36.099827, 22.113457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600636, 36.437164, 21.846354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888231, 36.703087, 21.765272>,  <32.060791, 36.862640, 21.716623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888231, 36.703087, 21.765272>,  <31.600636, 36.437164, 21.846354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888231, 36.703087, 21.765272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287924, 0.019460, -0.957456,
		-0.632575, 0.746765, 0.205404,
		0.718991, 0.664803, -0.202701,
		32.103928, 36.902527, 21.704462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214682, 36.899910, 21.410938>,  <31.600636, 36.437164, 21.846354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214682, 36.899910, 21.410938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601265, 36.969872, 21.335714>,  <31.833216, 37.011848, 21.290581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601265, 36.969872, 21.335714>,  <31.214682, 36.899910, 21.410938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601265, 36.969872, 21.335714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222384, 0.203660, -0.953451,
		-0.128463, 0.963292, 0.235725,
		0.966459, 0.174904, -0.188058,
		31.891203, 37.022343, 21.279297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082718, 37.469261, 21.049709>,  <31.214682, 36.899910, 21.410938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082718, 37.469261, 21.049709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450481, 37.339809, 20.960314>,  <31.671141, 37.262138, 20.906677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450481, 37.339809, 20.960314>,  <31.082718, 37.469261, 21.049709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450481, 37.339809, 20.960314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180040, 0.158882, -0.970743,
		0.349670, 0.932748, 0.087812,
		0.919411, -0.323630, -0.223489,
		31.726305, 37.242722, 20.893267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506329, 38.020359, 20.751280>,  <31.082718, 37.469261, 21.049709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506329, 38.020359, 20.751280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653431, 37.666824, 20.635639>,  <31.741692, 37.454704, 20.566254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653431, 37.666824, 20.635639>,  <31.506329, 38.020359, 20.751280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653431, 37.666824, 20.635639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126122, 0.260611, -0.957170,
		0.921330, 0.388467, -0.015630,
		0.367756, -0.883841, -0.289103,
		31.763758, 37.401672, 20.548908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953787, 38.236488, 20.206219>,  <31.506329, 38.020359, 20.751280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953787, 38.236488, 20.206219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.861526, 37.849594, 20.163786>,  <31.806171, 37.617458, 20.138327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.861526, 37.849594, 20.163786>,  <31.953787, 38.236488, 20.206219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861526, 37.849594, 20.163786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034185, 0.117008, -0.992542,
		0.972436, -0.225302, -0.060053,
		-0.230649, -0.967237, -0.106080,
		31.792332, 37.559422, 20.131962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395416, 37.958755, 19.583424>,  <31.953787, 38.236488, 20.206219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395416, 37.958755, 19.583424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.087791, 37.710423, 19.644245>,  <31.903217, 37.561424, 19.680738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.087791, 37.710423, 19.644245>,  <32.395416, 37.958755, 19.583424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087791, 37.710423, 19.644245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314216, 0.160054, -0.935762,
		0.556613, -0.767432, -0.318166,
		-0.769058, -0.620830, 0.152052,
		31.857075, 37.524174, 19.689861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116386, 37.815800, 19.173910>,  <32.395416, 37.958755, 19.583424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116386, 37.815800, 19.173910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385876, 38.056114, 19.001795>,  <33.547569, 38.200302, 18.898525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385876, 38.056114, 19.001795>,  <33.116386, 37.815800, 19.173910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385876, 38.056114, 19.001795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662381, -0.232803, 0.712077,
		0.327635, -0.764760, -0.554795,
		0.673726, 0.600787, -0.430288,
		33.587994, 38.236351, 18.872707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809689, 37.444717, 18.987175>,  <33.116386, 37.815800, 19.173910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809689, 37.444717, 18.987175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889595, 37.834518, 19.028051>,  <33.937538, 38.068398, 19.052578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889595, 37.834518, 19.028051>,  <33.809689, 37.444717, 18.987175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889595, 37.834518, 19.028051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706413, -0.215513, 0.674192,
		0.679024, -0.062494, -0.731452,
		0.199771, 0.974499, 0.102191,
		33.949528, 38.126869, 19.058708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529068, 37.505470, 18.804966>,  <33.809689, 37.444717, 18.987175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529068, 37.505470, 18.804966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.397648, 37.799423, 19.042284>,  <34.318794, 37.975796, 19.184675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.397648, 37.799423, 19.042284>,  <34.529068, 37.505470, 18.804966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397648, 37.799423, 19.042284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647293, -0.282246, 0.708060,
		0.687798, 0.616669, -0.382954,
		-0.328551, 0.734885, 0.593294,
		34.299084, 38.019890, 19.220272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078758, 37.689453, 19.162432>,  <34.529068, 37.505470, 18.804966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078758, 37.689453, 19.162432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800037, 37.862198, 19.391504>,  <34.632805, 37.965843, 19.528948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800037, 37.862198, 19.391504>,  <35.078758, 37.689453, 19.162432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800037, 37.862198, 19.391504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505843, -0.270187, 0.819220,
		0.508522, 0.860520, -0.030188,
		-0.696799, 0.431862, 0.572684,
		34.591000, 37.991756, 19.563309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452663, 38.188004, 19.803427>,  <35.078758, 37.689453, 19.162432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452663, 38.188004, 19.803427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079353, 38.138927, 19.938446>,  <34.855366, 38.109482, 20.019457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079353, 38.138927, 19.938446>,  <35.452663, 38.188004, 19.803427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079353, 38.138927, 19.938446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354152, -0.158089, 0.921729,
		-0.059724, 0.979773, 0.190992,
		-0.933279, -0.122689, 0.337547,
		34.799370, 38.102119, 20.039711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482536, 38.578735, 20.329502>,  <35.452663, 38.188004, 19.803427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482536, 38.578735, 20.329502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.169746, 38.338264, 20.395365>,  <34.982075, 38.193981, 20.434883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.169746, 38.338264, 20.395365>,  <35.482536, 38.578735, 20.329502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169746, 38.338264, 20.395365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243707, -0.051743, 0.968468,
		-0.573697, 0.797442, 0.186971,
		-0.781971, -0.601173, 0.164657,
		34.935154, 38.157913, 20.444761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284550, 38.772045, 20.979841>,  <35.482536, 38.578735, 20.329502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284550, 38.772045, 20.979841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108704, 38.416332, 20.929390>,  <35.003197, 38.202904, 20.899118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108704, 38.416332, 20.929390>,  <35.284550, 38.772045, 20.979841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108704, 38.416332, 20.929390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185288, -0.227197, 0.956060,
		-0.878867, 0.396928, 0.264653,
		-0.439615, -0.889286, -0.126129,
		34.976818, 38.149548, 20.891552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749664, 38.699657, 21.368294>,  <35.284550, 38.772045, 20.979841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749664, 38.699657, 21.368294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892216, 38.329693, 21.315329>,  <34.977745, 38.107712, 21.283550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892216, 38.329693, 21.315329>,  <34.749664, 38.699657, 21.368294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892216, 38.329693, 21.315329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168318, -0.075847, 0.982810,
		-0.919057, -0.372536, 0.128650,
		0.356374, -0.924913, -0.132412,
		34.999126, 38.052219, 21.275604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513737, 38.279068, 21.887840>,  <34.749664, 38.699657, 21.368294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513737, 38.279068, 21.887840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805485, 38.045429, 21.745377>,  <34.980534, 37.905247, 21.659899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805485, 38.045429, 21.745377>,  <34.513737, 38.279068, 21.887840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805485, 38.045429, 21.745377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199956, -0.315862, 0.927496,
		-0.654242, -0.747706, -0.113588,
		0.729373, -0.584094, -0.356159,
		35.024296, 37.870201, 21.638529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415371, 37.629864, 22.221022>,  <34.513737, 38.279068, 21.887840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415371, 37.629864, 22.221022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795597, 37.621368, 22.097105>,  <35.023735, 37.616272, 22.022755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795597, 37.621368, 22.097105>,  <34.415371, 37.629864, 22.221022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795597, 37.621368, 22.097105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253348, -0.523817, 0.813284,
		-0.179548, -0.851566, -0.492543,
		0.950567, -0.021238, -0.309793,
		35.080769, 37.614998, 22.004168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591011, 37.017864, 22.409050>,  <34.415371, 37.629864, 22.221022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591011, 37.017864, 22.409050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.928833, 37.228729, 22.371483>,  <35.131527, 37.355247, 22.348942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.928833, 37.228729, 22.371483>,  <34.591011, 37.017864, 22.409050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928833, 37.228729, 22.371483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366862, -0.441904, 0.818616,
		0.390040, -0.725825, -0.566610,
		0.844560, 0.527161, -0.093917,
		35.182201, 37.386879, 22.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187977, 36.585209, 22.578245>,  <34.591011, 37.017864, 22.409050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187977, 36.585209, 22.578245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349567, 36.948040, 22.625587>,  <35.446522, 37.165741, 22.653992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349567, 36.948040, 22.625587>,  <35.187977, 36.585209, 22.578245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349567, 36.948040, 22.625587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508512, -0.330229, 0.795213,
		0.760407, -0.261063, -0.594666,
		0.403977, 0.907080, 0.118355,
		35.470760, 37.220165, 22.661095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804825, 36.393791, 22.912235>,  <35.187977, 36.585209, 22.578245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804825, 36.393791, 22.912235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769196, 36.790131, 22.952791>,  <35.747818, 37.027935, 22.977125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769196, 36.790131, 22.952791>,  <35.804825, 36.393791, 22.912235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769196, 36.790131, 22.952791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410074, -0.056285, 0.910314,
		0.907692, 0.122666, -0.401309,
		-0.089077, 0.990851, 0.101392,
		35.742474, 37.087387, 22.983210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484871, 36.689499, 23.049477>,  <35.804825, 36.393791, 22.912235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484871, 36.689499, 23.049477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192120, 36.920250, 23.194565>,  <36.016468, 37.058701, 23.281618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192120, 36.920250, 23.194565>,  <36.484871, 36.689499, 23.049477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192120, 36.920250, 23.194565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412731, -0.048277, 0.909572,
		0.542226, 0.815400, -0.202764,
		-0.731877, 0.576881, 0.362718,
		35.972557, 37.093315, 23.303381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.021721, 41.381279, 18.825365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632484, 41.289955, 18.812963>,  <34.398941, 41.235161, 18.805523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632484, 41.289955, 18.812963>,  <35.021721, 41.381279, 18.825365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632484, 41.289955, 18.812963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081952, -0.217201, -0.972681,
		0.215340, -0.949051, 0.230068,
		-0.973094, -0.228311, -0.031005,
		34.340557, 41.221462, 18.803661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979752, 40.737125, 18.436852>,  <35.021721, 41.381279, 18.825365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979752, 40.737125, 18.436852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645084, 40.955387, 18.417877>,  <34.444283, 41.086342, 18.406492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645084, 40.955387, 18.417877>,  <34.979752, 40.737125, 18.436852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645084, 40.955387, 18.417877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002633, -0.090610, -0.995883,
		-0.547702, -0.833100, 0.077247,
		-0.836669, 0.545650, -0.047434,
		34.394085, 41.119083, 18.403646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754665, 40.450169, 17.815786>,  <34.979752, 40.737125, 18.436852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754665, 40.450169, 17.815786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483818, 40.732964, 17.897449>,  <34.321312, 40.902641, 17.946447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483818, 40.732964, 17.897449>,  <34.754665, 40.450169, 17.815786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483818, 40.732964, 17.897449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308229, -0.020558, -0.951090,
		-0.668214, -0.706924, 0.231835,
		-0.677114, 0.706990, 0.204158,
		34.280685, 40.945061, 17.958696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131393, 40.262650, 17.442947>,  <34.754665, 40.450169, 17.815786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131393, 40.262650, 17.442947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110634, 40.656502, 17.509645>,  <34.098179, 40.892815, 17.549664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110634, 40.656502, 17.509645>,  <34.131393, 40.262650, 17.442947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110634, 40.656502, 17.509645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187850, 0.154363, -0.969992,
		-0.980826, -0.081661, 0.176952,
		-0.051896, 0.984634, 0.166743,
		34.095066, 40.951893, 17.559668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551800, 40.463303, 16.989162>,  <34.131393, 40.262650, 17.442947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551800, 40.463303, 16.989162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746601, 40.803967, 17.066622>,  <33.863480, 41.008366, 17.113098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746601, 40.803967, 17.066622>,  <33.551800, 40.463303, 16.989162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746601, 40.803967, 17.066622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288140, 0.365973, -0.884895,
		-0.824503, 0.375147, 0.423628,
		0.487001, 0.851663, 0.193650,
		33.892700, 41.059464, 17.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108089, 41.044212, 16.817747>,  <33.551800, 40.463303, 16.989162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108089, 41.044212, 16.817747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483082, 41.176907, 16.775654>,  <33.708076, 41.256523, 16.750399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483082, 41.176907, 16.775654>,  <33.108089, 41.044212, 16.817747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483082, 41.176907, 16.775654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258899, 0.462679, -0.847879,
		-0.232585, 0.822118, 0.519641,
		0.937484, 0.331739, -0.105233,
		33.764328, 41.276428, 16.744083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064678, 41.689545, 16.697147>,  <33.108089, 41.044212, 16.817747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064678, 41.689545, 16.697147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434494, 41.617577, 16.562769>,  <33.656384, 41.574394, 16.482141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434494, 41.617577, 16.562769>,  <33.064678, 41.689545, 16.697147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434494, 41.617577, 16.562769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261992, 0.340105, -0.903155,
		0.276753, 0.923016, 0.267302,
		0.924537, -0.179920, -0.335948,
		33.711857, 41.563602, 16.461985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088455, 42.193897, 16.187284>,  <33.064678, 41.689545, 16.697147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088455, 42.193897, 16.187284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397964, 41.954330, 16.104753>,  <33.583672, 41.810589, 16.055235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397964, 41.954330, 16.104753>,  <33.088455, 42.193897, 16.187284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397964, 41.954330, 16.104753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042603, 0.275779, -0.960277,
		0.632027, 0.751828, 0.187875,
		0.773774, -0.598917, -0.206329,
		33.630096, 41.774654, 16.042854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469471, 42.565708, 15.631986>,  <33.088455, 42.193897, 16.187284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469471, 42.565708, 15.631986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.569916, 42.179672, 15.602218>,  <33.630184, 41.948051, 15.584356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.569916, 42.179672, 15.602218>,  <33.469471, 42.565708, 15.631986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569916, 42.179672, 15.602218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013066, 0.080257, -0.996689,
		0.967869, 0.249310, 0.032763,
		0.251114, -0.965092, -0.074421,
		33.645248, 41.890144, 15.579891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073399, 42.561131, 15.097626>,  <33.469471, 42.565708, 15.631986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073399, 42.561131, 15.097626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868484, 42.223232, 15.159551>,  <33.745537, 42.020493, 15.196706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868484, 42.223232, 15.159551>,  <34.073399, 42.561131, 15.097626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868484, 42.223232, 15.159551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345323, 0.037565, -0.937732,
		0.786329, -0.533849, -0.310954,
		-0.512288, -0.844745, 0.154812,
		33.714798, 41.969810, 15.205995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224564, 42.220352, 14.524537>,  <34.073399, 42.561131, 15.097626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224564, 42.220352, 14.524537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919098, 42.004562, 14.666405>,  <33.735817, 41.875088, 14.751525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919098, 42.004562, 14.666405>,  <34.224564, 42.220352, 14.524537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919098, 42.004562, 14.666405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380436, -0.067830, -0.922317,
		0.521620, -0.839268, -0.153435,
		-0.763663, -0.539471, 0.354669,
		33.689999, 41.842720, 14.772805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251347, 41.449928, 14.318845>,  <34.224564, 42.220352, 14.524537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251347, 41.449928, 14.318845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872169, 41.561340, 14.380574>,  <33.644661, 41.628189, 14.417612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.872169, 41.561340, 14.380574>,  <34.251347, 41.449928, 14.318845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872169, 41.561340, 14.380574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232348, -0.273628, -0.933350,
		-0.217738, -0.920624, 0.324101,
		-0.947948, 0.278530, 0.154326,
		33.587784, 41.644901, 14.426871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849518, 40.931637, 13.928944>,  <34.251347, 41.449928, 14.318845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849518, 40.931637, 13.928944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619980, 41.256851, 13.968290>,  <33.482258, 41.451981, 13.991899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619980, 41.256851, 13.968290>,  <33.849518, 40.931637, 13.928944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619980, 41.256851, 13.968290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197408, -0.020753, -0.980102,
		-0.794813, -0.581849, 0.172408,
		-0.573849, 0.813032, 0.098367,
		33.447826, 41.500759, 13.997801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082458, 40.855434, 13.819617>,  <33.849518, 40.931637, 13.928944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082458, 40.855434, 13.819617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273724, 41.189442, 13.710730>,  <33.388485, 41.389847, 13.645397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273724, 41.189442, 13.710730>,  <33.082458, 40.855434, 13.819617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273724, 41.189442, 13.710730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356391, -0.098806, -0.929098,
		-0.802709, 0.541280, 0.250347,
		0.478166, 0.835017, -0.272220,
		33.417175, 41.439945, 13.629064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856792, 40.183357, 13.348671>,  <33.082458, 40.855434, 13.819617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856792, 40.183357, 13.348671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688698, 39.820419, 13.353239>,  <32.587841, 39.602657, 13.355980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688698, 39.820419, 13.353239>,  <32.856792, 40.183357, 13.348671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688698, 39.820419, 13.353239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216480, -0.088025, 0.972311,
		-0.881214, 0.411071, 0.233413,
		-0.420235, -0.907343, 0.011420,
		32.562626, 39.548218, 13.356665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338219, 40.247398, 13.735876>,  <32.856792, 40.183357, 13.348671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338219, 40.247398, 13.735876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428997, 39.857918, 13.743819>,  <32.483463, 39.624229, 13.748585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428997, 39.857918, 13.743819>,  <32.338219, 40.247398, 13.735876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428997, 39.857918, 13.743819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072643, 0.037257, 0.996662,
		-0.971194, -0.224748, 0.079189,
		0.226948, -0.973704, 0.019858,
		32.497082, 39.565807, 13.749777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838192, 39.775707, 14.131287>,  <32.338219, 40.247398, 13.735876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838192, 39.775707, 14.131287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186501, 39.580219, 14.109725>,  <32.395485, 39.462925, 14.096788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186501, 39.580219, 14.109725>,  <31.838192, 39.775707, 14.131287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186501, 39.580219, 14.109725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090012, -0.266229, 0.959698,
		-0.483375, -0.830827, -0.275816,
		0.870774, -0.488721, -0.053904,
		32.447731, 39.433601, 14.093554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790806, 39.145355, 14.577283>,  <31.838192, 39.775707, 14.131287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790806, 39.145355, 14.577283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182568, 39.221878, 14.551465>,  <32.417625, 39.267792, 14.535975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182568, 39.221878, 14.551465>,  <31.790806, 39.145355, 14.577283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182568, 39.221878, 14.551465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102063, -0.193286, 0.975819,
		0.174206, -0.962311, -0.208831,
		0.979406, 0.191307, -0.064545,
		32.476391, 39.279270, 14.532102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029579, 38.547718, 14.939301>,  <31.790806, 39.145355, 14.577283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029579, 38.547718, 14.939301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343548, 38.791626, 14.895350>,  <32.531929, 38.937973, 14.868980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343548, 38.791626, 14.895350>,  <32.029579, 38.547718, 14.939301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343548, 38.791626, 14.895350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290040, -0.204907, 0.934821,
		0.547515, -0.765630, -0.337695,
		0.784923, 0.609774, -0.109874,
		32.579025, 38.974560, 14.862389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638557, 38.197266, 15.325586>,  <32.029579, 38.547718, 14.939301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638557, 38.197266, 15.325586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715466, 38.589001, 15.300535>,  <32.761612, 38.824043, 15.285504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715466, 38.589001, 15.300535>,  <32.638557, 38.197266, 15.325586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715466, 38.589001, 15.300535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407859, -0.021702, 0.912787,
		0.892571, -0.201048, -0.403605,
		0.192273, 0.979341, -0.062629,
		32.773148, 38.882805, 15.281747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305283, 38.333542, 15.559133>,  <32.638557, 38.197266, 15.325586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305283, 38.333542, 15.559133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121471, 38.683132, 15.622385>,  <33.011185, 38.892887, 15.660336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121471, 38.683132, 15.622385>,  <33.305283, 38.333542, 15.559133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121471, 38.683132, 15.622385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294873, -0.017816, 0.955370,
		0.837784, 0.485648, -0.249524,
		-0.459529, 0.873972, 0.158131,
		32.983612, 38.945324, 15.669825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783649, 38.770954, 15.844552>,  <33.305283, 38.333542, 15.559133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783649, 38.770954, 15.844552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428383, 38.912956, 15.961263>,  <33.215225, 38.998158, 16.031288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428383, 38.912956, 15.961263>,  <33.783649, 38.770954, 15.844552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428383, 38.912956, 15.961263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351391, 0.115521, 0.929074,
		0.296122, 0.927698, -0.227348,
		-0.888164, 0.355008, 0.291777,
		33.161934, 39.019459, 16.048796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925560, 39.259007, 16.383030>,  <33.783649, 38.770954, 15.844552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925560, 39.259007, 16.383030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535175, 39.187077, 16.432280>,  <33.300945, 39.143921, 16.461830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535175, 39.187077, 16.432280>,  <33.925560, 39.259007, 16.383030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535175, 39.187077, 16.432280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147460, -0.128880, 0.980635,
		-0.160470, 0.975220, 0.152298,
		-0.975964, -0.179821, 0.123124,
		33.242386, 39.133129, 16.469217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746021, 39.787094, 16.801247>,  <33.925560, 39.259007, 16.383030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746021, 39.787094, 16.801247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470745, 39.499557, 16.840569>,  <33.305580, 39.327034, 16.864162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470745, 39.499557, 16.840569>,  <33.746021, 39.787094, 16.801247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470745, 39.499557, 16.840569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155810, -0.014093, 0.987687,
		-0.708605, 0.695031, 0.121701,
		-0.688188, -0.718842, 0.098307,
		33.264290, 39.283905, 16.870060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404045, 39.837730, 17.483562>,  <33.746021, 39.787094, 16.801247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404045, 39.837730, 17.483562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341438, 39.453735, 17.390673>,  <33.303875, 39.223339, 17.334940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341438, 39.453735, 17.390673>,  <33.404045, 39.837730, 17.483562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341438, 39.453735, 17.390673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153063, -0.255855, 0.954521,
		-0.975743, 0.113853, 0.186984,
		-0.156516, -0.959987, -0.232222,
		33.294483, 39.165741, 17.321007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055721, 39.714626, 18.203033>,  <33.404045, 39.837730, 17.483562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055721, 39.714626, 18.203033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162861, 39.383842, 18.005289>,  <33.227146, 39.185371, 17.886642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162861, 39.383842, 18.005289>,  <33.055721, 39.714626, 18.203033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162861, 39.383842, 18.005289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401663, -0.370550, 0.837472,
		-0.875741, -0.422885, 0.232907,
		0.267851, -0.826959, -0.494363,
		33.243217, 39.135754, 17.856979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758060, 39.104179, 18.670311>,  <33.055721, 39.714626, 18.203033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758060, 39.104179, 18.670311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012897, 38.912914, 18.428493>,  <33.165802, 38.798157, 18.283403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012897, 38.912914, 18.428493>,  <32.758060, 39.104179, 18.670311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012897, 38.912914, 18.428493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334877, -0.534720, 0.775842,
		-0.694240, -0.696732, -0.180542,
		0.637094, -0.478161, -0.604544,
		33.204025, 38.769466, 18.247131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627438, 38.411560, 18.939981>,  <32.758060, 39.104179, 18.670311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627438, 38.411560, 18.939981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990063, 38.446587, 18.774824>,  <33.207638, 38.467602, 18.675730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990063, 38.446587, 18.774824>,  <32.627438, 38.411560, 18.939981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990063, 38.446587, 18.774824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409452, -0.419951, 0.809932,
		-0.102470, -0.903312, -0.416566,
		0.906559, 0.087570, -0.412895,
		33.262032, 38.472858, 18.650955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395569, 37.670074, 18.898382>,  <32.627438, 38.411560, 18.939981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395569, 37.670074, 18.898382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088177, 37.492710, 19.082916>,  <31.903742, 37.386292, 19.193638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.088177, 37.492710, 19.082916>,  <32.395569, 37.670074, 18.898382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088177, 37.492710, 19.082916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295526, -0.393534, -0.870515,
		0.567546, -0.805307, 0.171383,
		-0.768477, -0.443409, 0.461337,
		31.857634, 37.359688, 19.221317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379799, 36.933174, 18.786774>,  <32.395569, 37.670074, 18.898382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379799, 36.933174, 18.786774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003773, 37.055145, 18.847824>,  <31.778156, 37.128330, 18.884455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003773, 37.055145, 18.847824>,  <32.379799, 36.933174, 18.786774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003773, 37.055145, 18.847824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195316, -0.114615, -0.974020,
		-0.279517, -0.945452, 0.167303,
		-0.940065, 0.304932, 0.152625,
		31.721752, 37.146626, 18.893612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049995, 36.538929, 18.278954>,  <32.379799, 36.933174, 18.786774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049995, 36.538929, 18.278954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815773, 36.850368, 18.369204>,  <31.675240, 37.037231, 18.423353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815773, 36.850368, 18.369204>,  <32.049995, 36.538929, 18.278954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815773, 36.850368, 18.369204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363129, -0.003099, -0.931734,
		-0.724746, -0.627516, 0.284546,
		-0.585559, 0.778598, 0.225623,
		31.640104, 37.083946, 18.436890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441744, 36.348461, 18.174635>,  <32.049995, 36.538929, 18.278954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441744, 36.348461, 18.174635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396946, 36.745605, 18.158186>,  <31.370068, 36.983891, 18.148317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396946, 36.745605, 18.158186>,  <31.441744, 36.348461, 18.174635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396946, 36.745605, 18.158186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498379, -0.091921, -0.862073,
		-0.859695, -0.076055, 0.505114,
		-0.111995, 0.992858, -0.041120,
		31.363348, 37.043465, 18.145849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730190, 36.519119, 18.002802>,  <31.441744, 36.348461, 18.174635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730190, 36.519119, 18.002802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.942583, 36.842182, 17.900240>,  <31.070019, 37.036022, 17.838703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.942583, 36.842182, 17.900240>,  <30.730190, 36.519119, 18.002802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942583, 36.842182, 17.900240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367796, -0.052938, -0.928399,
		-0.763404, 0.587267, 0.268945,
		0.530980, 0.807660, -0.256407,
		31.101877, 37.084480, 17.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248119, 36.851471, 17.566923>,  <30.730190, 36.519119, 18.002802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248119, 36.851471, 17.566923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.600660, 37.023037, 17.487677>,  <30.812185, 37.125977, 17.440128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.600660, 37.023037, 17.487677>,  <30.248119, 36.851471, 17.566923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600660, 37.023037, 17.487677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186076, -0.070318, -0.980016,
		-0.434277, 0.900603, 0.017836,
		0.881351, 0.428917, -0.198118,
		30.865067, 37.151711, 17.428242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175863, 37.367558, 17.155167>,  <30.248119, 36.851471, 17.566923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175863, 37.367558, 17.155167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.548065, 37.239616, 17.083767>,  <30.771385, 37.162853, 17.040928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.548065, 37.239616, 17.083767>,  <30.175863, 37.367558, 17.155167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548065, 37.239616, 17.083767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181375, 0.021034, -0.983189,
		0.318227, 0.947235, -0.038440,
		0.930502, -0.319849, -0.178498,
		30.827215, 37.143661, 17.030218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767662, 37.930283, 17.405533>,  <30.175863, 37.367558, 17.155167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767662, 37.930283, 17.405533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.399397, 37.776718, 17.433809>,  <29.178438, 37.684582, 17.450775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.399397, 37.776718, 17.433809>,  <29.767662, 37.930283, 17.405533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399397, 37.776718, 17.433809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095891, -0.046874, 0.994288,
		-0.378401, 0.922181, 0.079968,
		-0.920662, -0.383907, 0.070692,
		29.123198, 37.661545, 17.455017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435658, 38.241375, 17.988207>,  <29.767662, 37.930283, 17.405533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435658, 38.241375, 17.988207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216726, 37.911037, 17.933920>,  <29.085367, 37.712833, 17.901348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216726, 37.911037, 17.933920>,  <29.435658, 38.241375, 17.988207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216726, 37.911037, 17.933920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046814, -0.131698, 0.990184,
		-0.835609, 0.548307, 0.033420,
		-0.547326, -0.825842, -0.135717,
		29.052528, 37.663284, 17.893206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908142, 38.261314, 18.419912>,  <29.435658, 38.241375, 17.988207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908142, 38.261314, 18.419912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909370, 37.869091, 18.341427>,  <28.910107, 37.633759, 18.294334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909370, 37.869091, 18.341427>,  <28.908142, 38.261314, 18.419912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909370, 37.869091, 18.341427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043314, -0.196162, 0.979614,
		-0.999057, 0.005490, -0.043075,
		0.003071, -0.980556, -0.196215,
		28.910292, 37.574924, 18.282562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234861, 37.930710, 18.772661>,  <28.908142, 38.261314, 18.419912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234861, 37.930710, 18.772661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.528297, 37.664471, 18.717770>,  <28.704359, 37.504726, 18.684835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.528297, 37.664471, 18.717770>,  <28.234861, 37.930710, 18.772661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528297, 37.664471, 18.717770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029681, -0.233114, 0.971996,
		-0.678945, -0.708973, -0.190766,
		0.733589, -0.665594, -0.137229,
		28.748375, 37.464794, 18.676601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958523, 37.311974, 19.212532>,  <28.234861, 37.930710, 18.772661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958523, 37.311974, 19.212532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.347900, 37.224403, 19.185751>,  <28.581526, 37.171864, 19.169683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.347900, 37.224403, 19.185751>,  <27.958523, 37.311974, 19.212532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347900, 37.224403, 19.185751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064836, -0.016837, 0.997754,
		-0.219560, -0.975597, -0.002196,
		0.973442, -0.218924, -0.066950,
		28.639933, 37.158726, 19.165667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057713, 36.800888, 19.655401>,  <27.958523, 37.311974, 19.212532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057713, 36.800888, 19.655401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.439180, 36.907238, 19.599085>,  <28.668062, 36.971046, 19.565294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.439180, 36.907238, 19.599085>,  <28.057713, 36.800888, 19.655401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439180, 36.907238, 19.599085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189698, -0.168192, 0.967329,
		0.233507, -0.949222, -0.210836,
		0.953672, 0.265873, -0.140792,
		28.725283, 36.987000, 19.556847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519302, 36.315002, 19.926622>,  <28.057713, 36.800888, 19.655401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519302, 36.315002, 19.926622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747358, 36.643589, 19.922012>,  <28.884192, 36.840740, 19.919247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747358, 36.643589, 19.922012>,  <28.519302, 36.315002, 19.926622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747358, 36.643589, 19.922012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142396, -0.084993, 0.986154,
		0.809115, -0.563884, -0.165431,
		0.570137, 0.821468, -0.011526,
		28.918400, 36.890030, 19.918554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.991510, 42.801388, 15.676739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358648, 42.654892, 15.615515>,  <30.578932, 42.566994, 15.578780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358648, 42.654892, 15.615515>,  <29.991510, 42.801388, 15.676739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358648, 42.654892, 15.615515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098199, -0.164106, 0.981543,
		-0.384598, -0.915936, -0.114659,
		0.917846, -0.366240, -0.153059,
		30.634003, 42.545021, 15.569597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074368, 42.080624, 16.005688>,  <29.991510, 42.801388, 15.676739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074368, 42.080624, 16.005688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438032, 42.242142, 15.964945>,  <30.656231, 42.339054, 15.940499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438032, 42.242142, 15.964945>,  <30.074368, 42.080624, 16.005688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438032, 42.242142, 15.964945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217646, -0.252195, 0.942883,
		0.355048, -0.879399, -0.317171,
		0.909159, 0.403800, -0.101856,
		30.710779, 42.363281, 15.934388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430298, 41.688740, 16.396788>,  <30.074368, 42.080624, 16.005688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430298, 41.688740, 16.396788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657406, 42.016911, 16.369846>,  <30.793671, 42.213814, 16.353682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657406, 42.016911, 16.369846>,  <30.430298, 41.688740, 16.396788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657406, 42.016911, 16.369846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335440, -0.155864, 0.929078,
		0.751743, -0.550096, -0.363699,
		0.567770, 0.820427, -0.067354,
		30.827738, 42.263039, 16.349640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103741, 41.362251, 16.669006>,  <30.430298, 41.688740, 16.396788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103741, 41.362251, 16.669006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127476, 41.761059, 16.688736>,  <31.141716, 42.000343, 16.700573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127476, 41.761059, 16.688736>,  <31.103741, 41.362251, 16.669006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127476, 41.761059, 16.688736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359920, -0.067455, 0.930541,
		0.931094, -0.037464, -0.362850,
		0.059338, 0.997019, 0.049323,
		31.145277, 42.060165, 16.703533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757086, 41.526287, 16.957237>,  <31.103741, 41.362251, 16.669006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757086, 41.526287, 16.957237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511351, 41.833618, 17.029076>,  <31.363909, 42.018017, 17.072180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511351, 41.833618, 17.029076>,  <31.757086, 41.526287, 16.957237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511351, 41.833618, 17.029076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249383, -0.026876, 0.968032,
		0.748596, 0.639488, -0.175098,
		-0.614339, 0.768331, 0.179597,
		31.327049, 42.064117, 17.082954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134125, 41.899300, 17.429550>,  <31.757086, 41.526287, 16.957237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134125, 41.899300, 17.429550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.761246, 42.037476, 17.472778>,  <31.537519, 42.120380, 17.498716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.761246, 42.037476, 17.472778>,  <32.134125, 41.899300, 17.429550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761246, 42.037476, 17.472778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163451, 0.135357, 0.977222,
		0.322946, 0.928627, -0.182643,
		-0.932196, 0.345443, 0.108072,
		31.481586, 42.141109, 17.505199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189724, 42.403618, 17.966545>,  <32.134125, 41.899300, 17.429550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189724, 42.403618, 17.966545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801052, 42.312061, 17.943056>,  <31.567848, 42.257130, 17.928963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801052, 42.312061, 17.943056>,  <32.189724, 42.403618, 17.966545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801052, 42.312061, 17.943056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040946, -0.081669, 0.995818,
		-0.232726, 0.970021, 0.069984,
		-0.971680, -0.228887, -0.058725,
		31.509548, 42.243397, 17.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903646, 42.830994, 18.409805>,  <32.189724, 42.403618, 17.966545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903646, 42.830994, 18.409805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623358, 42.551781, 18.350822>,  <31.455185, 42.384254, 18.315434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623358, 42.551781, 18.350822>,  <31.903646, 42.830994, 18.409805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623358, 42.551781, 18.350822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155636, -0.052143, 0.986437,
		-0.696252, 0.714168, -0.072100,
		-0.700722, -0.698030, -0.147455,
		31.413141, 42.342373, 18.306585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445496, 42.962994, 18.870741>,  <31.903646, 42.830994, 18.409805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445496, 42.962994, 18.870741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.373051, 42.581482, 18.774815>,  <31.329584, 42.352577, 18.717258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.373051, 42.581482, 18.774815>,  <31.445496, 42.962994, 18.870741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373051, 42.581482, 18.774815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353514, -0.164411, 0.920867,
		-0.917728, 0.251558, -0.307396,
		-0.181112, -0.953775, -0.239814,
		31.318716, 42.295349, 18.702869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827490, 42.831234, 19.068064>,  <31.445496, 42.962994, 18.870741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827490, 42.831234, 19.068064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996838, 42.469475, 19.046814>,  <31.098446, 42.252419, 19.034063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996838, 42.469475, 19.046814>,  <30.827490, 42.831234, 19.068064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996838, 42.469475, 19.046814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229769, -0.163912, 0.959343,
		-0.876335, -0.393951, -0.277198,
		0.423371, -0.904397, -0.053124,
		31.123848, 42.198154, 19.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378433, 42.435841, 19.433008>,  <30.827490, 42.831234, 19.068064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378433, 42.435841, 19.433008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738312, 42.261318, 19.438446>,  <30.954239, 42.156605, 19.441708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738312, 42.261318, 19.438446>,  <30.378433, 42.435841, 19.433008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738312, 42.261318, 19.438446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121232, -0.219835, 0.967975,
		-0.419346, -0.872530, -0.250679,
		0.899695, -0.436307, 0.013592,
		31.008221, 42.130424, 19.442524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261696, 41.849522, 19.862539>,  <30.378433, 42.435841, 19.433008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261696, 41.849522, 19.862539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658524, 41.897202, 19.846611>,  <30.896620, 41.925812, 19.837053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658524, 41.897202, 19.846611>,  <30.261696, 41.849522, 19.862539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658524, 41.897202, 19.846611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054648, -0.123823, 0.990798,
		0.113178, -0.985118, -0.129356,
		0.992071, 0.119206, -0.039820,
		30.956144, 41.932964, 19.834665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967104, 41.134254, 19.853327>,  <30.261696, 41.849522, 19.862539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967104, 41.134254, 19.853327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582674, 41.071880, 19.944557>,  <29.352016, 41.034454, 19.999294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582674, 41.071880, 19.944557>,  <29.967104, 41.134254, 19.853327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582674, 41.071880, 19.944557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227883, -0.019343, -0.973496,
		0.156219, -0.987577, -0.016946,
		-0.961075, -0.155940, 0.228074,
		29.294352, 41.025101, 20.012980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782202, 40.635036, 19.452497>,  <29.967104, 41.134254, 19.853327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782202, 40.635036, 19.452497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432095, 40.792973, 19.564213>,  <29.222031, 40.887733, 19.631243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432095, 40.792973, 19.564213>,  <29.782202, 40.635036, 19.452497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432095, 40.792973, 19.564213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290807, 0.031749, -0.956255,
		-0.386439, -0.918199, 0.087034,
		-0.875269, 0.394844, 0.279288,
		29.169514, 40.911427, 19.647999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244402, 40.168594, 19.239235>,  <29.782202, 40.635036, 19.452497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244402, 40.168594, 19.239235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061266, 40.524036, 19.250315>,  <28.951384, 40.737301, 19.256962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061266, 40.524036, 19.250315>,  <29.244402, 40.168594, 19.239235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061266, 40.524036, 19.250315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220103, -0.083110, -0.971930,
		-0.861357, -0.451085, 0.233635,
		-0.457840, 0.888603, 0.027698,
		28.923914, 40.790619, 19.258625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713121, 40.088818, 18.717073>,  <29.244402, 40.168594, 19.239235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713121, 40.088818, 18.717073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733114, 40.483967, 18.775875>,  <28.745110, 40.721058, 18.811157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733114, 40.483967, 18.775875>,  <28.713121, 40.088818, 18.717073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733114, 40.483967, 18.775875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241488, 0.154775, -0.957981,
		-0.969116, 0.012380, 0.246295,
		0.049981, 0.987872, 0.147005,
		28.748108, 40.780327, 18.819977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095772, 40.368240, 18.421062>,  <28.713121, 40.088818, 18.717073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095772, 40.368240, 18.421062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359888, 40.668613, 18.416828>,  <28.518358, 40.848839, 18.414288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359888, 40.668613, 18.416828>,  <28.095772, 40.368240, 18.421062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359888, 40.668613, 18.416828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164720, 0.131052, -0.977596,
		-0.732725, 0.647240, 0.210227,
		0.660290, 0.750937, -0.010588,
		28.557976, 40.893894, 18.413652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701231, 41.053230, 18.234179>,  <28.095772, 40.368240, 18.421062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701231, 41.053230, 18.234179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081087, 41.132286, 18.136923>,  <28.309002, 41.179722, 18.078569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081087, 41.132286, 18.136923>,  <27.701231, 41.053230, 18.234179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081087, 41.132286, 18.136923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248083, 0.000257, -0.968739,
		-0.191402, 0.980274, 0.049276,
		0.949642, 0.197643, -0.243140,
		28.365980, 41.191578, 18.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554777, 41.630077, 17.770082>,  <27.701231, 41.053230, 18.234179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554777, 41.630077, 17.770082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924902, 41.490383, 17.710976>,  <28.146976, 41.406567, 17.675512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924902, 41.490383, 17.710976>,  <27.554777, 41.630077, 17.770082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924902, 41.490383, 17.710976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191636, -0.094400, -0.976916,
		0.327220, 0.932269, -0.154275,
		0.925312, -0.349231, -0.147767,
		28.202496, 41.385612, 17.666645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850037, 42.042660, 17.197950>,  <27.554777, 41.630077, 17.770082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850037, 42.042660, 17.197950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.042801, 41.694035, 17.234056>,  <28.158459, 41.484859, 17.255720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.042801, 41.694035, 17.234056>,  <27.850037, 42.042660, 17.197950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042801, 41.694035, 17.234056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237779, -0.229231, -0.943882,
		0.843341, 0.433402, -0.317707,
		0.481909, -0.871559, 0.090266,
		28.187374, 41.432568, 17.261137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257807, 41.996506, 16.606873>,  <27.850037, 42.042660, 17.197950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257807, 41.996506, 16.606873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250307, 41.609802, 16.708876>,  <28.245808, 41.377781, 16.770079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250307, 41.609802, 16.708876>,  <28.257807, 41.996506, 16.606873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250307, 41.609802, 16.708876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072325, -0.253075, -0.964739,
		0.997205, -0.036532, -0.065175,
		-0.018749, -0.966757, 0.255010,
		28.244682, 41.319775, 16.785379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514040, 41.724552, 16.092356>,  <28.257807, 41.996506, 16.606873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514040, 41.724552, 16.092356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349064, 41.404263, 16.266132>,  <28.250078, 41.212090, 16.370399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349064, 41.404263, 16.266132>,  <28.514040, 41.724552, 16.092356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349064, 41.404263, 16.266132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104704, -0.432067, -0.895743,
		0.904948, -0.414927, 0.094363,
		-0.412439, -0.800721, 0.434443,
		28.225332, 41.164047, 16.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881401, 41.152794, 15.744310>,  <28.514040, 41.724552, 16.092356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881401, 41.152794, 15.744310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531370, 41.020763, 15.885895>,  <28.321352, 40.941544, 15.970845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531370, 41.020763, 15.885895>,  <28.881401, 41.152794, 15.744310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531370, 41.020763, 15.885895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185522, -0.446714, -0.875231,
		0.447014, -0.831562, 0.329672,
		-0.875077, -0.330079, 0.353960,
		28.268847, 40.921741, 15.992083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820122, 40.338108, 15.709567>,  <28.881401, 41.152794, 15.744310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820122, 40.338108, 15.709567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440655, 40.464615, 15.708547>,  <28.212975, 40.540520, 15.707934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440655, 40.464615, 15.708547>,  <28.820122, 40.338108, 15.709567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440655, 40.464615, 15.708547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173457, -0.527002, -0.831975,
		-0.264472, -0.788823, 0.554808,
		-0.948666, 0.316270, -0.002550,
		28.156055, 40.559494, 15.707782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492350, 39.733978, 15.417625>,  <28.820122, 40.338108, 15.709567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492350, 39.733978, 15.417625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.235191, 40.040226, 15.408580>,  <28.080896, 40.223976, 15.403152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.235191, 40.040226, 15.408580>,  <28.492350, 39.733978, 15.417625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235191, 40.040226, 15.408580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438962, -0.392471, -0.808257,
		-0.627694, -0.509697, 0.588396,
		-0.642894, 0.765621, -0.022614,
		28.042322, 40.269913, 15.401795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818727, 39.526222, 15.783394>,  <28.492350, 39.733978, 15.417625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818727, 39.526222, 15.783394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818567, 39.289082, 15.461269>,  <27.818470, 39.146797, 15.267995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818567, 39.289082, 15.461269>,  <27.818727, 39.526222, 15.783394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818567, 39.289082, 15.461269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160766, -0.794874, 0.585089,
		-0.986992, -0.129231, 0.095630,
		-0.000403, -0.592852, -0.805311,
		27.818447, 39.111225, 15.219676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329241, 39.016640, 15.925770>,  <27.818727, 39.526222, 15.783394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329241, 39.016640, 15.925770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585369, 38.887344, 15.647057>,  <27.739046, 38.809769, 15.479829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585369, 38.887344, 15.647057>,  <27.329241, 39.016640, 15.925770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585369, 38.887344, 15.647057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096352, -0.866175, 0.490364,
		-0.762040, -0.381127, -0.523485,
		0.640321, -0.323239, -0.696783,
		27.777466, 38.790371, 15.438022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129059, 38.391251, 15.993777>,  <27.329241, 39.016640, 15.925770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129059, 38.391251, 15.993777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489920, 38.415997, 15.822993>,  <27.706436, 38.430843, 15.720523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489920, 38.415997, 15.822993>,  <27.129059, 38.391251, 15.993777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489920, 38.415997, 15.822993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336137, -0.721167, 0.605747,
		-0.270434, -0.689993, -0.671398,
		0.902151, 0.061867, -0.426960,
		27.760565, 38.434555, 15.694905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390421, 37.712914, 16.039698>,  <27.129059, 38.391251, 15.993777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390421, 37.712914, 16.039698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719856, 37.903820, 15.917112>,  <27.917517, 38.018364, 15.843560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719856, 37.903820, 15.917112>,  <27.390421, 37.712914, 16.039698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719856, 37.903820, 15.917112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543726, -0.510544, 0.666113,
		0.161449, -0.715235, -0.679980,
		0.823587, 0.477266, -0.306466,
		27.966932, 38.047001, 15.825172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891443, 37.152637, 15.932057>,  <27.390421, 37.712914, 16.039698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891443, 37.152637, 15.932057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045561, 37.509312, 16.027094>,  <28.138031, 37.723316, 16.084116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045561, 37.509312, 16.027094>,  <27.891443, 37.152637, 15.932057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045561, 37.509312, 16.027094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364793, -0.383674, 0.848363,
		0.847629, -0.240198, -0.473107,
		0.385295, 0.891683, 0.237591,
		28.161150, 37.776817, 16.098372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568062, 37.060368, 16.012789>,  <27.891443, 37.152637, 15.932057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568062, 37.060368, 16.012789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531553, 37.413876, 16.196363>,  <28.509649, 37.625980, 16.306509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531553, 37.413876, 16.196363>,  <28.568062, 37.060368, 16.012789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531553, 37.413876, 16.196363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505774, -0.355855, 0.785850,
		0.857824, 0.303842, -0.414508,
		-0.091270, 0.883769, 0.458936,
		28.504171, 37.679005, 16.334044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248363, 37.259335, 16.245502>,  <28.568062, 37.060368, 16.012789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248363, 37.259335, 16.245502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976566, 37.465862, 16.454004>,  <28.813488, 37.589779, 16.579105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976566, 37.465862, 16.454004>,  <29.248363, 37.259335, 16.245502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976566, 37.465862, 16.454004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464208, -0.247627, 0.850407,
		0.568157, 0.819815, -0.071418,
		-0.679492, 0.516317, 0.521256,
		28.772718, 37.620758, 16.610380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687246, 37.669590, 16.728125>,  <29.248363, 37.259335, 16.245502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687246, 37.669590, 16.728125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323221, 37.671207, 16.893904>,  <29.104807, 37.672176, 16.993372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323221, 37.671207, 16.893904>,  <29.687246, 37.669590, 16.728125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323221, 37.671207, 16.893904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396387, -0.283644, 0.873169,
		0.121086, 0.958921, 0.256532,
		-0.910064, 0.004043, 0.414449,
		29.050201, 37.672421, 17.018238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264591, 37.916924, 16.608107>,  <29.687246, 37.669590, 16.728125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264591, 37.916924, 16.608107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592857, 37.689659, 16.583792>,  <30.789818, 37.553299, 16.569202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592857, 37.689659, 16.583792>,  <30.264591, 37.916924, 16.608107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592857, 37.689659, 16.583792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077046, 0.215434, -0.973474,
		0.566188, 0.794215, 0.220575,
		0.820667, -0.568164, -0.060785,
		30.839058, 37.519211, 16.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749319, 38.196033, 16.030310>,  <30.264591, 37.916924, 16.608107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749319, 38.196033, 16.030310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870052, 37.818462, 16.083824>,  <30.942492, 37.591919, 16.115932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870052, 37.818462, 16.083824>,  <30.749319, 38.196033, 16.030310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870052, 37.818462, 16.083824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026306, -0.132032, -0.990896,
		0.952998, 0.302605, -0.015021,
		0.301833, -0.943927, 0.133787,
		30.960602, 37.535286, 16.123960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274565, 38.182087, 15.549096>,  <30.749319, 38.196033, 16.030310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274565, 38.182087, 15.549096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131189, 37.820179, 15.641110>,  <31.045164, 37.603035, 15.696319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131189, 37.820179, 15.641110>,  <31.274565, 38.182087, 15.549096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131189, 37.820179, 15.641110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045470, -0.229196, -0.972317,
		0.932445, -0.358975, 0.041013,
		-0.358438, -0.904768, 0.230036,
		31.023659, 37.548748, 15.710121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529510, 37.697441, 15.028477>,  <31.274565, 38.182087, 15.549096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529510, 37.697441, 15.028477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222973, 37.494221, 15.185755>,  <31.039051, 37.372288, 15.280122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222973, 37.494221, 15.185755>,  <31.529510, 37.697441, 15.028477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222973, 37.494221, 15.185755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273299, -0.296076, -0.915230,
		0.581401, -0.808839, 0.088045,
		-0.766342, -0.508053, 0.393194,
		30.993071, 37.341805, 15.303713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410583, 37.182068, 14.436969>,  <31.529510, 37.697441, 15.028477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410583, 37.182068, 14.436969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086163, 37.159576, 14.669876>,  <30.891510, 37.146080, 14.809620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086163, 37.159576, 14.669876>,  <31.410583, 37.182068, 14.436969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086163, 37.159576, 14.669876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579327, -0.060798, -0.812825,
		0.081110, -0.996565, 0.016732,
		-0.811050, -0.056235, 0.582268,
		30.842848, 37.142708, 14.844557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866880, 36.644424, 14.124888>,  <31.410583, 37.182068, 14.436969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866880, 36.644424, 14.124888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.676132, 36.902699, 14.363444>,  <30.561684, 37.057663, 14.506578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.676132, 36.902699, 14.363444>,  <30.866880, 36.644424, 14.124888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676132, 36.902699, 14.363444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729870, 0.087193, -0.678002,
		-0.489779, -0.758607, 0.429688,
		-0.476871, 0.645688, 0.596390,
		30.533072, 37.096405, 14.542361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129011, 36.525471, 13.903852>,  <30.866880, 36.644424, 14.124888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129011, 36.525471, 13.903852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162199, 36.890324, 14.064418>,  <30.182112, 37.109234, 14.160757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162199, 36.890324, 14.064418>,  <30.129011, 36.525471, 13.903852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162199, 36.890324, 14.064418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518466, 0.383505, -0.764276,
		-0.851064, -0.144705, 0.504729,
		0.082971, 0.912132, 0.401412,
		30.187090, 37.163963, 14.184841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426769, 36.824371, 14.013638>,  <30.129011, 36.525471, 13.903852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426769, 36.824371, 14.013638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691322, 37.123455, 13.989985>,  <29.850054, 37.302906, 13.975795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691322, 37.123455, 13.989985>,  <29.426769, 36.824371, 14.013638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691322, 37.123455, 13.989985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582458, 0.462337, -0.668572,
		-0.472563, 0.476622, 0.741293,
		0.661383, 0.747714, -0.059129,
		29.889738, 37.347771, 13.972247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949724, 37.336800, 14.069389>,  <29.426769, 36.824371, 14.013638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949724, 37.336800, 14.069389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295961, 37.478893, 13.928219>,  <29.503704, 37.564148, 13.843516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295961, 37.478893, 13.928219>,  <28.949724, 37.336800, 14.069389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295961, 37.478893, 13.928219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500720, 0.606429, -0.617676,
		-0.005394, 0.711373, 0.702794,
		0.865593, 0.355235, -0.352927,
		29.555639, 37.585464, 13.822341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.891251, 37.004871, 29.423159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185249, 37.274456, 29.393351>,  <34.361649, 37.436207, 29.375465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185249, 37.274456, 29.393351>,  <33.891251, 37.004871, 29.423159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185249, 37.274456, 29.393351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140316, 0.043655, -0.989144,
		-0.663396, 0.737472, 0.126654,
		0.734995, 0.673966, -0.074519,
		34.405746, 37.476646, 29.370995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652206, 37.733738, 29.086662>,  <33.891251, 37.004871, 29.423159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652206, 37.733738, 29.086662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030609, 37.624294, 29.017145>,  <34.257652, 37.558628, 28.975435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030609, 37.624294, 29.017145>,  <33.652206, 37.733738, 29.086662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030609, 37.624294, 29.017145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154736, 0.089924, -0.983855,
		0.284820, 0.957628, 0.042732,
		0.946010, -0.273609, -0.173791,
		34.314411, 37.542213, 28.965008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008484, 38.230072, 28.660633>,  <33.652206, 37.733738, 29.086662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008484, 38.230072, 28.660633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177559, 37.876156, 28.582165>,  <34.279003, 37.663807, 28.535084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177559, 37.876156, 28.582165>,  <34.008484, 38.230072, 28.660633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177559, 37.876156, 28.582165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420383, 0.000346, -0.907347,
		0.802878, 0.465992, -0.371803,
		0.422688, -0.884789, -0.196173,
		34.304367, 37.610718, 28.523314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127487, 38.268867, 27.948910>,  <34.008484, 38.230072, 28.660633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127487, 38.268867, 27.948910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183273, 37.882870, 28.037754>,  <34.216743, 37.651272, 28.091061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183273, 37.882870, 28.037754>,  <34.127487, 38.268867, 27.948910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183273, 37.882870, 28.037754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167930, -0.244100, -0.955099,
		0.975884, 0.095901, -0.196095,
		0.139462, -0.964997, 0.222109,
		34.225113, 37.593372, 28.104387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604664, 38.060669, 27.426235>,  <34.127487, 38.268867, 27.948910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604664, 38.060669, 27.426235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387894, 37.750797, 27.556585>,  <34.257832, 37.564877, 27.634796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387894, 37.750797, 27.556585>,  <34.604664, 38.060669, 27.426235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387894, 37.750797, 27.556585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271372, -0.205686, -0.940240,
		0.795409, -0.597973, -0.098759,
		-0.541924, -0.774675, 0.325877,
		34.225315, 37.518394, 27.654348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640270, 37.560585, 26.903345>,  <34.604664, 38.060669, 27.426235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640270, 37.560585, 26.903345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333843, 37.410419, 27.112038>,  <34.149986, 37.320320, 27.237253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333843, 37.410419, 27.112038>,  <34.640270, 37.560585, 26.903345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333843, 37.410419, 27.112038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347298, -0.441259, -0.827451,
		0.540852, -0.815082, 0.207656,
		-0.766070, -0.375410, 0.521732,
		34.104023, 37.297798, 27.268557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608047, 36.838875, 26.590033>,  <34.640270, 37.560585, 26.903345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608047, 36.838875, 26.590033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262840, 36.918907, 26.775574>,  <34.055714, 36.966927, 26.886898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262840, 36.918907, 26.775574>,  <34.608047, 36.838875, 26.590033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262840, 36.918907, 26.775574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504447, -0.292383, -0.812432,
		-0.026932, -0.935136, 0.353265,
		-0.863022, 0.200084, 0.463852,
		34.003933, 36.978931, 26.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133530, 36.289364, 26.427256>,  <34.608047, 36.838875, 26.590033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133530, 36.289364, 26.427256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894600, 36.589752, 26.539854>,  <33.751240, 36.769985, 26.607412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894600, 36.589752, 26.539854>,  <34.133530, 36.289364, 26.427256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894600, 36.589752, 26.539854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550798, -0.129010, -0.824607,
		-0.582943, -0.647607, 0.490697,
		-0.597326, 0.750974, 0.281495,
		33.715401, 36.815044, 26.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429897, 36.045933, 26.244003>,  <34.133530, 36.289364, 26.427256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429897, 36.045933, 26.244003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420052, 36.443810, 26.283964>,  <33.414143, 36.682537, 26.307941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420052, 36.443810, 26.283964>,  <33.429897, 36.045933, 26.244003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420052, 36.443810, 26.283964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478480, 0.076020, -0.874801,
		-0.877753, -0.069338, 0.474069,
		-0.024618, 0.994693, 0.099904,
		33.412666, 36.742218, 26.313934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923782, 36.129566, 25.878862>,  <33.429897, 36.045933, 26.244003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923782, 36.129566, 25.878862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051929, 36.507504, 25.906107>,  <33.128819, 36.734264, 25.922455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051929, 36.507504, 25.906107>,  <32.923782, 36.129566, 25.878862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051929, 36.507504, 25.906107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485716, 0.225573, -0.844510,
		-0.813291, 0.237473, 0.531191,
		0.320371, 0.944840, 0.068112,
		33.148041, 36.790955, 25.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337181, 36.482948, 25.824915>,  <32.923782, 36.129566, 25.878862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337181, 36.482948, 25.824915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629368, 36.733723, 25.716560>,  <32.804680, 36.884186, 25.651548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629368, 36.733723, 25.716560>,  <32.337181, 36.482948, 25.824915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629368, 36.733723, 25.716560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504757, 0.228404, -0.832497,
		-0.460048, 0.744841, 0.483289,
		0.730463, 0.626932, -0.270887,
		32.848507, 36.921803, 25.635294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991167, 37.124809, 25.674028>,  <32.337181, 36.482948, 25.824915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991167, 37.124809, 25.674028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341103, 37.147293, 25.481571>,  <32.551064, 37.160782, 25.366096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341103, 37.147293, 25.481571>,  <31.991167, 37.124809, 25.674028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341103, 37.147293, 25.481571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482407, 0.191425, -0.854775,
		0.044055, 0.979896, 0.194583,
		0.874839, 0.056211, -0.481142,
		32.603554, 37.164158, 25.337229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273294, 37.370396, 25.617754>,  <31.991167, 37.124809, 25.674028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273294, 37.370396, 25.617754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011045, 37.068714, 25.603123>,  <30.853695, 36.887707, 25.594345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011045, 37.068714, 25.603123>,  <31.273294, 37.370396, 25.617754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011045, 37.068714, 25.603123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124490, -0.155742, 0.979922,
		-0.744754, 0.637908, 0.195999,
		-0.655625, -0.754200, -0.036576,
		30.814358, 36.842453, 25.592150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834288, 37.508617, 26.078722>,  <31.273294, 37.370396, 25.617754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834288, 37.508617, 26.078722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809006, 37.113609, 26.021011>,  <30.793837, 36.876606, 25.986385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809006, 37.113609, 26.021011>,  <30.834288, 37.508617, 26.078722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809006, 37.113609, 26.021011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208704, -0.154448, 0.965706,
		-0.975934, 0.030927, 0.215861,
		-0.063206, -0.987517, -0.144277,
		30.790045, 36.817356, 25.977728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462179, 37.374111, 26.558357>,  <30.834288, 37.508617, 26.078722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462179, 37.374111, 26.558357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609991, 37.015800, 26.459539>,  <30.698679, 36.800816, 26.400249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609991, 37.015800, 26.459539>,  <30.462179, 37.374111, 26.558357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609991, 37.015800, 26.459539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089952, -0.230128, 0.968994,
		-0.924855, -0.380295, -0.004462,
		0.369530, -0.895777, -0.247043,
		30.720850, 36.747066, 26.385426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122568, 36.886803, 26.956593>,  <30.462179, 37.374111, 26.558357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122568, 36.886803, 26.956593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472168, 36.716301, 26.863268>,  <30.681929, 36.613998, 26.807274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472168, 36.716301, 26.863268>,  <30.122568, 36.886803, 26.956593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472168, 36.716301, 26.863268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190226, -0.141689, 0.971462,
		-0.447147, -0.893438, -0.042751,
		0.873999, -0.426254, -0.233311,
		30.734367, 36.588425, 26.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159830, 36.232738, 27.306923>,  <30.122568, 36.886803, 26.956593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159830, 36.232738, 27.306923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531614, 36.355503, 27.225039>,  <30.754684, 36.429161, 27.175909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531614, 36.355503, 27.225039>,  <30.159830, 36.232738, 27.306923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531614, 36.355503, 27.225039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297406, -0.295018, 0.908028,
		0.218296, -0.904857, -0.365486,
		0.929460, 0.306917, -0.204709,
		30.810452, 36.447578, 27.163626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630083, 35.877892, 27.802849>,  <30.159830, 36.232738, 27.306923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630083, 35.877892, 27.802849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915754, 36.128613, 27.678225>,  <31.087156, 36.279045, 27.603451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915754, 36.128613, 27.678225>,  <30.630083, 35.877892, 27.802849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915754, 36.128613, 27.678225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354052, 0.060488, 0.933268,
		0.603820, -0.776827, -0.178722,
		0.714177, 0.626802, -0.311561,
		31.130007, 36.316654, 27.584757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277983, 35.642952, 28.013165>,  <30.630083, 35.877892, 27.802849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277983, 35.642952, 28.013165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343983, 36.030678, 27.940273>,  <31.383583, 36.263313, 27.896538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343983, 36.030678, 27.940273>,  <31.277983, 35.642952, 28.013165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343983, 36.030678, 27.940273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257050, 0.136116, 0.956764,
		0.952209, -0.204707, -0.226703,
		0.164998, 0.969313, -0.182230,
		31.393482, 36.321472, 27.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921722, 35.783218, 28.179251>,  <31.277983, 35.642952, 28.013165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921722, 35.783218, 28.179251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776825, 36.155449, 28.200428>,  <31.689886, 36.378788, 28.213135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776825, 36.155449, 28.200428>,  <31.921722, 35.783218, 28.179251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776825, 36.155449, 28.200428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253049, 0.043519, 0.966474,
		0.897075, 0.363498, -0.251247,
		-0.362245, 0.930578, 0.052943,
		31.668152, 36.434624, 28.216311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484951, 36.201241, 28.474077>,  <31.921722, 35.783218, 28.179251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484951, 36.201241, 28.474077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134911, 36.383625, 28.538954>,  <31.924887, 36.493053, 28.577881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134911, 36.383625, 28.538954>,  <32.484951, 36.201241, 28.474077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134911, 36.383625, 28.538954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277007, 0.197117, 0.940432,
		0.396826, 0.867899, -0.298800,
		-0.875098, 0.455957, 0.162193,
		31.872381, 36.520412, 28.587612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570827, 36.707512, 28.918224>,  <32.484951, 36.201241, 28.474077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570827, 36.707512, 28.918224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175110, 36.675983, 28.967363>,  <31.937679, 36.657066, 28.996847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175110, 36.675983, 28.967363>,  <32.570827, 36.707512, 28.918224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175110, 36.675983, 28.967363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108805, 0.162800, 0.980641,
		-0.097293, 0.983506, -0.152481,
		-0.989290, -0.078819, 0.122849,
		31.878323, 36.652336, 29.004219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476898, 37.199657, 29.405436>,  <32.570827, 36.707512, 28.918224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476898, 37.199657, 29.405436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126774, 37.007259, 29.425337>,  <31.916698, 36.891823, 29.437277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126774, 37.007259, 29.425337>,  <32.476898, 37.199657, 29.405436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126774, 37.007259, 29.425337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047292, 0.187543, 0.981117,
		-0.481238, 0.856432, -0.186906,
		-0.875313, -0.480991, 0.049751,
		31.864180, 36.862961, 29.440262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031990, 37.629490, 29.799540>,  <32.476898, 37.199657, 29.405436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031990, 37.629490, 29.799540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823822, 37.289112, 29.827995>,  <31.698921, 37.084885, 29.845070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823822, 37.289112, 29.827995>,  <32.031990, 37.629490, 29.799540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823822, 37.289112, 29.827995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072247, 0.126891, 0.989282,
		-0.850850, 0.509699, -0.127515,
		-0.520417, -0.850944, 0.071141,
		31.667698, 37.033829, 29.849339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393766, 37.779930, 30.204384>,  <32.031990, 37.629490, 29.799540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393766, 37.779930, 30.204384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474453, 37.388199, 30.210337>,  <31.522865, 37.153160, 30.213909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474453, 37.388199, 30.210337>,  <31.393766, 37.779930, 30.204384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474453, 37.388199, 30.210337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001625, 0.014861, 0.999888,
		-0.979443, -0.201718, 0.001407,
		0.201716, -0.979331, 0.014883,
		31.534967, 37.094398, 30.214802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926952, 37.543720, 30.712753>,  <31.393766, 37.779930, 30.204384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926952, 37.543720, 30.712753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213982, 37.268433, 30.669975>,  <31.386200, 37.103260, 30.644308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213982, 37.268433, 30.669975>,  <30.926952, 37.543720, 30.712753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213982, 37.268433, 30.669975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008587, -0.162283, 0.986707,
		-0.696431, -0.707115, -0.122360,
		0.717572, -0.688224, -0.106947,
		31.429253, 37.061966, 30.637892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411148, 38.098076, 30.890234>,  <30.926952, 37.543720, 30.712753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411148, 38.098076, 30.890234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.170715, 38.416622, 30.917074>,  <30.026457, 38.607750, 30.933178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.170715, 38.416622, 30.917074>,  <30.411148, 38.098076, 30.890234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170715, 38.416622, 30.917074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462942, -0.278518, -0.841494,
		-0.651450, -0.536868, 0.536083,
		-0.601080, 0.796367, 0.067098,
		29.990391, 38.655533, 30.937204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712423, 37.917503, 30.739437>,  <30.411148, 38.098076, 30.890234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712423, 37.917503, 30.739437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750889, 38.308319, 30.663385>,  <29.773968, 38.542809, 30.617754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750889, 38.308319, 30.663385>,  <29.712423, 37.917503, 30.739437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750889, 38.308319, 30.663385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310145, -0.152095, -0.938444,
		-0.945813, 0.149213, 0.288397,
		0.096164, 0.977038, -0.190131,
		29.779737, 38.601429, 30.606346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092245, 38.155930, 30.391552>,  <29.712423, 37.917503, 30.739437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092245, 38.155930, 30.391552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407305, 38.386360, 30.304150>,  <29.596340, 38.524620, 30.251707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407305, 38.386360, 30.304150>,  <29.092245, 38.155930, 30.391552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407305, 38.386360, 30.304150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265571, -0.002577, -0.964088,
		-0.555954, 0.817390, 0.150960,
		0.787647, 0.576079, -0.218508,
		29.643599, 38.559185, 30.238598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892363, 38.863846, 30.092386>,  <29.092245, 38.155930, 30.391552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892363, 38.863846, 30.092386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.264799, 38.792477, 29.965120>,  <29.488262, 38.749657, 29.888760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.264799, 38.792477, 29.965120>,  <28.892363, 38.863846, 30.092386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264799, 38.792477, 29.965120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266148, 0.264195, -0.927020,
		0.249460, 0.947822, 0.198503,
		0.931093, -0.178424, -0.318167,
		29.544127, 38.738949, 29.869671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030949, 39.443649, 29.619265>,  <28.892363, 38.863846, 30.092386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030949, 39.443649, 29.619265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.295469, 39.156345, 29.532755>,  <29.454182, 38.983963, 29.480848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.295469, 39.156345, 29.532755>,  <29.030949, 39.443649, 29.619265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295469, 39.156345, 29.532755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059949, 0.236791, -0.969709,
		0.747719, 0.654238, 0.113532,
		0.661304, -0.718264, -0.216274,
		29.493860, 38.940865, 29.467873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576763, 39.698753, 29.268778>,  <29.030949, 39.443649, 29.619265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576763, 39.698753, 29.268778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.564722, 39.310261, 29.174282>,  <29.557497, 39.077168, 29.117584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.564722, 39.310261, 29.174282>,  <29.576763, 39.698753, 29.268778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564722, 39.310261, 29.174282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098189, 0.232329, -0.967668,
		0.994712, -0.052324, 0.088371,
		-0.030101, -0.971229, -0.236238,
		29.555691, 39.018890, 29.103411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174219, 39.650719, 28.932999>,  <29.576763, 39.698753, 29.268778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174219, 39.650719, 28.932999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.959826, 39.331570, 28.822636>,  <29.831190, 39.140079, 28.756418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.959826, 39.331570, 28.822636>,  <30.174219, 39.650719, 28.932999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959826, 39.331570, 28.822636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025646, 0.311276, -0.949973,
		0.843840, -0.516245, -0.146376,
		-0.535982, -0.797872, -0.275907,
		29.799030, 39.092209, 28.739864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442724, 39.447758, 28.253601>,  <30.174219, 39.650719, 28.932999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442724, 39.447758, 28.253601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091118, 39.257107, 28.258598>,  <29.880154, 39.142715, 28.261597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091118, 39.257107, 28.258598>,  <30.442724, 39.447758, 28.253601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091118, 39.257107, 28.258598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053356, 0.072291, -0.995955,
		0.473800, -0.876126, -0.088976,
		-0.879014, -0.476632, 0.012495,
		29.827414, 39.114117, 28.262346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411299, 38.834877, 27.756617>,  <30.442724, 39.447758, 28.253601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411299, 38.834877, 27.756617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.030670, 38.944878, 27.811584>,  <29.802292, 39.010876, 27.844566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.030670, 38.944878, 27.811584>,  <30.411299, 38.834877, 27.756617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030670, 38.944878, 27.811584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159109, -0.058066, -0.985552,
		-0.263045, -0.959690, 0.099009,
		-0.951573, 0.274998, 0.137421,
		29.745197, 39.027378, 27.852812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030703, 38.314045, 27.407896>,  <30.411299, 38.834877, 27.756617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030703, 38.314045, 27.407896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768492, 38.613182, 27.449867>,  <29.611166, 38.792664, 27.475050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768492, 38.613182, 27.449867>,  <30.030703, 38.314045, 27.407896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768492, 38.613182, 27.449867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274208, -0.106253, -0.955782,
		-0.703629, -0.655314, 0.274718,
		-0.655527, 0.747846, 0.104930,
		29.571833, 38.837536, 27.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432430, 38.108974, 27.037237>,  <30.030703, 38.314045, 27.407896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432430, 38.108974, 27.037237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.427303, 38.506878, 27.077810>,  <29.424227, 38.745621, 27.102154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.427303, 38.506878, 27.077810>,  <29.432430, 38.108974, 27.037237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427303, 38.506878, 27.077810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421332, 0.086622, -0.902760,
		-0.906816, -0.054310, 0.418014,
		-0.012820, 0.994760, 0.101432,
		29.423458, 38.805305, 27.108240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924196, 38.257050, 26.521559>,  <29.432430, 38.108974, 27.037237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924196, 38.257050, 26.521559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.045849, 38.628944, 26.604601>,  <29.118839, 38.852081, 26.654427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.045849, 38.628944, 26.604601>,  <28.924196, 38.257050, 26.521559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045849, 38.628944, 26.604601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415613, 0.325589, -0.849269,
		-0.857188, 0.172006, 0.485431,
		0.304130, 0.929734, 0.207603,
		29.137089, 38.907864, 26.666882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347898, 38.759941, 26.417992>,  <28.924196, 38.257050, 26.521559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347898, 38.759941, 26.417992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.701744, 38.941864, 26.376791>,  <28.914051, 39.051018, 26.352072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.701744, 38.941864, 26.376791>,  <28.347898, 38.759941, 26.417992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701744, 38.941864, 26.376791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289455, 0.362361, -0.885952,
		-0.365611, 0.813541, 0.452195,
		0.884615, 0.454804, -0.103000,
		28.967129, 39.078304, 26.345890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187708, 39.352932, 26.121216>,  <28.347898, 38.759941, 26.417992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187708, 39.352932, 26.121216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577681, 39.303326, 26.047323>,  <28.811665, 39.273563, 26.002987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577681, 39.303326, 26.047323>,  <28.187708, 39.352932, 26.121216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577681, 39.303326, 26.047323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151234, 0.239637, -0.959011,
		0.163199, 0.962910, 0.214875,
		0.974933, -0.124013, -0.184734,
		28.870161, 39.266121, 25.991903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338343, 39.902191, 25.601982>,  <28.187708, 39.352932, 26.121216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338343, 39.902191, 25.601982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654066, 39.657413, 25.581892>,  <28.843500, 39.510548, 25.569838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654066, 39.657413, 25.581892>,  <28.338343, 39.902191, 25.601982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654066, 39.657413, 25.581892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176183, 0.304087, -0.936211,
		0.588178, 0.730109, 0.347832,
		0.789307, -0.611941, -0.050224,
		28.890858, 39.473831, 25.566824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937908, 40.338264, 25.420998>,  <28.338343, 39.902191, 25.601982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937908, 40.338264, 25.420998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.046440, 39.973240, 25.298618>,  <29.111559, 39.754223, 25.225191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.046440, 39.973240, 25.298618>,  <28.937908, 40.338264, 25.420998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046440, 39.973240, 25.298618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267155, 0.376788, -0.886938,
		0.924667, 0.158916, 0.346030,
		0.271328, -0.912566, -0.305948,
		29.127838, 39.699471, 25.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635376, 40.383392, 25.101736>,  <28.937908, 40.338264, 25.420998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635376, 40.383392, 25.101736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451393, 40.064201, 24.945955>,  <29.341003, 39.872688, 24.852488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451393, 40.064201, 24.945955>,  <29.635376, 40.383392, 25.101736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451393, 40.064201, 24.945955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388032, 0.213867, -0.896489,
		0.798670, -0.563464, 0.211272,
		-0.459955, -0.797979, -0.389451,
		29.313406, 39.824806, 24.829121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224016, 40.041759, 24.648680>,  <29.635376, 40.383392, 25.101736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224016, 40.041759, 24.648680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.856707, 39.925877, 24.540726>,  <29.636320, 39.856346, 24.475952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.856707, 39.925877, 24.540726>,  <30.224016, 40.041759, 24.648680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856707, 39.925877, 24.540726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271492, 0.035446, -0.961788,
		0.288204, -0.956459, 0.046105,
		-0.918276, -0.289708, -0.269886,
		29.581224, 39.838963, 24.459761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277086, 39.680607, 24.018597>,  <30.224016, 40.041759, 24.648680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277086, 39.680607, 24.018597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.889206, 39.777493, 24.031334>,  <29.656479, 39.835625, 24.038977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.889206, 39.777493, 24.031334>,  <30.277086, 39.680607, 24.018597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889206, 39.777493, 24.031334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014286, 0.186342, -0.982381,
		-0.243883, -0.952159, -0.184156,
		-0.969699, 0.242217, 0.031843,
		29.598295, 39.850159, 24.040886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043661, 39.309292, 23.402227>,  <30.277086, 39.680607, 24.018597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043661, 39.309292, 23.402227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784887, 39.597275, 23.502741>,  <29.629623, 39.770065, 23.563049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.784887, 39.597275, 23.502741>,  <30.043661, 39.309292, 23.402227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784887, 39.597275, 23.502741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125804, 0.224247, -0.966378,
		-0.752096, -0.656796, -0.054501,
		-0.646935, 0.719953, 0.251283,
		29.590807, 39.813259, 23.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576059, 39.281975, 22.902538>,  <30.043661, 39.309292, 23.402227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576059, 39.281975, 22.902538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479620, 39.646770, 23.035290>,  <29.421757, 39.865650, 23.114941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479620, 39.646770, 23.035290>,  <29.576059, 39.281975, 22.902538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479620, 39.646770, 23.035290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263052, 0.267754, -0.926883,
		-0.934171, -0.310770, 0.175347,
		-0.241097, 0.911992, 0.331876,
		29.407291, 39.920368, 23.134853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982555, 39.393299, 22.544794>,  <29.576059, 39.281975, 22.902538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982555, 39.393299, 22.544794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110350, 39.753098, 22.664021>,  <29.187025, 39.968975, 22.735556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110350, 39.753098, 22.664021>,  <28.982555, 39.393299, 22.544794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110350, 39.753098, 22.664021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294345, 0.393192, -0.871069,
		-0.900717, 0.190559, 0.390380,
		0.319484, 0.899493, 0.298064,
		29.206194, 40.022945, 22.753439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397207, 39.792973, 22.373171>,  <28.982555, 39.393299, 22.544794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397207, 39.792973, 22.373171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718058, 40.026749, 22.422205>,  <28.910568, 40.167015, 22.451626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718058, 40.026749, 22.422205>,  <28.397207, 39.792973, 22.373171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718058, 40.026749, 22.422205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148150, 0.393624, -0.907255,
		-0.578486, 0.709571, 0.402321,
		0.802125, 0.584438, 0.122583,
		28.958694, 40.202080, 22.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215759, 40.433453, 22.197056>,  <28.397207, 39.792973, 22.373171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215759, 40.433453, 22.197056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611158, 40.443241, 22.137354>,  <28.848398, 40.449116, 22.101534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611158, 40.443241, 22.137354>,  <28.215759, 40.433453, 22.197056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611158, 40.443241, 22.137354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138666, 0.540657, -0.829736,
		0.060390, 0.840887, 0.537831,
		0.988496, 0.024471, -0.149253,
		28.907707, 40.450584, 22.092579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336943, 41.180683, 21.812687>,  <28.215759, 40.433453, 22.197056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336943, 41.180683, 21.812687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670095, 40.965343, 21.761328>,  <28.869987, 40.836140, 21.730513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670095, 40.965343, 21.761328>,  <28.336943, 41.180683, 21.812687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670095, 40.965343, 21.761328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098839, 0.372947, -0.922574,
		0.544554, 0.755704, 0.363830,
		0.832882, -0.538352, -0.128397,
		28.919960, 40.803837, 21.722809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757160, 41.674717, 21.473001>,  <28.336943, 41.180683, 21.812687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757160, 41.674717, 21.473001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918642, 41.319267, 21.385948>,  <29.015532, 41.105995, 21.333715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918642, 41.319267, 21.385948>,  <28.757160, 41.674717, 21.473001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918642, 41.319267, 21.385948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205788, 0.319983, -0.924804,
		0.891444, 0.328562, 0.312047,
		0.403706, -0.888627, -0.217633,
		29.039753, 41.052681, 21.320658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210489, 41.848419, 20.942326>,  <28.757160, 41.674717, 21.473001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210489, 41.848419, 20.942326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183233, 41.450611, 20.910601>,  <29.166880, 41.211926, 20.891565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183233, 41.450611, 20.910601>,  <29.210489, 41.848419, 20.942326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183233, 41.450611, 20.910601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090812, 0.072985, -0.993190,
		0.993534, -0.074880, 0.085341,
		-0.068141, -0.994518, -0.079313,
		29.162790, 41.152256, 20.886806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712257, 41.657063, 20.437105>,  <29.210489, 41.848419, 20.942326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712257, 41.657063, 20.437105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461512, 41.345528, 20.445652>,  <29.311064, 41.158607, 20.450781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461512, 41.345528, 20.445652>,  <29.712257, 41.657063, 20.437105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461512, 41.345528, 20.445652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079768, -0.091434, -0.992611,
		0.775033, -0.620530, 0.119443,
		-0.626866, -0.778834, 0.021366,
		29.273451, 41.111877, 20.452063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513260, 41.340481, 20.283091>,  <29.712257, 41.657063, 20.437105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513260, 41.340481, 20.283091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825790, 41.589935, 20.273304>,  <31.013309, 41.739609, 20.267433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825790, 41.589935, 20.273304>,  <30.513260, 41.340481, 20.283091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825790, 41.589935, 20.273304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183977, -0.192684, 0.963859,
		0.596388, -0.757591, -0.265285,
		0.781328, 0.623641, -0.024465,
		31.060188, 41.777027, 20.265965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068953, 41.007465, 20.653536>,  <30.513260, 41.340481, 20.283091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068953, 41.007465, 20.653536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173883, 41.392624, 20.628183>,  <31.236843, 41.623718, 20.612972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173883, 41.392624, 20.628183>,  <31.068953, 41.007465, 20.653536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173883, 41.392624, 20.628183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351946, -0.034314, 0.935391,
		0.898508, -0.267686, -0.347889,
		0.262329, 0.962895, -0.063380,
		31.252583, 41.681492, 20.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711998, 41.030766, 21.008509>,  <31.068953, 41.007465, 20.653536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711998, 41.030766, 21.008509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626173, 41.420849, 21.030146>,  <31.574678, 41.654900, 21.043127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626173, 41.420849, 21.030146>,  <31.711998, 41.030766, 21.008509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626173, 41.420849, 21.030146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222925, -0.005022, 0.974823,
		0.950930, 0.221217, -0.216322,
		-0.214561, 0.975212, 0.054091,
		31.561804, 41.713413, 21.046373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280621, 41.371281, 21.242327>,  <31.711998, 41.030766, 21.008509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280621, 41.371281, 21.242327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970840, 41.612808, 21.317835>,  <31.784973, 41.757725, 21.363140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970840, 41.612808, 21.317835>,  <32.280621, 41.371281, 21.242327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970840, 41.612808, 21.317835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299495, 0.087093, 0.950114,
		0.557255, 0.792350, -0.248289,
		-0.774448, 0.603818, 0.188772,
		31.738506, 41.793953, 21.374466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586155, 41.885792, 21.696939>,  <32.280621, 41.371281, 21.242327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586155, 41.885792, 21.696939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192303, 41.904728, 21.764193>,  <31.955992, 41.916088, 21.804544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192303, 41.904728, 21.764193>,  <32.586155, 41.885792, 21.696939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192303, 41.904728, 21.764193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171360, 0.075291, 0.982327,
		0.033846, 0.996037, -0.082246,
		-0.984627, 0.047342, 0.168133,
		31.896915, 41.918930, 21.814632>
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
