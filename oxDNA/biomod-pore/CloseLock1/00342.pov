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
	<24.438353, 35.506023, 34.852924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216934, 35.224312, 35.030720>,  <24.084084, 35.055283, 35.137398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216934, 35.224312, 35.030720>,  <24.438353, 35.506023, 34.852924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216934, 35.224312, 35.030720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721746, -0.671981, -0.165908,
		0.415536, 0.228973, 0.880285,
		-0.553546, -0.704282, 0.444492,
		24.050871, 35.013027, 35.164066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411509, 35.263981, 35.567276>,  <24.438353, 35.506023, 34.852924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411509, 35.263981, 35.567276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332607, 34.973705, 35.303619>,  <24.285267, 34.799541, 35.145424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332607, 34.973705, 35.303619>,  <24.411509, 35.263981, 35.567276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332607, 34.973705, 35.303619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881782, -0.425161, 0.204204,
		-0.428431, -0.540941, 0.723761,
		-0.197252, -0.725687, -0.659144,
		24.273432, 34.756001, 35.105877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034214, 34.899334, 35.949959>,  <24.411509, 35.263981, 35.567276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034214, 34.899334, 35.949959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193035, 34.989319, 35.594040>,  <25.288328, 35.043308, 35.380489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193035, 34.989319, 35.594040>,  <25.034214, 34.899334, 35.949959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193035, 34.989319, 35.594040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916631, 0.146034, -0.372104,
		0.046233, 0.963363, 0.264187,
		0.397051, 0.224958, -0.889800,
		25.312151, 35.056805, 35.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232944, 34.136627, 35.804253>,  <25.034214, 34.899334, 35.949959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232944, 34.136627, 35.804253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454308, 33.878159, 35.594032>,  <25.587126, 33.723076, 35.467899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454308, 33.878159, 35.594032>,  <25.232944, 34.136627, 35.804253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454308, 33.878159, 35.594032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218045, -0.721365, 0.657334,
		-0.803865, -0.249180, -0.540103,
		0.553406, -0.646174, -0.525548,
		25.620329, 33.684307, 35.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862619, 33.578766, 35.600029>,  <25.232944, 34.136627, 35.804253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862619, 33.578766, 35.600029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239307, 33.447666, 35.630341>,  <25.465321, 33.369007, 35.648525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239307, 33.447666, 35.630341>,  <24.862619, 33.578766, 35.600029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239307, 33.447666, 35.630341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303035, -0.728730, 0.614103,
		-0.146050, -0.601277, -0.785580,
		0.941722, -0.327748, 0.075777,
		25.521824, 33.349342, 35.653072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795805, 32.851841, 35.422253>,  <24.862619, 33.578766, 35.600029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795805, 32.851841, 35.422253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132881, 32.908119, 35.630131>,  <25.335127, 32.941887, 35.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132881, 32.908119, 35.630131>,  <24.795805, 32.851841, 35.422253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132881, 32.908119, 35.630131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070576, -0.928059, 0.365685,
		0.533755, -0.344836, -0.772135,
		0.842689, 0.140692, 0.519694,
		25.385687, 32.950325, 35.786037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215830, 32.227558, 35.331436>,  <24.795805, 32.851841, 35.422253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215830, 32.227558, 35.331436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359343, 32.405350, 35.659756>,  <25.445450, 32.512024, 35.856747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359343, 32.405350, 35.659756>,  <25.215830, 32.227558, 35.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359343, 32.405350, 35.659756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125230, -0.848478, 0.514202,
		0.924983, -0.287275, -0.248756,
		0.358781, 0.444476, 0.820803,
		25.466976, 32.538692, 35.905998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847383, 31.859322, 35.594707>,  <25.215830, 32.227558, 35.331436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847383, 31.859322, 35.594707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691896, 32.047138, 35.911800>,  <25.598604, 32.159828, 36.102058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691896, 32.047138, 35.911800>,  <25.847383, 31.859322, 35.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691896, 32.047138, 35.911800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042627, -0.868643, 0.493602,
		0.920371, 0.158079, 0.357670,
		-0.388715, 0.469543, 0.792735,
		25.575281, 32.188000, 36.149620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225584, 31.644838, 36.123837>,  <25.847383, 31.859322, 35.594707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225584, 31.644838, 36.123837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942955, 31.833517, 36.334835>,  <25.773378, 31.946724, 36.461433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942955, 31.833517, 36.334835>,  <26.225584, 31.644838, 36.123837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942955, 31.833517, 36.334835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079553, -0.793657, 0.603141,
		0.703154, 0.384199, 0.598302,
		-0.706573, 0.471698, 0.527499,
		25.730984, 31.975027, 36.493084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498362, 31.815506, 36.924259>,  <26.225584, 31.644838, 36.123837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498362, 31.815506, 36.924259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098999, 31.792917, 36.924011>,  <25.859383, 31.779364, 36.923862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098999, 31.792917, 36.924011>,  <26.498362, 31.815506, 36.924259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098999, 31.792917, 36.924011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030884, -0.555202, 0.831142,
		-0.047281, 0.829796, 0.556060,
		-0.998404, -0.056471, -0.000623,
		25.799479, 31.775976, 36.923824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288328, 31.912344, 37.627697>,  <26.498362, 31.815506, 36.924259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288328, 31.912344, 37.627697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961962, 31.746229, 37.466793>,  <25.766142, 31.646561, 37.370251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961962, 31.746229, 37.466793>,  <26.288328, 31.912344, 37.627697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961962, 31.746229, 37.466793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113734, -0.566872, 0.815917,
		-0.566872, 0.711472, 0.415288,
		-0.815917, -0.415288, -0.402262,
		25.717186, 31.621643, 37.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832647, 31.871429, 38.171871>,  <26.288328, 31.912344, 37.627697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832647, 31.871429, 38.171871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702209, 31.612392, 37.896397>,  <25.623947, 31.456970, 37.731113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702209, 31.612392, 37.896397>,  <25.832647, 31.871429, 38.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702209, 31.612392, 37.896397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113198, -0.696517, 0.708555,
		-0.938535, 0.309014, 0.153825,
		-0.326096, -0.647591, -0.688686,
		25.604382, 31.418116, 37.689793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158152, 31.783463, 38.414898>,  <25.832647, 31.871429, 38.171871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158152, 31.783463, 38.414898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216444, 31.473911, 38.168362>,  <25.251419, 31.288181, 38.020439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216444, 31.473911, 38.168362>,  <25.158152, 31.783463, 38.414898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216444, 31.473911, 38.168362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354465, -0.622474, 0.697769,
		-0.923643, 0.116783, -0.365027,
		0.145732, -0.773879, -0.616339,
		25.260164, 31.241747, 37.983459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570829, 31.309792, 38.449467>,  <25.158152, 31.783463, 38.414898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570829, 31.309792, 38.449467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866207, 31.079203, 38.309536>,  <25.043434, 30.940849, 38.225578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866207, 31.079203, 38.309536>,  <24.570829, 31.309792, 38.449467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866207, 31.079203, 38.309536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294724, -0.742536, 0.601480,
		-0.606495, -0.341058, -0.718222,
		0.738445, -0.576472, -0.349827,
		25.087740, 30.906261, 38.204586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409367, 30.579399, 38.428028>,  <24.570829, 31.309792, 38.449467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409367, 30.579399, 38.428028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808357, 30.555229, 38.442921>,  <25.047752, 30.540728, 38.451855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808357, 30.555229, 38.442921>,  <24.409367, 30.579399, 38.428028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808357, 30.555229, 38.442921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069906, -0.745780, 0.662514,
		-0.012264, -0.663446, -0.748124,
		0.997479, -0.060424, 0.037233,
		25.107601, 30.537102, 38.454090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589586, 29.902353, 38.341721>,  <24.409367, 30.579399, 38.428028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589586, 29.902353, 38.341721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960827, 29.974419, 38.472054>,  <25.183571, 30.017658, 38.550255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960827, 29.974419, 38.472054>,  <24.589586, 29.902353, 38.341721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960827, 29.974419, 38.472054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099470, -0.723349, 0.683281,
		0.358795, -0.666564, -0.653420,
		0.928101, 0.180162, 0.325837,
		25.239258, 30.028467, 38.569805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048826, 29.262346, 38.370270>,  <24.589586, 29.902353, 38.341721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048826, 29.262346, 38.370270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196344, 29.516565, 38.641582>,  <25.284855, 29.669096, 38.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196344, 29.516565, 38.641582>,  <25.048826, 29.262346, 38.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196344, 29.516565, 38.641582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023537, -0.735873, 0.676710,
		0.929212, -0.233603, -0.286347,
		0.368797, 0.635547, 0.678284,
		25.306984, 29.707230, 38.845066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464249, 28.829054, 38.757156>,  <25.048826, 29.262346, 38.370270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464249, 28.829054, 38.757156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476925, 29.159740, 38.981846>,  <25.484529, 29.358152, 39.116661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476925, 29.159740, 38.981846>,  <25.464249, 28.829054, 38.757156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476925, 29.159740, 38.981846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081264, -0.558017, 0.825841,
		0.996189, -0.071817, 0.049499,
		0.031688, 0.826716, 0.561727,
		25.486431, 29.407755, 39.150364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983461, 28.726030, 39.169262>,  <25.464249, 28.829054, 38.757156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983461, 28.726030, 39.169262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750334, 28.966339, 39.388130>,  <25.610456, 29.110523, 39.519451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750334, 28.966339, 39.388130>,  <25.983461, 28.726030, 39.169262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750334, 28.966339, 39.388130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095209, -0.618234, 0.780206,
		0.807005, 0.506814, 0.303120,
		-0.582819, 0.600771, 0.547171,
		25.575489, 29.146570, 39.552280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266022, 28.777508, 39.898613>,  <25.983461, 28.726030, 39.169262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266022, 28.777508, 39.898613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892525, 28.910534, 39.951569>,  <25.668427, 28.990351, 39.983341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892525, 28.910534, 39.951569>,  <26.266022, 28.777508, 39.898613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892525, 28.910534, 39.951569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099903, -0.597275, 0.795790,
		0.343724, 0.729837, 0.590925,
		-0.933741, 0.332567, 0.132384,
		25.612402, 29.010303, 39.991283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259180, 29.155817, 40.486282>,  <26.266022, 28.777508, 39.898613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259180, 29.155817, 40.486282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878138, 29.048187, 40.429516>,  <25.649511, 28.983610, 40.395458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878138, 29.048187, 40.429516>,  <26.259180, 29.155817, 40.486282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878138, 29.048187, 40.429516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034678, -0.367409, 0.929413,
		-0.302220, 0.890286, 0.340666,
		-0.952607, -0.269074, -0.141912,
		25.592356, 28.967464, 40.386944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960169, 29.283220, 41.128174>,  <26.259180, 29.155817, 40.486282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960169, 29.283220, 41.128174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692553, 29.048367, 40.945896>,  <25.531982, 28.907454, 40.836529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692553, 29.048367, 40.945896>,  <25.960169, 29.283220, 41.128174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692553, 29.048367, 40.945896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104032, -0.533115, 0.839622,
		-0.735909, 0.609148, 0.295594,
		-0.669040, -0.587134, -0.455696,
		25.491840, 28.872227, 40.809189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391850, 29.331226, 41.562813>,  <25.960169, 29.283220, 41.128174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391850, 29.331226, 41.562813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354696, 28.997900, 41.344837>,  <25.332405, 28.797905, 41.214050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354696, 28.997900, 41.344837>,  <25.391850, 29.331226, 41.562813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354696, 28.997900, 41.344837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242647, -0.511858, 0.824090,
		-0.965658, 0.208772, -0.154659,
		-0.092884, -0.833316, -0.544938,
		25.326832, 28.747906, 41.181355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762449, 29.008684, 41.870178>,  <25.391850, 29.331226, 41.562813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762449, 29.008684, 41.870178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966366, 28.722609, 41.678925>,  <25.088717, 28.550962, 41.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966366, 28.722609, 41.678925>,  <24.762449, 29.008684, 41.870178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966366, 28.722609, 41.678925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349653, -0.680054, 0.644414,
		-0.786037, -0.161336, -0.596755,
		0.509792, -0.715191, -0.478136,
		25.119305, 28.508051, 41.535484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314289, 28.428543, 41.558399>,  <24.762449, 29.008684, 41.870178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314289, 28.428543, 41.558399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676010, 28.304949, 41.676224>,  <24.893044, 28.230793, 41.746918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676010, 28.304949, 41.676224>,  <24.314289, 28.428543, 41.558399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676010, 28.304949, 41.676224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424183, -0.572737, 0.701456,
		-0.048032, -0.759276, -0.648993,
		0.904302, -0.308984, 0.294562,
		24.947300, 28.212254, 41.764591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389204, 27.651573, 41.506386>,  <24.314289, 28.428543, 41.558399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389204, 27.651573, 41.506386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622822, 27.779648, 41.804749>,  <24.762993, 27.856493, 41.983765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622822, 27.779648, 41.804749>,  <24.389204, 27.651573, 41.506386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622822, 27.779648, 41.804749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542498, -0.529582, 0.652104,
		0.603811, -0.785510, -0.135600,
		0.584045, 0.320184, 0.745904,
		24.798035, 27.875704, 42.028519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598717, 27.021250, 41.918118>,  <24.389204, 27.651573, 41.506386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598717, 27.021250, 41.918118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569445, 27.372412, 42.107399>,  <24.551882, 27.583109, 42.220970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569445, 27.372412, 42.107399>,  <24.598717, 27.021250, 41.918118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569445, 27.372412, 42.107399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699394, -0.383426, 0.603185,
		0.710980, -0.286817, 0.642062,
		-0.073179, 0.877907, 0.473206,
		24.547491, 27.635784, 42.249359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659632, 26.353224, 42.091644>,  <24.598717, 27.021250, 41.918118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659632, 26.353224, 42.091644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361294, 26.550327, 42.270935>,  <24.182291, 26.668589, 42.378510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361294, 26.550327, 42.270935>,  <24.659632, 26.353224, 42.091644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361294, 26.550327, 42.270935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616883, -0.764843, -0.185663,
		0.251333, -0.414977, 0.874429,
		-0.745846, 0.492757, 0.448223,
		24.137541, 26.698154, 42.405403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472731, 26.178047, 42.779869>,  <24.659632, 26.353224, 42.091644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472731, 26.178047, 42.779869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633894, 25.842016, 42.634575>,  <24.730591, 25.640398, 42.547398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633894, 25.842016, 42.634575>,  <24.472731, 26.178047, 42.779869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633894, 25.842016, 42.634575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712451, 0.537005, -0.451706,
		0.574526, -0.076790, 0.814876,
		0.402907, -0.840077, -0.363233,
		24.754766, 25.589993, 42.525604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186094, 26.337530, 42.897041>,  <24.472731, 26.178047, 42.779869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186094, 26.337530, 42.897041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129368, 26.077860, 42.598122>,  <25.095333, 25.922058, 42.418770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129368, 26.077860, 42.598122>,  <25.186094, 26.337530, 42.897041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129368, 26.077860, 42.598122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745557, 0.426567, -0.512041,
		0.651179, -0.629769, 0.423505,
		-0.141814, -0.649177, -0.747300,
		25.086823, 25.883106, 42.373932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773546, 25.910627, 42.662312>,  <25.186094, 26.337530, 42.897041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773546, 25.910627, 42.662312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553257, 25.962099, 42.332428>,  <25.421083, 25.992983, 42.134499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553257, 25.962099, 42.332428>,  <25.773546, 25.910627, 42.662312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553257, 25.962099, 42.332428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814844, 0.297053, -0.497784,
		0.180928, -0.946151, -0.268447,
		-0.550722, 0.128679, -0.824711,
		25.388041, 26.000702, 42.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211042, 25.571154, 42.086517>,  <25.773546, 25.910627, 42.662312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211042, 25.571154, 42.086517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955412, 25.854189, 41.965919>,  <25.802034, 26.024010, 41.893562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955412, 25.854189, 41.965919>,  <26.211042, 25.571154, 42.086517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955412, 25.854189, 41.965919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761875, 0.528614, -0.374318,
		-0.105488, -0.468919, -0.876919,
		-0.639076, 0.707589, -0.301495,
		25.763689, 26.066465, 41.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255423, 25.430622, 41.414841>,  <26.211042, 25.571154, 42.086517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255423, 25.430622, 41.414841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160143, 25.812897, 41.484039>,  <26.102974, 26.042261, 41.525558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160143, 25.812897, 41.484039>,  <26.255423, 25.430622, 41.414841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160143, 25.812897, 41.484039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870652, 0.289053, -0.398012,
		-0.430378, 0.055812, -0.900921,
		-0.238200, 0.955685, 0.172995,
		26.088682, 26.099602, 41.535938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302189, 25.866232, 40.791874>,  <26.255423, 25.430622, 41.414841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302189, 25.866232, 40.791874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363083, 26.088017, 41.119141>,  <26.399620, 26.221087, 41.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363083, 26.088017, 41.119141>,  <26.302189, 25.866232, 40.791874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363083, 26.088017, 41.119141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905609, 0.253301, -0.340164,
		-0.395850, 0.792725, -0.463563,
		0.152235, 0.554460, 0.818168,
		26.408754, 26.254354, 41.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029438, 25.484787, 40.255516>,  <26.302189, 25.866232, 40.791874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029438, 25.484787, 40.255516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735882, 25.392818, 39.999847>,  <25.559748, 25.337637, 39.846447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735882, 25.392818, 39.999847>,  <26.029438, 25.484787, 40.255516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735882, 25.392818, 39.999847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410465, 0.599629, -0.686996,
		0.541219, -0.766538, -0.345690,
		-0.733894, -0.229921, -0.639168,
		25.515715, 25.323841, 39.808098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294132, 25.399855, 39.633617>,  <26.029438, 25.484787, 40.255516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294132, 25.399855, 39.633617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919212, 25.525581, 39.573383>,  <25.694262, 25.601017, 39.537243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919212, 25.525581, 39.573383>,  <26.294132, 25.399855, 39.633617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919212, 25.525581, 39.573383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322164, 0.616515, -0.718415,
		-0.132973, -0.721882, -0.679120,
		-0.937298, 0.314318, -0.150585,
		25.638023, 25.619877, 39.528210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126850, 25.320126, 38.827381>,  <26.294132, 25.399855, 39.633617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126850, 25.320126, 38.827381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891214, 25.578911, 39.021046>,  <25.749834, 25.734182, 39.137245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891214, 25.578911, 39.021046>,  <26.126850, 25.320126, 38.827381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891214, 25.578911, 39.021046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332392, 0.740129, -0.584572,
		-0.736540, -0.183433, -0.651047,
		-0.589088, 0.646963, 0.484163,
		25.714487, 25.772999, 39.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731647, 25.650808, 38.316204>,  <26.126850, 25.320126, 38.827381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731647, 25.650808, 38.316204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729105, 25.907467, 38.622993>,  <25.727579, 26.061462, 38.807068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729105, 25.907467, 38.622993>,  <25.731647, 25.650808, 38.316204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729105, 25.907467, 38.622993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294870, 0.734089, -0.611690,
		-0.955516, 0.222271, -0.193867,
		-0.006355, 0.641646, 0.766975,
		25.727198, 26.099960, 38.853085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460398, 26.285540, 38.099342>,  <25.731647, 25.650808, 38.316204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460398, 26.285540, 38.099342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672718, 26.410807, 38.414349>,  <25.800110, 26.485968, 38.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672718, 26.410807, 38.414349>,  <25.460398, 26.285540, 38.099342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672718, 26.410807, 38.414349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209992, 0.851645, -0.480213,
		-0.821068, 0.420269, 0.386292,
		0.530802, 0.313169, 0.787512,
		25.831959, 26.504757, 38.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456717, 27.097660, 38.200394>,  <25.460398, 26.285540, 38.099342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456717, 27.097660, 38.200394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787270, 27.006464, 38.406349>,  <25.985601, 26.951746, 38.529922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787270, 27.006464, 38.406349>,  <25.456717, 27.097660, 38.200394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787270, 27.006464, 38.406349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495064, 0.729876, -0.471373,
		-0.268340, 0.644439, 0.716026,
		0.826381, -0.227990, 0.514893,
		26.035185, 26.938066, 38.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652885, 27.683540, 38.386593>,  <25.456717, 27.097660, 38.200394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652885, 27.683540, 38.386593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984116, 27.473206, 38.464348>,  <26.182854, 27.347004, 38.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984116, 27.473206, 38.464348>,  <25.652885, 27.683540, 38.386593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984116, 27.473206, 38.464348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560369, 0.786704, -0.259003,
		-0.016734, 0.323404, 0.946113,
		0.828074, -0.525839, 0.194391,
		26.232538, 27.315454, 38.522663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071264, 28.124016, 38.712791>,  <25.652885, 27.683540, 38.386593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071264, 28.124016, 38.712791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332552, 27.852335, 38.578930>,  <26.489325, 27.689327, 38.498611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332552, 27.852335, 38.578930>,  <26.071264, 28.124016, 38.712791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332552, 27.852335, 38.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605134, 0.733952, -0.308428,
		0.455104, -0.001040, 0.890437,
		0.653217, -0.679201, -0.334654,
		26.528517, 27.648575, 38.478535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766825, 28.319651, 38.946449>,  <26.071264, 28.124016, 38.712791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766825, 28.319651, 38.946449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809031, 28.084753, 38.625450>,  <26.834354, 27.943813, 38.432850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809031, 28.084753, 38.625450>,  <26.766825, 28.319651, 38.946449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809031, 28.084753, 38.625450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565082, 0.699457, -0.437541,
		0.818259, -0.407312, 0.405646,
		0.105516, -0.587245, -0.802502,
		26.840685, 27.908579, 38.384701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428434, 28.329294, 38.702057>,  <26.766825, 28.319651, 38.946449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428434, 28.329294, 38.702057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244009, 28.200619, 38.371254>,  <27.133354, 28.123413, 38.172771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244009, 28.200619, 38.371254>,  <27.428434, 28.329294, 38.702057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244009, 28.200619, 38.371254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550368, 0.627397, -0.550878,
		0.696073, -0.709146, -0.112222,
		-0.461061, -0.321688, -0.827006,
		27.105690, 28.104113, 38.123154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937853, 28.322542, 38.233440>,  <27.428434, 28.329294, 38.702057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937853, 28.322542, 38.233440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608824, 28.302256, 38.006886>,  <27.411406, 28.290085, 37.870953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608824, 28.302256, 38.006886>,  <27.937853, 28.322542, 38.233440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608824, 28.302256, 38.006886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481226, 0.468582, -0.740846,
		0.302972, -0.881963, -0.361038,
		-0.822575, -0.050715, -0.566391,
		27.362051, 28.287041, 37.836967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156397, 28.139246, 37.584980>,  <27.937853, 28.322542, 38.233440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156397, 28.139246, 37.584980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796974, 28.308001, 37.536625>,  <27.581322, 28.409252, 37.507610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796974, 28.308001, 37.536625>,  <28.156397, 28.139246, 37.584980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796974, 28.308001, 37.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409044, 0.705300, -0.578994,
		-0.159008, -0.569706, -0.806320,
		-0.898554, 0.421885, -0.120886,
		27.527409, 28.434566, 37.500359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102009, 28.251350, 36.867950>,  <28.156397, 28.139246, 37.584980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102009, 28.251350, 36.867950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849663, 28.503960, 37.048256>,  <27.698256, 28.655525, 37.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849663, 28.503960, 37.048256>,  <28.102009, 28.251350, 36.867950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849663, 28.503960, 37.048256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262746, 0.720521, -0.641727,
		-0.730049, -0.286408, -0.620482,
		-0.630867, 0.631521, 0.450763,
		27.660402, 28.693417, 37.183483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878300, 28.764441, 36.239346>,  <28.102009, 28.251350, 36.867950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878300, 28.764441, 36.239346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715595, 28.955568, 36.550789>,  <27.617971, 29.070246, 36.737656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715595, 28.955568, 36.550789>,  <27.878300, 28.764441, 36.239346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715595, 28.955568, 36.550789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205156, 0.878314, -0.431828,
		-0.890199, -0.015915, -0.455293,
		-0.406763, 0.477819, 0.778609,
		27.593567, 29.098913, 36.784370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451603, 29.365030, 35.954559>,  <27.878300, 28.764441, 36.239346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451603, 29.365030, 35.954559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555656, 29.442135, 36.333015>,  <27.618090, 29.488398, 36.560089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555656, 29.442135, 36.333015>,  <27.451603, 29.365030, 35.954559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555656, 29.442135, 36.333015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058187, 0.974960, -0.214631,
		-0.963817, 0.110886, 0.242406,
		0.260136, 0.192760, 0.946136,
		27.633698, 29.499964, 36.616856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018772, 29.898813, 36.127155>,  <27.451603, 29.365030, 35.954559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018772, 29.898813, 36.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325190, 29.901258, 36.384258>,  <27.509041, 29.902725, 36.538521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325190, 29.901258, 36.384258>,  <27.018772, 29.898813, 36.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325190, 29.901258, 36.384258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067685, 0.993629, -0.090117,
		-0.639216, 0.112539, 0.760749,
		0.766043, 0.006113, 0.642760,
		27.555002, 29.903093, 36.577087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825758, 30.413929, 36.597660>,  <27.018772, 29.898813, 36.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825758, 30.413929, 36.597660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219212, 30.347870, 36.626484>,  <27.455284, 30.308235, 36.643780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219212, 30.347870, 36.626484>,  <26.825758, 30.413929, 36.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219212, 30.347870, 36.626484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166832, 0.985821, -0.018006,
		-0.068065, 0.029733, 0.997238,
		0.983633, -0.165146, 0.072060,
		27.514301, 30.298326, 36.648102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027834, 30.956835, 37.012421>,  <26.825758, 30.413929, 36.597660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027834, 30.956835, 37.012421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361660, 30.825342, 36.835587>,  <27.561956, 30.746447, 36.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361660, 30.825342, 36.835587>,  <27.027834, 30.956835, 37.012421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361660, 30.825342, 36.835587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369199, 0.929331, 0.005926,
		0.408892, -0.168162, 0.896955,
		0.834565, -0.328732, -0.442082,
		27.612030, 30.726723, 36.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547903, 31.280441, 37.385147>,  <27.027834, 30.956835, 37.012421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547903, 31.280441, 37.385147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691338, 31.175846, 37.026699>,  <27.777399, 31.113089, 36.811630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691338, 31.175846, 37.026699>,  <27.547903, 31.280441, 37.385147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691338, 31.175846, 37.026699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370886, 0.920855, -0.120294,
		0.856656, -0.289224, 0.427190,
		0.358588, -0.261489, -0.896124,
		27.798914, 31.097399, 36.757862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238440, 31.607340, 37.350040>,  <27.547903, 31.280441, 37.385147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238440, 31.607340, 37.350040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145765, 31.541300, 36.966568>,  <28.090160, 31.501675, 36.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145765, 31.541300, 36.966568>,  <28.238440, 31.607340, 37.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145765, 31.541300, 36.966568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331130, 0.913257, -0.237305,
		0.914702, -0.372425, -0.156909,
		-0.231677, -0.165106, -0.958679,
		28.076260, 31.491770, 36.678967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836786, 31.738081, 36.947266>,  <28.238440, 31.607340, 37.350040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836786, 31.738081, 36.947266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528727, 31.775969, 36.694950>,  <28.343891, 31.798700, 36.543560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528727, 31.775969, 36.694950>,  <28.836786, 31.738081, 36.947266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528727, 31.775969, 36.694950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372070, 0.869955, -0.323640,
		0.518103, -0.483949, -0.705239,
		-0.770151, 0.094719, -0.630789,
		28.297682, 31.804384, 36.505714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083145, 31.819181, 36.273758>,  <28.836786, 31.738081, 36.947266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083145, 31.819181, 36.273758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720785, 31.988558, 36.271057>,  <28.503370, 32.090183, 36.269436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720785, 31.988558, 36.271057>,  <29.083145, 31.819181, 36.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720785, 31.988558, 36.271057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363121, 0.768454, -0.526898,
		-0.217924, -0.479767, -0.849902,
		-0.905899, 0.423440, -0.006749,
		28.449015, 32.115589, 36.269032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858469, 32.063774, 35.568474>,  <29.083145, 31.819181, 36.273758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858469, 32.063774, 35.568474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705875, 32.283447, 35.865894>,  <28.614319, 32.415253, 36.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705875, 32.283447, 35.865894>,  <28.858469, 32.063774, 35.568474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705875, 32.283447, 35.865894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306742, 0.834013, -0.458619,
		-0.871998, 0.053123, -0.486619,
		-0.381484, 0.549181, 0.743552,
		28.591431, 32.448200, 36.088959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303797, 32.474449, 35.276630>,  <28.858469, 32.063774, 35.568474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303797, 32.474449, 35.276630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487940, 32.618839, 35.601040>,  <28.598425, 32.705475, 35.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487940, 32.618839, 35.601040>,  <28.303797, 32.474449, 35.276630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487940, 32.618839, 35.601040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436342, 0.703605, -0.560844,
		-0.773095, 0.612074, 0.166401,
		0.460358, 0.360978, 0.811027,
		28.626047, 32.727131, 35.844349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172258, 33.146084, 35.284317>,  <28.303797, 32.474449, 35.276630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172258, 33.146084, 35.284317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507261, 33.069016, 35.488850>,  <28.708263, 33.022774, 35.611568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507261, 33.069016, 35.488850>,  <28.172258, 33.146084, 35.284317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507261, 33.069016, 35.488850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471104, 0.728708, -0.497037,
		-0.276850, 0.657163, 0.701064,
		0.837505, -0.192669, 0.511335,
		28.758512, 33.011215, 35.642250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518383, 33.752750, 35.173729>,  <28.172258, 33.146084, 35.284317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518383, 33.752750, 35.173729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798166, 33.500446, 35.308132>,  <28.966036, 33.349064, 35.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798166, 33.500446, 35.308132>,  <28.518383, 33.752750, 35.173729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798166, 33.500446, 35.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652917, 0.372801, -0.659332,
		0.290616, 0.680561, 0.672592,
		0.699459, -0.630758, 0.336008,
		29.008003, 33.311218, 35.408936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076790, 34.059372, 35.144100>,  <28.518383, 33.752750, 35.173729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076790, 34.059372, 35.144100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203388, 33.684048, 35.088383>,  <29.279346, 33.458855, 35.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203388, 33.684048, 35.088383>,  <29.076790, 34.059372, 35.144100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203388, 33.684048, 35.088383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641228, 0.319832, -0.697520,
		0.699041, 0.131446, 0.702897,
		0.316495, -0.938312, -0.139289,
		29.298336, 33.402554, 35.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778299, 33.924843, 35.320721>,  <29.076790, 34.059372, 35.144100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778299, 33.924843, 35.320721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644222, 33.683601, 35.031193>,  <29.563776, 33.538857, 34.857475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644222, 33.683601, 35.031193>,  <29.778299, 33.924843, 35.320721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644222, 33.683601, 35.031193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768433, 0.269504, -0.580412,
		0.545120, -0.750755, 0.373110,
		-0.335193, -0.603104, -0.723817,
		29.543665, 33.502670, 34.814049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320259, 33.459194, 35.254753>,  <29.778299, 33.924843, 35.320721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320259, 33.459194, 35.254753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097254, 33.522053, 34.928692>,  <29.963449, 33.559769, 34.733055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097254, 33.522053, 34.928692>,  <30.320259, 33.459194, 35.254753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097254, 33.522053, 34.928692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791019, 0.398532, -0.464177,
		0.251923, -0.903591, -0.346494,
		-0.557515, 0.157146, -0.815157,
		29.929998, 33.569195, 34.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630489, 33.004566, 34.824337>,  <30.320259, 33.459194, 35.254753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630489, 33.004566, 34.824337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468975, 33.307320, 34.618778>,  <30.372066, 33.488972, 34.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468975, 33.307320, 34.618778>,  <30.630489, 33.004566, 34.824337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468975, 33.307320, 34.618778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714695, -0.089692, -0.693662,
		-0.571113, -0.647366, -0.504724,
		-0.403783, 0.756883, -0.513894,
		30.347839, 33.534386, 34.464611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195160, 33.186069, 35.446857>,  <30.630489, 33.004566, 34.824337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195160, 33.186069, 35.446857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543051, 33.221256, 35.641109>,  <31.751785, 33.242367, 35.757660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543051, 33.221256, 35.641109>,  <31.195160, 33.186069, 35.446857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543051, 33.221256, 35.641109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489230, 0.024071, 0.871822,
		0.065012, -0.995831, 0.063977,
		0.869728, 0.087979, 0.485626,
		31.803970, 33.247646, 35.786797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263973, 32.734573, 35.866634>,  <31.195160, 33.186069, 35.446857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263973, 32.734573, 35.866634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495605, 33.009495, 36.042030>,  <31.634584, 33.174450, 36.147270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495605, 33.009495, 36.042030>,  <31.263973, 32.734573, 35.866634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495605, 33.009495, 36.042030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512409, -0.111507, 0.851471,
		0.634117, -0.717757, 0.287612,
		0.579078, 0.687308, 0.438494,
		31.669329, 33.215687, 36.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464493, 32.429092, 36.582119>,  <31.263973, 32.734573, 35.866634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464493, 32.429092, 36.582119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575274, 32.813332, 36.591446>,  <31.641741, 33.043877, 36.597042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575274, 32.813332, 36.591446>,  <31.464493, 32.429092, 36.582119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575274, 32.813332, 36.591446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223339, 0.040749, 0.973889,
		0.934569, -0.274926, 0.225825,
		0.276950, 0.960602, 0.023319,
		31.658358, 33.101513, 36.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027218, 32.511543, 37.071468>,  <31.464493, 32.429092, 36.582119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027218, 32.511543, 37.071468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876959, 32.878860, 37.021458>,  <31.786804, 33.099251, 36.991451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876959, 32.878860, 37.021458>,  <32.027218, 32.511543, 37.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876959, 32.878860, 37.021458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240355, 0.033755, 0.970098,
		0.895053, 0.394464, 0.208036,
		-0.375647, 0.918291, -0.125024,
		31.764265, 33.154346, 36.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255611, 32.947472, 37.659550>,  <32.027218, 32.511543, 37.071468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255611, 32.947472, 37.659550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921104, 33.122887, 37.527893>,  <31.720400, 33.228134, 37.448898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921104, 33.122887, 37.527893>,  <32.255611, 32.947472, 37.659550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921104, 33.122887, 37.527893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271366, 0.190599, 0.943416,
		0.476457, 0.878270, -0.040389,
		-0.836271, 0.438536, -0.329144,
		31.670223, 33.254448, 37.429150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052422, 33.238472, 38.256531>,  <32.255611, 32.947472, 37.659550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052422, 33.238472, 38.256531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757616, 33.335594, 38.004227>,  <31.580732, 33.393867, 37.852844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757616, 33.335594, 38.004227>,  <32.052422, 33.238472, 38.256531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757616, 33.335594, 38.004227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496695, 0.438347, 0.749097,
		0.458375, 0.865389, -0.202468,
		-0.737012, 0.242803, -0.630762,
		31.536512, 33.408436, 37.814999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886789, 33.947216, 38.269012>,  <32.052422, 33.238472, 38.256531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886789, 33.947216, 38.269012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564714, 33.736431, 38.160210>,  <31.371469, 33.609962, 38.094929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564714, 33.736431, 38.160210>,  <31.886789, 33.947216, 38.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564714, 33.736431, 38.160210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516944, 0.398938, 0.757376,
		-0.290591, 0.750442, -0.593628,
		-0.805187, -0.526958, -0.272009,
		31.323158, 33.578342, 38.078606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386410, 34.354298, 38.399242>,  <31.886789, 33.947216, 38.269012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386410, 34.354298, 38.399242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194984, 34.003723, 38.377949>,  <31.080130, 33.793377, 38.365173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194984, 34.003723, 38.377949>,  <31.386410, 34.354298, 38.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194984, 34.003723, 38.377949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624126, 0.296896, 0.722717,
		-0.617613, 0.379088, -0.689091,
		-0.478562, -0.876438, -0.053232,
		31.051416, 33.740791, 38.361980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672935, 34.508492, 38.436653>,  <31.386410, 34.354298, 38.399242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672935, 34.508492, 38.436653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705753, 34.120361, 38.527634>,  <30.725443, 33.887482, 38.582222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705753, 34.120361, 38.527634>,  <30.672935, 34.508492, 38.436653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705753, 34.120361, 38.527634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585609, 0.137734, 0.798806,
		-0.806431, -0.198736, -0.556931,
		0.082043, -0.970326, 0.227455,
		30.730366, 33.829262, 38.595871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037418, 34.332539, 38.437683>,  <30.672935, 34.508492, 38.436653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037418, 34.332539, 38.437683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243631, 34.070324, 38.658409>,  <30.367359, 33.912994, 38.790844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243631, 34.070324, 38.658409>,  <30.037418, 34.332539, 38.437683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243631, 34.070324, 38.658409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723156, 0.012599, 0.690570,
		-0.459646, -0.755059, -0.467559,
		0.515530, -0.655536, 0.551817,
		30.398291, 33.873665, 38.823956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544882, 33.905689, 38.632107>,  <30.037418, 34.332539, 38.437683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544882, 33.905689, 38.632107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841894, 33.804890, 38.880348>,  <30.020102, 33.744411, 39.029293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841894, 33.804890, 38.880348>,  <29.544882, 33.905689, 38.632107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841894, 33.804890, 38.880348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650785, -0.052136, 0.757470,
		-0.158527, -0.966322, -0.202710,
		0.742528, -0.252000, 0.620602,
		30.064653, 33.729290, 39.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303108, 33.305099, 39.016312>,  <29.544882, 33.905689, 38.632107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303108, 33.305099, 39.016312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588825, 33.488792, 39.227551>,  <29.760256, 33.599010, 39.354294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588825, 33.488792, 39.227551>,  <29.303108, 33.305099, 39.016312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588825, 33.488792, 39.227551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555370, -0.087216, 0.827017,
		0.425854, -0.884023, 0.192748,
		0.714292, 0.459235, 0.528101,
		29.803112, 33.626564, 39.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378090, 32.897743, 39.540264>,  <29.303108, 33.305099, 39.016312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378090, 32.897743, 39.540264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523981, 33.249241, 39.663406>,  <29.611515, 33.460140, 39.737293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523981, 33.249241, 39.663406>,  <29.378090, 32.897743, 39.540264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523981, 33.249241, 39.663406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546536, -0.065642, 0.834859,
		0.753838, -0.472752, 0.456326,
		0.364727, 0.878747, 0.307860,
		29.633400, 33.512863, 39.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542814, 32.844929, 40.225506>,  <29.378090, 32.897743, 39.540264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542814, 32.844929, 40.225506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517097, 33.241234, 40.177761>,  <29.501667, 33.479019, 40.149113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517097, 33.241234, 40.177761>,  <29.542814, 32.844929, 40.225506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517097, 33.241234, 40.177761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501504, 0.071334, 0.862209,
		0.862763, 0.115295, 0.492288,
		-0.064292, 0.990767, -0.119365,
		29.497810, 33.538464, 40.141953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714304, 33.076370, 40.863132>,  <29.542814, 32.844929, 40.225506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714304, 33.076370, 40.863132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480421, 33.344509, 40.680374>,  <29.340092, 33.505394, 40.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480421, 33.344509, 40.680374>,  <29.714304, 33.076370, 40.863132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480421, 33.344509, 40.680374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468066, 0.181239, 0.864909,
		0.662597, 0.719574, 0.207796,
		-0.584705, 0.670348, -0.456896,
		29.305010, 33.545612, 40.543304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573837, 33.433907, 41.395195>,  <29.714304, 33.076370, 40.863132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573837, 33.433907, 41.395195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302935, 33.543633, 41.122116>,  <29.140392, 33.609467, 40.958267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302935, 33.543633, 41.122116>,  <29.573837, 33.433907, 41.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302935, 33.543633, 41.122116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664069, 0.171574, 0.727718,
		0.316754, 0.946211, 0.065962,
		-0.677258, 0.274311, -0.682697,
		29.099758, 33.625927, 40.917309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247343, 33.980515, 41.579498>,  <29.573837, 33.433907, 41.395195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247343, 33.980515, 41.579498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968279, 33.856995, 41.320915>,  <28.800840, 33.782883, 41.165764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968279, 33.856995, 41.320915>,  <29.247343, 33.980515, 41.579498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968279, 33.856995, 41.320915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716372, 0.289464, 0.634840,
		-0.008910, 0.906011, -0.423161,
		-0.697662, -0.308797, -0.646462,
		28.758980, 33.764355, 41.126976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740499, 34.494801, 41.558247>,  <29.247343, 33.980515, 41.579498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740499, 34.494801, 41.558247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538469, 34.170044, 41.441128>,  <28.417252, 33.975189, 41.370857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538469, 34.170044, 41.441128>,  <28.740499, 34.494801, 41.558247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538469, 34.170044, 41.441128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678933, 0.164301, 0.715580,
		-0.532866, 0.560212, -0.634205,
		-0.505077, -0.811891, -0.292796,
		28.386946, 33.926476, 41.353291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035231, 34.706070, 41.543423>,  <28.740499, 34.494801, 41.558247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035231, 34.706070, 41.543423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993132, 34.308723, 41.561932>,  <27.967873, 34.070316, 41.573036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993132, 34.308723, 41.561932>,  <28.035231, 34.706070, 41.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993132, 34.308723, 41.561932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760649, 0.110390, 0.639708,
		-0.640574, 0.032129, -0.767224,
		-0.105247, -0.993369, 0.046274,
		27.961557, 34.010712, 41.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341692, 34.630356, 41.748318>,  <28.035231, 34.706070, 41.543423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341692, 34.630356, 41.748318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471756, 34.255627, 41.799919>,  <27.549793, 34.030788, 41.830879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471756, 34.255627, 41.799919>,  <27.341692, 34.630356, 41.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471756, 34.255627, 41.799919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740890, -0.167593, 0.650381,
		-0.587669, -0.307055, -0.748574,
		0.325158, -0.936819, 0.129005,
		27.569304, 33.974583, 41.838619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698105, 34.256405, 41.653473>,  <27.341692, 34.630356, 41.748318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698105, 34.256405, 41.653473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953245, 34.025158, 41.857014>,  <27.106329, 33.886410, 41.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953245, 34.025158, 41.857014>,  <26.698105, 34.256405, 41.653473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953245, 34.025158, 41.857014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682270, -0.117642, 0.721574,
		-0.357291, -0.807429, -0.469469,
		0.637849, -0.578116, 0.508852,
		27.144600, 33.851723, 42.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441298, 33.584347, 41.576744>,  <26.698105, 34.256405, 41.653473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441298, 33.584347, 41.576744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678314, 33.615654, 41.897434>,  <26.820524, 33.634438, 42.089848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678314, 33.615654, 41.897434>,  <26.441298, 33.584347, 41.576744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678314, 33.615654, 41.897434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776898, -0.207506, 0.594450,
		0.212893, -0.975097, -0.062145,
		0.592542, 0.078274, 0.801728,
		26.856077, 33.639137, 42.137951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292519, 33.045620, 41.943836>,  <26.441298, 33.584347, 41.576744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292519, 33.045620, 41.943836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485876, 33.270672, 42.212097>,  <26.601891, 33.405704, 42.373055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485876, 33.270672, 42.212097>,  <26.292519, 33.045620, 41.943836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485876, 33.270672, 42.212097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700409, -0.210985, 0.681845,
		0.525127, -0.799330, 0.292085,
		0.483394, 0.562634, 0.670651,
		26.630894, 33.439461, 42.413292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116352, 32.777943, 42.616352>,  <26.292519, 33.045620, 41.943836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116352, 32.777943, 42.616352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268677, 33.127876, 42.736118>,  <26.360071, 33.337837, 42.807976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268677, 33.127876, 42.736118>,  <26.116352, 32.777943, 42.616352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268677, 33.127876, 42.736118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446890, -0.109350, 0.887881,
		0.809490, -0.471918, 0.349313,
		0.380809, 0.874835, 0.299413,
		26.382919, 33.390327, 42.825943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326517, 32.602383, 43.250694>,  <26.116352, 32.777943, 42.616352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326517, 32.602383, 43.250694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276728, 32.998047, 43.219536>,  <26.246855, 33.235447, 43.200840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276728, 32.998047, 43.219536>,  <26.326517, 32.602383, 43.250694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276728, 32.998047, 43.219536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364998, 0.027352, 0.930606,
		0.922650, 0.144267, 0.357637,
		-0.124474, 0.989161, -0.077894,
		26.239386, 33.294796, 43.196167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733007, 32.962784, 43.766388>,  <26.326517, 32.602383, 43.250694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733007, 32.962784, 43.766388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435518, 33.212509, 43.670795>,  <26.257025, 33.362343, 43.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435518, 33.212509, 43.670795>,  <26.733007, 32.962784, 43.766388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435518, 33.212509, 43.670795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197335, 0.136526, 0.970783,
		0.638700, 0.769150, 0.021662,
		-0.743721, 0.624314, -0.238980,
		26.212402, 33.399803, 43.599102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877478, 33.550869, 44.121593>,  <26.733007, 32.962784, 43.766388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877478, 33.550869, 44.121593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495789, 33.625580, 44.028152>,  <26.266775, 33.670406, 43.972088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495789, 33.625580, 44.028152>,  <26.877478, 33.550869, 44.121593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495789, 33.625580, 44.028152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175739, 0.281873, 0.943220,
		0.242018, 0.941096, -0.236146,
		-0.954224, 0.186777, -0.233606,
		26.209522, 33.681614, 43.958069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677519, 34.223839, 44.228699>,  <26.877478, 33.550869, 44.121593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677519, 34.223839, 44.228699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354376, 33.993759, 44.280102>,  <26.160490, 33.855713, 44.310944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354376, 33.993759, 44.280102>,  <26.677519, 34.223839, 44.228699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354376, 33.993759, 44.280102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116524, 0.369613, 0.921851,
		-0.577747, 0.729748, -0.365618,
		-0.807855, -0.575200, 0.128510,
		26.112019, 33.821198, 44.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208464, 34.604614, 44.526764>,  <26.677519, 34.223839, 44.228699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208464, 34.604614, 44.526764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041807, 34.249279, 44.603977>,  <25.941814, 34.036076, 44.650307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041807, 34.249279, 44.603977>,  <26.208464, 34.604614, 44.526764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041807, 34.249279, 44.603977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231993, 0.309216, 0.922261,
		-0.878971, 0.339467, -0.334921,
		-0.416640, -0.888340, 0.193038,
		25.916815, 33.982777, 44.661888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576008, 34.804012, 44.952068>,  <26.208464, 34.604614, 44.526764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576008, 34.804012, 44.952068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673010, 34.424618, 45.033615>,  <25.731211, 34.196980, 45.082542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673010, 34.424618, 45.033615>,  <25.576008, 34.804012, 44.952068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673010, 34.424618, 45.033615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255521, 0.140272, 0.956573,
		-0.935896, -0.284065, -0.208342,
		0.242504, -0.948489, 0.203865,
		25.745762, 34.140072, 45.094776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978954, 34.532154, 45.408146>,  <25.576008, 34.804012, 44.952068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978954, 34.532154, 45.408146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285330, 34.277130, 45.441273>,  <25.469156, 34.124115, 45.461147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285330, 34.277130, 45.441273>,  <24.978954, 34.532154, 45.408146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285330, 34.277130, 45.441273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120448, -0.015772, 0.992594,
		-0.631528, -0.770243, -0.088872,
		0.765941, -0.637556, 0.082814,
		25.515112, 34.085865, 45.466118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.703627, 34.077339, 46.021412>,  <24.978954, 34.532154, 45.408146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.703627, 34.077339, 46.021412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096991, 34.007362, 46.002232>,  <25.333010, 33.965378, 45.990723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096991, 34.007362, 46.002232>,  <24.703627, 34.077339, 46.021412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096991, 34.007362, 46.002232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042487, -0.034831, 0.998490,
		-0.176349, -0.983962, -0.026821,
		0.983410, -0.174943, -0.047948,
		25.392014, 33.954880, 45.987846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909203, 33.429440, 46.372234>,  <24.703627, 34.077339, 46.021412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909203, 33.429440, 46.372234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245302, 33.646187, 46.364647>,  <25.446962, 33.776237, 46.360092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245302, 33.646187, 46.364647>,  <24.909203, 33.429440, 46.372234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245302, 33.646187, 46.364647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100454, -0.121191, 0.987533,
		0.532817, -0.831677, -0.156263,
		0.840247, 0.541872, -0.018972,
		25.497375, 33.808750, 46.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322092, 33.012474, 46.776905>,  <24.909203, 33.429440, 46.372234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322092, 33.012474, 46.776905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509371, 33.365788, 46.786713>,  <25.621738, 33.577774, 46.792595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509371, 33.365788, 46.786713>,  <25.322092, 33.012474, 46.776905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509371, 33.365788, 46.786713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231015, -0.149138, 0.961452,
		0.852892, -0.444485, -0.273878,
		0.468196, 0.883284, 0.024516,
		25.649830, 33.630772, 46.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962769, 32.919064, 47.085014>,  <25.322092, 33.012474, 46.776905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962769, 32.919064, 47.085014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871065, 33.305023, 47.136257>,  <25.816044, 33.536598, 47.167004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871065, 33.305023, 47.136257>,  <25.962769, 32.919064, 47.085014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871065, 33.305023, 47.136257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004651, -0.130521, 0.991435,
		0.973354, 0.227891, 0.025436,
		-0.229259, 0.964899, 0.128103,
		25.802288, 33.594494, 47.174686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336222, 33.091358, 47.701923>,  <25.962769, 32.919064, 47.085014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336222, 33.091358, 47.701923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044203, 33.361637, 47.660999>,  <25.868992, 33.523804, 47.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044203, 33.361637, 47.660999>,  <26.336222, 33.091358, 47.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044203, 33.361637, 47.660999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120278, 0.020337, 0.992532,
		0.672729, 0.736901, 0.066425,
		-0.730047, 0.675695, -0.102314,
		25.825190, 33.564346, 47.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521944, 33.775135, 48.050499>,  <26.336222, 33.091358, 47.701923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521944, 33.775135, 48.050499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123171, 33.751118, 48.030422>,  <25.883907, 33.736706, 48.018375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123171, 33.751118, 48.030422>,  <26.521944, 33.775135, 48.050499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123171, 33.751118, 48.030422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049963, -0.005370, 0.998737,
		-0.060238, 0.998181, 0.002354,
		-0.996933, -0.060044, -0.050195,
		25.824091, 33.733105, 48.015362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286062, 34.143372, 48.695950>,  <26.521944, 33.775135, 48.050499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286062, 34.143372, 48.695950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948708, 33.959507, 48.584660>,  <25.746294, 33.849186, 48.517887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948708, 33.959507, 48.584660>,  <26.286062, 34.143372, 48.695950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948708, 33.959507, 48.584660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174748, -0.255000, 0.951019,
		-0.508097, 0.850696, 0.134738,
		-0.843387, -0.459664, -0.278223,
		25.695692, 33.821609, 48.501194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668427, 34.468758, 49.076836>,  <26.286062, 34.143372, 48.695950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668427, 34.468758, 49.076836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564606, 34.098896, 48.965382>,  <25.502314, 33.876980, 48.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564606, 34.098896, 48.965382>,  <25.668427, 34.468758, 49.076836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564606, 34.098896, 48.965382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405957, -0.157332, 0.900248,
		-0.876260, 0.346776, -0.334535,
		-0.259552, -0.924658, -0.278640,
		25.486740, 33.821499, 48.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047014, 34.423969, 49.346161>,  <25.668427, 34.468758, 49.076836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047014, 34.423969, 49.346161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145960, 34.041729, 49.282112>,  <25.205326, 33.812386, 49.243683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145960, 34.041729, 49.282112>,  <25.047014, 34.423969, 49.346161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145960, 34.041729, 49.282112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432463, -0.256773, 0.864316,
		-0.867057, -0.144551, -0.476778,
		0.247362, -0.955601, -0.160124,
		25.220169, 33.755051, 49.234074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343315, 34.004032, 49.426487>,  <25.047014, 34.423969, 49.346161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343315, 34.004032, 49.426487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667830, 33.776173, 49.479134>,  <24.862537, 33.639458, 49.510723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667830, 33.776173, 49.479134>,  <24.343315, 34.004032, 49.426487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667830, 33.776173, 49.479134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445359, -0.456278, 0.770367,
		-0.378778, -0.683606, -0.623868,
		0.811285, -0.569643, 0.131622,
		24.911215, 33.605278, 49.518620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.169596, 33.292618, 49.346233>,  <24.343315, 34.004032, 49.426487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.169596, 33.292618, 49.346233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481943, 33.336395, 49.592247>,  <24.669352, 33.362663, 49.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481943, 33.336395, 49.592247>,  <24.169596, 33.292618, 49.346233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481943, 33.336395, 49.592247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511397, -0.453441, 0.729976,
		0.358772, -0.884542, -0.298109,
		0.780868, 0.109443, 0.615034,
		24.716204, 33.369228, 49.776756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430620, 32.645283, 49.683395>,  <24.169596, 33.292618, 49.346233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430620, 32.645283, 49.683395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467361, 32.978317, 49.901886>,  <24.489407, 33.178139, 50.032982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467361, 32.978317, 49.901886>,  <24.430620, 32.645283, 49.683395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467361, 32.978317, 49.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542316, -0.418231, 0.728681,
		0.835139, -0.363159, 0.413109,
		0.091852, 0.832586, 0.546228,
		24.494917, 33.228092, 50.065754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779823, 32.487740, 50.322788>,  <24.430620, 32.645283, 49.683395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779823, 32.487740, 50.322788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589718, 32.832897, 50.391533>,  <24.475655, 33.039993, 50.432777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589718, 32.832897, 50.391533>,  <24.779823, 32.487740, 50.322788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589718, 32.832897, 50.391533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658944, -0.478518, 0.580356,
		0.583024, 0.162579, 0.796022,
		-0.475265, 0.862895, 0.171857,
		24.447138, 33.091766, 50.443089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733919, 32.784599, 51.158649>,  <24.779823, 32.487740, 50.322788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733919, 32.784599, 51.158649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409407, 32.876720, 50.943695>,  <24.214699, 32.931995, 50.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409407, 32.876720, 50.943695>,  <24.733919, 32.784599, 51.158649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409407, 32.876720, 50.943695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577450, -0.459502, 0.674841,
		-0.091509, 0.857798, 0.505776,
		-0.811282, 0.230307, -0.537384,
		24.166021, 32.945812, 50.782478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340508, 32.511898, 51.374016>,  <24.733919, 32.784599, 51.158649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340508, 32.511898, 51.374016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704725, 32.357906, 51.434284>,  <25.923256, 32.265511, 51.470448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704725, 32.357906, 51.434284>,  <25.340508, 32.511898, 51.374016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704725, 32.357906, 51.434284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373139, 0.608399, -0.700441,
		0.177986, 0.694004, 0.697624,
		0.910543, -0.384980, 0.150673,
		25.977888, 32.242413, 51.479485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956640, 32.989021, 51.606510>,  <25.340508, 32.511898, 51.374016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956640, 32.989021, 51.606510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056328, 32.691929, 51.357914>,  <26.116140, 32.513676, 51.208755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056328, 32.691929, 51.357914>,  <25.956640, 32.989021, 51.606510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056328, 32.691929, 51.357914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344498, 0.667751, -0.659872,
		0.905103, -0.049647, 0.422285,
		0.249220, -0.742728, -0.621486,
		26.131094, 32.469112, 51.171467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614189, 33.112705, 51.264828>,  <25.956640, 32.989021, 51.606510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614189, 33.112705, 51.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461008, 32.852051, 51.002922>,  <26.369099, 32.695656, 50.845779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461008, 32.852051, 51.002922>,  <26.614189, 33.112705, 51.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461008, 32.852051, 51.002922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604346, 0.359336, -0.711086,
		0.698651, -0.668016, 0.256206,
		-0.382953, -0.651638, -0.654763,
		26.346123, 32.656559, 50.806492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124371, 32.542973, 51.066925>,  <26.614189, 33.112705, 51.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124371, 32.542973, 51.066925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862421, 32.716476, 50.819378>,  <26.705252, 32.820580, 50.670849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862421, 32.716476, 50.819378>,  <27.124371, 32.542973, 51.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862421, 32.716476, 50.819378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737788, 0.544347, -0.399193,
		0.163723, -0.718012, -0.676501,
		-0.654876, 0.433758, -0.618863,
		26.665958, 32.846603, 50.633720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277199, 31.968624, 50.487961>,  <27.124371, 32.542973, 51.066925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277199, 31.968624, 50.487961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000498, 31.705372, 50.606853>,  <26.834478, 31.547421, 50.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000498, 31.705372, 50.606853>,  <27.277199, 31.968624, 50.487961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000498, 31.705372, 50.606853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099922, -0.494875, -0.863200,
		0.715190, -0.567419, 0.408092,
		-0.691750, -0.658129, 0.297232,
		26.792973, 31.507933, 50.696022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395853, 31.223108, 50.691109>,  <27.277199, 31.968624, 50.487961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395853, 31.223108, 50.691109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051161, 31.252680, 50.490330>,  <26.844345, 31.270424, 50.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051161, 31.252680, 50.490330>,  <27.395853, 31.223108, 50.691109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051161, 31.252680, 50.490330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455615, -0.322536, -0.829690,
		-0.223238, -0.943665, 0.244255,
		-0.861731, 0.073932, -0.501951,
		26.792641, 31.274858, 50.339745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243174, 30.582422, 50.239834>,  <27.395853, 31.223108, 50.691109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243174, 30.582422, 50.239834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126617, 30.939962, 50.103527>,  <27.056684, 31.154488, 50.021744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126617, 30.939962, 50.103527>,  <27.243174, 30.582422, 50.239834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126617, 30.939962, 50.103527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486137, -0.168429, -0.857498,
		-0.823871, -0.415525, -0.385456,
		-0.291390, 0.893852, -0.340765,
		27.039200, 31.208118, 50.001297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322290, 30.457561, 49.567799>,  <27.243174, 30.582422, 50.239834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322290, 30.457561, 49.567799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261080, 30.852770, 49.575745>,  <27.224354, 31.089895, 49.580513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261080, 30.852770, 49.575745>,  <27.322290, 30.457561, 49.567799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261080, 30.852770, 49.575745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298747, 0.065418, -0.952088,
		-0.941983, -0.139759, -0.305179,
		-0.153027, 0.988022, 0.019870,
		27.215172, 31.149176, 49.581707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927238, 30.559820, 48.976112>,  <27.322290, 30.457561, 49.567799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927238, 30.559820, 48.976112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090338, 30.911009, 49.076435>,  <27.188196, 31.121723, 49.136631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090338, 30.911009, 49.076435>,  <26.927238, 30.559820, 48.976112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090338, 30.911009, 49.076435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417982, 0.064740, -0.906146,
		-0.811809, 0.474312, -0.340579,
		0.407747, 0.877973, 0.250810,
		27.212662, 31.174400, 49.151680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995876, 30.925720, 48.419201>,  <26.927238, 30.559820, 48.976112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995876, 30.925720, 48.419201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277386, 31.114697, 48.631428>,  <27.446291, 31.228083, 48.758762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277386, 31.114697, 48.631428>,  <26.995876, 30.925720, 48.419201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277386, 31.114697, 48.631428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567746, 0.074906, -0.819789,
		-0.427044, 0.878174, -0.215509,
		0.703774, 0.472440, 0.530568,
		27.488518, 31.256428, 48.790600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392916, 31.270769, 47.917683>,  <26.995876, 30.925720, 48.419201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392916, 31.270769, 47.917683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630442, 31.321369, 48.235519>,  <27.772957, 31.351730, 48.426224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630442, 31.321369, 48.235519>,  <27.392916, 31.270769, 47.917683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630442, 31.321369, 48.235519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790183, 0.094446, -0.605550,
		-0.151650, 0.987460, -0.043876,
		0.593813, 0.126502, 0.794597,
		27.808586, 31.359320, 48.473900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563124, 31.985357, 47.824966>,  <27.392916, 31.270769, 47.917683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563124, 31.985357, 47.824966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821922, 31.791840, 48.060707>,  <27.977201, 31.675730, 48.202152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821922, 31.791840, 48.060707>,  <27.563124, 31.985357, 47.824966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821922, 31.791840, 48.060707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698492, 0.066085, -0.712560,
		0.305784, 0.872683, 0.380683,
		0.646997, -0.483794, 0.589354,
		28.016022, 31.646702, 48.237514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164875, 32.297226, 47.810093>,  <27.563124, 31.985357, 47.824966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164875, 32.297226, 47.810093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311691, 31.943954, 47.926907>,  <28.399782, 31.731993, 47.996994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311691, 31.943954, 47.926907>,  <28.164875, 32.297226, 47.810093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311691, 31.943954, 47.926907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847671, 0.188282, -0.495988,
		0.383059, 0.429597, 0.817748,
		0.367042, -0.883174, 0.292033,
		28.421804, 31.679003, 48.014515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862234, 32.394901, 47.886986>,  <28.164875, 32.297226, 47.810093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862234, 32.394901, 47.886986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849787, 31.995453, 47.870087>,  <28.842319, 31.755783, 47.859947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849787, 31.995453, 47.870087>,  <28.862234, 32.394901, 47.886986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849787, 31.995453, 47.870087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737587, 0.005583, -0.675229,
		0.674534, -0.052171, 0.736398,
		-0.031116, -0.998623, -0.042247,
		28.840452, 31.695866, 47.857414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492010, 32.197929, 47.817448>,  <28.862234, 32.394901, 47.886986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492010, 32.197929, 47.817448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291489, 31.882452, 47.675095>,  <29.171175, 31.693165, 47.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291489, 31.882452, 47.675095>,  <29.492010, 32.197929, 47.817448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291489, 31.882452, 47.675095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713361, -0.143941, -0.685855,
		0.489705, -0.597694, 0.634784,
		-0.501303, -0.788697, -0.355883,
		29.141098, 31.645844, 47.568329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005875, 31.622236, 47.818314>,  <29.492010, 32.197929, 47.817448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005875, 31.622236, 47.818314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708557, 31.555679, 47.559135>,  <29.530167, 31.515745, 47.403629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708557, 31.555679, 47.559135>,  <30.005875, 31.622236, 47.818314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708557, 31.555679, 47.559135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662254, -0.319879, -0.677567,
		-0.094523, -0.932733, 0.347956,
		-0.743294, -0.166390, -0.647943,
		29.485569, 31.505762, 47.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156157, 30.941177, 47.473591>,  <30.005875, 31.622236, 47.818314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156157, 30.941177, 47.473591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900358, 31.096758, 47.208332>,  <29.746880, 31.190105, 47.049175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900358, 31.096758, 47.208332>,  <30.156157, 30.941177, 47.473591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900358, 31.096758, 47.208332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556241, -0.361356, -0.748343,
		-0.530700, -0.847431, 0.014736,
		-0.639494, 0.388949, -0.663148,
		29.708509, 31.213442, 47.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093054, 30.477060, 46.895397>,  <30.156157, 30.941177, 47.473591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093054, 30.477060, 46.895397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945786, 30.821659, 46.755524>,  <29.857426, 31.028418, 46.671600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945786, 30.821659, 46.755524>,  <30.093054, 30.477060, 46.895397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945786, 30.821659, 46.755524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591158, -0.073388, -0.803210,
		-0.717624, -0.502435, -0.482260,
		-0.368169, 0.861495, -0.349683,
		29.835335, 31.080107, 46.650620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858255, 30.346771, 46.271576>,  <30.093054, 30.477060, 46.895397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858255, 30.346771, 46.271576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928474, 30.740559, 46.272411>,  <29.970606, 30.976831, 46.272911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928474, 30.740559, 46.272411>,  <29.858255, 30.346771, 46.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928474, 30.740559, 46.272411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523636, -0.091580, -0.847006,
		-0.833660, 0.149783, -0.531580,
		0.175549, 0.984469, 0.002086,
		29.981138, 31.035900, 46.273037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595284, 30.679537, 45.628300>,  <29.858255, 30.346771, 46.271576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595284, 30.679537, 45.628300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904900, 30.894030, 45.762951>,  <30.090670, 31.022724, 45.843742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904900, 30.894030, 45.762951>,  <29.595284, 30.679537, 45.628300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904900, 30.894030, 45.762951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464403, -0.119480, -0.877528,
		-0.430337, 0.835572, -0.341509,
		0.774041, 0.536231, 0.336625,
		30.137112, 31.054899, 45.863937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760935, 31.112915, 45.065895>,  <29.595284, 30.679537, 45.628300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760935, 31.112915, 45.065895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075472, 31.161448, 45.308201>,  <30.264194, 31.190567, 45.453583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075472, 31.161448, 45.308201>,  <29.760935, 31.112915, 45.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075472, 31.161448, 45.308201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599286, 0.088394, -0.795640,
		-0.150082, 0.988668, -0.003205,
		0.786340, 0.121332, 0.605762,
		30.311375, 31.197847, 45.489929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098660, 31.717163, 44.828072>,  <29.760935, 31.112915, 45.065895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098660, 31.717163, 44.828072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373152, 31.509516, 45.031876>,  <30.537848, 31.384928, 45.154160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373152, 31.509516, 45.031876>,  <30.098660, 31.717163, 44.828072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373152, 31.509516, 45.031876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578902, -0.034337, -0.814674,
		0.440409, 0.854011, 0.276956,
		0.686231, -0.519120, 0.509511,
		30.579021, 31.353779, 45.184731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777697, 32.009617, 44.641472>,  <30.098660, 31.717163, 44.828072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777697, 32.009617, 44.641472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884869, 31.657288, 44.797604>,  <30.949171, 31.445889, 44.891281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884869, 31.657288, 44.797604>,  <30.777697, 32.009617, 44.641472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884869, 31.657288, 44.797604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640631, -0.139719, -0.755030,
		0.719588, 0.452351, 0.526851,
		0.267928, -0.880827, 0.390331,
		30.965246, 31.393040, 44.914703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474564, 32.024494, 44.615116>,  <30.777697, 32.009617, 44.641472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474564, 32.024494, 44.615116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381868, 31.637169, 44.652374>,  <31.326252, 31.404776, 44.674728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381868, 31.637169, 44.652374>,  <31.474564, 32.024494, 44.615116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381868, 31.637169, 44.652374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496946, -0.200152, -0.844384,
		0.836267, -0.149390, 0.527580,
		-0.231739, -0.968309, 0.093141,
		31.312347, 31.346676, 44.680317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072758, 31.695080, 44.458679>,  <31.474564, 32.024494, 44.615116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072758, 31.695080, 44.458679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807741, 31.395733, 44.446072>,  <31.648731, 31.216125, 44.438507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807741, 31.395733, 44.446072>,  <32.072758, 31.695080, 44.458679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807741, 31.395733, 44.446072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538032, -0.446207, -0.715137,
		0.521119, -0.490763, 0.698274,
		-0.662537, -0.748365, -0.031519,
		31.608980, 31.171223, 44.436615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541862, 31.042461, 44.494579>,  <32.072758, 31.695080, 44.458679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541862, 31.042461, 44.494579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184299, 30.962198, 44.334244>,  <31.969763, 30.914040, 44.238045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184299, 30.962198, 44.334244>,  <32.541862, 31.042461, 44.494579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184299, 30.962198, 44.334244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444315, -0.278330, -0.851538,
		0.059304, -0.939291, 0.337956,
		-0.893905, -0.200659, -0.400835,
		31.916128, 30.902000, 44.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768440, 30.465031, 44.101112>,  <32.541862, 31.042461, 44.494579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768440, 30.465031, 44.101112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429379, 30.592846, 43.931702>,  <32.225941, 30.669535, 43.830055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429379, 30.592846, 43.931702>,  <32.768440, 30.465031, 44.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429379, 30.592846, 43.931702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320613, -0.327509, -0.888788,
		-0.422712, -0.889175, 0.175166,
		-0.847657, 0.319541, -0.423523,
		32.175083, 30.688707, 43.804646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597961, 29.881765, 43.684174>,  <32.768440, 30.465031, 44.101112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597961, 29.881765, 43.684174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433193, 30.223673, 43.557880>,  <32.334332, 30.428818, 43.482105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433193, 30.223673, 43.557880>,  <32.597961, 29.881765, 43.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433193, 30.223673, 43.557880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292908, -0.203899, -0.934147,
		-0.862859, -0.477277, -0.166378,
		-0.411922, 0.854770, -0.315735,
		32.309616, 30.480104, 43.463161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261833, 29.702906, 43.049282>,  <32.597961, 29.881765, 43.684174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261833, 29.702906, 43.049282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296776, 30.101341, 43.043961>,  <32.317741, 30.340403, 43.040768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296776, 30.101341, 43.043961>,  <32.261833, 29.702906, 43.049282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296776, 30.101341, 43.043961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238354, -0.033870, -0.970587,
		-0.967241, 0.081616, -0.240380,
		0.087357, 0.996088, -0.013307,
		32.322983, 30.400167, 43.039967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804819, 29.940662, 42.454090>,  <32.261833, 29.702906, 43.049282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804819, 29.940662, 42.454090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066212, 30.230791, 42.540684>,  <32.223049, 30.404869, 42.592640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066212, 30.230791, 42.540684>,  <31.804819, 29.940662, 42.454090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066212, 30.230791, 42.540684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280976, 0.033131, -0.959143,
		-0.702860, 0.687611, -0.182148,
		0.653483, 0.725323, 0.216488,
		32.262257, 30.448387, 42.605629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636126, 30.595934, 42.214111>,  <31.804819, 29.940662, 42.454090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636126, 30.595934, 42.214111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027287, 30.656557, 42.271709>,  <32.261982, 30.692930, 42.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027287, 30.656557, 42.271709>,  <31.636126, 30.595934, 42.214111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027287, 30.656557, 42.271709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152306, -0.044671, -0.987323,
		-0.143205, 0.987438, -0.066767,
		0.977903, 0.151559, 0.143996,
		32.320656, 30.702024, 42.314907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759975, 31.132954, 41.723770>,  <31.636126, 30.595934, 42.214111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759975, 31.132954, 41.723770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104916, 30.954977, 41.820419>,  <32.311878, 30.848192, 41.878410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104916, 30.954977, 41.820419>,  <31.759975, 31.132954, 41.723770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104916, 30.954977, 41.820419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347407, 0.172813, -0.921653,
		0.368324, 0.878729, 0.303600,
		0.862349, -0.444939, 0.241625,
		32.363621, 30.821495, 41.892906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368027, 31.612482, 41.468323>,  <31.759975, 31.132954, 41.723770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368027, 31.612482, 41.468323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534958, 31.251122, 41.507725>,  <32.635117, 31.034306, 41.531368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534958, 31.251122, 41.507725>,  <32.368027, 31.612482, 41.468323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534958, 31.251122, 41.507725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262240, 0.015930, -0.964871,
		0.870098, 0.428498, 0.243557,
		0.417325, -0.903402, 0.098509,
		32.660156, 30.980101, 41.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980278, 31.716320, 41.242764>,  <32.368027, 31.612482, 41.468323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980278, 31.716320, 41.242764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897911, 31.325150, 41.228561>,  <32.848492, 31.090448, 41.220039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897911, 31.325150, 41.228561>,  <32.980278, 31.716320, 41.242764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897911, 31.325150, 41.228561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241379, -0.015594, -0.970306,
		0.948331, -0.208378, 0.239262,
		-0.205921, -0.977924, -0.035509,
		32.836136, 31.031773, 41.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646626, 31.337929, 40.932819>,  <32.980278, 31.716320, 41.242764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646626, 31.337929, 40.932819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334888, 31.093748, 40.876289>,  <33.147846, 30.947239, 40.842373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334888, 31.093748, 40.876289>,  <33.646626, 31.337929, 40.932819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334888, 31.093748, 40.876289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258427, -0.107673, -0.960012,
		0.570825, -0.784700, 0.241672,
		-0.779343, -0.610452, -0.141325,
		33.101086, 30.910612, 40.833893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990677, 30.770576, 40.729374>,  <33.646626, 31.337929, 40.932819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990677, 30.770576, 40.729374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612278, 30.730736, 40.605976>,  <33.385239, 30.706831, 40.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612278, 30.730736, 40.605976>,  <33.990677, 30.770576, 40.729374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612278, 30.730736, 40.605976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314796, -0.055014, -0.947564,
		0.077407, -0.993505, 0.083397,
		-0.945997, -0.099601, -0.308493,
		33.328480, 30.700855, 40.513428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067822, 30.308043, 40.159847>,  <33.990677, 30.770576, 40.729374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067822, 30.308043, 40.159847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699150, 30.455244, 40.110733>,  <33.477947, 30.543566, 40.081264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699150, 30.455244, 40.110733>,  <34.067822, 30.308043, 40.159847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699150, 30.455244, 40.110733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164045, 0.082880, -0.982965,
		-0.351558, -0.926123, -0.136758,
		-0.921681, 0.368004, -0.122789,
		33.422646, 30.565645, 40.073895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732243, 30.026972, 39.457386>,  <34.067822, 30.308043, 40.159847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732243, 30.026972, 39.457386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585690, 30.389959, 39.539616>,  <33.497757, 30.607752, 39.588951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585690, 30.389959, 39.539616>,  <33.732243, 30.026972, 39.457386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585690, 30.389959, 39.539616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190877, 0.289539, -0.937941,
		-0.910675, -0.304407, -0.279297,
		-0.366383, 0.907471, 0.205572,
		33.475773, 30.662201, 39.601288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293922, 30.213951, 38.955116>,  <33.732243, 30.026972, 39.457386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293922, 30.213951, 38.955116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404270, 30.555590, 39.131485>,  <33.470478, 30.760572, 39.237309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404270, 30.555590, 39.131485>,  <33.293922, 30.213951, 38.955116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404270, 30.555590, 39.131485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134257, 0.419989, -0.897544,
		-0.951773, 0.306802, 0.001194,
		0.275870, 0.854097, 0.440924,
		33.487030, 30.811819, 39.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001595, 30.683218, 38.575474>,  <33.293922, 30.213951, 38.955116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001595, 30.683218, 38.575474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268883, 30.919266, 38.756687>,  <33.429256, 31.060894, 38.865414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268883, 30.919266, 38.756687>,  <33.001595, 30.683218, 38.575474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268883, 30.919266, 38.756687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150897, 0.488779, -0.859259,
		-0.728498, 0.642536, 0.237566,
		0.668222, 0.590121, 0.453031,
		33.469349, 31.096302, 38.892597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889526, 31.379936, 38.300659>,  <33.001595, 30.683218, 38.575474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889526, 31.379936, 38.300659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253639, 31.394100, 38.465645>,  <33.472107, 31.402599, 38.564636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253639, 31.394100, 38.465645>,  <32.889526, 31.379936, 38.300659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253639, 31.394100, 38.465645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327958, 0.546344, -0.770683,
		-0.252640, 0.836812, 0.485715,
		0.910284, 0.035411, 0.412467,
		33.526726, 31.404724, 38.589386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152782, 32.085449, 38.098736>,  <32.889526, 31.379936, 38.300659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152782, 32.085449, 38.098736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481712, 31.882545, 38.201859>,  <33.679070, 31.760803, 38.263733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481712, 31.882545, 38.201859>,  <33.152782, 32.085449, 38.098736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481712, 31.882545, 38.201859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472816, 0.357078, -0.805568,
		0.316577, 0.784335, 0.533477,
		0.822328, -0.507261, 0.257804,
		33.728413, 31.730368, 38.279202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774460, 32.561680, 37.972652>,  <33.152782, 32.085449, 38.098736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774460, 32.561680, 37.972652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910645, 32.185780, 37.985054>,  <33.992355, 31.960241, 37.992493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910645, 32.185780, 37.985054>,  <33.774460, 32.561680, 37.972652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910645, 32.185780, 37.985054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567136, 0.178949, -0.803949,
		0.749961, 0.291298, 0.593890,
		0.340465, -0.939746, 0.031000,
		34.012783, 31.903856, 37.994354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536728, 32.609329, 37.934231>,  <33.774460, 32.561680, 37.972652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536728, 32.609329, 37.934231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414680, 32.245972, 37.819881>,  <34.341454, 32.027958, 37.751270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414680, 32.245972, 37.819881>,  <34.536728, 32.609329, 37.934231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414680, 32.245972, 37.819881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472486, 0.116238, -0.873639,
		0.826838, -0.401634, 0.393737,
		-0.305116, -0.908394, -0.285876,
		34.323147, 31.973454, 37.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033066, 32.435387, 37.490589>,  <34.536728, 32.609329, 37.934231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033066, 32.435387, 37.490589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774456, 32.144588, 37.398075>,  <34.619289, 31.970110, 37.342567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774456, 32.144588, 37.398075>,  <35.033066, 32.435387, 37.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774456, 32.144588, 37.398075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462511, -0.132413, -0.876670,
		0.606706, -0.673758, 0.421850,
		-0.646522, -0.726991, -0.231285,
		34.580498, 31.926491, 37.328690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296139, 31.697031, 37.502647>,  <35.033066, 32.435387, 37.490589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296139, 31.697031, 37.502647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975334, 31.704451, 37.263840>,  <34.782852, 31.708902, 37.120556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975334, 31.704451, 37.263840>,  <35.296139, 31.697031, 37.502647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975334, 31.704451, 37.263840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571800, -0.265149, -0.776364,
		-0.172701, -0.964029, 0.202046,
		-0.802010, 0.018549, -0.597023,
		34.734730, 31.710016, 37.084732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711239, 31.921289, 38.076385>,  <35.296139, 31.697031, 37.502647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711239, 31.921289, 38.076385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094681, 32.009007, 38.149036>,  <36.324745, 32.061638, 38.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094681, 32.009007, 38.149036>,  <35.711239, 31.921289, 38.076385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094681, 32.009007, 38.149036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083653, -0.392814, 0.915806,
		0.272173, -0.893089, -0.358209,
		0.958605, 0.219293, 0.181623,
		36.382263, 32.074795, 38.203522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942371, 31.333838, 38.464993>,  <35.711239, 31.921289, 38.076385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942371, 31.333838, 38.464993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187584, 31.645172, 38.519234>,  <36.334713, 31.831972, 38.551777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187584, 31.645172, 38.519234>,  <35.942371, 31.333838, 38.464993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187584, 31.645172, 38.519234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035432, -0.144378, 0.988888,
		0.789264, -0.611024, -0.060930,
		0.613032, 0.778334, 0.135602,
		36.371494, 31.878672, 38.559914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622459, 31.179346, 38.874069>,  <35.942371, 31.333838, 38.464993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622459, 31.179346, 38.874069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532013, 31.568216, 38.898552>,  <36.477745, 31.801538, 38.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532013, 31.568216, 38.898552>,  <36.622459, 31.179346, 38.874069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532013, 31.568216, 38.898552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278051, -0.124637, 0.952446,
		0.933572, 0.198349, 0.298497,
		-0.226121, 0.972175, 0.061207,
		36.464176, 31.859869, 38.916916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490570, 31.196480, 39.516285>,  <36.622459, 31.179346, 38.874069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490570, 31.196480, 39.516285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446438, 31.591236, 39.469166>,  <36.419956, 31.828089, 39.440895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446438, 31.591236, 39.469166>,  <36.490570, 31.196480, 39.516285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446438, 31.591236, 39.469166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196582, 0.094507, 0.975922,
		0.974260, 0.130834, 0.183577,
		-0.110334, 0.986890, -0.117794,
		36.413338, 31.887302, 39.433826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920856, 31.523472, 39.994694>,  <36.490570, 31.196480, 39.516285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920856, 31.523472, 39.994694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615391, 31.761488, 39.894497>,  <36.432114, 31.904297, 39.834377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615391, 31.761488, 39.894497>,  <36.920856, 31.523472, 39.994694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615391, 31.761488, 39.894497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294979, 0.023544, 0.955214,
		0.574289, 0.803351, 0.157545,
		-0.763662, 0.595041, -0.250492,
		36.386292, 31.940001, 39.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886375, 32.094677, 40.535877>,  <36.920856, 31.523472, 39.994694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886375, 32.094677, 40.535877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537025, 32.094364, 40.341061>,  <36.327415, 32.094177, 40.224171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537025, 32.094364, 40.341061>,  <36.886375, 32.094677, 40.535877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537025, 32.094364, 40.341061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481511, 0.151710, 0.863210,
		0.073213, 0.988425, -0.132878,
		-0.873377, -0.000784, -0.487045,
		36.275013, 32.094128, 40.194946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441135, 32.725113, 40.777901>,  <36.886375, 32.094677, 40.535877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441135, 32.725113, 40.777901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162113, 32.478535, 40.631798>,  <35.994701, 32.330589, 40.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162113, 32.478535, 40.631798>,  <36.441135, 32.725113, 40.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162113, 32.478535, 40.631798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549205, 0.132578, 0.825104,
		-0.460207, 0.776156, -0.431036,
		-0.697555, -0.616446, -0.365255,
		35.952847, 32.293602, 40.522221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724907, 33.049637, 40.870338>,  <36.441135, 32.725113, 40.777901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724907, 33.049637, 40.870338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667828, 32.655689, 40.831017>,  <35.633579, 32.419319, 40.807423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667828, 32.655689, 40.831017>,  <35.724907, 33.049637, 40.870338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667828, 32.655689, 40.831017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723668, 0.036060, 0.689206,
		-0.675235, 0.169490, -0.717866,
		-0.142700, -0.984872, -0.098306,
		35.625019, 32.360229, 40.801525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991718, 32.915363, 40.762398>,  <35.724907, 33.049637, 40.870338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991718, 32.915363, 40.762398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154594, 32.583897, 40.916023>,  <35.252319, 32.385017, 41.008198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154594, 32.583897, 40.916023>,  <34.991718, 32.915363, 40.762398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154594, 32.583897, 40.916023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657802, 0.025656, 0.752754,
		-0.633637, -0.559152, -0.534653,
		0.407187, -0.828668, 0.384067,
		35.276749, 32.335297, 41.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447720, 32.644875, 41.124897>,  <34.991718, 32.915363, 40.762398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447720, 32.644875, 41.124897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760990, 32.446114, 41.274414>,  <34.948952, 32.326855, 41.364124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760990, 32.446114, 41.274414>,  <34.447720, 32.644875, 41.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760990, 32.446114, 41.274414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454233, -0.046676, 0.889660,
		-0.424631, -0.866548, -0.262267,
		0.783174, -0.496907, 0.373794,
		34.995941, 32.297043, 41.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211681, 32.083660, 41.481033>,  <34.447720, 32.644875, 41.124897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211681, 32.083660, 41.481033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580730, 32.140179, 41.624584>,  <34.802162, 32.174091, 41.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580730, 32.140179, 41.624584>,  <34.211681, 32.083660, 41.481033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580730, 32.140179, 41.624584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341812, -0.131498, 0.930523,
		0.178673, -0.981195, -0.073026,
		0.922627, 0.141298, 0.358879,
		34.857517, 32.182568, 41.732246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330956, 31.609798, 42.091473>,  <34.211681, 32.083660, 41.481033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330956, 31.609798, 42.091473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596569, 31.904861, 42.140327>,  <34.755936, 32.081898, 42.169640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596569, 31.904861, 42.140327>,  <34.330956, 31.609798, 42.091473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596569, 31.904861, 42.140327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217088, 0.033889, 0.975564,
		0.715493, -0.674324, 0.182640,
		0.664035, 0.737658, 0.122140,
		34.795780, 32.126160, 42.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763775, 31.490099, 42.681526>,  <34.330956, 31.609798, 42.091473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763775, 31.490099, 42.681526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787479, 31.886108, 42.630390>,  <34.801701, 32.123714, 42.599709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787479, 31.886108, 42.630390>,  <34.763775, 31.490099, 42.681526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787479, 31.886108, 42.630390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076683, 0.132198, 0.988252,
		0.995293, -0.048764, 0.083753,
		0.059263, 0.990023, -0.127836,
		34.805260, 32.183117, 42.592041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325600, 31.739870, 42.999050>,  <34.763775, 31.490099, 42.681526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325600, 31.739870, 42.999050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048271, 32.027550, 42.980892>,  <34.881874, 32.200157, 42.969997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048271, 32.027550, 42.980892>,  <35.325600, 31.739870, 42.999050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048271, 32.027550, 42.980892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204230, -0.135684, 0.969474,
		0.691087, 0.681425, 0.240954,
		-0.693318, 0.719201, -0.045397,
		34.840275, 32.243309, 42.967274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339802, 32.087212, 43.623875>,  <35.325600, 31.739870, 42.999050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339802, 32.087212, 43.623875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984009, 32.184227, 43.468960>,  <34.770531, 32.242435, 43.376011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984009, 32.184227, 43.468960>,  <35.339802, 32.087212, 43.623875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984009, 32.184227, 43.468960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405551, -0.028431, 0.913630,
		0.210581, 0.969725, 0.123651,
		-0.889485, 0.242540, -0.387286,
		34.717163, 32.256989, 43.352776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235641, 32.590073, 44.108803>,  <35.339802, 32.087212, 43.623875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235641, 32.590073, 44.108803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879253, 32.514904, 43.943462>,  <34.665421, 32.469803, 43.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879253, 32.514904, 43.943462>,  <35.235641, 32.590073, 44.108803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879253, 32.514904, 43.943462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435415, 0.095372, 0.895164,
		-0.128795, 0.977543, -0.166796,
		-0.890969, -0.187919, -0.413353,
		34.611961, 32.458527, 43.819458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754040, 33.011581, 44.397141>,  <35.235641, 32.590073, 44.108803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754040, 33.011581, 44.397141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510292, 32.736149, 44.239902>,  <34.364044, 32.570889, 44.145561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510292, 32.736149, 44.239902>,  <34.754040, 33.011581, 44.397141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510292, 32.736149, 44.239902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484806, -0.068720, 0.871918,
		-0.627397, 0.721899, -0.291950,
		-0.609374, -0.688578, -0.393096,
		34.327480, 32.529575, 44.121975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092941, 33.235340, 44.518242>,  <34.754040, 33.011581, 44.397141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092941, 33.235340, 44.518242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066364, 32.839390, 44.468086>,  <34.050419, 32.601818, 44.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066364, 32.839390, 44.468086>,  <34.092941, 33.235340, 44.518242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066364, 32.839390, 44.468086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474326, -0.079223, 0.876778,
		-0.877838, 0.117734, -0.464261,
		-0.066446, -0.989880, -0.125389,
		34.046429, 32.542427, 44.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362503, 33.048008, 44.744587>,  <34.092941, 33.235340, 44.518242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362503, 33.048008, 44.744587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595680, 32.724983, 44.780407>,  <33.735584, 32.531166, 44.801899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595680, 32.724983, 44.780407>,  <33.362503, 33.048008, 44.744587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595680, 32.724983, 44.780407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451770, -0.230541, 0.861832,
		-0.675340, -0.542854, -0.499225,
		0.582940, -0.807564, 0.089552,
		33.770561, 32.482716, 44.807274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978878, 32.522343, 44.845512>,  <33.362503, 33.048008, 44.744587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978878, 32.522343, 44.845512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321053, 32.354923, 44.967525>,  <33.526356, 32.254471, 45.040733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321053, 32.354923, 44.967525>,  <32.978878, 32.522343, 44.845512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321053, 32.354923, 44.967525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443533, -0.287948, 0.848743,
		-0.267395, -0.861343, -0.431958,
		0.855440, -0.418537, 0.305039,
		33.577682, 32.229359, 45.059036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781925, 31.875910, 45.049469>,  <32.978878, 32.522343, 44.845512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781925, 31.875910, 45.049469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134983, 31.949600, 45.222439>,  <33.346817, 31.993814, 45.326221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134983, 31.949600, 45.222439>,  <32.781925, 31.875910, 45.049469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134983, 31.949600, 45.222439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405453, -0.166982, 0.898735,
		0.237779, -0.968596, -0.072691,
		0.882649, 0.184228, 0.432425,
		33.399776, 32.004868, 45.352165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740292, 31.431459, 45.616753>,  <32.781925, 31.875910, 45.049469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740292, 31.431459, 45.616753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025517, 31.687880, 45.730312>,  <33.196651, 31.841732, 45.798447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025517, 31.687880, 45.730312>,  <32.740292, 31.431459, 45.616753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025517, 31.687880, 45.730312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459459, 0.121410, 0.879862,
		0.529570, -0.757833, 0.381110,
		0.713060, 0.641052, 0.283898,
		33.239433, 31.880196, 45.815483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966866, 31.233274, 46.217690>,  <32.740292, 31.431459, 45.616753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966866, 31.233274, 46.217690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053268, 31.623739, 46.209225>,  <33.105110, 31.858019, 46.204144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053268, 31.623739, 46.209225>,  <32.966866, 31.233274, 46.217690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053268, 31.623739, 46.209225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483984, 0.125871, 0.865977,
		0.847998, -0.176811, 0.499636,
		0.216004, 0.976163, -0.021165,
		33.118069, 31.916588, 46.202877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114082, 31.353971, 46.896080>,  <32.966866, 31.233274, 46.217690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114082, 31.353971, 46.896080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031788, 31.690371, 46.695923>,  <32.982410, 31.892210, 46.575829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031788, 31.690371, 46.695923>,  <33.114082, 31.353971, 46.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031788, 31.690371, 46.695923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532271, 0.332913, 0.778368,
		0.821194, 0.426484, 0.379147,
		-0.205739, 0.841000, -0.500391,
		32.970066, 31.942671, 46.545807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182995, 31.860531, 47.405331>,  <33.114082, 31.353971, 46.896080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182995, 31.860531, 47.405331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969395, 32.021679, 47.107998>,  <32.841236, 32.118370, 46.929600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969395, 32.021679, 47.107998>,  <33.182995, 31.860531, 47.405331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969395, 32.021679, 47.107998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604537, 0.432704, 0.668806,
		0.591086, 0.806512, 0.012488,
		-0.533996, 0.402872, -0.743332,
		32.809196, 32.142540, 46.884998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117199, 32.533756, 47.604927>,  <33.182995, 31.860531, 47.405331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117199, 32.533756, 47.604927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829636, 32.477551, 47.332626>,  <32.657097, 32.443829, 47.169247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829636, 32.477551, 47.332626>,  <33.117199, 32.533756, 47.604927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829636, 32.477551, 47.332626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662929, 0.433114, 0.610686,
		0.209036, 0.890319, -0.404519,
		-0.718908, -0.140512, -0.680755,
		32.613964, 32.435398, 47.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830799, 33.210777, 47.454563>,  <33.117199, 32.533756, 47.604927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830799, 33.210777, 47.454563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562874, 32.936489, 47.340633>,  <32.402119, 32.771915, 47.272274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562874, 32.936489, 47.340633>,  <32.830799, 33.210777, 47.454563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562874, 32.936489, 47.340633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721808, 0.511339, 0.466397,
		-0.174178, 0.517990, -0.837466,
		-0.669818, -0.685725, -0.284825,
		32.361927, 32.730770, 47.255184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270332, 33.618744, 47.341286>,  <32.830799, 33.210777, 47.454563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270332, 33.618744, 47.341286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122204, 33.247746, 47.361740>,  <32.033325, 33.025146, 47.374012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122204, 33.247746, 47.361740>,  <32.270332, 33.618744, 47.341286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122204, 33.247746, 47.361740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824045, 0.353430, 0.442760,
		-0.428729, 0.121830, -0.895181,
		-0.370325, -0.927494, 0.051133,
		32.011105, 32.969498, 47.377079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532347, 33.610378, 46.998337>,  <32.270332, 33.618744, 47.341286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532347, 33.610378, 46.998337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560726, 33.306229, 47.256577>,  <31.577755, 33.123737, 47.411522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560726, 33.306229, 47.256577>,  <31.532347, 33.610378, 46.998337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560726, 33.306229, 47.256577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813135, 0.330783, 0.478951,
		-0.577735, -0.558940, -0.594817,
		0.070949, -0.760373, 0.645599,
		31.582010, 33.078117, 47.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870201, 33.366867, 47.025879>,  <31.532347, 33.610378, 46.998337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870201, 33.366867, 47.025879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030113, 33.185230, 47.344368>,  <31.126060, 33.076248, 47.535461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030113, 33.185230, 47.344368>,  <30.870201, 33.366867, 47.025879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030113, 33.185230, 47.344368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833712, 0.180855, 0.521743,
		-0.380921, -0.872406, -0.306280,
		0.399779, -0.454092, 0.796227,
		31.150047, 33.049004, 47.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294416, 32.983322, 47.356247>,  <30.870201, 33.366867, 47.025879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294416, 32.983322, 47.356247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568682, 33.051380, 47.639351>,  <30.733240, 33.092216, 47.809212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568682, 33.051380, 47.639351>,  <30.294416, 32.983322, 47.356247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568682, 33.051380, 47.639351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716739, 0.327567, 0.615617,
		-0.127095, -0.929382, 0.346549,
		0.685662, 0.170143, 0.707757,
		30.774380, 33.102425, 47.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889360, 32.924576, 47.969566>,  <30.294416, 32.983322, 47.356247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889360, 32.924576, 47.969566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224417, 33.099442, 48.100559>,  <30.425449, 33.204361, 48.179157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224417, 33.099442, 48.100559>,  <29.889360, 32.924576, 47.969566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224417, 33.099442, 48.100559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517660, 0.444001, 0.731362,
		0.174321, -0.782145, 0.598216,
		0.837640, 0.437164, 0.327486,
		30.475708, 33.230591, 48.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974760, 32.704071, 48.661934>,  <29.889360, 32.924576, 47.969566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974760, 32.704071, 48.661934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173412, 33.046894, 48.607075>,  <30.292604, 33.252586, 48.574158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173412, 33.046894, 48.607075>,  <29.974760, 32.704071, 48.661934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173412, 33.046894, 48.607075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435383, 0.382686, 0.814858,
		0.750865, -0.344972, 0.563202,
		0.496632, 0.857056, -0.137151,
		30.322403, 33.304012, 48.565929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076387, 33.051342, 49.363232>,  <29.974760, 32.704071, 48.661934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076387, 33.051342, 49.363232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145744, 33.341393, 49.096661>,  <30.187359, 33.515423, 48.936718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145744, 33.341393, 49.096661>,  <30.076387, 33.051342, 49.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145744, 33.341393, 49.096661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323763, 0.681033, 0.656789,
		0.930114, 0.101880, 0.352857,
		0.173394, 0.725131, -0.666423,
		30.197763, 33.558933, 48.896732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483540, 33.516701, 49.723026>,  <30.076387, 33.051342, 49.363232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483540, 33.516701, 49.723026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318274, 33.729443, 49.427345>,  <30.219114, 33.857090, 49.249935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318274, 33.729443, 49.427345>,  <30.483540, 33.516701, 49.723026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318274, 33.729443, 49.427345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336370, 0.665193, 0.666613,
		0.846257, 0.524067, -0.095933,
		-0.413164, 0.531857, -0.739205,
		30.194324, 33.889000, 49.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712206, 34.148212, 49.770531>,  <30.483540, 33.516701, 49.723026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712206, 34.148212, 49.770531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369677, 34.178776, 49.566227>,  <30.164160, 34.197113, 49.443645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369677, 34.178776, 49.566227>,  <30.712206, 34.148212, 49.770531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369677, 34.178776, 49.566227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319376, 0.698848, 0.640008,
		0.405845, 0.711177, -0.574036,
		-0.856323, 0.076411, -0.510756,
		30.112780, 34.201698, 49.412998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530233, 34.818256, 49.833054>,  <30.712206, 34.148212, 49.770531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530233, 34.818256, 49.833054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178570, 34.718430, 49.670673>,  <29.967571, 34.658535, 49.573246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178570, 34.718430, 49.670673>,  <30.530233, 34.818256, 49.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178570, 34.718430, 49.670673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467680, 0.615283, 0.634588,
		0.091407, 0.747759, -0.657648,
		-0.879159, -0.249563, -0.405953,
		29.914822, 34.643562, 49.548889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104458, 35.464890, 49.637093>,  <30.530233, 34.818256, 49.833054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104458, 35.464890, 49.637093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875938, 35.141479, 49.693523>,  <29.738827, 34.947433, 49.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875938, 35.141479, 49.693523>,  <30.104458, 35.464890, 49.637093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875938, 35.141479, 49.693523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435100, 0.444106, 0.783236,
		-0.695921, 0.386077, -0.605507,
		-0.571298, -0.808527, 0.141081,
		29.704550, 34.898922, 49.735847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843918, 35.585533, 50.381020>,  <30.104458, 35.464890, 49.637093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843918, 35.585533, 50.381020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790302, 35.981876, 50.387135>,  <29.758133, 36.219681, 50.390804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790302, 35.981876, 50.387135>,  <29.843918, 35.585533, 50.381020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790302, 35.981876, 50.387135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406519, 0.069047, -0.911030,
		-0.903757, -0.115898, -0.412057,
		-0.134037, 0.990858, 0.015287,
		29.750092, 36.279133, 50.391720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422861, 35.795353, 49.795036>,  <29.843918, 35.585533, 50.381020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422861, 35.795353, 49.795036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649529, 36.105545, 49.906399>,  <29.785528, 36.291660, 49.973217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649529, 36.105545, 49.906399>,  <29.422861, 35.795353, 49.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649529, 36.105545, 49.906399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270827, 0.143817, -0.951824,
		-0.778164, 0.614770, -0.128526,
		0.566668, 0.775484, 0.278409,
		29.819529, 36.338192, 49.989922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304083, 36.228016, 49.308151>,  <29.422861, 35.795353, 49.795036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304083, 36.228016, 49.308151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650402, 36.322876, 49.484402>,  <29.858194, 36.379791, 49.590153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650402, 36.322876, 49.484402>,  <29.304083, 36.228016, 49.308151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650402, 36.322876, 49.484402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411387, 0.163960, -0.896592,
		-0.284871, 0.957537, 0.044396,
		0.865800, 0.237149, 0.440626,
		29.910143, 36.394020, 49.616589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699827, 36.822983, 48.912788>,  <29.304083, 36.228016, 49.308151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699827, 36.822983, 48.912788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990297, 36.652714, 49.128738>,  <30.164579, 36.550552, 49.258308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990297, 36.652714, 49.128738>,  <29.699827, 36.822983, 48.912788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990297, 36.652714, 49.128738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605880, 0.025102, -0.795160,
		0.324926, 0.904529, 0.276135,
		0.726177, -0.425673, 0.539880,
		30.208151, 36.525013, 49.290703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311058, 37.197643, 48.757145>,  <29.699827, 36.822983, 48.912788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311058, 37.197643, 48.757145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453711, 36.853024, 48.901672>,  <30.539303, 36.646252, 48.988388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453711, 36.853024, 48.901672>,  <30.311058, 37.197643, 48.757145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453711, 36.853024, 48.901672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533011, -0.129991, -0.836063,
		0.767277, 0.490751, 0.412856,
		0.356631, -0.861549, 0.361315,
		30.560699, 36.594559, 49.010067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934025, 37.313454, 48.632744>,  <30.311058, 37.197643, 48.757145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934025, 37.313454, 48.632744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918058, 36.917656, 48.688320>,  <30.908480, 36.680176, 48.721668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918058, 36.917656, 48.688320>,  <30.934025, 37.313454, 48.632744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918058, 36.917656, 48.688320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669812, -0.129681, -0.731119,
		0.741457, 0.063884, 0.667952,
		-0.039914, -0.989496, 0.138944,
		30.906084, 36.620808, 48.730003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596649, 37.172169, 48.511108>,  <30.934025, 37.313454, 48.632744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596649, 37.172169, 48.511108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406952, 36.820568, 48.491302>,  <31.293135, 36.609608, 48.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406952, 36.820568, 48.491302>,  <31.596649, 37.172169, 48.511108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406952, 36.820568, 48.491302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630688, -0.299952, -0.715724,
		0.614269, -0.370656, 0.696625,
		-0.474242, -0.879001, -0.049517,
		31.264679, 36.556870, 48.476448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151989, 36.705681, 48.530022>,  <31.596649, 37.172169, 48.511108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151989, 36.705681, 48.530022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836159, 36.532597, 48.355976>,  <31.646660, 36.428745, 48.251549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836159, 36.532597, 48.355976>,  <32.151989, 36.705681, 48.530022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836159, 36.532597, 48.355976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575215, -0.274910, -0.770424,
		0.213758, -0.858593, 0.465967,
		-0.789580, -0.432716, -0.435111,
		31.599285, 36.402782, 48.225441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434082, 36.069771, 48.271732>,  <32.151989, 36.705681, 48.530022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434082, 36.069771, 48.271732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095341, 36.115093, 48.063889>,  <31.892096, 36.142288, 47.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095341, 36.115093, 48.063889>,  <32.434082, 36.069771, 48.271732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095341, 36.115093, 48.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442510, -0.391813, -0.806640,
		-0.294986, -0.913041, 0.281671,
		-0.846857, 0.113306, -0.519609,
		31.841284, 36.149086, 47.908005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305046, 35.436562, 47.945404>,  <32.434082, 36.069771, 48.271732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305046, 35.436562, 47.945404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106972, 35.721733, 47.746799>,  <31.988127, 35.892838, 47.627636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106972, 35.721733, 47.746799>,  <32.305046, 35.436562, 47.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106972, 35.721733, 47.746799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440575, -0.286494, -0.850773,
		-0.748787, -0.640042, -0.172230,
		-0.495188, 0.712928, -0.496510,
		31.958416, 35.935612, 47.597847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106285, 35.059189, 47.363010>,  <32.305046, 35.436562, 47.945404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106285, 35.059189, 47.363010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049091, 35.443424, 47.267658>,  <32.014774, 35.673965, 47.210449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049091, 35.443424, 47.267658>,  <32.106285, 35.059189, 47.363010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049091, 35.443424, 47.267658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400078, -0.164198, -0.901652,
		-0.905258, -0.224293, -0.360833,
		-0.142987, 0.960589, -0.238377,
		32.006195, 35.731602, 47.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746782, 35.144958, 46.685757>,  <32.106285, 35.059189, 47.363010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746782, 35.144958, 46.685757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958517, 35.481827, 46.726841>,  <32.085556, 35.683949, 46.751492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958517, 35.481827, 46.726841>,  <31.746782, 35.144958, 46.685757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958517, 35.481827, 46.726841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293627, -0.068266, -0.953480,
		-0.795982, 0.534871, -0.283420,
		0.529336, 0.842172, 0.102714,
		32.117317, 35.734478, 46.757656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547394, 35.569313, 46.213673>,  <31.746782, 35.144958, 46.685757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547394, 35.569313, 46.213673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924665, 35.669834, 46.300625>,  <32.151028, 35.730148, 46.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924665, 35.669834, 46.300625>,  <31.547394, 35.569313, 46.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924665, 35.669834, 46.300625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227268, -0.010633, -0.973774,
		-0.242402, 0.967850, -0.067142,
		0.943181, 0.251304, 0.217384,
		32.207619, 35.745224, 46.365841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720385, 36.018768, 45.702351>,  <31.547394, 35.569313, 46.213673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720385, 36.018768, 45.702351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082321, 35.931145, 45.848381>,  <32.299484, 35.878571, 45.935997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082321, 35.931145, 45.848381>,  <31.720385, 36.018768, 45.702351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082321, 35.931145, 45.848381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395183, 0.113096, -0.911614,
		0.158405, 0.969136, 0.188901,
		0.904841, -0.219054, 0.365071,
		32.353775, 35.865429, 45.957901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186966, 36.538498, 45.438248>,  <31.720385, 36.018768, 45.702351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186966, 36.538498, 45.438248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405045, 36.212288, 45.515903>,  <32.535892, 36.016563, 45.562496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405045, 36.212288, 45.515903>,  <32.186966, 36.538498, 45.438248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405045, 36.212288, 45.515903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526842, 0.153180, -0.836046,
		0.652076, 0.558086, 0.513164,
		0.545192, -0.815522, 0.194138,
		32.568604, 35.967632, 45.574146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888477, 36.748779, 45.198540>,  <32.186966, 36.538498, 45.438248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888477, 36.748779, 45.198540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894993, 36.350826, 45.238411>,  <32.898903, 36.112053, 45.262333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894993, 36.350826, 45.238411>,  <32.888477, 36.748779, 45.198540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894993, 36.350826, 45.238411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755476, -0.053057, -0.653025,
		0.654974, 0.085947, 0.750748,
		0.016293, -0.994886, 0.099682,
		32.899879, 36.052361, 45.268314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571720, 36.528633, 45.088219>,  <32.888477, 36.748779, 45.198540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571720, 36.528633, 45.088219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400707, 36.167271, 45.075169>,  <33.298100, 35.950451, 45.067337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400707, 36.167271, 45.075169>,  <33.571720, 36.528633, 45.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400707, 36.167271, 45.075169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726704, -0.321993, -0.606813,
		0.537696, -0.283143, 0.794175,
		-0.427534, -0.903410, -0.032627,
		33.272446, 35.896248, 45.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030285, 35.986496, 45.146015>,  <33.571720, 36.528633, 45.088219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030285, 35.986496, 45.146015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727230, 35.793049, 44.970699>,  <33.545395, 35.676979, 44.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727230, 35.793049, 44.970699>,  <34.030285, 35.986496, 45.146015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727230, 35.793049, 44.970699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606794, -0.274613, -0.745915,
		0.240379, -0.831084, 0.501514,
		-0.757641, -0.483618, -0.438285,
		33.499939, 35.647964, 44.839214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305183, 35.296490, 44.882942>,  <34.030285, 35.986496, 45.146015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305183, 35.296490, 44.882942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978870, 35.344723, 44.656681>,  <33.783081, 35.373665, 44.520924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978870, 35.344723, 44.656681>,  <34.305183, 35.296490, 44.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978870, 35.344723, 44.656681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466872, -0.439962, -0.767115,
		-0.341368, -0.889884, 0.302614,
		-0.815781, 0.120587, -0.565650,
		33.734135, 35.380898, 44.486984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129826, 34.649071, 44.574657>,  <34.305183, 35.296490, 44.882942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129826, 34.649071, 44.574657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961166, 34.913445, 44.326344>,  <33.859970, 35.072067, 44.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961166, 34.913445, 44.326344>,  <34.129826, 34.649071, 44.574657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961166, 34.913445, 44.326344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579323, -0.330321, -0.745166,
		-0.697567, -0.673833, -0.243617,
		-0.421646, 0.660936, -0.620789,
		33.834671, 35.111725, 44.140106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967178, 34.255432, 43.985134>,  <34.129826, 34.649071, 44.574657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967178, 34.255432, 43.985134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998188, 34.635818, 43.865368>,  <34.016792, 34.864052, 43.793507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998188, 34.635818, 43.865368>,  <33.967178, 34.255432, 43.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998188, 34.635818, 43.865368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613168, -0.282281, -0.737795,
		-0.786139, -0.126398, -0.604986,
		0.077520, 0.950968, -0.299416,
		34.021442, 34.921108, 43.775543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820240, 34.185806, 43.325054>,  <33.967178, 34.255432, 43.985134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820240, 34.185806, 43.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999123, 34.542744, 43.349483>,  <34.106453, 34.756905, 43.364140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999123, 34.542744, 43.349483>,  <33.820240, 34.185806, 43.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999123, 34.542744, 43.349483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522167, -0.205031, -0.827831,
		-0.726188, 0.402101, -0.557644,
		0.447206, 0.892343, 0.061073,
		34.133286, 34.810448, 43.367805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675877, 34.593487, 42.745975>,  <33.820240, 34.185806, 43.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675877, 34.593487, 42.745975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013706, 34.740704, 42.901531>,  <34.216404, 34.829033, 42.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013706, 34.740704, 42.901531>,  <33.675877, 34.593487, 42.745975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013706, 34.740704, 42.901531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478885, -0.194339, -0.856097,
		-0.239502, 0.909273, -0.340384,
		0.844576, 0.368041, 0.388892,
		34.267078, 34.851116, 43.018200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057167, 34.822948, 42.204556>,  <33.675877, 34.593487, 42.745975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057167, 34.822948, 42.204556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354019, 34.840248, 42.472099>,  <34.532131, 34.850628, 42.632626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354019, 34.840248, 42.472099>,  <34.057167, 34.822948, 42.204556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354019, 34.840248, 42.472099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667026, -0.145513, -0.730686,
		0.065729, 0.988411, -0.136836,
		0.742130, 0.043246, 0.668860,
		34.576656, 34.853222, 42.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547428, 35.186275, 41.944687>,  <34.057167, 34.822948, 42.204556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547428, 35.186275, 41.944687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768021, 35.015858, 42.231560>,  <34.900375, 34.913609, 42.403683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768021, 35.015858, 42.231560>,  <34.547428, 35.186275, 41.944687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768021, 35.015858, 42.231560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720025, -0.191020, -0.667140,
		0.421226, 0.884307, 0.201417,
		0.551482, -0.426042, 0.717186,
		34.933464, 34.888046, 42.446716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142879, 35.424557, 41.852955>,  <34.547428, 35.186275, 41.944687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142879, 35.424557, 41.852955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250889, 35.097054, 42.055626>,  <35.315693, 34.900551, 42.177231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250889, 35.097054, 42.055626>,  <35.142879, 35.424557, 41.852955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250889, 35.097054, 42.055626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851756, -0.042273, -0.522231,
		0.448999, 0.572581, 0.685967,
		0.270022, -0.818758, 0.506680,
		35.331894, 34.851425, 42.207630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732410, 35.542591, 42.121498>,  <35.142879, 35.424557, 41.852955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732410, 35.542591, 42.121498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727364, 35.145519, 42.073463>,  <35.724335, 34.907276, 42.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727364, 35.145519, 42.073463>,  <35.732410, 35.542591, 42.121498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727364, 35.145519, 42.073463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843059, 0.054019, -0.535101,
		0.537672, -0.107992, 0.836209,
		-0.012616, -0.992683, -0.120088,
		35.723579, 34.847713, 42.037437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303822, 35.328419, 42.437183>,  <35.732410, 35.542591, 42.121498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303822, 35.328419, 42.437183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215668, 35.030487, 42.185261>,  <36.162777, 34.851727, 42.034107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215668, 35.030487, 42.185261>,  <36.303822, 35.328419, 42.437183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215668, 35.030487, 42.185261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865763, 0.148064, -0.478050,
		0.449318, -0.650619, 0.612216,
		-0.220381, -0.744830, -0.629809,
		36.149555, 34.807037, 41.996319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901417, 34.892601, 42.366920>,  <36.303822, 35.328419, 42.437183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901417, 34.892601, 42.366920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683514, 34.818638, 42.039738>,  <36.552773, 34.774261, 41.843430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683514, 34.818638, 42.039738>,  <36.901417, 34.892601, 42.366920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683514, 34.818638, 42.039738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826835, 0.044325, -0.560695,
		0.139932, -0.981756, 0.128741,
		-0.544759, -0.184907, -0.817953,
		36.520084, 34.763165, 41.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328220, 34.574837, 41.937992>,  <36.901417, 34.892601, 42.366920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328220, 34.574837, 41.937992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041943, 34.659237, 41.671680>,  <36.870178, 34.709877, 41.511894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041943, 34.659237, 41.671680>,  <37.328220, 34.574837, 41.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041943, 34.659237, 41.671680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691251, 0.077777, -0.718417,
		-0.099804, -0.974387, -0.201519,
		-0.715690, 0.211001, -0.665783,
		36.827236, 34.722538, 41.471947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443665, 34.063511, 41.386520>,  <37.328220, 34.574837, 41.937992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443665, 34.063511, 41.386520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246319, 34.374336, 41.230179>,  <37.127911, 34.560829, 41.136372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246319, 34.374336, 41.230179>,  <37.443665, 34.063511, 41.386520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246319, 34.374336, 41.230179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636678, 0.016449, -0.770954,
		-0.592649, -0.629211, -0.502853,
		-0.493364, 0.777061, -0.390856,
		37.098309, 34.607456, 41.112923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226009, 33.843903, 40.680832>,  <37.443665, 34.063511, 41.386520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226009, 33.843903, 40.680832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203495, 34.243267, 40.682392>,  <37.189987, 34.482883, 40.683327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203495, 34.243267, 40.682392>,  <37.226009, 33.843903, 40.680832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203495, 34.243267, 40.682392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509325, 0.032074, -0.859977,
		-0.858732, -0.046419, -0.510319,
		-0.056287, 0.998407, 0.003901,
		37.186607, 34.542789, 40.683563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048691, 33.957596, 39.978157>,  <37.226009, 33.843903, 40.680832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048691, 33.957596, 39.978157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206631, 34.283875, 40.147266>,  <37.301395, 34.479641, 40.248734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206631, 34.283875, 40.147266>,  <37.048691, 33.957596, 39.978157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206631, 34.283875, 40.147266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482452, 0.207529, -0.850983,
		-0.781880, 0.539977, -0.311591,
		0.394848, 0.815694, 0.422775,
		37.325085, 34.528584, 40.274097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875702, 34.425659, 39.506203>,  <37.048691, 33.957596, 39.978157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875702, 34.425659, 39.506203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150944, 34.631271, 39.711060>,  <37.316090, 34.754639, 39.833973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150944, 34.631271, 39.711060>,  <36.875702, 34.425659, 39.506203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150944, 34.631271, 39.711060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439797, 0.265943, -0.857819,
		-0.577142, 0.815507, -0.043071,
		0.688102, 0.514026, 0.512145,
		37.357376, 34.785480, 39.864704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861572, 35.111469, 39.264736>,  <36.875702, 34.425659, 39.506203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861572, 35.111469, 39.264736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224529, 35.078022, 39.429493>,  <37.442303, 35.057953, 39.528347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224529, 35.078022, 39.429493>,  <36.861572, 35.111469, 39.264736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224529, 35.078022, 39.429493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396221, 0.497090, -0.771952,
		-0.140195, 0.863660, 0.484187,
		0.907389, -0.083621, 0.411889,
		37.496746, 35.052937, 39.553059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305481, 35.714798, 39.179714>,  <36.861572, 35.111469, 39.264736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305481, 35.714798, 39.179714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601856, 35.466892, 39.283176>,  <37.779682, 35.318150, 39.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601856, 35.466892, 39.283176>,  <37.305481, 35.714798, 39.179714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601856, 35.466892, 39.283176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618513, 0.479706, -0.622353,
		0.261636, 0.621105, 0.738766,
		0.740937, -0.619767, 0.258653,
		37.824139, 35.280964, 39.360771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906773, 36.132767, 39.208225>,  <37.305481, 35.714798, 39.179714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906773, 36.132767, 39.208225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996521, 35.752071, 39.124462>,  <38.050369, 35.523655, 39.074203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996521, 35.752071, 39.124462>,  <37.906773, 36.132767, 39.208225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996521, 35.752071, 39.124462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665888, 0.306627, -0.680127,
		0.711513, 0.013163, 0.702550,
		0.224373, -0.951739, -0.209404,
		38.063831, 35.466549, 39.061642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550468, 36.122208, 39.199371>,  <37.906773, 36.132767, 39.208225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550468, 36.122208, 39.199371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466244, 35.786503, 38.998852>,  <38.415707, 35.585079, 38.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466244, 35.786503, 38.998852>,  <38.550468, 36.122208, 39.199371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466244, 35.786503, 38.998852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738218, 0.199657, -0.644338,
		0.640857, -0.505743, 0.577518,
		-0.210564, -0.839262, -0.501300,
		38.403076, 35.534725, 38.848461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205055, 35.871140, 38.998486>,  <38.550468, 36.122208, 39.199371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205055, 35.871140, 38.998486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951344, 35.691784, 38.746571>,  <38.799118, 35.584171, 38.595421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951344, 35.691784, 38.746571>,  <39.205055, 35.871140, 38.998486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951344, 35.691784, 38.746571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585904, 0.252682, -0.769980,
		0.504390, -0.857378, 0.102445,
		-0.634277, -0.448393, -0.629791,
		38.761059, 35.557266, 38.557632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591465, 35.766556, 38.377274>,  <39.205055, 35.871140, 38.998486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591465, 35.766556, 38.377274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207081, 35.740055, 38.269814>,  <38.976452, 35.724155, 38.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207081, 35.740055, 38.269814>,  <39.591465, 35.766556, 38.377274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207081, 35.740055, 38.269814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221366, 0.398421, -0.890089,
		0.166004, -0.914807, -0.368200,
		-0.960957, -0.066251, -0.268647,
		38.918793, 35.720181, 38.189220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433292, 35.262466, 37.713856>,  <39.591465, 35.766556, 38.377274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433292, 35.262466, 37.713856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189877, 35.576496, 37.760067>,  <39.043827, 35.764912, 37.787796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189877, 35.576496, 37.760067>,  <39.433292, 35.262466, 37.713856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189877, 35.576496, 37.760067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394321, 0.425517, -0.814522,
		-0.688618, -0.450111, -0.568512,
		-0.608537, 0.785071, 0.115530,
		39.007317, 35.812016, 37.794727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158203, 35.529613, 37.036324>,  <39.433292, 35.262466, 37.713856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158203, 35.529613, 37.036324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148212, 35.845203, 37.281891>,  <39.142220, 36.034557, 37.429230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148212, 35.845203, 37.281891>,  <39.158203, 35.529613, 37.036324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148212, 35.845203, 37.281891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553676, 0.522233, -0.648626,
		-0.832358, 0.323711, -0.449880,
		-0.024975, 0.788976, 0.613916,
		39.140720, 36.081898, 37.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760513, 36.170277, 36.870380>,  <39.158203, 35.529613, 37.036324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760513, 36.170277, 36.870380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093502, 36.241833, 37.080139>,  <39.293293, 36.284767, 37.205994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093502, 36.241833, 37.080139>,  <38.760513, 36.170277, 36.870380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093502, 36.241833, 37.080139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440178, 0.361294, -0.822016,
		-0.336514, 0.915131, 0.222022,
		0.832467, 0.178890, 0.524401,
		39.343243, 36.295498, 37.237461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038795, 36.939575, 36.873489>,  <38.760513, 36.170277, 36.870380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038795, 36.939575, 36.873489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342770, 36.685215, 36.927357>,  <39.525154, 36.532600, 36.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342770, 36.685215, 36.927357>,  <39.038795, 36.939575, 36.873489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342770, 36.685215, 36.927357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404615, 0.300634, -0.863659,
		0.508711, 0.710813, 0.485755,
		0.759934, -0.635897, 0.134670,
		39.570751, 36.494446, 36.967758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665451, 37.245770, 36.914291>,  <39.038795, 36.939575, 36.873489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665451, 37.245770, 36.914291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688965, 36.883919, 36.745438>,  <39.703072, 36.666809, 36.644127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688965, 36.883919, 36.745438>,  <39.665451, 37.245770, 36.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688965, 36.883919, 36.745438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313614, 0.418188, -0.852505,
		0.947729, -0.082275, 0.308285,
		0.058781, -0.904627, -0.422132,
		39.706600, 36.612530, 36.618797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329014, 37.255043, 36.707958>,  <39.665451, 37.245770, 36.914291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329014, 37.255043, 36.707958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051014, 37.033215, 36.524902>,  <39.884216, 36.900116, 36.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051014, 37.033215, 36.524902>,  <40.329014, 37.255043, 36.707958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051014, 37.033215, 36.524902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209517, 0.452655, -0.866722,
		0.687812, -0.698249, -0.198400,
		-0.694995, -0.554573, -0.457636,
		39.842514, 36.866844, 36.387611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610622, 37.186153, 36.042469>,  <40.329014, 37.255043, 36.707958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610622, 37.186153, 36.042469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223351, 37.090862, 36.011806>,  <39.990986, 37.033688, 35.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223351, 37.090862, 36.011806>,  <40.610622, 37.186153, 36.042469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223351, 37.090862, 36.011806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071731, 0.557643, -0.826976,
		0.239756, -0.795162, -0.556987,
		-0.968179, -0.238225, -0.076660,
		39.932896, 37.019394, 35.988808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300308, 36.699245, 36.115810>,  <40.610622, 37.186153, 36.042469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300308, 36.699245, 36.115810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677872, 36.572216, 36.151981>,  <41.904411, 36.495998, 36.173683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677872, 36.572216, 36.151981>,  <41.300308, 36.699245, 36.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677872, 36.572216, 36.151981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221961, -0.407489, 0.885825,
		-0.244463, -0.856213, -0.455122,
		0.943912, -0.317571, 0.090430,
		41.961044, 36.476944, 36.179111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328545, 35.981613, 36.351063>,  <41.300308, 36.699245, 36.115810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328545, 35.981613, 36.351063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696655, 36.109764, 36.440914>,  <41.917522, 36.186653, 36.494823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696655, 36.109764, 36.440914>,  <41.328545, 35.981613, 36.351063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696655, 36.109764, 36.440914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101110, -0.359871, 0.927507,
		0.377985, -0.876273, -0.298787,
		0.920274, 0.320374, 0.224625,
		41.972736, 36.205875, 36.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622303, 35.455074, 36.742573>,  <41.328545, 35.981613, 36.351063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622303, 35.455074, 36.742573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821552, 35.791279, 36.827816>,  <41.941101, 35.993000, 36.878960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821552, 35.791279, 36.827816>,  <41.622303, 35.455074, 36.742573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821552, 35.791279, 36.827816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015185, -0.254183, 0.967037,
		0.866974, -0.478467, -0.139377,
		0.498122, 0.840512, 0.213104,
		41.970989, 36.043434, 36.891747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246143, 35.252956, 37.251793>,  <41.622303, 35.455074, 36.742573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246143, 35.252956, 37.251793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155113, 35.638786, 37.305157>,  <42.100494, 35.870285, 37.337173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155113, 35.638786, 37.305157>,  <42.246143, 35.252956, 37.251793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155113, 35.638786, 37.305157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120554, -0.163857, 0.979090,
		0.966268, 0.206737, 0.153574,
		-0.227578, 0.964578, 0.133407,
		42.086842, 35.928162, 37.345181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662289, 35.370113, 37.835133>,  <42.246143, 35.252956, 37.251793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662289, 35.370113, 37.835133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398746, 35.669559, 37.805531>,  <42.240620, 35.849228, 37.787769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398746, 35.669559, 37.805531>,  <42.662289, 35.370113, 37.835133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398746, 35.669559, 37.805531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077797, 0.030044, 0.996516,
		0.748235, 0.662319, 0.038445,
		-0.658856, 0.748620, -0.074006,
		42.201088, 35.894146, 37.783329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859116, 35.829521, 38.292271>,  <42.662289, 35.370113, 37.835133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859116, 35.829521, 38.292271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477898, 35.942715, 38.249130>,  <42.249168, 36.010632, 38.223244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477898, 35.942715, 38.249130>,  <42.859116, 35.829521, 38.292271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477898, 35.942715, 38.249130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091751, 0.069601, 0.993347,
		0.288605, 0.956597, -0.040369,
		-0.953042, 0.282981, -0.107856,
		42.191986, 36.027611, 38.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827278, 36.263260, 38.807354>,  <42.859116, 35.829521, 38.292271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827278, 36.263260, 38.807354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456688, 36.175922, 38.684734>,  <42.234333, 36.123520, 38.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456688, 36.175922, 38.684734>,  <42.827278, 36.263260, 38.807354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456688, 36.175922, 38.684734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326720, 0.062312, 0.943065,
		-0.186815, 0.973880, -0.129069,
		-0.926474, -0.218348, -0.306545,
		42.178745, 36.110416, 38.592770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274693, 36.727726, 39.159969>,  <42.827278, 36.263260, 38.807354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274693, 36.727726, 39.159969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043896, 36.415096, 39.065117>,  <41.905418, 36.227520, 39.008205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043896, 36.415096, 39.065117>,  <42.274693, 36.727726, 39.159969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043896, 36.415096, 39.065117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464970, 0.075632, 0.882090,
		-0.671482, 0.619213, -0.407046,
		-0.576988, -0.781572, -0.237129,
		41.870800, 36.180626, 38.993977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523949, 36.993145, 39.322556>,  <42.274693, 36.727726, 39.159969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523949, 36.993145, 39.322556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559349, 36.594940, 39.335987>,  <41.580589, 36.356018, 39.344048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559349, 36.594940, 39.335987>,  <41.523949, 36.993145, 39.322556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559349, 36.594940, 39.335987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246272, 0.010799, 0.969140,
		-0.965152, -0.094038, -0.244211,
		0.088498, -0.995510, 0.033581,
		41.585899, 36.296288, 39.346062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052643, 36.794521, 39.876106>,  <41.523949, 36.993145, 39.322556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052643, 36.794521, 39.876106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249039, 36.448578, 39.834232>,  <41.366875, 36.241013, 39.809109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249039, 36.448578, 39.834232>,  <41.052643, 36.794521, 39.876106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249039, 36.448578, 39.834232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088656, -0.169146, 0.981596,
		-0.866645, -0.472669, -0.159722,
		0.490986, -0.864855, -0.104684,
		41.396336, 36.189121, 39.802826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663376, 36.290691, 40.302395>,  <41.052643, 36.794521, 39.876106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663376, 36.290691, 40.302395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018398, 36.116226, 40.243050>,  <41.231411, 36.011547, 40.207443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018398, 36.116226, 40.243050>,  <40.663376, 36.290691, 40.302395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018398, 36.116226, 40.243050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016136, -0.292405, 0.956158,
		-0.460427, -0.851033, -0.252487,
		0.887551, -0.436167, -0.148364,
		41.284664, 35.985378, 40.198540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539040, 35.713177, 40.700905>,  <40.663376, 36.290691, 40.302395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539040, 35.713177, 40.700905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935608, 35.725945, 40.650211>,  <41.173550, 35.733604, 40.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935608, 35.725945, 40.650211>,  <40.539040, 35.713177, 40.700905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935608, 35.725945, 40.650211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128584, -0.411570, 0.902262,
		-0.023360, -0.910819, -0.412144,
		0.991423, 0.031919, -0.126731,
		41.233036, 35.735519, 40.612190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813416, 35.207867, 41.094910>,  <40.539040, 35.713177, 40.700905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813416, 35.207867, 41.094910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126259, 35.456497, 41.077286>,  <41.313965, 35.605675, 41.066711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126259, 35.456497, 41.077286>,  <40.813416, 35.207867, 41.094910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126259, 35.456497, 41.077286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218747, -0.207667, 0.953428,
		0.583481, -0.755325, -0.298387,
		0.782113, 0.621578, -0.044055,
		41.360893, 35.642971, 41.064068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365913, 34.849968, 41.219006>,  <40.813416, 35.207867, 41.094910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365913, 34.849968, 41.219006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511745, 35.218739, 41.271358>,  <41.599243, 35.440002, 41.302769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511745, 35.218739, 41.271358>,  <41.365913, 34.849968, 41.219006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511745, 35.218739, 41.271358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503193, -0.313323, 0.805372,
		0.783505, -0.227761, -0.578139,
		0.364577, 0.921929, 0.130883,
		41.621117, 35.495316, 41.310623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985466, 34.707935, 41.408318>,  <41.365913, 34.849968, 41.219006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985466, 34.707935, 41.408318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957222, 35.081554, 41.548359>,  <41.940273, 35.305725, 41.632385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957222, 35.081554, 41.548359>,  <41.985466, 34.707935, 41.408318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957222, 35.081554, 41.548359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528650, -0.262597, 0.807200,
		0.845898, 0.242083, -0.475239,
		-0.070613, 0.934044, 0.350108,
		41.936039, 35.361767, 41.653393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667286, 34.927650, 41.470329>,  <41.985466, 34.707935, 41.408318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667286, 34.927650, 41.470329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437393, 35.157799, 41.703098>,  <42.299458, 35.295887, 41.842758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437393, 35.157799, 41.703098>,  <42.667286, 34.927650, 41.470329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437393, 35.157799, 41.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492182, -0.325079, 0.807515,
		0.653791, 0.750515, -0.096354,
		-0.574730, 0.575370, 0.581924,
		42.264973, 35.330410, 41.877674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169369, 35.353504, 41.852062>,  <42.667286, 34.927650, 41.470329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169369, 35.353504, 41.852062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842899, 35.387482, 42.080677>,  <42.647018, 35.407867, 42.217846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842899, 35.387482, 42.080677>,  <43.169369, 35.353504, 41.852062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842899, 35.387482, 42.080677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562668, -0.108128, 0.819581,
		0.131416, 0.990501, 0.040457,
		-0.816171, 0.084942, 0.571533,
		42.598049, 35.412964, 42.252136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301655, 35.707748, 42.511780>,  <43.169369, 35.353504, 41.852062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301655, 35.707748, 42.511780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973171, 35.496635, 42.598553>,  <42.776081, 35.369968, 42.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973171, 35.496635, 42.598553>,  <43.301655, 35.707748, 42.511780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973171, 35.496635, 42.598553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399714, -0.260740, 0.878774,
		-0.407237, 0.808370, 0.425084,
		-0.821211, -0.527781, 0.216933,
		42.726807, 35.338303, 42.663631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154411, 35.827923, 43.165180>,  <43.301655, 35.707748, 42.511780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154411, 35.827923, 43.165180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923069, 35.504967, 43.118477>,  <42.784264, 35.311195, 43.090454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923069, 35.504967, 43.118477>,  <43.154411, 35.827923, 43.165180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923069, 35.504967, 43.118477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227994, -0.297390, 0.927134,
		-0.783279, 0.509591, 0.356076,
		-0.578353, -0.807388, -0.116756,
		42.749561, 35.262749, 43.083450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813717, 35.652107, 43.789288>,  <43.154411, 35.827923, 43.165180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813717, 35.652107, 43.789288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860260, 35.301159, 43.603092>,  <42.888187, 35.090588, 43.491375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860260, 35.301159, 43.603092>,  <42.813717, 35.652107, 43.789288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860260, 35.301159, 43.603092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367937, -0.397245, 0.840725,
		-0.922541, -0.269097, 0.276595,
		0.116360, -0.877373, -0.465486,
		42.895168, 35.037949, 43.463448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519478, 35.132969, 44.213524>,  <42.813717, 35.652107, 43.789288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519478, 35.132969, 44.213524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786442, 34.932648, 43.993069>,  <42.946621, 34.812454, 43.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786442, 34.932648, 43.993069>,  <42.519478, 35.132969, 44.213524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786442, 34.932648, 43.993069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408701, -0.372345, 0.833260,
		-0.622513, -0.781381, -0.043830,
		0.667414, -0.500802, -0.551141,
		42.986668, 34.782406, 43.827728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495003, 34.341671, 44.432156>,  <42.519478, 35.132969, 44.213524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495003, 34.341671, 44.432156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841034, 34.432255, 44.253109>,  <43.048653, 34.486607, 44.145679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841034, 34.432255, 44.253109>,  <42.495003, 34.341671, 44.432156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841034, 34.432255, 44.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501341, -0.359319, 0.787113,
		0.017411, -0.905321, -0.424371,
		0.865075, 0.226459, -0.447618,
		43.100555, 34.500191, 44.118824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965698, 34.316147, 45.059757>,  <42.495003, 34.341671, 44.432156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965698, 34.316147, 45.059757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292412, 34.530876, 45.144314>,  <43.488438, 34.659714, 45.195049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292412, 34.530876, 45.144314>,  <42.965698, 34.316147, 45.059757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292412, 34.530876, 45.144314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520623, -0.843687, 0.130932,
		0.248635, 0.003112, -0.968592,
		0.816781, 0.536826, 0.211391,
		43.537445, 34.691925, 45.207729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626030, 34.159431, 44.668098>,  <42.965698, 34.316147, 45.059757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626030, 34.159431, 44.668098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732052, 34.307396, 45.024281>,  <43.795666, 34.396175, 45.237991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732052, 34.307396, 45.024281>,  <43.626030, 34.159431, 44.668098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732052, 34.307396, 45.024281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555556, -0.813384, 0.172523,
		0.788100, 0.448969, -0.421100,
		0.265059, 0.369910, 0.890455,
		43.811569, 34.418369, 45.291416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683926, 34.727787, 44.187981>,  <43.626030, 34.159431, 44.668098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683926, 34.727787, 44.187981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542702, 34.390053, 44.026760>,  <43.457966, 34.187412, 43.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542702, 34.390053, 44.026760>,  <43.683926, 34.727787, 44.187981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542702, 34.390053, 44.026760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910011, -0.209844, -0.357556,
		0.217320, -0.493016, 0.842441,
		-0.353062, -0.844335, -0.403047,
		43.436783, 34.136753, 43.905846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338493, 34.401592, 44.237328>,  <43.683926, 34.727787, 44.187981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338493, 34.401592, 44.237328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103882, 34.194004, 43.988602>,  <43.963116, 34.069450, 43.839367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103882, 34.194004, 43.988602>,  <44.338493, 34.401592, 44.237328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103882, 34.194004, 43.988602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808849, -0.414965, -0.416613,
		-0.041820, -0.747309, 0.663160,
		-0.586527, -0.518974, -0.621814,
		43.927925, 34.038311, 43.802059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639008, 33.769886, 44.262901>,  <44.338493, 34.401592, 44.237328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639008, 33.769886, 44.262901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419384, 33.828506, 43.933769>,  <44.287609, 33.863678, 43.736290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419384, 33.828506, 43.933769>,  <44.639008, 33.769886, 44.262901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419384, 33.828506, 43.933769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782304, -0.256395, -0.567681,
		-0.294166, -0.955397, 0.026127,
		-0.549060, 0.146553, -0.822834,
		44.254665, 33.872471, 43.686920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480518, 33.145767, 44.540516>,  <44.639008, 33.769886, 44.262901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480518, 33.145767, 44.540516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380779, 33.249397, 44.913761>,  <44.320934, 33.311577, 45.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380779, 33.249397, 44.913761>,  <44.480518, 33.145767, 44.540516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380779, 33.249397, 44.913761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965295, -0.010763, 0.260940,
		0.077647, 0.965796, -0.247404,
		-0.249352, 0.259079, 0.933114,
		44.305973, 33.327122, 45.193695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678829, 32.547100, 44.093796>,  <44.480518, 33.145767, 44.540516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678829, 32.547100, 44.093796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612812, 32.177284, 43.956398>,  <44.573200, 31.955395, 43.873959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612812, 32.177284, 43.956398>,  <44.678829, 32.547100, 44.093796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612812, 32.177284, 43.956398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070737, 0.358470, -0.930857,
		0.983746, -0.129338, -0.124564,
		-0.165047, -0.924538, -0.343494,
		44.563297, 31.899923, 43.853352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222134, 32.342403, 43.639072>,  <44.678829, 32.547100, 44.093796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222134, 32.342403, 43.639072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877472, 32.155102, 43.560810>,  <44.670673, 32.042721, 43.513855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877472, 32.155102, 43.560810>,  <45.222134, 32.342403, 43.639072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877472, 32.155102, 43.560810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035915, 0.440831, -0.896871,
		0.506218, -0.765769, -0.396663,
		-0.861658, -0.468259, -0.195654,
		44.618973, 32.014626, 43.502113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366520, 31.895296, 43.043060>,  <45.222134, 32.342403, 43.639072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366520, 31.895296, 43.043060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982243, 31.996532, 43.088676>,  <44.751675, 32.057274, 43.116047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982243, 31.996532, 43.088676>,  <45.366520, 31.895296, 43.043060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982243, 31.996532, 43.088676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113723, 0.015930, -0.993385,
		-0.253234, -0.967311, 0.013478,
		-0.960698, 0.253091, 0.114039,
		44.694035, 32.072460, 43.122887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895908, 31.463646, 42.752819>,  <45.366520, 31.895296, 43.043060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895908, 31.463646, 42.752819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727692, 31.826319, 42.765953>,  <44.626762, 32.043922, 42.773834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727692, 31.826319, 42.765953>,  <44.895908, 31.463646, 42.752819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727692, 31.826319, 42.765953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007852, 0.032556, -0.999439,
		-0.907240, -0.420562, -0.006571,
		-0.420540, 0.906680, 0.032838,
		44.601528, 32.098324, 42.775803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335171, 31.445984, 42.361065>,  <44.895908, 31.463646, 42.752819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335171, 31.445984, 42.361065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408928, 31.838894, 42.374535>,  <44.453182, 32.074638, 42.382614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408928, 31.838894, 42.374535>,  <44.335171, 31.445984, 42.361065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408928, 31.838894, 42.374535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074395, 0.048108, -0.996068,
		-0.980033, 0.181164, 0.081947,
		0.184394, 0.982275, 0.033670,
		44.464245, 32.133575, 42.384636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870335, 31.768169, 41.905521>,  <44.335171, 31.445984, 42.361065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870335, 31.768169, 41.905521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156296, 32.043575, 41.954281>,  <44.327873, 32.208820, 41.983536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156296, 32.043575, 41.954281>,  <43.870335, 31.768169, 41.905521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156296, 32.043575, 41.954281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001342, 0.172981, -0.984924,
		-0.699221, 0.704290, 0.122741,
		0.714904, 0.688515, 0.121897,
		44.370766, 32.250130, 41.990849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763241, 32.209949, 41.423038>,  <43.870335, 31.768169, 41.905521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763241, 32.209949, 41.423038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138294, 32.297779, 41.530834>,  <44.363327, 32.350479, 41.595512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138294, 32.297779, 41.530834>,  <43.763241, 32.209949, 41.423038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138294, 32.297779, 41.530834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189234, 0.327894, -0.925568,
		-0.291599, 0.918842, 0.265893,
		0.937636, 0.219579, 0.269489,
		44.419586, 32.363651, 41.611679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846935, 32.896118, 41.245991>,  <43.763241, 32.209949, 41.423038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846935, 32.896118, 41.245991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211151, 32.731571, 41.262444>,  <44.429680, 32.632843, 41.272316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211151, 32.731571, 41.262444>,  <43.846935, 32.896118, 41.245991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211151, 32.731571, 41.262444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135358, 0.202643, -0.969853,
		0.390633, 0.888657, 0.240197,
		0.910541, -0.411369, 0.041128,
		44.484314, 32.608162, 41.274780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283108, 33.388134, 40.951786>,  <43.846935, 32.896118, 41.245991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283108, 33.388134, 40.951786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497849, 33.051937, 40.922466>,  <44.626694, 32.850220, 40.904873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497849, 33.051937, 40.922466>,  <44.283108, 33.388134, 40.951786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497849, 33.051937, 40.922466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260632, 0.247851, -0.933081,
		0.802411, 0.481819, 0.352117,
		0.536849, -0.840488, -0.073301,
		44.658905, 32.799789, 40.900475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992569, 33.582062, 40.773525>,  <44.283108, 33.388134, 40.951786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992569, 33.582062, 40.773525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949711, 33.202885, 40.653580>,  <44.923996, 32.975376, 40.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949711, 33.202885, 40.653580>,  <44.992569, 33.582062, 40.773525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949711, 33.202885, 40.653580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222628, 0.271069, -0.936460,
		0.968998, -0.167095, 0.181996,
		-0.107144, -0.947946, -0.299865,
		44.917568, 32.918503, 40.563622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579315, 33.480244, 40.353519>,  <44.992569, 33.582062, 40.773525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579315, 33.480244, 40.353519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349941, 33.171436, 40.243866>,  <45.212315, 32.986153, 40.178074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349941, 33.171436, 40.243866>,  <45.579315, 33.480244, 40.353519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349941, 33.171436, 40.243866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210656, 0.184419, -0.960007,
		0.791702, -0.608254, 0.056878,
		-0.573439, -0.772021, -0.274137,
		45.177910, 32.939831, 40.161625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971924, 33.151520, 39.846279>,  <45.579315, 33.480244, 40.353519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971924, 33.151520, 39.846279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603161, 33.017811, 39.767948>,  <45.381905, 32.937588, 39.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603161, 33.017811, 39.767948>,  <45.971924, 33.151520, 39.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603161, 33.017811, 39.767948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146192, 0.167938, -0.974897,
		0.358765, -0.927395, -0.105956,
		-0.921909, -0.334269, -0.195828,
		45.326588, 32.917530, 39.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984829, 32.671791, 39.279171>,  <45.971924, 33.151520, 39.846279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984829, 32.671791, 39.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609398, 32.809795, 39.276577>,  <45.384140, 32.892597, 39.275021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609398, 32.809795, 39.276577>,  <45.984829, 32.671791, 39.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609398, 32.809795, 39.276577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102880, 0.261840, -0.959612,
		-0.329383, -0.901335, -0.281252,
		-0.938575, 0.345015, -0.006484,
		45.327824, 32.913300, 39.274632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646282, 32.559227, 38.644489>,  <45.984829, 32.671791, 39.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646282, 32.559227, 38.644489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384731, 32.831745, 38.776112>,  <45.227798, 32.995255, 38.855083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384731, 32.831745, 38.776112>,  <45.646282, 32.559227, 38.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384731, 32.831745, 38.776112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102407, 0.351215, -0.930677,
		-0.749636, -0.642248, -0.159883,
		-0.653879, 0.681296, 0.329054,
		45.188568, 33.036133, 38.874828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191189, 32.639992, 38.117935>,  <45.646282, 32.559227, 38.644489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191189, 32.639992, 38.117935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164776, 32.966705, 38.347195>,  <45.148930, 33.162735, 38.484749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164776, 32.966705, 38.347195>,  <45.191189, 32.639992, 38.117935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164776, 32.966705, 38.347195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167966, 0.557104, -0.813279,
		-0.983579, -0.149973, 0.100405,
		-0.066034, 0.816788, 0.573146,
		45.144966, 33.211742, 38.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530418, 32.982449, 38.017784>,  <45.191189, 32.639992, 38.117935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530418, 32.982449, 38.017784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778507, 33.272858, 38.136593>,  <44.927361, 33.447102, 38.207878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778507, 33.272858, 38.136593>,  <44.530418, 32.982449, 38.017784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778507, 33.272858, 38.136593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218628, 0.523630, -0.823416,
		-0.753345, 0.445763, 0.483495,
		0.620221, 0.726021, 0.297018,
		44.964573, 33.490665, 38.225697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272766, 33.427822, 37.682575>,  <44.530418, 32.982449, 38.017784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272766, 33.427822, 37.682575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587784, 33.648136, 37.793148>,  <44.776794, 33.780323, 37.859493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587784, 33.648136, 37.793148>,  <44.272766, 33.427822, 37.682575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587784, 33.648136, 37.793148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181186, 0.635686, -0.750383,
		-0.589024, 0.540872, 0.600424,
		0.787542, 0.550782, 0.276436,
		44.824047, 33.813370, 37.876080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015930, 34.035843, 37.647194>,  <44.272766, 33.427822, 37.682575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015930, 34.035843, 37.647194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409821, 34.099125, 37.676262>,  <44.646156, 34.137096, 37.693703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409821, 34.099125, 37.676262>,  <44.015930, 34.035843, 37.647194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409821, 34.099125, 37.676262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075479, 0.764099, -0.640668,
		-0.156889, 0.625399, 0.764371,
		0.984728, 0.158208, 0.072674,
		44.705238, 34.146587, 37.698063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956581, 34.753662, 37.804005>,  <44.015930, 34.035843, 37.647194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956581, 34.753662, 37.804005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283688, 34.611416, 37.622986>,  <44.479950, 34.526070, 37.514374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283688, 34.611416, 37.622986>,  <43.956581, 34.753662, 37.804005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283688, 34.611416, 37.622986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065682, 0.723485, -0.687209,
		0.571793, 0.591699, 0.568282,
		0.817764, -0.355615, -0.452547,
		44.529018, 34.504730, 37.487221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442936, 35.297897, 37.630379>,  <43.956581, 34.753662, 37.804005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442936, 35.297897, 37.630379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539379, 34.994526, 37.388168>,  <44.597244, 34.812504, 37.242844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539379, 34.994526, 37.388168>,  <44.442936, 35.297897, 37.630379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539379, 34.994526, 37.388168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065197, 0.609863, -0.789820,
		0.968305, 0.229913, 0.097598,
		0.241112, -0.758424, -0.605523,
		44.611713, 34.766998, 37.206512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882282, 35.542366, 37.103355>,  <44.442936, 35.297897, 37.630379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882282, 35.542366, 37.103355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755932, 35.208416, 36.923046>,  <44.680122, 35.008045, 36.814861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755932, 35.208416, 36.923046>,  <44.882282, 35.542366, 37.103355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755932, 35.208416, 36.923046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267132, 0.534137, -0.802084,
		0.910419, -0.132941, -0.391744,
		-0.315875, -0.834880, -0.450776,
		44.661171, 34.957951, 36.787815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184669, 35.579216, 36.403114>,  <44.882282, 35.542366, 37.103355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184669, 35.579216, 36.403114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884464, 35.320038, 36.351105>,  <44.704342, 35.164532, 36.319901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884464, 35.320038, 36.351105>,  <45.184669, 35.579216, 36.403114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884464, 35.320038, 36.351105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176652, 0.386283, -0.905307,
		0.636812, -0.656472, -0.404369,
		-0.750509, -0.647943, -0.130023,
		44.659313, 35.125656, 36.312099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330357, 35.297443, 35.759575>,  <45.184669, 35.579216, 36.403114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330357, 35.297443, 35.759575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950420, 35.240288, 35.870853>,  <44.722458, 35.205994, 35.937618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950420, 35.240288, 35.870853>,  <45.330357, 35.297443, 35.759575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950420, 35.240288, 35.870853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311749, 0.361668, -0.878640,
		0.024937, -0.921292, -0.388072,
		-0.949837, -0.142891, 0.278193,
		44.665470, 35.197418, 35.954311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943474, 35.519482, 35.581768>,  <45.330357, 35.297443, 35.759575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943474, 35.519482, 35.581768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246063, 35.770748, 35.654602>,  <46.427616, 35.921509, 35.698303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.246063, 35.770748, 35.654602>,  <45.943474, 35.519482, 35.581768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246063, 35.770748, 35.654602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570272, -0.497214, -0.653888,
		-0.320217, 0.598485, -0.734355,
		0.756473, 0.628168, 0.182083,
		46.473003, 35.959198, 35.709229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244682, 35.797253, 34.964180>,  <45.943474, 35.519482, 35.581768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244682, 35.797253, 34.964180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527489, 35.846542, 35.242733>,  <46.697174, 35.876118, 35.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527489, 35.846542, 35.242733>,  <46.244682, 35.797253, 34.964180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527489, 35.846542, 35.242733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648423, -0.505983, -0.568795,
		0.282266, 0.853696, -0.437641,
		0.707017, 0.123225, 0.696378,
		46.739594, 35.883511, 35.451645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709114, 35.928989, 34.525368>,  <46.244682, 35.797253, 34.964180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709114, 35.928989, 34.525368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849949, 35.800240, 34.876919>,  <46.934448, 35.722988, 35.087849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849949, 35.800240, 34.876919>,  <46.709114, 35.928989, 34.525368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849949, 35.800240, 34.876919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465324, -0.754542, -0.462752,
		0.812102, 0.571892, -0.115884,
		0.352084, -0.321879, 0.878881,
		46.955574, 35.703674, 35.140583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453560, 35.739250, 34.437019>,  <46.709114, 35.928989, 34.525368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453560, 35.739250, 34.437019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.293915, 35.534111, 34.741047>,  <47.198128, 35.411030, 34.923462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.293915, 35.534111, 34.741047>,  <47.453560, 35.739250, 34.437019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.293915, 35.534111, 34.741047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552169, -0.796214, -0.247290,
		0.731996, 0.320987, 0.600957,
		-0.399114, -0.512846, 0.760064,
		47.174179, 35.380257, 34.969067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955944, 35.494507, 34.989212>,  <47.453560, 35.739250, 34.437019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955944, 35.494507, 34.989212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633911, 35.257256, 34.986877>,  <47.440689, 35.114906, 34.985477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633911, 35.257256, 34.986877>,  <47.955944, 35.494507, 34.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633911, 35.257256, 34.986877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574670, -0.777517, -0.255386,
		0.146936, -0.208964, 0.966821,
		-0.805086, -0.593129, -0.005840,
		47.392384, 35.079315, 34.985126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.791239, 37.194836, 43.496815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.545353, 36.933556, 43.319973>,  <28.397821, 36.776787, 43.213867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.545353, 36.933556, 43.319973>,  <28.791239, 37.194836, 43.496815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545353, 36.933556, 43.319973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608342, -0.035868, -0.792865,
		0.502041, -0.756337, 0.419416,
		-0.614716, -0.653199, -0.442104,
		28.360937, 36.737595, 43.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220373, 36.779839, 43.174225>,  <28.791239, 37.194836, 43.496815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220373, 36.779839, 43.174225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871304, 36.730709, 42.985184>,  <28.661861, 36.701233, 42.871758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871304, 36.730709, 42.985184>,  <29.220373, 36.779839, 43.174225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871304, 36.730709, 42.985184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475446, 0.006941, -0.879717,
		0.111334, -0.992404, 0.052340,
		-0.872671, -0.122828, -0.472607,
		28.609503, 36.693863, 42.843403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322330, 36.213009, 42.717316>,  <29.220373, 36.779839, 43.174225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322330, 36.213009, 42.717316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.044714, 36.471699, 42.590790>,  <28.878145, 36.626911, 42.514874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.044714, 36.471699, 42.590790>,  <29.322330, 36.213009, 42.717316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044714, 36.471699, 42.590790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462848, 0.064287, -0.884104,
		-0.551436, -0.760010, -0.343953,
		-0.694039, 0.646725, -0.316318,
		28.836502, 36.665714, 42.495895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074417, 35.860336, 42.260948>,  <29.322330, 36.213009, 42.717316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074417, 35.860336, 42.260948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.999435, 36.241737, 42.166553>,  <28.954447, 36.470577, 42.109917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.999435, 36.241737, 42.166553>,  <29.074417, 35.860336, 42.260948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999435, 36.241737, 42.166553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524719, -0.105890, -0.844664,
		-0.830380, -0.282159, -0.480473,
		-0.187453, 0.953506, -0.235983,
		28.943199, 36.527790, 42.095760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639036, 35.796383, 41.729176>,  <29.074417, 35.860336, 42.260948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639036, 35.796383, 41.729176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.787745, 36.166679, 41.701519>,  <28.876970, 36.388859, 41.684925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.787745, 36.166679, 41.701519>,  <28.639036, 35.796383, 41.729176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787745, 36.166679, 41.701519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499658, -0.262314, -0.825550,
		-0.782385, 0.272371, -0.560078,
		0.371772, 0.925746, -0.069138,
		28.899277, 36.444405, 41.680779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504896, 36.042660, 40.966427>,  <28.639036, 35.796383, 41.729176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504896, 36.042660, 40.966427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.763832, 36.320957, 41.090939>,  <28.919193, 36.487934, 41.165646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.763832, 36.320957, 41.090939>,  <28.504896, 36.042660, 40.966427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763832, 36.320957, 41.090939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600924, -0.214640, -0.769948,
		-0.468871, 0.685475, -0.557032,
		0.647341, 0.695740, 0.311280,
		28.958035, 36.529678, 41.184322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629866, 36.391659, 40.303413>,  <28.504896, 36.042660, 40.966427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629866, 36.391659, 40.303413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.944349, 36.483894, 40.532745>,  <29.133039, 36.539234, 40.670345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.944349, 36.483894, 40.532745>,  <28.629866, 36.391659, 40.303413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944349, 36.483894, 40.532745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617027, -0.241888, -0.748844,
		-0.033994, 0.942506, -0.332455,
		0.786207, 0.230590, 0.573329,
		29.180212, 36.553070, 40.704742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141691, 36.939018, 40.013161>,  <28.629866, 36.391659, 40.303413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141691, 36.939018, 40.013161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357307, 36.722790, 40.271530>,  <29.486677, 36.593052, 40.426552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357307, 36.722790, 40.271530>,  <29.141691, 36.939018, 40.013161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357307, 36.722790, 40.271530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724358, -0.093816, -0.683011,
		0.429811, 0.836054, 0.340994,
		0.539043, -0.540567, 0.645925,
		29.519020, 36.560619, 40.465309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790306, 37.044315, 39.698112>,  <29.141691, 36.939018, 40.013161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790306, 37.044315, 39.698112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850334, 36.742611, 39.953793>,  <29.886351, 36.561588, 40.107201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850334, 36.742611, 39.953793>,  <29.790306, 37.044315, 39.698112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850334, 36.742611, 39.953793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807121, -0.279922, -0.519806,
		0.570993, 0.593919, 0.566769,
		0.150072, -0.754257, 0.639198,
		29.895355, 36.516335, 40.145554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485058, 37.019531, 39.640373>,  <29.790306, 37.044315, 39.698112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485058, 37.019531, 39.640373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394358, 36.683159, 39.836910>,  <30.339937, 36.481335, 39.954834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394358, 36.683159, 39.836910>,  <30.485058, 37.019531, 39.640373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394358, 36.683159, 39.836910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857990, -0.411209, -0.307831,
		0.460909, 0.351765, 0.814754,
		-0.226750, -0.840933, 0.491341,
		30.326332, 36.430878, 39.984314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992666, 36.888206, 40.059517>,  <30.485058, 37.019531, 39.640373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992666, 36.888206, 40.059517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.825346, 36.529907, 39.999294>,  <30.724955, 36.314930, 39.963161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.825346, 36.529907, 39.999294>,  <30.992666, 36.888206, 40.059517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825346, 36.529907, 39.999294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900068, -0.386495, -0.201246,
		0.122077, -0.219690, 0.967901,
		-0.418301, -0.895744, -0.150554,
		30.699856, 36.261185, 39.954128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423733, 36.329636, 40.353889>,  <30.992666, 36.888206, 40.059517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423733, 36.329636, 40.353889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190697, 36.153065, 40.080910>,  <31.050875, 36.047123, 39.917122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.190697, 36.153065, 40.080910>,  <31.423733, 36.329636, 40.353889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190697, 36.153065, 40.080910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792631, -0.494314, -0.356917,
		-0.179792, -0.748865, 0.637868,
		-0.582590, -0.441423, -0.682448,
		31.015921, 36.020638, 39.876175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798023, 35.738983, 40.297958>,  <31.423733, 36.329636, 40.353889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798023, 35.738983, 40.297958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613506, 35.770580, 39.944469>,  <31.502796, 35.789539, 39.732376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613506, 35.770580, 39.944469>,  <31.798023, 35.738983, 40.297958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613506, 35.770580, 39.944469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738415, -0.518016, -0.431743,
		-0.491886, -0.851716, 0.180631,
		-0.461292, 0.078988, -0.883725,
		31.475119, 35.794277, 39.679352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809214, 35.071117, 40.041241>,  <31.798023, 35.738983, 40.297958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809214, 35.071117, 40.041241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.744768, 35.319824, 39.734657>,  <31.706100, 35.469048, 39.550709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.744768, 35.319824, 39.734657>,  <31.809214, 35.071117, 40.041241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744768, 35.319824, 39.734657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790674, -0.383463, -0.477275,
		-0.590659, -0.682911, -0.429831,
		-0.161112, 0.621763, -0.766455,
		31.696434, 35.506351, 39.504719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896635, 34.690910, 39.483604>,  <31.809214, 35.071117, 40.041241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896635, 34.690910, 39.483604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933430, 35.057915, 39.328831>,  <31.955507, 35.278118, 39.235966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933430, 35.057915, 39.328831>,  <31.896635, 34.690910, 39.483604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933430, 35.057915, 39.328831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775372, -0.309804, -0.550291,
		-0.624770, -0.249396, -0.739909,
		0.091987, 0.917509, -0.386931,
		31.961025, 35.333168, 39.212753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116215, 34.534824, 38.866409>,  <31.896635, 34.690910, 39.483604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116215, 34.534824, 38.866409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217815, 34.921688, 38.870121>,  <32.278778, 35.153805, 38.872349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217815, 34.921688, 38.870121>,  <32.116215, 34.534824, 38.866409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217815, 34.921688, 38.870121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770586, -0.196563, -0.606268,
		-0.584533, 0.161147, -0.795207,
		0.254006, 0.967158, 0.009280,
		32.294018, 35.211834, 38.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190384, 34.652794, 38.229393>,  <32.116215, 34.534824, 38.866409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190384, 34.652794, 38.229393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414707, 34.911076, 38.436684>,  <32.549301, 35.066044, 38.561058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414707, 34.911076, 38.436684>,  <32.190384, 34.652794, 38.229393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414707, 34.911076, 38.436684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751387, -0.134045, -0.646103,
		-0.347729, 0.751726, -0.560350,
		0.560805, 0.645709, 0.518226,
		32.582947, 35.104790, 38.592152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623726, 35.032288, 37.722187>,  <32.190384, 34.652794, 38.229393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623726, 35.032288, 37.722187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.797298, 35.096943, 38.076717>,  <32.901443, 35.135738, 38.289436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.797298, 35.096943, 38.076717>,  <32.623726, 35.032288, 37.722187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797298, 35.096943, 38.076717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897818, -0.159472, -0.410478,
		0.074994, 0.973879, -0.214326,
		0.433935, 0.161643, 0.886325,
		32.927479, 35.145435, 38.342613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066650, 35.496090, 37.561913>,  <32.623726, 35.032288, 37.722187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066650, 35.496090, 37.561913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.198917, 35.339031, 37.905190>,  <33.278278, 35.244797, 38.111156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.198917, 35.339031, 37.905190>,  <33.066650, 35.496090, 37.561913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198917, 35.339031, 37.905190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899929, -0.142685, -0.412030,
		0.284233, 0.908553, 0.306176,
		0.330664, -0.392649, 0.858189,
		33.298115, 35.221237, 38.162647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709438, 35.867165, 37.733643>,  <33.066650, 35.496090, 37.561913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709438, 35.867165, 37.733643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.739227, 35.547005, 37.971573>,  <33.757099, 35.354908, 38.114330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.739227, 35.547005, 37.971573>,  <33.709438, 35.867165, 37.733643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739227, 35.547005, 37.971573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976827, -0.061474, -0.205012,
		0.200658, 0.596311, 0.777271,
		0.074469, -0.800396, 0.594828,
		33.761570, 35.306885, 38.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387260, 35.898643, 38.083988>,  <33.709438, 35.867165, 37.733643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387260, 35.898643, 38.083988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279629, 35.513977, 38.105103>,  <34.215050, 35.283176, 38.117771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.279629, 35.513977, 38.105103>,  <34.387260, 35.898643, 38.083988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279629, 35.513977, 38.105103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921410, -0.272997, -0.276542,
		0.280352, -0.025779, 0.959551,
		-0.269083, -0.961669, 0.052782,
		34.198902, 35.225475, 38.120937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963078, 35.631077, 38.270164>,  <34.387260, 35.898643, 38.083988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963078, 35.631077, 38.270164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774460, 35.321156, 38.101723>,  <34.661289, 35.135204, 38.000656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774460, 35.321156, 38.101723>,  <34.963078, 35.631077, 38.270164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774460, 35.321156, 38.101723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872073, -0.338830, -0.353104,
		0.130903, -0.533738, 0.835457,
		-0.471543, -0.774802, -0.421105,
		34.632996, 35.088715, 37.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473988, 35.920135, 37.972721>,  <34.963078, 35.631077, 38.270164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473988, 35.920135, 37.972721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 36.148792, 38.095646>,  <35.960884, 36.285988, 38.169399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778297, 36.148792, 38.095646>,  <35.473988, 35.920135, 37.972721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778297, 36.148792, 38.095646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468948, 0.156833, 0.869190,
		0.448671, -0.805373, 0.387387,
		0.760777, 0.571645, 0.307312,
		36.006531, 36.320286, 38.187840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821743, 35.737309, 38.625343>,  <35.473988, 35.920135, 37.972721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821743, 35.737309, 38.625343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894142, 36.130199, 38.605503>,  <35.937584, 36.365936, 38.593601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894142, 36.130199, 38.605503>,  <35.821743, 35.737309, 38.625343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894142, 36.130199, 38.605503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459711, 0.129082, 0.878638,
		0.869428, -0.136234, 0.474906,
		0.181002, 0.982231, -0.049599,
		35.948444, 36.424870, 38.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042400, 35.894054, 39.288082>,  <35.821743, 35.737309, 38.625343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042400, 35.894054, 39.288082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934864, 36.240166, 39.118843>,  <35.870342, 36.447834, 39.017300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934864, 36.240166, 39.118843>,  <36.042400, 35.894054, 39.288082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934864, 36.240166, 39.118843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388124, 0.304705, 0.869778,
		0.881523, 0.398050, 0.253917,
		-0.268845, 0.865281, -0.423097,
		35.854210, 36.499748, 38.991913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260902, 36.395844, 39.754879>,  <36.042400, 35.894054, 39.288082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260902, 36.395844, 39.754879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984089, 36.566559, 39.522003>,  <35.818001, 36.668987, 39.382278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984089, 36.566559, 39.522003>,  <36.260902, 36.395844, 39.754879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984089, 36.566559, 39.522003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458143, 0.363584, 0.811118,
		0.557851, 0.828044, -0.056081,
		-0.692031, 0.426790, -0.582188,
		35.776478, 36.694595, 39.347347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015347, 36.906059, 40.221733>,  <36.260902, 36.395844, 39.754879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015347, 36.906059, 40.221733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721035, 36.887249, 39.951500>,  <35.544449, 36.875961, 39.789360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721035, 36.887249, 39.951500>,  <36.015347, 36.906059, 40.221733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721035, 36.887249, 39.951500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673649, 0.153146, 0.723009,
		0.069463, 0.987084, -0.144361,
		-0.735779, -0.047026, -0.675587,
		35.500301, 36.873142, 39.748825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508999, 37.522709, 40.317291>,  <36.015347, 36.906059, 40.221733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508999, 37.522709, 40.317291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313545, 37.254780, 40.093658>,  <35.196274, 37.094021, 39.959480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313545, 37.254780, 40.093658>,  <35.508999, 37.522709, 40.317291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313545, 37.254780, 40.093658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790778, 0.069240, 0.608174,
		-0.368660, 0.739283, -0.563517,
		-0.488631, -0.669826, -0.559082,
		35.166958, 37.053833, 39.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940403, 37.965858, 40.100910>,  <35.508999, 37.522709, 40.317291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940403, 37.965858, 40.100910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861736, 37.573734, 40.108074>,  <34.814537, 37.338459, 40.112373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861736, 37.573734, 40.108074>,  <34.940403, 37.965858, 40.100910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861736, 37.573734, 40.108074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786728, 0.168683, 0.593805,
		-0.585132, 0.102693, -0.804410,
		-0.196670, -0.980306, 0.017910,
		34.802734, 37.279644, 40.113449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215672, 37.870007, 39.946548>,  <34.940403, 37.965858, 40.100910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215672, 37.870007, 39.946548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332520, 37.543770, 40.146339>,  <34.402630, 37.348026, 40.266212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332520, 37.543770, 40.146339>,  <34.215672, 37.870007, 39.946548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332520, 37.543770, 40.146339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873165, -0.014366, 0.487212,
		-0.390190, -0.578451, -0.716342,
		0.292119, -0.815591, 0.499478,
		34.420155, 37.299091, 40.296185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664257, 37.554131, 40.103580>,  <34.215672, 37.870007, 39.946548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664257, 37.554131, 40.103580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.885117, 37.331841, 40.352196>,  <34.017632, 37.198467, 40.501366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.885117, 37.331841, 40.352196>,  <33.664257, 37.554131, 40.103580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885117, 37.331841, 40.352196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764285, -0.039470, 0.643669,
		-0.333169, -0.830431, -0.446523,
		0.552148, -0.555721, 0.621537,
		34.050762, 37.165123, 40.538658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187466, 37.042755, 40.386147>,  <33.664257, 37.554131, 40.103580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187466, 37.042755, 40.386147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.498001, 37.026684, 40.637760>,  <33.684322, 37.017040, 40.788727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.498001, 37.026684, 40.637760>,  <33.187466, 37.042755, 40.386147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498001, 37.026684, 40.637760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630208, -0.067678, 0.773471,
		0.011498, -0.996898, -0.077859,
		0.776341, -0.040174, 0.629032,
		33.730904, 37.014629, 40.826469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090553, 36.469810, 40.775135>,  <33.187466, 37.042755, 40.386147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090553, 36.469810, 40.775135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331085, 36.701237, 40.995556>,  <33.475403, 36.840092, 41.127808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331085, 36.701237, 40.995556>,  <33.090553, 36.469810, 40.775135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331085, 36.701237, 40.995556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563328, -0.182102, 0.805916,
		0.566625, -0.795046, 0.216420,
		0.601330, 0.578567, 0.551055,
		33.511486, 36.874805, 41.160873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182144, 36.026344, 41.418907>,  <33.090553, 36.469810, 40.775135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182144, 36.026344, 41.418907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280563, 36.409645, 41.477169>,  <33.339615, 36.639626, 41.512127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280563, 36.409645, 41.477169>,  <33.182144, 36.026344, 41.418907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280563, 36.409645, 41.477169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635699, 0.046100, 0.770559,
		0.731676, -0.282182, 0.620503,
		0.246043, 0.958252, 0.145653,
		33.354378, 36.697121, 41.520866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375725, 36.095867, 42.150257>,  <33.182144, 36.026344, 41.418907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375725, 36.095867, 42.150257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295048, 36.469864, 42.033566>,  <33.246643, 36.694263, 41.963551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295048, 36.469864, 42.033566>,  <33.375725, 36.095867, 42.150257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295048, 36.469864, 42.033566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426772, 0.184195, 0.885403,
		0.881582, 0.303079, 0.361879,
		-0.201691, 0.934995, -0.291728,
		33.234539, 36.750362, 41.946049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418407, 36.505135, 42.720173>,  <33.375725, 36.095867, 42.150257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418407, 36.505135, 42.720173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214848, 36.769642, 42.499722>,  <33.092712, 36.928349, 42.367451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214848, 36.769642, 42.499722>,  <33.418407, 36.505135, 42.720173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214848, 36.769642, 42.499722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666789, 0.102110, 0.738218,
		0.544439, 0.743163, 0.388966,
		-0.508899, 0.661273, -0.551126,
		33.062180, 36.968025, 42.334385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244011, 37.165279, 43.103477>,  <33.418407, 36.505135, 42.720173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244011, 37.165279, 43.103477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973709, 37.139530, 42.809753>,  <32.811527, 37.124081, 42.633518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973709, 37.139530, 42.809753>,  <33.244011, 37.165279, 43.103477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973709, 37.139530, 42.809753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727412, 0.219412, 0.650177,
		0.119265, 0.973507, -0.195092,
		-0.675757, -0.064369, -0.734308,
		32.770981, 37.120220, 42.589462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813290, 37.734722, 43.154903>,  <33.244011, 37.165279, 43.103477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813290, 37.734722, 43.154903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.591469, 37.491001, 42.928200>,  <32.458378, 37.344769, 42.792179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.591469, 37.491001, 42.928200>,  <32.813290, 37.734722, 43.154903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591469, 37.491001, 42.928200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809272, 0.236287, 0.537817,
		-0.193777, 0.756911, -0.624129,
		-0.554553, -0.609307, -0.566760,
		32.425102, 37.308208, 42.758171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177471, 38.086685, 43.062809>,  <32.813290, 37.734722, 43.154903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177471, 38.086685, 43.062809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057610, 37.714569, 42.978180>,  <31.985693, 37.491299, 42.927402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057610, 37.714569, 42.978180>,  <32.177471, 38.086685, 43.062809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057610, 37.714569, 42.978180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808993, 0.130216, 0.573214,
		-0.505708, 0.342924, -0.791620,
		-0.299650, -0.930294, -0.211572,
		31.967714, 37.435482, 42.914707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490305, 38.125477, 43.082287>,  <32.177471, 38.086685, 43.062809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490305, 38.125477, 43.082287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567698, 37.733551, 43.102436>,  <31.614134, 37.498398, 43.114525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567698, 37.733551, 43.102436>,  <31.490305, 38.125477, 43.082287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567698, 37.733551, 43.102436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787406, -0.124449, 0.603742,
		-0.585284, -0.156477, -0.795587,
		0.193481, -0.979810, 0.050373,
		31.625742, 37.439610, 43.117546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.822332, 37.797531, 42.993500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056234, 37.528160, 43.174408>,  <31.196575, 37.366535, 43.282955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056234, 37.528160, 43.174408>,  <30.822332, 37.797531, 42.993500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056234, 37.528160, 43.174408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701739, -0.140230, 0.698497,
		-0.406966, -0.725830, -0.554572,
		0.584757, -0.673429, 0.452275,
		31.231661, 37.326130, 43.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323496, 37.294033, 43.134056>,  <30.822332, 37.797531, 42.993500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323496, 37.294033, 43.134056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639387, 37.206821, 43.363419>,  <30.828922, 37.154495, 43.501038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639387, 37.206821, 43.363419>,  <30.323496, 37.294033, 43.134056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639387, 37.206821, 43.363419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608342, -0.157846, 0.777821,
		-0.079074, -0.963094, -0.257288,
		0.789726, -0.218024, 0.573409,
		30.876305, 37.141415, 43.535442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051580, 36.678688, 43.386387>,  <30.323496, 37.294033, 43.134056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051580, 36.678688, 43.386387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332737, 36.827213, 43.629063>,  <30.501431, 36.916328, 43.774670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332737, 36.827213, 43.629063>,  <30.051580, 36.678688, 43.386387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332737, 36.827213, 43.629063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624786, -0.085377, 0.776114,
		0.339978, -0.924575, 0.171980,
		0.702892, 0.371312, 0.606688,
		30.543604, 36.938606, 43.811069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064844, 36.236637, 43.938301>,  <30.051580, 36.678688, 43.386387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064844, 36.236637, 43.938301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251245, 36.559452, 44.083366>,  <30.363087, 36.753143, 44.170406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251245, 36.559452, 44.083366>,  <30.064844, 36.236637, 43.938301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251245, 36.559452, 44.083366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663393, 0.047485, 0.746763,
		0.585448, -0.588582, 0.557514,
		0.466005, 0.807042, 0.362661,
		30.391047, 36.801563, 44.192165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185453, 36.113125, 44.635727>,  <30.064844, 36.236637, 43.938301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185453, 36.113125, 44.635727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219378, 36.511086, 44.613888>,  <30.239733, 36.749863, 44.600784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219378, 36.511086, 44.613888>,  <30.185453, 36.113125, 44.635727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219378, 36.511086, 44.613888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518768, 0.090873, 0.850072,
		0.850698, -0.043773, 0.523829,
		0.084812, 0.994900, -0.054597,
		30.244822, 36.809555, 44.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386862, 36.405914, 45.350170>,  <30.185453, 36.113125, 44.635727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386862, 36.405914, 45.350170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202868, 36.704144, 45.157280>,  <30.092470, 36.883080, 45.041546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202868, 36.704144, 45.157280>,  <30.386862, 36.405914, 45.350170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202868, 36.704144, 45.157280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573834, 0.164830, 0.802213,
		0.677590, 0.645724, 0.352013,
		-0.459986, 0.745568, -0.482225,
		30.064871, 36.927814, 45.012611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451588, 36.938957, 45.706276>,  <30.386862, 36.405914, 45.350170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451588, 36.938957, 45.706276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151428, 37.077450, 45.481052>,  <29.971333, 37.160545, 45.345921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151428, 37.077450, 45.481052>,  <30.451588, 36.938957, 45.706276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151428, 37.077450, 45.481052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527925, 0.198653, 0.825732,
		0.397744, 0.916877, 0.033713,
		-0.750397, 0.346228, -0.563055,
		29.926310, 37.181320, 45.312138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293177, 37.577614, 46.008495>,  <30.451588, 36.938957, 45.706276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293177, 37.577614, 46.008495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968246, 37.488312, 45.792984>,  <29.773289, 37.434731, 45.663677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968246, 37.488312, 45.792984>,  <30.293177, 37.577614, 46.008495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968246, 37.488312, 45.792984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563470, 0.538737, 0.626310,
		0.150431, 0.812354, -0.563429,
		-0.812325, -0.223258, -0.538779,
		29.724548, 37.421333, 45.631351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050890, 38.216648, 45.964230>,  <30.293177, 37.577614, 46.008495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050890, 38.216648, 45.964230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773670, 37.940098, 45.882572>,  <29.607338, 37.774166, 45.833576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773670, 37.940098, 45.882572>,  <30.050890, 38.216648, 45.964230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773670, 37.940098, 45.882572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646750, 0.471235, 0.599710,
		-0.318428, 0.547660, -0.773740,
		-0.693050, -0.691380, -0.204144,
		29.565756, 37.732685, 45.821327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418468, 38.545967, 46.100887>,  <30.050890, 38.216648, 45.964230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418468, 38.545967, 46.100887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309280, 38.161903, 46.124840>,  <29.243767, 37.931465, 46.139210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309280, 38.161903, 46.124840>,  <29.418468, 38.545967, 46.100887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309280, 38.161903, 46.124840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601023, 0.218808, 0.768697,
		-0.751171, 0.173845, -0.636804,
		-0.272973, -0.960156, 0.059877,
		29.227388, 37.873856, 46.142803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813448, 38.634998, 46.326286>,  <29.418468, 38.545967, 46.100887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813448, 38.634998, 46.326286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851418, 38.243649, 46.399788>,  <28.874199, 38.008839, 46.443890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851418, 38.243649, 46.399788>,  <28.813448, 38.634998, 46.326286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851418, 38.243649, 46.399788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576032, 0.096559, 0.811704,
		-0.811897, -0.182897, -0.554412,
		0.094925, -0.978379, 0.183751,
		28.879894, 37.950134, 46.454914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147512, 38.404388, 46.509327>,  <28.813448, 38.634998, 46.326286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147512, 38.404388, 46.509327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.390717, 38.130924, 46.670784>,  <28.536640, 37.966846, 46.767658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.390717, 38.130924, 46.670784>,  <28.147512, 38.404388, 46.509327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390717, 38.130924, 46.670784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277298, 0.293518, 0.914851,
		-0.743927, -0.668169, -0.011116,
		0.608012, -0.683664, 0.403638,
		28.573120, 37.925823, 46.791874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789694, 37.969025, 46.910774>,  <28.147512, 38.404388, 46.509327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789694, 37.969025, 46.910774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151571, 37.931362, 47.076984>,  <28.368698, 37.908764, 47.176712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151571, 37.931362, 47.076984>,  <27.789694, 37.969025, 46.910774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151571, 37.931362, 47.076984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394203, 0.185064, 0.900197,
		-0.161659, -0.978205, 0.130309,
		0.904694, -0.094157, 0.415529,
		28.422979, 37.903114, 47.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820230, 37.418037, 47.447357>,  <27.789694, 37.969025, 46.910774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820230, 37.418037, 47.447357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.120939, 37.663597, 47.543663>,  <28.301365, 37.810932, 47.601444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.120939, 37.663597, 47.543663>,  <27.820230, 37.418037, 47.447357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120939, 37.663597, 47.543663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410145, 0.149409, 0.899699,
		0.516356, -0.775113, 0.364110,
		0.751769, 0.613903, 0.240760,
		28.346470, 37.847767, 47.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145428, 37.225842, 48.033520>,  <27.820230, 37.418037, 47.447357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145428, 37.225842, 48.033520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.254820, 37.610516, 48.025867>,  <28.320456, 37.841320, 48.021275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.254820, 37.610516, 48.025867>,  <28.145428, 37.225842, 48.033520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254820, 37.610516, 48.025867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162917, 0.065918, 0.984435,
		0.947980, -0.266107, 0.174703,
		0.273481, 0.961687, -0.019135,
		28.336864, 37.899021, 48.020126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539371, 37.317635, 48.613457>,  <28.145428, 37.225842, 48.033520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539371, 37.317635, 48.613457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.424402, 37.687843, 48.514828>,  <28.355421, 37.909969, 48.455650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.424402, 37.687843, 48.514828>,  <28.539371, 37.317635, 48.613457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424402, 37.687843, 48.514828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094987, 0.228627, 0.968869,
		0.953082, 0.301896, 0.022200,
		-0.287423, 0.925520, -0.246577,
		28.338175, 37.965500, 48.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882015, 37.828049, 49.074619>,  <28.539371, 37.317635, 48.613457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882015, 37.828049, 49.074619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.573359, 38.039234, 48.932732>,  <28.388165, 38.165947, 48.847599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.573359, 38.039234, 48.932732>,  <28.882015, 37.828049, 49.074619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573359, 38.039234, 48.932732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214564, 0.308922, 0.926569,
		0.598778, 0.791086, -0.125093,
		-0.771639, 0.527968, -0.354715,
		28.341867, 38.197624, 48.826317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750605, 38.263683, 49.575687>,  <28.882015, 37.828049, 49.074619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750605, 38.263683, 49.575687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438059, 38.356216, 49.343842>,  <28.250532, 38.411736, 49.204735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438059, 38.356216, 49.343842>,  <28.750605, 38.263683, 49.575687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438059, 38.356216, 49.343842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505081, 0.311101, 0.805053,
		0.366554, 0.921792, -0.126241,
		-0.781365, 0.231333, -0.579615,
		28.203650, 38.425617, 49.169956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496431, 38.882660, 49.755405>,  <28.750605, 38.263683, 49.575687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496431, 38.882660, 49.755405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188517, 38.690907, 49.586826>,  <28.003767, 38.575855, 49.485680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188517, 38.690907, 49.586826>,  <28.496431, 38.882660, 49.755405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188517, 38.690907, 49.586826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567558, 0.211943, 0.795587,
		-0.292067, 0.851630, -0.435228,
		-0.769789, -0.479382, -0.421448,
		27.957581, 38.547092, 49.460392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880516, 39.379833, 49.742344>,  <28.496431, 38.882660, 49.755405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880516, 39.379833, 49.742344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716574, 39.015972, 49.715363>,  <27.618208, 38.797657, 49.699173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716574, 39.015972, 49.715363>,  <27.880516, 39.379833, 49.742344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716574, 39.015972, 49.715363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495853, 0.160124, 0.853516,
		-0.765602, 0.383266, -0.516682,
		-0.409857, -0.909652, -0.067453,
		27.593616, 38.743076, 49.695126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107834, 39.445580, 49.852943>,  <27.880516, 39.379833, 49.742344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107834, 39.445580, 49.852943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.194933, 39.061718, 49.924099>,  <27.247192, 38.831402, 49.966793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.194933, 39.061718, 49.924099>,  <27.107834, 39.445580, 49.852943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194933, 39.061718, 49.924099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710240, -0.030789, 0.703286,
		-0.669436, -0.279485, -0.688291,
		0.217750, -0.959656, 0.177890,
		27.260258, 38.773823, 49.977467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500978, 39.127533, 49.910622>,  <27.107834, 39.445580, 49.852943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500978, 39.127533, 49.910622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743469, 38.880955, 50.111614>,  <26.888964, 38.733009, 50.232208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743469, 38.880955, 50.111614>,  <26.500978, 39.127533, 49.910622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743469, 38.880955, 50.111614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768038, -0.289806, 0.571078,
		-0.206414, -0.732129, -0.649139,
		0.606227, -0.616442, 0.502483,
		26.925337, 38.696022, 50.262360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302610, 38.373539, 49.909634>,  <26.500978, 39.127533, 49.910622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302610, 38.373539, 49.909634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.468855, 38.520950, 50.242249>,  <26.568602, 38.609398, 50.441818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.468855, 38.520950, 50.242249>,  <26.302610, 38.373539, 49.909634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468855, 38.520950, 50.242249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823730, -0.235147, 0.515921,
		0.385663, -0.899386, 0.205836,
		0.415610, 0.368525, 0.831539,
		26.593538, 38.631508, 50.491711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624828, 38.294064, 49.595482>,  <26.302610, 38.373539, 49.909634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624828, 38.294064, 49.595482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.410910, 38.109783, 49.878819>,  <25.282558, 37.999214, 50.048820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.410910, 38.109783, 49.878819>,  <25.624828, 38.294064, 49.595482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410910, 38.109783, 49.878819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152220, -0.772054, -0.617060,
		0.831156, -0.437826, 0.342766,
		-0.534799, -0.460697, 0.708342,
		25.250469, 37.971573, 50.091320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922552, 37.611435, 49.933376>,  <25.624828, 38.294064, 49.595482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922552, 37.611435, 49.933376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.523453, 37.620655, 49.958580>,  <25.283993, 37.626186, 49.973701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.523453, 37.620655, 49.958580>,  <25.922552, 37.611435, 49.933376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523453, 37.620655, 49.958580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058289, -0.762768, -0.644040,
		0.033215, -0.646261, 0.762393,
		-0.997747, 0.023047, 0.063005,
		25.224129, 37.627567, 49.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782030, 36.876125, 50.125557>,  <25.922552, 37.611435, 49.933376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782030, 36.876125, 50.125557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490515, 37.089355, 49.953651>,  <25.315605, 37.217293, 49.850506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490515, 37.089355, 49.953651>,  <25.782030, 36.876125, 50.125557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490515, 37.089355, 49.953651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049645, -0.667118, -0.743296,
		-0.682945, -0.520363, 0.512648,
		-0.728780, 0.533081, -0.429772,
		25.271879, 37.249279, 49.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441925, 36.381695, 49.848469>,  <25.782030, 36.876125, 50.125557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441925, 36.381695, 49.848469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.289867, 36.703075, 49.665184>,  <25.198633, 36.895905, 49.555214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.289867, 36.703075, 49.665184>,  <25.441925, 36.381695, 49.848469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289867, 36.703075, 49.665184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048566, -0.512057, -0.857577,
		-0.923651, -0.303750, 0.233676,
		-0.380145, 0.803451, -0.458210,
		25.175823, 36.944111, 49.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979670, 36.112667, 49.355953>,  <25.441925, 36.381695, 49.848469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979670, 36.112667, 49.355953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.089226, 36.477669, 49.234413>,  <25.154959, 36.696671, 49.161488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.089226, 36.477669, 49.234413>,  <24.979670, 36.112667, 49.355953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089226, 36.477669, 49.234413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028193, -0.308179, -0.950910,
		-0.961348, 0.269011, -0.058681,
		0.273889, 0.912501, -0.303852,
		25.171392, 36.751419, 49.143257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556715, 36.265518, 48.771870>,  <24.979670, 36.112667, 49.355953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556715, 36.265518, 48.771870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.892645, 36.482006, 48.755020>,  <25.094202, 36.611900, 48.744911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.892645, 36.482006, 48.755020>,  <24.556715, 36.265518, 48.771870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892645, 36.482006, 48.755020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172218, -0.339208, -0.924813,
		-0.514815, 0.769427, -0.378084,
		0.839825, 0.541221, -0.042120,
		25.144592, 36.644371, 48.742386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609877, 36.274975, 48.054375>,  <24.556715, 36.265518, 48.771870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609877, 36.274975, 48.054375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.962414, 36.423164, 48.171669>,  <25.173937, 36.512077, 48.242046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.962414, 36.423164, 48.171669>,  <24.609877, 36.274975, 48.054375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.962414, 36.423164, 48.171669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341703, -0.071165, -0.937110,
		-0.326302, 0.926115, -0.189311,
		0.881343, 0.370469, 0.293235,
		25.226816, 36.534306, 48.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775057, 36.750820, 47.555107>,  <24.609877, 36.274975, 48.054375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775057, 36.750820, 47.555107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.123266, 36.650898, 47.724712>,  <25.332191, 36.590946, 47.826473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.123266, 36.650898, 47.724712>,  <24.775057, 36.750820, 47.555107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123266, 36.650898, 47.724712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444300, 0.028443, -0.895426,
		0.211621, 0.967878, 0.135749,
		0.870525, -0.249804, 0.424009,
		25.384424, 36.575958, 47.851913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260624, 37.175076, 47.230503>,  <24.775057, 36.750820, 47.555107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260624, 37.175076, 47.230503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.456188, 36.857246, 47.374516>,  <25.573526, 36.666550, 47.460922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.456188, 36.857246, 47.374516>,  <25.260624, 37.175076, 47.230503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456188, 36.857246, 47.374516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458911, -0.116717, -0.880782,
		0.741867, 0.595845, 0.307575,
		0.488910, -0.794573, 0.360028,
		25.602861, 36.618874, 47.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913855, 37.221935, 46.923599>,  <25.260624, 37.175076, 47.230503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913855, 37.221935, 46.923599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.943842, 36.840782, 47.041164>,  <25.961834, 36.612091, 47.111706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.943842, 36.840782, 47.041164>,  <25.913855, 37.221935, 46.923599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943842, 36.840782, 47.041164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460120, -0.228438, -0.857966,
		0.884686, 0.199559, 0.421316,
		0.074971, -0.952886, 0.293917,
		25.966333, 36.554916, 47.129341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627098, 37.101818, 46.944233>,  <25.913855, 37.221935, 46.923599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627098, 37.101818, 46.944233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.434788, 36.751915, 46.920055>,  <26.319403, 36.541973, 46.905548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.434788, 36.751915, 46.920055>,  <26.627098, 37.101818, 46.944233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434788, 36.751915, 46.920055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594420, -0.274469, -0.755865,
		0.644609, -0.399330, 0.651932,
		-0.480774, -0.874759, -0.060445,
		26.290556, 36.489487, 46.901920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200644, 36.528400, 46.954365>,  <26.627098, 37.101818, 46.944233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200644, 36.528400, 46.954365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861584, 36.412960, 46.776283>,  <26.658148, 36.343697, 46.669434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861584, 36.412960, 46.776283>,  <27.200644, 36.528400, 46.954365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861584, 36.412960, 46.776283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510737, -0.216641, -0.831995,
		0.143663, -0.932619, 0.331032,
		-0.847649, -0.288597, -0.445199,
		26.607288, 36.326382, 46.642723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378922, 35.981762, 46.582565>,  <27.200644, 36.528400, 46.954365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378922, 35.981762, 46.582565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.034039, 36.080109, 46.405411>,  <26.827108, 36.139118, 46.299118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.034039, 36.080109, 46.405411>,  <27.378922, 35.981762, 46.582565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034039, 36.080109, 46.405411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350477, -0.341709, -0.872010,
		-0.365745, -0.907072, 0.208449,
		-0.862204, 0.245877, -0.442886,
		26.775375, 36.153870, 46.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288187, 35.537392, 46.194172>,  <27.378922, 35.981762, 46.582565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288187, 35.537392, 46.194172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.049246, 35.817490, 46.037800>,  <26.905882, 35.985550, 45.943977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.049246, 35.817490, 46.037800>,  <27.288187, 35.537392, 46.194172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049246, 35.817490, 46.037800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260162, -0.291899, -0.920386,
		-0.758609, -0.651499, -0.007811,
		-0.597351, 0.700245, -0.390932,
		26.870041, 36.027565, 45.920521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924696, 35.237778, 45.573589>,  <27.288187, 35.537392, 46.194172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924696, 35.237778, 45.573589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.898647, 35.631306, 45.506817>,  <26.883018, 35.867420, 45.466755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.898647, 35.631306, 45.506817>,  <26.924696, 35.237778, 45.573589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898647, 35.631306, 45.506817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421404, -0.124521, -0.898283,
		-0.904532, -0.128840, -0.406476,
		-0.065120, 0.983816, -0.166927,
		26.879112, 35.926449, 45.456738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748178, 35.276325, 44.855957>,  <26.924696, 35.237778, 45.573589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748178, 35.276325, 44.855957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.907587, 35.628204, 44.959736>,  <27.003231, 35.839333, 45.022003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.907587, 35.628204, 44.959736>,  <26.748178, 35.276325, 44.855957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907587, 35.628204, 44.959736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385021, 0.096282, -0.917872,
		-0.832431, 0.465682, -0.300332,
		0.398520, 0.879699, 0.259445,
		27.027143, 35.892113, 45.037571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491167, 35.718224, 44.357998>,  <26.748178, 35.276325, 44.855957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491167, 35.718224, 44.357998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.807356, 35.892990, 44.529701>,  <26.997068, 35.997849, 44.632725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.807356, 35.892990, 44.529701>,  <26.491167, 35.718224, 44.357998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807356, 35.892990, 44.529701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391704, 0.178188, -0.902672,
		-0.470877, 0.881679, -0.030288,
		0.790470, 0.436912, 0.429261,
		27.044497, 36.024063, 44.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527483, 36.205036, 43.951733>,  <26.491167, 35.718224, 44.357998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527483, 36.205036, 43.951733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885218, 36.247574, 44.125561>,  <27.099859, 36.273098, 44.229858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.885218, 36.247574, 44.125561>,  <26.527483, 36.205036, 43.951733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885218, 36.247574, 44.125561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391769, 0.282925, -0.875483,
		-0.216057, 0.953228, 0.211366,
		0.894336, 0.106347, 0.434573,
		27.153519, 36.279480, 44.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754486, 36.849274, 43.858700>,  <26.527483, 36.205036, 43.951733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754486, 36.849274, 43.858700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.102892, 36.671021, 43.941395>,  <27.311935, 36.564068, 43.991013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.102892, 36.671021, 43.941395>,  <26.754486, 36.849274, 43.858700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102892, 36.671021, 43.941395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429777, 0.487397, -0.760089,
		0.237956, 0.750903, 0.616054,
		0.871016, -0.445633, 0.206742,
		27.364197, 36.537331, 44.003418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372210, 37.317108, 43.876068>,  <26.754486, 36.849274, 43.858700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372210, 37.317108, 43.876068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525814, 36.960831, 43.778736>,  <27.617977, 36.747066, 43.720337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525814, 36.960831, 43.778736>,  <27.372210, 37.317108, 43.876068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525814, 36.960831, 43.778736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374569, 0.391149, -0.840655,
		0.843939, 0.231678, 0.483830,
		0.384011, -0.890689, -0.243327,
		27.641018, 36.693623, 43.705738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130316, 37.428726, 43.713867>,  <27.372210, 37.317108, 43.876068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130316, 37.428726, 43.713867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061605, 37.055878, 43.586342>,  <28.020380, 36.832169, 43.509827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061605, 37.055878, 43.586342>,  <28.130316, 37.428726, 43.713867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061605, 37.055878, 43.586342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583109, 0.164639, -0.795536,
		0.794026, -0.322556, 0.515248,
		-0.171775, -0.932122, -0.318813,
		28.010073, 36.776241, 43.490700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.672215, 34.001541, 43.034740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441418, 34.209484, 43.286716>,  <43.302940, 34.334251, 43.437904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441418, 34.209484, 43.286716>,  <43.672215, 34.001541, 43.034740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441418, 34.209484, 43.286716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442288, 0.449529, -0.776083,
		-0.686630, -0.726410, -0.029448,
		-0.576992, 0.519858, 0.629942,
		43.268318, 34.365440, 43.475700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921967, 33.911469, 42.831223>,  <43.672215, 34.001541, 43.034740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921967, 33.911469, 42.831223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900139, 34.255932, 43.033382>,  <42.887043, 34.462608, 43.154678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900139, 34.255932, 43.033382>,  <42.921967, 33.911469, 42.831223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900139, 34.255932, 43.033382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622645, 0.366343, -0.691451,
		-0.780599, -0.352415, 0.516206,
		-0.054569, 0.861160, 0.505397,
		42.883766, 34.514278, 43.185001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186943, 34.139042, 42.811157>,  <42.921967, 33.911469, 42.831223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186943, 34.139042, 42.811157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381336, 34.475235, 42.906998>,  <42.497971, 34.676952, 42.964504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381336, 34.475235, 42.906998>,  <42.186943, 34.139042, 42.811157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381336, 34.475235, 42.906998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532691, 0.502206, -0.681197,
		-0.692866, 0.203414, 0.691780,
		0.485981, 0.840483, 0.239605,
		42.527130, 34.727379, 42.978878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639896, 34.650085, 43.005775>,  <42.186943, 34.139042, 42.811157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639896, 34.650085, 43.005775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977592, 34.837189, 42.901115>,  <42.180210, 34.949451, 42.838318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977592, 34.837189, 42.901115>,  <41.639896, 34.650085, 43.005775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977592, 34.837189, 42.901115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439365, 0.324422, -0.837681,
		-0.306947, 0.822163, 0.479407,
		0.844240, 0.467758, -0.261650,
		42.230865, 34.977516, 42.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443962, 35.244240, 42.793095>,  <41.639896, 34.650085, 43.005775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443962, 35.244240, 42.793095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807766, 35.305408, 42.638477>,  <42.026047, 35.342110, 42.545708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807766, 35.305408, 42.638477>,  <41.443962, 35.244240, 42.793095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807766, 35.305408, 42.638477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412469, 0.447534, -0.793462,
		0.051651, 0.881095, 0.470111,
		0.909506, 0.152923, -0.386540,
		42.080616, 35.351284, 42.522514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426159, 35.965054, 42.613281>,  <41.443962, 35.244240, 42.793095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426159, 35.965054, 42.613281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.706455, 35.786629, 42.390572>,  <41.874634, 35.679573, 42.256947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.706455, 35.786629, 42.390572>,  <41.426159, 35.965054, 42.613281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706455, 35.786629, 42.390572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446906, 0.333864, -0.829946,
		0.556093, 0.830400, 0.034604,
		0.700740, -0.446062, -0.556770,
		41.916676, 35.652809, 42.223541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775284, 36.492615, 42.153812>,  <41.426159, 35.965054, 42.613281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775284, 36.492615, 42.153812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781063, 36.124115, 41.998337>,  <41.784531, 35.903015, 41.905052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781063, 36.124115, 41.998337>,  <41.775284, 36.492615, 42.153812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781063, 36.124115, 41.998337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288511, 0.368359, -0.883783,
		0.957367, 0.124911, -0.260470,
		0.014447, -0.921254, -0.388693,
		41.785397, 35.847740, 41.881729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052959, 36.696754, 41.619637>,  <41.775284, 36.492615, 42.153812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052959, 36.696754, 41.619637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912766, 36.338627, 41.509686>,  <41.828648, 36.123749, 41.443714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912766, 36.338627, 41.509686>,  <42.052959, 36.696754, 41.619637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912766, 36.338627, 41.509686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108906, 0.330468, -0.937513,
		0.930214, -0.298650, -0.213330,
		-0.350487, -0.895321, -0.274881,
		41.807621, 36.070030, 41.427219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288185, 36.541176, 40.913647>,  <42.052959, 36.696754, 41.619637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288185, 36.541176, 40.913647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004051, 36.265350, 40.970100>,  <41.833572, 36.099854, 41.003975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004051, 36.265350, 40.970100>,  <42.288185, 36.541176, 40.913647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004051, 36.265350, 40.970100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162078, -0.034885, -0.986161,
		0.684948, -0.723381, -0.086984,
		-0.710336, -0.689567, 0.141138,
		41.790951, 36.058479, 41.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545952, 35.897957, 40.541599>,  <42.288185, 36.541176, 40.913647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545952, 35.897957, 40.541599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.149620, 35.845776, 40.555729>,  <41.911823, 35.814468, 40.564205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.149620, 35.845776, 40.555729>,  <42.545952, 35.897957, 40.541599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149620, 35.845776, 40.555729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011947, -0.175802, -0.984353,
		0.134624, -0.975743, 0.172630,
		-0.990825, -0.130456, 0.035324,
		41.852371, 35.806641, 40.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444710, 35.491249, 39.982018>,  <42.545952, 35.897957, 40.541599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444710, 35.491249, 39.982018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077625, 35.636440, 40.046589>,  <41.857376, 35.723557, 40.085331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077625, 35.636440, 40.046589>,  <42.444710, 35.491249, 39.982018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077625, 35.636440, 40.046589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182968, -0.025518, -0.982788,
		-0.352615, -0.931446, 0.089832,
		-0.917706, 0.362982, 0.161427,
		41.802315, 35.745335, 40.095016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066772, 35.078651, 39.708054>,  <42.444710, 35.491249, 39.982018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066772, 35.078651, 39.708054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856236, 35.418182, 39.727898>,  <41.729916, 35.621899, 39.739803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856236, 35.418182, 39.727898>,  <42.066772, 35.078651, 39.708054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856236, 35.418182, 39.727898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157505, -0.039995, -0.986708,
		-0.835559, -0.527158, 0.154746,
		-0.526339, 0.848826, 0.049612,
		41.698334, 35.672829, 39.742783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618633, 34.994778, 39.213367>,  <42.066772, 35.078651, 39.708054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618633, 34.994778, 39.213367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586552, 35.391388, 39.254250>,  <41.567303, 35.629353, 39.278778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586552, 35.391388, 39.254250>,  <41.618633, 34.994778, 39.213367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586552, 35.391388, 39.254250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089297, 0.094977, -0.991466,
		-0.992770, -0.088647, 0.080922,
		-0.080205, 0.991525, 0.102206,
		41.562489, 35.688847, 39.284912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059090, 35.244312, 38.727833>,  <41.618633, 34.994778, 39.213367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059090, 35.244312, 38.727833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326023, 35.532658, 38.802685>,  <41.486183, 35.705666, 38.847595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326023, 35.532658, 38.802685>,  <41.059090, 35.244312, 38.727833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326023, 35.532658, 38.802685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039593, 0.216566, -0.975465,
		-0.743706, 0.658369, 0.115981,
		0.667333, 0.720867, 0.187128,
		41.526222, 35.748917, 38.858822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933399, 35.761707, 38.227768>,  <41.059090, 35.244312, 38.727833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933399, 35.761707, 38.227768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.291252, 35.884995, 38.357162>,  <41.505962, 35.958965, 38.434799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.291252, 35.884995, 38.357162>,  <40.933399, 35.761707, 38.227768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291252, 35.884995, 38.357162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140492, 0.493226, -0.858481,
		-0.424148, 0.813469, 0.397953,
		0.894629, 0.308214, 0.323487,
		41.559639, 35.977459, 38.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928761, 36.327503, 37.945866>,  <40.933399, 35.761707, 38.227768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928761, 36.327503, 37.945866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312572, 36.254543, 38.031689>,  <41.542858, 36.210770, 38.083183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312572, 36.254543, 38.031689>,  <40.928761, 36.327503, 37.945866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312572, 36.254543, 38.031689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258633, 0.269371, -0.927657,
		0.111408, 0.945606, 0.305644,
		0.959530, -0.182398, 0.214554,
		41.600433, 36.199825, 38.096054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236275, 36.809780, 37.606525>,  <40.928761, 36.327503, 37.945866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236275, 36.809780, 37.606525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.541935, 36.561993, 37.678448>,  <41.725330, 36.413319, 37.721600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.541935, 36.561993, 37.678448>,  <41.236275, 36.809780, 37.606525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541935, 36.561993, 37.678448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324513, 0.128292, -0.937140,
		0.557464, 0.774465, 0.299061,
		0.764150, -0.619472, 0.179806,
		41.771179, 36.376152, 37.732388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937881, 37.170254, 37.496391>,  <41.236275, 36.809780, 37.606525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937881, 37.170254, 37.496391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997692, 36.776585, 37.458351>,  <42.033577, 36.540382, 37.435528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997692, 36.776585, 37.458351>,  <41.937881, 37.170254, 37.496391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997692, 36.776585, 37.458351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403239, 0.148518, -0.902962,
		0.902795, 0.096669, 0.419065,
		0.149527, -0.984174, -0.095100,
		42.042549, 36.481331, 37.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635807, 37.088066, 37.194447>,  <41.937881, 37.170254, 37.496391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635807, 37.088066, 37.194447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436062, 36.752869, 37.106438>,  <42.316216, 36.551750, 37.053635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436062, 36.752869, 37.106438>,  <42.635807, 37.088066, 37.194447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436062, 36.752869, 37.106438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394180, 0.006396, -0.919011,
		0.771530, -0.545647, 0.327125,
		-0.499363, -0.837991, -0.220018,
		42.286251, 36.501472, 37.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124866, 36.660976, 36.887573>,  <42.635807, 37.088066, 37.194447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124866, 36.660976, 36.887573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768677, 36.524300, 36.767368>,  <42.554962, 36.442295, 36.695244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768677, 36.524300, 36.767368>,  <43.124866, 36.660976, 36.887573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768677, 36.524300, 36.767368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301429, 0.051791, -0.952081,
		0.340881, -0.938384, 0.056877,
		-0.890472, -0.341691, -0.300511,
		42.501534, 36.421791, 36.677216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238956, 36.255066, 36.331203>,  <43.124866, 36.660976, 36.887573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238956, 36.255066, 36.331203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850830, 36.330463, 36.270592>,  <42.617954, 36.375702, 36.234222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850830, 36.330463, 36.270592>,  <43.238956, 36.255066, 36.331203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850830, 36.330463, 36.270592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128250, -0.130182, -0.983160,
		-0.205048, -0.973408, 0.102143,
		-0.970313, 0.188495, -0.151533,
		42.559734, 36.387012, 36.225132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502033, 35.572193, 36.108234>,  <43.238956, 36.255066, 36.331203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502033, 35.572193, 36.108234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.790272, 35.401291, 35.889801>,  <43.963215, 35.298752, 35.758743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.790272, 35.401291, 35.889801>,  <43.502033, 35.572193, 36.108234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790272, 35.401291, 35.889801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105240, -0.711065, 0.695206,
		-0.685325, -0.558430, -0.467424,
		0.720593, -0.427251, -0.546080,
		44.006451, 35.273117, 35.725979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410126, 34.815357, 36.223217>,  <43.502033, 35.572193, 36.108234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410126, 34.815357, 36.223217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782738, 34.911942, 36.114441>,  <44.006306, 34.969894, 36.049175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782738, 34.911942, 36.114441>,  <43.410126, 34.815357, 36.223217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782738, 34.911942, 36.114441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356452, -0.754481, 0.551091,
		-0.072105, -0.610290, -0.788890,
		0.931527, 0.241465, -0.271941,
		44.062195, 34.984383, 36.032860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805355, 34.241692, 36.101196>,  <43.410126, 34.815357, 36.223217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805355, 34.241692, 36.101196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.092705, 34.507488, 36.183552>,  <44.265114, 34.666965, 36.232964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.092705, 34.507488, 36.183552>,  <43.805355, 34.241692, 36.101196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092705, 34.507488, 36.183552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468212, -0.680727, 0.563373,
		0.514511, -0.308312, -0.800139,
		0.718370, 0.664496, 0.205886,
		44.308216, 34.706837, 36.245319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472248, 33.887226, 36.139751>,  <43.805355, 34.241692, 36.101196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472248, 33.887226, 36.139751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516640, 34.224010, 36.350952>,  <44.543274, 34.426079, 36.477673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516640, 34.224010, 36.350952>,  <44.472248, 33.887226, 36.139751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516640, 34.224010, 36.350952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533401, -0.498743, 0.683183,
		0.838550, 0.205816, -0.504453,
		0.110982, 0.841959, 0.528004,
		44.549934, 34.476597, 36.509354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098518, 33.877232, 36.392609>,  <44.472248, 33.887226, 36.139751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098518, 33.877232, 36.392609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951920, 34.166004, 36.627380>,  <44.863960, 34.339268, 36.768246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951920, 34.166004, 36.627380>,  <45.098518, 33.877232, 36.392609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951920, 34.166004, 36.627380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545672, -0.344167, 0.764062,
		0.753607, 0.600298, -0.267805,
		-0.366495, 0.721936, 0.586933,
		44.841972, 34.382584, 36.803459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666706, 34.196423, 36.837299>,  <45.098518, 33.877232, 36.392609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666706, 34.196423, 36.837299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334740, 34.281609, 37.043556>,  <45.135559, 34.332718, 37.167313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334740, 34.281609, 37.043556>,  <45.666706, 34.196423, 36.837299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334740, 34.281609, 37.043556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398443, -0.420690, 0.815024,
		0.390497, 0.881854, 0.264282,
		-0.829913, 0.212963, 0.515647,
		45.085766, 34.345497, 37.198250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960808, 34.248371, 37.518520>,  <45.666706, 34.196423, 36.837299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960808, 34.248371, 37.518520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568832, 34.221588, 37.593609>,  <45.333649, 34.205517, 37.638660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568832, 34.221588, 37.593609>,  <45.960808, 34.248371, 37.518520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568832, 34.221588, 37.593609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198105, -0.223967, 0.954250,
		-0.021853, 0.972294, 0.232739,
		-0.979937, -0.066960, 0.187722,
		45.274853, 34.201500, 37.649925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952057, 34.487022, 38.152748>,  <45.960808, 34.248371, 37.518520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952057, 34.487022, 38.152748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611771, 34.288040, 38.084835>,  <45.407600, 34.168652, 38.044086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611771, 34.288040, 38.084835>,  <45.952057, 34.487022, 38.152748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611771, 34.288040, 38.084835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058995, -0.411323, 0.909578,
		-0.522310, 0.763774, 0.379266,
		-0.850713, -0.497456, -0.169779,
		45.356556, 34.138802, 38.033901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656075, 34.442638, 38.778557>,  <45.952057, 34.487022, 38.152748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656075, 34.442638, 38.778557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424587, 34.163136, 38.610355>,  <45.285694, 33.995434, 38.509434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424587, 34.163136, 38.610355>,  <45.656075, 34.442638, 38.778557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424587, 34.163136, 38.610355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038535, -0.491615, 0.869960,
		-0.814614, 0.519669, 0.257582,
		-0.578722, -0.698756, -0.420502,
		45.250969, 33.953510, 38.484203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990498, 34.324844, 39.151222>,  <45.656075, 34.442638, 38.778557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990498, 34.324844, 39.151222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053139, 33.983067, 38.953072>,  <45.090725, 33.778000, 38.834179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053139, 33.983067, 38.953072>,  <44.990498, 34.324844, 39.151222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053139, 33.983067, 38.953072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283495, -0.519351, 0.806167,
		-0.946101, 0.014190, -0.323562,
		0.156603, -0.854443, -0.495380,
		45.100121, 33.726734, 38.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438358, 33.930367, 39.362503>,  <44.990498, 34.324844, 39.151222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438358, 33.930367, 39.362503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686836, 33.654491, 39.213673>,  <44.835922, 33.488964, 39.124374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686836, 33.654491, 39.213673>,  <44.438358, 33.930367, 39.362503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686836, 33.654491, 39.213673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213293, -0.605677, 0.766590,
		-0.754071, -0.396840, -0.523350,
		0.621195, -0.689690, -0.372081,
		44.873196, 33.447586, 39.102047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105797, 33.214165, 39.364159>,  <44.438358, 33.930367, 39.362503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105797, 33.214165, 39.364159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493713, 33.122665, 39.330265>,  <44.726463, 33.067764, 39.309929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493713, 33.122665, 39.330265>,  <44.105797, 33.214165, 39.364159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493713, 33.122665, 39.330265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061151, -0.564226, 0.823353,
		-0.236150, -0.793298, -0.561169,
		0.969790, -0.228750, -0.084731,
		44.784649, 33.054039, 39.304844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111660, 32.514198, 39.493782>,  <44.105797, 33.214165, 39.364159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111660, 32.514198, 39.493782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484104, 32.642303, 39.563595>,  <44.707573, 32.719166, 39.605484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484104, 32.642303, 39.563595>,  <44.111660, 32.514198, 39.493782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484104, 32.642303, 39.563595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026571, -0.417688, 0.908202,
		0.363764, -0.850275, -0.380404,
		0.931112, 0.320263, 0.174533,
		44.763439, 32.738384, 39.615955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386990, 31.986559, 39.797462>,  <44.111660, 32.514198, 39.493782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386990, 31.986559, 39.797462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648026, 32.270195, 39.904285>,  <44.804646, 32.440376, 39.968380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648026, 32.270195, 39.904285>,  <44.386990, 31.986559, 39.797462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648026, 32.270195, 39.904285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041308, -0.318633, 0.946978,
		0.756586, -0.629018, -0.178645,
		0.652588, 0.709091, 0.267057,
		44.843803, 32.482922, 39.984402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839123, 31.644396, 40.301235>,  <44.386990, 31.986559, 39.797462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839123, 31.644396, 40.301235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885143, 32.038132, 40.354664>,  <44.912754, 32.274372, 40.386723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885143, 32.038132, 40.354664>,  <44.839123, 31.644396, 40.301235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885143, 32.038132, 40.354664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000108, -0.134452, 0.990920,
		0.993360, -0.114020, -0.015363,
		0.115050, 0.984338, 0.133572,
		44.919659, 32.333435, 40.394733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351032, 31.671982, 40.863895>,  <44.839123, 31.644396, 40.301235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351032, 31.671982, 40.863895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149277, 32.017288, 40.871559>,  <45.028225, 32.224472, 40.876160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149277, 32.017288, 40.871559>,  <45.351032, 31.671982, 40.863895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149277, 32.017288, 40.871559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075476, -0.066185, 0.994949,
		0.860175, 0.500390, 0.098538,
		-0.504384, 0.863267, 0.019164,
		44.997963, 32.276268, 40.877308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701653, 32.181023, 41.382000>,  <45.351032, 31.671982, 40.863895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701653, 32.181023, 41.382000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328812, 32.323399, 41.355171>,  <45.105106, 32.408825, 41.339073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328812, 32.323399, 41.355171>,  <45.701653, 32.181023, 41.382000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328812, 32.323399, 41.355171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031349, 0.105207, 0.993956,
		0.360843, 0.928569, -0.086905,
		-0.932099, 0.355938, -0.067073,
		45.049183, 32.430180, 41.335049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640617, 32.736950, 41.863693>,  <45.701653, 32.181023, 41.382000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640617, 32.736950, 41.863693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261017, 32.627296, 41.801407>,  <45.033257, 32.561504, 41.764034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261017, 32.627296, 41.801407>,  <45.640617, 32.736950, 41.863693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261017, 32.627296, 41.801407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207419, 0.170932, 0.963203,
		-0.237429, 0.946379, -0.219075,
		-0.949002, -0.274132, -0.155713,
		44.976315, 32.545055, 41.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166782, 33.229301, 42.286190>,  <45.640617, 32.736950, 41.863693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166782, 33.229301, 42.286190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921394, 32.926067, 42.197674>,  <44.774162, 32.744129, 42.144566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921394, 32.926067, 42.197674>,  <45.166782, 33.229301, 42.286190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921394, 32.926067, 42.197674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278272, -0.054729, 0.958942,
		-0.739067, 0.649859, -0.177378,
		-0.613470, -0.758081, -0.221286,
		44.737354, 32.698643, 42.131287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589249, 33.416405, 42.528694>,  <45.166782, 33.229301, 42.286190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589249, 33.416405, 42.528694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557365, 33.019249, 42.493313>,  <44.538235, 32.780956, 42.472084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557365, 33.019249, 42.493313>,  <44.589249, 33.416405, 42.528694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557365, 33.019249, 42.493313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255558, -0.065412, 0.964578,
		-0.963502, 0.099490, -0.248526,
		-0.079710, -0.992886, -0.088450,
		44.533451, 32.721382, 42.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010635, 33.273750, 42.867290>,  <44.589249, 33.416405, 42.528694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010635, 33.273750, 42.867290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173862, 32.911163, 42.823845>,  <44.271797, 32.693611, 42.797779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173862, 32.911163, 42.823845>,  <44.010635, 33.273750, 42.867290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173862, 32.911163, 42.823845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265749, -0.231755, 0.935771,
		-0.873420, -0.352990, -0.335464,
		0.408063, -0.906470, -0.108613,
		44.296280, 32.639221, 42.791260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.687481, 37.888962, 41.841122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571449, 37.520966, 41.735695>,  <33.501831, 37.300167, 41.672440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571449, 37.520966, 41.735695>,  <33.687481, 37.888962, 41.841122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571449, 37.520966, 41.735695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845229, -0.117129, -0.521410,
		0.448822, -0.374024, 0.811582,
		-0.290079, -0.919993, -0.263566,
		33.484425, 37.244968, 41.656624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302105, 37.616657, 41.884789>,  <33.687481, 37.888962, 41.841122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302105, 37.616657, 41.884789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057552, 37.393444, 41.660355>,  <33.910820, 37.259518, 41.525696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057552, 37.393444, 41.660355>,  <34.302105, 37.616657, 41.884789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057552, 37.393444, 41.660355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744598, -0.165596, -0.646646,
		0.267937, -0.813128, 0.516753,
		-0.611378, -0.558034, -0.561084,
		33.874138, 37.226032, 41.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682049, 37.042660, 41.708939>,  <34.302105, 37.616657, 41.884789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682049, 37.042660, 41.708939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387638, 37.027908, 41.438560>,  <34.210991, 37.019058, 41.276333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387638, 37.027908, 41.438560>,  <34.682049, 37.042660, 41.708939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387638, 37.027908, 41.438560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656473, -0.282612, -0.699409,
		-0.165234, -0.958525, 0.232222,
		-0.736030, -0.036882, -0.675943,
		34.166828, 37.016846, 41.235779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732685, 36.477165, 41.367970>,  <34.682049, 37.042660, 41.708939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732685, 36.477165, 41.367970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526455, 36.689579, 41.098991>,  <34.402718, 36.817028, 40.937603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526455, 36.689579, 41.098991>,  <34.732685, 36.477165, 41.367970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526455, 36.689579, 41.098991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682228, -0.220406, -0.697127,
		-0.518413, -0.818180, -0.248655,
		-0.515571, 0.531039, -0.672447,
		34.371784, 36.848892, 40.897259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690514, 36.131958, 40.752956>,  <34.732685, 36.477165, 41.367970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690514, 36.131958, 40.752956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605724, 36.495644, 40.609623>,  <34.554852, 36.713856, 40.523621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605724, 36.495644, 40.609623>,  <34.690514, 36.131958, 40.752956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605724, 36.495644, 40.609623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659034, -0.137762, -0.739389,
		-0.721626, -0.392884, -0.569999,
		-0.211970, 0.909210, -0.358336,
		34.542133, 36.768406, 40.502121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660419, 35.965076, 40.060524>,  <34.690514, 36.131958, 40.752956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660419, 35.965076, 40.060524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685715, 36.363674, 40.082458>,  <34.700893, 36.602833, 40.095619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685715, 36.363674, 40.082458>,  <34.660419, 35.965076, 40.060524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685715, 36.363674, 40.082458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564512, 0.009592, -0.825369,
		-0.822998, 0.083150, -0.561925,
		0.063240, 0.996491, 0.054833,
		34.704685, 36.662621, 40.098907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334675, 36.193306, 39.425465>,  <34.660419, 35.965076, 40.060524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334675, 36.193306, 39.425465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612141, 36.432762, 39.585693>,  <34.778618, 36.576435, 39.681831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612141, 36.432762, 39.585693>,  <34.334675, 36.193306, 39.425465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612141, 36.432762, 39.585693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558148, -0.095201, -0.824262,
		-0.455305, 0.795337, -0.400170,
		0.693663, 0.598645, 0.400570,
		34.820240, 36.612354, 39.705864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550568, 36.722576, 38.905422>,  <34.334675, 36.193306, 39.425465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550568, 36.722576, 38.905422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865997, 36.795101, 39.140465>,  <35.055256, 36.838615, 39.281490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865997, 36.795101, 39.140465>,  <34.550568, 36.722576, 38.905422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865997, 36.795101, 39.140465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581983, 0.088600, -0.808360,
		-0.198630, 0.979426, -0.035655,
		0.788570, 0.181315, 0.587607,
		35.102570, 36.849495, 39.316746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860477, 37.225948, 38.617783>,  <34.550568, 36.722576, 38.905422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860477, 37.225948, 38.617783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139748, 37.091438, 38.870594>,  <35.307312, 37.010731, 39.022282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139748, 37.091438, 38.870594>,  <34.860477, 37.225948, 38.617783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139748, 37.091438, 38.870594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692342, 0.092423, -0.715626,
		0.182233, 0.937218, 0.297345,
		0.698179, -0.336275, 0.632032,
		35.349201, 36.990555, 39.060204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558079, 37.642525, 38.505924>,  <34.860477, 37.225948, 38.617783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558079, 37.642525, 38.505924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660717, 37.287117, 38.658081>,  <35.722301, 37.073872, 38.749374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660717, 37.287117, 38.658081>,  <35.558079, 37.642525, 38.505924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660717, 37.287117, 38.658081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633534, -0.142609, -0.760459,
		0.729926, 0.436123, 0.526312,
		0.256597, -0.888515, 0.380393,
		35.737698, 37.020561, 38.772198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250595, 37.639023, 38.502716>,  <35.558079, 37.642525, 38.505924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250595, 37.639023, 38.502716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154011, 37.254650, 38.556843>,  <36.096062, 37.024025, 38.589317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154011, 37.254650, 38.556843>,  <36.250595, 37.639023, 38.502716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154011, 37.254650, 38.556843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603160, -0.257845, -0.754794,
		0.760195, -0.100637, 0.641854,
		-0.241459, -0.960931, 0.135312,
		36.081573, 36.966370, 38.597435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868347, 37.262501, 38.467194>,  <36.250595, 37.639023, 38.502716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868347, 37.262501, 38.467194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608932, 36.971573, 38.377392>,  <36.453285, 36.797016, 38.323509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608932, 36.971573, 38.377392>,  <36.868347, 37.262501, 38.467194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608932, 36.971573, 38.377392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559622, -0.255670, -0.788324,
		0.515967, -0.636895, 0.572837,
		-0.648538, -0.727322, -0.224503,
		36.414371, 36.753376, 38.310040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256062, 36.642765, 38.406540>,  <36.868347, 37.262501, 38.467194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256062, 36.642765, 38.406540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911156, 36.627453, 38.204536>,  <36.704212, 36.618263, 38.083332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911156, 36.627453, 38.204536>,  <37.256062, 36.642765, 38.406540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911156, 36.627453, 38.204536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499331, -0.230994, -0.835051,
		-0.084683, -0.972202, 0.218295,
		-0.862263, -0.038287, -0.505012,
		36.652477, 36.615967, 38.053032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839912, 36.193176, 38.449139>,  <37.256062, 36.642765, 38.406540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839912, 36.193176, 38.449139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090309, 36.089428, 38.154964>,  <38.240547, 36.027180, 37.978458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090309, 36.089428, 38.154964>,  <37.839912, 36.193176, 38.449139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090309, 36.089428, 38.154964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207630, -0.964462, 0.163408,
		-0.751681, 0.050406, -0.657598,
		0.625991, -0.259368, -0.735434,
		38.278107, 36.011616, 37.934334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669094, 35.613392, 37.968575>,  <37.839912, 36.193176, 38.449139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669094, 35.613392, 37.968575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061256, 35.651505, 38.037533>,  <38.296555, 35.674374, 38.078907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061256, 35.651505, 38.037533>,  <37.669094, 35.613392, 37.968575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061256, 35.651505, 38.037533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001609, -0.879059, 0.476711,
		0.196973, -0.467094, -0.861989,
		0.980408, 0.095286, 0.172399,
		38.355377, 35.680092, 38.089252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924183, 34.984364, 37.798744>,  <37.669094, 35.613392, 37.968575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924183, 34.984364, 37.798744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178383, 35.173019, 38.043266>,  <38.330902, 35.286213, 38.189980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178383, 35.173019, 38.043266>,  <37.924183, 34.984364, 37.798744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178383, 35.173019, 38.043266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416529, -0.457227, 0.785778,
		0.650107, -0.753991, -0.094119,
		0.635503, 0.471637, 0.611305,
		38.369034, 35.314510, 38.226658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033905, 34.439060, 38.269199>,  <37.924183, 34.984364, 37.798744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033905, 34.439060, 38.269199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185230, 34.762295, 38.449806>,  <38.276028, 34.956238, 38.558170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185230, 34.762295, 38.449806>,  <38.033905, 34.439060, 38.269199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185230, 34.762295, 38.449806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244556, -0.383187, 0.890708,
		0.892787, -0.447390, 0.052658,
		0.378316, 0.808090, 0.451517,
		38.298725, 35.004723, 38.585262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592659, 34.332962, 38.787403>,  <38.033905, 34.439060, 38.269199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592659, 34.332962, 38.787403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375774, 34.656281, 38.879200>,  <38.245644, 34.850273, 38.934277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375774, 34.656281, 38.879200>,  <38.592659, 34.332962, 38.787403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375774, 34.656281, 38.879200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170764, -0.373429, 0.911806,
		0.822707, 0.455202, 0.340505,
		-0.542211, 0.808295, 0.229491,
		38.213112, 34.898769, 38.948048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530922, 34.235550, 39.555218>,  <38.592659, 34.332962, 38.787403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530922, 34.235550, 39.555218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330311, 34.575378, 39.489861>,  <38.209946, 34.779278, 39.450645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330311, 34.575378, 39.489861>,  <38.530922, 34.235550, 39.555218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330311, 34.575378, 39.489861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392630, -0.055221, 0.918038,
		0.770917, 0.524573, 0.361262,
		-0.501527, 0.849573, -0.163392,
		38.179852, 34.830250, 39.440842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616924, 34.755013, 40.060635>,  <38.530922, 34.235550, 39.555218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616924, 34.755013, 40.060635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278961, 34.913612, 39.917011>,  <38.076183, 35.008770, 39.830837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278961, 34.913612, 39.917011>,  <38.616924, 34.755013, 40.060635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278961, 34.913612, 39.917011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371905, 0.047047, 0.927078,
		0.384475, 0.916831, 0.107708,
		-0.844906, 0.396495, -0.359062,
		38.025490, 35.032562, 39.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292191, 35.372238, 40.502953>,  <38.616924, 34.755013, 40.060635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292191, 35.372238, 40.502953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988335, 35.201359, 40.306812>,  <37.806023, 35.098831, 40.189129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988335, 35.201359, 40.306812>,  <38.292191, 35.372238, 40.502953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988335, 35.201359, 40.306812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547832, 0.014018, 0.836471,
		-0.350469, 0.904047, -0.244684,
		-0.759639, -0.427203, -0.490353,
		37.760445, 35.073196, 40.159706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687717, 35.673271, 40.822662>,  <38.292191, 35.372238, 40.502953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687717, 35.673271, 40.822662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568489, 35.333294, 40.648880>,  <37.496952, 35.129307, 40.544613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568489, 35.333294, 40.648880>,  <37.687717, 35.673271, 40.822662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568489, 35.333294, 40.648880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752706, -0.070606, 0.654559,
		-0.587013, 0.522123, -0.618711,
		-0.298075, -0.849943, -0.434452,
		37.479065, 35.078312, 40.518543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010380, 35.776108, 40.619656>,  <37.687717, 35.673271, 40.822662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010380, 35.776108, 40.619656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081970, 35.383636, 40.648632>,  <37.124924, 35.148151, 40.666016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081970, 35.383636, 40.648632>,  <37.010380, 35.776108, 40.619656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081970, 35.383636, 40.648632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796649, -0.101323, 0.595890,
		-0.577337, -0.164358, -0.799792,
		0.178976, -0.981183, 0.072438,
		37.135662, 35.089283, 40.670364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362106, 35.502602, 40.506252>,  <37.010380, 35.776108, 40.619656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362106, 35.502602, 40.506252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582684, 35.227314, 40.694836>,  <36.715027, 35.062141, 40.807987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582684, 35.227314, 40.694836>,  <36.362106, 35.502602, 40.506252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582684, 35.227314, 40.694836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744279, -0.150626, 0.650661,
		-0.376782, -0.709697, -0.595286,
		0.551438, -0.688216, 0.471460,
		36.748116, 35.020851, 40.836273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876148, 34.962547, 40.620296>,  <36.362106, 35.502602, 40.506252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876148, 34.962547, 40.620296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173866, 34.886635, 40.876423>,  <36.352497, 34.841087, 41.030098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173866, 34.886635, 40.876423>,  <35.876148, 34.962547, 40.620296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173866, 34.886635, 40.876423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656780, -0.381852, 0.650253,
		0.121104, -0.904529, -0.408853,
		0.744294, -0.189778, 0.640320,
		36.397156, 34.829700, 41.068520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763538, 34.324677, 40.845421>,  <35.876148, 34.962547, 40.620296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763538, 34.324677, 40.845421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004414, 34.472385, 41.128548>,  <36.148941, 34.561012, 41.298424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004414, 34.472385, 41.128548>,  <35.763538, 34.324677, 40.845421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004414, 34.472385, 41.128548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575524, -0.413656, 0.705451,
		0.553296, -0.832181, -0.036575,
		0.602192, 0.369273, 0.707814,
		36.185070, 34.583168, 41.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926640, 33.810833, 41.205978>,  <35.763538, 34.324677, 40.845421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926640, 33.810833, 41.205978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989193, 34.132168, 41.435829>,  <36.026726, 34.324966, 41.573742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989193, 34.132168, 41.435829>,  <35.926640, 33.810833, 41.205978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989193, 34.132168, 41.435829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715370, -0.309023, 0.626698,
		0.681021, -0.509079, 0.526354,
		0.156384, 0.803333, 0.574631,
		36.036110, 34.373169, 41.608219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590599, 33.564980, 41.824020>,  <35.926640, 33.810833, 41.205978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590599, 33.564980, 41.824020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632938, 33.954895, 41.902588>,  <35.658340, 34.188847, 41.949730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632938, 33.954895, 41.902588>,  <35.590599, 33.564980, 41.824020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632938, 33.954895, 41.902588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786029, -0.038969, 0.616960,
		0.609061, -0.219693, 0.762089,
		0.105844, 0.974791, 0.196420,
		35.664692, 34.247334, 41.961514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703766, 33.034042, 42.273083>,  <35.590599, 33.564980, 41.824020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703766, 33.034042, 42.273083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439480, 32.734615, 42.250809>,  <35.280910, 32.554958, 42.237446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439480, 32.734615, 42.250809>,  <35.703766, 33.034042, 42.273083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439480, 32.734615, 42.250809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503507, -0.386943, -0.772500,
		0.556724, -0.538437, 0.632569,
		-0.660711, -0.748572, -0.055686,
		35.241268, 32.510044, 42.234104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007500, 32.336967, 42.228100>,  <35.703766, 33.034042, 42.273083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007500, 32.336967, 42.228100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644501, 32.266670, 42.075489>,  <35.426701, 32.224491, 41.983921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644501, 32.266670, 42.075489>,  <36.007500, 32.336967, 42.228100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644501, 32.266670, 42.075489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418934, -0.312273, -0.852631,
		0.030706, -0.933595, 0.357013,
		-0.907497, -0.175746, -0.381526,
		35.372253, 32.213947, 41.961033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011127, 31.644730, 41.875919>,  <36.007500, 32.336967, 42.228100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011127, 31.644730, 41.875919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699959, 31.835722, 41.712528>,  <35.513260, 31.950317, 41.614494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699959, 31.835722, 41.712528>,  <36.011127, 31.644730, 41.875919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699959, 31.835722, 41.712528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361888, -0.190995, -0.912446,
		-0.513695, -0.857631, -0.024216,
		-0.777917, 0.477483, -0.408479,
		35.466583, 31.978966, 41.589985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811653, 31.226387, 41.393810>,  <36.011127, 31.644730, 41.875919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811653, 31.226387, 41.393810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641201, 31.572010, 41.286613>,  <35.538929, 31.779383, 41.222294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641201, 31.572010, 41.286613>,  <35.811653, 31.226387, 41.393810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641201, 31.572010, 41.286613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288801, -0.150802, -0.945438,
		-0.857324, -0.480278, -0.185278,
		-0.426133, 0.864055, -0.267991,
		35.513363, 31.831226, 41.206215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654678, 31.057116, 40.711357>,  <35.811653, 31.226387, 41.393810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654678, 31.057116, 40.711357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601795, 31.453369, 40.725006>,  <35.570065, 31.691122, 40.733196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601795, 31.453369, 40.725006>,  <35.654678, 31.057116, 40.711357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601795, 31.453369, 40.725006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217861, 0.062625, -0.973969,
		-0.966983, -0.121334, -0.224100,
		-0.132210, 0.990634, 0.034123,
		35.562134, 31.750559, 40.735245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253254, 31.292431, 40.081306>,  <35.654678, 31.057116, 40.711357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253254, 31.292431, 40.081306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446678, 31.621010, 40.202229>,  <35.562733, 31.818157, 40.274780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446678, 31.621010, 40.202229>,  <35.253254, 31.292431, 40.081306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446678, 31.621010, 40.202229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267844, 0.189933, -0.944555,
		-0.833322, 0.537723, -0.128176,
		0.483564, 0.821450, 0.302302,
		35.591747, 31.867445, 40.292919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082798, 31.938471, 39.671852>,  <35.253254, 31.292431, 40.081306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082798, 31.938471, 39.671852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449112, 31.991259, 39.823601>,  <35.668900, 32.022930, 39.914650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449112, 31.991259, 39.823601>,  <35.082798, 31.938471, 39.671852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449112, 31.991259, 39.823601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339653, 0.249740, -0.906789,
		-0.214412, 0.959278, 0.183885,
		0.915785, 0.131970, 0.379369,
		35.723846, 32.030849, 39.937412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341240, 32.518318, 39.354660>,  <35.082798, 31.938471, 39.671852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341240, 32.518318, 39.354660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666409, 32.339493, 39.503948>,  <35.861507, 32.232197, 39.593521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666409, 32.339493, 39.503948>,  <35.341240, 32.518318, 39.354660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666409, 32.339493, 39.503948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518769, 0.264653, -0.812919,
		0.264653, 0.854454, 0.447065,
		0.812919, -0.447065, 0.373223,
		35.910286, 32.205372, 39.615913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819134, 33.076015, 39.239716>,  <35.341240, 32.518318, 39.354660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819134, 33.076015, 39.239716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006950, 32.724995, 39.278564>,  <36.119640, 32.514381, 39.301872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006950, 32.724995, 39.278564>,  <35.819134, 33.076015, 39.239716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006950, 32.724995, 39.278564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505739, 0.177159, -0.844300,
		0.723712, 0.445551, 0.526997,
		0.469541, -0.877553, 0.097121,
		36.147812, 32.461727, 39.307701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468735, 33.216633, 38.938004>,  <35.819134, 33.076015, 39.239716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468735, 33.216633, 38.938004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471519, 32.816704, 38.944984>,  <36.473190, 32.576748, 38.949173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471519, 32.816704, 38.944984>,  <36.468735, 33.216633, 38.938004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471519, 32.816704, 38.944984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469041, -0.012148, -0.883093,
		0.883149, 0.014333, 0.468873,
		0.006961, -0.999824, 0.017451,
		36.473606, 32.516758, 38.950218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076126, 32.975193, 38.693794>,  <36.468735, 33.216633, 38.938004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076126, 32.975193, 38.693794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864765, 32.638752, 38.647606>,  <36.737949, 32.436886, 38.619892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864765, 32.638752, 38.647606>,  <37.076126, 32.975193, 38.693794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864765, 32.638752, 38.647606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480033, -0.183813, -0.857777,
		0.700257, -0.508678, 0.500886,
		-0.528402, -0.841106, -0.115466,
		36.706245, 32.386421, 38.612965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615524, 32.463402, 38.586472>,  <37.076126, 32.975193, 38.693794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615524, 32.463402, 38.586472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264729, 32.335472, 38.443027>,  <37.054249, 32.258717, 38.356960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264729, 32.335472, 38.443027>,  <37.615524, 32.463402, 38.586472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264729, 32.335472, 38.443027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426666, -0.175064, -0.887304,
		0.220999, -0.931164, 0.289987,
		-0.876992, -0.319821, -0.358607,
		37.001633, 32.239525, 38.335445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.578140, 32.255146, 45.907692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218548, 32.187275, 45.746174>,  <34.002792, 32.146553, 45.649265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218548, 32.187275, 45.746174>,  <34.578140, 32.255146, 45.907692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218548, 32.187275, 45.746174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422182, -0.090223, -0.902010,
		0.116623, -0.981360, 0.152746,
		-0.898978, -0.169682, -0.403790,
		33.948853, 32.136372, 45.625038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723316, 31.747362, 45.478439>,  <34.578140, 32.255146, 45.907692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723316, 31.747362, 45.478439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375084, 31.904711, 45.360218>,  <34.166145, 31.999119, 45.289288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375084, 31.904711, 45.360218>,  <34.723316, 31.747362, 45.478439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375084, 31.904711, 45.360218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338346, 0.042512, -0.940061,
		-0.357228, -0.918396, -0.170105,
		-0.870580, 0.393371, -0.295550,
		34.113911, 32.022720, 45.271553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345657, 31.323380, 44.930721>,  <34.723316, 31.747362, 45.478439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345657, 31.323380, 44.930721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198803, 31.694098, 44.899078>,  <34.110691, 31.916529, 44.880093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198803, 31.694098, 44.899078>,  <34.345657, 31.323380, 44.930721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198803, 31.694098, 44.899078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180027, -0.012640, -0.983580,
		-0.912578, -0.375353, -0.162208,
		-0.367140, 0.926796, -0.079109,
		34.088661, 31.972136, 44.875347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183636, 31.343538, 44.123886>,  <34.345657, 31.323380, 44.930721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183636, 31.343538, 44.123886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076595, 31.719364, 44.209312>,  <34.012371, 31.944860, 44.260567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076595, 31.719364, 44.209312>,  <34.183636, 31.343538, 44.123886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076595, 31.719364, 44.209312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222515, 0.275915, -0.935071,
		-0.937486, -0.202701, -0.282902,
		-0.267596, 0.939566, 0.213563,
		33.996315, 32.001232, 44.273380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604465, 31.578651, 43.670975>,  <34.183636, 31.343538, 44.123886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604465, 31.578651, 43.670975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842476, 31.875828, 43.793598>,  <33.985283, 32.054134, 43.867172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842476, 31.875828, 43.793598>,  <33.604465, 31.578651, 43.670975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842476, 31.875828, 43.793598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218101, 0.217860, -0.951299,
		-0.773547, 0.632910, -0.032404,
		0.595027, 0.742941, 0.306563,
		34.020985, 32.098709, 43.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499077, 32.148468, 43.217545>,  <33.604465, 31.578651, 43.670975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499077, 32.148468, 43.217545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841331, 32.243374, 43.401543>,  <34.046684, 32.300316, 43.511944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841331, 32.243374, 43.401543>,  <33.499077, 32.148468, 43.217545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841331, 32.243374, 43.401543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432129, 0.161701, -0.887196,
		-0.284880, 0.957893, 0.035829,
		0.855633, 0.237262, 0.459999,
		34.098022, 32.314552, 43.539543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636921, 32.807152, 42.990612>,  <33.499077, 32.148468, 43.217545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636921, 32.807152, 42.990612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.983555, 32.643532, 43.104946>,  <34.191536, 32.545361, 43.173546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.983555, 32.643532, 43.104946>,  <33.636921, 32.807152, 42.990612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983555, 32.643532, 43.104946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373662, 0.152238, -0.914987,
		0.330760, 0.899723, 0.284774,
		0.866588, -0.409050, 0.285838,
		34.243530, 32.520817, 43.190697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062927, 33.310776, 42.738316>,  <33.636921, 32.807152, 42.990612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062927, 33.310776, 42.738316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.283283, 32.981968, 42.796013>,  <34.415497, 32.784683, 42.830631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.283283, 32.981968, 42.796013>,  <34.062927, 33.310776, 42.738316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283283, 32.981968, 42.796013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449022, 0.146239, -0.881473,
		0.703492, 0.550363, 0.449665,
		0.550889, -0.822019, 0.144247,
		34.448551, 32.735363, 42.839287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659008, 33.472412, 42.311237>,  <34.062927, 33.310776, 42.738316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659008, 33.472412, 42.311237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689579, 33.081795, 42.391766>,  <34.707924, 32.847424, 42.440083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689579, 33.081795, 42.391766>,  <34.659008, 33.472412, 42.311237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689579, 33.081795, 42.391766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506744, -0.135845, -0.851327,
		0.858702, 0.167084, 0.484473,
		0.076430, -0.976539, 0.201319,
		34.712509, 32.788834, 42.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378811, 33.606033, 42.634800>,  <34.659008, 33.472412, 42.311237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378811, 33.606033, 42.634800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.372471, 33.984997, 42.506947>,  <35.368668, 34.212376, 42.430233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.372471, 33.984997, 42.506947>,  <35.378811, 33.606033, 42.634800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372471, 33.984997, 42.506947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575248, 0.252829, 0.777925,
		0.817826, 0.196198, 0.540987,
		-0.015850, 0.947409, -0.319633,
		35.367718, 34.269218, 42.411057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454197, 34.087772, 43.253590>,  <35.378811, 33.606033, 42.634800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454197, 34.087772, 43.253590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296219, 34.335693, 42.982338>,  <35.201431, 34.484447, 42.819588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296219, 34.335693, 42.982338>,  <35.454197, 34.087772, 43.253590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296219, 34.335693, 42.982338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339603, 0.587362, 0.734626,
		0.853631, 0.520434, -0.021490,
		-0.394947, 0.619802, -0.678132,
		35.177734, 34.521633, 42.778900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431725, 34.762436, 43.588257>,  <35.454197, 34.087772, 43.253590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431725, 34.762436, 43.588257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157764, 34.780201, 43.297340>,  <34.993389, 34.790859, 43.122791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157764, 34.780201, 43.297340>,  <35.431725, 34.762436, 43.588257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157764, 34.780201, 43.297340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625962, 0.475024, 0.618485,
		0.372948, 0.878851, -0.297541,
		-0.684895, 0.044413, -0.727286,
		34.952297, 34.793526, 43.079155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225391, 35.477596, 43.612305>,  <35.431725, 34.762436, 43.588257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225391, 35.477596, 43.612305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952477, 35.256451, 43.420963>,  <34.788727, 35.123764, 43.306156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952477, 35.256451, 43.420963>,  <35.225391, 35.477596, 43.612305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952477, 35.256451, 43.420963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726332, 0.438138, 0.529601,
		-0.083211, 0.708786, -0.700499,
		-0.682289, -0.552863, -0.478356,
		34.747791, 35.090591, 43.277458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708462, 36.021118, 43.348629>,  <35.225391, 35.477596, 43.612305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708462, 36.021118, 43.348629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554928, 35.652767, 43.375904>,  <34.462807, 35.431755, 43.392269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554928, 35.652767, 43.375904>,  <34.708462, 36.021118, 43.348629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554928, 35.652767, 43.375904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741741, 0.351465, 0.571220,
		-0.549990, 0.168679, -0.817960,
		-0.383837, -0.920880, 0.068186,
		34.439777, 35.376503, 43.396358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998966, 36.120941, 43.295406>,  <34.708462, 36.021118, 43.348629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998966, 36.120941, 43.295406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016251, 35.748447, 43.440147>,  <34.026619, 35.524952, 43.526993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016251, 35.748447, 43.440147>,  <33.998966, 36.120941, 43.295406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016251, 35.748447, 43.440147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734565, 0.215883, 0.643280,
		-0.677162, -0.293601, -0.674723,
		0.043207, -0.931232, 0.361857,
		34.029213, 35.469078, 43.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344227, 35.982948, 43.310200>,  <33.998966, 36.120941, 43.295406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344227, 35.982948, 43.310200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515579, 35.737846, 43.575836>,  <33.618389, 35.590786, 43.735218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.515579, 35.737846, 43.575836>,  <33.344227, 35.982948, 43.310200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515579, 35.737846, 43.575836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652351, 0.298822, 0.696523,
		-0.625245, -0.731597, -0.271725,
		0.428377, -0.612757, 0.664095,
		33.644093, 35.554020, 43.775066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727276, 35.651917, 43.703220>,  <33.344227, 35.982948, 43.310200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727276, 35.651917, 43.703220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.027531, 35.550716, 43.947365>,  <33.207684, 35.489994, 44.093849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.027531, 35.550716, 43.947365>,  <32.727276, 35.651917, 43.703220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027531, 35.550716, 43.947365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622590, 0.038423, 0.781604,
		-0.221201, -0.966702, -0.128677,
		0.750634, -0.253005, 0.610358,
		33.252720, 35.474815, 44.130474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449749, 35.163578, 44.239483>,  <32.727276, 35.651917, 43.703220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449749, 35.163578, 44.239483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795269, 35.309139, 44.378868>,  <33.002579, 35.396477, 44.462502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795269, 35.309139, 44.378868>,  <32.449749, 35.163578, 44.239483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795269, 35.309139, 44.378868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446670, 0.233106, 0.863798,
		0.233106, -0.901798, 0.363899,
		-0.863798, -0.363899, -0.348468,
		33.054409, 35.418308, 44.483410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723324, 34.745682, 44.803005>,  <32.449749, 35.163578, 44.239483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723324, 34.745682, 44.803005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868702, 35.115105, 44.851913>,  <32.955929, 35.336758, 44.881260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.868702, 35.115105, 44.851913>,  <32.723324, 34.745682, 44.803005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868702, 35.115105, 44.851913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399457, 0.035923, 0.916048,
		0.841630, -0.381776, 0.381977,
		0.363447, 0.923557, 0.122270,
		32.977737, 35.392170, 44.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873978, 34.723854, 45.457924>,  <32.723324, 34.745682, 44.803005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873978, 34.723854, 45.457924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.927917, 35.115051, 45.394249>,  <32.960281, 35.349770, 45.356045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.927917, 35.115051, 45.394249>,  <32.873978, 34.723854, 45.457924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927917, 35.115051, 45.394249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229242, 0.187089, 0.955220,
		0.963983, -0.092319, 0.249427,
		0.134850, 0.977995, -0.159187,
		32.968372, 35.408451, 45.346493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347134, 35.009945, 45.960884>,  <32.873978, 34.723854, 45.457924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347134, 35.009945, 45.960884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115051, 35.305611, 45.824066>,  <32.975800, 35.483009, 45.741978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115051, 35.305611, 45.824066>,  <33.347134, 35.009945, 45.960884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115051, 35.305611, 45.824066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326038, 0.174051, 0.929196,
		0.746363, 0.650645, 0.140011,
		-0.580208, 0.739167, -0.342041,
		32.940990, 35.527359, 45.721455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475979, 35.538170, 46.389580>,  <33.347134, 35.009945, 45.960884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475979, 35.538170, 46.389580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.129616, 35.670101, 46.239155>,  <32.921799, 35.749260, 46.148899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.129616, 35.670101, 46.239155>,  <33.475979, 35.538170, 46.389580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129616, 35.670101, 46.239155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287564, 0.286921, 0.913774,
		0.409288, 0.899383, -0.153600,
		-0.865904, 0.329826, -0.376064,
		32.869846, 35.769051, 46.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416164, 36.201729, 46.673092>,  <33.475979, 35.538170, 46.389580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416164, 36.201729, 46.673092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.055767, 36.050110, 46.588673>,  <32.839531, 35.959137, 46.538021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.055767, 36.050110, 46.588673>,  <33.416164, 36.201729, 46.673092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055767, 36.050110, 46.588673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276798, 0.127644, 0.952413,
		-0.334069, 0.916532, -0.219925,
		-0.900989, -0.379047, -0.211052,
		32.785469, 35.936398, 46.525356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<24.954969, 33.754311, 43.616924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.338764, 33.743523, 43.729107>,  <25.569040, 33.737049, 43.796417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.338764, 33.743523, 43.729107>,  <24.954969, 33.754311, 43.616924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338764, 33.743523, 43.729107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276256, -0.105652, -0.955259,
		0.055390, 0.994038, -0.093922,
		0.959486, -0.026966, 0.280461,
		25.626610, 33.735432, 43.813244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304352, 34.277805, 43.291046>,  <24.954969, 33.754311, 43.616924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304352, 34.277805, 43.291046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.598820, 34.024502, 43.386578>,  <25.775499, 33.872520, 43.443897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.598820, 34.024502, 43.386578>,  <25.304352, 34.277805, 43.291046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598820, 34.024502, 43.386578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401614, 0.124703, -0.907279,
		0.544758, 0.763829, 0.346128,
		0.736169, -0.633257, 0.238831,
		25.819670, 33.834526, 43.458225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019945, 34.558563, 43.175419>,  <25.304352, 34.277805, 43.291046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019945, 34.558563, 43.175419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.079834, 34.163071, 43.174919>,  <26.115767, 33.925777, 43.174618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.079834, 34.163071, 43.174919>,  <26.019945, 34.558563, 43.175419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079834, 34.163071, 43.174919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619320, 0.094771, -0.779398,
		0.770731, 0.115916, 0.626528,
		0.149721, -0.988727, -0.001254,
		26.124750, 33.866451, 43.174541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745050, 34.536858, 43.172451>,  <26.019945, 34.558563, 43.175419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745050, 34.536858, 43.172451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.599838, 34.189205, 43.038097>,  <26.512711, 33.980614, 42.957485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.599838, 34.189205, 43.038097>,  <26.745050, 34.536858, 43.172451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599838, 34.189205, 43.038097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657528, 0.016453, -0.753250,
		0.660201, -0.494304, 0.565507,
		-0.363030, -0.869133, -0.335882,
		26.490929, 33.928467, 42.937332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316189, 34.200451, 43.220821>,  <26.745050, 34.536858, 43.172451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316189, 34.200451, 43.220821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.087683, 33.984241, 42.973763>,  <26.950579, 33.854515, 42.825527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.087683, 33.984241, 42.973763>,  <27.316189, 34.200451, 43.220821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087683, 33.984241, 42.973763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734534, -0.000914, -0.678572,
		0.366222, -0.841326, 0.397558,
		-0.571263, -0.540528, -0.617647,
		26.916304, 33.822083, 42.788467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753620, 33.602707, 43.117378>,  <27.316189, 34.200451, 43.220821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753620, 33.602707, 43.117378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.468561, 33.582951, 42.837463>,  <27.297525, 33.571098, 42.669514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.468561, 33.582951, 42.837463>,  <27.753620, 33.602707, 43.117378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468561, 33.582951, 42.837463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696511, -0.168854, -0.697396,
		-0.083716, -0.984403, 0.154735,
		-0.712646, -0.049392, -0.699783,
		27.254768, 33.568134, 42.627529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994320, 33.101974, 42.688118>,  <27.753620, 33.602707, 43.117378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994320, 33.101974, 42.688118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.731773, 33.318813, 42.478237>,  <27.574245, 33.448917, 42.352306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.731773, 33.318813, 42.478237>,  <27.994320, 33.101974, 42.688118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731773, 33.318813, 42.478237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569089, -0.100839, -0.816069,
		-0.495302, -0.834241, -0.242317,
		-0.656364, 0.542101, -0.524704,
		27.534864, 33.481441, 42.320827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863634, 32.734230, 42.121593>,  <27.994320, 33.101974, 42.688118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863634, 32.734230, 42.121593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.785864, 33.115784, 42.030117>,  <27.739202, 33.344715, 41.975231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.785864, 33.115784, 42.030117>,  <27.863634, 32.734230, 42.121593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785864, 33.115784, 42.030117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539804, -0.090616, -0.836899,
		-0.819030, -0.286160, -0.497294,
		-0.194424, 0.953887, -0.228688,
		27.727537, 33.401951, 41.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746815, 32.699867, 41.520187>,  <27.863634, 32.734230, 42.121593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746815, 32.699867, 41.520187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803730, 33.095688, 41.529526>,  <27.837879, 33.333179, 41.535130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803730, 33.095688, 41.529526>,  <27.746815, 32.699867, 41.520187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803730, 33.095688, 41.529526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523182, -0.055163, -0.850434,
		-0.840259, 0.133220, -0.525564,
		0.142287, 0.989550, 0.023347,
		27.846416, 33.392551, 41.536530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679815, 32.936344, 40.899933>,  <27.746815, 32.699867, 41.520187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679815, 32.936344, 40.899933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.919538, 33.219223, 41.049973>,  <28.063374, 33.388950, 41.139996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.919538, 33.219223, 41.049973>,  <27.679815, 32.936344, 40.899933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919538, 33.219223, 41.049973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512015, 0.021552, -0.858706,
		-0.615360, 0.706686, -0.349180,
		0.599310, 0.707199, 0.375096,
		28.099331, 33.431381, 41.162502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908852, 33.295113, 40.313179>,  <27.679815, 32.936344, 40.899933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908852, 33.295113, 40.313179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.175535, 33.450855, 40.567390>,  <28.335545, 33.544300, 40.719917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.175535, 33.450855, 40.567390>,  <27.908852, 33.295113, 40.313179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175535, 33.450855, 40.567390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660812, 0.085572, -0.745658,
		-0.344713, 0.917102, -0.200242,
		0.666709, 0.389360, 0.635530,
		28.375547, 33.567661, 40.758049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102753, 33.996525, 40.104065>,  <27.908852, 33.295113, 40.313179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102753, 33.996525, 40.104065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.405910, 33.885921, 40.340416>,  <28.587805, 33.819557, 40.482227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.405910, 33.885921, 40.340416>,  <28.102753, 33.996525, 40.104065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405910, 33.885921, 40.340416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637330, 0.120402, -0.761127,
		0.139318, 0.953438, 0.267481,
		0.757893, -0.276512, 0.590881,
		28.633278, 33.802967, 40.517681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669371, 34.473015, 39.888638>,  <28.102753, 33.996525, 40.104065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669371, 34.473015, 39.888638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858948, 34.188000, 40.095581>,  <28.972694, 34.016991, 40.219749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858948, 34.188000, 40.095581>,  <28.669371, 34.473015, 39.888638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858948, 34.188000, 40.095581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806934, 0.116268, -0.579085,
		0.352469, 0.691932, 0.630076,
		0.473945, -0.712539, 0.517362,
		29.001131, 33.974239, 40.250790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357403, 34.776627, 40.120499>,  <28.669371, 34.473015, 39.888638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357403, 34.776627, 40.120499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356407, 34.377258, 40.098022>,  <29.355810, 34.137638, 40.084538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356407, 34.377258, 40.098022>,  <29.357403, 34.776627, 40.120499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356407, 34.377258, 40.098022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924952, 0.019057, -0.379607,
		0.380077, -0.052915, 0.923440,
		-0.002488, -0.998417, -0.056187,
		29.355661, 34.077732, 40.081165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988016, 35.235958, 40.396618>,  <29.357403, 34.776627, 40.120499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988016, 35.235958, 40.396618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089569, 35.601768, 40.270649>,  <30.150501, 35.821255, 40.195068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089569, 35.601768, 40.270649>,  <29.988016, 35.235958, 40.396618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089569, 35.601768, 40.270649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606511, 0.404152, 0.684694,
		0.753451, 0.017174, 0.657279,
		0.253882, 0.914531, -0.314925,
		30.165733, 35.876129, 40.176170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307962, 35.515724, 40.868885>,  <29.988016, 35.235958, 40.396618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307962, 35.515724, 40.868885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162636, 35.824692, 40.660515>,  <30.075439, 36.010075, 40.535492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162636, 35.824692, 40.660515>,  <30.307962, 35.515724, 40.868885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162636, 35.824692, 40.660515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560279, 0.265588, 0.784570,
		0.744372, 0.576911, 0.336280,
		-0.363315, 0.772423, -0.520927,
		30.053640, 36.056419, 40.504238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174629, 35.953396, 41.457748>,  <30.307962, 35.515724, 40.868885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174629, 35.953396, 41.457748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.978874, 36.115429, 41.148838>,  <29.861422, 36.212650, 40.963493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.978874, 36.115429, 41.148838>,  <30.174629, 35.953396, 41.457748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978874, 36.115429, 41.148838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586606, 0.502363, 0.635236,
		0.645285, 0.763898, -0.008226,
		-0.489388, 0.405083, -0.772274,
		29.832058, 36.236954, 40.917156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036875, 36.696003, 41.652058>,  <30.174629, 35.953396, 41.457748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036875, 36.696003, 41.652058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.782537, 36.638805, 41.348675>,  <29.629934, 36.604488, 41.166645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.782537, 36.638805, 41.348675>,  <30.036875, 36.696003, 41.652058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782537, 36.638805, 41.348675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751606, 0.338126, 0.566356,
		0.175469, 0.930174, -0.322470,
		-0.635845, -0.142992, -0.758455,
		29.591784, 36.595909, 41.121140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805666, 37.375015, 41.621502>,  <30.036875, 36.696003, 41.652058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805666, 37.375015, 41.621502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544622, 37.100746, 41.492538>,  <29.387997, 36.936184, 41.415161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544622, 37.100746, 41.492538>,  <29.805666, 37.375015, 41.621502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544622, 37.100746, 41.492538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624143, 0.245232, 0.741826,
		-0.429589, 0.685352, -0.588001,
		-0.652609, -0.685677, -0.322409,
		29.348839, 36.895042, 41.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210638, 37.700607, 41.598454>,  <29.805666, 37.375015, 41.621502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210638, 37.700607, 41.598454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138039, 37.309402, 41.639542>,  <29.094479, 37.074680, 41.664196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138039, 37.309402, 41.639542>,  <29.210638, 37.700607, 41.598454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138039, 37.309402, 41.639542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723572, 0.203553, 0.659552,
		-0.665959, 0.045381, -0.744606,
		-0.181498, -0.978012, 0.102722,
		29.083590, 37.015999, 41.670357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480022, 37.663712, 41.590168>,  <29.210638, 37.700607, 41.598454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480022, 37.663712, 41.590168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617300, 37.324741, 41.752197>,  <28.699667, 37.121357, 41.849415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617300, 37.324741, 41.752197>,  <28.480022, 37.663712, 41.590168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617300, 37.324741, 41.752197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768646, -0.005537, 0.639651,
		-0.539815, -0.530881, -0.653272,
		0.343196, -0.847428, 0.405071,
		28.720259, 37.070515, 41.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864498, 37.195694, 41.877308>,  <28.480022, 37.663712, 41.590168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864498, 37.195694, 41.877308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.168255, 37.008698, 42.058319>,  <28.350510, 36.896500, 42.166924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.168255, 37.008698, 42.058319>,  <27.864498, 37.195694, 41.877308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168255, 37.008698, 42.058319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596699, -0.223144, 0.770816,
		-0.259369, -0.855372, -0.448403,
		0.759393, -0.467488, 0.452524,
		28.396072, 36.868450, 42.194077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626463, 36.488605, 42.079212>,  <27.864498, 37.195694, 41.877308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626463, 36.488605, 42.079212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.930967, 36.565338, 42.326981>,  <28.113670, 36.611378, 42.475639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.930967, 36.565338, 42.326981>,  <27.626463, 36.488605, 42.079212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930967, 36.565338, 42.326981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592716, -0.181572, 0.784678,
		0.262999, -0.964485, -0.024520,
		0.761262, 0.191836, 0.619419,
		28.159346, 36.622890, 42.512806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481514, 36.037022, 42.519421>,  <27.626463, 36.488605, 42.079212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481514, 36.037022, 42.519421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.744350, 36.266582, 42.714916>,  <27.902052, 36.404320, 42.832214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.744350, 36.266582, 42.714916>,  <27.481514, 36.037022, 42.519421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744350, 36.266582, 42.714916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433368, -0.242900, 0.867866,
		0.616786, -0.782071, 0.089104,
		0.657090, 0.573902, 0.488742,
		27.941477, 36.438755, 42.861538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728996, 35.579639, 43.036499>,  <27.481514, 36.037022, 42.519421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728996, 35.579639, 43.036499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.806774, 35.949184, 43.168362>,  <27.853441, 36.170910, 43.247478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.806774, 35.949184, 43.168362>,  <27.728996, 35.579639, 43.036499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806774, 35.949184, 43.168362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365189, -0.243736, 0.898460,
		0.910400, -0.295089, 0.289990,
		0.194445, 0.923859, 0.329661,
		27.865108, 36.226341, 43.267262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153868, 35.524704, 43.641346>,  <27.728996, 35.579639, 43.036499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153868, 35.524704, 43.641346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010084, 35.896202, 43.677631>,  <27.923813, 36.119099, 43.699402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010084, 35.896202, 43.677631>,  <28.153868, 35.524704, 43.641346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010084, 35.896202, 43.677631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228079, -0.181702, 0.956538,
		0.904858, 0.323148, 0.277141,
		-0.359460, 0.928741, 0.090711,
		27.902246, 36.174824, 43.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409395, 35.795914, 44.281532>,  <28.153868, 35.524704, 43.641346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409395, 35.795914, 44.281532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.089296, 36.006542, 44.166759>,  <27.897236, 36.132919, 44.097897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.089296, 36.006542, 44.166759>,  <28.409395, 35.795914, 44.281532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089296, 36.006542, 44.166759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311348, 0.044101, 0.949272,
		0.512509, 0.848989, 0.128654,
		-0.800248, 0.526567, -0.286933,
		27.849222, 36.164513, 44.080681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386070, 36.389809, 44.714348>,  <28.409395, 35.795914, 44.281532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386070, 36.389809, 44.714348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.017540, 36.338348, 44.567593>,  <27.796421, 36.307472, 44.479542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.017540, 36.338348, 44.567593>,  <28.386070, 36.389809, 44.714348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017540, 36.338348, 44.567593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348900, -0.142761, 0.926223,
		-0.171540, 0.981360, 0.086642,
		-0.921327, -0.128655, -0.366885,
		27.741142, 36.299751, 44.457527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724348, 36.997787, 44.932423>,  <28.386070, 36.389809, 44.714348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724348, 36.997787, 44.932423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.012331, 37.162823, 45.155647>,  <29.185120, 37.261845, 45.289581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.012331, 37.162823, 45.155647>,  <28.724348, 36.997787, 44.932423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012331, 37.162823, 45.155647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656451, -0.143867, -0.740523,
		-0.225246, 0.899484, -0.374424,
		0.719956, 0.412590, 0.558062,
		29.228317, 37.286598, 45.323067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950197, 37.452675, 44.481655>,  <28.724348, 36.997787, 44.932423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950197, 37.452675, 44.481655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238995, 37.388760, 44.750935>,  <29.412273, 37.350410, 44.912502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238995, 37.388760, 44.750935>,  <28.950197, 37.452675, 44.481655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238995, 37.388760, 44.750935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673365, -0.061434, -0.736753,
		0.159083, 0.985238, 0.063242,
		0.721992, -0.159790, 0.673198,
		29.455593, 37.340824, 44.952892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578514, 37.915314, 44.363682>,  <28.950197, 37.452675, 44.481655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578514, 37.915314, 44.363682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.723639, 37.599419, 44.561546>,  <29.810713, 37.409882, 44.680264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.723639, 37.599419, 44.561546>,  <29.578514, 37.915314, 44.363682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723639, 37.599419, 44.561546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655322, -0.161164, -0.737956,
		0.662510, 0.591901, 0.459057,
		0.362813, -0.789734, 0.494659,
		29.832483, 37.362499, 44.709946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352859, 38.083038, 44.540512>,  <29.578514, 37.915314, 44.363682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352859, 38.083038, 44.540512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323696, 37.684109, 44.538330>,  <30.306198, 37.444752, 44.537022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323696, 37.684109, 44.538330>,  <30.352859, 38.083038, 44.540512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323696, 37.684109, 44.538330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815280, -0.056451, -0.576309,
		0.574459, -0.046463, 0.817214,
		-0.072909, -0.997324, -0.005452,
		30.301823, 37.384911, 44.536694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064972, 37.908958, 44.702045>,  <30.352859, 38.083038, 44.540512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064972, 37.908958, 44.702045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860659, 37.603466, 44.544147>,  <30.738071, 37.420170, 44.449409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860659, 37.603466, 44.544147>,  <31.064972, 37.908958, 44.702045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860659, 37.603466, 44.544147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723564, -0.133933, -0.677139,
		0.464280, -0.631492, 0.621017,
		-0.510783, -0.763728, -0.394742,
		30.707424, 37.374348, 44.425724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531765, 37.436245, 44.563454>,  <31.064972, 37.908958, 44.702045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531765, 37.436245, 44.563454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234915, 37.281822, 44.344288>,  <31.056805, 37.189167, 44.212788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234915, 37.281822, 44.344288>,  <31.531765, 37.436245, 44.563454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234915, 37.281822, 44.344288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670208, -0.437898, -0.599222,
		-0.008598, -0.811915, 0.583712,
		-0.742124, -0.386056, -0.547917,
		31.012278, 37.166004, 44.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802120, 36.830345, 44.362183>,  <31.531765, 37.436245, 44.563454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802120, 36.830345, 44.362183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514351, 36.932911, 44.103977>,  <31.341690, 36.994450, 43.949055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514351, 36.932911, 44.103977>,  <31.802120, 36.830345, 44.362183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514351, 36.932911, 44.103977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597778, -0.244667, -0.763413,
		-0.353683, -0.935089, 0.022741,
		-0.719423, 0.256412, -0.645510,
		31.298525, 37.009834, 43.910324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841379, 36.349220, 43.845047>,  <31.802120, 36.830345, 44.362183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841379, 36.349220, 43.845047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 36.639908, 43.651371>,  <31.529520, 36.814320, 43.535164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 36.639908, 43.651371>,  <31.841379, 36.349220, 43.845047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646467, 36.639908, 43.651371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573430, -0.151884, -0.805053,
		-0.658587, -0.669933, -0.342713,
		-0.487279, 0.726719, -0.484189,
		31.500284, 36.857922, 43.506115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912432, 36.190659, 43.188599>,  <31.841379, 36.349220, 43.845047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912432, 36.190659, 43.188599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822392, 36.579662, 43.164738>,  <31.768368, 36.813065, 43.150421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822392, 36.579662, 43.164738>,  <31.912432, 36.190659, 43.188599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822392, 36.579662, 43.164738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700601, 0.119011, -0.703559,
		-0.677117, -0.200164, -0.708129,
		-0.225102, 0.972508, -0.059651,
		31.754860, 36.871414, 43.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849253, 36.235291, 42.568619>,  <31.912432, 36.190659, 43.188599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849253, 36.235291, 42.568619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867126, 36.624924, 42.657307>,  <31.877851, 36.858704, 42.710518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867126, 36.624924, 42.657307>,  <31.849253, 36.235291, 42.568619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867126, 36.624924, 42.657307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415106, 0.183768, -0.891020,
		-0.908675, 0.131851, -0.396138,
		0.044684, 0.974087, 0.221717,
		31.880531, 36.917149, 42.723824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633682, 36.657551, 42.006950>,  <31.849253, 36.235291, 42.568619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633682, 36.657551, 42.006950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911816, 36.847919, 42.222363>,  <32.078697, 36.962139, 42.351608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911816, 36.847919, 42.222363>,  <31.633682, 36.657551, 42.006950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911816, 36.847919, 42.222363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597139, 0.034385, -0.801400,
		-0.399921, 0.878816, -0.260282,
		0.695333, 0.475921, 0.538527,
		32.120415, 36.990696, 42.383919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022125, 37.087524, 41.549343>,  <31.633682, 36.657551, 42.006950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022125, 37.087524, 41.549343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240067, 37.105244, 41.884289>,  <32.370831, 37.115875, 42.085255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240067, 37.105244, 41.884289>,  <32.022125, 37.087524, 41.549343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240067, 37.105244, 41.884289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820434, 0.178186, -0.543266,
		-0.173271, 0.982999, 0.060742,
		0.544854, 0.044297, 0.837360,
		32.403522, 37.118534, 42.135498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280624, 37.836426, 41.670788>,  <32.022125, 37.087524, 41.549343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280624, 37.836426, 41.670788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516991, 37.561256, 41.839352>,  <32.658810, 37.396156, 41.940491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516991, 37.561256, 41.839352>,  <32.280624, 37.836426, 41.670788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516991, 37.561256, 41.839352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767016, 0.317186, -0.557745,
		0.250020, 0.652806, 0.715077,
		0.590912, -0.687923, 0.421409,
		32.694263, 37.354881, 41.965775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958767, 38.048225, 41.687141>,  <32.280624, 37.836426, 41.670788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958767, 38.048225, 41.687141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041481, 37.658455, 41.722328>,  <33.091110, 37.424595, 41.743443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041481, 37.658455, 41.722328>,  <32.958767, 38.048225, 41.687141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041481, 37.658455, 41.722328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835003, 0.128909, -0.534933,
		0.509910, 0.184074, 0.840302,
		0.206789, -0.974423, 0.087970,
		33.103519, 37.366127, 41.748718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.867132, 27.659412, 41.612766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487875, 27.782320, 41.580250>,  <25.260321, 27.856064, 41.560738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487875, 27.782320, 41.580250>,  <25.867132, 27.659412, 41.612766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487875, 27.782320, 41.580250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255226, 0.583607, -0.770885,
		-0.189424, -0.751658, -0.631766,
		-0.948145, 0.307267, -0.081294,
		25.203432, 27.874500, 41.555862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659136, 27.602783, 40.957474>,  <25.867132, 27.659412, 41.612766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659136, 27.602783, 40.957474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.408745, 27.877298, 41.105618>,  <25.258511, 28.042007, 41.194504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.408745, 27.877298, 41.105618>,  <25.659136, 27.602783, 40.957474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408745, 27.877298, 41.105618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106996, 0.546003, -0.830922,
		-0.772467, -0.480511, -0.415216,
		-0.625977, 0.686287, 0.370357,
		25.220951, 28.083185, 41.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293486, 27.716831, 40.415276>,  <25.659136, 27.602783, 40.957474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293486, 27.716831, 40.415276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272150, 28.027504, 40.666328>,  <25.259348, 28.213907, 40.816959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.272150, 28.027504, 40.666328>,  <25.293486, 27.716831, 40.415276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272150, 28.027504, 40.666328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036863, 0.629628, -0.776022,
		-0.997896, -0.018257, -0.062215,
		-0.053340, 0.776682, 0.627630,
		25.256147, 28.260509, 40.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699659, 28.042383, 40.107006>,  <25.293486, 27.716831, 40.415276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699659, 28.042383, 40.107006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.926905, 28.291073, 40.322678>,  <25.063251, 28.440287, 40.452080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.926905, 28.291073, 40.322678>,  <24.699659, 28.042383, 40.107006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926905, 28.291073, 40.322678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058106, 0.623233, -0.779875,
		-0.820898, 0.474385, 0.317940,
		0.568111, 0.621723, 0.539175,
		25.097338, 28.477591, 40.484428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362928, 28.701738, 40.108841>,  <24.699659, 28.042383, 40.107006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362928, 28.701738, 40.108841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.741268, 28.780243, 40.212261>,  <24.968273, 28.827345, 40.274315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.741268, 28.780243, 40.212261>,  <24.362928, 28.701738, 40.108841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741268, 28.780243, 40.212261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021546, 0.756800, -0.653292,
		-0.323885, 0.623488, 0.711591,
		0.945851, 0.196260, 0.258549,
		25.025024, 28.839121, 40.289825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.375765, 29.408344, 40.063442>,  <24.362928, 28.701738, 40.108841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.375765, 29.408344, 40.063442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.760069, 29.297565, 40.069641>,  <24.990652, 29.231098, 40.073360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.760069, 29.297565, 40.069641>,  <24.375765, 29.408344, 40.063442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760069, 29.297565, 40.069641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211158, 0.694008, -0.688306,
		0.179869, 0.664569, 0.725255,
		0.960760, -0.276948, 0.015499,
		25.048296, 29.214481, 40.074291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838442, 29.995699, 40.151688>,  <24.375765, 29.408344, 40.063442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838442, 29.995699, 40.151688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.070969, 29.730434, 39.963097>,  <25.210485, 29.571276, 39.849941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.070969, 29.730434, 39.963097>,  <24.838442, 29.995699, 40.151688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070969, 29.730434, 39.963097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347470, 0.726270, -0.593124,
		0.735755, 0.180970, 0.652621,
		0.581317, -0.663161, -0.471475,
		25.245363, 29.531487, 39.821655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428787, 30.287014, 40.106815>,  <24.838442, 29.995699, 40.151688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428787, 30.287014, 40.106815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.460602, 30.034143, 39.798523>,  <25.479691, 29.882421, 39.613548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.460602, 30.034143, 39.798523>,  <25.428787, 30.287014, 40.106815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460602, 30.034143, 39.798523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438237, 0.716632, -0.542574,
		0.895334, -0.294608, 0.334041,
		0.079538, -0.632174, -0.770733,
		25.484463, 29.844492, 39.567303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935896, 30.538246, 39.595913>,  <25.428787, 30.287014, 40.106815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935896, 30.538246, 39.595913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.721909, 30.286938, 39.369965>,  <25.593515, 30.136152, 39.234394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.721909, 30.286938, 39.369965>,  <25.935896, 30.538246, 39.595913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721909, 30.286938, 39.369965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293876, 0.488467, -0.821606,
		0.792115, -0.605536, -0.076680,
		-0.534968, -0.628272, -0.564875,
		25.561419, 30.098455, 39.200500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318333, 30.565990, 38.997581>,  <25.935896, 30.538246, 39.595913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318333, 30.565990, 38.997581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984518, 30.393404, 38.860535>,  <25.784229, 30.289852, 38.778305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984518, 30.393404, 38.860535>,  <26.318333, 30.565990, 38.997581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984518, 30.393404, 38.860535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015943, 0.640516, -0.767779,
		0.550724, -0.635276, -0.541412,
		-0.834535, -0.431466, -0.342619,
		25.734158, 30.263964, 38.757748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363529, 30.534437, 38.347897>,  <26.318333, 30.565990, 38.997581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363529, 30.534437, 38.347897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.965891, 30.505316, 38.380077>,  <25.727308, 30.487843, 38.399384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.965891, 30.505316, 38.380077>,  <26.363529, 30.534437, 38.347897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965891, 30.505316, 38.380077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106403, 0.508986, -0.854173,
		0.021240, -0.857690, -0.513728,
		-0.994097, -0.072804, 0.080450,
		25.667662, 30.483475, 38.404213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141167, 30.286062, 37.729404>,  <26.363529, 30.534437, 38.347897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141167, 30.286062, 37.729404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820309, 30.472822, 37.878304>,  <25.627794, 30.584879, 37.967644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820309, 30.472822, 37.878304>,  <26.141167, 30.286062, 37.729404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820309, 30.472822, 37.878304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086398, 0.526082, -0.846034,
		-0.590846, -0.710803, -0.381654,
		-0.802145, 0.466901, 0.372245,
		25.579666, 30.612892, 37.989979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773268, 30.381943, 37.151791>,  <26.141167, 30.286062, 37.729404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773268, 30.381943, 37.151791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.589808, 30.622076, 37.413857>,  <25.479731, 30.766155, 37.571095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.589808, 30.622076, 37.413857>,  <25.773268, 30.381943, 37.151791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589808, 30.622076, 37.413857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042123, 0.721770, -0.690850,
		-0.887617, -0.344457, -0.305753,
		-0.458651, 0.600332, 0.655165,
		25.452211, 30.802176, 37.610405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151594, 30.571018, 36.806976>,  <25.773268, 30.381943, 37.151791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151594, 30.571018, 36.806976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.287907, 30.837994, 37.071823>,  <25.369694, 30.998178, 37.230732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.287907, 30.837994, 37.071823>,  <25.151594, 30.571018, 36.806976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287907, 30.837994, 37.071823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209911, 0.740508, -0.638424,
		-0.916409, 0.078579, 0.392454,
		0.340782, 0.667437, 0.662114,
		25.390141, 31.038225, 37.270458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.618666, 31.145441, 36.809132>,  <25.151594, 30.571018, 36.806976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.618666, 31.145441, 36.809132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.952442, 31.287052, 36.978069>,  <25.152708, 31.372019, 37.079430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.952442, 31.287052, 36.978069>,  <24.618666, 31.145441, 36.809132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952442, 31.287052, 36.978069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010683, 0.755830, -0.654681,
		-0.550992, 0.550805, 0.626914,
		0.834442, 0.354027, 0.422340,
		25.202774, 31.393261, 37.104771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510279, 31.868610, 36.934074>,  <24.618666, 31.145441, 36.809132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510279, 31.868610, 36.934074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.909525, 31.844679, 36.939526>,  <25.149073, 31.830320, 36.942795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.909525, 31.844679, 36.939526>,  <24.510279, 31.868610, 36.934074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909525, 31.844679, 36.939526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059416, 0.886910, -0.458105,
		0.015321, 0.458052, 0.888794,
		0.998116, -0.059827, 0.013627,
		25.208960, 31.826731, 36.943615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635693, 32.526932, 36.959545>,  <24.510279, 31.868610, 36.934074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635693, 32.526932, 36.959545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.977577, 32.353104, 36.845974>,  <25.182709, 32.248806, 36.777832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.977577, 32.353104, 36.845974>,  <24.635693, 32.526932, 36.959545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977577, 32.353104, 36.845974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309171, 0.865528, -0.394049,
		0.416988, 0.249017, 0.874135,
		0.854713, -0.434571, -0.283926,
		25.233992, 32.222733, 36.760796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216116, 32.956154, 37.132481>,  <24.635693, 32.526932, 36.959545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216116, 32.956154, 37.132481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.333498, 32.720676, 36.831196>,  <25.403927, 32.579391, 36.650425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.333498, 32.720676, 36.831196>,  <25.216116, 32.956154, 37.132481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333498, 32.720676, 36.831196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418931, 0.787406, -0.452203,
		0.859290, -0.182840, 0.477693,
		0.293457, -0.588694, -0.753208,
		25.421535, 32.544067, 36.605232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968815, 33.209538, 36.949825>,  <25.216116, 32.956154, 37.132481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968815, 33.209538, 36.949825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808352, 33.000904, 36.648621>,  <25.712074, 32.875725, 36.467899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808352, 33.000904, 36.648621>,  <25.968815, 33.209538, 36.949825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808352, 33.000904, 36.648621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419853, 0.625919, -0.657228,
		0.814123, -0.579804, -0.032102,
		-0.401157, -0.521587, -0.753008,
		25.688004, 32.844429, 36.422718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498783, 33.089798, 36.478546>,  <25.968815, 33.209538, 36.949825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498783, 33.089798, 36.478546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151371, 33.067429, 36.281559>,  <25.942924, 33.054008, 36.163364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151371, 33.067429, 36.281559>,  <26.498783, 33.089798, 36.478546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151371, 33.067429, 36.281559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381335, 0.559311, -0.736041,
		0.316608, -0.827070, -0.464452,
		-0.868529, -0.055924, -0.492472,
		25.890812, 33.050652, 36.133816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721048, 33.022808, 35.853191>,  <26.498783, 33.089798, 36.478546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721048, 33.022808, 35.853191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344410, 33.149239, 35.806725>,  <26.118427, 33.225098, 35.778843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344410, 33.149239, 35.806725>,  <26.721048, 33.022808, 35.853191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344410, 33.149239, 35.806725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319805, 0.731299, -0.602434,
		-0.105461, -0.604399, -0.789670,
		-0.941596, 0.316074, -0.116166,
		26.061932, 33.244061, 35.771873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262121, 32.510872, 36.031254>,  <26.721048, 33.022808, 35.853191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262121, 32.510872, 36.031254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635326, 32.389248, 36.108234>,  <27.859249, 32.316273, 36.154423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635326, 32.389248, 36.108234>,  <27.262121, 32.510872, 36.031254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635326, 32.389248, 36.108234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328689, -0.937789, 0.111870,
		0.146463, -0.167632, -0.974909,
		0.933012, -0.304057, 0.192451,
		27.915230, 32.298031, 36.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265165, 31.879057, 35.751667>,  <27.262121, 32.510872, 36.031254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265165, 31.879057, 35.751667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605692, 31.851244, 35.959675>,  <27.810007, 31.834557, 36.084480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605692, 31.851244, 35.959675>,  <27.265165, 31.879057, 35.751667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605692, 31.851244, 35.959675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214700, -0.950557, 0.224377,
		0.478710, -0.302665, -0.824154,
		0.851317, -0.069535, 0.520024,
		27.861088, 31.830383, 36.115681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728498, 31.326139, 35.422935>,  <27.265165, 31.879057, 35.751667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728498, 31.326139, 35.422935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813217, 31.378942, 35.810280>,  <27.864048, 31.410624, 36.042686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.813217, 31.378942, 35.810280>,  <27.728498, 31.326139, 35.422935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813217, 31.378942, 35.810280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150097, -0.974687, 0.165697,
		0.965720, -0.180441, -0.186619,
		0.211794, 0.132006, 0.968358,
		27.876755, 31.418545, 36.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253651, 30.818859, 35.609852>,  <27.728498, 31.326139, 35.422935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253651, 30.818859, 35.609852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102816, 30.904799, 35.970219>,  <28.012314, 30.956362, 36.186440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102816, 30.904799, 35.970219>,  <28.253651, 30.818859, 35.609852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102816, 30.904799, 35.970219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044883, -0.975819, 0.213923,
		0.925089, 0.040232, 0.377614,
		-0.377089, 0.214846, 0.900913,
		27.989689, 30.969252, 36.240494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632099, 30.322716, 36.046719>,  <28.253651, 30.818859, 35.609852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632099, 30.322716, 36.046719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316050, 30.454428, 36.253517>,  <28.126421, 30.533455, 36.377594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316050, 30.454428, 36.253517>,  <28.632099, 30.322716, 36.046719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316050, 30.454428, 36.253517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064507, -0.883439, 0.464085,
		0.609546, 0.333334, 0.719265,
		-0.790122, 0.329279, 0.516995,
		28.079014, 30.553211, 36.408615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782444, 30.286585, 36.834007>,  <28.632099, 30.322716, 36.046719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782444, 30.286585, 36.834007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385036, 30.273943, 36.790337>,  <28.146591, 30.266357, 36.764133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385036, 30.273943, 36.790337>,  <28.782444, 30.286585, 36.834007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385036, 30.273943, 36.790337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024151, -0.879914, 0.474519,
		-0.111060, 0.474081, 0.873449,
		-0.993520, -0.031605, -0.109173,
		28.086981, 30.264462, 36.757584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593885, 29.971529, 37.411945>,  <28.782444, 30.286585, 36.834007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593885, 29.971529, 37.411945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262796, 29.974503, 37.187508>,  <28.064144, 29.976286, 37.052845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262796, 29.974503, 37.187508>,  <28.593885, 29.971529, 37.411945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262796, 29.974503, 37.187508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275243, -0.876740, 0.394421,
		-0.488999, 0.480907, 0.727742,
		-0.827720, 0.007434, -0.561092,
		28.014481, 29.976732, 37.019180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049356, 29.739517, 37.840996>,  <28.593885, 29.971529, 37.411945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049356, 29.739517, 37.840996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920282, 29.673771, 37.468147>,  <27.842838, 29.634323, 37.244438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920282, 29.673771, 37.468147>,  <28.049356, 29.739517, 37.840996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920282, 29.673771, 37.468147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320184, -0.907792, 0.270916,
		-0.890705, 0.385872, 0.240306,
		-0.322687, -0.164364, -0.932125,
		27.823477, 29.624462, 37.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355446, 29.673761, 37.893875>,  <28.049356, 29.739517, 37.840996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355446, 29.673761, 37.893875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426954, 29.488865, 37.546455>,  <27.469860, 29.377926, 37.338005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426954, 29.488865, 37.546455>,  <27.355446, 29.673761, 37.893875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426954, 29.488865, 37.546455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554772, -0.776412, 0.299019,
		-0.812569, 0.428388, -0.395241,
		0.178773, -0.462243, -0.868546,
		27.480587, 29.350193, 37.285892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686514, 29.471846, 37.454342>,  <27.355446, 29.673761, 37.893875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686514, 29.471846, 37.454342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991928, 29.222738, 37.386013>,  <27.175177, 29.073275, 37.345016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991928, 29.222738, 37.386013>,  <26.686514, 29.471846, 37.454342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991928, 29.222738, 37.386013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561966, -0.771096, 0.299342,
		-0.318137, -0.132563, -0.938731,
		0.763533, -0.622766, -0.170818,
		27.220987, 29.035908, 37.334766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352968, 28.850508, 37.219109>,  <26.686514, 29.471846, 37.454342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352968, 28.850508, 37.219109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717403, 28.732365, 37.334126>,  <26.936066, 28.661480, 37.403137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717403, 28.732365, 37.334126>,  <26.352968, 28.850508, 37.219109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717403, 28.732365, 37.334126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353237, -0.918961, 0.175311,
		0.212462, -0.261295, -0.941586,
		0.911089, -0.295356, 0.287544,
		26.990730, 28.643759, 37.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241711, 28.219055, 37.150059>,  <26.352968, 28.850508, 37.219109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241711, 28.219055, 37.150059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580872, 28.234297, 37.361572>,  <26.784369, 28.243443, 37.488480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580872, 28.234297, 37.361572>,  <26.241711, 28.219055, 37.150059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580872, 28.234297, 37.361572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209212, -0.892415, 0.399782,
		0.487125, -0.449604, -0.748709,
		0.847903, 0.038105, 0.528780,
		26.835243, 28.245728, 37.520206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531469, 27.512047, 37.126022>,  <26.241711, 28.219055, 37.150059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531469, 27.512047, 37.126022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707062, 27.696833, 37.434277>,  <26.812418, 27.807705, 37.619228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707062, 27.696833, 37.434277>,  <26.531469, 27.512047, 37.126022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707062, 27.696833, 37.434277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093460, -0.829569, 0.550528,
		0.893623, -0.313695, -0.320989,
		0.438981, 0.461964, 0.770640,
		26.838757, 27.835423, 37.665470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089224, 27.076855, 37.393368>,  <26.531469, 27.512047, 37.126022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089224, 27.076855, 37.393368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008373, 27.330608, 37.691818>,  <26.959864, 27.482861, 37.870888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008373, 27.330608, 37.691818>,  <27.089224, 27.076855, 37.393368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008373, 27.330608, 37.691818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135369, -0.772635, 0.620250,
		0.969959, 0.024366, 0.242046,
		-0.202126, 0.634383, 0.746125,
		26.947735, 27.520924, 37.915657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360859, 26.773069, 38.023338>,  <27.089224, 27.076855, 37.393368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360859, 26.773069, 38.023338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.114840, 27.051598, 38.171314>,  <26.967228, 27.218716, 38.260098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.114840, 27.051598, 38.171314>,  <27.360859, 26.773069, 38.023338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114840, 27.051598, 38.171314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449543, -0.695117, 0.561003,
		0.647788, 0.178741, 0.740556,
		-0.615047, 0.696322, 0.369936,
		26.930326, 27.260494, 38.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276535, 26.547003, 38.763683>,  <27.360859, 26.773069, 38.023338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276535, 26.547003, 38.763683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974001, 26.801624, 38.703346>,  <26.792480, 26.954397, 38.667145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974001, 26.801624, 38.703346>,  <27.276535, 26.547003, 38.763683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974001, 26.801624, 38.703346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605112, -0.593127, 0.531075,
		0.248588, 0.492949, 0.833790,
		-0.756336, 0.636555, -0.150845,
		26.747101, 26.992590, 38.658092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981129, 26.827129, 39.378799>,  <27.276535, 26.547003, 38.763683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981129, 26.827129, 39.378799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.695213, 26.826239, 39.099064>,  <26.523664, 26.825705, 38.931221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.695213, 26.826239, 39.099064>,  <26.981129, 26.827129, 39.378799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695213, 26.826239, 39.099064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543956, -0.626727, 0.557966,
		-0.439536, 0.779236, 0.446765,
		-0.714787, -0.002226, -0.699339,
		26.480778, 26.825571, 38.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447752, 26.920597, 39.703064>,  <26.981129, 26.827129, 39.378799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447752, 26.920597, 39.703064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.286539, 26.756136, 39.376011>,  <26.189812, 26.657459, 39.179779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.286539, 26.756136, 39.376011>,  <26.447752, 26.920597, 39.703064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286539, 26.756136, 39.376011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589463, -0.566783, 0.575578,
		-0.700070, 0.713938, -0.013928,
		-0.403033, -0.411155, -0.817628,
		26.165628, 26.632790, 39.130722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730583, 26.812344, 39.920872>,  <26.447752, 26.920597, 39.703064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730583, 26.812344, 39.920872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.713608, 26.613779, 39.574051>,  <25.703423, 26.494640, 39.365959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.713608, 26.613779, 39.574051>,  <25.730583, 26.812344, 39.920872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713608, 26.613779, 39.574051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511997, -0.734411, 0.445533,
		-0.857938, 0.462835, -0.222993,
		-0.042440, -0.496411, -0.867049,
		25.700876, 26.464855, 39.313934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926592, 26.744722, 39.809254>,  <25.730583, 26.812344, 39.920872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926592, 26.744722, 39.809254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.144886, 26.472198, 39.614117>,  <25.275862, 26.308685, 39.497032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.144886, 26.472198, 39.614117>,  <24.926592, 26.744722, 39.809254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144886, 26.472198, 39.614117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459512, -0.730162, 0.505681,
		-0.700727, -0.051801, -0.711546,
		0.545738, -0.681308, -0.487841,
		25.308607, 26.267805, 39.467762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.469465, 26.224188, 39.559891>,  <24.926592, 26.744722, 39.809254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.469465, 26.224188, 39.559891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.817556, 26.028654, 39.535419>,  <25.026411, 25.911333, 39.520737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.817556, 26.028654, 39.535419>,  <24.469465, 26.224188, 39.559891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817556, 26.028654, 39.535419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389383, -0.758564, 0.522458,
		-0.301801, -0.430837, -0.850468,
		0.870228, -0.488836, -0.061175,
		25.078625, 25.882004, 39.517067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.701580, 36.881256, 46.859001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534550, 36.518349, 46.839046>,  <32.434330, 36.300602, 46.827072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534550, 36.518349, 46.839046>,  <32.701580, 36.881256, 46.859001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534550, 36.518349, 46.839046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680172, 0.275702, 0.679231,
		-0.602493, 0.317562, -0.732227,
		-0.417575, -0.907272, -0.049888,
		32.409279, 36.246166, 46.824081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994747, 37.009899, 46.966587>,  <32.701580, 36.881256, 46.859001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994747, 37.009899, 46.966587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001854, 36.620155, 47.056309>,  <32.006119, 36.386311, 47.110142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001854, 36.620155, 47.056309>,  <31.994747, 37.009899, 46.966587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001854, 36.620155, 47.056309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724004, 0.142186, 0.674982,
		-0.689567, -0.174393, -0.702911,
		0.017768, -0.974356, 0.224308,
		32.007183, 36.327850, 47.123600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332167, 36.893089, 46.971779>,  <31.994747, 37.009899, 46.966587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332167, 36.893089, 46.971779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504284, 36.589325, 47.166981>,  <31.607553, 36.407066, 47.284100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504284, 36.589325, 47.166981>,  <31.332167, 36.893089, 46.971779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504284, 36.589325, 47.166981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729890, 0.025393, 0.683093,
		-0.531140, -0.650116, -0.543359,
		0.430293, -0.759410, 0.488000,
		31.633371, 36.361504, 47.313381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812658, 36.392410, 47.172249>,  <31.332167, 36.893089, 46.971779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812658, 36.392410, 47.172249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.126949, 36.327240, 47.410942>,  <31.315523, 36.288139, 47.554157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.126949, 36.327240, 47.410942>,  <30.812658, 36.392410, 47.172249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126949, 36.327240, 47.410942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602969, 0.013576, 0.797649,
		-0.138056, -0.986545, -0.087571,
		0.785728, -0.162923, 0.596731,
		31.362667, 36.278362, 47.589962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596853, 35.911205, 47.550671>,  <30.812658, 36.392410, 47.172249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596853, 35.911205, 47.550671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901211, 36.047535, 47.771534>,  <31.083826, 36.129333, 47.904053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901211, 36.047535, 47.771534>,  <30.596853, 35.911205, 47.550671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901211, 36.047535, 47.771534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603806, 0.060298, 0.794847,
		0.237608, -0.938192, 0.251672,
		0.760895, 0.340823, 0.552159,
		31.129478, 36.149780, 47.937183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490368, 35.516747, 48.217754>,  <30.596853, 35.911205, 47.550671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490368, 35.516747, 48.217754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716106, 35.839058, 48.289570>,  <30.851549, 36.032444, 48.332661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716106, 35.839058, 48.289570>,  <30.490368, 35.516747, 48.217754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716106, 35.839058, 48.289570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271652, -0.024110, 0.962093,
		0.779562, -0.591727, 0.205284,
		0.564348, 0.805777, 0.179539,
		30.885410, 36.080791, 48.343433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916662, 35.345501, 48.824337>,  <30.490368, 35.516747, 48.217754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916662, 35.345501, 48.824337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898815, 35.742546, 48.779213>,  <30.888107, 35.980774, 48.752140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898815, 35.742546, 48.779213>,  <30.916662, 35.345501, 48.824337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898815, 35.742546, 48.779213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390707, 0.086588, 0.916434,
		0.919433, 0.084963, 0.383958,
		-0.044617, 0.992615, -0.112808,
		30.885429, 36.040329, 48.745369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171234, 35.581085, 49.445251>,  <30.916662, 35.345501, 48.824337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171234, 35.581085, 49.445251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965090, 35.898079, 49.314793>,  <30.841404, 36.088276, 49.236519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965090, 35.898079, 49.314793>,  <31.171234, 35.581085, 49.445251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965090, 35.898079, 49.314793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438139, 0.083418, 0.895028,
		0.736503, 0.604159, 0.304228,
		-0.515361, 0.792486, -0.326143,
		30.810482, 36.135826, 49.216949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221445, 36.132015, 50.043137>,  <31.171234, 35.581085, 49.445251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221445, 36.132015, 50.043137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914663, 36.246410, 49.813354>,  <30.730595, 36.315048, 49.675488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914663, 36.246410, 49.813354>,  <31.221445, 36.132015, 50.043137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914663, 36.246410, 49.813354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536668, 0.204927, 0.818530,
		0.351808, 0.936065, -0.003691,
		-0.766954, 0.285985, -0.574451,
		30.684578, 36.332207, 49.641018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013680, 36.870434, 50.220894>,  <31.221445, 36.132015, 50.043137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013680, 36.870434, 50.220894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.696169, 36.720051, 50.029655>,  <30.505663, 36.629822, 49.914913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.696169, 36.720051, 50.029655>,  <31.013680, 36.870434, 50.220894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696169, 36.720051, 50.029655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576499, 0.214584, 0.788417,
		-0.193819, 0.901449, -0.387071,
		-0.793777, -0.375956, -0.478095,
		30.458036, 36.607265, 49.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543892, 37.317249, 50.320763>,  <31.013680, 36.870434, 50.220894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543892, 37.317249, 50.320763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307264, 37.010361, 50.221630>,  <30.165289, 36.826229, 50.162151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307264, 37.010361, 50.221630>,  <30.543892, 37.317249, 50.320763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307264, 37.010361, 50.221630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528885, 0.137255, 0.837521,
		-0.608547, 0.626525, -0.486967,
		-0.591567, -0.767220, -0.247834,
		30.129795, 36.780193, 50.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788815, 37.583683, 50.292912>,  <30.543892, 37.317249, 50.320763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788815, 37.583683, 50.292912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796141, 37.187336, 50.346336>,  <29.800537, 36.949528, 50.378391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796141, 37.187336, 50.346336>,  <29.788815, 37.583683, 50.292912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796141, 37.187336, 50.346336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334052, 0.119840, 0.934905,
		-0.942377, -0.061739, -0.328808,
		0.018316, -0.990872, 0.133558,
		29.801636, 36.890076, 50.386402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157667, 37.409920, 50.673561>,  <29.788815, 37.583683, 50.292912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157667, 37.409920, 50.673561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442961, 37.130989, 50.701939>,  <29.614138, 36.963631, 50.718967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442961, 37.130989, 50.701939>,  <29.157667, 37.409920, 50.673561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442961, 37.130989, 50.701939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208382, -0.114309, 0.971345,
		-0.669235, -0.707579, -0.226840,
		0.713233, -0.697327, 0.070947,
		29.656931, 36.921791, 50.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509201, 37.734657, 51.079418>,  <29.157667, 37.409920, 50.673561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509201, 37.734657, 51.079418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396015, 37.485756, 50.787464>,  <28.328104, 37.336414, 50.612293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396015, 37.485756, 50.787464>,  <28.509201, 37.734657, 51.079418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396015, 37.485756, 50.787464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663228, 0.422785, -0.617561,
		0.692864, -0.658827, 0.293064,
		-0.282962, -0.622254, -0.729885,
		28.311127, 37.299080, 50.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713411, 37.838161, 50.888145>,  <28.509201, 37.734657, 51.079418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713411, 37.838161, 50.888145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449848, 38.070648, 50.697136>,  <27.291710, 38.210140, 50.582531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449848, 38.070648, 50.697136>,  <27.713411, 37.838161, 50.888145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449848, 38.070648, 50.697136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497019, -0.140112, -0.856353,
		-0.564633, -0.801596, -0.196554,
		-0.658910, 0.581216, -0.477520,
		27.252174, 38.245014, 50.553879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583572, 37.536903, 50.271870>,  <27.713411, 37.838161, 50.888145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583572, 37.536903, 50.271870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.511219, 37.926178, 50.215046>,  <27.467806, 38.159744, 50.180954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.511219, 37.926178, 50.215046>,  <27.583572, 37.536903, 50.271870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511219, 37.926178, 50.215046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494906, -0.034751, -0.868252,
		-0.849911, -0.227358, -0.475352,
		-0.180885, 0.973191, -0.142056,
		27.456953, 38.218136, 50.172428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130249, 37.527050, 49.601723>,  <27.583572, 37.536903, 50.271870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130249, 37.527050, 49.601723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.291540, 37.891060, 49.640224>,  <27.388315, 38.109467, 49.663326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.291540, 37.891060, 49.640224>,  <27.130249, 37.527050, 49.601723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291540, 37.891060, 49.640224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386692, -0.074116, -0.919226,
		-0.829384, 0.407877, -0.381784,
		0.403227, 0.910024, 0.096252,
		27.412508, 38.164066, 49.669102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992903, 37.853226, 48.929920>,  <27.130249, 37.527050, 49.601723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992903, 37.853226, 48.929920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.287863, 38.055950, 49.108528>,  <27.464838, 38.177586, 49.215694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.287863, 38.055950, 49.108528>,  <26.992903, 37.853226, 48.929920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287863, 38.055950, 49.108528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422349, 0.169938, -0.890361,
		-0.527128, 0.845140, -0.088739,
		0.737399, 0.506813, 0.446524,
		27.509083, 38.207993, 49.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044001, 38.503510, 48.522400>,  <26.992903, 37.853226, 48.929920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044001, 38.503510, 48.522400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.399021, 38.473717, 48.704262>,  <27.612034, 38.455841, 48.813377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.399021, 38.473717, 48.704262>,  <27.044001, 38.503510, 48.522400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399021, 38.473717, 48.704262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454442, 0.303802, -0.837369,
		-0.075756, 0.949819, 0.303487,
		0.887549, -0.074482, 0.454653,
		27.665285, 38.451374, 48.840656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446625, 38.977699, 48.223583>,  <27.044001, 38.503510, 48.522400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446625, 38.977699, 48.223583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.713179, 38.735432, 48.397522>,  <27.873112, 38.590069, 48.501884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.713179, 38.735432, 48.397522>,  <27.446625, 38.977699, 48.223583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713179, 38.735432, 48.397522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536518, -0.015467, -0.843747,
		0.517761, 0.795563, 0.314648,
		0.666387, -0.605674, 0.434842,
		27.913095, 38.553730, 48.527973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081417, 39.109623, 47.916294>,  <27.446625, 38.977699, 48.223583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081417, 39.109623, 47.916294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.186237, 38.760063, 48.080063>,  <28.249130, 38.550327, 48.178322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.186237, 38.760063, 48.080063>,  <28.081417, 39.109623, 47.916294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186237, 38.760063, 48.080063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478289, -0.250869, -0.841608,
		0.838194, 0.416365, 0.352237,
		0.262051, -0.873902, 0.409420,
		28.264853, 38.497894, 48.202888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812582, 39.086597, 47.901123>,  <28.081417, 39.109623, 47.916294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812582, 39.086597, 47.901123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.689516, 38.707798, 47.938065>,  <28.615677, 38.480518, 47.960232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.689516, 38.707798, 47.938065>,  <28.812582, 39.086597, 47.901123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689516, 38.707798, 47.938065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501469, -0.243874, -0.830093,
		0.808624, -0.209074, 0.549923,
		-0.307663, -0.947002, 0.092358,
		28.597218, 38.423698, 47.965771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391808, 38.587799, 47.803867>,  <28.812582, 39.086597, 47.901123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391808, 38.587799, 47.803867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.069067, 38.357307, 47.751789>,  <28.875423, 38.219013, 47.720543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.069067, 38.357307, 47.751789>,  <29.391808, 38.587799, 47.803867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069067, 38.357307, 47.751789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405612, -0.380128, -0.831253,
		0.429499, -0.723509, 0.540432,
		-0.806852, -0.576227, -0.130199,
		28.827011, 38.184441, 47.712730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645075, 37.973137, 47.609543>,  <29.391808, 38.587799, 47.803867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645075, 37.973137, 47.609543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267271, 37.942863, 47.481686>,  <29.040588, 37.924698, 47.404972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267271, 37.942863, 47.481686>,  <29.645075, 37.973137, 47.609543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267271, 37.942863, 47.481686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297982, -0.606903, -0.736801,
		-0.138231, -0.791164, 0.595778,
		-0.944510, -0.075683, -0.319646,
		28.983917, 37.920158, 47.385792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561981, 37.227840, 47.193954>,  <29.645075, 37.973137, 47.609543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561981, 37.227840, 47.193954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227139, 37.419735, 47.088802>,  <29.026232, 37.534870, 47.025711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227139, 37.419735, 47.088802>,  <29.561981, 37.227840, 47.193954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227139, 37.419735, 47.088802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063723, -0.391766, -0.917856,
		-0.543312, -0.785097, 0.297381,
		-0.837109, 0.479732, -0.262880,
		28.976006, 37.563656, 47.009937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256227, 36.739445, 46.823517>,  <29.561981, 37.227840, 47.193954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256227, 36.739445, 46.823517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118711, 37.096458, 46.706764>,  <29.036201, 37.310665, 46.636711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118711, 37.096458, 46.706764>,  <29.256227, 36.739445, 46.823517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118711, 37.096458, 46.706764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137923, -0.259465, -0.955853,
		-0.928863, -0.368870, -0.033900,
		-0.343789, 0.892532, -0.291883,
		29.015575, 37.364220, 46.619198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770649, 36.687469, 46.353531>,  <29.256227, 36.739445, 46.823517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770649, 36.687469, 46.353531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929901, 37.046127, 46.276058>,  <29.025452, 37.261322, 46.229572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929901, 37.046127, 46.276058>,  <28.770649, 36.687469, 46.353531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929901, 37.046127, 46.276058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354476, -0.345116, -0.869046,
		-0.846073, 0.277337, -0.455241,
		0.398130, 0.896649, -0.193684,
		29.049339, 37.315121, 46.217953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469061, 36.993153, 45.677471>,  <28.770649, 36.687469, 46.353531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469061, 36.993153, 45.677471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813751, 37.190125, 45.726372>,  <29.020565, 37.308308, 45.755711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813751, 37.190125, 45.726372>,  <28.469061, 36.993153, 45.677471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813751, 37.190125, 45.726372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267552, -0.236303, -0.934118,
		-0.431098, 0.837661, -0.335378,
		0.861725, 0.492427, 0.122248,
		29.072269, 37.337852, 45.763046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930510, 36.805626, 45.148121>,  <28.469061, 36.993153, 45.677471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930510, 36.805626, 45.148121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656279, 36.565296, 44.983688>,  <27.491739, 36.421097, 44.885029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.656279, 36.565296, 44.983688>,  <27.930510, 36.805626, 45.148121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656279, 36.565296, 44.983688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471729, -0.063455, 0.879457,
		-0.554487, 0.796857, -0.239925,
		-0.685577, -0.600827, -0.411086,
		27.450605, 36.385048, 44.860363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297358, 37.176933, 45.259953>,  <27.930510, 36.805626, 45.148121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297358, 37.176933, 45.259953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.218487, 36.791317, 45.188686>,  <27.171164, 36.559948, 45.145927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.218487, 36.791317, 45.188686>,  <27.297358, 37.176933, 45.259953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218487, 36.791317, 45.188686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703047, 0.012391, 0.711035,
		-0.683261, 0.265457, -0.680211,
		-0.197178, -0.964043, -0.178162,
		27.159334, 36.502106, 45.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602900, 37.139801, 45.261440>,  <27.297358, 37.176933, 45.259953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602900, 37.139801, 45.261440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.711927, 36.761028, 45.329597>,  <26.777344, 36.533764, 45.370491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.711927, 36.761028, 45.329597>,  <26.602900, 37.139801, 45.261440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711927, 36.761028, 45.329597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589313, -0.024325, 0.807539,
		-0.760536, -0.320525, -0.564667,
		0.272572, -0.946928, 0.170389,
		26.793699, 36.476952, 45.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969391, 36.883286, 45.471470>,  <26.602900, 37.139801, 45.261440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969391, 36.883286, 45.471470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.252920, 36.626514, 45.588432>,  <26.423038, 36.472450, 45.658607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.252920, 36.626514, 45.588432>,  <25.969391, 36.883286, 45.471470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252920, 36.626514, 45.588432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431405, -0.066542, 0.899701,
		-0.558086, -0.763872, -0.324098,
		0.708823, -0.641928, 0.292402,
		26.465567, 36.433937, 45.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624990, 36.324375, 45.736347>,  <25.969391, 36.883286, 45.471470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624990, 36.324375, 45.736347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.986231, 36.294746, 45.905544>,  <26.202974, 36.276970, 46.007065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.986231, 36.294746, 45.905544>,  <25.624990, 36.324375, 45.736347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986231, 36.294746, 45.905544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422737, 0.019904, 0.906034,
		-0.075536, -0.997054, -0.013339,
		0.903099, -0.074077, 0.422995,
		26.257160, 36.272526, 46.032444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499510, 35.823498, 46.215172>,  <25.624990, 36.324375, 45.736347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499510, 35.823498, 46.215172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.845654, 35.987171, 46.330906>,  <26.053341, 36.085377, 46.400349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.845654, 35.987171, 46.330906>,  <25.499510, 35.823498, 46.215172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845654, 35.987171, 46.330906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325093, 0.018950, 0.945492,
		0.381401, -0.912253, 0.149423,
		0.865360, 0.409188, 0.289340,
		26.105261, 36.109928, 46.417709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692739, 35.364498, 46.793755>,  <25.499510, 35.823498, 46.215172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692739, 35.364498, 46.793755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.851782, 35.731415, 46.802624>,  <25.947206, 35.951565, 46.807945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.851782, 35.731415, 46.802624>,  <25.692739, 35.364498, 46.793755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851782, 35.731415, 46.802624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211213, 0.067983, 0.975073,
		0.892916, -0.392376, 0.220774,
		0.397604, 0.917289, 0.022172,
		25.971064, 36.006603, 46.809277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179033, 34.776356, 46.861511>,  <25.692739, 35.364498, 46.793755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179033, 34.776356, 46.861511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.020182, 34.409874, 46.840126>,  <25.924870, 34.189983, 46.827297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.020182, 34.409874, 46.840126>,  <26.179033, 34.776356, 46.861511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020182, 34.409874, 46.840126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047434, 0.037683, -0.998163,
		0.916536, -0.398937, 0.028494,
		-0.397130, -0.916204, -0.053461,
		25.901043, 34.135014, 46.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665218, 34.342628, 46.405220>,  <26.179033, 34.776356, 46.861511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665218, 34.342628, 46.405220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.293928, 34.194962, 46.386848>,  <26.071154, 34.106361, 46.375828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.293928, 34.194962, 46.386848>,  <26.665218, 34.342628, 46.405220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293928, 34.194962, 46.386848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141942, -0.237340, -0.961001,
		0.343872, -0.898545, 0.272706,
		-0.928226, -0.369170, -0.045927,
		26.015461, 34.084209, 46.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699928, 33.827477, 45.899380>,  <26.665218, 34.342628, 46.405220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699928, 33.827477, 45.899380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.306902, 33.891212, 45.937698>,  <26.071087, 33.929455, 45.960690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.306902, 33.891212, 45.937698>,  <26.699928, 33.827477, 45.899380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306902, 33.891212, 45.937698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133284, -0.244495, -0.960447,
		-0.129610, -0.956470, 0.261470,
		-0.982566, 0.159333, 0.095793,
		26.012133, 33.939014, 45.966434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489220, 33.252232, 45.584320>,  <26.699928, 33.827477, 45.899380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489220, 33.252232, 45.584320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.185566, 33.512497, 45.576801>,  <26.003374, 33.668655, 45.572292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.185566, 33.512497, 45.576801>,  <26.489220, 33.252232, 45.584320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185566, 33.512497, 45.576801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092546, -0.136465, -0.986313,
		-0.644322, -0.747004, 0.163811,
		-0.759134, 0.650663, -0.018795,
		25.957827, 33.707695, 45.571163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020054, 32.895447, 45.248367>,  <26.489220, 33.252232, 45.584320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020054, 32.895447, 45.248367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.929197, 33.284042, 45.221184>,  <25.874683, 33.517200, 45.204876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.929197, 33.284042, 45.221184>,  <26.020054, 32.895447, 45.248367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929197, 33.284042, 45.221184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164197, -0.106985, -0.980609,
		-0.959920, -0.211578, 0.183816,
		-0.227141, 0.971488, -0.067956,
		25.861055, 33.575489, 45.200798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427284, 32.853958, 44.926762>,  <26.020054, 32.895447, 45.248367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427284, 32.853958, 44.926762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.598057, 33.204796, 44.838730>,  <25.700520, 33.415298, 44.785912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.598057, 33.204796, 44.838730>,  <25.427284, 32.853958, 44.926762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598057, 33.204796, 44.838730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150274, -0.171180, -0.973712,
		-0.891710, 0.448781, 0.058723,
		0.426932, 0.877093, -0.220083,
		25.726137, 33.467922, 44.772705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060829, 33.053139, 44.370186>,  <25.427284, 32.853958, 44.926762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060829, 33.053139, 44.370186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.383766, 33.288887, 44.358616>,  <25.577528, 33.430336, 44.351673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.383766, 33.288887, 44.358616>,  <25.060829, 33.053139, 44.370186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383766, 33.288887, 44.358616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055140, -0.124161, -0.990729,
		-0.587502, 0.798262, -0.132738,
		0.807342, 0.589375, -0.028928,
		25.625969, 33.465698, 44.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.778862, 34.023098, 49.942547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.030375, 34.323322, 49.861259>,  <29.181282, 34.503456, 49.812485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.030375, 34.323322, 49.861259>,  <28.778862, 34.023098, 49.942547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030375, 34.323322, 49.861259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383052, -0.526422, -0.759046,
		-0.676689, 0.399428, -0.618506,
		0.628779, 0.750558, -0.203222,
		29.219007, 34.548489, 49.800293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915472, 33.941727, 49.148174>,  <28.778862, 34.023098, 49.942547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915472, 33.941727, 49.148174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.214458, 34.174149, 49.276966>,  <29.393850, 34.313602, 49.354240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.214458, 34.174149, 49.276966>,  <28.915472, 33.941727, 49.148174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214458, 34.174149, 49.276966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557441, -0.284998, -0.779767,
		-0.361326, 0.762332, -0.536930,
		0.747465, 0.581056, 0.321978,
		29.438698, 34.348465, 49.373558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087954, 34.526649, 48.740692>,  <28.915472, 33.941727, 49.148174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087954, 34.526649, 48.740692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424696, 34.426662, 48.932022>,  <29.626741, 34.366673, 49.046822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.424696, 34.426662, 48.932022>,  <29.087954, 34.526649, 48.740692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424696, 34.426662, 48.932022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399725, -0.306715, -0.863798,
		0.362629, 0.918392, -0.158293,
		0.841855, -0.249965, 0.478328,
		29.677252, 34.351673, 49.075520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615173, 34.485207, 48.187244>,  <29.087954, 34.526649, 48.740692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615173, 34.485207, 48.187244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793819, 34.312508, 48.500710>,  <29.901007, 34.208889, 48.688789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793819, 34.312508, 48.500710>,  <29.615173, 34.485207, 48.187244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793819, 34.312508, 48.500710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630052, -0.470120, -0.618079,
		0.635270, 0.769793, 0.062060,
		0.446617, -0.431748, 0.783662,
		29.927805, 34.182983, 48.735809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293644, 34.547539, 48.023430>,  <29.615173, 34.485207, 48.187244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293644, 34.547539, 48.023430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270510, 34.254864, 48.295101>,  <30.256630, 34.079258, 48.458103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270510, 34.254864, 48.295101>,  <30.293644, 34.547539, 48.023430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270510, 34.254864, 48.295101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551124, -0.590657, -0.589395,
		0.832417, 0.340225, 0.437413,
		-0.057834, -0.731690, 0.679179,
		30.253159, 34.035358, 48.498856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031725, 34.346806, 48.227154>,  <30.293644, 34.547539, 48.023430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031725, 34.346806, 48.227154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780504, 34.048992, 48.317680>,  <30.629772, 33.870304, 48.371994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780504, 34.048992, 48.317680>,  <31.031725, 34.346806, 48.227154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780504, 34.048992, 48.317680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658090, -0.663387, -0.356139,
		0.415290, -0.074741, 0.906613,
		-0.628054, -0.744534, 0.226312,
		30.592089, 33.825630, 48.385574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534967, 33.963337, 48.535564>,  <31.031725, 34.346806, 48.227154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534967, 33.963337, 48.535564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220739, 33.736164, 48.437317>,  <31.032202, 33.599861, 48.378368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220739, 33.736164, 48.437317>,  <31.534967, 33.963337, 48.535564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220739, 33.736164, 48.437317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617587, -0.695089, -0.368018,
		0.038285, -0.440794, 0.896792,
		-0.785570, -0.567937, -0.245617,
		30.985069, 33.565784, 48.363632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658592, 33.324032, 48.755104>,  <31.534967, 33.963337, 48.535564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658592, 33.324032, 48.755104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384190, 33.247528, 48.474300>,  <31.219547, 33.201626, 48.305820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384190, 33.247528, 48.474300>,  <31.658592, 33.324032, 48.755104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384190, 33.247528, 48.474300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600617, -0.693435, -0.398003,
		-0.410674, -0.694670, 0.590576,
		-0.686007, -0.191261, -0.702006,
		31.178387, 33.190151, 48.263699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723793, 32.566387, 48.668938>,  <31.658592, 33.324032, 48.755104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723793, 32.566387, 48.668938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557627, 32.711170, 48.335133>,  <31.457926, 32.798038, 48.134850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557627, 32.711170, 48.335133>,  <31.723793, 32.566387, 48.668938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557627, 32.711170, 48.335133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464451, -0.704421, -0.536728,
		-0.782121, -0.610558, 0.124519,
		-0.415417, 0.361953, -0.834516,
		31.433001, 32.819756, 48.084778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557158, 32.084709, 48.234859>,  <31.723793, 32.566387, 48.668938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557158, 32.084709, 48.234859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.581335, 32.405167, 47.996696>,  <31.595842, 32.597443, 47.853798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.581335, 32.405167, 47.996696>,  <31.557158, 32.084709, 48.234859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581335, 32.405167, 47.996696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484496, -0.545066, -0.684226,
		-0.872702, -0.247113, -0.421100,
		0.060446, 0.801148, -0.595406,
		31.599468, 32.645512, 47.818073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594446, 31.782692, 47.630650>,  <31.557158, 32.084709, 48.234859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594446, 31.782692, 47.630650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.701445, 32.161022, 47.557041>,  <31.765644, 32.388020, 47.512875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.701445, 32.161022, 47.557041>,  <31.594446, 31.782692, 47.630650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701445, 32.161022, 47.557041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471266, -0.295003, -0.831192,
		-0.840449, 0.135616, -0.524647,
		0.267496, 0.945823, -0.184023,
		31.781693, 32.444771, 47.501835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484142, 31.882431, 46.851509>,  <31.594446, 31.782692, 47.630650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484142, 31.882431, 46.851509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.755392, 32.140717, 46.991909>,  <31.918142, 32.295689, 47.076149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.755392, 32.140717, 46.991909>,  <31.484142, 31.882431, 46.851509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755392, 32.140717, 46.991909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572349, -0.164388, -0.803363,
		-0.461044, 0.745673, -0.481050,
		0.678126, 0.645715, 0.350995,
		31.958830, 32.334431, 47.097206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913931, 31.939274, 46.404930>,  <31.484142, 31.882431, 46.851509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913931, 31.939274, 46.404930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691250, 31.665762, 46.216240>,  <30.557642, 31.501654, 46.103027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691250, 31.665762, 46.216240>,  <30.913931, 31.939274, 46.404930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691250, 31.665762, 46.216240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745733, 0.161163, 0.646459,
		-0.366011, 0.711667, -0.599638,
		-0.556703, -0.683781, -0.471726,
		30.524239, 31.460629, 46.074722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331524, 32.261944, 46.523701>,  <30.913931, 31.939274, 46.404930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331524, 32.261944, 46.523701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.210722, 31.898628, 46.407909>,  <30.138241, 31.680637, 46.338432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.210722, 31.898628, 46.407909>,  <30.331524, 32.261944, 46.523701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210722, 31.898628, 46.407909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791344, 0.069532, 0.607405,
		-0.531573, 0.412518, -0.739770,
		-0.302003, -0.908292, -0.289482,
		30.120121, 31.626141, 46.321064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621170, 32.295971, 46.275242>,  <30.331524, 32.261944, 46.523701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621170, 32.295971, 46.275242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676632, 31.917336, 46.391689>,  <29.709909, 31.690155, 46.461559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676632, 31.917336, 46.391689>,  <29.621170, 32.295971, 46.275242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676632, 31.917336, 46.391689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766154, 0.083740, 0.637178,
		-0.627522, -0.311390, -0.713619,
		0.138653, -0.946585, 0.291121,
		29.718227, 31.633360, 46.479027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936071, 31.873840, 46.184479>,  <29.621170, 32.295971, 46.275242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936071, 31.873840, 46.184479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.165953, 31.661938, 46.433983>,  <29.303881, 31.534796, 46.583687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.165953, 31.661938, 46.433983>,  <28.936071, 31.873840, 46.184479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165953, 31.661938, 46.433983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794309, -0.177649, 0.580959,
		-0.196969, -0.829324, -0.522900,
		0.574696, -0.529775, 0.623748,
		29.338364, 31.503010, 46.621109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537605, 31.271824, 46.477787>,  <28.936071, 31.873840, 46.184479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537605, 31.271824, 46.477787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.825211, 31.321772, 46.751263>,  <28.997774, 31.351740, 46.915348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.825211, 31.321772, 46.751263>,  <28.537605, 31.271824, 46.477787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825211, 31.321772, 46.751263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653676, -0.212632, 0.726289,
		0.236066, -0.969121, -0.071260,
		0.719014, 0.124871, 0.683686,
		29.040915, 31.359232, 46.956367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447561, 30.671116, 47.084007>,  <28.537605, 31.271824, 46.477787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447561, 30.671116, 47.084007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644554, 30.985018, 47.234539>,  <28.762751, 31.173359, 47.324860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644554, 30.985018, 47.234539>,  <28.447561, 30.671116, 47.084007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644554, 30.985018, 47.234539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501783, -0.097275, 0.859506,
		0.711107, -0.612128, 0.345869,
		0.492484, 0.784752, 0.376329,
		28.792299, 31.220444, 47.347439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719826, 30.493423, 47.671345>,  <28.447561, 30.671116, 47.084007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719826, 30.493423, 47.671345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.716351, 30.891054, 47.714672>,  <28.714266, 31.129633, 47.740669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.716351, 30.891054, 47.714672>,  <28.719826, 30.493423, 47.671345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716351, 30.891054, 47.714672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413259, -0.102208, 0.904859,
		0.910572, -0.036901, 0.411700,
		-0.008689, 0.994078, 0.108318,
		28.713743, 31.189278, 47.747166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934340, 30.549313, 48.300289>,  <28.719826, 30.493423, 47.671345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934340, 30.549313, 48.300289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760929, 30.899431, 48.214584>,  <28.656883, 31.109503, 48.163162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760929, 30.899431, 48.214584>,  <28.934340, 30.549313, 48.300289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760929, 30.899431, 48.214584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348335, 0.056514, 0.935665,
		0.831095, 0.480269, 0.280397,
		-0.433524, 0.875299, -0.214262,
		28.630873, 31.162022, 48.150307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943331, 30.959293, 48.852165>,  <28.934340, 30.549313, 48.300289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943331, 30.959293, 48.852165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630621, 31.149881, 48.691261>,  <28.442995, 31.264235, 48.594719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630621, 31.149881, 48.691261>,  <28.943331, 30.959293, 48.852165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630621, 31.149881, 48.691261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418085, 0.078101, 0.905044,
		0.462641, 0.875716, 0.138147,
		-0.781772, 0.476468, -0.402257,
		28.396090, 31.292822, 48.570583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770624, 31.376848, 49.268169>,  <28.943331, 30.959293, 48.852165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770624, 31.376848, 49.268169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.434359, 31.369804, 49.051662>,  <28.232599, 31.365578, 48.921757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.434359, 31.369804, 49.051662>,  <28.770624, 31.376848, 49.268169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434359, 31.369804, 49.051662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533547, 0.198201, 0.822219,
		0.092801, 0.980003, -0.176016,
		-0.840664, -0.017610, -0.541271,
		28.182159, 31.364521, 48.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297453, 31.881481, 49.554371>,  <28.770624, 31.376848, 49.268169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297453, 31.881481, 49.554371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.034340, 31.687584, 49.323772>,  <27.876472, 31.571245, 49.185413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.034340, 31.687584, 49.323772>,  <28.297453, 31.881481, 49.554371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034340, 31.687584, 49.323772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727841, 0.212122, 0.652113,
		-0.193822, 0.848544, -0.492348,
		-0.657784, -0.484744, -0.576492,
		27.837004, 31.542160, 49.150826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798887, 32.313519, 49.474144>,  <28.297453, 31.881481, 49.554371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798887, 32.313519, 49.474144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.639385, 31.955446, 49.394501>,  <27.543684, 31.740602, 49.346714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.639385, 31.955446, 49.394501>,  <27.798887, 32.313519, 49.474144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639385, 31.955446, 49.394501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752110, 0.195007, 0.629526,
		-0.524713, 0.400777, -0.751035,
		-0.398756, -0.895182, -0.199106,
		27.519758, 31.686892, 49.334770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068163, 32.484291, 49.562977>,  <27.798887, 32.313519, 49.474144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068163, 32.484291, 49.562977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.119028, 32.087860, 49.578934>,  <27.149548, 31.850000, 49.588509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.119028, 32.087860, 49.578934>,  <27.068163, 32.484291, 49.562977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119028, 32.087860, 49.578934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636494, -0.050690, 0.769614,
		-0.760727, -0.123255, -0.637262,
		0.127161, -0.991080, 0.039890,
		27.157177, 31.790537, 49.590900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458220, 32.262714, 49.536991>,  <27.068163, 32.484291, 49.562977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458220, 32.262714, 49.536991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.648827, 31.953861, 49.705151>,  <26.763191, 31.768549, 49.806046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.648827, 31.953861, 49.705151>,  <26.458220, 32.262714, 49.536991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648827, 31.953861, 49.705151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593704, 0.070057, 0.801628,
		-0.648419, -0.631582, -0.425038,
		0.476517, -0.772138, 0.420399,
		26.791782, 31.722219, 49.831272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721849, 32.607735, 49.599804>,  <26.458220, 32.262714, 49.536991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721849, 32.607735, 49.599804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.446306, 32.896278, 49.571178>,  <25.280981, 33.069405, 49.554005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.446306, 32.896278, 49.571178>,  <25.721849, 32.607735, 49.599804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446306, 32.896278, 49.571178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307209, 0.201093, -0.930153,
		-0.656580, -0.662727, -0.360131,
		-0.688858, 0.721356, -0.071563,
		25.239649, 33.112686, 49.549709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554733, 32.562267, 48.890724>,  <25.721849, 32.607735, 49.599804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554733, 32.562267, 48.890724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.385738, 32.915546, 48.972187>,  <25.284342, 33.127514, 49.021065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.385738, 32.915546, 48.972187>,  <25.554733, 32.562267, 48.890724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385738, 32.915546, 48.972187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191465, 0.306587, -0.932387,
		-0.885916, -0.354928, -0.298629,
		-0.422485, 0.883194, 0.203654,
		25.258993, 33.180504, 49.033283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082289, 32.687500, 48.412094>,  <25.554733, 32.562267, 48.890724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082289, 32.687500, 48.412094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.156307, 33.058140, 48.543041>,  <25.200718, 33.280525, 48.621609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.156307, 33.058140, 48.543041>,  <25.082289, 32.687500, 48.412094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156307, 33.058140, 48.543041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180056, 0.295512, -0.938218,
		-0.966094, 0.232556, -0.112157,
		0.185045, 0.926602, 0.327365,
		25.211821, 33.336121, 48.641251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640020, 33.207294, 48.091496>,  <25.082289, 32.687500, 48.412094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640020, 33.207294, 48.091496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.956583, 33.405083, 48.235256>,  <25.146521, 33.523758, 48.321514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.956583, 33.405083, 48.235256>,  <24.640020, 33.207294, 48.091496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956583, 33.405083, 48.235256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150692, 0.411987, -0.898643,
		-0.592425, 0.765351, 0.251536,
		0.791407, 0.494474, 0.359404,
		25.194004, 33.553425, 48.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598238, 33.848610, 47.775322>,  <24.640020, 33.207294, 48.091496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598238, 33.848610, 47.775322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.982132, 33.794556, 47.873829>,  <25.212469, 33.762123, 47.932934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.982132, 33.794556, 47.873829>,  <24.598238, 33.848610, 47.775322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982132, 33.794556, 47.873829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276525, 0.300290, -0.912885,
		0.049417, 0.944226, 0.325569,
		0.959735, -0.135140, 0.246263,
		25.270052, 33.754013, 47.947708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987341, 34.502609, 47.595242>,  <24.598238, 33.848610, 47.775322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987341, 34.502609, 47.595242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.251356, 34.202209, 47.602783>,  <25.409765, 34.021969, 47.607307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.251356, 34.202209, 47.602783>,  <24.987341, 34.502609, 47.595242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251356, 34.202209, 47.602783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344103, 0.279921, -0.896235,
		0.667792, 0.598036, 0.443178,
		0.660036, -0.750997, 0.018857,
		25.449368, 33.976910, 47.608440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529600, 34.806107, 47.289715>,  <24.987341, 34.502609, 47.595242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529600, 34.806107, 47.289715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.610409, 34.417992, 47.236446>,  <25.658894, 34.185123, 47.204483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.610409, 34.417992, 47.236446>,  <25.529600, 34.806107, 47.289715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610409, 34.417992, 47.236446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289604, 0.189081, -0.938285,
		0.935584, 0.150986, 0.319197,
		0.202022, -0.970284, -0.133175,
		25.671015, 34.126907, 47.196495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969915, 35.318493, 47.488621>,  <25.529600, 34.806107, 47.289715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969915, 35.318493, 47.488621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.997580, 35.701160, 47.375484>,  <26.014177, 35.930759, 47.307602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.997580, 35.701160, 47.375484>,  <25.969915, 35.318493, 47.488621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997580, 35.701160, 47.375484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267290, 0.290926, 0.918650,
		0.961131, 0.012069, 0.275828,
		0.069159, 0.956669, -0.282844,
		26.018328, 35.988163, 47.290630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372200, 35.703629, 47.942986>,  <25.969915, 35.318493, 47.488621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372200, 35.703629, 47.942986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.135656, 35.998329, 47.811836>,  <25.993731, 36.175148, 47.733147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.135656, 35.998329, 47.811836>,  <26.372200, 35.703629, 47.942986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135656, 35.998329, 47.811836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057765, 0.366833, 0.928492,
		0.804338, 0.568010, -0.174371,
		-0.591357, 0.736749, -0.327869,
		25.958250, 36.219353, 47.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560020, 36.223923, 48.356586>,  <26.372200, 35.703629, 47.942986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560020, 36.223923, 48.356586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.202587, 36.333164, 48.214085>,  <25.988127, 36.398712, 48.128582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.202587, 36.333164, 48.214085>,  <26.560020, 36.223923, 48.356586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202587, 36.333164, 48.214085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227886, 0.407766, 0.884192,
		0.386750, 0.871286, -0.302135,
		-0.893584, 0.273108, -0.356257,
		25.934511, 36.415096, 48.107208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411461, 37.007965, 48.534908>,  <26.560020, 36.223923, 48.356586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411461, 37.007965, 48.534908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039412, 36.874058, 48.474510>,  <25.816181, 36.793713, 48.438271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039412, 36.874058, 48.474510>,  <26.411461, 37.007965, 48.534908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039412, 36.874058, 48.474510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335860, 0.609094, 0.718472,
		-0.148551, 0.718982, -0.678968,
		-0.930124, -0.334768, -0.150995,
		25.760374, 36.773628, 48.429211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061615, 37.561512, 48.705479>,  <26.411461, 37.007965, 48.534908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061615, 37.561512, 48.705479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.799637, 37.259270, 48.701450>,  <25.642450, 37.077923, 48.699036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.799637, 37.259270, 48.701450>,  <26.061615, 37.561512, 48.705479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799637, 37.259270, 48.701450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492642, 0.416832, 0.763908,
		-0.573020, 0.505277, -0.645247,
		-0.654945, -0.755610, -0.010067,
		25.603153, 37.032585, 48.698429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510748, 37.904968, 48.711063>,  <26.061615, 37.561512, 48.705479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510748, 37.904968, 48.711063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.417749, 37.546833, 48.863018>,  <25.361950, 37.331951, 48.954189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.417749, 37.546833, 48.863018>,  <25.510748, 37.904968, 48.711063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417749, 37.546833, 48.863018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465971, 0.445386, 0.764527,
		-0.853707, 0.000732, -0.520752,
		-0.232496, -0.895338, 0.379888,
		25.348001, 37.278233, 48.976986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836470, 38.023705, 48.950340>,  <25.510748, 37.904968, 48.711063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836470, 38.023705, 48.950340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.942501, 37.674435, 49.113945>,  <25.006121, 37.464870, 49.212109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.942501, 37.674435, 49.113945>,  <24.836470, 38.023705, 48.950340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942501, 37.674435, 49.113945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323006, 0.319265, 0.890919,
		-0.908515, -0.368278, -0.197411,
		0.265079, -0.873179, 0.409013,
		25.022024, 37.412479, 49.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208839, 37.690605, 49.227005>,  <24.836470, 38.023705, 48.950340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208839, 37.690605, 49.227005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.543835, 37.579075, 49.414993>,  <24.744831, 37.512157, 49.527786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.543835, 37.579075, 49.414993>,  <24.208839, 37.690605, 49.227005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543835, 37.579075, 49.414993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345384, 0.396380, 0.850643,
		-0.423469, -0.874722, 0.235660,
		0.837486, -0.278828, 0.469970,
		24.795080, 37.495426, 49.555984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.924767, 37.465847, 49.846306>,  <24.208839, 37.690605, 49.227005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.924767, 37.465847, 49.846306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.317310, 37.534683, 49.880527>,  <24.552837, 37.575985, 49.901062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.317310, 37.534683, 49.880527>,  <23.924767, 37.465847, 49.846306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317310, 37.534683, 49.880527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146251, 0.379928, 0.913381,
		0.124675, -0.908868, 0.398013,
		0.981360, 0.172086, 0.085555,
		24.611719, 37.586308, 49.906193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.130104, 33.929615, 37.638824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274151, 34.281464, 37.763134>,  <34.360580, 34.492573, 37.837719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274151, 34.281464, 37.763134>,  <34.130104, 33.929615, 37.638824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274151, 34.281464, 37.763134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860296, 0.184274, 0.475326,
		0.360838, -0.438534, 0.823094,
		0.360122, 0.879620, 0.310776,
		34.382187, 34.545349, 37.856365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861446, 33.978306, 38.282940>,  <34.130104, 33.929615, 37.638824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861446, 33.978306, 38.282940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968311, 34.360619, 38.233784>,  <34.032429, 34.590008, 38.204292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968311, 34.360619, 38.233784>,  <33.861446, 33.978306, 38.282940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968311, 34.360619, 38.233784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771205, 0.288526, 0.567447,
		0.577813, -0.056829, 0.814189,
		0.267162, 0.955784, -0.122887,
		34.048458, 34.647354, 38.196918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879044, 34.305996, 38.954922>,  <33.861446, 33.978306, 38.282940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879044, 34.305996, 38.954922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839439, 34.605480, 38.692738>,  <33.815678, 34.785172, 38.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839439, 34.605480, 38.692738>,  <33.879044, 34.305996, 38.954922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839439, 34.605480, 38.692738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840698, 0.289466, 0.457641,
		0.532375, 0.596355, 0.600781,
		-0.099011, 0.748712, -0.655459,
		33.809734, 34.830093, 38.496101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637623, 34.754025, 39.341766>,  <33.879044, 34.305996, 38.954922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637623, 34.754025, 39.341766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544861, 34.907406, 38.984177>,  <33.489204, 34.999435, 38.769623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544861, 34.907406, 38.984177>,  <33.637623, 34.754025, 39.341766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544861, 34.907406, 38.984177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819342, 0.418355, 0.391991,
		0.524308, 0.823371, 0.217165,
		-0.231902, 0.383457, -0.893970,
		33.475288, 35.022442, 38.715984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495861, 35.504147, 39.443565>,  <33.637623, 34.754025, 39.341766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495861, 35.504147, 39.443565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327805, 35.406895, 39.093853>,  <33.226971, 35.348545, 38.884026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327805, 35.406895, 39.093853>,  <33.495861, 35.504147, 39.443565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327805, 35.406895, 39.093853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825541, 0.502426, 0.257002,
		0.376776, 0.829732, -0.411807,
		-0.420146, -0.243131, -0.874280,
		33.201759, 35.333954, 38.831570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200260, 36.118706, 39.152561>,  <33.495861, 35.504147, 39.443565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200260, 36.118706, 39.152561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009933, 35.797688, 39.008610>,  <32.895737, 35.605076, 38.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009933, 35.797688, 39.008610>,  <33.200260, 36.118706, 39.152561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009933, 35.797688, 39.008610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878978, 0.419200, 0.227309,
		-0.031565, 0.424484, -0.904885,
		-0.475817, -0.802549, -0.359879,
		32.867188, 35.556923, 38.900646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675205, 36.418392, 38.806919>,  <33.200260, 36.118706, 39.152561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675205, 36.418392, 38.806919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566746, 36.036789, 38.858059>,  <32.501671, 35.807827, 38.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566746, 36.036789, 38.858059>,  <32.675205, 36.418392, 38.806919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566746, 36.036789, 38.858059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916866, 0.296422, 0.267376,
		-0.292976, -0.044723, -0.955073,
		-0.271147, -0.954009, 0.127850,
		32.485401, 35.750587, 38.896416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039948, 36.544220, 38.717861>,  <32.675205, 36.418392, 38.806919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039948, 36.544220, 38.717861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016544, 36.169800, 38.856644>,  <32.002502, 35.945148, 38.939915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016544, 36.169800, 38.856644>,  <32.039948, 36.544220, 38.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016544, 36.169800, 38.856644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942900, 0.165973, 0.288777,
		-0.327896, -0.310250, -0.892317,
		-0.058508, -0.936055, 0.346956,
		31.998993, 35.888985, 38.960732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407307, 36.250530, 38.458958>,  <32.039948, 36.544220, 38.717861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407307, 36.250530, 38.458958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513321, 36.042347, 38.783646>,  <31.576929, 35.917439, 38.978458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513321, 36.042347, 38.783646>,  <31.407307, 36.250530, 38.458958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513321, 36.042347, 38.783646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936737, 0.060649, 0.344740,
		-0.228652, -0.851732, -0.471457,
		0.265033, -0.520456, 0.811716,
		31.592831, 35.886211, 39.027161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758444, 35.799305, 38.557678>,  <31.407307, 36.250530, 38.458958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758444, 35.799305, 38.557678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987978, 35.821060, 38.884544>,  <31.125698, 35.834114, 39.080662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987978, 35.821060, 38.884544>,  <30.758444, 35.799305, 38.557678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987978, 35.821060, 38.884544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815832, 0.125217, 0.564569,
		-0.071618, -0.990638, 0.116224,
		0.573837, 0.054387, 0.817162,
		31.160130, 35.837376, 39.129692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354025, 35.308002, 39.003647>,  <30.758444, 35.799305, 38.557678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354025, 35.308002, 39.003647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562931, 35.536350, 39.257053>,  <30.688274, 35.673359, 39.409096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562931, 35.536350, 39.257053>,  <30.354025, 35.308002, 39.003647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562931, 35.536350, 39.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818757, 0.127914, 0.559711,
		0.238487, -0.811014, 0.534209,
		0.522266, 0.570871, 0.633517,
		30.719610, 35.707611, 39.447109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082413, 35.144955, 39.637230>,  <30.354025, 35.308002, 39.003647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082413, 35.144955, 39.637230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279272, 35.477211, 39.741402>,  <30.397387, 35.676567, 39.803905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279272, 35.477211, 39.741402>,  <30.082413, 35.144955, 39.637230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279272, 35.477211, 39.741402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700076, 0.199855, 0.685530,
		0.517383, -0.519702, 0.679871,
		0.492147, 0.830643, 0.260430,
		30.426916, 35.726402, 39.819530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221741, 34.584545, 40.108925>,  <30.082413, 35.144955, 39.637230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221741, 34.584545, 40.108925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011009, 34.259869, 40.008041>,  <29.884571, 34.065063, 39.947510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011009, 34.259869, 40.008041>,  <30.221741, 34.584545, 40.108925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011009, 34.259869, 40.008041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691235, -0.236470, -0.682844,
		0.494618, -0.534078, 0.685648,
		-0.526827, -0.811691, -0.252211,
		29.852961, 34.016361, 39.932377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687416, 34.124596, 40.134472>,  <30.221741, 34.584545, 40.108925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687416, 34.124596, 40.134472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411606, 33.971092, 39.888779>,  <30.246119, 33.878990, 39.741364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411606, 33.971092, 39.888779>,  <30.687416, 34.124596, 40.134472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411606, 33.971092, 39.888779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722141, -0.299453, -0.623571,
		0.055364, -0.873533, 0.483606,
		-0.689527, -0.383755, -0.614235,
		30.204748, 33.855965, 39.704510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942909, 33.485958, 40.008793>,  <30.687416, 34.124596, 40.134472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942909, 33.485958, 40.008793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686567, 33.562153, 39.711334>,  <30.532763, 33.607872, 39.532860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686567, 33.562153, 39.711334>,  <30.942909, 33.485958, 40.008793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686567, 33.562153, 39.711334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717136, -0.197075, -0.668489,
		-0.273897, -0.961704, -0.010313,
		-0.640856, 0.190493, -0.743650,
		30.494310, 33.619301, 39.488239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196810, 33.048138, 39.544735>,  <30.942909, 33.485958, 40.008793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196810, 33.048138, 39.544735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925034, 33.242424, 39.324760>,  <30.761967, 33.358997, 39.192776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925034, 33.242424, 39.324760>,  <31.196810, 33.048138, 39.544735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925034, 33.242424, 39.324760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549411, -0.159987, -0.820093,
		-0.486319, -0.859349, -0.158159,
		-0.679442, 0.485720, -0.549940,
		30.721201, 33.388142, 39.159779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832663, 32.604496, 39.009296>,  <31.196810, 33.048138, 39.544735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832663, 32.604496, 39.009296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817968, 32.980259, 38.872967>,  <30.809153, 33.205719, 38.791168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817968, 32.980259, 38.872967>,  <30.832663, 32.604496, 39.009296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817968, 32.980259, 38.872967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284384, -0.317123, -0.904743,
		-0.958007, -0.130158, -0.255504,
		-0.036734, 0.939411, -0.340820,
		30.806948, 33.262081, 38.770721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698973, 32.514149, 38.349861>,  <30.832663, 32.604496, 39.009296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698973, 32.514149, 38.349861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776188, 32.906483, 38.339325>,  <30.822517, 33.141884, 38.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776188, 32.906483, 38.339325>,  <30.698973, 32.514149, 38.349861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776188, 32.906483, 38.339325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194207, -0.064507, -0.978837,
		-0.961779, 0.183840, -0.202938,
		0.193040, 0.980837, -0.026338,
		30.834101, 33.200733, 38.331425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317335, 32.852318, 37.688065>,  <30.698973, 32.514149, 38.349861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317335, 32.852318, 37.688065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628099, 33.073765, 37.808006>,  <30.814558, 33.206635, 37.879971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628099, 33.073765, 37.808006>,  <30.317335, 32.852318, 37.688065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628099, 33.073765, 37.808006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365065, -0.008076, -0.930947,
		-0.512971, 0.832729, -0.208382,
		0.776909, 0.553622, 0.299858,
		30.861172, 33.239853, 37.897964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433378, 33.436123, 37.209881>,  <30.317335, 32.852318, 37.688065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433378, 33.436123, 37.209881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789806, 33.470474, 37.388145>,  <31.003664, 33.491085, 37.495106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789806, 33.470474, 37.388145>,  <30.433378, 33.436123, 37.209881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789806, 33.470474, 37.388145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414844, 0.244221, -0.876505,
		-0.184112, 0.965910, 0.181992,
		0.891071, 0.085877, 0.445666,
		31.057127, 33.496239, 37.521847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712801, 34.090466, 37.023438>,  <30.433378, 33.436123, 37.209881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712801, 34.090466, 37.023438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001633, 33.839485, 37.139992>,  <31.174931, 33.688896, 37.209923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001633, 33.839485, 37.139992>,  <30.712801, 34.090466, 37.023438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001633, 33.839485, 37.139992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495694, 0.175441, -0.850593,
		0.482588, 0.758631, 0.437708,
		0.722078, -0.627455, 0.291383,
		31.218256, 33.651249, 37.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393728, 34.373013, 36.870857>,  <30.712801, 34.090466, 37.023438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393728, 34.373013, 36.870857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485798, 33.986340, 36.915665>,  <31.541040, 33.754337, 36.942551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485798, 33.986340, 36.915665>,  <31.393728, 34.373013, 36.870857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485798, 33.986340, 36.915665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626634, 0.059160, -0.777065,
		0.744546, 0.249058, 0.619372,
		0.230176, -0.966680, 0.112021,
		31.554852, 33.696335, 36.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069683, 34.299885, 36.729492>,  <31.393728, 34.373013, 36.870857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069683, 34.299885, 36.729492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913851, 33.936043, 36.671745>,  <31.820351, 33.717739, 36.637096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913851, 33.936043, 36.671745>,  <32.069683, 34.299885, 36.729492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913851, 33.936043, 36.671745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564880, -0.112184, -0.817512,
		0.727417, -0.400040, 0.557523,
		-0.389582, -0.909606, -0.144370,
		31.796976, 33.663162, 36.628433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629856, 33.894524, 36.721699>,  <32.069683, 34.299885, 36.729492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629856, 33.894524, 36.721699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339745, 33.697266, 36.529537>,  <32.165680, 33.578911, 36.414242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339745, 33.697266, 36.529537>,  <32.629856, 33.894524, 36.721699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339745, 33.697266, 36.529537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621055, -0.167529, -0.765653,
		0.297095, -0.853666, 0.427773,
		-0.725276, -0.493142, -0.480402,
		32.122162, 33.549324, 36.385418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928387, 33.225445, 36.381199>,  <32.629856, 33.894524, 36.721699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928387, 33.225445, 36.381199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574936, 33.270504, 36.199429>,  <32.362865, 33.297539, 36.090366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574936, 33.270504, 36.199429>,  <32.928387, 33.225445, 36.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574936, 33.270504, 36.199429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432445, -0.175569, -0.884402,
		-0.179476, -0.977993, 0.106390,
		-0.883618, 0.112721, -0.454438,
		32.309845, 33.304298, 36.063099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904938, 32.830975, 35.792873>,  <32.928387, 33.225445, 36.381199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904938, 32.830975, 35.792873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605350, 33.085693, 35.719624>,  <32.425598, 33.238525, 35.675674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605350, 33.085693, 35.719624>,  <32.904938, 32.830975, 35.792873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605350, 33.085693, 35.719624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178796, -0.071889, -0.981256,
		-0.638022, -0.767676, -0.060013,
		-0.748973, 0.636793, -0.183124,
		32.380657, 33.276730, 35.664688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711437, 32.213734, 35.555855>,  <32.904938, 32.830975, 35.792873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711437, 32.213734, 35.555855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458336, 31.909529, 35.497551>,  <32.306477, 31.727005, 35.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458336, 31.909529, 35.497551>,  <32.711437, 32.213734, 35.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458336, 31.909529, 35.497551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738599, 0.536208, 0.408598,
		-0.232589, 0.366195, -0.901001,
		-0.632751, -0.760514, -0.145755,
		32.268509, 31.681374, 35.453823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047337, 32.075169, 36.211765>,  <32.711437, 32.213734, 35.555855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047337, 32.075169, 36.211765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194851, 31.952158, 35.860897>,  <33.283360, 31.878351, 35.650375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194851, 31.952158, 35.860897>,  <33.047337, 32.075169, 36.211765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194851, 31.952158, 35.860897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894326, -0.139805, 0.425012,
		-0.253336, -0.941212, 0.223475,
		0.368784, -0.307530, -0.877168,
		33.305485, 31.859900, 35.597748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609612, 31.621323, 36.497883>,  <33.047337, 32.075169, 36.211765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609612, 31.621323, 36.497883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967949, 31.601389, 36.674511>,  <34.182953, 31.589428, 36.780487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967949, 31.601389, 36.674511>,  <33.609612, 31.621323, 36.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967949, 31.601389, 36.674511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439502, -0.246084, 0.863875,
		0.065612, -0.967966, -0.242355,
		0.895842, -0.049835, 0.441569,
		34.236702, 31.586437, 36.806980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648533, 31.064558, 36.888531>,  <33.609612, 31.621323, 36.497883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648533, 31.064558, 36.888531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927563, 31.308044, 37.039715>,  <34.094978, 31.454136, 37.130424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927563, 31.308044, 37.039715>,  <33.648533, 31.064558, 36.888531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927563, 31.308044, 37.039715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202364, -0.338652, 0.918892,
		0.687344, -0.717480, -0.113052,
		0.697572, 0.608718, 0.377963,
		34.136833, 31.490660, 37.153103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056473, 30.737206, 37.368393>,  <33.648533, 31.064558, 36.888531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056473, 30.737206, 37.368393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092834, 31.125795, 37.456001>,  <34.114651, 31.358950, 37.508564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092834, 31.125795, 37.456001>,  <34.056473, 30.737206, 37.368393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092834, 31.125795, 37.456001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293889, -0.183965, 0.937969,
		0.951507, -0.149631, 0.268784,
		0.090903, 0.971477, 0.219019,
		34.120106, 31.417238, 37.521706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412346, 30.648197, 37.975548>,  <34.056473, 30.737206, 37.368393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412346, 30.648197, 37.975548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291340, 31.029360, 37.984039>,  <34.218735, 31.258059, 37.989132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291340, 31.029360, 37.984039>,  <34.412346, 30.648197, 37.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291340, 31.029360, 37.984039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109341, -0.056815, 0.992379,
		0.946852, 0.297890, 0.121379,
		-0.302516, 0.952908, 0.021224,
		34.200584, 31.315231, 37.990406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689697, 30.937901, 38.553726>,  <34.412346, 30.648197, 37.975548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689697, 30.937901, 38.553726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397552, 31.202436, 38.485367>,  <34.222267, 31.361158, 38.444351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397552, 31.202436, 38.485367>,  <34.689697, 30.937901, 38.553726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397552, 31.202436, 38.485367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344869, -0.141058, 0.927992,
		0.589613, 0.736702, 0.331099,
		-0.730357, 0.661342, -0.170896,
		34.178444, 31.400839, 38.434097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707516, 31.454294, 39.035027>,  <34.689697, 30.937901, 38.553726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707516, 31.454294, 39.035027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328259, 31.426355, 38.910992>,  <34.100704, 31.409592, 38.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328259, 31.426355, 38.910992>,  <34.707516, 31.454294, 39.035027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328259, 31.426355, 38.910992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314860, 0.072767, 0.946345,
		-0.043534, 0.994900, -0.090985,
		-0.948139, -0.069846, -0.310087,
		34.043816, 31.405401, 38.817966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337585, 31.898680, 39.495346>,  <34.707516, 31.454294, 39.035027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337585, 31.898680, 39.495346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073143, 31.657291, 39.317017>,  <33.914478, 31.512459, 39.210018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073143, 31.657291, 39.317017>,  <34.337585, 31.898680, 39.495346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073143, 31.657291, 39.317017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432790, -0.178666, 0.883613,
		-0.612887, 0.777112, -0.143059,
		-0.661107, -0.603469, -0.445828,
		33.874809, 31.476250, 39.183270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678352, 31.946156, 39.871712>,  <34.337585, 31.898680, 39.495346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678352, 31.946156, 39.871712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631432, 31.593056, 39.689728>,  <33.603279, 31.381195, 39.580536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631432, 31.593056, 39.689728>,  <33.678352, 31.946156, 39.871712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631432, 31.593056, 39.689728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641919, -0.282161, 0.712970,
		-0.757748, 0.375679, -0.533557,
		-0.117299, -0.882751, -0.454963,
		33.596241, 31.328230, 39.553238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951012, 31.744167, 40.006233>,  <33.678352, 31.946156, 39.871712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951012, 31.744167, 40.006233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097458, 31.402399, 39.858761>,  <33.185326, 31.197338, 39.770275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097458, 31.402399, 39.858761>,  <32.951012, 31.744167, 40.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097458, 31.402399, 39.858761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425292, -0.506025, 0.750377,
		-0.827701, -0.117923, -0.548640,
		0.366112, -0.854420, -0.368685,
		33.207291, 31.146072, 39.748154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328049, 31.231133, 39.970417>,  <32.951012, 31.744167, 40.006233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328049, 31.231133, 39.970417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676907, 31.037107, 39.995987>,  <32.886219, 30.920692, 40.011330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676907, 31.037107, 39.995987>,  <32.328049, 31.231133, 39.970417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676907, 31.037107, 39.995987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325053, -0.476810, 0.816697,
		-0.365668, -0.733053, -0.573515,
		0.872140, -0.485062, 0.063927,
		32.938549, 30.891588, 40.015163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095516, 30.615532, 40.228672>,  <32.328049, 31.231133, 39.970417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095516, 30.615532, 40.228672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484932, 30.631992, 40.318584>,  <32.718582, 30.641869, 40.372532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484932, 30.631992, 40.318584>,  <32.095516, 30.615532, 40.228672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484932, 30.631992, 40.318584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180206, -0.466635, 0.865897,
		0.140524, -0.883492, -0.446872,
		0.973540, 0.041151, 0.224784,
		32.776993, 30.644337, 40.386021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207592, 30.046593, 40.691456>,  <32.095516, 30.615532, 40.228672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207592, 30.046593, 40.691456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470879, 30.343538, 40.741486>,  <32.628853, 30.521706, 40.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470879, 30.343538, 40.741486>,  <32.207592, 30.046593, 40.691456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470879, 30.343538, 40.741486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009280, -0.158130, 0.987375,
		0.752768, -0.651071, -0.097196,
		0.658221, 0.742362, 0.125077,
		32.668346, 30.566246, 40.779007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601498, 29.750273, 41.179287>,  <32.207592, 30.046593, 40.691456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601498, 29.750273, 41.179287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685867, 30.141262, 41.182331>,  <32.736488, 30.375856, 41.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685867, 30.141262, 41.182331>,  <32.601498, 29.750273, 41.179287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685867, 30.141262, 41.182331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078088, 0.009090, 0.996905,
		0.974378, -0.210866, 0.078246,
		0.210925, 0.977473, 0.007609,
		32.749146, 30.434504, 41.184612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177868, 29.788048, 41.644806>,  <32.601498, 29.750273, 41.179287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177868, 29.788048, 41.644806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012356, 30.151049, 41.615883>,  <32.913048, 30.368849, 41.598530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012356, 30.151049, 41.615883>,  <33.177868, 29.788048, 41.644806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012356, 30.151049, 41.615883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122195, 0.023338, 0.992232,
		0.902138, 0.419403, 0.101235,
		-0.413782, 0.907500, -0.072303,
		32.888222, 30.423298, 41.594193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520210, 30.273603, 42.034393>,  <33.177868, 29.788048, 41.644806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520210, 30.273603, 42.034393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159172, 30.442799, 42.002369>,  <32.942551, 30.544315, 41.983154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159172, 30.442799, 42.002369>,  <33.520210, 30.273603, 42.034393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159172, 30.442799, 42.002369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001774, 0.182328, 0.983236,
		0.430496, 0.887602, -0.163817,
		-0.902591, 0.422988, -0.080066,
		32.888393, 30.569695, 41.978348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568501, 30.995504, 42.494427>,  <33.520210, 30.273603, 42.034393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568501, 30.995504, 42.494427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186100, 30.897102, 42.430508>,  <32.956657, 30.838060, 42.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186100, 30.897102, 42.430508>,  <33.568501, 30.995504, 42.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186100, 30.897102, 42.430508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213736, 0.211009, 0.953830,
		-0.200927, 0.946021, -0.254306,
		-0.956005, -0.246005, -0.159802,
		32.899300, 30.823301, 42.382568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200081, 31.392355, 43.005009>,  <33.568501, 30.995504, 42.494427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200081, 31.392355, 43.005009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930130, 31.126940, 42.875851>,  <32.768158, 30.967691, 42.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930130, 31.126940, 42.875851>,  <33.200081, 31.392355, 43.005009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930130, 31.126940, 42.875851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476515, 0.057758, 0.877267,
		-0.563450, 0.745910, -0.355166,
		-0.674876, -0.663538, -0.322894,
		32.727669, 30.927877, 42.778984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500046, 31.698183, 43.063362>,  <33.200081, 31.392355, 43.005009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500046, 31.698183, 43.063362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426174, 31.305773, 43.039761>,  <32.381851, 31.070326, 43.025600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426174, 31.305773, 43.039761>,  <32.500046, 31.698183, 43.063362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426174, 31.305773, 43.039761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609601, 0.067252, 0.789851,
		-0.770897, 0.181833, -0.610455,
		-0.184675, -0.981027, -0.059001,
		32.370773, 31.011465, 43.022060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695702, 31.582029, 42.931374>,  <32.500046, 31.698183, 43.063362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695702, 31.582029, 42.931374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863424, 31.262384, 43.103699>,  <31.964058, 31.070597, 43.207092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863424, 31.262384, 43.103699>,  <31.695702, 31.582029, 42.931374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863424, 31.262384, 43.103699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694366, 0.023410, 0.719241,
		-0.584840, -0.600725, -0.545061,
		0.419306, -0.799113, 0.430814,
		31.989216, 31.022650, 43.232944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111530, 31.191565, 43.304474>,  <31.695702, 31.582029, 42.931374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111530, 31.191565, 43.304474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439632, 31.034843, 43.471172>,  <31.636494, 30.940811, 43.571190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439632, 31.034843, 43.471172>,  <31.111530, 31.191565, 43.304474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439632, 31.034843, 43.471172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443967, 0.023294, 0.895740,
		-0.360664, -0.919753, -0.154842,
		0.820253, -0.391806, 0.416741,
		31.685709, 30.917301, 43.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741871, 30.665531, 43.675690>,  <31.111530, 31.191565, 43.304474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741871, 30.665531, 43.675690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101807, 30.720934, 43.841148>,  <31.317768, 30.754175, 43.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101807, 30.720934, 43.841148>,  <30.741871, 30.665531, 43.675690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101807, 30.720934, 43.841148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417108, -0.004382, 0.908846,
		0.127697, -0.990351, 0.053830,
		0.899842, 0.138509, 0.413643,
		31.371759, 30.762486, 43.965240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717525, 30.306126, 44.223381>,  <30.741871, 30.665531, 43.675690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717525, 30.306126, 44.223381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990957, 30.584793, 44.310444>,  <31.155016, 30.751993, 44.362682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990957, 30.584793, 44.310444>,  <30.717525, 30.306126, 44.223381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990957, 30.584793, 44.310444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330973, 0.030086, 0.943161,
		0.650521, -0.716763, 0.251144,
		0.683578, 0.696668, 0.217657,
		31.196032, 30.793793, 44.375740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948298, 30.122616, 44.779957>,  <30.717525, 30.306126, 44.223381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948298, 30.122616, 44.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075089, 30.501175, 44.755123>,  <31.151163, 30.728310, 44.740223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075089, 30.501175, 44.755123>,  <30.948298, 30.122616, 44.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075089, 30.501175, 44.755123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268351, 0.152281, 0.951209,
		0.909677, -0.284853, 0.302237,
		0.316979, 0.946398, -0.062086,
		31.170183, 30.785095, 44.736496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290936, 30.239420, 45.358238>,  <30.948298, 30.122616, 44.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290936, 30.239420, 45.358238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217352, 30.615030, 45.242043>,  <31.173203, 30.840397, 45.172325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217352, 30.615030, 45.242043>,  <31.290936, 30.239420, 45.358238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217352, 30.615030, 45.242043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258145, 0.239007, 0.936075,
		0.948430, 0.247189, 0.198438,
		-0.183960, 0.939028, -0.290493,
		31.162165, 30.896738, 45.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459126, 30.666143, 45.906460>,  <31.290936, 30.239420, 45.358238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459126, 30.666143, 45.906460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200012, 30.887451, 45.696976>,  <31.044544, 31.020237, 45.571285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200012, 30.887451, 45.696976>,  <31.459126, 30.666143, 45.906460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200012, 30.887451, 45.696976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579473, 0.088432, 0.810180,
		0.494561, 0.828294, 0.263321,
		-0.647782, 0.553270, -0.523709,
		31.005678, 31.053432, 45.539864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353870, 31.394033, 46.272732>,  <31.459126, 30.666143, 45.906460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353870, 31.394033, 46.272732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047316, 31.324055, 46.025494>,  <30.863382, 31.282068, 45.877151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047316, 31.324055, 46.025494>,  <31.353870, 31.394033, 46.272732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047316, 31.324055, 46.025494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642135, 0.235184, 0.729624,
		0.017723, 0.956077, -0.292580,
		-0.766387, -0.174945, -0.618099,
		30.817400, 31.271572, 45.840065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809589, 32.061665, 46.204655>,  <31.353870, 31.394033, 46.272732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809589, 32.061665, 46.204655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037922, 32.197231, 46.503796>,  <32.174923, 32.278572, 46.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037922, 32.197231, 46.503796>,  <31.809589, 32.061665, 46.204655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037922, 32.197231, 46.503796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739953, 0.182386, -0.647460,
		-0.355835, 0.922967, -0.146674,
		0.570833, 0.338921, 0.747851,
		32.209171, 32.298908, 46.728149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072308, 32.668659, 46.055031>,  <31.809589, 32.061665, 46.204655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072308, 32.668659, 46.055031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331608, 32.542191, 46.332104>,  <32.487190, 32.466309, 46.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331608, 32.542191, 46.332104>,  <32.072308, 32.668659, 46.055031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331608, 32.542191, 46.332104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749656, 0.105694, -0.653333,
		0.133353, 0.942796, 0.305537,
		0.648253, -0.316172, 0.692678,
		32.526085, 32.447338, 46.539906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630310, 33.018139, 45.893406>,  <32.072308, 32.668659, 46.055031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630310, 33.018139, 45.893406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770039, 32.718342, 46.118347>,  <32.853874, 32.538464, 46.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770039, 32.718342, 46.118347>,  <32.630310, 33.018139, 45.893406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770039, 32.718342, 46.118347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835800, -0.022069, -0.548591,
		0.423573, 0.661649, 0.618713,
		0.349320, -0.749489, 0.562354,
		32.874836, 32.493496, 46.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377159, 33.171650, 46.210014>,  <32.630310, 33.018139, 45.893406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377159, 33.171650, 46.210014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315533, 32.777275, 46.184113>,  <33.278557, 32.540649, 46.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315533, 32.777275, 46.184113>,  <33.377159, 33.171650, 46.210014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315533, 32.777275, 46.184113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813930, -0.089490, -0.574029,
		0.560161, -0.141143, 0.816271,
		-0.154068, -0.985936, -0.064752,
		33.269314, 32.481495, 46.164688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046902, 32.896290, 46.075558>,  <33.377159, 33.171650, 46.210014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046902, 32.896290, 46.075558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834236, 32.563210, 46.013657>,  <33.706638, 32.363361, 45.976517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834236, 32.563210, 46.013657>,  <34.046902, 32.896290, 46.075558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834236, 32.563210, 46.013657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618821, -0.257162, -0.742246,
		0.578271, -0.490387, 0.652014,
		-0.531661, -0.832699, -0.154753,
		33.674736, 32.313400, 45.967232>
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
