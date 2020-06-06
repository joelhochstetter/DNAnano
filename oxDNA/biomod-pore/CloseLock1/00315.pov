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
	<24.163065, 34.948555, 34.605522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409506, 35.149712, 34.848015>,  <24.557369, 35.270405, 34.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409506, 35.149712, 34.848015>,  <24.163065, 34.948555, 34.605522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409506, 35.149712, 34.848015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757578, -0.589027, -0.281288,
		0.215630, 0.632571, -0.743880,
		0.616100, 0.502893, 0.606233,
		24.594336, 35.300579, 35.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866827, 35.292900, 34.429768>,  <24.163065, 34.948555, 34.605522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866827, 35.292900, 34.429768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860538, 35.130177, 34.795120>,  <24.856766, 35.032543, 35.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860538, 35.130177, 34.795120>,  <24.866827, 35.292900, 34.429768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860538, 35.130177, 34.795120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787071, -0.568420, -0.239620,
		0.616662, 0.715125, 0.329125,
		-0.015723, -0.406810, 0.913378,
		24.855822, 35.008133, 35.069134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451391, 35.148445, 33.904716>,  <24.866827, 35.292900, 34.429768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451391, 35.148445, 33.904716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499332, 35.522324, 34.038567>,  <25.528097, 35.746651, 34.118877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499332, 35.522324, 34.038567>,  <25.451391, 35.148445, 33.904716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499332, 35.522324, 34.038567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850206, -0.270671, 0.451539,
		0.512626, 0.230379, -0.827128,
		0.119854, 0.934699, 0.334623,
		25.535288, 35.802734, 34.138954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083773, 35.518097, 33.633472>,  <25.451391, 35.148445, 33.904716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083773, 35.518097, 33.633472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984177, 35.661560, 33.993332>,  <25.924419, 35.747639, 34.209248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984177, 35.661560, 33.993332>,  <26.083773, 35.518097, 33.633472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984177, 35.661560, 33.993332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957402, -0.049107, 0.284551,
		0.146237, 0.932175, -0.331156,
		-0.248989, 0.358661, 0.899648,
		25.909479, 35.769157, 34.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307217, 36.270824, 33.782528>,  <26.083773, 35.518097, 33.633472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307217, 36.270824, 33.782528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273323, 36.006531, 34.080856>,  <26.252987, 35.847954, 34.259853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273323, 36.006531, 34.080856>,  <26.307217, 36.270824, 33.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273323, 36.006531, 34.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988024, 0.041157, 0.148713,
		-0.128955, 0.749492, 0.649332,
		-0.084735, -0.660733, 0.745823,
		26.247902, 35.808311, 34.304604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378891, 36.646141, 34.427933>,  <26.307217, 36.270824, 33.782528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378891, 36.646141, 34.427933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508177, 36.268295, 34.405174>,  <26.585749, 36.041588, 34.391521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508177, 36.268295, 34.405174>,  <26.378891, 36.646141, 34.427933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508177, 36.268295, 34.405174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921709, 0.327863, -0.207263,
		0.214437, 0.014551, 0.976629,
		0.323216, -0.944613, -0.056894,
		26.605141, 35.984913, 34.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877663, 36.618736, 34.925720>,  <26.378891, 36.646141, 34.427933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877663, 36.618736, 34.925720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272760, 36.573933, 34.882233>,  <27.509819, 36.547050, 34.856140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272760, 36.573933, 34.882233>,  <26.877663, 36.618736, 34.925720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272760, 36.573933, 34.882233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057874, 0.384060, -0.921493,
		0.144967, 0.916489, 0.372870,
		0.987742, -0.112006, -0.108717,
		27.569082, 36.540329, 34.849617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252384, 37.301216, 34.948681>,  <26.877663, 36.618736, 34.925720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252384, 37.301216, 34.948681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445419, 37.027050, 34.730572>,  <27.561241, 36.862553, 34.599709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445419, 37.027050, 34.730572>,  <27.252384, 37.301216, 34.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445419, 37.027050, 34.730572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200880, 0.519349, -0.830617,
		0.852499, 0.510381, 0.112947,
		0.482589, -0.685411, -0.545270,
		27.590197, 36.821426, 34.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736460, 37.649639, 34.564377>,  <27.252384, 37.301216, 34.948681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736460, 37.649639, 34.564377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700859, 37.308231, 34.359016>,  <27.679499, 37.103386, 34.235802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700859, 37.308231, 34.359016>,  <27.736460, 37.649639, 34.564377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700859, 37.308231, 34.359016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061875, 0.509710, -0.858118,
		0.994108, -0.108138, 0.007448,
		-0.088999, -0.853523, -0.513398,
		27.674160, 37.052174, 34.204998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224106, 37.816700, 34.147579>,  <27.736460, 37.649639, 34.564377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224106, 37.816700, 34.147579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017225, 37.514900, 33.985966>,  <27.893097, 37.333820, 33.889000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017225, 37.514900, 33.985966>,  <28.224106, 37.816700, 34.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017225, 37.514900, 33.985966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027067, 0.457417, -0.888840,
		0.855436, -0.470645, -0.216154,
		-0.517201, -0.754495, -0.404030,
		27.862064, 37.288551, 33.864758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524277, 37.824535, 33.628021>,  <28.224106, 37.816700, 34.147579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524277, 37.824535, 33.628021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207056, 37.596638, 33.541798>,  <28.016724, 37.459900, 33.490063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207056, 37.596638, 33.541798>,  <28.524277, 37.824535, 33.628021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207056, 37.596638, 33.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013337, 0.370018, -0.928929,
		0.609010, -0.733813, -0.301041,
		-0.793050, -0.569742, -0.215558,
		27.969141, 37.425716, 33.477131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646780, 37.576279, 32.938145>,  <28.524277, 37.824535, 33.628021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646780, 37.576279, 32.938145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259655, 37.594917, 33.037075>,  <28.027380, 37.606098, 33.096436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259655, 37.594917, 33.037075>,  <28.646780, 37.576279, 32.938145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259655, 37.594917, 33.037075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218284, 0.333768, -0.917034,
		-0.125279, -0.941503, -0.312854,
		-0.967811, 0.046594, 0.247329,
		27.969313, 37.608894, 33.111275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245626, 37.316891, 32.362431>,  <28.646780, 37.576279, 32.938145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245626, 37.316891, 32.362431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999828, 37.538681, 32.586914>,  <27.852348, 37.671753, 32.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999828, 37.538681, 32.586914>,  <28.245626, 37.316891, 32.362431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999828, 37.538681, 32.586914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292811, 0.500255, -0.814866,
		-0.732567, -0.665061, -0.145050,
		-0.614497, 0.554472, 0.561208,
		27.815479, 37.705021, 32.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916294, 37.552811, 31.884882>,  <28.245626, 37.316891, 32.362431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916294, 37.552811, 31.884882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806355, 37.812027, 32.168995>,  <27.740391, 37.967556, 32.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806355, 37.812027, 32.168995>,  <27.916294, 37.552811, 31.884882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806355, 37.812027, 32.168995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178850, 0.691382, -0.700003,
		-0.944707, -0.319429, -0.074123,
		-0.274848, 0.648040, 0.710283,
		27.723900, 38.006439, 32.382080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265621, 37.889111, 31.625408>,  <27.916294, 37.552811, 31.884882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265621, 37.889111, 31.625408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403120, 38.110180, 31.929090>,  <27.485620, 38.242821, 32.111301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403120, 38.110180, 31.929090>,  <27.265621, 37.889111, 31.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403120, 38.110180, 31.929090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088663, 0.823961, -0.559667,
		-0.934866, 0.125072, 0.332238,
		0.343749, 0.552671, 0.759204,
		27.506245, 38.275982, 32.156853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837875, 38.386784, 31.618618>,  <27.265621, 37.889111, 31.625408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837875, 38.386784, 31.618618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181549, 38.501801, 31.787907>,  <27.387754, 38.570812, 31.889481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181549, 38.501801, 31.787907>,  <26.837875, 38.386784, 31.618618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181549, 38.501801, 31.787907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011322, 0.816261, -0.577572,
		-0.511538, 0.501034, 0.698064,
		0.859186, 0.287547, 0.423222,
		27.439304, 38.588066, 31.914873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765381, 39.169624, 31.586700>,  <26.837875, 38.386784, 31.618618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765381, 39.169624, 31.586700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150871, 39.101505, 31.668898>,  <27.382166, 39.060635, 31.718216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150871, 39.101505, 31.668898>,  <26.765381, 39.169624, 31.586700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150871, 39.101505, 31.668898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254552, 0.817910, -0.515972,
		-0.080203, 0.549565, 0.831592,
		0.963727, -0.170301, 0.205492,
		27.439989, 39.050415, 31.730545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980507, 39.860722, 31.732840>,  <26.765381, 39.169624, 31.586700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980507, 39.860722, 31.732840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304066, 39.637093, 31.660040>,  <27.498201, 39.502914, 31.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304066, 39.637093, 31.660040>,  <26.980507, 39.860722, 31.732840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304066, 39.637093, 31.660040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488095, 0.811112, -0.322275,
		0.327799, 0.171853, 0.928986,
		0.808895, -0.559075, -0.182001,
		27.546734, 39.469372, 31.605440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399586, 40.361771, 31.845613>,  <26.980507, 39.860722, 31.732840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399586, 40.361771, 31.845613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596476, 40.088474, 31.629873>,  <27.714609, 39.924496, 31.500429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596476, 40.088474, 31.629873>,  <27.399586, 40.361771, 31.845613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596476, 40.088474, 31.629873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430042, 0.729586, -0.531759,
		0.756821, 0.029801, 0.652942,
		0.492225, -0.683239, -0.539351,
		27.744143, 39.883503, 31.468067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063921, 40.639030, 31.736469>,  <27.399586, 40.361771, 31.845613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063921, 40.639030, 31.736469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022665, 40.362564, 31.450352>,  <27.997911, 40.196682, 31.278681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022665, 40.362564, 31.450352>,  <28.063921, 40.639030, 31.736469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022665, 40.362564, 31.450352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405229, 0.627548, -0.664810,
		0.908379, -0.358425, 0.215358,
		-0.103137, -0.691169, -0.715296,
		27.991724, 40.155212, 31.235764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676559, 40.629833, 31.398048>,  <28.063921, 40.639030, 31.736469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676559, 40.629833, 31.398048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403528, 40.485466, 31.143858>,  <28.239710, 40.398846, 30.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403528, 40.485466, 31.143858>,  <28.676559, 40.629833, 31.398048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403528, 40.485466, 31.143858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407662, 0.533654, -0.740963,
		0.606548, -0.764823, -0.217128,
		-0.682577, -0.360914, -0.635476,
		28.198755, 40.377193, 30.953215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064995, 40.487034, 30.872719>,  <28.676559, 40.629833, 31.398048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064995, 40.487034, 30.872719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699627, 40.514816, 30.712297>,  <28.480406, 40.531487, 30.616045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699627, 40.514816, 30.712297>,  <29.064995, 40.487034, 30.872719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699627, 40.514816, 30.712297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346917, 0.648193, -0.677860,
		0.212874, -0.758301, -0.616169,
		-0.913418, 0.069461, -0.401051,
		28.425602, 40.535656, 30.591982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141975, 40.362762, 30.203035>,  <29.064995, 40.487034, 30.872719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141975, 40.362762, 30.203035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800999, 40.566830, 30.248764>,  <28.596413, 40.689270, 30.276201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800999, 40.566830, 30.248764>,  <29.141975, 40.362762, 30.203035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800999, 40.566830, 30.248764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337912, 0.704476, -0.624123,
		-0.398943, -0.493399, -0.772918,
		-0.852444, 0.510167, 0.114320,
		28.545265, 40.719879, 30.283060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816563, 40.468227, 29.514133>,  <29.141975, 40.362762, 30.203035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816563, 40.468227, 29.514133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692888, 40.751167, 29.768396>,  <28.618685, 40.920933, 29.920954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692888, 40.751167, 29.768396>,  <28.816563, 40.468227, 29.514133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692888, 40.751167, 29.768396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248642, 0.705284, -0.663891,
		-0.917923, -0.047214, -0.393940,
		-0.309184, 0.707351, 0.635657,
		28.600134, 40.963371, 29.959093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556965, 40.277515, 29.353176>,  <28.816563, 40.468227, 29.514133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556965, 40.277515, 29.353176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527349, 40.226570, 28.957541>,  <29.509581, 40.196003, 28.720160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527349, 40.226570, 28.957541>,  <29.556965, 40.277515, 29.353176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527349, 40.226570, 28.957541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991575, 0.096308, -0.086627,
		0.106291, -0.987169, 0.119164,
		-0.074040, -0.127367, -0.989088,
		29.505138, 40.188358, 28.660814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176605, 40.156433, 29.166956>,  <29.556965, 40.277515, 29.353176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176605, 40.156433, 29.166956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046761, 40.187325, 28.789881>,  <29.968853, 40.205860, 28.563635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046761, 40.187325, 28.789881>,  <30.176605, 40.156433, 29.166956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046761, 40.187325, 28.789881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924866, -0.182842, -0.333455,
		-0.198115, -0.980105, -0.012072,
		-0.324613, 0.077228, -0.942689,
		29.949377, 40.210491, 28.507074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592766, 39.603230, 28.696289>,  <30.176605, 40.156433, 29.166956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592766, 39.603230, 28.696289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428471, 39.904209, 28.490334>,  <30.329893, 40.084797, 28.366760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428471, 39.904209, 28.490334>,  <30.592766, 39.603230, 28.696289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428471, 39.904209, 28.490334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788459, 0.009551, -0.615013,
		-0.457851, -0.658577, -0.597201,
		-0.410738, 0.752452, -0.514888,
		30.305248, 40.129944, 28.335867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690250, 39.471947, 27.961498>,  <30.592766, 39.603230, 28.696289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690250, 39.471947, 27.961498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666510, 39.859074, 28.059319>,  <30.652266, 40.091351, 28.118010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666510, 39.859074, 28.059319>,  <30.690250, 39.471947, 27.961498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666510, 39.859074, 28.059319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715436, 0.212086, -0.665711,
		-0.696153, 0.135450, -0.704999,
		-0.059350, 0.967819, 0.244550,
		30.648705, 40.149418, 28.132683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844910, 39.792702, 27.360983>,  <30.690250, 39.471947, 27.961498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844910, 39.792702, 27.360983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915367, 40.013397, 27.687065>,  <30.957642, 40.145817, 27.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915367, 40.013397, 27.687065>,  <30.844910, 39.792702, 27.360983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915367, 40.013397, 27.687065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867814, 0.303850, -0.393159,
		-0.464621, 0.776697, -0.425288,
		0.176141, 0.551740, 0.815203,
		30.968210, 40.178921, 27.931625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172213, 40.356621, 27.071859>,  <30.844910, 39.792702, 27.360983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172213, 40.356621, 27.071859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285851, 40.392498, 27.453695>,  <31.354033, 40.414024, 27.682796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285851, 40.392498, 27.453695>,  <31.172213, 40.356621, 27.071859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285851, 40.392498, 27.453695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948746, 0.117480, -0.293393,
		-0.138462, 0.989016, -0.051725,
		0.284094, 0.089698, 0.954592,
		31.371078, 40.419407, 27.740072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521860, 41.031235, 27.139055>,  <31.172213, 40.356621, 27.071859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521860, 41.031235, 27.139055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656448, 40.757778, 27.398104>,  <31.737202, 40.593704, 27.553534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656448, 40.757778, 27.398104>,  <31.521860, 41.031235, 27.139055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656448, 40.757778, 27.398104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941472, 0.229297, -0.247091,
		0.020424, 0.692858, 0.720785,
		0.336473, -0.683645, 0.647623,
		31.757391, 40.552685, 27.592390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250931, 40.883099, 27.407478>,  <31.521860, 41.031235, 27.139055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250931, 40.883099, 27.407478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583420, 41.035496, 27.245527>,  <32.782913, 41.126934, 27.148357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583420, 41.035496, 27.245527>,  <32.250931, 40.883099, 27.407478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583420, 41.035496, 27.245527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555942, 0.572674, -0.602472,
		0.002327, 0.725873, 0.687825,
		0.831218, 0.380989, -0.404876,
		32.832787, 41.149792, 27.124065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380825, 41.033848, 28.212214>,  <32.250931, 40.883099, 27.407478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380825, 41.033848, 28.212214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749943, 41.145512, 28.318443>,  <32.971413, 41.212509, 28.382181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749943, 41.145512, 28.318443>,  <32.380825, 41.033848, 28.212214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749943, 41.145512, 28.318443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273636, -0.010435, 0.961777,
		0.271260, -0.960188, 0.066759,
		0.922790, 0.279159, 0.265572,
		33.026779, 41.229259, 28.398115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488293, 40.679222, 28.795332>,  <32.380825, 41.033848, 28.212214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488293, 40.679222, 28.795332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732922, 40.994316, 28.824865>,  <32.879700, 41.183372, 28.842585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732922, 40.994316, 28.824865>,  <32.488293, 40.679222, 28.795332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732922, 40.994316, 28.824865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244986, 0.099812, 0.964375,
		0.752300, -0.607877, 0.254026,
		0.611577, 0.787732, 0.073833,
		32.916393, 41.230637, 28.847015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935024, 40.662563, 29.260431>,  <32.488293, 40.679222, 28.795332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935024, 40.662563, 29.260431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878281, 41.054317, 29.202908>,  <32.844234, 41.289371, 29.168394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878281, 41.054317, 29.202908>,  <32.935024, 40.662563, 29.260431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878281, 41.054317, 29.202908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356190, 0.085044, 0.930536,
		0.923583, 0.183224, 0.336783,
		-0.141855, 0.979386, -0.143808,
		32.835724, 41.348133, 29.159765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314857, 41.046120, 29.820566>,  <32.935024, 40.662563, 29.260431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314857, 41.046120, 29.820566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988453, 41.229130, 29.679262>,  <32.792610, 41.338936, 29.594479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988453, 41.229130, 29.679262>,  <33.314857, 41.046120, 29.820566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988453, 41.229130, 29.679262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354002, 0.087571, 0.931136,
		0.456956, 0.884873, 0.090507,
		-0.816011, 0.457527, -0.353262,
		32.743649, 41.366386, 29.573284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196404, 41.497337, 30.318537>,  <33.314857, 41.046120, 29.820566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196404, 41.497337, 30.318537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846149, 41.477924, 30.126322>,  <32.635998, 41.466278, 30.010994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846149, 41.477924, 30.126322>,  <33.196404, 41.497337, 30.318537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846149, 41.477924, 30.126322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478277, -0.051383, 0.876704,
		-0.067237, 0.997499, 0.021782,
		-0.875631, -0.048529, -0.480536,
		32.583462, 41.463364, 29.982161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643223, 41.941696, 30.665133>,  <33.196404, 41.497337, 30.318537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643223, 41.941696, 30.665133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448406, 41.654625, 30.466043>,  <32.331516, 41.482384, 30.346590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448406, 41.654625, 30.466043>,  <32.643223, 41.941696, 30.665133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448406, 41.654625, 30.466043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615419, -0.122358, 0.778645,
		-0.619715, 0.685543, -0.382078,
		-0.487045, -0.717676, -0.497723,
		32.302292, 41.439323, 30.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857410, 42.139206, 30.696676>,  <32.643223, 41.941696, 30.665133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857410, 42.139206, 30.696676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923166, 41.752373, 30.618988>,  <31.962620, 41.520271, 30.572376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923166, 41.752373, 30.618988>,  <31.857410, 42.139206, 30.696676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923166, 41.752373, 30.618988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415074, -0.246438, 0.875775,
		-0.894813, -0.063354, -0.441924,
		0.164391, -0.967086, -0.194220,
		31.972483, 41.462246, 30.560722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345158, 41.840908, 30.944408>,  <31.857410, 42.139206, 30.696676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345158, 41.840908, 30.944408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565357, 41.509323, 30.904871>,  <31.697477, 41.310371, 30.881149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565357, 41.509323, 30.904871>,  <31.345158, 41.840908, 30.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565357, 41.509323, 30.904871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456133, -0.397826, 0.796038,
		-0.699209, -0.393132, -0.597121,
		0.550499, -0.828964, -0.098843,
		31.730507, 41.260635, 30.875217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913330, 41.124100, 30.920275>,  <31.345158, 41.840908, 30.944408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913330, 41.124100, 30.920275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287333, 41.065201, 31.049320>,  <31.511734, 41.029861, 31.126747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287333, 41.065201, 31.049320>,  <30.913330, 41.124100, 30.920275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287333, 41.065201, 31.049320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353768, -0.450636, 0.819619,
		0.024690, -0.880480, -0.473441,
		0.935007, -0.147252, 0.322612,
		31.567835, 41.021027, 31.146103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806087, 40.403278, 31.192104>,  <30.913330, 41.124100, 30.920275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806087, 40.403278, 31.192104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160347, 40.552120, 31.303219>,  <31.372902, 40.641426, 31.369886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160347, 40.552120, 31.303219>,  <30.806087, 40.403278, 31.192104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160347, 40.552120, 31.303219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050516, -0.517455, 0.854218,
		0.461603, -0.770568, -0.439485,
		0.885647, 0.372109, 0.277785,
		31.426041, 40.663754, 31.386555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230995, 39.811848, 31.261366>,  <30.806087, 40.403278, 31.192104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230995, 39.811848, 31.261366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392023, 40.097755, 31.490118>,  <31.488640, 40.269299, 31.627369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392023, 40.097755, 31.490118>,  <31.230995, 39.811848, 31.261366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392023, 40.097755, 31.490118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094705, -0.588865, 0.802663,
		0.910478, -0.377286, -0.169366,
		0.402567, 0.714767, 0.571880,
		31.512793, 40.312187, 31.661682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736628, 39.506733, 31.551340>,  <31.230995, 39.811848, 31.261366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736628, 39.506733, 31.551340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673040, 39.822437, 31.788591>,  <31.634888, 40.011860, 31.930943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673040, 39.822437, 31.788591>,  <31.736628, 39.506733, 31.551340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673040, 39.822437, 31.788591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050796, -0.606510, 0.793452,
		0.985976, 0.096005, 0.136506,
		-0.158968, 0.789259, 0.593127,
		31.625351, 40.059216, 31.966530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186569, 39.466297, 32.125668>,  <31.736628, 39.506733, 31.551340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186569, 39.466297, 32.125668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889753, 39.696678, 32.262875>,  <31.711664, 39.834908, 32.345200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889753, 39.696678, 32.262875>,  <32.186569, 39.466297, 32.125668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889753, 39.696678, 32.262875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089041, -0.591839, 0.801123,
		0.664415, 0.563924, 0.490452,
		-0.742041, 0.575948, 0.343014,
		31.667141, 39.869461, 32.365780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183567, 39.463699, 32.858353>,  <32.186569, 39.466297, 32.125668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183567, 39.463699, 32.858353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803988, 39.578083, 32.805092>,  <31.576241, 39.646713, 32.773136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803988, 39.578083, 32.805092>,  <32.183567, 39.463699, 32.858353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803988, 39.578083, 32.805092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274033, -0.538245, 0.796994,
		0.156239, 0.792792, 0.589127,
		-0.948944, 0.285962, -0.133156,
		31.519304, 39.663872, 32.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975916, 39.452717, 33.510246>,  <32.183567, 39.463699, 32.858353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975916, 39.452717, 33.510246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624697, 39.465786, 33.319263>,  <31.413965, 39.473625, 33.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624697, 39.465786, 33.319263>,  <31.975916, 39.452717, 33.510246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624697, 39.465786, 33.319263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429178, -0.495179, 0.755383,
		-0.211746, 0.868176, 0.448813,
		-0.878049, 0.032671, -0.477455,
		31.361282, 39.475586, 33.176025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437477, 39.688675, 33.942562>,  <31.975916, 39.452717, 33.510246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437477, 39.688675, 33.942562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230053, 39.486443, 33.666740>,  <31.105598, 39.365105, 33.501247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230053, 39.486443, 33.666740>,  <31.437477, 39.688675, 33.942562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230053, 39.486443, 33.666740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516614, -0.457354, 0.723835,
		-0.681326, 0.731585, -0.024024,
		-0.518560, -0.505579, -0.689555,
		31.074486, 39.334770, 33.459873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835737, 39.628365, 34.255234>,  <31.437477, 39.688675, 33.942562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835737, 39.628365, 34.255234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765833, 39.374161, 33.954414>,  <30.723890, 39.221638, 33.773922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765833, 39.374161, 33.954414>,  <30.835737, 39.628365, 34.255234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765833, 39.374161, 33.954414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762737, -0.395636, 0.511570,
		-0.622648, 0.663021, -0.415587,
		-0.174760, -0.635511, -0.752053,
		30.713406, 39.183506, 33.728798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122265, 39.639744, 34.067886>,  <30.835737, 39.628365, 34.255234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122265, 39.639744, 34.067886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291662, 39.291275, 33.968521>,  <30.393301, 39.082191, 33.908901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291662, 39.291275, 33.968521>,  <30.122265, 39.639744, 34.067886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291662, 39.291275, 33.968521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741901, -0.490887, 0.456742,
		-0.519846, -0.009126, -0.854211,
		0.423489, -0.871176, -0.248415,
		30.418709, 39.029922, 33.893997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536694, 39.130928, 34.128265>,  <30.122265, 39.639744, 34.067886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536694, 39.130928, 34.128265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839144, 38.881840, 34.047775>,  <30.020615, 38.732388, 33.999481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839144, 38.881840, 34.047775>,  <29.536694, 39.130928, 34.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839144, 38.881840, 34.047775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485272, -0.739821, 0.466021,
		-0.439074, -0.254720, -0.861587,
		0.756125, -0.622722, -0.201228,
		30.065981, 38.695023, 33.987408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176741, 38.572948, 33.875683>,  <29.536694, 39.130928, 34.128265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176741, 38.572948, 33.875683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533560, 38.439472, 33.997604>,  <29.747650, 38.359386, 34.070755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533560, 38.439472, 33.997604>,  <29.176741, 38.572948, 33.875683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533560, 38.439472, 33.997604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410379, -0.880579, 0.237003,
		0.189318, -0.336502, -0.922456,
		0.892047, -0.333688, 0.304803,
		29.801174, 38.339367, 34.089046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293528, 37.833992, 33.787315>,  <29.176741, 38.572948, 33.875683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293528, 37.833992, 33.787315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570522, 37.893921, 34.069595>,  <29.736719, 37.929878, 34.238964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570522, 37.893921, 34.069595>,  <29.293528, 37.833992, 33.787315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570522, 37.893921, 34.069595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219063, -0.888345, 0.403551,
		0.687368, -0.434047, -0.582347,
		0.692486, 0.149818, 0.705704,
		29.778269, 37.938866, 34.281307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480873, 37.156101, 33.929531>,  <29.293528, 37.833992, 33.787315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480873, 37.156101, 33.929531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641762, 37.355774, 34.236526>,  <29.738295, 37.475578, 34.420723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641762, 37.355774, 34.236526>,  <29.480873, 37.156101, 33.929531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641762, 37.355774, 34.236526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072452, -0.818301, 0.570206,
		0.912672, -0.284954, -0.292971,
		0.402221, 0.499184, 0.767485,
		29.762428, 37.505527, 34.466774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110767, 36.857803, 34.135136>,  <29.480873, 37.156101, 33.929531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110767, 36.857803, 34.135136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948679, 37.047665, 34.447674>,  <29.851427, 37.161579, 34.635197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948679, 37.047665, 34.447674>,  <30.110767, 36.857803, 34.135136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948679, 37.047665, 34.447674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008635, -0.852636, 0.522434,
		0.914179, 0.218447, 0.341405,
		-0.405219, 0.474650, 0.781348,
		29.827114, 37.190060, 34.682079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451614, 36.595417, 34.610970>,  <30.110767, 36.857803, 34.135136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451614, 36.595417, 34.610970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149715, 36.761684, 34.813976>,  <29.968576, 36.861446, 34.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149715, 36.761684, 34.813976>,  <30.451614, 36.595417, 34.610970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149715, 36.761684, 34.813976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057114, -0.812337, 0.580385,
		0.653524, 0.409058, 0.636850,
		-0.754748, 0.415669, 0.507519,
		29.923290, 36.886387, 34.966232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583008, 36.312435, 35.240009>,  <30.451614, 36.595417, 34.610970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583008, 36.312435, 35.240009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205421, 36.444447, 35.238922>,  <29.978868, 36.523651, 35.238270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205421, 36.444447, 35.238922>,  <30.583008, 36.312435, 35.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205421, 36.444447, 35.238922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314092, -0.895806, 0.314449,
		0.101345, 0.297682, 0.949271,
		-0.943968, 0.330026, -0.002714,
		29.922232, 36.543453, 35.238110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227335, 35.990540, 35.808689>,  <30.583008, 36.312435, 35.240009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227335, 35.990540, 35.808689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927013, 36.126633, 35.582226>,  <29.746820, 36.208290, 35.446350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927013, 36.126633, 35.582226>,  <30.227335, 35.990540, 35.808689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927013, 36.126633, 35.582226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590937, -0.728936, 0.345608,
		-0.295102, 0.594046, 0.748348,
		-0.750805, 0.340237, -0.566154,
		29.701773, 36.228703, 35.412380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140316, 35.452477, 35.341904>,  <30.227335, 35.990540, 35.808689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140316, 35.452477, 35.341904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976316, 35.372139, 34.986023>,  <29.877916, 35.323936, 34.772495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976316, 35.372139, 34.986023>,  <30.140316, 35.452477, 35.341904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976316, 35.372139, 34.986023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765220, -0.455063, 0.455364,
		-0.496327, 0.867513, 0.032883,
		-0.409998, -0.200847, -0.889698,
		29.853317, 35.311886, 34.719112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769144, 35.104889, 35.898216>,  <30.140316, 35.452477, 35.341904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769144, 35.104889, 35.898216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022099, 35.065231, 36.205528>,  <30.173872, 35.041435, 36.389915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022099, 35.065231, 36.205528>,  <29.769144, 35.104889, 35.898216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022099, 35.065231, 36.205528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288736, -0.950476, 0.115007,
		0.718831, -0.294559, -0.629696,
		0.632388, -0.099145, 0.768281,
		30.211815, 35.035488, 36.436012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221672, 34.510048, 35.802700>,  <29.769144, 35.104889, 35.898216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221672, 34.510048, 35.802700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196194, 34.592224, 36.193336>,  <30.180906, 34.641529, 36.427719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196194, 34.592224, 36.193336>,  <30.221672, 34.510048, 35.802700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196194, 34.592224, 36.193336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010256, -0.978665, 0.205205,
		0.997917, 0.003055, 0.064446,
		-0.063698, 0.205438, 0.976595,
		30.177084, 34.653854, 36.486317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564054, 34.068398, 36.076004>,  <30.221672, 34.510048, 35.802700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564054, 34.068398, 36.076004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344200, 34.162815, 36.396549>,  <30.212288, 34.219463, 36.588879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344200, 34.162815, 36.396549>,  <30.564054, 34.068398, 36.076004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344200, 34.162815, 36.396549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085696, -0.938262, 0.335141,
		0.830999, 0.252879, 0.495473,
		-0.549634, 0.236042, 0.801365,
		30.179310, 34.233627, 36.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958065, 34.164890, 36.794449>,  <30.564054, 34.068398, 36.076004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958065, 34.164890, 36.794449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096170, 34.431095, 37.059139>,  <31.179033, 34.590820, 37.217953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096170, 34.431095, 37.059139>,  <30.958065, 34.164890, 36.794449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096170, 34.431095, 37.059139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213538, 0.630885, -0.745913,
		-0.913890, 0.398840, 0.075709,
		0.345264, 0.665515, 0.661727,
		31.199749, 34.630749, 37.257656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165354, 33.454094, 36.851978>,  <30.958065, 34.164890, 36.794449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165354, 33.454094, 36.851978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190254, 33.118092, 37.067574>,  <31.205194, 32.916489, 37.196930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190254, 33.118092, 37.067574>,  <31.165354, 33.454094, 36.851978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190254, 33.118092, 37.067574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848850, 0.239486, 0.471274,
		-0.524955, -0.486859, -0.698134,
		0.062251, -0.840009, 0.538990,
		31.208929, 32.866089, 37.229271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623390, 32.729893, 36.961704>,  <31.165354, 33.454094, 36.851978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623390, 32.729893, 36.961704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973217, 32.912361, 37.027489>,  <32.183113, 33.021843, 37.066959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973217, 32.912361, 37.027489>,  <31.623390, 32.729893, 36.961704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973217, 32.912361, 37.027489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222075, 0.075290, 0.972118,
		0.431066, -0.886704, 0.167149,
		0.874565, 0.456167, 0.164460,
		32.235588, 33.049210, 37.076828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817675, 32.607578, 37.677795>,  <31.623390, 32.729893, 36.961704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817675, 32.607578, 37.677795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043915, 32.926170, 37.592270>,  <32.179661, 33.117325, 37.540955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043915, 32.926170, 37.592270>,  <31.817675, 32.607578, 37.677795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043915, 32.926170, 37.592270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151358, 0.355122, 0.922485,
		0.810670, -0.489397, 0.321411,
		0.565602, 0.796479, -0.213812,
		32.213596, 33.165115, 37.528126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289944, 32.716087, 38.249191>,  <31.817675, 32.607578, 37.677795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289944, 32.716087, 38.249191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258106, 33.073635, 38.072712>,  <32.239006, 33.288166, 37.966824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258106, 33.073635, 38.072712>,  <32.289944, 32.716087, 38.249191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258106, 33.073635, 38.072712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019753, 0.441101, 0.897240,
		0.996632, 0.080126, -0.017451,
		-0.079590, 0.893874, -0.441198,
		32.234230, 33.341797, 37.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758720, 33.042431, 38.685612>,  <32.289944, 32.716087, 38.249191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758720, 33.042431, 38.685612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552780, 33.318214, 38.481815>,  <32.429214, 33.483685, 38.359539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552780, 33.318214, 38.481815>,  <32.758720, 33.042431, 38.685612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552780, 33.318214, 38.481815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063401, 0.562060, 0.824663,
		0.854932, 0.456881, -0.245665,
		-0.514852, 0.689455, -0.509489,
		32.398323, 33.525051, 38.328968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067715, 33.585075, 38.663879>,  <32.758720, 33.042431, 38.685612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067715, 33.585075, 38.663879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699539, 33.734226, 38.616978>,  <32.478634, 33.823719, 38.588837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699539, 33.734226, 38.616978>,  <33.067715, 33.585075, 38.663879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699539, 33.734226, 38.616978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132485, 0.579827, 0.803895,
		0.367743, 0.724404, -0.583098,
		-0.920442, 0.372879, -0.117255,
		32.423409, 33.846088, 38.581802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138271, 34.217033, 38.712589>,  <33.067715, 33.585075, 38.663879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138271, 34.217033, 38.712589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749367, 34.187130, 38.801243>,  <32.516026, 34.169189, 38.854435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749367, 34.187130, 38.801243>,  <33.138271, 34.217033, 38.712589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749367, 34.187130, 38.801243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124616, 0.636328, 0.761287,
		-0.197944, 0.767788, -0.609360,
		-0.972260, -0.074756, 0.221636,
		32.457687, 34.164703, 38.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954151, 34.931252, 38.944695>,  <33.138271, 34.217033, 38.712589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954151, 34.931252, 38.944695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686394, 34.663235, 39.073040>,  <32.525738, 34.502426, 39.150047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686394, 34.663235, 39.073040>,  <32.954151, 34.931252, 38.944695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686394, 34.663235, 39.073040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109688, 0.516312, 0.849347,
		-0.734764, 0.533355, -0.419112,
		-0.669396, -0.670041, 0.320864,
		32.485577, 34.462223, 39.169300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454628, 35.322147, 39.340599>,  <32.954151, 34.931252, 38.944695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454628, 35.322147, 39.340599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424370, 34.944191, 39.468010>,  <32.406216, 34.717419, 39.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424370, 34.944191, 39.468010>,  <32.454628, 35.322147, 39.340599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424370, 34.944191, 39.468010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080559, 0.312603, 0.946462,
		-0.993875, 0.097255, 0.052472,
		-0.075646, -0.944892, 0.318523,
		32.401676, 34.660725, 39.563568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927912, 35.249004, 39.953674>,  <32.454628, 35.322147, 39.340599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927912, 35.249004, 39.953674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151566, 34.919235, 39.988750>,  <32.285759, 34.721375, 40.009796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151566, 34.919235, 39.988750>,  <31.927912, 35.249004, 39.953674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151566, 34.919235, 39.988750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003688, 0.108241, 0.994118,
		-0.829069, -0.555522, 0.063561,
		0.559134, -0.824427, 0.087690,
		32.319305, 34.671906, 40.015057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576811, 34.689209, 40.359947>,  <31.927912, 35.249004, 39.953674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576811, 34.689209, 40.359947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966398, 34.612118, 40.407688>,  <32.200150, 34.565865, 40.436333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966398, 34.612118, 40.407688>,  <31.576811, 34.689209, 40.359947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966398, 34.612118, 40.407688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120709, 0.004713, 0.992677,
		-0.191881, -0.981241, -0.018674,
		0.973966, -0.192730, 0.119349,
		32.258587, 34.554298, 40.443493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697735, 34.392250, 40.990646>,  <31.576811, 34.689209, 40.359947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697735, 34.392250, 40.990646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087212, 34.428852, 40.907169>,  <32.320896, 34.450813, 40.857082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087212, 34.428852, 40.907169>,  <31.697735, 34.392250, 40.990646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087212, 34.428852, 40.907169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220281, -0.143603, 0.964808,
		0.058314, -0.985396, -0.159982,
		0.973692, 0.091503, -0.208690,
		32.379318, 34.456303, 40.844563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958206, 33.877808, 41.332409>,  <31.697735, 34.392250, 40.990646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958206, 33.877808, 41.332409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299683, 34.069954, 41.251949>,  <32.504570, 34.185242, 41.203674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299683, 34.069954, 41.251949>,  <31.958206, 33.877808, 41.332409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299683, 34.069954, 41.251949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340385, -0.222358, 0.913616,
		0.394146, -0.848412, -0.353335,
		0.853690, 0.480368, -0.201145,
		32.555790, 34.214066, 41.191605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531693, 33.375748, 41.464798>,  <31.958206, 33.877808, 41.332409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531693, 33.375748, 41.464798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672188, 33.747765, 41.507969>,  <32.756485, 33.970974, 41.533871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672188, 33.747765, 41.507969>,  <32.531693, 33.375748, 41.464798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672188, 33.747765, 41.507969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245721, -0.202795, 0.947890,
		0.903467, -0.306416, -0.299761,
		0.351239, 0.930045, 0.107926,
		32.777561, 34.026779, 41.540348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203411, 33.287056, 41.729374>,  <32.531693, 33.375748, 41.464798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203411, 33.287056, 41.729374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104870, 33.662155, 41.827309>,  <33.045746, 33.887215, 41.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104870, 33.662155, 41.827309>,  <33.203411, 33.287056, 41.729374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104870, 33.662155, 41.827309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338230, -0.153554, 0.928451,
		0.908245, 0.311540, -0.279344,
		-0.246355, 0.937744, 0.244837,
		33.030964, 33.943478, 41.900761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682213, 33.495129, 42.140137>,  <33.203411, 33.287056, 41.729374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682213, 33.495129, 42.140137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438217, 33.795994, 42.239868>,  <33.291821, 33.976513, 42.299709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438217, 33.795994, 42.239868>,  <33.682213, 33.495129, 42.140137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438217, 33.795994, 42.239868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217024, -0.144040, 0.965481,
		0.762113, 0.643041, -0.075376,
		-0.609986, 0.752164, 0.249330,
		33.255222, 34.021645, 42.314667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968872, 33.859455, 42.704014>,  <33.682213, 33.495129, 42.140137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968872, 33.859455, 42.704014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578274, 33.945549, 42.708637>,  <33.343914, 33.997204, 42.711411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578274, 33.945549, 42.708637>,  <33.968872, 33.859455, 42.704014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578274, 33.945549, 42.708637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029733, 0.081372, 0.996240,
		0.213483, 0.973167, -0.085859,
		-0.976494, 0.215233, 0.011563,
		33.285324, 34.010120, 42.712105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931202, 34.423695, 43.091049>,  <33.968872, 33.859455, 42.704014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931202, 34.423695, 43.091049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555714, 34.285984, 43.084400>,  <33.330421, 34.203358, 43.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555714, 34.285984, 43.084400>,  <33.931202, 34.423695, 43.091049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555714, 34.285984, 43.084400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035926, 0.049755, 0.998115,
		-0.342804, 0.937548, -0.059074,
		-0.938720, -0.344280, -0.016626,
		33.274097, 34.182701, 43.079411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724373, 34.689590, 43.687141>,  <33.931202, 34.423695, 43.091049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724373, 34.689590, 43.687141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488895, 34.384983, 43.578682>,  <33.347607, 34.202217, 43.513607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488895, 34.384983, 43.578682>,  <33.724373, 34.689590, 43.687141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488895, 34.384983, 43.578682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155241, -0.222681, 0.962452,
		-0.793307, 0.608686, 0.012872,
		-0.588697, -0.761521, -0.271147,
		33.312286, 34.156528, 43.497337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038300, 34.781673, 44.013615>,  <33.724373, 34.689590, 43.687141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038300, 34.781673, 44.013615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101170, 34.393978, 43.937843>,  <33.138893, 34.161362, 43.892380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101170, 34.393978, 43.937843>,  <33.038300, 34.781673, 44.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101170, 34.393978, 43.937843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200835, -0.219171, 0.954793,
		-0.966934, -0.112027, -0.229105,
		0.157175, -0.969234, -0.189424,
		33.148323, 34.103207, 43.881016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429153, 34.489433, 44.236954>,  <33.038300, 34.781673, 44.013615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429153, 34.489433, 44.236954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704472, 34.199417, 44.227394>,  <32.869663, 34.025410, 44.221657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704472, 34.199417, 44.227394>,  <32.429153, 34.489433, 44.236954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704472, 34.199417, 44.227394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343403, -0.354671, 0.869645,
		-0.639003, -0.590363, -0.493099,
		0.688294, -0.725038, -0.023903,
		32.910961, 33.981907, 44.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086277, 33.868958, 44.402016>,  <32.429153, 34.489433, 44.236954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086277, 33.868958, 44.402016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470261, 33.787949, 44.479435>,  <32.700649, 33.739342, 44.525887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470261, 33.787949, 44.479435>,  <32.086277, 33.868958, 44.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470261, 33.787949, 44.479435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272608, -0.516221, 0.811912,
		-0.064514, -0.832166, -0.550760,
		0.959960, -0.202521, 0.193552,
		32.758247, 33.727192, 44.537502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017166, 33.235165, 44.706036>,  <32.086277, 33.868958, 44.402016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017166, 33.235165, 44.706036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376987, 33.338642, 44.846825>,  <32.592880, 33.400730, 44.931297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376987, 33.338642, 44.846825>,  <32.017166, 33.235165, 44.706036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376987, 33.338642, 44.846825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195008, -0.483186, 0.853524,
		0.390869, -0.836426, -0.384204,
		0.899552, 0.258693, 0.351972,
		32.646854, 33.416248, 44.952415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174168, 32.710442, 45.195381>,  <32.017166, 33.235165, 44.706036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174168, 32.710442, 45.195381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454533, 32.983509, 45.278019>,  <32.622753, 33.147350, 45.327602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454533, 32.983509, 45.278019>,  <32.174168, 32.710442, 45.195381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454533, 32.983509, 45.278019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023826, -0.267081, 0.963379,
		0.712847, -0.680169, -0.170936,
		0.700915, 0.682669, 0.206594,
		32.664806, 33.188309, 45.339996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496140, 32.368095, 45.656128>,  <32.174168, 32.710442, 45.195381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496140, 32.368095, 45.656128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590530, 32.753555, 45.706238>,  <32.647163, 32.984833, 45.736305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590530, 32.753555, 45.706238>,  <32.496140, 32.368095, 45.656128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590530, 32.753555, 45.706238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009816, -0.126544, 0.991912,
		0.971709, -0.235299, -0.020403,
		0.235978, 0.963650, 0.125273,
		32.661324, 33.042652, 45.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970268, 32.488976, 46.248146>,  <32.496140, 32.368095, 45.656128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970268, 32.488976, 46.248146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803337, 32.848854, 46.196953>,  <32.703178, 33.064781, 46.166237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803337, 32.848854, 46.196953>,  <32.970268, 32.488976, 46.248146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803337, 32.848854, 46.196953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178373, 0.056996, 0.982311,
		0.891080, 0.432772, 0.136696,
		-0.417325, 0.899700, -0.127983,
		32.678139, 33.118763, 46.158558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277035, 32.905151, 46.755920>,  <32.970268, 32.488976, 46.248146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277035, 32.905151, 46.755920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942677, 33.098286, 46.651497>,  <32.742062, 33.214165, 46.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942677, 33.098286, 46.651497>,  <33.277035, 32.905151, 46.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942677, 33.098286, 46.651497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239194, 0.107648, 0.964986,
		0.494030, 0.869071, 0.025509,
		-0.835895, 0.482834, -0.261058,
		32.691910, 33.243137, 46.573181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282898, 33.383961, 47.141006>,  <33.277035, 32.905151, 46.755920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282898, 33.383961, 47.141006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902103, 33.448093, 47.036686>,  <32.673626, 33.486572, 46.974094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902103, 33.448093, 47.036686>,  <33.282898, 33.383961, 47.141006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902103, 33.448093, 47.036686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187485, 0.368136, 0.910673,
		0.242025, 0.915843, -0.320398,
		-0.951984, 0.160336, -0.260805,
		32.616508, 33.496193, 46.958443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221985, 33.997723, 47.344433>,  <33.282898, 33.383961, 47.141006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221985, 33.997723, 47.344433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864040, 33.819183, 47.344173>,  <32.649273, 33.712059, 47.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864040, 33.819183, 47.344173>,  <33.221985, 33.997723, 47.344433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864040, 33.819183, 47.344173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164762, 0.328974, 0.929855,
		-0.414830, 0.832194, -0.367926,
		-0.894857, -0.446352, -0.000646,
		32.595585, 33.685276, 47.343979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801914, 34.439407, 47.672085>,  <33.221985, 33.997723, 47.344433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801914, 34.439407, 47.672085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562767, 34.119133, 47.687370>,  <32.419277, 33.926968, 47.696541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562767, 34.119133, 47.687370>,  <32.801914, 34.439407, 47.672085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562767, 34.119133, 47.687370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312485, 0.276704, 0.908729,
		-0.738179, 0.531357, -0.415634,
		-0.597867, -0.800683, 0.038216,
		32.383408, 33.878929, 47.698833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074780, 34.668659, 48.003361>,  <32.801914, 34.439407, 47.672085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074780, 34.668659, 48.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126392, 34.275017, 48.052151>,  <32.157360, 34.038830, 48.081425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126392, 34.275017, 48.052151>,  <32.074780, 34.668659, 48.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126392, 34.275017, 48.052151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240170, 0.088327, 0.966704,
		-0.962117, -0.154034, -0.224956,
		0.129036, -0.984110, 0.121975,
		32.165104, 33.979782, 48.088745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477940, 34.528870, 48.256474>,  <32.074780, 34.668659, 48.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477940, 34.528870, 48.256474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728186, 34.233017, 48.355717>,  <31.878334, 34.055508, 48.415264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728186, 34.233017, 48.355717>,  <31.477940, 34.528870, 48.256474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728186, 34.233017, 48.355717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341890, 0.025930, 0.939382,
		-0.701226, -0.672517, -0.236649,
		0.625614, -0.739627, 0.248110,
		31.915871, 34.011127, 48.430149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109764, 33.994900, 48.654037>,  <31.477940, 34.528870, 48.256474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109764, 33.994900, 48.654037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492966, 33.975922, 48.767159>,  <31.722887, 33.964535, 48.835030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492966, 33.975922, 48.767159>,  <31.109764, 33.994900, 48.654037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492966, 33.975922, 48.767159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286516, -0.118533, 0.950715,
		-0.011583, -0.991816, -0.127148,
		0.958005, -0.047442, 0.282799,
		31.780367, 33.961689, 48.851997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036581, 33.571228, 49.238182>,  <31.109764, 33.994900, 48.654037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036581, 33.571228, 49.238182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403231, 33.730606, 49.251083>,  <31.623220, 33.826233, 49.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403231, 33.730606, 49.251083>,  <31.036581, 33.571228, 49.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403231, 33.730606, 49.251083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044294, -0.181423, 0.982407,
		0.397288, -0.899070, -0.183946,
		0.916624, 0.398446, 0.032254,
		31.678219, 33.850140, 49.260761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416571, 33.085548, 49.675236>,  <31.036581, 33.571228, 49.238182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416571, 33.085548, 49.675236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670851, 33.393997, 49.689423>,  <31.823420, 33.579067, 49.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670851, 33.393997, 49.689423>,  <31.416571, 33.085548, 49.675236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670851, 33.393997, 49.689423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239972, -0.241080, 0.940369,
		0.733687, -0.589283, -0.338302,
		0.635702, 0.771120, 0.035466,
		31.861561, 33.625332, 49.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005890, 32.822121, 50.093288>,  <31.416571, 33.085548, 49.675236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005890, 32.822121, 50.093288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001049, 33.222088, 50.091751>,  <31.998144, 33.462067, 50.090828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001049, 33.222088, 50.091751>,  <32.005890, 32.822121, 50.093288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001049, 33.222088, 50.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356914, 0.007911, 0.934104,
		0.934059, 0.009934, -0.356981,
		-0.012103, 0.999919, -0.003843,
		31.997417, 33.522064, 50.090599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669811, 33.047562, 50.343903>,  <32.005890, 32.822121, 50.093288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669811, 33.047562, 50.343903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376648, 33.310684, 50.413342>,  <32.200752, 33.468559, 50.455006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376648, 33.310684, 50.413342>,  <32.669811, 33.047562, 50.343903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376648, 33.310684, 50.413342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241668, 0.013203, 0.970269,
		0.635962, 0.753068, -0.168648,
		-0.732905, 0.657811, 0.173595,
		32.156776, 33.508026, 50.465420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924713, 33.266949, 50.981945>,  <32.669811, 33.047562, 50.343903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924713, 33.266949, 50.981945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551674, 33.411049, 50.973236>,  <32.327850, 33.497509, 50.968010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551674, 33.411049, 50.973236>,  <32.924713, 33.266949, 50.981945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551674, 33.411049, 50.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034087, -0.027872, 0.999030,
		0.359297, 0.932438, 0.038273,
		-0.932600, 0.360254, -0.021770,
		32.271893, 33.519123, 50.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828739, 33.719204, 51.527824>,  <32.924713, 33.266949, 50.981945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828739, 33.719204, 51.527824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441429, 33.661835, 51.445972>,  <32.209042, 33.627415, 51.396862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441429, 33.661835, 51.445972>,  <32.828739, 33.719204, 51.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441429, 33.661835, 51.445972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233618, 0.228948, 0.944990,
		-0.088682, 0.962815, -0.255191,
		-0.968276, -0.143421, -0.204627,
		32.150948, 33.618809, 51.384583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475784, 34.231712, 51.790646>,  <32.828739, 33.719204, 51.527824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475784, 34.231712, 51.790646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 33.944851, 51.755756>,  <32.033268, 33.772736, 51.734821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 33.944851, 51.755756>,  <32.475784, 34.231712, 51.790646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199211, 33.944851, 51.755756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222025, 0.096048, 0.970299,
		-0.687475, 0.690265, -0.225637,
		-0.691435, -0.717153, -0.087226,
		31.991781, 33.729706, 51.729588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884727, 34.483006, 52.050850>,  <32.475784, 34.231712, 51.790646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884727, 34.483006, 52.050850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825981, 34.087364, 52.046772>,  <31.790733, 33.849979, 52.044327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825981, 34.087364, 52.046772>,  <31.884727, 34.483006, 52.050850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825981, 34.087364, 52.046772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338584, 0.040589, 0.940060,
		-0.929403, 0.141515, -0.340856,
		-0.146867, -0.989103, -0.010191,
		31.781921, 33.790634, 52.043716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214451, 34.395363, 52.382408>,  <31.884727, 34.483006, 52.050850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214451, 34.395363, 52.382408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388197, 34.037003, 52.419682>,  <31.492445, 33.821987, 52.442047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388197, 34.037003, 52.419682>,  <31.214451, 34.395363, 52.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388197, 34.037003, 52.419682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329409, -0.061715, 0.942168,
		-0.838341, -0.439941, -0.321925,
		0.434366, -0.895904, 0.093183,
		31.518507, 33.768230, 52.447636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824526, 34.106609, 52.805946>,  <31.214451, 34.395363, 52.382408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824526, 34.106609, 52.805946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918482, 34.487473, 52.884151>,  <31.974855, 34.715988, 52.931076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918482, 34.487473, 52.884151>,  <31.824526, 34.106609, 52.805946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918482, 34.487473, 52.884151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493189, 0.290073, -0.820135,
		-0.837610, 0.096214, 0.537728,
		0.234889, 0.952156, 0.195516,
		31.988949, 34.773121, 52.942806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507490, 34.161819, 53.564358>,  <31.824526, 34.106609, 52.805946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507490, 34.161819, 53.564358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318838, 33.809101, 53.564499>,  <31.205647, 33.597469, 53.564583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318838, 33.809101, 53.564499>,  <31.507490, 34.161819, 53.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318838, 33.809101, 53.564499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240730, -0.129140, -0.961963,
		0.848302, -0.453603, 0.273181,
		-0.471628, -0.881798, 0.000353,
		31.177349, 33.544563, 53.564606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000572, 33.619736, 53.443668>,  <31.507490, 34.161819, 53.564358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000572, 33.619736, 53.443668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644760, 33.514999, 53.293907>,  <31.431274, 33.452156, 53.204048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644760, 33.514999, 53.293907>,  <32.000572, 33.619736, 53.443668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644760, 33.514999, 53.293907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394235, -0.025718, -0.918650,
		0.230914, -0.964768, 0.126105,
		-0.889526, -0.261844, -0.374407,
		31.377903, 33.436447, 53.181583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117855, 32.880558, 53.269337>,  <32.000572, 33.619736, 53.443668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117855, 32.880558, 53.269337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832798, 33.073196, 53.065296>,  <31.661764, 33.188778, 52.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832798, 33.073196, 53.065296>,  <32.117855, 32.880558, 53.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832798, 33.073196, 53.065296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604449, 0.052475, -0.794914,
		-0.356061, -0.874821, -0.328497,
		-0.712645, 0.481597, -0.510100,
		31.619005, 33.217674, 52.912266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479017, 32.562344, 53.152874>,  <32.117855, 32.880558, 53.269337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479017, 32.562344, 53.152874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745764, 32.271217, 53.088898>,  <31.905811, 32.096542, 53.050510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745764, 32.271217, 53.088898>,  <31.479017, 32.562344, 53.152874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745764, 32.271217, 53.088898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076462, -0.146675, 0.986225,
		-0.741246, -0.669908, -0.042162,
		0.666865, -0.727812, -0.159945,
		31.945824, 32.052876, 53.040913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407051, 31.966143, 53.622116>,  <31.479017, 32.562344, 53.152874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407051, 31.966143, 53.622116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799879, 31.990765, 53.550838>,  <32.035576, 32.005539, 53.508072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799879, 31.990765, 53.550838>,  <31.407051, 31.966143, 53.622116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799879, 31.990765, 53.550838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177118, 0.022582, 0.983930,
		0.064598, -0.997848, 0.011273,
		0.982068, 0.061563, -0.178196,
		32.094498, 32.009232, 53.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835072, 31.407005, 54.094200>,  <31.407051, 31.966143, 53.622116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835072, 31.407005, 54.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009251, 31.746216, 53.973377>,  <32.113758, 31.949741, 53.900883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009251, 31.746216, 53.973377>,  <31.835072, 31.407005, 54.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009251, 31.746216, 53.973377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363374, 0.141406, 0.920849,
		0.823617, -0.510740, -0.246576,
		0.435447, 0.848027, -0.302054,
		32.139885, 32.000626, 53.882763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583206, 31.304853, 54.234798>,  <31.835072, 31.407005, 54.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583206, 31.304853, 54.234798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450150, 31.682074, 54.233406>,  <32.370316, 31.908405, 54.232571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450150, 31.682074, 54.233406>,  <32.583206, 31.304853, 54.234798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450150, 31.682074, 54.233406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261239, 0.095693, 0.960519,
		0.906149, 0.318595, -0.278192,
		-0.332638, 0.943048, -0.003482,
		32.350357, 31.964989, 54.232361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139381, 31.765175, 53.873486>,  <32.583206, 31.304853, 54.234798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139381, 31.765175, 53.873486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021564, 31.386538, 53.821018>,  <32.950874, 31.159355, 53.789539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021564, 31.386538, 53.821018>,  <33.139381, 31.765175, 53.873486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021564, 31.386538, 53.821018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586928, -0.070867, -0.806532,
		0.754163, -0.314544, 0.576455,
		-0.294541, -0.946594, -0.131169,
		32.933201, 31.102560, 53.781666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716534, 31.307737, 53.784279>,  <33.139381, 31.765175, 53.873486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716534, 31.307737, 53.784279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408348, 31.148104, 53.585438>,  <33.223434, 31.052322, 53.466133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408348, 31.148104, 53.585438>,  <33.716534, 31.307737, 53.784279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408348, 31.148104, 53.585438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540072, 0.005644, -0.841600,
		0.338676, -0.916897, 0.211186,
		-0.770468, -0.399086, -0.497101,
		33.177208, 31.028378, 53.436306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820004, 30.707037, 53.223751>,  <33.716534, 31.307737, 53.784279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820004, 30.707037, 53.223751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508827, 30.930199, 53.108131>,  <33.322121, 31.064096, 53.038761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508827, 30.930199, 53.108131>,  <33.820004, 30.707037, 53.223751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508827, 30.930199, 53.108131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399609, 0.084295, -0.912802,
		-0.484892, -0.825612, -0.288521,
		-0.777941, 0.557906, -0.289048,
		33.275444, 31.097570, 53.021416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607243, 30.370445, 52.676746>,  <33.820004, 30.707037, 53.223751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607243, 30.370445, 52.676746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453293, 30.732334, 52.603695>,  <33.360924, 30.949467, 52.559864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453293, 30.732334, 52.603695>,  <33.607243, 30.370445, 52.676746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453293, 30.732334, 52.603695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320793, -0.054412, -0.945585,
		-0.865429, -0.422514, -0.269287,
		-0.384870, 0.904722, -0.182629,
		33.337833, 31.003750, 52.548904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287048, 30.322783, 52.094398>,  <33.607243, 30.370445, 52.676746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287048, 30.322783, 52.094398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321587, 30.719055, 52.136536>,  <33.342312, 30.956818, 52.161816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321587, 30.719055, 52.136536>,  <33.287048, 30.322783, 52.094398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321587, 30.719055, 52.136536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252855, 0.080479, -0.964151,
		-0.963643, 0.109888, -0.243550,
		0.086348, 0.990681, 0.105339,
		33.347492, 31.016260, 52.168137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951939, 30.700237, 51.532291>,  <33.287048, 30.322783, 52.094398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951939, 30.700237, 51.532291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221680, 30.974882, 51.640961>,  <33.383526, 31.139669, 51.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221680, 30.974882, 51.640961>,  <32.951939, 30.700237, 51.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221680, 30.974882, 51.640961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352882, 0.023513, -0.935373,
		-0.648628, 0.726641, -0.226438,
		0.674356, 0.686614, 0.271669,
		33.423988, 31.180866, 51.722462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807426, 31.283884, 51.163147>,  <32.951939, 30.700237, 51.532291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807426, 31.283884, 51.163147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190155, 31.303488, 51.277748>,  <33.419792, 31.315250, 51.346508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190155, 31.303488, 51.277748>,  <32.807426, 31.283884, 51.163147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190155, 31.303488, 51.277748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280591, 0.101450, -0.954451,
		-0.075844, 0.993633, 0.083318,
		0.956826, 0.049011, 0.286499,
		33.477203, 31.318192, 51.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119850, 31.817953, 50.697151>,  <32.807426, 31.283884, 51.163147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119850, 31.817953, 50.697151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430847, 31.606222, 50.832981>,  <33.617447, 31.479183, 50.914478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430847, 31.606222, 50.832981>,  <33.119850, 31.817953, 50.697151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430847, 31.606222, 50.832981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514788, 0.225519, -0.827124,
		0.361239, 0.817896, 0.447831,
		0.777496, -0.529328, 0.339577,
		33.664097, 31.447424, 50.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727753, 32.184097, 50.524044>,  <33.119850, 31.817953, 50.697151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727753, 32.184097, 50.524044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856277, 31.811481, 50.592163>,  <33.933392, 31.587914, 50.633034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856277, 31.811481, 50.592163>,  <33.727753, 32.184097, 50.524044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856277, 31.811481, 50.592163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566955, 0.045188, -0.822508,
		0.758500, 0.360834, 0.542658,
		0.321310, -0.931535, 0.170302,
		33.952671, 31.532021, 50.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498756, 32.229618, 50.341213>,  <33.727753, 32.184097, 50.524044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498756, 32.229618, 50.341213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361446, 31.853926, 50.340145>,  <34.279060, 31.628510, 50.339504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361446, 31.853926, 50.340145>,  <34.498756, 32.229618, 50.341213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361446, 31.853926, 50.340145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394350, -0.141546, -0.907994,
		0.852438, -0.312745, 0.418975,
		-0.343275, -0.939231, -0.002672,
		34.258465, 31.572157, 50.339344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159664, 31.867504, 50.205128>,  <34.498756, 32.229618, 50.341213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159664, 31.867504, 50.205128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843948, 31.636055, 50.122948>,  <34.654518, 31.497185, 50.073639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843948, 31.636055, 50.122948>,  <35.159664, 31.867504, 50.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843948, 31.636055, 50.122948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297995, -0.068427, -0.952112,
		0.536857, -0.812718, 0.226437,
		-0.789293, -0.578625, -0.205450,
		34.607159, 31.462467, 50.061314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457352, 31.429983, 49.713959>,  <35.159664, 31.867504, 50.205128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457352, 31.429983, 49.713959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059074, 31.431795, 49.676933>,  <34.820107, 31.432882, 49.654716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059074, 31.431795, 49.676933>,  <35.457352, 31.429983, 49.713959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059074, 31.431795, 49.676933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092342, -0.036475, -0.995059,
		-0.007877, -0.999324, 0.035901,
		-0.995696, 0.004523, -0.092567,
		34.760365, 31.433155, 49.649162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474388, 30.988531, 49.193214>,  <35.457352, 31.429983, 49.713959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474388, 30.988531, 49.193214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131985, 31.195068, 49.183056>,  <34.926544, 31.318991, 49.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131985, 31.195068, 49.183056>,  <35.474388, 30.988531, 49.193214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131985, 31.195068, 49.183056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050318, 0.034332, -0.998143,
		-0.514514, -0.855693, -0.055370,
		-0.856004, 0.516344, -0.025392,
		34.875183, 31.349972, 49.175438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126423, 30.661350, 48.795803>,  <35.474388, 30.988531, 49.193214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126423, 30.661350, 48.795803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914768, 31.000132, 48.775097>,  <34.787773, 31.203400, 48.762672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914768, 31.000132, 48.775097>,  <35.126423, 30.661350, 48.795803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914768, 31.000132, 48.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018454, -0.072476, -0.997199,
		-0.848334, -0.526703, 0.053980,
		-0.529140, 0.846954, -0.051764,
		34.756027, 31.254217, 48.759567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604080, 30.460550, 48.353092>,  <35.126423, 30.661350, 48.795803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604080, 30.460550, 48.353092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648949, 30.857998, 48.357830>,  <34.675869, 31.096466, 48.360672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648949, 30.857998, 48.357830>,  <34.604080, 30.460550, 48.353092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648949, 30.857998, 48.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080267, 0.002817, -0.996769,
		-0.990442, 0.112755, -0.079439,
		0.112167, 0.993619, 0.011841,
		34.682598, 31.156084, 48.361382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994976, 30.815294, 47.959511>,  <34.604080, 30.460550, 48.353092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994976, 30.815294, 47.959511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315823, 31.053947, 47.969639>,  <34.508331, 31.197140, 47.975716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315823, 31.053947, 47.969639>,  <33.994976, 30.815294, 47.959511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315823, 31.053947, 47.969639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094999, 0.169350, -0.980967,
		-0.589565, 0.784442, 0.192517,
		0.802115, 0.596633, 0.025322,
		34.556458, 31.232937, 47.977234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850647, 31.109644, 47.390980>,  <33.994976, 30.815294, 47.959511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850647, 31.109644, 47.390980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216972, 31.246096, 47.475754>,  <34.436768, 31.327967, 47.526619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216972, 31.246096, 47.475754>,  <33.850647, 31.109644, 47.390980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216972, 31.246096, 47.475754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086204, 0.348438, -0.933359,
		-0.392240, 0.873054, 0.289698,
		0.915815, 0.341128, 0.211932,
		34.491718, 31.348434, 47.539333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888985, 31.867668, 47.347137>,  <33.850647, 31.109644, 47.390980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888985, 31.867668, 47.347137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260044, 31.730396, 47.288212>,  <34.482677, 31.648033, 47.252857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260044, 31.730396, 47.288212>,  <33.888985, 31.867668, 47.347137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260044, 31.730396, 47.288212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021185, 0.345470, -0.938191,
		0.372859, 0.873430, 0.313204,
		0.927646, -0.343177, -0.147315,
		34.538338, 31.627443, 47.244019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305500, 32.357300, 46.970257>,  <33.888985, 31.867668, 47.347137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305500, 32.357300, 46.970257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532665, 32.035622, 46.900116>,  <34.668964, 31.842615, 46.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532665, 32.035622, 46.900116>,  <34.305500, 32.357300, 46.970257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532665, 32.035622, 46.900116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010047, 0.219797, -0.975494,
		0.823030, 0.552230, 0.132904,
		0.567909, -0.804196, -0.175351,
		34.703037, 31.794363, 46.847511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777962, 32.589642, 46.501514>,  <34.305500, 32.357300, 46.970257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777962, 32.589642, 46.501514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764393, 32.191120, 46.469944>,  <34.756252, 31.952007, 46.451000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764393, 32.191120, 46.469944>,  <34.777962, 32.589642, 46.501514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764393, 32.191120, 46.469944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003644, 0.078849, -0.996880,
		0.999418, -0.034103, 0.000956,
		-0.033921, -0.996303, -0.078927,
		34.754215, 31.892229, 46.446266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362179, 32.338860, 45.940880>,  <34.777962, 32.589642, 46.501514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362179, 32.338860, 45.940880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084995, 32.054588, 45.989449>,  <34.918686, 31.884026, 46.018589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084995, 32.054588, 45.989449>,  <35.362179, 32.338860, 45.940880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084995, 32.054588, 45.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060350, -0.110652, -0.992025,
		0.718449, -0.694758, 0.033788,
		-0.692956, -0.710681, 0.121426,
		34.877110, 31.841385, 46.025875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510117, 31.908384, 45.386143>,  <35.362179, 32.338860, 45.940880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510117, 31.908384, 45.386143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175915, 31.721718, 45.502182>,  <34.975395, 31.609718, 45.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175915, 31.721718, 45.502182>,  <35.510117, 31.908384, 45.386143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175915, 31.721718, 45.502182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113546, -0.369926, -0.922096,
		0.537626, -0.803354, 0.256087,
		-0.835503, -0.466665, 0.290100,
		34.925262, 31.581718, 45.589211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520039, 31.249741, 45.055180>,  <35.510117, 31.908384, 45.386143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520039, 31.249741, 45.055180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133873, 31.274963, 45.156372>,  <34.902172, 31.290096, 45.217087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133873, 31.274963, 45.156372>,  <35.520039, 31.249741, 45.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133873, 31.274963, 45.156372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257181, -0.389752, -0.884280,
		0.042841, -0.918759, 0.392488,
		-0.965413, 0.063057, 0.252984,
		34.844250, 31.293880, 45.232265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170536, 30.532316, 44.930904>,  <35.520039, 31.249741, 45.055180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170536, 30.532316, 44.930904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915371, 30.840017, 44.916386>,  <34.762272, 31.024639, 44.907677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915371, 30.840017, 44.916386>,  <35.170536, 30.532316, 44.930904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915371, 30.840017, 44.916386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216374, -0.224260, -0.950205,
		-0.739089, -0.598294, 0.309504,
		-0.637911, 0.769255, -0.036293,
		34.723999, 31.070793, 44.905499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584564, 30.276194, 44.600445>,  <35.170536, 30.532316, 44.930904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584564, 30.276194, 44.600445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565140, 30.673397, 44.557407>,  <34.553486, 30.911718, 44.531586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565140, 30.673397, 44.557407>,  <34.584564, 30.276194, 44.600445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565140, 30.673397, 44.557407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122070, -0.112812, -0.986089,
		-0.991333, -0.034755, 0.126695,
		-0.048564, 0.993008, -0.107591,
		34.550571, 30.971300, 44.525131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956684, 30.394976, 44.295773>,  <34.584564, 30.276194, 44.600445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956684, 30.394976, 44.295773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156067, 30.725342, 44.190395>,  <34.275696, 30.923561, 44.127171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156067, 30.725342, 44.190395>,  <33.956684, 30.394976, 44.295773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156067, 30.725342, 44.190395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358102, -0.080584, -0.930199,
		-0.789494, 0.558007, 0.255594,
		0.498461, 0.825915, -0.263443,
		34.305607, 30.973116, 44.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440823, 30.842688, 43.914158>,  <33.956684, 30.394976, 44.295773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440823, 30.842688, 43.914158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797638, 30.987381, 43.805779>,  <34.011726, 31.074196, 43.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797638, 30.987381, 43.805779>,  <33.440823, 30.842688, 43.914158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797638, 30.987381, 43.805779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224660, -0.165290, -0.960316,
		-0.392162, 0.917512, -0.066179,
		0.892041, 0.361732, -0.270949,
		34.065250, 31.095901, 43.724495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304180, 31.199535, 43.328480>,  <33.440823, 30.842688, 43.914158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304180, 31.199535, 43.328480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700619, 31.149157, 43.311169>,  <33.938480, 31.118929, 43.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700619, 31.149157, 43.311169>,  <33.304180, 31.199535, 43.328480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700619, 31.149157, 43.311169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051632, -0.063862, -0.996622,
		0.122758, 0.989979, -0.069796,
		0.991093, -0.125947, -0.043275,
		33.997948, 31.111372, 43.298187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446609, 31.755592, 43.025276>,  <33.304180, 31.199535, 43.328480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446609, 31.755592, 43.025276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754566, 31.503426, 42.985596>,  <33.939339, 31.352125, 42.961788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754566, 31.503426, 42.985596>,  <33.446609, 31.755592, 43.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754566, 31.503426, 42.985596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096393, 0.038789, -0.994587,
		0.630855, 0.775286, -0.030904,
		0.769890, -0.630419, -0.099202,
		33.985535, 31.314301, 42.955833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993729, 32.053623, 42.741737>,  <33.446609, 31.755592, 43.025276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993729, 32.053623, 42.741737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068459, 31.672272, 42.646942>,  <34.113297, 31.443460, 42.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068459, 31.672272, 42.646942>,  <33.993729, 32.053623, 42.741737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068459, 31.672272, 42.646942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106903, 0.259528, -0.959801,
		0.976560, 0.153977, 0.150404,
		0.186821, -0.953381, -0.236984,
		34.124504, 31.386257, 42.575848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481705, 32.054531, 42.217236>,  <33.993729, 32.053623, 42.741737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481705, 32.054531, 42.217236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332115, 31.685080, 42.183655>,  <34.242363, 31.463408, 42.163506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332115, 31.685080, 42.183655>,  <34.481705, 32.054531, 42.217236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332115, 31.685080, 42.183655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159604, 0.025081, -0.986862,
		0.913603, -0.382461, 0.138035,
		-0.373974, -0.923631, -0.083956,
		34.219921, 31.407990, 42.158466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940018, 31.751406, 41.804996>,  <34.481705, 32.054531, 42.217236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940018, 31.751406, 41.804996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615738, 31.518053, 41.785282>,  <34.421169, 31.378042, 41.773453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615738, 31.518053, 41.785282>,  <34.940018, 31.751406, 41.804996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615738, 31.518053, 41.785282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053488, 0.010021, -0.998518,
		0.583011, -0.812136, 0.023080,
		-0.810702, -0.583382, -0.049281,
		34.372528, 31.343039, 41.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144573, 31.169558, 41.304337>,  <34.940018, 31.751406, 41.804996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144573, 31.169558, 41.304337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747581, 31.201769, 41.341213>,  <34.509388, 31.221096, 41.363338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747581, 31.201769, 41.341213>,  <35.144573, 31.169558, 41.304337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747581, 31.201769, 41.341213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099313, -0.089387, -0.991033,
		-0.071550, -0.992737, 0.096710,
		-0.992480, 0.080513, 0.092196,
		34.449837, 31.225927, 41.368870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942268, 30.755236, 40.789513>,  <35.144573, 31.169558, 41.304337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942268, 30.755236, 40.789513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621861, 30.978279, 40.876637>,  <34.429615, 31.112106, 40.928909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621861, 30.978279, 40.876637>,  <34.942268, 30.755236, 40.789513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621861, 30.978279, 40.876637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136034, 0.184775, -0.973320,
		-0.582980, -0.809276, -0.072154,
		-0.801017, 0.557611, 0.217810,
		34.381554, 31.145563, 40.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374027, 30.483316, 40.339321>,  <34.942268, 30.755236, 40.789513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374027, 30.483316, 40.339321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288799, 30.856812, 40.454376>,  <34.237663, 31.080908, 40.523411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288799, 30.856812, 40.454376>,  <34.374027, 30.483316, 40.339321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288799, 30.856812, 40.454376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169882, 0.254511, -0.952032,
		-0.962154, -0.251717, 0.104395,
		-0.213073, 0.933736, 0.287641,
		34.224876, 31.136932, 40.540668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764835, 30.675095, 40.038879>,  <34.374027, 30.483316, 40.339321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764835, 30.675095, 40.038879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876904, 31.044270, 40.144478>,  <33.944145, 31.265774, 40.207836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876904, 31.044270, 40.144478>,  <33.764835, 30.675095, 40.038879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876904, 31.044270, 40.144478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238373, 0.333284, -0.912195,
		-0.929884, 0.192640, 0.313379,
		0.280169, 0.922936, 0.263995,
		33.960953, 31.321150, 40.223675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368198, 31.059155, 39.608101>,  <33.764835, 30.675095, 40.038879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368198, 31.059155, 39.608101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640217, 31.325159, 39.731583>,  <33.803429, 31.484762, 39.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640217, 31.325159, 39.731583>,  <33.368198, 31.059155, 39.608101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640217, 31.325159, 39.731583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109253, 0.508269, -0.854240,
		-0.724981, 0.547198, 0.418302,
		0.680048, 0.665009, 0.308703,
		33.844231, 31.524662, 39.824192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055614, 31.813847, 39.649944>,  <33.368198, 31.059155, 39.608101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055614, 31.813847, 39.649944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449703, 31.796967, 39.583538>,  <33.686157, 31.786839, 39.543694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449703, 31.796967, 39.583538>,  <33.055614, 31.813847, 39.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449703, 31.796967, 39.583538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127970, 0.462913, -0.877118,
		0.113866, 0.885399, 0.450670,
		0.985220, -0.042201, -0.166014,
		33.745270, 31.784306, 39.533733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108994, 32.254353, 39.095097>,  <33.055614, 31.813847, 39.649944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108994, 32.254353, 39.095097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476757, 32.097347, 39.105072>,  <33.697414, 32.003143, 39.111057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476757, 32.097347, 39.105072>,  <33.108994, 32.254353, 39.095097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476757, 32.097347, 39.105072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124787, 0.230987, -0.964921,
		0.372981, 0.890270, 0.261352,
		0.919409, -0.392511, 0.024941,
		33.752579, 31.979593, 39.112553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577126, 32.779961, 38.850426>,  <33.108994, 32.254353, 39.095097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577126, 32.779961, 38.850426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759533, 32.431885, 38.775784>,  <33.868977, 32.223038, 38.730999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759533, 32.431885, 38.775784>,  <33.577126, 32.779961, 38.850426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759533, 32.431885, 38.775784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205303, 0.306873, -0.929343,
		0.865968, 0.385486, 0.318592,
		0.456016, -0.870189, -0.186601,
		33.896339, 32.170830, 38.719803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234863, 32.933910, 38.581017>,  <33.577126, 32.779961, 38.850426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234863, 32.933910, 38.581017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135792, 32.569580, 38.448921>,  <34.076347, 32.350983, 38.369663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135792, 32.569580, 38.448921>,  <34.234863, 32.933910, 38.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135792, 32.569580, 38.448921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045838, 0.351494, -0.935067,
		0.967757, -0.216460, -0.128809,
		-0.247680, -0.910822, -0.330238,
		34.061489, 32.296333, 38.349850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946178, 32.593513, 38.414513>,  <34.234863, 32.933910, 38.581017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946178, 32.593513, 38.414513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265152, 32.450031, 38.220428>,  <35.456535, 32.363941, 38.103977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265152, 32.450031, 38.220428>,  <34.946178, 32.593513, 38.414513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265152, 32.450031, 38.220428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478631, -0.113626, 0.870633,
		-0.367431, -0.926510, 0.081077,
		0.797438, -0.358703, -0.485207,
		35.504383, 32.342422, 38.074867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202324, 31.867323, 38.492805>,  <34.946178, 32.593513, 38.414513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202324, 31.867323, 38.492805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534607, 32.080471, 38.428329>,  <35.733974, 32.208359, 38.389645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534607, 32.080471, 38.428329>,  <35.202324, 31.867323, 38.492805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534607, 32.080471, 38.428329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359115, -0.291666, 0.886548,
		0.425401, -0.794344, -0.433649,
		0.830704, 0.532869, -0.161186,
		35.783817, 32.240330, 38.379974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697060, 31.349901, 38.608311>,  <35.202324, 31.867323, 38.492805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697060, 31.349901, 38.608311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885555, 31.697950, 38.666019>,  <35.998653, 31.906780, 38.700645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885555, 31.697950, 38.666019>,  <35.697060, 31.349901, 38.608311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885555, 31.697950, 38.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472282, -0.387084, 0.791906,
		0.744902, -0.305042, -0.593355,
		0.471243, 0.870124, 0.144274,
		36.026928, 31.958988, 38.709301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114353, 31.106089, 39.054066>,  <35.697060, 31.349901, 38.608311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114353, 31.106089, 39.054066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179420, 31.500000, 39.078575>,  <36.218460, 31.736347, 39.093281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179420, 31.500000, 39.078575>,  <36.114353, 31.106089, 39.054066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179420, 31.500000, 39.078575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572124, -0.144734, 0.807296,
		0.803875, -0.096261, -0.586958,
		0.162664, 0.984777, 0.061275,
		36.228218, 31.795433, 39.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873631, 31.257084, 39.186356>,  <36.114353, 31.106089, 39.054066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873631, 31.257084, 39.186356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676193, 31.569151, 39.340084>,  <36.557732, 31.756392, 39.432320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676193, 31.569151, 39.340084>,  <36.873631, 31.257084, 39.186356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676193, 31.569151, 39.340084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587552, -0.026664, 0.808747,
		0.641207, 0.625000, -0.445229,
		-0.493595, 0.780169, 0.384317,
		36.528114, 31.803202, 39.455379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428291, 31.690407, 39.531101>,  <36.873631, 31.257084, 39.186356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428291, 31.690407, 39.531101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082058, 31.812204, 39.690125>,  <36.874317, 31.885283, 39.785538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082058, 31.812204, 39.690125>,  <37.428291, 31.690407, 39.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082058, 31.812204, 39.690125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431759, 0.051617, 0.900511,
		0.253680, 0.951114, -0.176147,
		-0.865581, 0.304495, 0.397558,
		36.822384, 31.903553, 39.809391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674080, 32.129719, 40.150455>,  <37.428291, 31.690407, 39.531101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674080, 32.129719, 40.150455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288815, 32.048275, 40.220711>,  <37.057655, 31.999409, 40.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288815, 32.048275, 40.220711>,  <37.674080, 32.129719, 40.150455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288815, 32.048275, 40.220711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205069, -0.133677, 0.969576,
		-0.173937, 0.969883, 0.170508,
		-0.963168, -0.203611, 0.175642,
		36.999863, 31.987192, 40.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437305, 32.557983, 40.710728>,  <37.674080, 32.129719, 40.150455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437305, 32.557983, 40.710728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188602, 32.244823, 40.701931>,  <37.039379, 32.056927, 40.696651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188602, 32.244823, 40.701931>,  <37.437305, 32.557983, 40.710728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188602, 32.244823, 40.701931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167117, -0.160051, 0.972859,
		-0.765172, 0.601208, 0.230349,
		-0.621759, -0.782900, -0.021995,
		37.002075, 32.009953, 40.695332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081539, 32.626938, 41.245674>,  <37.437305, 32.557983, 40.710728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081539, 32.626938, 41.245674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027721, 32.240612, 41.157036>,  <36.995430, 32.008816, 41.103851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027721, 32.240612, 41.157036>,  <37.081539, 32.626938, 41.245674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027721, 32.240612, 41.157036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128471, -0.238744, 0.962547,
		-0.982544, 0.101035, 0.156200,
		-0.134542, -0.965812, -0.221597,
		36.987358, 31.950869, 41.090557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582092, 32.409828, 41.636784>,  <37.081539, 32.626938, 41.245674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582092, 32.409828, 41.636784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759403, 32.059555, 41.560181>,  <36.865791, 31.849390, 41.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759403, 32.059555, 41.560181>,  <36.582092, 32.409828, 41.636784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759403, 32.059555, 41.560181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167256, -0.129091, 0.977426,
		-0.880641, -0.465304, 0.089240,
		0.443280, -0.875687, -0.191508,
		36.892387, 31.796848, 41.502728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250454, 31.895197, 42.007267>,  <36.582092, 32.409828, 41.636784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250454, 31.895197, 42.007267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615498, 31.757786, 41.918594>,  <36.834522, 31.675339, 41.865391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615498, 31.757786, 41.918594>,  <36.250454, 31.895197, 42.007267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615498, 31.757786, 41.918594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205430, -0.083497, 0.975103,
		-0.353484, -0.935424, -0.005629,
		0.912605, -0.343527, -0.221679,
		36.889278, 31.654728, 41.852089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398102, 31.295456, 42.475445>,  <36.250454, 31.895197, 42.007267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398102, 31.295456, 42.475445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749897, 31.438997, 42.350407>,  <36.960976, 31.525122, 42.275383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749897, 31.438997, 42.350407>,  <36.398102, 31.295456, 42.475445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749897, 31.438997, 42.350407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358013, -0.066107, 0.931374,
		0.313563, -0.931050, -0.186615,
		0.879491, 0.358854, -0.312599,
		37.013744, 31.546654, 42.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905933, 30.878115, 42.781658>,  <36.398102, 31.295456, 42.475445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905933, 30.878115, 42.781658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149761, 31.179939, 42.684448>,  <37.296059, 31.361034, 42.626122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149761, 31.179939, 42.684448>,  <36.905933, 30.878115, 42.781658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149761, 31.179939, 42.684448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464228, -0.091284, 0.880999,
		0.642583, -0.649850, -0.405933,
		0.609573, 0.754561, -0.243021,
		37.332634, 31.406307, 42.611542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546200, 30.765974, 43.083225>,  <36.905933, 30.878115, 42.781658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546200, 30.765974, 43.083225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553841, 31.158010, 43.004177>,  <37.558426, 31.393232, 42.956749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553841, 31.158010, 43.004177>,  <37.546200, 30.765974, 43.083225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553841, 31.158010, 43.004177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484539, 0.163821, 0.859293,
		0.874561, -0.112165, -0.471764,
		0.019098, 0.980093, -0.197619,
		37.559570, 31.452038, 42.944893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230446, 30.977812, 43.223598>,  <37.546200, 30.765974, 43.083225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230446, 30.977812, 43.223598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981323, 31.289869, 43.247234>,  <37.831852, 31.477104, 43.261417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981323, 31.289869, 43.247234>,  <38.230446, 30.977812, 43.223598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981323, 31.289869, 43.247234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366846, 0.224479, 0.902792,
		0.691043, 0.583939, -0.425999,
		-0.622804, 0.780144, 0.059091,
		37.794483, 31.523912, 43.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618736, 31.453634, 43.497021>,  <38.230446, 30.977812, 43.223598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618736, 31.453634, 43.497021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259304, 31.612818, 43.570980>,  <38.043644, 31.708328, 43.615356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259304, 31.612818, 43.570980>,  <38.618736, 31.453634, 43.497021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259304, 31.612818, 43.570980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326134, 0.323738, 0.888161,
		0.293594, 0.858383, -0.420692,
		-0.898576, 0.397961, 0.184900,
		37.989731, 31.732206, 43.626450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828968, 31.902794, 43.949665>,  <38.618736, 31.453634, 43.497021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828968, 31.902794, 43.949665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434597, 31.863855, 44.004032>,  <38.197975, 31.840492, 44.036652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434597, 31.863855, 44.004032>,  <38.828968, 31.902794, 43.949665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434597, 31.863855, 44.004032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117875, 0.171734, 0.978066,
		-0.118553, 0.980322, -0.157843,
		-0.985926, -0.097347, 0.135915,
		38.138821, 31.834652, 44.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598240, 32.527931, 44.351219>,  <38.828968, 31.902794, 43.949665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598240, 32.527931, 44.351219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297398, 32.274990, 44.425480>,  <38.116890, 32.123226, 44.470036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297398, 32.274990, 44.425480>,  <38.598240, 32.527931, 44.351219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297398, 32.274990, 44.425480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060071, 0.214752, 0.974819,
		-0.656295, 0.744323, -0.123531,
		-0.752109, -0.632348, 0.185653,
		38.071766, 32.085285, 44.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074799, 32.881580, 44.929157>,  <38.598240, 32.527931, 44.351219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074799, 32.881580, 44.929157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004284, 32.488335, 44.948784>,  <37.961975, 32.252388, 44.960560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004284, 32.488335, 44.948784>,  <38.074799, 32.881580, 44.929157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004284, 32.488335, 44.948784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056606, 0.039635, 0.997609,
		-0.982709, 0.178646, 0.048663,
		-0.176290, -0.983115, 0.049062,
		37.951397, 32.193401, 44.963501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462406, 32.759438, 45.422852>,  <38.074799, 32.881580, 44.929157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462406, 32.759438, 45.422852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633030, 32.397732, 45.415310>,  <37.735405, 32.180710, 45.410786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633030, 32.397732, 45.415310>,  <37.462406, 32.759438, 45.422852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633030, 32.397732, 45.415310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064965, -0.051420, 0.996562,
		-0.902124, -0.423867, -0.080679,
		0.426558, -0.904263, -0.018851,
		37.760998, 32.126453, 45.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949078, 32.300888, 45.780830>,  <37.462406, 32.759438, 45.422852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949078, 32.300888, 45.780830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314125, 32.137520, 45.787964>,  <37.533154, 32.039501, 45.792244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314125, 32.137520, 45.787964>,  <36.949078, 32.300888, 45.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314125, 32.137520, 45.787964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029025, -0.021217, 0.999354,
		-0.407775, -0.912549, -0.031217,
		0.912621, -0.408418, 0.017835,
		37.587910, 32.014996, 45.793316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887486, 31.835018, 46.310982>,  <36.949078, 32.300888, 45.780830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887486, 31.835018, 46.310982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282135, 31.890579, 46.276840>,  <37.518925, 31.923916, 46.256355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282135, 31.890579, 46.276840>,  <36.887486, 31.835018, 46.310982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282135, 31.890579, 46.276840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088455, -0.016315, 0.995947,
		0.136951, -0.990171, -0.028384,
		0.986621, 0.138906, -0.085351,
		37.578121, 31.932251, 46.251236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214256, 31.188747, 46.740780>,  <36.887486, 31.835018, 46.310982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214256, 31.188747, 46.740780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412140, 31.530546, 46.677414>,  <37.530872, 31.735626, 46.639397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412140, 31.530546, 46.677414>,  <37.214256, 31.188747, 46.740780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412140, 31.530546, 46.677414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027143, 0.166999, 0.985583,
		0.868634, -0.491879, 0.059423,
		0.494711, 0.854498, -0.158412,
		37.560555, 31.786896, 46.629890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779266, 31.311644, 47.234577>,  <37.214256, 31.188747, 46.740780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779266, 31.311644, 47.234577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676777, 31.669411, 47.087952>,  <37.615284, 31.884071, 46.999977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676777, 31.669411, 47.087952>,  <37.779266, 31.311644, 47.234577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676777, 31.669411, 47.087952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062519, 0.363091, 0.929654,
		0.964594, 0.261114, -0.037114,
		-0.256222, 0.894418, -0.366560,
		37.599911, 31.937737, 46.977985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983784, 31.814928, 47.694229>,  <37.779266, 31.311644, 47.234577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983784, 31.814928, 47.694229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728123, 32.047264, 47.492596>,  <37.574726, 32.186665, 47.371616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728123, 32.047264, 47.492596>,  <37.983784, 31.814928, 47.694229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728123, 32.047264, 47.492596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262226, 0.451579, 0.852828,
		0.722991, 0.677275, -0.136318,
		-0.639157, 0.580841, -0.504086,
		37.536377, 32.221516, 47.341370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003857, 32.473335, 48.025005>,  <37.983784, 31.814928, 47.694229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003857, 32.473335, 48.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665535, 32.484528, 47.811905>,  <37.462540, 32.491245, 47.684044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665535, 32.484528, 47.811905>,  <38.003857, 32.473335, 48.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665535, 32.484528, 47.811905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391262, 0.646317, 0.655125,
		0.362659, 0.762556, -0.535711,
		-0.845809, 0.027984, -0.532752,
		37.411793, 32.492924, 47.652081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864193, 33.198105, 47.937340>,  <38.003857, 32.473335, 48.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864193, 33.198105, 47.937340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531128, 32.983448, 47.882664>,  <37.331287, 32.854656, 47.849857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531128, 32.983448, 47.882664>,  <37.864193, 33.198105, 47.937340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531128, 32.983448, 47.882664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466528, 0.546782, 0.695256,
		-0.298361, 0.642687, -0.705644,
		-0.832666, -0.536640, -0.136692,
		37.281326, 32.822456, 47.841656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332336, 33.682938, 47.960297>,  <37.864193, 33.198105, 47.937340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332336, 33.682938, 47.960297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155102, 33.334110, 48.043404>,  <37.048759, 33.124813, 48.093269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155102, 33.334110, 48.043404>,  <37.332336, 33.682938, 47.960297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155102, 33.334110, 48.043404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670873, 0.476286, 0.568402,
		-0.594643, 0.112468, -0.796085,
		-0.443091, -0.872068, 0.207768,
		37.022175, 33.072491, 48.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609924, 33.844860, 47.917686>,  <37.332336, 33.682938, 47.960297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609924, 33.844860, 47.917686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634647, 33.518063, 48.147018>,  <36.649483, 33.321983, 48.284618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634647, 33.518063, 48.147018>,  <36.609924, 33.844860, 47.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634647, 33.518063, 48.147018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591254, 0.432818, 0.680506,
		-0.804114, -0.381046, -0.456295,
		0.061811, -0.816990, 0.573329,
		36.653191, 33.272964, 48.319016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999004, 33.750210, 48.034122>,  <36.609924, 33.844860, 47.917686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999004, 33.750210, 48.034122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172424, 33.530422, 48.319813>,  <36.276478, 33.398548, 48.491226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172424, 33.530422, 48.319813>,  <35.999004, 33.750210, 48.034122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172424, 33.530422, 48.319813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577589, 0.438921, 0.688287,
		-0.691681, -0.710936, -0.127073,
		0.433553, -0.549471, 0.714222,
		36.302490, 33.365582, 48.534081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514633, 33.419693, 48.467865>,  <35.999004, 33.750210, 48.034122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514633, 33.419693, 48.467865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840561, 33.425610, 48.699677>,  <36.036118, 33.429161, 48.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840561, 33.425610, 48.699677>,  <35.514633, 33.419693, 48.467865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840561, 33.425610, 48.699677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579696, 0.030260, 0.814271,
		-0.005492, -0.999433, 0.033231,
		0.814815, 0.014792, 0.579533,
		36.085007, 33.430046, 48.873535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309772, 33.022751, 49.085854>,  <35.514633, 33.419693, 48.467865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309772, 33.022751, 49.085854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640736, 33.220848, 49.191788>,  <35.839314, 33.339706, 49.255348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640736, 33.220848, 49.191788>,  <35.309772, 33.022751, 49.085854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640736, 33.220848, 49.191788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359188, 0.104139, 0.927437,
		0.431727, -0.862490, 0.264050,
		0.827403, 0.495243, 0.264836,
		35.888958, 33.369419, 49.271240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565681, 32.711063, 49.679558>,  <35.309772, 33.022751, 49.085854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565681, 32.711063, 49.679558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710369, 33.083977, 49.678730>,  <35.797180, 33.307724, 49.678234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710369, 33.083977, 49.678730>,  <35.565681, 32.711063, 49.679558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710369, 33.083977, 49.678730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507364, 0.198712, 0.838508,
		0.782141, -0.302250, 0.544886,
		0.361715, 0.932287, -0.002070,
		35.818882, 33.363663, 49.678108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762932, 32.798519, 50.375359>,  <35.565681, 32.711063, 49.679558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762932, 32.798519, 50.375359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757000, 33.165051, 50.215302>,  <35.753441, 33.384972, 50.119267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757000, 33.165051, 50.215302>,  <35.762932, 32.798519, 50.375359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757000, 33.165051, 50.215302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253078, 0.383719, 0.888094,
		0.967332, 0.114441, 0.226212,
		-0.014833, 0.916331, -0.400147,
		35.752552, 33.439949, 50.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196033, 33.265934, 50.797688>,  <35.762932, 32.798519, 50.375359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196033, 33.265934, 50.797688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988194, 33.540981, 50.594833>,  <35.863487, 33.706009, 50.473122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988194, 33.540981, 50.594833>,  <36.196033, 33.265934, 50.797688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988194, 33.540981, 50.594833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282342, 0.422024, 0.861498,
		0.806410, 0.590822, -0.025140,
		-0.519602, 0.687623, -0.507138,
		35.832314, 33.747269, 50.442692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349216, 33.790653, 51.145626>,  <36.196033, 33.265934, 50.797688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349216, 33.790653, 51.145626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024879, 33.902531, 50.939987>,  <35.830276, 33.969658, 50.816605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024879, 33.902531, 50.939987>,  <36.349216, 33.790653, 51.145626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024879, 33.902531, 50.939987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393370, 0.389953, 0.832584,
		0.433346, 0.877329, -0.206167,
		-0.810846, 0.279697, -0.514100,
		35.781624, 33.986439, 50.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378178, 34.482075, 51.044586>,  <36.349216, 33.790653, 51.145626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378178, 34.482075, 51.044586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997337, 34.360527, 51.030910>,  <35.768833, 34.287598, 51.022705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997337, 34.360527, 51.030910>,  <36.378178, 34.482075, 51.044586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997337, 34.360527, 51.030910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168789, 0.429016, 0.887387,
		-0.254985, 0.850650, -0.459756,
		-0.952099, -0.303872, -0.034188,
		35.711708, 34.269363, 51.020653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963787, 34.983170, 51.373730>,  <36.378178, 34.482075, 51.044586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963787, 34.983170, 51.373730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727100, 34.661472, 51.351616>,  <35.585087, 34.468452, 51.338348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727100, 34.661472, 51.351616>,  <35.963787, 34.983170, 51.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727100, 34.661472, 51.351616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491269, 0.305374, 0.815721,
		-0.639157, 0.509840, -0.575797,
		-0.591721, -0.804245, -0.055287,
		35.549583, 34.420200, 51.335030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348824, 35.081448, 51.869030>,  <35.963787, 34.983170, 51.373730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348824, 35.081448, 51.869030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121601, 35.409687, 51.894089>,  <34.985268, 35.606632, 51.909122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121601, 35.409687, 51.894089>,  <35.348824, 35.081448, 51.869030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121601, 35.409687, 51.894089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415442, 0.351632, -0.838906,
		-0.710435, -0.450522, -0.540659,
		-0.568059, 0.820600, 0.062646,
		34.951183, 35.655869, 51.912884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933681, 35.147850, 51.233032>,  <35.348824, 35.081448, 51.869030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933681, 35.147850, 51.233032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019226, 35.491444, 51.419109>,  <35.070553, 35.697601, 51.530754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019226, 35.491444, 51.419109>,  <34.933681, 35.147850, 51.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019226, 35.491444, 51.419109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437088, 0.341739, -0.831967,
		-0.873623, 0.381254, -0.302369,
		0.213859, 0.858988, 0.465193,
		35.083385, 35.749142, 51.558666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805229, 35.651829, 50.715656>,  <34.933681, 35.147850, 51.233032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805229, 35.651829, 50.715656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041622, 35.842003, 50.976334>,  <35.183460, 35.956108, 51.132740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041622, 35.842003, 50.976334>,  <34.805229, 35.651829, 50.715656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041622, 35.842003, 50.976334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589979, 0.296212, -0.751121,
		-0.550147, 0.828385, -0.105440,
		0.590985, 0.475434, 0.651690,
		35.218918, 35.984634, 51.171841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865688, 36.356689, 50.495136>,  <34.805229, 35.651829, 50.715656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865688, 36.356689, 50.495136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185322, 36.269276, 50.719177>,  <35.377102, 36.216827, 50.853603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185322, 36.269276, 50.719177>,  <34.865688, 36.356689, 50.495136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185322, 36.269276, 50.719177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600850, 0.323187, -0.731115,
		-0.021247, 0.920757, 0.389556,
		0.799080, -0.218531, 0.560103,
		35.425045, 36.203716, 50.887207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333805, 36.986496, 50.396214>,  <34.865688, 36.356689, 50.495136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333805, 36.986496, 50.396214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541328, 36.674030, 50.535130>,  <35.665844, 36.486549, 50.618477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541328, 36.674030, 50.535130>,  <35.333805, 36.986496, 50.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541328, 36.674030, 50.535130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754436, 0.227307, -0.615758,
		0.402070, 0.581470, 0.707271,
		0.518812, -0.781169, 0.347288,
		35.696972, 36.439678, 50.639317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123394, 37.253250, 50.485756>,  <35.333805, 36.986496, 50.396214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123394, 37.253250, 50.485756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102787, 36.854507, 50.461655>,  <36.090424, 36.615261, 50.447193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102787, 36.854507, 50.461655>,  <36.123394, 37.253250, 50.485756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102787, 36.854507, 50.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746842, 0.001600, -0.665000,
		0.663003, -0.079262, 0.744409,
		-0.051518, -0.996853, -0.060257,
		36.087330, 36.555450, 50.443577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791618, 37.143044, 50.444500>,  <36.123394, 37.253250, 50.485756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791618, 37.143044, 50.444500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652382, 36.774132, 50.377285>,  <36.568840, 36.552784, 50.336956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652382, 36.774132, 50.377285>,  <36.791618, 37.143044, 50.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652382, 36.774132, 50.377285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743158, -0.162206, -0.649158,
		0.571448, -0.350842, 0.741860,
		-0.348086, -0.922279, -0.168039,
		36.547955, 36.497448, 50.326874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345024, 36.706055, 50.332245>,  <36.791618, 37.143044, 50.444500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345024, 36.706055, 50.332245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045349, 36.511887, 50.151989>,  <36.865543, 36.395386, 50.043835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045349, 36.511887, 50.151989>,  <37.345024, 36.706055, 50.332245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045349, 36.511887, 50.151989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607246, -0.231681, -0.759984,
		0.264508, -0.843024, 0.468344,
		-0.749192, -0.485422, -0.450641,
		36.820591, 36.366261, 50.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614212, 36.124969, 49.902657>,  <37.345024, 36.706055, 50.332245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614212, 36.124969, 49.902657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251049, 36.186401, 49.746647>,  <37.033150, 36.223259, 49.653042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251049, 36.186401, 49.746647>,  <37.614212, 36.124969, 49.902657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251049, 36.186401, 49.746647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359961, -0.191101, -0.913186,
		-0.214785, -0.969480, 0.118217,
		-0.907907, 0.153585, -0.390021,
		36.978676, 36.232475, 49.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575535, 35.525944, 49.569324>,  <37.614212, 36.124969, 49.902657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575535, 35.525944, 49.569324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289227, 35.745399, 49.396503>,  <37.117439, 35.877071, 49.292812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289227, 35.745399, 49.396503>,  <37.575535, 35.525944, 49.569324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289227, 35.745399, 49.396503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348163, -0.255948, -0.901817,
		-0.605353, -0.795919, -0.007815,
		-0.715773, 0.548638, -0.432048,
		37.074493, 35.909992, 49.266888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167450, 35.120125, 49.025566>,  <37.575535, 35.525944, 49.569324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167450, 35.120125, 49.025566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121143, 35.496414, 48.898041>,  <37.093357, 35.722187, 48.821526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121143, 35.496414, 48.898041>,  <37.167450, 35.120125, 49.025566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121143, 35.496414, 48.898041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344568, -0.263002, -0.901167,
		-0.931596, -0.214180, -0.293695,
		-0.115770, 0.940722, -0.318811,
		37.086411, 35.778629, 48.802399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849564, 35.059689, 48.398331>,  <37.167450, 35.120125, 49.025566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849564, 35.059689, 48.398331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015007, 35.423832, 48.393032>,  <37.114273, 35.642319, 48.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015007, 35.423832, 48.393032>,  <36.849564, 35.059689, 48.398331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015007, 35.423832, 48.393032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345950, -0.170601, -0.922613,
		-0.842168, 0.377017, -0.385500,
		0.413607, 0.910359, -0.013245,
		37.139088, 35.696941, 48.389057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362232, 35.472656, 48.020020>,  <36.849564, 35.059689, 48.398331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362232, 35.472656, 48.020020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736389, 35.610203, 47.987030>,  <36.960884, 35.692730, 47.967236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736389, 35.610203, 47.987030>,  <36.362232, 35.472656, 48.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736389, 35.610203, 47.987030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093107, -0.464494, -0.880668,
		-0.341140, 0.816089, -0.466499,
		0.935390, 0.343866, -0.082474,
		37.017006, 35.713364, 47.962288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385181, 35.883465, 47.442234>,  <36.362232, 35.472656, 48.020020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385181, 35.883465, 47.442234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756382, 35.751606, 47.511688>,  <36.979103, 35.672493, 47.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756382, 35.751606, 47.511688>,  <36.385181, 35.883465, 47.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756382, 35.751606, 47.511688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040891, -0.373120, -0.926882,
		0.370329, 0.867247, -0.332776,
		0.928000, -0.329644, 0.173639,
		37.034782, 35.652714, 47.563782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809669, 36.075779, 46.810966>,  <36.385181, 35.883465, 47.442234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809669, 36.075779, 46.810966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997566, 35.778412, 47.001404>,  <37.110306, 35.599991, 47.115665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997566, 35.778412, 47.001404>,  <36.809669, 36.075779, 46.810966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997566, 35.778412, 47.001404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164091, -0.456372, -0.874528,
		0.867419, 0.488926, -0.092389,
		0.469743, -0.743422, 0.476094,
		37.138489, 35.555386, 47.144234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377823, 36.180637, 46.486130>,  <36.809669, 36.075779, 46.810966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377823, 36.180637, 46.486130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363197, 35.811810, 46.640247>,  <37.354424, 35.590515, 46.732719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363197, 35.811810, 46.640247>,  <37.377823, 36.180637, 46.486130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363197, 35.811810, 46.640247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211889, -0.383943, -0.898716,
		0.976609, 0.048779, 0.209415,
		-0.036565, -0.922068, 0.385298,
		37.352226, 35.535191, 46.755836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014694, 35.872261, 46.240028>,  <37.377823, 36.180637, 46.486130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014694, 35.872261, 46.240028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746067, 35.595413, 46.345837>,  <37.584892, 35.429306, 46.409321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746067, 35.595413, 46.345837>,  <38.014694, 35.872261, 46.240028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746067, 35.595413, 46.345837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093014, -0.432931, -0.896615,
		0.735081, -0.577535, 0.355120,
		-0.671569, -0.692116, 0.264521,
		37.544598, 35.387779, 46.425194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297619, 35.205784, 46.041348>,  <38.014694, 35.872261, 46.240028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297619, 35.205784, 46.041348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906990, 35.126438, 46.074734>,  <37.672615, 35.078831, 46.094765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906990, 35.126438, 46.074734>,  <38.297619, 35.205784, 46.041348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906990, 35.126438, 46.074734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021851, -0.477247, -0.878498,
		0.214096, -0.856089, 0.470399,
		-0.976568, -0.198361, 0.083470,
		37.614021, 35.066929, 46.099773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293148, 34.552170, 45.878414>,  <38.297619, 35.205784, 46.041348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293148, 34.552170, 45.878414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901470, 34.621616, 45.836407>,  <37.666462, 34.663284, 45.811203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901470, 34.621616, 45.836407>,  <38.293148, 34.552170, 45.878414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901470, 34.621616, 45.836407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035874, -0.657564, -0.752544,
		-0.199709, -0.733122, 0.650114,
		-0.979198, 0.173612, -0.105022,
		37.607712, 34.673698, 45.804901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081261, 33.944515, 45.621319>,  <38.293148, 34.552170, 45.878414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081261, 33.944515, 45.621319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782619, 34.198589, 45.542206>,  <37.603436, 34.351036, 45.494740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782619, 34.198589, 45.542206>,  <38.081261, 33.944515, 45.621319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782619, 34.198589, 45.542206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100178, -0.401244, -0.910477,
		-0.657682, -0.659954, 0.363203,
		-0.746605, 0.635189, -0.197778,
		37.558640, 34.389145, 45.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533489, 33.525112, 45.364693>,  <38.081261, 33.944515, 45.621319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533489, 33.525112, 45.364693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496178, 33.898277, 45.225571>,  <37.473793, 34.122177, 45.142097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496178, 33.898277, 45.225571>,  <37.533489, 33.525112, 45.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496178, 33.898277, 45.225571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025460, -0.351453, -0.935859,
		-0.995315, -0.078438, 0.056534,
		-0.093276, 0.932914, -0.347810,
		37.468193, 34.178150, 45.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033485, 33.519867, 44.862511>,  <37.533489, 33.525112, 45.364693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033485, 33.519867, 44.862511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252094, 33.848232, 44.796276>,  <37.383259, 34.045250, 44.756535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252094, 33.848232, 44.796276>,  <37.033485, 33.519867, 44.862511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252094, 33.848232, 44.796276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201853, -0.321027, -0.925309,
		-0.812752, 0.472281, -0.341153,
		0.546525, 0.820909, -0.165584,
		37.416054, 34.094505, 44.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761742, 33.744186, 44.162212>,  <37.033485, 33.519867, 44.862511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761742, 33.744186, 44.162212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118210, 33.917816, 44.214966>,  <37.332092, 34.021996, 44.246616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118210, 33.917816, 44.214966>,  <36.761742, 33.744186, 44.162212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118210, 33.917816, 44.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239954, -0.204289, -0.949046,
		-0.385014, 0.877409, -0.286215,
		0.891172, 0.434074, 0.131883,
		37.385563, 34.048038, 44.254532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876312, 34.337971, 43.644650>,  <36.761742, 33.744186, 44.162212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876312, 34.337971, 43.644650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253136, 34.261089, 43.754620>,  <37.479229, 34.214958, 43.820602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253136, 34.261089, 43.754620>,  <36.876312, 34.337971, 43.644650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253136, 34.261089, 43.754620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275398, -0.024805, -0.961010,
		0.191532, 0.981041, 0.029565,
		0.942057, -0.192206, 0.274928,
		37.535751, 34.203426, 43.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300289, 34.711697, 43.117954>,  <36.876312, 34.337971, 43.644650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300289, 34.711697, 43.117954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574738, 34.484119, 43.299301>,  <37.739407, 34.347572, 43.408112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574738, 34.484119, 43.299301>,  <37.300289, 34.711697, 43.117954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574738, 34.484119, 43.299301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538256, -0.022236, -0.842488,
		0.489407, 0.822078, 0.290979,
		0.686121, -0.568940, 0.453371,
		37.780575, 34.313438, 43.435314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888802, 35.035206, 42.957878>,  <37.300289, 34.711697, 43.117954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888802, 35.035206, 42.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994297, 34.659813, 43.047047>,  <38.057594, 34.434578, 43.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994297, 34.659813, 43.047047>,  <37.888802, 35.035206, 42.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994297, 34.659813, 43.047047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596521, -0.022931, -0.802270,
		0.758028, 0.344566, 0.553776,
		0.263737, -0.938482, 0.222924,
		38.073418, 34.378269, 43.113922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647148, 34.984711, 43.104004>,  <37.888802, 35.035206, 42.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647148, 34.984711, 43.104004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541328, 34.618103, 42.983997>,  <38.477837, 34.398140, 42.911995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541328, 34.618103, 42.983997>,  <38.647148, 34.984711, 43.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541328, 34.618103, 42.983997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705245, 0.028319, -0.708398,
		0.657756, -0.398989, 0.638878,
		-0.264551, -0.916518, -0.300012,
		38.461964, 34.343147, 42.893993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298576, 34.654236, 42.876835>,  <38.647148, 34.984711, 43.104004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298576, 34.654236, 42.876835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035793, 34.393787, 42.724812>,  <38.878124, 34.237518, 42.633598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035793, 34.393787, 42.724812>,  <39.298576, 34.654236, 42.876835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035793, 34.393787, 42.724812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548797, -0.067350, -0.833238,
		0.516943, -0.755978, 0.401581,
		-0.656956, -0.651123, -0.380063,
		38.838707, 34.198452, 42.610794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756966, 34.109947, 42.594543>,  <39.298576, 34.654236, 42.876835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756966, 34.109947, 42.594543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387390, 34.115093, 42.441616>,  <39.165646, 34.118183, 42.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387390, 34.115093, 42.441616>,  <39.756966, 34.109947, 42.594543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387390, 34.115093, 42.441616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375126, 0.226267, -0.898935,
		0.074939, -0.973980, -0.213885,
		-0.923940, 0.012869, -0.382321,
		39.110207, 34.118954, 42.326920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814091, 33.779736, 42.023266>,  <39.756966, 34.109947, 42.594543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814091, 33.779736, 42.023266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470970, 33.968754, 41.942402>,  <39.265099, 34.082165, 41.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470970, 33.968754, 41.942402>,  <39.814091, 33.779736, 42.023266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470970, 33.968754, 41.942402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331077, 0.207158, -0.920583,
		-0.393139, -0.856612, -0.334151,
		-0.857805, 0.472547, -0.202163,
		39.213627, 34.110519, 41.881752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663029, 33.650021, 41.364227>,  <39.814091, 33.779736, 42.023266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663029, 33.650021, 41.364227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424019, 33.963749, 41.430920>,  <39.280613, 34.151985, 41.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424019, 33.963749, 41.430920>,  <39.663029, 33.650021, 41.364227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424019, 33.963749, 41.430920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106847, 0.283957, -0.952865,
		-0.794701, -0.551545, -0.253474,
		-0.597524, 0.784325, 0.166730,
		39.244762, 34.199047, 41.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146942, 33.442165, 40.996262>,  <39.663029, 33.650021, 41.364227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146942, 33.442165, 40.996262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113815, 33.839722, 41.025429>,  <39.093941, 34.078255, 41.042927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113815, 33.839722, 41.025429>,  <39.146942, 33.442165, 40.996262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113815, 33.839722, 41.025429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119894, 0.082571, -0.989347,
		-0.989327, -0.073190, -0.126000,
		-0.082814, 0.993894, 0.072915,
		39.088970, 34.137890, 41.047302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825218, 33.588684, 40.375431>,  <39.146942, 33.442165, 40.996262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825218, 33.588684, 40.375431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966423, 33.933319, 40.521332>,  <39.051147, 34.140102, 40.608871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966423, 33.933319, 40.521332>,  <38.825218, 33.588684, 40.375431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966423, 33.933319, 40.521332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106724, 0.350221, -0.930567,
		-0.929511, 0.367430, 0.031680,
		0.353014, 0.861592, 0.364748,
		39.072327, 34.191795, 40.630756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349014, 34.131031, 40.064522>,  <38.825218, 33.588684, 40.375431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349014, 34.131031, 40.064522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709484, 34.266804, 40.172348>,  <38.925766, 34.348267, 40.237045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709484, 34.266804, 40.172348>,  <38.349014, 34.131031, 40.064522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709484, 34.266804, 40.172348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142571, 0.355173, -0.923864,
		-0.409335, 0.870997, 0.271679,
		0.901176, 0.339436, 0.269564,
		38.979836, 34.368633, 40.253216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397881, 34.888355, 39.792961>,  <38.349014, 34.131031, 40.064522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397881, 34.888355, 39.792961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777515, 34.782669, 39.861565>,  <39.005299, 34.719257, 39.902725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777515, 34.782669, 39.861565>,  <38.397881, 34.888355, 39.792961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777515, 34.782669, 39.861565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279279, 0.453966, -0.846119,
		0.145701, 0.850943, 0.504646,
		0.949091, -0.264217, 0.171508,
		39.062244, 34.703403, 39.913017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802769, 35.460022, 39.680065>,  <38.397881, 34.888355, 39.792961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802769, 35.460022, 39.680065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083393, 35.176334, 39.652298>,  <39.251766, 35.006123, 39.635639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083393, 35.176334, 39.652298>,  <38.802769, 35.460022, 39.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083393, 35.176334, 39.652298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408108, 0.479726, -0.776731,
		0.584173, 0.516596, 0.625996,
		0.701562, -0.709219, -0.069415,
		39.293861, 34.963570, 39.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310299, 35.815662, 39.455608>,  <38.802769, 35.460022, 39.680065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310299, 35.815662, 39.455608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452957, 35.450081, 39.378147>,  <39.538551, 35.230732, 39.331673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452957, 35.450081, 39.378147>,  <39.310299, 35.815662, 39.455608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452957, 35.450081, 39.378147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427464, 0.343949, -0.836047,
		0.830711, 0.215391, 0.513347,
		0.356643, -0.913951, -0.193651,
		39.559952, 35.175896, 39.320053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973850, 35.979618, 39.270466>,  <39.310299, 35.815662, 39.455608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973850, 35.979618, 39.270466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870358, 35.626884, 39.112766>,  <39.808262, 35.415245, 39.018147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870358, 35.626884, 39.112766>,  <39.973850, 35.979618, 39.270466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870358, 35.626884, 39.112766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407994, 0.270191, -0.872088,
		0.875557, -0.386488, 0.289875,
		-0.258730, -0.881830, -0.394252,
		39.792740, 35.362335, 38.994492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536388, 35.795017, 38.835239>,  <39.973850, 35.979618, 39.270466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536388, 35.795017, 38.835239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248001, 35.563282, 38.683147>,  <40.074970, 35.424240, 38.591892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248001, 35.563282, 38.683147>,  <40.536388, 35.795017, 38.835239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248001, 35.563282, 38.683147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134514, 0.421253, -0.896912,
		0.679790, -0.697789, -0.225779,
		-0.720966, -0.579341, -0.380226,
		40.031712, 35.389481, 38.569080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767605, 35.533890, 38.188896>,  <40.536388, 35.795017, 38.835239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767605, 35.533890, 38.188896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368526, 35.508755, 38.178616>,  <40.129082, 35.493675, 38.172447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368526, 35.508755, 38.178616>,  <40.767605, 35.533890, 38.188896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368526, 35.508755, 38.178616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012160, 0.537905, -0.842918,
		0.066792, -0.840660, -0.537428,
		-0.997693, -0.062835, -0.025705,
		40.069218, 35.489902, 38.170902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429909, 35.098660, 38.181332>,  <40.767605, 35.533890, 38.188896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429909, 35.098660, 38.181332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501598, 35.196030, 37.800045>,  <41.544613, 35.254452, 37.571274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501598, 35.196030, 37.800045>,  <41.429909, 35.098660, 38.181332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501598, 35.196030, 37.800045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494138, 0.815549, 0.301176,
		0.850709, -0.524999, 0.025879,
		0.179222, 0.243426, -0.953218,
		41.555367, 35.269058, 37.514080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092953, 34.958321, 37.980854>,  <41.429909, 35.098660, 38.181332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092953, 34.958321, 37.980854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941559, 35.263405, 37.771088>,  <41.850723, 35.446457, 37.645226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941559, 35.263405, 37.771088>,  <42.092953, 34.958321, 37.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941559, 35.263405, 37.771088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626240, 0.628215, 0.461703,
		0.681596, -0.153665, -0.715412,
		-0.378484, 0.762714, -0.524420,
		41.828014, 35.492218, 37.613762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695175, 35.375168, 37.800400>,  <42.092953, 34.958321, 37.980854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695175, 35.375168, 37.800400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370075, 35.606518, 37.828484>,  <42.175014, 35.745327, 37.845333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370075, 35.606518, 37.828484>,  <42.695175, 35.375168, 37.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370075, 35.606518, 37.828484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522463, 0.670192, 0.527139,
		0.257830, 0.465111, -0.846874,
		-0.812746, 0.578372, 0.070208,
		42.126251, 35.780029, 37.849545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873756, 35.892712, 38.119545>,  <42.695175, 35.375168, 37.800400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873756, 35.892712, 38.119545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504498, 36.046478, 38.117321>,  <42.282944, 36.138737, 38.115986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504498, 36.046478, 38.117321>,  <42.873756, 35.892712, 38.119545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504498, 36.046478, 38.117321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320299, 0.777009, 0.541910,
		0.212640, 0.498479, -0.840418,
		-0.923143, 0.384417, -0.005561,
		42.227554, 36.161804, 38.115654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844231, 36.688519, 37.899643>,  <42.873756, 35.892712, 38.119545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844231, 36.688519, 37.899643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521576, 36.593891, 38.116299>,  <42.327984, 36.537113, 38.246292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521576, 36.593891, 38.116299>,  <42.844231, 36.688519, 37.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521576, 36.593891, 38.116299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248773, 0.695381, 0.674209,
		-0.536141, 0.678587, -0.502069,
		-0.806638, -0.236570, 0.541636,
		42.279583, 36.522919, 38.278790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846600, 36.272854, 37.227859>,  <42.844231, 36.688519, 37.899643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846600, 36.272854, 37.227859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747833, 36.214809, 36.844616>,  <42.688572, 36.179985, 36.614670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747833, 36.214809, 36.844616>,  <42.846600, 36.272854, 37.227859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747833, 36.214809, 36.844616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904039, 0.390507, 0.173836,
		0.348923, 0.909092, -0.227606,
		-0.246915, -0.145109, -0.958111,
		42.673759, 36.171276, 36.557182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450359, 36.111988, 37.674664>,  <42.846600, 36.272854, 37.227859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450359, 36.111988, 37.674664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777023, 36.012127, 37.882797>,  <43.973022, 35.952209, 38.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777023, 36.012127, 37.882797>,  <43.450359, 36.111988, 37.674664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777023, 36.012127, 37.882797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184364, 0.967205, 0.174712,
		-0.546885, -0.046749, 0.835901,
		0.816656, -0.249657, 0.520331,
		44.022018, 35.937229, 38.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484344, 36.416668, 38.293118>,  <43.450359, 36.111988, 37.674664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484344, 36.416668, 38.293118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856003, 36.389343, 38.147778>,  <44.078999, 36.372948, 38.060574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856003, 36.389343, 38.147778>,  <43.484344, 36.416668, 38.293118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856003, 36.389343, 38.147778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101299, 0.992210, 0.072507,
		0.355571, -0.104177, 0.928825,
		0.929144, -0.068308, -0.363354,
		44.134747, 36.368851, 38.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055786, 36.829361, 38.751335>,  <43.484344, 36.416668, 38.293118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055786, 36.829361, 38.751335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201355, 36.791752, 38.380665>,  <44.288696, 36.769188, 38.158264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201355, 36.791752, 38.380665>,  <44.055786, 36.829361, 38.751335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201355, 36.791752, 38.380665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099442, 0.993128, -0.061713,
		0.926107, -0.069692, 0.370768,
		0.363919, -0.094023, -0.926673,
		44.310532, 36.763546, 38.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605118, 37.325249, 38.703598>,  <44.055786, 36.829361, 38.751335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605118, 37.325249, 38.703598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509991, 37.249287, 38.322575>,  <44.452915, 37.203709, 38.093960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509991, 37.249287, 38.322575>,  <44.605118, 37.325249, 38.703598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509991, 37.249287, 38.322575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251168, 0.935321, -0.249177,
		0.938273, -0.298513, -0.174740,
		-0.237821, -0.189907, -0.952563,
		44.438644, 37.192314, 38.036804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158691, 37.607246, 38.156334>,  <44.605118, 37.325249, 38.703598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158691, 37.607246, 38.156334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797913, 37.588486, 37.984615>,  <44.581448, 37.577229, 37.881584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797913, 37.588486, 37.984615>,  <45.158691, 37.607246, 38.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797913, 37.588486, 37.984615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085797, 0.954806, -0.284578,
		0.423242, -0.293507, -0.857158,
		-0.901945, -0.046904, -0.429296,
		44.527328, 37.574413, 37.855827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240154, 38.092152, 37.661823>,  <45.158691, 37.607246, 38.156334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240154, 38.092152, 37.661823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848022, 38.020000, 37.693859>,  <44.612743, 37.976707, 37.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848022, 38.020000, 37.693859>,  <45.240154, 38.092152, 37.661823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848022, 38.020000, 37.693859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191941, 0.965833, -0.174143,
		-0.045938, -0.186089, -0.981458,
		-0.980331, -0.180382, 0.080087,
		44.553925, 37.965885, 37.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981834, 38.393932, 37.106472>,  <45.240154, 38.092152, 37.661823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981834, 38.393932, 37.106472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657581, 38.344242, 37.335361>,  <44.463028, 38.314430, 37.472694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.657581, 38.344242, 37.335361>,  <44.981834, 38.393932, 37.106472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657581, 38.344242, 37.335361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313996, 0.917073, -0.245733,
		-0.494245, -0.378875, -0.782416,
		-0.810635, -0.124223, 0.572224,
		44.414391, 38.306976, 37.507027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379089, 38.482063, 36.658958>,  <44.981834, 38.393932, 37.106472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379089, 38.482063, 36.658958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274410, 38.558861, 37.037304>,  <44.211605, 38.604939, 37.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274410, 38.558861, 37.037304>,  <44.379089, 38.482063, 36.658958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274410, 38.558861, 37.037304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222120, 0.941728, -0.252609,
		-0.939244, -0.276201, -0.203799,
		-0.261694, 0.191993, 0.945862,
		44.195904, 38.616459, 37.321064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069389, 39.123497, 36.517021>,  <44.379089, 38.482063, 36.658958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069389, 39.123497, 36.517021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073219, 39.093628, 36.915886>,  <44.075520, 39.075706, 37.155205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073219, 39.093628, 36.915886>,  <44.069389, 39.123497, 36.517021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073219, 39.093628, 36.915886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183298, 0.980180, 0.075163,
		-0.983011, -0.183498, -0.004299,
		0.009579, -0.074674, 0.997162,
		44.076092, 39.071224, 37.215034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422726, 39.390144, 36.750965>,  <44.069389, 39.123497, 36.517021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422726, 39.390144, 36.750965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688049, 39.418156, 37.048988>,  <43.847244, 39.434963, 37.227802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688049, 39.418156, 37.048988>,  <43.422726, 39.390144, 36.750965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688049, 39.418156, 37.048988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216123, 0.971114, 0.101140,
		-0.716456, -0.228112, 0.659285,
		0.663312, 0.070025, 0.745060,
		43.887043, 39.439163, 37.272507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097691, 39.816849, 37.168888>,  <43.422726, 39.390144, 36.750965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097691, 39.816849, 37.168888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470814, 39.844662, 37.310329>,  <43.694687, 39.861351, 37.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470814, 39.844662, 37.310329>,  <43.097691, 39.816849, 37.168888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470814, 39.844662, 37.310329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140702, 0.973605, 0.179714,
		-0.331772, -0.217391, 0.917970,
		0.932808, 0.069536, 0.353602,
		43.750656, 39.865524, 37.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981930, 40.237732, 37.701874>,  <43.097691, 39.816849, 37.168888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981930, 40.237732, 37.701874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370930, 40.252193, 37.609848>,  <43.604332, 40.260872, 37.554634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370930, 40.252193, 37.609848>,  <42.981930, 40.237732, 37.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370930, 40.252193, 37.609848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020720, 0.970523, 0.240117,
		0.231961, -0.238281, 0.943088,
		0.972504, 0.036157, -0.230061,
		43.662682, 40.263039, 37.540829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398262, 40.450317, 38.338169>,  <42.981930, 40.237732, 37.701874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398262, 40.450317, 38.338169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568871, 40.553917, 37.991528>,  <43.671234, 40.616077, 37.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568871, 40.553917, 37.991528>,  <43.398262, 40.450317, 38.338169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568871, 40.553917, 37.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174897, 0.916424, 0.359970,
		0.887406, -0.305101, 0.345578,
		0.426523, 0.258999, -0.866601,
		43.696827, 40.631615, 37.731548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003567, 40.818466, 38.581551>,  <43.398262, 40.450317, 38.338169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003567, 40.818466, 38.581551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967213, 40.912800, 38.194538>,  <43.945400, 40.969398, 37.962330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967213, 40.912800, 38.194538>,  <44.003567, 40.818466, 38.581551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967213, 40.912800, 38.194538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086763, 0.969737, 0.228217,
		0.992074, -0.063204, -0.108600,
		-0.090889, 0.235831, -0.967534,
		43.939945, 40.983551, 37.904278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521915, 41.343582, 38.399326>,  <44.003567, 40.818466, 38.581551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521915, 41.343582, 38.399326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295540, 41.402786, 38.074905>,  <44.159714, 41.438309, 37.880253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295540, 41.402786, 38.074905>,  <44.521915, 41.343582, 38.399326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295540, 41.402786, 38.074905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005064, 0.983110, 0.182947,
		0.824433, 0.107643, -0.555628,
		-0.565936, 0.148014, -0.811054,
		44.125759, 41.447189, 37.831589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944996, 41.866573, 37.992046>,  <44.521915, 41.343582, 38.399326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944996, 41.866573, 37.992046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556831, 41.868896, 37.895493>,  <44.323933, 41.870293, 37.837559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556831, 41.868896, 37.895493>,  <44.944996, 41.866573, 37.992046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556831, 41.868896, 37.895493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005697, 0.998881, 0.046951,
		0.241390, 0.046937, -0.969292,
		-0.970411, 0.005812, -0.241387,
		44.265709, 41.870640, 37.823078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935532, 42.327129, 37.470257>,  <44.944996, 41.866573, 37.992046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935532, 42.327129, 37.470257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548744, 42.311382, 37.570984>,  <44.316669, 42.301933, 37.631420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548744, 42.311382, 37.570984>,  <44.935532, 42.327129, 37.470257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548744, 42.311382, 37.570984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098601, 0.968856, -0.227146,
		-0.235034, -0.244474, -0.940740,
		-0.966973, -0.039371, 0.251819,
		44.258652, 42.299572, 37.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691471, 42.732903, 37.018631>,  <44.935532, 42.327129, 37.470257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691471, 42.732903, 37.018631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402409, 42.707890, 37.293980>,  <44.228970, 42.692883, 37.459190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402409, 42.707890, 37.293980>,  <44.691471, 42.732903, 37.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402409, 42.707890, 37.293980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201409, 0.971732, -0.123172,
		-0.661213, -0.227656, -0.714821,
		-0.722656, -0.062528, 0.688374,
		44.185612, 42.689133, 37.500492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209724, 43.170712, 36.704632>,  <44.691471, 42.732903, 37.018631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209724, 43.170712, 36.704632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119762, 43.144505, 37.093502>,  <44.065784, 43.128780, 37.326824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119762, 43.144505, 37.093502>,  <44.209724, 43.170712, 36.704632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119762, 43.144505, 37.093502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106971, 0.993366, 0.042196,
		-0.968491, -0.094504, -0.230423,
		-0.224907, -0.065515, 0.972175,
		44.052292, 43.124851, 37.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545143, 43.642044, 36.820683>,  <44.209724, 43.170712, 36.704632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545143, 43.642044, 36.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734871, 43.575340, 37.166447>,  <43.848709, 43.535320, 37.373905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734871, 43.575340, 37.166447>,  <43.545143, 43.642044, 36.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734871, 43.575340, 37.166447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040309, 0.976753, 0.210546,
		-0.879429, -0.134710, 0.456573,
		0.474321, -0.166756, 0.864414,
		43.877167, 43.525314, 37.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342590, 44.200340, 37.195110>,  <43.545143, 43.642044, 36.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342590, 44.200340, 37.195110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661266, 44.079712, 37.404625>,  <43.852470, 44.007336, 37.530334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661266, 44.079712, 37.404625>,  <43.342590, 44.200340, 37.195110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661266, 44.079712, 37.404625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248591, 0.953426, 0.170824,
		-0.550904, -0.005886, 0.834548,
		0.796685, -0.301569, 0.523783,
		43.900272, 43.989243, 37.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383583, 44.582676, 37.831909>,  <43.342590, 44.200340, 37.195110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383583, 44.582676, 37.831909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754498, 44.455967, 37.752113>,  <43.977047, 44.379940, 37.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754498, 44.455967, 37.752113>,  <43.383583, 44.582676, 37.831909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754498, 44.455967, 37.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347902, 0.925973, 0.146761,
		0.138229, -0.205491, 0.968848,
		0.927285, -0.316777, -0.199487,
		44.032684, 44.360935, 37.692268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737686, 44.630577, 38.368881>,  <43.383583, 44.582676, 37.831909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737686, 44.630577, 38.368881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009933, 44.668457, 38.078285>,  <44.173283, 44.691185, 37.903927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009933, 44.668457, 38.078285>,  <43.737686, 44.630577, 38.368881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009933, 44.668457, 38.078285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136176, 0.957979, 0.252453,
		0.719874, -0.270754, 0.639120,
		0.680616, 0.094701, -0.726494,
		44.214119, 44.696869, 37.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356819, 44.282024, 38.767342>,  <43.737686, 44.630577, 38.368881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356819, 44.282024, 38.767342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311882, 44.593727, 39.013966>,  <44.284920, 44.780746, 39.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311882, 44.593727, 39.013966>,  <44.356819, 44.282024, 38.767342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311882, 44.593727, 39.013966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941686, 0.281554, -0.184271,
		-0.317188, 0.559904, -0.765441,
		-0.112339, 0.779253, 0.616559,
		44.278179, 44.827503, 39.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582905, 44.047688, 39.306866>,  <44.356819, 44.282024, 38.767342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582905, 44.047688, 39.306866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358608, 43.722683, 39.370609>,  <44.224030, 43.527679, 39.408855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358608, 43.722683, 39.370609>,  <44.582905, 44.047688, 39.306866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358608, 43.722683, 39.370609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248071, 0.348481, 0.903892,
		-0.789953, 0.467321, -0.396969,
		-0.560744, -0.812510, 0.159355,
		44.190384, 43.478931, 39.418415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862171, 44.292118, 39.516884>,  <44.582905, 44.047688, 39.306866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862171, 44.292118, 39.516884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993057, 43.940678, 39.656013>,  <44.071590, 43.729813, 39.739491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993057, 43.940678, 39.656013>,  <43.862171, 44.292118, 39.516884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993057, 43.940678, 39.656013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343470, 0.232329, 0.909973,
		-0.880317, -0.417227, -0.225752,
		0.327217, -0.878604, 0.347829,
		44.091221, 43.677097, 39.760361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262547, 43.872662, 39.737743>,  <43.862171, 44.292118, 39.516884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262547, 43.872662, 39.737743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595898, 43.806499, 39.948692>,  <43.795910, 43.766804, 40.075260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595898, 43.806499, 39.948692>,  <43.262547, 43.872662, 39.737743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595898, 43.806499, 39.948692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472085, 0.283177, 0.834833,
		-0.287423, -0.944697, 0.157910,
		0.833381, -0.165403, 0.527369,
		43.845913, 43.756878, 40.106903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277271, 43.263718, 40.241730>,  <43.262547, 43.872662, 39.737743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277271, 43.263718, 40.241730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494019, 43.577698, 40.361889>,  <43.624065, 43.766087, 40.433983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494019, 43.577698, 40.361889>,  <43.277271, 43.263718, 40.241730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494019, 43.577698, 40.361889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472571, -0.011016, 0.881224,
		0.695023, -0.619465, 0.364974,
		0.541867, 0.784947, 0.300397,
		43.656578, 43.813183, 40.452007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628136, 43.122444, 40.871498>,  <43.277271, 43.263718, 40.241730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628136, 43.122444, 40.871498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596703, 43.521191, 40.868069>,  <43.577843, 43.760441, 40.866013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596703, 43.521191, 40.868069>,  <43.628136, 43.122444, 40.871498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596703, 43.521191, 40.868069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483726, -0.030612, 0.874684,
		0.871685, 0.072878, 0.484618,
		-0.078581, 0.996871, -0.008569,
		43.573128, 43.820251, 40.865498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236874, 43.355934, 40.578690>,  <43.628136, 43.122444, 40.871498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236874, 43.355934, 40.578690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503555, 43.490238, 40.844852>,  <44.663567, 43.570820, 41.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503555, 43.490238, 40.844852>,  <44.236874, 43.355934, 40.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503555, 43.490238, 40.844852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562001, -0.812877, -0.152925,
		0.489547, 0.475916, -0.730649,
		0.666707, 0.335762, 0.665407,
		44.703568, 43.590965, 41.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904697, 43.302132, 40.185375>,  <44.236874, 43.355934, 40.578690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904697, 43.302132, 40.185375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923561, 43.270176, 40.583649>,  <44.934879, 43.251003, 40.822613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923561, 43.270176, 40.583649>,  <44.904697, 43.302132, 40.185375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923561, 43.270176, 40.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618746, -0.780196, -0.091909,
		0.784174, 0.620412, 0.012637,
		0.047163, -0.079892, 0.995687,
		44.937710, 43.246208, 40.882355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596218, 43.185497, 40.619774>,  <44.904697, 43.302132, 40.185375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596218, 43.185497, 40.619774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274990, 42.989143, 40.754898>,  <45.082253, 42.871330, 40.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274990, 42.989143, 40.754898>,  <45.596218, 43.185497, 40.619774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274990, 42.989143, 40.754898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460030, -0.871053, -0.172159,
		0.378759, 0.017147, 0.925336,
		-0.803066, -0.490889, 0.337807,
		45.034069, 42.841877, 40.856239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867653, 42.734566, 41.085850>,  <45.596218, 43.185497, 40.619774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867653, 42.734566, 41.085850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521935, 42.603622, 40.933098>,  <45.314503, 42.525055, 40.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521935, 42.603622, 40.933098>,  <45.867653, 42.734566, 41.085850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521935, 42.603622, 40.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421256, -0.885962, -0.193945,
		-0.274842, -0.328495, 0.903633,
		-0.864295, -0.327357, -0.381880,
		45.262646, 42.505417, 40.818535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698360, 42.090630, 41.437408>,  <45.867653, 42.734566, 41.085850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698360, 42.090630, 41.437408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521557, 42.127232, 41.080475>,  <45.415474, 42.149193, 40.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521557, 42.127232, 41.080475>,  <45.698360, 42.090630, 41.437408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521557, 42.127232, 41.080475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537038, -0.769803, -0.344956,
		-0.718483, -0.631689, 0.291121,
		-0.442010, 0.091502, -0.892331,
		45.388954, 42.154682, 40.812775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516502, 41.424206, 41.297421>,  <45.698360, 42.090630, 41.437408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516502, 41.424206, 41.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479618, 41.573547, 40.928181>,  <45.457489, 41.663151, 40.706638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479618, 41.573547, 40.928181>,  <45.516502, 41.424206, 41.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479618, 41.573547, 40.928181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399505, -0.835287, -0.377744,
		-0.912082, -0.403612, -0.072136,
		-0.092208, 0.373353, -0.923096,
		45.451954, 41.685555, 40.651253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173244, 40.978424, 40.903339>,  <45.516502, 41.424206, 41.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173244, 40.978424, 40.903339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414711, 41.181686, 40.657619>,  <45.559593, 41.303642, 40.510189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414711, 41.181686, 40.657619>,  <45.173244, 40.978424, 40.903339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414711, 41.181686, 40.657619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441142, -0.854734, -0.273539,
		-0.664061, -0.105865, -0.740146,
		0.603669, 0.508156, -0.614297,
		45.595810, 41.334133, 40.473331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246750, 40.439178, 40.408394>,  <45.173244, 40.978424, 40.903339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246750, 40.439178, 40.408394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519711, 40.703194, 40.282742>,  <45.683487, 40.861603, 40.207352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519711, 40.703194, 40.282742>,  <45.246750, 40.439178, 40.408394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519711, 40.703194, 40.282742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409659, -0.701239, -0.583475,
		-0.605394, 0.269480, -0.748918,
		0.682406, 0.660034, -0.314131,
		45.724434, 40.901203, 40.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229404, 40.595238, 39.678196>,  <45.246750, 40.439178, 40.408394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229404, 40.595238, 39.678196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606869, 40.683655, 39.776707>,  <45.833347, 40.736706, 39.835812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606869, 40.683655, 39.776707>,  <45.229404, 40.595238, 39.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606869, 40.683655, 39.776707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327692, -0.520361, -0.788569,
		-0.046159, 0.824841, -0.563478,
		0.943656, 0.221047, 0.246274,
		45.889965, 40.749969, 39.850590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575260, 40.750038, 39.028328>,  <45.229404, 40.595238, 39.678196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575260, 40.750038, 39.028328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853516, 40.665192, 39.302872>,  <46.020470, 40.614285, 39.467598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853516, 40.665192, 39.302872>,  <45.575260, 40.750038, 39.028328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853516, 40.665192, 39.302872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528252, -0.496467, -0.688818,
		0.486863, 0.841742, -0.233313,
		0.695639, -0.212112, 0.686363,
		46.062206, 40.601559, 39.508781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165482, 40.889381, 38.649414>,  <45.575260, 40.750038, 39.028328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165482, 40.889381, 38.649414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241329, 40.631905, 38.945984>,  <46.286839, 40.477421, 39.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241329, 40.631905, 38.945984>,  <46.165482, 40.889381, 38.649414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241329, 40.631905, 38.945984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529970, -0.568579, -0.629166,
		0.826546, 0.512232, 0.233324,
		0.189616, -0.643689, 0.741425,
		46.298214, 40.438797, 39.168411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879902, 40.721340, 38.578335>,  <46.165482, 40.889381, 38.649414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879902, 40.721340, 38.578335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.724632, 40.427147, 38.800465>,  <46.631470, 40.250629, 38.933743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.724632, 40.427147, 38.800465>,  <46.879902, 40.721340, 38.578335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.724632, 40.427147, 38.800465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435775, -0.677437, -0.592604,
		0.812049, 0.011966, 0.583466,
		-0.388170, -0.735484, 0.555327,
		46.608181, 40.206501, 38.967064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398609, 40.332657, 38.503868>,  <46.879902, 40.721340, 38.578335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398609, 40.332657, 38.503868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120434, 40.082867, 38.646076>,  <46.953529, 39.932991, 38.731400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120434, 40.082867, 38.646076>,  <47.398609, 40.332657, 38.503868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120434, 40.082867, 38.646076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458599, -0.766594, -0.449468,
		0.553223, -0.149534, 0.819502,
		-0.695436, -0.624478, 0.355521,
		46.911804, 39.895523, 38.752731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.761711, 39.748848, 38.790985>,  <47.398609, 40.332657, 38.503868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.761711, 39.748848, 38.790985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386162, 39.632084, 38.717983>,  <47.160831, 39.562027, 38.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386162, 39.632084, 38.717983>,  <47.761711, 39.748848, 38.790985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386162, 39.632084, 38.717983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342829, -0.841174, -0.418203,
		-0.031441, -0.455207, 0.889830,
		-0.938871, -0.291911, -0.182506,
		47.104500, 39.544510, 38.663231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.761673, 39.049747, 38.827656>,  <47.761711, 39.748848, 38.790985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.761673, 39.049747, 38.827656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396862, 39.080055, 38.666431>,  <47.177975, 39.098240, 38.569695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396862, 39.080055, 38.666431>,  <47.761673, 39.049747, 38.827656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396862, 39.080055, 38.666431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021583, -0.972554, -0.231672,
		-0.409555, -0.219991, 0.885363,
		-0.912030, 0.075774, -0.403063,
		47.123253, 39.102787, 38.545513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.241508, 38.480808, 39.100605>,  <47.761673, 39.049747, 38.827656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.241508, 38.480808, 39.100605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143646, 38.626442, 38.741142>,  <47.084930, 38.713821, 38.525463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143646, 38.626442, 38.741142>,  <47.241508, 38.480808, 39.100605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.143646, 38.626442, 38.741142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193542, -0.926509, -0.322680,
		-0.950098, 0.094984, 0.297139,
		-0.244653, 0.364087, -0.898658,
		47.070251, 38.735668, 38.471546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588898, 38.073051, 38.905899>,  <47.241508, 38.480808, 39.100605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588898, 38.073051, 38.905899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736469, 38.221043, 38.564838>,  <46.825012, 38.309837, 38.360203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736469, 38.221043, 38.564838>,  <46.588898, 38.073051, 38.905899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736469, 38.221043, 38.564838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016063, -0.919763, -0.392146,
		-0.929319, 0.130978, -0.345270,
		0.368929, 0.369975, -0.852649,
		46.847149, 38.332035, 38.309044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175137, 37.767048, 38.367878>,  <46.588898, 38.073051, 38.905899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175137, 37.767048, 38.367878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499489, 37.899784, 38.175064>,  <46.694099, 37.979427, 38.059376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499489, 37.899784, 38.175064>,  <46.175137, 37.767048, 38.367878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499489, 37.899784, 38.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002534, -0.821692, -0.569926,
		-0.585211, 0.463362, -0.665450,
		0.810877, 0.331841, -0.482038,
		46.742752, 37.999336, 38.030453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913536, 37.811234, 37.702869>,  <46.175137, 37.767048, 38.367878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913536, 37.811234, 37.702869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309242, 37.754574, 37.717278>,  <46.546665, 37.720577, 37.725922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309242, 37.754574, 37.717278>,  <45.913536, 37.811234, 37.702869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309242, 37.754574, 37.717278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079182, -0.726569, -0.682516,
		0.122845, 0.672335, -0.729983,
		0.989262, -0.141645, 0.036019,
		46.606022, 37.712082, 37.728085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009399, 37.810215, 37.017567>,  <45.913536, 37.811234, 37.702869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009399, 37.810215, 37.017567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331158, 37.658691, 37.200630>,  <46.524212, 37.567776, 37.310471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331158, 37.658691, 37.200630>,  <46.009399, 37.810215, 37.017567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331158, 37.658691, 37.200630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089637, -0.838915, -0.536830,
		0.587296, 0.390799, -0.708773,
		0.804393, -0.378810, 0.457662,
		46.572475, 37.545048, 37.337929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501312, 37.666519, 36.464115>,  <46.009399, 37.810215, 37.017567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501312, 37.666519, 36.464115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566990, 37.432522, 36.781815>,  <46.606396, 37.292122, 36.972435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566990, 37.432522, 36.781815>,  <46.501312, 37.666519, 36.464115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566990, 37.432522, 36.781815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058409, -0.809525, -0.584172,
		0.984697, 0.049527, -0.167088,
		0.164195, -0.584992, 0.794244,
		46.616249, 37.257023, 37.020088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157406, 37.313599, 36.315186>,  <46.501312, 37.666519, 36.464115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157406, 37.313599, 36.315186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962978, 37.092617, 36.586044>,  <46.846321, 36.960026, 36.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962978, 37.092617, 36.586044>,  <47.157406, 37.313599, 36.315186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962978, 37.092617, 36.586044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083202, -0.800572, -0.593432,
		0.869952, -0.232108, 0.435098,
		-0.486067, -0.552458, 0.677147,
		46.817158, 36.926880, 36.789188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565468, 36.754311, 36.271790>,  <47.157406, 37.313599, 36.315186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565468, 36.754311, 36.271790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260311, 36.607082, 36.484398>,  <47.077217, 36.518745, 36.611965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260311, 36.607082, 36.484398>,  <47.565468, 36.754311, 36.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260311, 36.607082, 36.484398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142104, -0.897481, -0.417534,
		0.630716, -0.243002, 0.736985,
		-0.762892, -0.368074, 0.531524,
		47.031445, 36.496658, 36.643856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.797916, 36.146046, 36.656284>,  <47.565468, 36.754311, 36.271790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.797916, 36.146046, 36.656284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400608, 36.117569, 36.619736>,  <47.162224, 36.100483, 36.597805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400608, 36.117569, 36.619736>,  <47.797916, 36.146046, 36.656284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400608, 36.117569, 36.619736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112030, -0.790907, -0.601595,
		-0.029438, -0.607782, 0.793559,
		-0.993269, -0.071193, -0.091373,
		47.102627, 36.096210, 36.592323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495880, 35.446617, 36.792671>,  <47.797916, 36.146046, 36.656284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495880, 35.446617, 36.792671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268333, 35.620499, 36.513409>,  <47.131805, 35.724827, 36.345852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268333, 35.620499, 36.513409>,  <47.495880, 35.446617, 36.792671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268333, 35.620499, 36.513409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280959, -0.695108, -0.661731,
		-0.772953, -0.572589, 0.273287,
		-0.568864, 0.434704, -0.698159,
		47.097675, 35.750912, 36.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055992, 35.011364, 36.369198>,  <47.495880, 35.446617, 36.792671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055992, 35.011364, 36.369198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150688, 35.311039, 36.121754>,  <47.207508, 35.490845, 35.973286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150688, 35.311039, 36.121754>,  <47.055992, 35.011364, 36.369198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150688, 35.311039, 36.121754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272615, -0.662354, -0.697832,
		-0.932542, -0.003436, -0.361045,
		0.236742, 0.749183, -0.618609,
		47.221710, 35.535793, 35.936172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884415, 34.799747, 35.681938>,  <47.055992, 35.011364, 36.369198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884415, 34.799747, 35.681938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193035, 35.053749, 35.697350>,  <47.378208, 35.206150, 35.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193035, 35.053749, 35.697350>,  <46.884415, 34.799747, 35.681938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193035, 35.053749, 35.697350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584378, -0.683498, -0.437417,
		-0.251424, 0.360006, -0.898433,
		0.771549, 0.635002, 0.038532,
		47.424500, 35.244251, 35.708908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209297, 34.793297, 35.036732>,  <46.884415, 34.799747, 35.681938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209297, 34.793297, 35.036732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477291, 34.926556, 35.302101>,  <47.638088, 35.006512, 35.461323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477291, 34.926556, 35.302101>,  <47.209297, 34.793297, 35.036732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477291, 34.926556, 35.302101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725035, -0.485665, -0.488318,
		0.159519, 0.808172, -0.566932,
		0.669983, 0.333150, 0.663426,
		47.678288, 35.026501, 35.501129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788521, 35.183270, 34.741951>,  <47.209297, 34.793297, 35.036732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788521, 35.183270, 34.741951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.910603, 34.957329, 35.048622>,  <47.983852, 34.821762, 35.232624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.910603, 34.957329, 35.048622>,  <47.788521, 35.183270, 34.741951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.910603, 34.957329, 35.048622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757673, -0.343664, -0.554821,
		0.576871, 0.750223, 0.323087,
		0.305207, -0.564854, 0.766674,
		48.002163, 34.787872, 35.278625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.373924, 37.684296, 45.513847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.230305, 37.311317, 45.497688>,  <33.144135, 37.087532, 45.487991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.230305, 37.311317, 45.497688>,  <33.373924, 37.684296, 45.513847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230305, 37.311317, 45.497688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283441, -0.067697, -0.956597,
		0.889240, -0.354913, 0.288600,
		-0.359046, -0.932445, -0.040398,
		33.122589, 37.031586, 45.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931671, 37.222534, 45.179150>,  <33.373924, 37.684296, 45.513847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931671, 37.222534, 45.179150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579018, 37.041622, 45.125233>,  <33.367424, 36.933075, 45.092884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579018, 37.041622, 45.125233>,  <33.931671, 37.222534, 45.179150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579018, 37.041622, 45.125233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174108, -0.046248, -0.983640,
		0.438647, -0.890676, 0.119519,
		-0.881632, -0.452280, -0.134788,
		33.314529, 36.905937, 45.084797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067463, 36.674507, 44.737644>,  <33.931671, 37.222534, 45.179150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067463, 36.674507, 44.737644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669296, 36.692425, 44.703842>,  <33.430397, 36.703175, 44.683559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669296, 36.692425, 44.703842>,  <34.067463, 36.674507, 44.737644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669296, 36.692425, 44.703842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083814, -0.017092, -0.996335,
		-0.046086, -0.998849, 0.013259,
		-0.995415, 0.044806, -0.084505,
		33.370670, 36.705864, 44.678490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838947, 36.160675, 44.186726>,  <34.067463, 36.674507, 44.737644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838947, 36.160675, 44.186726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.526337, 36.406864, 44.227531>,  <33.338768, 36.554577, 44.252014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.526337, 36.406864, 44.227531>,  <33.838947, 36.160675, 44.186726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526337, 36.406864, 44.227531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025065, 0.194365, -0.980609,
		-0.623365, -0.763818, -0.167329,
		-0.781529, 0.615471, 0.102016,
		33.291878, 36.591507, 44.258137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218182, 35.999863, 43.721172>,  <33.838947, 36.160675, 44.186726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218182, 35.999863, 43.721172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157364, 36.385025, 43.810345>,  <33.120872, 36.616123, 43.863850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157364, 36.385025, 43.810345>,  <33.218182, 35.999863, 43.721172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157364, 36.385025, 43.810345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209506, 0.189031, -0.959361,
		-0.965913, -0.192574, 0.172993,
		-0.152047, 0.962903, 0.222933,
		33.111752, 36.673897, 43.877224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464802, 36.260155, 43.496014>,  <33.218182, 35.999863, 43.721172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464802, 36.260155, 43.496014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722759, 36.563786, 43.531601>,  <32.877533, 36.745964, 43.552952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722759, 36.563786, 43.531601>,  <32.464802, 36.260155, 43.496014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722759, 36.563786, 43.531601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067518, 0.059367, -0.995950,
		-0.761284, 0.648289, -0.012966,
		0.644893, 0.759077, 0.088967,
		32.916225, 36.791508, 43.558292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319427, 36.649471, 42.924191>,  <32.464802, 36.260155, 43.496014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319427, 36.649471, 42.924191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680149, 36.770840, 43.047276>,  <32.896580, 36.843662, 43.121128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.680149, 36.770840, 43.047276>,  <32.319427, 36.649471, 42.924191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680149, 36.770840, 43.047276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322750, 0.000626, -0.946484,
		-0.287377, 0.952856, -0.097365,
		0.901802, 0.303423, 0.307715,
		32.950691, 36.861866, 43.139591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453266, 37.332268, 42.618061>,  <32.319427, 36.649471, 42.924191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453266, 37.332268, 42.618061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800770, 37.141251, 42.670540>,  <33.009270, 37.026642, 42.702026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800770, 37.141251, 42.670540>,  <32.453266, 37.332268, 42.618061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800770, 37.141251, 42.670540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225179, 0.144949, -0.963475,
		0.441084, 0.866569, 0.233458,
		0.868758, -0.477543, 0.131199,
		33.061398, 36.997986, 42.709900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949516, 37.704937, 42.210781>,  <32.453266, 37.332268, 42.618061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949516, 37.704937, 42.210781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125084, 37.351570, 42.276421>,  <33.230423, 37.139549, 42.315804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125084, 37.351570, 42.276421>,  <32.949516, 37.704937, 42.210781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125084, 37.351570, 42.276421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377331, 0.015477, -0.925949,
		0.815459, 0.468334, 0.340133,
		0.438918, -0.883416, 0.164096,
		33.256760, 37.086544, 42.325649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642929, 37.724773, 41.808807>,  <32.949516, 37.704937, 42.210781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642929, 37.724773, 41.808807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637238, 37.332035, 41.884468>,  <33.633823, 37.096394, 41.929863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637238, 37.332035, 41.884468>,  <33.642929, 37.724773, 41.808807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637238, 37.332035, 41.884468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418927, -0.177618, -0.890479,
		0.907909, 0.066573, 0.413848,
		-0.014225, -0.981845, 0.189150,
		33.632969, 37.037483, 41.941212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319073, 37.494545, 41.694653>,  <33.642929, 37.724773, 41.808807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319073, 37.494545, 41.694653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.108982, 37.154308, 41.684601>,  <33.982929, 36.950165, 41.678570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.108982, 37.154308, 41.684601>,  <34.319073, 37.494545, 41.694653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108982, 37.154308, 41.684601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520314, -0.297632, -0.800431,
		0.673361, -0.433480, 0.598899,
		-0.525222, -0.850594, -0.025132,
		33.951416, 36.899132, 41.677063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808006, 36.903385, 41.622459>,  <34.319073, 37.494545, 41.694653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808006, 36.903385, 41.622459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454441, 36.765030, 41.496559>,  <34.242302, 36.682018, 41.421021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454441, 36.765030, 41.496559>,  <34.808006, 36.903385, 41.622459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454441, 36.765030, 41.496559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451650, -0.456779, -0.766397,
		0.121314, -0.819583, 0.559971,
		-0.883909, -0.345886, -0.314751,
		34.189270, 36.661263, 41.402134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878204, 36.220699, 41.542458>,  <34.808006, 36.903385, 41.622459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878204, 36.220699, 41.542458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567822, 36.300217, 41.303001>,  <34.381592, 36.347927, 41.159328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567822, 36.300217, 41.303001>,  <34.878204, 36.220699, 41.542458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567822, 36.300217, 41.303001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475748, -0.438729, -0.762352,
		-0.414193, -0.876355, 0.245859,
		-0.775956, 0.198794, -0.598643,
		34.335033, 36.359856, 41.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726456, 35.647072, 41.287827>,  <34.878204, 36.220699, 41.542458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726456, 35.647072, 41.287827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565979, 35.906853, 41.029446>,  <34.469692, 36.062721, 40.874416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565979, 35.906853, 41.029446>,  <34.726456, 35.647072, 41.287827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565979, 35.906853, 41.029446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405664, -0.506289, -0.760992,
		-0.821267, -0.567345, -0.060339,
		-0.401196, 0.649455, -0.645950,
		34.445621, 36.101688, 40.835659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428654, 35.253052, 40.852650>,  <34.726456, 35.647072, 41.287827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428654, 35.253052, 40.852650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.422935, 35.587177, 40.632812>,  <34.419506, 35.787651, 40.500912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.422935, 35.587177, 40.632812>,  <34.428654, 35.253052, 40.852650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422935, 35.587177, 40.632812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210349, -0.534833, -0.818356,
		-0.977522, -0.127302, -0.168063,
		-0.014293, 0.835313, -0.549589,
		34.418648, 35.837772, 40.467937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984619, 35.160339, 40.264847>,  <34.428654, 35.253052, 40.852650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984619, 35.160339, 40.264847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224339, 35.463741, 40.162472>,  <34.368172, 35.645782, 40.101048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224339, 35.463741, 40.162472>,  <33.984619, 35.160339, 40.264847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224339, 35.463741, 40.162472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016631, -0.331440, -0.943330,
		-0.800350, 0.561084, -0.211248,
		0.599303, 0.758507, -0.255937,
		34.404129, 35.691292, 40.085690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698395, 35.505333, 39.590946>,  <33.984619, 35.160339, 40.264847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698395, 35.505333, 39.590946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082504, 35.613419, 39.618843>,  <34.312969, 35.678268, 39.635582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082504, 35.613419, 39.618843>,  <33.698395, 35.505333, 39.590946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082504, 35.613419, 39.618843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139632, -0.248836, -0.958428,
		-0.241627, 0.930088, -0.276681,
		0.960270, 0.270215, 0.069745,
		34.370586, 35.694485, 39.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848610, 35.868340, 38.950600>,  <33.698395, 35.505333, 39.590946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848610, 35.868340, 38.950600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202259, 35.746895, 39.092670>,  <34.414448, 35.674030, 39.177914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202259, 35.746895, 39.092670>,  <33.848610, 35.868340, 38.950600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202259, 35.746895, 39.092670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252989, -0.328038, -0.910158,
		0.392842, 0.894547, -0.213216,
		0.884122, -0.303607, 0.355178,
		34.467495, 35.655811, 39.199223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325012, 36.158924, 38.574146>,  <33.848610, 35.868340, 38.950600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325012, 36.158924, 38.574146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.513302, 35.842323, 38.730064>,  <34.626274, 35.652363, 38.823616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.513302, 35.842323, 38.730064>,  <34.325012, 36.158924, 38.574146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513302, 35.842323, 38.730064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266287, -0.293745, -0.918044,
		0.841137, 0.535941, 0.072495,
		0.470722, -0.791506, 0.389794,
		34.654518, 35.604870, 38.847004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916668, 36.049042, 38.093369>,  <34.325012, 36.158924, 38.574146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916668, 36.049042, 38.093369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898495, 35.712902, 38.309425>,  <34.887592, 35.511219, 38.439060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898495, 35.712902, 38.309425>,  <34.916668, 36.049042, 38.093369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898495, 35.712902, 38.309425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543380, -0.474500, -0.692523,
		0.838257, 0.262039, 0.478186,
		-0.045431, -0.840348, 0.540139,
		34.884865, 35.460796, 38.471466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584461, 35.720440, 38.146458>,  <34.916668, 36.049042, 38.093369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584461, 35.720440, 38.146458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321003, 35.424782, 38.202812>,  <35.162926, 35.247387, 38.236626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321003, 35.424782, 38.202812>,  <35.584461, 35.720440, 38.146458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321003, 35.424782, 38.202812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528292, -0.587584, -0.612906,
		0.535808, -0.329260, 0.777495,
		-0.658648, -0.739144, 0.140887,
		35.123409, 35.203037, 38.245079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248074, 36.004086, 37.973518>,  <35.584461, 35.720440, 38.146458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248074, 36.004086, 37.973518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578030, 35.804668, 37.866932>,  <36.776005, 35.685020, 37.802979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578030, 35.804668, 37.866932>,  <36.248074, 36.004086, 37.973518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578030, 35.804668, 37.866932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462135, 0.323273, 0.825788,
		-0.325546, -0.804333, 0.497059,
		0.824895, -0.498541, -0.266470,
		36.825497, 35.655106, 37.786991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403328, 35.328320, 38.291454>,  <36.248074, 36.004086, 37.973518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403328, 35.328320, 38.291454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716839, 35.563923, 38.212696>,  <36.904945, 35.705284, 38.165440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716839, 35.563923, 38.212696>,  <36.403328, 35.328320, 38.291454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716839, 35.563923, 38.212696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175202, 0.094456, 0.979991,
		0.595820, -0.802588, -0.029163,
		0.783775, 0.589008, -0.196894,
		36.951973, 35.740623, 38.153629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844982, 35.161919, 38.809772>,  <36.403328, 35.328320, 38.291454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844982, 35.161919, 38.809772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979626, 35.520638, 38.694923>,  <37.060413, 35.735870, 38.626015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979626, 35.520638, 38.694923>,  <36.844982, 35.161919, 38.809772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979626, 35.520638, 38.694923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192176, 0.233072, 0.953282,
		0.921824, -0.376065, -0.093888,
		0.336613, 0.896801, -0.287123,
		37.080608, 35.789677, 38.608788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471096, 35.235699, 38.983543>,  <36.844982, 35.161919, 38.809772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471096, 35.235699, 38.983543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337421, 35.611584, 38.954548>,  <37.257217, 35.837116, 38.937149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337421, 35.611584, 38.954548>,  <37.471096, 35.235699, 38.983543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337421, 35.611584, 38.954548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376475, 0.203602, 0.903777,
		0.864051, 0.274742, -0.421821,
		-0.334189, 0.939714, -0.072489,
		37.237164, 35.893497, 38.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958813, 35.687721, 39.410526>,  <37.471096, 35.235699, 38.983543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958813, 35.687721, 39.410526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644264, 35.933899, 39.389160>,  <37.455536, 36.081604, 39.376339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644264, 35.933899, 39.389160>,  <37.958813, 35.687721, 39.410526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644264, 35.933899, 39.389160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242219, 0.386724, 0.889817,
		0.568290, 0.686786, -0.453180,
		-0.786369, 0.615443, -0.053419,
		37.408352, 36.118530, 39.373135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173729, 36.220974, 39.658836>,  <37.958813, 35.687721, 39.410526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173729, 36.220974, 39.658836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775791, 36.226627, 39.699005>,  <37.537029, 36.230019, 39.723106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775791, 36.226627, 39.699005>,  <38.173729, 36.220974, 39.658836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775791, 36.226627, 39.699005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100012, 0.300945, 0.948383,
		-0.016815, 0.953537, -0.300807,
		-0.994844, 0.014137, 0.100426,
		37.477337, 36.230869, 39.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066982, 36.852913, 40.054966>,  <38.173729, 36.220974, 39.658836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066982, 36.852913, 40.054966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736320, 36.628662, 40.074341>,  <37.537922, 36.494114, 40.085964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736320, 36.628662, 40.074341>,  <38.066982, 36.852913, 40.054966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736320, 36.628662, 40.074341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096223, 0.225636, 0.969448,
		-0.554424, 0.796737, -0.240468,
		-0.826653, -0.560624, 0.048434,
		37.488323, 36.460476, 40.088871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690502, 37.175236, 40.500992>,  <38.066982, 36.852913, 40.054966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690502, 37.175236, 40.500992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488865, 36.830605, 40.524879>,  <37.367882, 36.623825, 40.539211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488865, 36.830605, 40.524879>,  <37.690502, 37.175236, 40.500992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488865, 36.830605, 40.524879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120837, 0.138832, 0.982916,
		-0.855154, 0.488265, -0.174095,
		-0.504094, -0.861581, 0.059722,
		37.337635, 36.572128, 40.542797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083649, 37.327267, 40.738956>,  <37.690502, 37.175236, 40.500992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083649, 37.327267, 40.738956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154579, 36.943981, 40.828735>,  <37.197136, 36.714008, 40.882603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154579, 36.943981, 40.828735>,  <37.083649, 37.327267, 40.738956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154579, 36.943981, 40.828735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268625, 0.172272, 0.947715,
		-0.946782, -0.228345, -0.226852,
		0.177326, -0.958218, 0.224444,
		37.207775, 36.656517, 40.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526955, 37.206295, 41.055248>,  <37.083649, 37.327267, 40.738956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526955, 37.206295, 41.055248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765121, 36.898006, 41.145992>,  <36.908020, 36.713032, 41.200439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765121, 36.898006, 41.145992>,  <36.526955, 37.206295, 41.055248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765121, 36.898006, 41.145992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243494, 0.095975, 0.965142,
		-0.765629, -0.629901, -0.130521,
		0.595418, -0.770722, 0.226859,
		36.943748, 36.666790, 41.214050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194996, 36.722553, 41.513584>,  <36.526955, 37.206295, 41.055248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194996, 36.722553, 41.513584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579090, 36.624157, 41.566395>,  <36.809547, 36.565117, 41.598080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579090, 36.624157, 41.566395>,  <36.194996, 36.722553, 41.513584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579090, 36.624157, 41.566395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161114, -0.102050, 0.981646,
		-0.228008, -0.963884, -0.137626,
		0.960236, -0.245996, 0.132026,
		36.867161, 36.550358, 41.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201839, 36.145893, 41.953255>,  <36.194996, 36.722553, 41.513584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201839, 36.145893, 41.953255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558811, 36.325317, 41.972710>,  <36.772995, 36.432972, 41.984383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558811, 36.325317, 41.972710>,  <36.201839, 36.145893, 41.953255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558811, 36.325317, 41.972710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016419, -0.075447, 0.997015,
		0.450890, -0.890563, -0.059966,
		0.892429, 0.448559, 0.048640,
		36.826538, 36.459885, 41.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645813, 35.672703, 42.345608>,  <36.201839, 36.145893, 41.953255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645813, 35.672703, 42.345608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824764, 36.027569, 42.390839>,  <36.932137, 36.240490, 42.417976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824764, 36.027569, 42.390839>,  <36.645813, 35.672703, 42.345608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824764, 36.027569, 42.390839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118430, -0.066559, 0.990729,
		0.886468, -0.456623, 0.075290,
		0.447379, 0.887167, 0.113081,
		36.958977, 36.293720, 42.424763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040260, 35.627499, 42.965939>,  <36.645813, 35.672703, 42.345608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040260, 35.627499, 42.965939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988384, 36.017971, 42.896355>,  <36.957260, 36.252254, 42.854607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988384, 36.017971, 42.896355>,  <37.040260, 35.627499, 42.965939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988384, 36.017971, 42.896355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247856, 0.137953, 0.958925,
		0.960077, 0.167476, 0.224061,
		-0.129687, 0.976177, -0.173955,
		36.949478, 36.310825, 42.844170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395470, 35.920780, 43.598812>,  <37.040260, 35.627499, 42.965939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395470, 35.920780, 43.598812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179726, 36.224258, 43.452679>,  <37.050278, 36.406345, 43.364998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179726, 36.224258, 43.452679>,  <37.395470, 35.920780, 43.598812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179726, 36.224258, 43.452679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376220, 0.171022, 0.910610,
		0.753359, 0.628591, 0.193195,
		-0.539360, 0.758699, -0.365329,
		37.017918, 36.451870, 43.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446907, 36.436192, 44.087982>,  <37.395470, 35.920780, 43.598812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446907, 36.436192, 44.087982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113930, 36.531120, 43.887695>,  <36.914143, 36.588078, 43.767525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113930, 36.531120, 43.887695>,  <37.446907, 36.436192, 44.087982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113930, 36.531120, 43.887695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404576, 0.357148, 0.841881,
		0.378628, 0.903395, -0.201290,
		-0.832442, 0.237323, -0.500718,
		36.864197, 36.602318, 43.737480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283840, 37.099396, 44.413612>,  <37.446907, 36.436192, 44.087982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283840, 37.099396, 44.413612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960884, 36.962509, 44.221359>,  <36.767109, 36.880375, 44.106007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960884, 36.962509, 44.221359>,  <37.283840, 37.099396, 44.413612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960884, 36.962509, 44.221359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588811, 0.415287, 0.693425,
		-0.037705, 0.842865, -0.536802,
		-0.807391, -0.342220, -0.480630,
		36.718666, 36.859844, 44.077171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787323, 37.564030, 44.395744>,  <37.283840, 37.099396, 44.413612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787323, 37.564030, 44.395744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574268, 37.228539, 44.350418>,  <36.446434, 37.027245, 44.323223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574268, 37.228539, 44.350418>,  <36.787323, 37.564030, 44.395744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574268, 37.228539, 44.350418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656823, 0.325201, 0.680314,
		-0.533744, 0.436791, -0.724107,
		-0.532635, -0.838724, -0.113320,
		36.414478, 36.976921, 44.316422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191772, 37.772251, 44.256165>,  <36.787323, 37.564030, 44.395744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191772, 37.772251, 44.256165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101650, 37.403049, 44.380939>,  <36.047577, 37.181530, 44.455803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101650, 37.403049, 44.380939>,  <36.191772, 37.772251, 44.256165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101650, 37.403049, 44.380939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540672, 0.384798, 0.748067,
		-0.810499, -0.000111, -0.585739,
		-0.225308, -0.923001, 0.311939,
		36.034058, 37.126148, 44.474522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.463486, 37.752155, 44.443626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597851, 37.429199, 44.637653>,  <35.678471, 37.235428, 44.754070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597851, 37.429199, 44.637653>,  <35.463486, 37.752155, 44.443626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597851, 37.429199, 44.637653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664113, 0.162165, 0.729833,
		-0.667918, -0.567300, -0.481722,
		0.335916, -0.807386, 0.485065,
		35.698627, 37.186985, 44.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947239, 37.514980, 44.929550>,  <35.463486, 37.752155, 44.443626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947239, 37.514980, 44.929550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248905, 37.306950, 45.089928>,  <35.429905, 37.182129, 45.186153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248905, 37.306950, 45.089928>,  <34.947239, 37.514980, 44.929550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248905, 37.306950, 45.089928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467244, 0.004042, 0.884119,
		-0.461433, -0.854108, -0.239956,
		0.754163, -0.520080, 0.400942,
		35.475155, 37.150925, 45.210209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593327, 37.057266, 45.440674>,  <34.947239, 37.514980, 44.929550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593327, 37.057266, 45.440674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978436, 37.067753, 45.548290>,  <35.209499, 37.074043, 45.612858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978436, 37.067753, 45.548290>,  <34.593327, 37.057266, 45.440674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978436, 37.067753, 45.548290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268044, -0.036056, 0.962732,
		0.034942, -0.999006, -0.027686,
		0.962773, 0.026218, 0.269038,
		35.267269, 37.075619, 45.629002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631149, 36.710056, 45.992531>,  <34.593327, 37.057266, 45.440674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631149, 36.710056, 45.992531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953835, 36.945251, 46.016144>,  <35.147446, 37.086369, 46.030312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953835, 36.945251, 46.016144>,  <34.631149, 36.710056, 45.992531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953835, 36.945251, 46.016144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180404, 0.149907, 0.972102,
		0.562737, -0.794855, 0.227007,
		0.806710, 0.587991, 0.059037,
		35.195847, 37.121647, 46.033855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878864, 36.461952, 46.629684>,  <34.631149, 36.710056, 45.992531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878864, 36.461952, 46.629684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033855, 36.823284, 46.556091>,  <35.126850, 37.040085, 46.511936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033855, 36.823284, 46.556091>,  <34.878864, 36.461952, 46.629684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033855, 36.823284, 46.556091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188120, 0.272857, 0.943483,
		0.902481, -0.330968, 0.275661,
		0.387478, 0.903332, -0.183986,
		35.150101, 37.094284, 46.500896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281578, 36.682152, 47.219517>,  <34.878864, 36.461952, 46.629684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281578, 36.682152, 47.219517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244812, 37.034035, 47.032894>,  <35.222752, 37.245163, 46.920921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244812, 37.034035, 47.032894>,  <35.281578, 36.682152, 47.219517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244812, 37.034035, 47.032894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468891, 0.375103, 0.799649,
		0.878460, 0.292263, 0.378008,
		-0.091916, 0.879704, -0.466553,
		35.217236, 37.297947, 46.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699745, 37.225609, 47.647419>,  <35.281578, 36.682152, 47.219517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699745, 37.225609, 47.647419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425644, 37.416378, 47.427246>,  <35.261185, 37.530838, 47.295143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425644, 37.416378, 47.427246>,  <35.699745, 37.225609, 47.647419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425644, 37.416378, 47.427246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348155, 0.449319, 0.822739,
		0.639704, 0.755418, -0.141853,
		-0.685249, 0.476923, -0.550434,
		35.220070, 37.559456, 47.262115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782429, 38.007923, 47.731190>,  <35.699745, 37.225609, 47.647419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782429, 38.007923, 47.731190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405190, 37.945915, 47.613522>,  <35.178848, 37.908710, 47.542919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405190, 37.945915, 47.613522>,  <35.782429, 38.007923, 47.731190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405190, 37.945915, 47.613522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326076, 0.257848, 0.909499,
		-0.065143, 0.953668, -0.293725,
		-0.943096, -0.155024, -0.294171,
		35.122261, 37.899406, 47.525269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520573, 38.555756, 48.074436>,  <35.782429, 38.007923, 47.731190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520573, 38.555756, 48.074436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231087, 38.298347, 47.974747>,  <35.057396, 38.143902, 47.914932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231087, 38.298347, 47.974747>,  <35.520573, 38.555756, 48.074436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231087, 38.298347, 47.974747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464809, 0.187619, 0.865305,
		-0.510084, 0.742077, -0.434898,
		-0.723718, -0.643522, -0.249223,
		35.013973, 38.105289, 47.899979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996998, 38.901436, 48.353336>,  <35.520573, 38.555756, 48.074436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996998, 38.901436, 48.353336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866726, 38.526173, 48.306358>,  <34.788563, 38.301014, 48.278172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866726, 38.526173, 48.306358>,  <34.996998, 38.901436, 48.353336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866726, 38.526173, 48.306358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667550, 0.140198, 0.731247,
		-0.669559, 0.316552, -0.671927,
		-0.325680, -0.938157, -0.117444,
		34.769020, 38.244724, 48.271126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298637, 38.973274, 48.380455>,  <34.996998, 38.901436, 48.353336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298637, 38.973274, 48.380455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394165, 38.594524, 48.466610>,  <34.451481, 38.367275, 48.518303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394165, 38.594524, 48.466610>,  <34.298637, 38.973274, 48.380455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394165, 38.594524, 48.466610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629874, 0.017766, 0.776494,
		-0.739071, -0.321106, -0.592170,
		0.238816, -0.946877, 0.215387,
		34.465809, 38.310463, 48.531227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713264, 38.632328, 48.535526>,  <34.298637, 38.973274, 48.380455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713264, 38.632328, 48.535526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988861, 38.387142, 48.690220>,  <34.154221, 38.240032, 48.783035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988861, 38.387142, 48.690220>,  <33.713264, 38.632328, 48.535526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988861, 38.387142, 48.690220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570732, -0.129990, 0.810782,
		-0.446710, -0.779344, -0.439401,
		0.688996, -0.612965, 0.386729,
		34.195560, 38.203255, 48.806240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324562, 38.041451, 48.855194>,  <33.713264, 38.632328, 48.535526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324562, 38.041451, 48.855194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699181, 38.030590, 48.994991>,  <33.923950, 38.024075, 49.078869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699181, 38.030590, 48.994991>,  <33.324562, 38.041451, 48.855194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699181, 38.030590, 48.994991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344696, -0.252782, 0.904039,
		0.063799, -0.967142, -0.246101,
		0.936544, -0.027153, 0.349497,
		33.980145, 38.022446, 49.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235474, 37.633823, 49.419800>,  <33.324562, 38.041451, 48.855194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235474, 37.633823, 49.419800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591393, 37.772713, 49.538250>,  <33.804943, 37.856045, 49.609322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591393, 37.772713, 49.538250>,  <33.235474, 37.633823, 49.419800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591393, 37.772713, 49.538250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271806, -0.118014, 0.955088,
		0.366576, -0.930327, -0.010631,
		0.889799, 0.347223, 0.296130,
		33.858334, 37.876881, 49.627090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445911, 37.155479, 49.958706>,  <33.235474, 37.633823, 49.419800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445911, 37.155479, 49.958706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636417, 37.506271, 49.984241>,  <33.750721, 37.716747, 49.999565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636417, 37.506271, 49.984241>,  <33.445911, 37.155479, 49.958706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636417, 37.506271, 49.984241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189032, 0.031207, 0.981475,
		0.858744, -0.479509, 0.180640,
		0.476263, 0.876982, 0.063844,
		33.779297, 37.769367, 50.003395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117546, 36.932899, 50.317654>,  <33.445911, 37.155479, 49.958706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117546, 36.932899, 50.317654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038097, 37.318352, 50.389172>,  <33.990429, 37.549622, 50.432083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038097, 37.318352, 50.389172>,  <34.117546, 36.932899, 50.317654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038097, 37.318352, 50.389172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277615, -0.230272, 0.932687,
		0.939936, 0.135617, 0.313256,
		-0.198622, 0.963630, 0.178791,
		33.978512, 37.607441, 50.442810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454765, 37.102264, 50.937439>,  <34.117546, 36.932899, 50.317654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454765, 37.102264, 50.937439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189354, 37.400181, 50.909088>,  <34.030109, 37.578930, 50.892078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189354, 37.400181, 50.909088>,  <34.454765, 37.102264, 50.937439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189354, 37.400181, 50.909088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261410, -0.142037, 0.954720,
		0.700999, 0.652008, 0.288940,
		-0.663525, 0.744790, -0.070873,
		33.990295, 37.623619, 50.887825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485733, 37.470989, 51.565819>,  <34.454765, 37.102264, 50.937439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485733, 37.470989, 51.565819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.133377, 37.605366, 51.432453>,  <33.921963, 37.685993, 51.352432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.133377, 37.605366, 51.432453>,  <34.485733, 37.470989, 51.565819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133377, 37.605366, 51.432453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351170, 0.008406, 0.936274,
		0.317339, 0.941844, 0.110569,
		-0.880895, 0.335945, -0.333415,
		33.869110, 37.706150, 51.332428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303497, 38.001823, 52.036304>,  <34.485733, 37.470989, 51.565819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303497, 38.001823, 52.036304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975121, 37.856510, 51.860085>,  <33.778095, 37.769321, 51.754353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975121, 37.856510, 51.860085>,  <34.303497, 38.001823, 52.036304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975121, 37.856510, 51.860085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485820, 0.038943, 0.873191,
		-0.300061, 0.930864, -0.208462,
		-0.820940, -0.363285, -0.440547,
		33.728840, 37.747524, 51.727921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812473, 38.327976, 52.362759>,  <34.303497, 38.001823, 52.036304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812473, 38.327976, 52.362759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610909, 38.028175, 52.191029>,  <33.489971, 37.848293, 52.087990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610909, 38.028175, 52.191029>,  <33.812473, 38.327976, 52.362759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610909, 38.028175, 52.191029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518891, -0.134679, 0.844165,
		-0.690525, 0.648156, -0.321044,
		-0.503912, -0.749504, -0.429321,
		33.459736, 37.803326, 52.062233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050968, 38.428947, 52.469017>,  <33.812473, 38.327976, 52.362759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050968, 38.428947, 52.469017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085670, 38.036858, 52.397881>,  <33.106491, 37.801601, 52.355198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085670, 38.036858, 52.397881>,  <33.050968, 38.428947, 52.469017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085670, 38.036858, 52.397881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534851, -0.196432, 0.821796,
		-0.840481, 0.023821, -0.541317,
		0.086756, -0.980228, -0.177838,
		33.111698, 37.742790, 52.344528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342285, 38.121559, 52.539734>,  <33.050968, 38.428947, 52.469017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342285, 38.121559, 52.539734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609489, 37.827251, 52.584282>,  <32.769814, 37.650665, 52.611012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609489, 37.827251, 52.584282>,  <32.342285, 38.121559, 52.539734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609489, 37.827251, 52.584282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488409, -0.320586, 0.811592,
		-0.561445, -0.596542, -0.573513,
		0.668009, -0.735773, 0.111365,
		32.809891, 37.606518, 52.617691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961021, 37.446503, 52.590839>,  <32.342285, 38.121559, 52.539734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961021, 37.446503, 52.590839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308937, 37.476135, 52.785969>,  <32.517685, 37.493916, 52.903046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308937, 37.476135, 52.785969>,  <31.961021, 37.446503, 52.590839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308937, 37.476135, 52.785969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468636, -0.185373, 0.863723,
		0.154418, -0.979872, -0.126518,
		0.869791, 0.074083, 0.487828,
		32.569874, 37.498360, 52.932316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792927, 37.056946, 53.177193>,  <31.961021, 37.446503, 52.590839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792927, 37.056946, 53.177193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135098, 37.238045, 53.277805>,  <32.340401, 37.346703, 53.338173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135098, 37.238045, 53.277805>,  <31.792927, 37.056946, 53.177193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135098, 37.238045, 53.277805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069849, -0.380372, 0.922192,
		0.513192, -0.806437, -0.293757,
		0.855427, 0.452743, 0.251532,
		32.391727, 37.373867, 53.353264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022903, 36.709202, 53.460560>,  <31.792927, 37.056946, 53.177193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022903, 36.709202, 53.460560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775967, 36.437675, 53.301517>,  <30.627804, 36.274757, 53.206093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775967, 36.437675, 53.301517>,  <31.022903, 36.709202, 53.460560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775967, 36.437675, 53.301517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702551, -0.248292, -0.666913,
		0.353990, -0.691055, 0.630186,
		-0.617344, -0.678818, -0.397608,
		30.590763, 36.234032, 53.182236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535713, 36.301514, 53.154484>,  <31.022903, 36.709202, 53.460560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535713, 36.301514, 53.154484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197874, 36.182495, 52.976444>,  <30.995171, 36.111084, 52.869621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197874, 36.182495, 52.976444>,  <31.535713, 36.301514, 53.154484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197874, 36.182495, 52.976444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510694, -0.198117, -0.836625,
		0.160757, -0.933924, 0.319287,
		-0.844600, -0.297550, -0.445100,
		30.944494, 36.093231, 52.842915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684942, 35.692593, 52.836006>,  <31.535713, 36.301514, 53.154484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684942, 35.692593, 52.836006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370338, 35.851814, 52.647137>,  <31.181576, 35.947350, 52.533813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370338, 35.851814, 52.647137>,  <31.684942, 35.692593, 52.836006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370338, 35.851814, 52.647137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417727, -0.220238, -0.881476,
		-0.454871, -0.890530, 0.006940,
		-0.786509, 0.398059, -0.472178,
		31.134386, 35.971233, 52.505482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544237, 35.288204, 52.234592>,  <31.684942, 35.692593, 52.836006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544237, 35.288204, 52.234592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330484, 35.613087, 52.140991>,  <31.202232, 35.808014, 52.084831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330484, 35.613087, 52.140991>,  <31.544237, 35.288204, 52.234592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330484, 35.613087, 52.140991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287878, -0.085410, -0.953851,
		-0.794708, -0.577087, -0.188174,
		-0.534383, 0.812204, -0.234007,
		31.170170, 35.856747, 52.070789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218737, 35.118496, 51.603008>,  <31.544237, 35.288204, 52.234592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218737, 35.118496, 51.603008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212614, 35.517670, 51.627968>,  <31.208941, 35.757175, 51.642944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212614, 35.517670, 51.627968>,  <31.218737, 35.118496, 51.603008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212614, 35.517670, 51.627968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111889, 0.063723, -0.991675,
		-0.993603, -0.008199, -0.112633,
		-0.015308, 0.997934, 0.062398,
		31.208021, 35.817051, 51.646687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884668, 35.274334, 51.022057>,  <31.218737, 35.118496, 51.603008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884668, 35.274334, 51.022057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070120, 35.615387, 51.118450>,  <31.181391, 35.820019, 51.176289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070120, 35.615387, 51.118450>,  <30.884668, 35.274334, 51.022057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070120, 35.615387, 51.118450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136228, 0.200155, -0.970247,
		-0.875494, 0.482663, -0.023354,
		0.463628, 0.852628, 0.240986,
		31.209208, 35.871174, 51.190746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675722, 35.668896, 50.465508>,  <30.884668, 35.274334, 51.022057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675722, 35.668896, 50.465508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012045, 35.812702, 50.627392>,  <31.213839, 35.898987, 50.724522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012045, 35.812702, 50.627392>,  <30.675722, 35.668896, 50.465508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012045, 35.812702, 50.627392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349995, 0.209315, -0.913067,
		-0.412974, 0.909360, 0.050165,
		0.840807, 0.359515, 0.404713,
		31.264286, 35.920555, 50.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831154, 36.381378, 50.098068>,  <30.675722, 35.668896, 50.465508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831154, 36.381378, 50.098068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169254, 36.242897, 50.260887>,  <31.372114, 36.159809, 50.358578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169254, 36.242897, 50.260887>,  <30.831154, 36.381378, 50.098068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169254, 36.242897, 50.260887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481092, 0.161475, -0.861670,
		0.232588, 0.924157, 0.303045,
		0.845253, -0.346207, 0.407048,
		31.422831, 36.139034, 50.383003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381533, 36.869179, 49.945854>,  <30.831154, 36.381378, 50.098068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381533, 36.869179, 49.945854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589733, 36.536591, 50.023560>,  <31.714653, 36.337036, 50.070183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589733, 36.536591, 50.023560>,  <31.381533, 36.869179, 49.945854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589733, 36.536591, 50.023560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500248, 0.112569, -0.858534,
		0.691977, 0.544046, 0.474533,
		0.520499, -0.831470, 0.194263,
		31.745882, 36.287151, 50.081837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125378, 36.966698, 50.072639>,  <31.381533, 36.869179, 49.945854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125378, 36.966698, 50.072639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.068241, 36.595871, 49.933987>,  <32.033958, 36.373375, 49.850796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.068241, 36.595871, 49.933987>,  <32.125378, 36.966698, 50.072639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068241, 36.595871, 49.933987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538338, 0.221109, -0.813206,
		0.830535, -0.302764, 0.467489,
		-0.142844, -0.927062, -0.346628,
		32.025387, 36.317753, 49.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658337, 36.882084, 49.737320>,  <32.125378, 36.966698, 50.072639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658337, 36.882084, 49.737320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466267, 36.566128, 49.584740>,  <32.351025, 36.376553, 49.493191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466267, 36.566128, 49.584740>,  <32.658337, 36.882084, 49.737320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466267, 36.566128, 49.584740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423548, 0.172028, -0.889390,
		0.768140, -0.588627, 0.251952,
		-0.480176, -0.789889, -0.381453,
		32.322212, 36.329163, 49.470303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105465, 36.481895, 49.397419>,  <32.658337, 36.882084, 49.737320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105465, 36.481895, 49.397419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749943, 36.405907, 49.230595>,  <32.536629, 36.360313, 49.130501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749943, 36.405907, 49.230595>,  <33.105465, 36.481895, 49.397419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749943, 36.405907, 49.230595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413163, 0.061622, -0.908570,
		0.198306, -0.979853, 0.023721,
		-0.888804, -0.189975, -0.417059,
		32.483303, 36.348915, 49.105476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269043, 36.110863, 48.800190>,  <33.105465, 36.481895, 49.397419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269043, 36.110863, 48.800190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886169, 36.212772, 48.745220>,  <32.656445, 36.273918, 48.712238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886169, 36.212772, 48.745220>,  <33.269043, 36.110863, 48.800190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886169, 36.212772, 48.745220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148846, 0.026017, -0.988518,
		-0.248277, -0.966649, -0.062826,
		-0.957186, 0.254778, -0.137422,
		32.599014, 36.289204, 48.703995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025021, 35.679962, 48.227047>,  <33.269043, 36.110863, 48.800190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025021, 35.679962, 48.227047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778557, 35.994831, 48.216400>,  <32.630680, 36.183754, 48.210014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778557, 35.994831, 48.216400>,  <33.025021, 35.679962, 48.227047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778557, 35.994831, 48.216400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129912, 0.068244, -0.989174,
		-0.776834, -0.612946, -0.144312,
		-0.616158, 0.787172, -0.026615,
		32.593708, 36.230984, 48.208416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605835, 35.583424, 47.642506>,  <33.025021, 35.679962, 48.227047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605835, 35.583424, 47.642506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556335, 35.970604, 47.729923>,  <32.526634, 36.202911, 47.782375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556335, 35.970604, 47.729923>,  <32.605835, 35.583424, 47.642506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556335, 35.970604, 47.729923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049362, 0.213963, -0.975594,
		-0.991085, -0.131517, 0.021302,
		-0.123749, 0.967948, 0.218548,
		32.519211, 36.260990, 47.795486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077404, 35.826374, 47.210312>,  <32.605835, 35.583424, 47.642506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077404, 35.826374, 47.210312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277084, 36.164555, 47.286213>,  <32.396893, 36.367462, 47.331753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277084, 36.164555, 47.286213>,  <32.077404, 35.826374, 47.210312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277084, 36.164555, 47.286213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030929, 0.236236, -0.971203,
		-0.865934, 0.478957, 0.144078,
		0.499201, 0.845454, 0.189751,
		32.426846, 36.418190, 47.343140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710985, 36.417217, 46.953964>,  <32.077404, 35.826374, 47.210312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710985, 36.417217, 46.953964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.094162, 36.530716, 46.971119>,  <32.324066, 36.598816, 46.981411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.094162, 36.530716, 46.971119>,  <31.710985, 36.417217, 46.953964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094162, 36.530716, 46.971119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077679, 0.400270, -0.913099,
		-0.276253, 0.871363, 0.405476,
		0.957941, 0.283743, 0.042889,
		32.381546, 36.615837, 46.983986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757971, 36.959187, 46.478535>,  <31.710985, 36.417217, 46.953964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757971, 36.959187, 46.478535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135807, 36.844013, 46.541580>,  <32.362507, 36.774910, 46.579407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135807, 36.844013, 46.541580>,  <31.757971, 36.959187, 46.478535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135807, 36.844013, 46.541580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187644, 0.079667, -0.979001,
		0.269334, 0.954330, 0.129282,
		0.944589, -0.287937, 0.157617,
		32.419186, 36.757633, 46.588867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113125, 37.336845, 46.026234>,  <31.757971, 36.959187, 46.478535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113125, 37.336845, 46.026234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386948, 37.063995, 46.129066>,  <32.551243, 36.900288, 46.190765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386948, 37.063995, 46.129066>,  <32.113125, 37.336845, 46.026234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386948, 37.063995, 46.129066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456901, 0.126698, -0.880448,
		0.568000, 0.720179, 0.398394,
		0.684556, -0.682121, 0.257086,
		32.592316, 36.859360, 46.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697231, 37.668522, 45.921150>,  <32.113125, 37.336845, 46.026234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697231, 37.668522, 45.921150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761101, 37.275860, 45.879459>,  <32.799423, 37.040264, 45.854446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761101, 37.275860, 45.879459>,  <32.697231, 37.668522, 45.921150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761101, 37.275860, 45.879459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328945, 0.152456, -0.931961,
		0.930752, 0.114523, 0.347253,
		0.159672, -0.981652, -0.104227,
		32.809002, 36.981365, 45.848190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.035175, 44.480389, 36.990665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804317, 44.544380, 37.310993>,  <44.665802, 44.582775, 37.503189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804317, 44.544380, 37.310993>,  <45.035175, 44.480389, 36.990665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804317, 44.544380, 37.310993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074972, -0.986863, 0.143113,
		0.813195, 0.022558, 0.581553,
		-0.577142, 0.159979, 0.800821,
		44.631176, 44.592373, 37.551239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277355, 44.045383, 37.454380>,  <45.035175, 44.480389, 36.990665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277355, 44.045383, 37.454380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899746, 44.133778, 37.552349>,  <44.673180, 44.186813, 37.611130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899746, 44.133778, 37.552349>,  <45.277355, 44.045383, 37.454380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899746, 44.133778, 37.552349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201072, -0.974056, 0.103854,
		0.261521, 0.048793, 0.963964,
		-0.944022, 0.220986, 0.244925,
		44.616539, 44.200073, 37.625828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059940, 43.561901, 38.035923>,  <45.277355, 44.045383, 37.454380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059940, 43.561901, 38.035923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705296, 43.694626, 37.907032>,  <44.492508, 43.774261, 37.829697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705296, 43.694626, 37.907032>,  <45.059940, 43.561901, 38.035923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705296, 43.694626, 37.907032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403660, -0.895209, 0.188836,
		-0.225801, 0.297493, 0.927638,
		-0.886608, 0.331811, -0.322225,
		44.439312, 43.794170, 37.810364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526066, 43.345539, 38.542370>,  <45.059940, 43.561901, 38.035923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526066, 43.345539, 38.542370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328148, 43.417755, 38.202351>,  <44.209396, 43.461086, 37.998341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328148, 43.417755, 38.202351>,  <44.526066, 43.345539, 38.542370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328148, 43.417755, 38.202351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465990, -0.880777, 0.084177,
		-0.733505, 0.437764, 0.519935,
		-0.494797, 0.180540, -0.850048,
		44.179710, 43.471916, 37.947338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826317, 43.043591, 38.664303>,  <44.526066, 43.345539, 38.542370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826317, 43.043591, 38.664303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912174, 43.056168, 38.273830>,  <43.963688, 43.063713, 38.039547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912174, 43.056168, 38.273830>,  <43.826317, 43.043591, 38.664303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912174, 43.056168, 38.273830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350802, -0.930305, -0.107098,
		-0.911517, 0.365436, -0.188659,
		0.214648, 0.031439, -0.976185,
		43.976570, 43.065598, 37.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397686, 42.632923, 38.506821>,  <43.826317, 43.043591, 38.664303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397686, 42.632923, 38.506821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628014, 42.670124, 38.181915>,  <43.766212, 42.692444, 37.986973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628014, 42.670124, 38.181915>,  <43.397686, 42.632923, 38.506821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628014, 42.670124, 38.181915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119448, -0.973278, -0.196120,
		-0.808803, 0.209954, -0.549325,
		0.575822, 0.093007, -0.812268,
		43.800758, 42.698025, 37.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067680, 42.260513, 38.067226>,  <43.397686, 42.632923, 38.506821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067680, 42.260513, 38.067226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441799, 42.263229, 37.925709>,  <43.666271, 42.264858, 37.840797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441799, 42.263229, 37.925709>,  <43.067680, 42.260513, 38.067226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441799, 42.263229, 37.925709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099091, -0.954788, -0.280288,
		-0.339700, 0.297211, -0.892339,
		0.935299, 0.006791, -0.353793,
		43.722389, 42.265266, 37.819572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035114, 41.929493, 37.359768>,  <43.067680, 42.260513, 38.067226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035114, 41.929493, 37.359768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416119, 41.917904, 37.481010>,  <43.644722, 41.910950, 37.553757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416119, 41.917904, 37.481010>,  <43.035114, 41.929493, 37.359768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416119, 41.917904, 37.481010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026268, -0.983934, -0.176587,
		0.303356, 0.176164, -0.936451,
		0.952515, -0.028970, 0.303110,
		43.701874, 41.909214, 37.571945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347408, 41.568718, 36.785103>,  <43.035114, 41.929493, 37.359768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347408, 41.568718, 36.785103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593151, 41.532497, 37.098629>,  <43.740597, 41.510765, 37.286747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593151, 41.532497, 37.098629>,  <43.347408, 41.568718, 36.785103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593151, 41.532497, 37.098629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214485, -0.936822, -0.276335,
		0.759318, 0.337885, -0.556120,
		0.614355, -0.090547, 0.783817,
		43.777458, 41.505333, 37.333775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792126, 41.107151, 36.579414>,  <43.347408, 41.568718, 36.785103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792126, 41.107151, 36.579414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877956, 41.111065, 36.970078>,  <43.929455, 41.113411, 37.204475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877956, 41.111065, 36.970078>,  <43.792126, 41.107151, 36.579414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877956, 41.111065, 36.970078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172348, -0.984638, -0.028005,
		0.961381, 0.174334, -0.212966,
		0.214577, 0.009780, 0.976658,
		43.942329, 41.113998, 37.263077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437416, 40.852295, 36.677780>,  <43.792126, 41.107151, 36.579414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437416, 40.852295, 36.677780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226013, 40.781326, 37.009853>,  <44.099171, 40.738747, 37.209095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226013, 40.781326, 37.009853>,  <44.437416, 40.852295, 36.677780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226013, 40.781326, 37.009853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235845, -0.970107, -0.057181,
		0.815508, 0.165573, 0.554556,
		-0.528511, -0.177421, 0.830180,
		44.067459, 40.728100, 37.258907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823818, 40.289562, 37.057800>,  <44.437416, 40.852295, 36.677780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823818, 40.289562, 37.057800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475517, 40.305511, 37.253838>,  <44.266537, 40.315079, 37.371460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475517, 40.305511, 37.253838>,  <44.823818, 40.289562, 37.057800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475517, 40.305511, 37.253838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078096, -0.972843, 0.217893,
		0.485473, 0.228006, 0.843996,
		-0.870757, 0.039869, 0.490095,
		44.214291, 40.317471, 37.400867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962215, 40.019337, 37.776707>,  <44.823818, 40.289562, 37.057800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962215, 40.019337, 37.776707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573917, 39.971813, 37.693237>,  <44.340939, 39.943298, 37.643154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573917, 39.971813, 37.693237>,  <44.962215, 40.019337, 37.776707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573917, 39.971813, 37.693237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091772, -0.986615, 0.134794,
		-0.221898, 0.111699, 0.968651,
		-0.970742, -0.118806, -0.208677,
		44.282696, 39.936172, 37.630634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705837, 39.516109, 38.282871>,  <44.962215, 40.019337, 37.776707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705837, 39.516109, 38.282871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451031, 39.498192, 37.975052>,  <44.298149, 39.487442, 37.790359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451031, 39.498192, 37.975052>,  <44.705837, 39.516109, 38.282871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451031, 39.498192, 37.975052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112754, -0.982158, 0.150506,
		-0.762562, 0.182644, 0.620597,
		-0.637013, -0.044795, -0.769550,
		44.259926, 39.484753, 37.744186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120312, 39.170078, 38.531311>,  <44.705837, 39.516109, 38.282871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120312, 39.170078, 38.531311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118134, 39.142136, 38.132294>,  <44.116829, 39.125370, 37.892883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118134, 39.142136, 38.132294>,  <44.120312, 39.170078, 38.531311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118134, 39.142136, 38.132294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009550, -0.997515, 0.069801,
		-0.999940, -0.009147, 0.006095,
		-0.005442, -0.069855, -0.997542,
		44.116501, 39.121178, 37.833031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659889, 38.658695, 38.457672>,  <44.120312, 39.170078, 38.531311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659889, 38.658695, 38.457672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848648, 38.651241, 38.105091>,  <43.961903, 38.646770, 37.893543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848648, 38.651241, 38.105091>,  <43.659889, 38.658695, 38.457672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848648, 38.651241, 38.105091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063091, -0.997927, -0.012679,
		-0.879392, 0.061596, -0.472096,
		0.471899, -0.018635, -0.881456,
		43.990219, 38.645649, 37.840652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419628, 38.111370, 38.313808>,  <43.659889, 38.658695, 38.457672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419628, 38.111370, 38.313808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700031, 38.166023, 38.033829>,  <43.868271, 38.198814, 37.865841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700031, 38.166023, 38.033829>,  <43.419628, 38.111370, 38.313808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700031, 38.166023, 38.033829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090640, -0.990586, -0.102588,
		-0.707373, 0.008472, -0.706790,
		0.701005, 0.136631, -0.699945,
		43.910332, 38.207012, 37.823845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301609, 37.643120, 37.765732>,  <43.419628, 38.111370, 38.313808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301609, 37.643120, 37.765732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687634, 37.746151, 37.746468>,  <43.919247, 37.807968, 37.734909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687634, 37.746151, 37.746468>,  <43.301609, 37.643120, 37.765732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687634, 37.746151, 37.746468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245284, -0.952632, -0.179799,
		-0.092192, 0.161703, -0.982524,
		0.965058, 0.257573, -0.048162,
		43.977150, 37.823421, 37.732018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472027, 37.364475, 37.119408>,  <43.301609, 37.643120, 37.765732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472027, 37.364475, 37.119408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774551, 37.427673, 37.373348>,  <43.956066, 37.465591, 37.525711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774551, 37.427673, 37.373348>,  <43.472027, 37.364475, 37.119408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774551, 37.427673, 37.373348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300412, -0.945913, -0.122481,
		0.581160, 0.283350, -0.762866,
		0.756310, 0.157993, 0.634849,
		44.001446, 37.475071, 37.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164513, 36.992123, 36.796902>,  <43.472027, 37.364475, 37.119408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164513, 36.992123, 36.796902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235085, 37.052162, 37.186024>,  <44.277428, 37.088188, 37.419495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235085, 37.052162, 37.186024>,  <44.164513, 36.992123, 36.796902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235085, 37.052162, 37.186024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204205, -0.972384, 0.113004,
		0.962899, 0.178715, -0.202205,
		0.176425, 0.150103, 0.972802,
		44.288013, 37.097195, 37.477863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621933, 36.543873, 36.843460>,  <44.164513, 36.992123, 36.796902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621933, 36.543873, 36.843460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525257, 36.618179, 37.224422>,  <44.467251, 36.662762, 37.452999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525257, 36.618179, 37.224422>,  <44.621933, 36.543873, 36.843460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525257, 36.618179, 37.224422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045227, -0.978281, 0.202291,
		0.969300, 0.091965, 0.228034,
		-0.241685, 0.185767, 0.952407,
		44.452751, 36.673908, 37.510143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168522, 36.475910, 36.138863>,  <44.621933, 36.543873, 36.843460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168522, 36.475910, 36.138863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058907, 36.841934, 36.020496>,  <44.993137, 37.061550, 35.949478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058907, 36.841934, 36.020496>,  <45.168522, 36.475910, 36.138863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058907, 36.841934, 36.020496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030357, 0.315767, 0.948351,
		0.961239, 0.250903, -0.114311,
		-0.274040, 0.915062, -0.295911,
		44.976696, 37.116451, 35.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746979, 36.183037, 36.455536>,  <45.168522, 36.475910, 36.138863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746979, 36.183037, 36.455536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144932, 36.175236, 36.495201>,  <46.383701, 36.170555, 36.519001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144932, 36.175236, 36.495201>,  <45.746979, 36.183037, 36.455536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144932, 36.175236, 36.495201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054967, 0.718965, 0.692869,
		-0.084809, -0.694772, 0.714212,
		0.994880, -0.019503, 0.099165,
		46.443398, 36.169384, 36.524952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879185, 36.262054, 37.214550>,  <45.746979, 36.183037, 36.455536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879185, 36.262054, 37.214550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244110, 36.322826, 37.062443>,  <46.463066, 36.359291, 36.971180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244110, 36.322826, 37.062443>,  <45.879185, 36.262054, 37.214550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244110, 36.322826, 37.062443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150759, 0.738786, 0.656862,
		0.380732, -0.656592, 0.651099,
		0.912313, 0.151929, -0.380267,
		46.517803, 36.368404, 36.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381226, 36.180321, 37.745872>,  <45.879185, 36.262054, 37.214550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381226, 36.180321, 37.745872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518959, 36.419113, 37.456032>,  <46.601601, 36.562389, 37.282127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518959, 36.419113, 37.456032>,  <46.381226, 36.180321, 37.745872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518959, 36.419113, 37.456032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105750, 0.742224, 0.661755,
		0.932871, -0.304494, 0.192445,
		0.344338, 0.596981, -0.724600,
		46.622261, 36.598206, 37.238651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995140, 36.502415, 37.999931>,  <46.381226, 36.180321, 37.745872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995140, 36.502415, 37.999931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.857185, 36.735676, 37.705723>,  <46.774414, 36.875633, 37.529198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.857185, 36.735676, 37.705723>,  <46.995140, 36.502415, 37.999931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857185, 36.735676, 37.705723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205376, 0.811492, 0.547084,
		0.915900, 0.037624, -0.399639,
		-0.344887, 0.583151, -0.735519,
		46.753719, 36.910622, 37.485065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.601284, 36.991764, 37.916557>,  <46.995140, 36.502415, 37.999931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.601284, 36.991764, 37.916557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.285641, 37.167957, 37.745308>,  <47.096256, 37.273674, 37.642559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.285641, 37.167957, 37.745308>,  <47.601284, 36.991764, 37.916557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285641, 37.167957, 37.745308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234253, 0.860096, 0.453168,
		0.567838, 0.257308, -0.781890,
		-0.789104, 0.440486, -0.428120,
		47.048908, 37.300102, 37.616871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892315, 37.620403, 37.636013>,  <47.601284, 36.991764, 37.916557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892315, 37.620403, 37.636013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.495567, 37.654171, 37.674099>,  <47.257519, 37.674431, 37.696953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.495567, 37.654171, 37.674099>,  <47.892315, 37.620403, 37.636013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.495567, 37.654171, 37.674099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115887, 0.908356, 0.401819,
		-0.052570, 0.409587, -0.910755,
		-0.991870, 0.084422, 0.095218,
		47.198006, 37.679497, 37.702663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779320, 38.316063, 37.275024>,  <47.892315, 37.620403, 37.636013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779320, 38.316063, 37.275024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.461330, 38.234921, 37.503712>,  <47.270535, 38.186237, 37.640926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.461330, 38.234921, 37.503712>,  <47.779320, 38.316063, 37.275024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461330, 38.234921, 37.503712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066806, 0.965978, 0.249847,
		-0.602952, 0.160427, -0.781481,
		-0.794975, -0.202853, 0.571721,
		47.222839, 38.174065, 37.675228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240974, 38.804665, 37.158836>,  <47.779320, 38.316063, 37.275024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240974, 38.804665, 37.158836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.159374, 38.684097, 37.531403>,  <47.110413, 38.611755, 37.754940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.159374, 38.684097, 37.531403>,  <47.240974, 38.804665, 37.158836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159374, 38.684097, 37.531403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114544, 0.952234, 0.283071,
		-0.972247, -0.048942, -0.228782,
		-0.204000, -0.301421, 0.931413,
		47.098175, 38.593670, 37.810825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711864, 39.161808, 37.313755>,  <47.240974, 38.804665, 37.158836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711864, 39.161808, 37.313755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.822411, 39.027916, 37.674107>,  <46.888737, 38.947578, 37.890316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.822411, 39.027916, 37.674107>,  <46.711864, 39.161808, 37.313755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822411, 39.027916, 37.674107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257646, 0.877265, 0.405000,
		-0.925874, -0.344034, 0.156202,
		0.276364, -0.334734, 0.900875,
		46.905319, 38.927494, 37.944370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219231, 39.372341, 37.654697>,  <46.711864, 39.161808, 37.313755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219231, 39.372341, 37.654697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.484646, 39.287750, 37.941750>,  <46.643894, 39.236996, 38.113979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.484646, 39.287750, 37.941750>,  <46.219231, 39.372341, 37.654697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484646, 39.287750, 37.941750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382164, 0.728818, 0.568134,
		-0.643169, -0.651231, 0.402780,
		0.663539, -0.211478, 0.717630,
		46.683708, 39.224308, 38.157040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874626, 39.299335, 38.297600>,  <46.219231, 39.372341, 37.654697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874626, 39.299335, 38.297600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245152, 39.361664, 38.434807>,  <46.467468, 39.399063, 38.517132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245152, 39.361664, 38.434807>,  <45.874626, 39.299335, 38.297600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245152, 39.361664, 38.434807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368642, 0.562733, 0.739888,
		-0.077733, -0.811819, 0.578712,
		0.926315, 0.155824, 0.343014,
		46.523045, 39.408409, 38.537712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893887, 39.178020, 39.106792>,  <45.874626, 39.299335, 38.297600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893887, 39.178020, 39.106792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221767, 39.390278, 39.020531>,  <46.418495, 39.517632, 38.968773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221767, 39.390278, 39.020531>,  <45.893887, 39.178020, 39.106792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221767, 39.390278, 39.020531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176658, 0.592352, 0.786073,
		0.544865, -0.606251, 0.579295,
		0.819704, 0.530641, -0.215653,
		46.467678, 39.549469, 38.955833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161140, 39.354450, 39.810329>,  <45.893887, 39.178020, 39.106792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161140, 39.354450, 39.810329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314533, 39.599098, 39.533531>,  <46.406567, 39.745888, 39.367451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314533, 39.599098, 39.533531>,  <46.161140, 39.354450, 39.810329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314533, 39.599098, 39.533531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202353, 0.786718, 0.583204,
		0.901109, -0.083618, 0.425453,
		0.383478, 0.611623, -0.691999,
		46.429577, 39.782585, 39.325932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810020, 39.684048, 40.062031>,  <46.161140, 39.354450, 39.810329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810020, 39.684048, 40.062031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.637993, 39.909664, 39.780067>,  <46.534775, 40.045036, 39.610889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.637993, 39.909664, 39.780067>,  <46.810020, 39.684048, 40.062031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637993, 39.909664, 39.780067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098534, 0.746812, 0.657695,
		0.897401, 0.352314, -0.265606,
		-0.430073, 0.564045, -0.704905,
		46.508972, 40.078876, 39.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096741, 40.398388, 40.275288>,  <46.810020, 39.684048, 40.062031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096741, 40.398388, 40.275288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762695, 40.443951, 40.060028>,  <46.562267, 40.471287, 39.930870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762695, 40.443951, 40.060028>,  <47.096741, 40.398388, 40.275288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762695, 40.443951, 40.060028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247089, 0.796391, 0.552004,
		0.491456, 0.593958, -0.636933,
		-0.835115, 0.113907, -0.538152,
		46.512161, 40.478123, 39.898582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.070747, 41.161037, 40.164516>,  <47.096741, 40.398388, 40.275288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.070747, 41.161037, 40.164516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699707, 41.029572, 40.093483>,  <46.477081, 40.950691, 40.050861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699707, 41.029572, 40.093483>,  <47.070747, 41.161037, 40.164516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699707, 41.029572, 40.093483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371371, 0.862769, 0.343094,
		0.040451, 0.384204, -0.922362,
		-0.927603, -0.328660, -0.177582,
		46.421425, 40.930973, 40.040207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773624, 41.780476, 40.127762>,  <47.070747, 41.161037, 40.164516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773624, 41.780476, 40.127762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464748, 41.526367, 40.132694>,  <46.279423, 41.373901, 40.135654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464748, 41.526367, 40.132694>,  <46.773624, 41.780476, 40.127762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464748, 41.526367, 40.132694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627807, 0.765812, 0.139248,
		-0.097902, 0.099785, -0.990181,
		-0.772187, -0.635275, 0.012328,
		46.233093, 41.335785, 40.136395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210976, 42.108746, 39.704845>,  <46.773624, 41.780476, 40.127762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210976, 42.108746, 39.704845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006912, 41.843491, 39.923931>,  <45.884476, 41.684338, 40.055382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006912, 41.843491, 39.923931>,  <46.210976, 42.108746, 39.704845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006912, 41.843491, 39.923931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691829, 0.694738, 0.196753,
		-0.510991, -0.278549, -0.813203,
		-0.510158, -0.663136, 0.547713,
		45.853867, 41.644550, 40.088245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573269, 42.149654, 39.433716>,  <46.210976, 42.108746, 39.704845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573269, 42.149654, 39.433716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541954, 42.017059, 39.809799>,  <45.523167, 41.937504, 40.035450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541954, 42.017059, 39.809799>,  <45.573269, 42.149654, 39.433716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541954, 42.017059, 39.809799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663833, 0.720944, 0.198912,
		-0.743773, -0.608568, -0.276491,
		-0.078283, -0.331489, 0.940206,
		45.518471, 41.917614, 40.091862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934498, 42.321358, 39.598648>,  <45.573269, 42.149654, 39.433716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934498, 42.321358, 39.598648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.083012, 42.255608, 39.964191>,  <45.172119, 42.216160, 40.183517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.083012, 42.255608, 39.964191>,  <44.934498, 42.321358, 39.598648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083012, 42.255608, 39.964191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568586, 0.737846, 0.363721,
		-0.734070, -0.654648, 0.180491,
		0.371284, -0.164371, 0.913854,
		45.194397, 42.206295, 40.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.540516, 37.434597, 42.458370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359818, 37.077785, 42.464043>,  <37.251400, 36.863697, 42.467445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359818, 37.077785, 42.464043>,  <37.540516, 37.434597, 42.458370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359818, 37.077785, 42.464043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250879, -0.142272, -0.957506,
		0.856145, -0.428993, 0.288063,
		-0.451747, -0.892033, 0.014180,
		37.224293, 36.810177, 42.468296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985546, 36.981422, 42.068352>,  <37.540516, 37.434597, 42.458370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985546, 36.981422, 42.068352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619698, 36.820801, 42.049500>,  <37.400188, 36.724426, 42.038189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619698, 36.820801, 42.049500>,  <37.985546, 36.981422, 42.068352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619698, 36.820801, 42.049500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170420, -0.277191, -0.945580,
		0.366639, -0.872880, 0.321958,
		-0.914622, -0.401555, -0.047127,
		37.345310, 36.700333, 42.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070328, 36.241917, 41.885006>,  <37.985546, 36.981422, 42.068352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070328, 36.241917, 41.885006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705853, 36.373985, 41.786430>,  <37.487167, 36.453224, 41.727287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705853, 36.373985, 41.786430>,  <38.070328, 36.241917, 41.885006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705853, 36.373985, 41.786430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133020, -0.330358, -0.934435,
		-0.389934, -0.884224, 0.257098,
		-0.911184, 0.330168, -0.246437,
		37.432495, 36.473034, 41.712498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763809, 35.679531, 41.558426>,  <38.070328, 36.241917, 41.885006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763809, 35.679531, 41.558426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539272, 35.996498, 41.462952>,  <37.404552, 36.186680, 41.405666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539272, 35.996498, 41.462952>,  <37.763809, 35.679531, 41.558426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539272, 35.996498, 41.462952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051494, -0.254412, -0.965724,
		-0.825983, -0.554388, 0.102007,
		-0.561337, 0.792419, -0.238688,
		37.370872, 36.234222, 41.391346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231979, 35.397652, 41.159412>,  <37.763809, 35.679531, 41.558426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231979, 35.397652, 41.159412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232094, 35.788227, 41.073101>,  <37.232162, 36.022572, 41.021313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232094, 35.788227, 41.073101>,  <37.231979, 35.397652, 41.159412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232094, 35.788227, 41.073101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064812, -0.215346, -0.974385,
		-0.997897, -0.013707, -0.063346,
		0.000285, 0.976442, -0.215782,
		37.232178, 36.081158, 41.008366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792027, 35.409637, 40.561539>,  <37.231979, 35.397652, 41.159412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792027, 35.409637, 40.561539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959011, 35.773090, 40.557346>,  <37.059204, 35.991161, 40.554832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959011, 35.773090, 40.557346>,  <36.792027, 35.409637, 40.561539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959011, 35.773090, 40.557346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205044, 0.082959, -0.975231,
		-0.885257, 0.409273, 0.220942,
		0.417465, 0.908632, -0.010479,
		37.084251, 36.045681, 40.554203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360107, 35.763535, 40.186581>,  <36.792027, 35.409637, 40.561539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360107, 35.763535, 40.186581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685562, 35.995907, 40.177513>,  <36.880833, 36.135330, 40.172073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685562, 35.995907, 40.177513>,  <36.360107, 35.763535, 40.186581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685562, 35.995907, 40.177513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128166, 0.141198, -0.981650,
		-0.567073, 0.801610, 0.189339,
		0.813635, 0.580934, -0.022669,
		36.929653, 36.170189, 40.170712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229710, 36.531277, 39.853275>,  <36.360107, 35.763535, 40.186581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229710, 36.531277, 39.853275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615784, 36.436825, 39.808277>,  <36.847427, 36.380154, 39.781281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615784, 36.436825, 39.808277>,  <36.229710, 36.531277, 39.853275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615784, 36.436825, 39.808277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097324, 0.074973, -0.992425,
		0.242776, 0.968825, 0.049382,
		0.965188, -0.236130, -0.112491,
		36.905338, 36.365986, 39.774529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446716, 36.959755, 39.315540>,  <36.229710, 36.531277, 39.853275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446716, 36.959755, 39.315540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764050, 36.716625, 39.329216>,  <36.954449, 36.570747, 39.337421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764050, 36.716625, 39.329216>,  <36.446716, 36.959755, 39.315540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764050, 36.716625, 39.329216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077146, 0.044660, -0.996019,
		0.603877, 0.792815, 0.082322,
		0.793335, -0.607824, 0.034193,
		37.002048, 36.534279, 39.339474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719494, 37.079464, 38.639565>,  <36.446716, 36.959755, 39.315540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719494, 37.079464, 38.639565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899231, 36.740120, 38.751545>,  <37.007072, 36.536514, 38.818733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899231, 36.740120, 38.751545>,  <36.719494, 37.079464, 38.639565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899231, 36.740120, 38.751545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068696, -0.279627, -0.957648,
		0.890715, 0.449542, -0.067369,
		0.449342, -0.848363, 0.279950,
		37.034035, 36.485611, 38.835529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450329, 36.979267, 38.229179>,  <36.719494, 37.079464, 38.639565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450329, 36.979267, 38.229179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327801, 36.619232, 38.353119>,  <37.254284, 36.403210, 38.427483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327801, 36.619232, 38.353119>,  <37.450329, 36.979267, 38.229179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327801, 36.619232, 38.353119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022498, -0.332255, -0.942921,
		0.951662, -0.281866, 0.122027,
		-0.306321, -0.900088, 0.309854,
		37.235905, 36.349205, 38.446075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912941, 36.597961, 37.895432>,  <37.450329, 36.979267, 38.229179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912941, 36.597961, 37.895432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609493, 36.350758, 37.977947>,  <37.427425, 36.202435, 38.027458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609493, 36.350758, 37.977947>,  <37.912941, 36.597961, 37.895432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609493, 36.350758, 37.977947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129357, -0.167451, -0.977357,
		0.638562, -0.768128, 0.047087,
		-0.758620, -0.618012, 0.206291,
		37.381908, 36.165356, 38.039833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621162, 36.660816, 37.545002>,  <37.912941, 36.597961, 37.895432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621162, 36.660816, 37.545002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342087, 36.474823, 37.327000>,  <38.174641, 36.363228, 37.196198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342087, 36.474823, 37.327000>,  <38.621162, 36.660816, 37.545002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342087, 36.474823, 37.327000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642527, -0.742598, -0.188963,
		-0.316853, -0.482014, 0.816864,
		-0.697685, -0.464983, -0.545001,
		38.132782, 36.335327, 37.163498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515423, 36.015556, 37.728054>,  <38.621162, 36.660816, 37.545002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515423, 36.015556, 37.728054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469940, 36.016724, 37.330650>,  <38.442650, 36.017422, 37.092209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469940, 36.016724, 37.330650>,  <38.515423, 36.015556, 37.728054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469940, 36.016724, 37.330650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409104, -0.911144, -0.049494,
		-0.905376, -0.412077, 0.102406,
		-0.113702, 0.002915, -0.993510,
		38.435829, 36.017597, 37.032597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075439, 36.151081, 38.231674>,  <38.515423, 36.015556, 37.728054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075439, 36.151081, 38.231674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301697, 35.901939, 38.015491>,  <39.437450, 35.752453, 37.885784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301697, 35.901939, 38.015491>,  <39.075439, 36.151081, 38.231674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301697, 35.901939, 38.015491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178320, -0.547486, 0.817595,
		-0.805137, -0.558844, -0.198616,
		0.565647, -0.622859, -0.540454,
		39.471390, 35.715080, 37.853355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752060, 35.455925, 38.239388>,  <39.075439, 36.151081, 38.231674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752060, 35.455925, 38.239388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150547, 35.461266, 38.205044>,  <39.389641, 35.464470, 38.184437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150547, 35.461266, 38.205044>,  <38.752060, 35.455925, 38.239388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150547, 35.461266, 38.205044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076599, -0.601445, 0.795234,
		-0.041026, -0.798803, -0.600192,
		0.996218, 0.013349, -0.085863,
		39.449413, 35.465271, 38.179283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998688, 34.707928, 38.171284>,  <38.752060, 35.455925, 38.239388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998688, 34.707928, 38.171284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291851, 34.947662, 38.300053>,  <39.467751, 35.091503, 38.377316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291851, 34.947662, 38.300053>,  <38.998688, 34.707928, 38.171284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291851, 34.947662, 38.300053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054170, -0.420276, 0.905778,
		0.678164, -0.681294, -0.275558,
		0.732912, 0.599339, 0.321921,
		39.511726, 35.127464, 38.396629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345249, 34.213120, 38.534710>,  <38.998688, 34.707928, 38.171284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345249, 34.213120, 38.534710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498123, 34.558887, 38.665379>,  <39.589848, 34.766350, 38.743778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498123, 34.558887, 38.665379>,  <39.345249, 34.213120, 38.534710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498123, 34.558887, 38.665379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087095, -0.385629, 0.918534,
		0.919973, -0.322598, -0.222668,
		0.382184, 0.864419, 0.326672,
		39.612778, 34.818214, 38.763378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886299, 33.984905, 38.929604>,  <39.345249, 34.213120, 38.534710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886299, 33.984905, 38.929604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777481, 34.348961, 39.054592>,  <39.712189, 34.567394, 39.129585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777481, 34.348961, 39.054592>,  <39.886299, 33.984905, 38.929604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777481, 34.348961, 39.054592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034090, -0.333633, 0.942086,
		0.961680, 0.245641, 0.121790,
		-0.272048, 0.910137, 0.312474,
		39.695866, 34.622002, 39.148335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238205, 34.034725, 39.573555>,  <39.886299, 33.984905, 38.929604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238205, 34.034725, 39.573555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965519, 34.326351, 39.597961>,  <39.801907, 34.501328, 39.612606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965519, 34.326351, 39.597961>,  <40.238205, 34.034725, 39.573555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965519, 34.326351, 39.597961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148026, -0.219122, 0.964403,
		0.716483, 0.648420, 0.257300,
		-0.681718, 0.729066, 0.061014,
		39.761002, 34.545071, 39.616264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351120, 34.310154, 40.150700>,  <40.238205, 34.034725, 39.573555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351120, 34.310154, 40.150700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979744, 34.440380, 40.079136>,  <39.756920, 34.518517, 40.036198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979744, 34.440380, 40.079136>,  <40.351120, 34.310154, 40.150700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979744, 34.440380, 40.079136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237841, -0.151001, 0.959495,
		0.285366, 0.933383, 0.217628,
		-0.928438, 0.325568, -0.178906,
		39.701214, 34.538052, 40.025463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163956, 34.725636, 40.649101>,  <40.351120, 34.310154, 40.150700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163956, 34.725636, 40.649101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801098, 34.617233, 40.520321>,  <39.583385, 34.552193, 40.443054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801098, 34.617233, 40.520321>,  <40.163956, 34.725636, 40.649101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801098, 34.617233, 40.520321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326090, -0.030914, 0.944833,
		-0.266007, 0.962081, -0.060328,
		-0.907142, -0.271004, -0.321948,
		39.528954, 34.535931, 40.423737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685585, 35.285343, 40.992565>,  <40.163956, 34.725636, 40.649101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685585, 35.285343, 40.992565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485519, 34.957832, 40.879826>,  <39.365479, 34.761326, 40.812183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485519, 34.957832, 40.879826>,  <39.685585, 35.285343, 40.992565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485519, 34.957832, 40.879826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472305, -0.014857, 0.881310,
		-0.725785, 0.573917, -0.379282,
		-0.500164, -0.818779, -0.281847,
		39.335472, 34.712200, 40.795273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007771, 35.462162, 41.191471>,  <39.685585, 35.285343, 40.992565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007771, 35.462162, 41.191471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046551, 35.064789, 41.167168>,  <39.069820, 34.826366, 41.152588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046551, 35.064789, 41.167168>,  <39.007771, 35.462162, 41.191471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046551, 35.064789, 41.167168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364236, -0.092223, 0.926729,
		-0.926246, -0.067722, -0.370785,
		0.096955, -0.993433, -0.060754,
		39.075638, 34.766758, 41.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491062, 35.272533, 41.697247>,  <39.007771, 35.462162, 41.191471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491062, 35.272533, 41.697247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706295, 34.942833, 41.626740>,  <38.835434, 34.745010, 41.584435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706295, 34.942833, 41.626740>,  <38.491062, 35.272533, 41.697247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706295, 34.942833, 41.626740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322683, -0.394635, 0.860313,
		-0.778679, -0.406041, -0.478319,
		0.538084, -0.824254, -0.176271,
		38.867722, 34.695557, 41.573856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039135, 34.601883, 41.600945>,  <38.491062, 35.272533, 41.697247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039135, 34.601883, 41.600945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399681, 34.447876, 41.680241>,  <38.616009, 34.355473, 41.727818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399681, 34.447876, 41.680241>,  <38.039135, 34.601883, 41.600945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399681, 34.447876, 41.680241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367046, -0.436292, 0.821539,
		-0.229814, -0.813273, -0.534577,
		0.901367, -0.385016, 0.198242,
		38.670090, 34.332371, 41.739712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910713, 34.006359, 41.804073>,  <38.039135, 34.601883, 41.600945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910713, 34.006359, 41.804073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271107, 34.066658, 41.966801>,  <38.487343, 34.102837, 42.064438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271107, 34.066658, 41.966801>,  <37.910713, 34.006359, 41.804073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271107, 34.066658, 41.966801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295814, -0.472469, 0.830221,
		0.317362, -0.868359, -0.381095,
		0.900986, 0.150747, 0.406817,
		38.541401, 34.111881, 42.088844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064327, 33.322731, 41.998470>,  <37.910713, 34.006359, 41.804073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064327, 33.322731, 41.998470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271282, 33.601452, 42.197174>,  <38.395454, 33.768684, 42.316399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271282, 33.601452, 42.197174>,  <38.064327, 33.322731, 41.998470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271282, 33.601452, 42.197174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334634, -0.369536, 0.866870,
		0.787609, -0.614744, 0.041980,
		0.517390, 0.696802, 0.496764,
		38.426498, 33.810493, 42.346203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872429, 32.501888, 42.214645>,  <38.064327, 33.322731, 41.998470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872429, 32.501888, 42.214645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741108, 32.140484, 42.324841>,  <37.662315, 31.923641, 42.390957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741108, 32.140484, 42.324841>,  <37.872429, 32.501888, 42.214645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741108, 32.140484, 42.324841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356320, -0.151644, -0.921976,
		0.874789, -0.400844, -0.272154,
		-0.328298, -0.903509, 0.275486,
		37.642620, 31.869431, 42.407486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189053, 31.952133, 41.844730>,  <37.872429, 32.501888, 42.214645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189053, 31.952133, 41.844730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833427, 31.801895, 41.949417>,  <37.620052, 31.711752, 42.012230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833427, 31.801895, 41.949417>,  <38.189053, 31.952133, 41.844730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833427, 31.801895, 41.949417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238142, -0.108794, -0.965118,
		0.390969, -0.920375, 0.007279,
		-0.889062, -0.375598, 0.261715,
		37.566708, 31.689217, 42.027931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054459, 31.226206, 41.585030>,  <38.189053, 31.952133, 41.844730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054459, 31.226206, 41.585030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692505, 31.380449, 41.657135>,  <37.475334, 31.472996, 41.700397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692505, 31.380449, 41.657135>,  <38.054459, 31.226206, 41.585030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692505, 31.380449, 41.657135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306247, -0.295637, -0.904882,
		-0.295637, -0.874017, 0.385608,
		0.904882, -0.385608, -0.180264,
		37.421040, 31.496132, 41.711216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576138, 30.780205, 41.079769>,  <38.054459, 31.226206, 41.585030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576138, 30.780205, 41.079769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374882, 31.104162, 41.200378>,  <37.254128, 31.298536, 41.272743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374882, 31.104162, 41.200378>,  <37.576138, 30.780205, 41.079769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374882, 31.104162, 41.200378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481357, 0.027136, -0.876105,
		-0.717734, -0.585948, 0.376195,
		-0.503143, 0.809894, 0.301526,
		37.223938, 31.347130, 41.290836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845436, 30.705591, 40.899605>,  <37.576138, 30.780205, 41.079769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845436, 30.705591, 40.899605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909599, 31.098251, 40.940853>,  <36.948097, 31.333847, 40.965603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909599, 31.098251, 40.940853>,  <36.845436, 30.705591, 40.899605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909599, 31.098251, 40.940853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491297, 0.170016, -0.854238,
		-0.856094, 0.086361, 0.509553,
		0.160405, 0.981650, 0.103121,
		36.957722, 31.392746, 40.971790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130413, 31.037374, 40.792076>,  <36.845436, 30.705591, 40.899605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130413, 31.037374, 40.792076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442135, 31.280106, 40.729546>,  <36.629169, 31.425745, 40.692028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442135, 31.280106, 40.729546>,  <36.130413, 31.037374, 40.792076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442135, 31.280106, 40.729546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417633, 0.316978, -0.851533,
		-0.467184, 0.728892, 0.500455,
		0.779309, 0.606829, -0.156323,
		36.675926, 31.462154, 40.682648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785614, 31.599270, 40.494427>,  <36.130413, 31.037374, 40.792076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785614, 31.599270, 40.494427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161224, 31.716383, 40.422302>,  <36.386589, 31.786652, 40.379028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161224, 31.716383, 40.422302>,  <35.785614, 31.599270, 40.494427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161224, 31.716383, 40.422302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266340, 0.287663, -0.919953,
		-0.217480, 0.911881, 0.348102,
		0.939024, 0.292785, -0.180310,
		36.442932, 31.804218, 40.368210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794434, 32.353432, 40.460449>,  <35.785614, 31.599270, 40.494427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794434, 32.353432, 40.460449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089481, 32.176983, 40.255970>,  <36.266510, 32.071114, 40.133282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089481, 32.176983, 40.255970>,  <35.794434, 32.353432, 40.460449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089481, 32.176983, 40.255970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317562, 0.441491, -0.839190,
		0.595876, 0.781343, 0.185569,
		0.737622, -0.441123, -0.511199,
		36.310768, 32.044647, 40.102612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735706, 32.734615, 39.805187>,  <35.794434, 32.353432, 40.460449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735706, 32.734615, 39.805187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987125, 32.438999, 39.708241>,  <36.137978, 32.261631, 39.650070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987125, 32.438999, 39.708241>,  <35.735706, 32.734615, 39.805187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987125, 32.438999, 39.708241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057245, 0.266818, -0.962045,
		0.775658, 0.618570, 0.125403,
		0.628552, -0.739040, -0.242370,
		36.175690, 32.217289, 39.635529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151882, 33.060146, 39.357700>,  <35.735706, 32.734615, 39.805187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151882, 33.060146, 39.357700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196121, 32.670769, 39.277519>,  <36.222664, 32.437141, 39.229412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196121, 32.670769, 39.277519>,  <36.151882, 33.060146, 39.357700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196121, 32.670769, 39.277519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042425, 0.196882, -0.979509,
		0.992960, 0.116831, -0.019524,
		0.110593, -0.973441, -0.200453,
		36.229298, 32.378735, 39.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789349, 32.987114, 38.810417>,  <36.151882, 33.060146, 39.357700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789349, 32.987114, 38.810417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523819, 32.687958, 38.811096>,  <36.364502, 32.508465, 38.811504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523819, 32.687958, 38.811096>,  <36.789349, 32.987114, 38.810417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523819, 32.687958, 38.811096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254205, 0.223489, -0.940974,
		0.703365, -0.625070, -0.338474,
		-0.663820, -0.747891, 0.001702,
		36.324673, 32.463589, 38.811607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974064, 32.737770, 38.183613>,  <36.789349, 32.987114, 38.810417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974064, 32.737770, 38.183613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592186, 32.641800, 38.254032>,  <36.363060, 32.584217, 38.296284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592186, 32.641800, 38.254032>,  <36.974064, 32.737770, 38.183613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592186, 32.641800, 38.254032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198324, 0.071888, -0.977497,
		0.221873, -0.968125, -0.116214,
		-0.954693, -0.239929, 0.176052,
		36.305779, 32.569820, 38.306847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.833752, 32.244846, 46.122597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449623, 32.138821, 46.157272>,  <38.219147, 32.075203, 46.178078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449623, 32.138821, 46.157272>,  <38.833752, 32.244846, 46.122597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449623, 32.138821, 46.157272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006212, -0.331102, -0.943574,
		0.278814, -0.905599, 0.319612,
		-0.960325, -0.265068, 0.086690,
		38.161526, 32.059299, 46.183281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789139, 31.605806, 45.725258>,  <38.833752, 32.244846, 46.122597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789139, 31.605806, 45.725258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407734, 31.723837, 45.749722>,  <38.178890, 31.794655, 45.764400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407734, 31.723837, 45.749722>,  <38.789139, 31.605806, 45.725258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407734, 31.723837, 45.749722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141448, -0.259050, -0.955451,
		-0.266131, -0.919673, 0.288748,
		-0.953502, 0.295117, 0.061145,
		38.121681, 31.812359, 45.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407368, 31.061710, 45.443829>,  <38.789139, 31.605806, 45.725258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407368, 31.061710, 45.443829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209030, 31.408718, 45.428108>,  <38.090027, 31.616922, 45.418674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209030, 31.408718, 45.428108>,  <38.407368, 31.061710, 45.443829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209030, 31.408718, 45.428108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226273, -0.172763, -0.958621,
		-0.838414, -0.466434, 0.281961,
		-0.495846, 0.867521, -0.039306,
		38.060276, 31.668974, 45.416317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874687, 30.893160, 45.061562>,  <38.407368, 31.061710, 45.443829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874687, 30.893160, 45.061562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886002, 31.291952, 45.032623>,  <37.892788, 31.531227, 45.015259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886002, 31.291952, 45.032623>,  <37.874687, 30.893160, 45.061562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886002, 31.291952, 45.032623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371912, -0.056683, -0.926536,
		-0.927837, 0.053111, 0.369185,
		0.028283, 0.996979, -0.072345,
		37.894485, 31.591045, 45.010921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318073, 31.052021, 44.670498>,  <37.874687, 30.893160, 45.061562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318073, 31.052021, 44.670498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548820, 31.374704, 44.619198>,  <37.687267, 31.568314, 44.588417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548820, 31.374704, 44.619198>,  <37.318073, 31.052021, 44.670498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548820, 31.374704, 44.619198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126959, -0.066553, -0.989673,
		-0.806913, 0.587190, 0.064027,
		0.576865, 0.806709, -0.128251,
		37.721878, 31.616716, 44.580723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946621, 31.480904, 44.303120>,  <37.318073, 31.052021, 44.670498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946621, 31.480904, 44.303120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325138, 31.581091, 44.221348>,  <37.552250, 31.641203, 44.172283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325138, 31.581091, 44.221348>,  <36.946621, 31.480904, 44.303120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325138, 31.581091, 44.221348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167237, -0.161924, -0.972529,
		-0.276688, 0.954488, -0.111340,
		0.946296, 0.250467, -0.204428,
		37.609028, 31.656231, 44.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788864, 32.045879, 43.802597>,  <36.946621, 31.480904, 44.303120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788864, 32.045879, 43.802597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170918, 31.938410, 43.752747>,  <37.400150, 31.873928, 43.722836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170918, 31.938410, 43.752747>,  <36.788864, 32.045879, 43.802597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170918, 31.938410, 43.752747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118946, 0.037385, -0.992197,
		0.271233, 0.962507, 0.003750,
		0.955136, -0.268670, -0.124627,
		37.457458, 31.857809, 43.715359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135414, 32.624897, 43.364098>,  <36.788864, 32.045879, 43.802597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135414, 32.624897, 43.364098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325081, 32.273712, 43.337711>,  <37.438881, 32.063004, 43.321880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325081, 32.273712, 43.337711>,  <37.135414, 32.624897, 43.364098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325081, 32.273712, 43.337711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159664, -0.012061, -0.987098,
		0.865834, 0.478586, -0.145897,
		0.474171, -0.877958, -0.065970,
		37.467331, 32.010326, 43.317921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523724, 32.759075, 42.810677>,  <37.135414, 32.624897, 43.364098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523724, 32.759075, 42.810677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506729, 32.360008, 42.832058>,  <37.496532, 32.120567, 42.844887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506729, 32.360008, 42.832058>,  <37.523724, 32.759075, 42.810677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506729, 32.360008, 42.832058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199773, -0.043939, -0.978857,
		0.978921, -0.052268, -0.197440,
		-0.042487, -0.997666, 0.053455,
		37.493984, 32.060707, 42.848095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102345, 33.100063, 42.702168>,  <37.523724, 32.759075, 42.810677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102345, 33.100063, 42.702168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226486, 33.475330, 42.763515>,  <38.300972, 33.700489, 42.800323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226486, 33.475330, 42.763515>,  <38.102345, 33.100063, 42.702168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226486, 33.475330, 42.763515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474153, 0.012936, 0.880348,
		0.823929, -0.345941, 0.448849,
		0.310355, 0.938167, 0.153371,
		38.319592, 33.756779, 42.809528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537712, 33.194988, 43.306301>,  <38.102345, 33.100063, 42.702168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537712, 33.194988, 43.306301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394302, 33.562458, 43.239983>,  <38.308254, 33.782940, 43.200191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394302, 33.562458, 43.239983>,  <38.537712, 33.194988, 43.306301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394302, 33.562458, 43.239983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111943, 0.134016, 0.984636,
		0.926782, 0.371580, 0.054792,
		-0.358528, 0.918677, -0.165799,
		38.286743, 33.838062, 43.190243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549759, 33.364235, 43.976582>,  <38.537712, 33.194988, 43.306301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549759, 33.364235, 43.976582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362034, 33.676579, 43.811657>,  <38.249397, 33.863983, 43.712700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362034, 33.676579, 43.811657>,  <38.549759, 33.364235, 43.976582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362034, 33.676579, 43.811657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341391, 0.270173, 0.900255,
		0.814369, 0.563262, 0.139782,
		-0.469314, 0.780860, -0.412313,
		38.221241, 33.910835, 43.687962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775700, 34.018505, 44.213184>,  <38.549759, 33.364235, 43.976582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775700, 34.018505, 44.213184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.395607, 34.081257, 44.105522>,  <38.167553, 34.118908, 44.040924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.395607, 34.081257, 44.105522>,  <38.775700, 34.018505, 44.213184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395607, 34.081257, 44.105522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209773, 0.316541, 0.925093,
		0.230331, 0.935516, -0.267878,
		-0.950233, 0.156884, -0.269155,
		38.110538, 34.128323, 44.024776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531158, 34.680492, 44.410099>,  <38.775700, 34.018505, 44.213184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531158, 34.680492, 44.410099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179188, 34.495491, 44.366611>,  <37.968006, 34.384491, 44.340519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179188, 34.495491, 44.366611>,  <38.531158, 34.680492, 44.410099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179188, 34.495491, 44.366611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318404, 0.404223, 0.857451,
		-0.352625, 0.789112, -0.502949,
		-0.879929, -0.462500, -0.108717,
		37.915211, 34.356743, 44.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066738, 35.179996, 44.556568>,  <38.531158, 34.680492, 44.410099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066738, 35.179996, 44.556568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833958, 34.857189, 44.596676>,  <37.694290, 34.663506, 44.620739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833958, 34.857189, 44.596676>,  <38.066738, 35.179996, 44.556568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833958, 34.857189, 44.596676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512583, 0.459732, 0.725194,
		-0.631342, 0.370631, -0.681205,
		-0.581951, -0.807019, 0.100269,
		37.659374, 34.615082, 44.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326309, 35.377316, 44.660091>,  <38.066738, 35.179996, 44.556568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326309, 35.377316, 44.660091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379684, 35.009132, 44.807037>,  <37.411709, 34.788223, 44.895203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379684, 35.009132, 44.807037>,  <37.326309, 35.377316, 44.660091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379684, 35.009132, 44.807037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484290, 0.262846, 0.834491,
		-0.864672, -0.289260, -0.410695,
		0.133435, -0.920457, 0.367361,
		37.419716, 34.732994, 44.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679329, 35.256271, 45.065422>,  <37.326309, 35.377316, 44.660091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679329, 35.256271, 45.065422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973328, 35.013847, 45.187061>,  <37.149727, 34.868393, 45.260044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973328, 35.013847, 45.187061>,  <36.679329, 35.256271, 45.065422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973328, 35.013847, 45.187061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184137, 0.253220, 0.949723,
		-0.652593, -0.754036, 0.074517,
		0.734994, -0.606061, 0.304095,
		37.193825, 34.832027, 45.278290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338779, 34.722992, 45.581944>,  <36.679329, 35.256271, 45.065422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338779, 34.722992, 45.581944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730728, 34.769772, 45.646664>,  <36.965897, 34.797840, 45.685493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730728, 34.769772, 45.646664>,  <36.338779, 34.722992, 45.581944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730728, 34.769772, 45.646664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188406, 0.273708, 0.943179,
		0.066016, -0.954677, 0.290232,
		0.979870, 0.116946, 0.161798,
		37.024689, 34.804855, 45.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375294, 34.798012, 46.290890>,  <36.338779, 34.722992, 45.581944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375294, 34.798012, 46.290890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760139, 34.879162, 46.218025>,  <36.991047, 34.927853, 46.174305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760139, 34.879162, 46.218025>,  <36.375294, 34.798012, 46.290890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760139, 34.879162, 46.218025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115469, 0.302069, 0.946267,
		0.246998, -0.931449, 0.267199,
		0.962111, 0.202873, -0.182164,
		37.048771, 34.940025, 46.163376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770336, 34.461433, 46.880859>,  <36.375294, 34.798012, 46.290890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770336, 34.461433, 46.880859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012943, 34.742470, 46.731995>,  <37.158508, 34.911091, 46.642677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012943, 34.742470, 46.731995>,  <36.770336, 34.461433, 46.880859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012943, 34.742470, 46.731995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347670, 0.186592, 0.918863,
		0.715029, -0.686693, -0.131100,
		0.606515, 0.702592, -0.372161,
		37.194897, 34.953247, 46.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408230, 34.299332, 47.251724>,  <36.770336, 34.461433, 46.880859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408230, 34.299332, 47.251724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385563, 34.674953, 47.116104>,  <37.371964, 34.900326, 47.034733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385563, 34.674953, 47.116104>,  <37.408230, 34.299332, 47.251724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385563, 34.674953, 47.116104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207516, 0.343263, 0.916028,
		0.976589, -0.018446, -0.214323,
		-0.056672, 0.939058, -0.339055,
		37.368561, 34.956673, 47.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951595, 34.609608, 47.674519>,  <37.408230, 34.299332, 47.251724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951595, 34.609608, 47.674519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717823, 34.890869, 47.512524>,  <37.577560, 35.059628, 47.415325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717823, 34.890869, 47.512524>,  <37.951595, 34.609608, 47.674519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717823, 34.890869, 47.512524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123314, 0.570261, 0.812155,
		0.802018, 0.424709, -0.419988,
		-0.584432, 0.703153, -0.404987,
		37.542492, 35.101814, 47.391026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273495, 35.245525, 47.826714>,  <37.951595, 34.609608, 47.674519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273495, 35.245525, 47.826714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894955, 35.339958, 47.738457>,  <37.667831, 35.396618, 47.685501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894955, 35.339958, 47.738457>,  <38.273495, 35.245525, 47.826714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894955, 35.339958, 47.738457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013619, 0.653060, 0.757183,
		0.322850, 0.719567, -0.614810,
		-0.946352, 0.236084, -0.220641,
		37.611050, 35.410782, 47.672264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.402826, 33.674294, 46.668293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785221, 33.600193, 46.759304>,  <32.014660, 33.555733, 46.813911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785221, 33.600193, 46.759304>,  <31.402826, 33.674294, 46.668293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785221, 33.600193, 46.759304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219241, -0.064326, -0.973548,
		0.194983, 0.980584, -0.020881,
		0.955989, -0.185247, 0.227527,
		32.072018, 33.544621, 46.827560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667128, 33.964523, 46.197960>,  <31.402826, 33.674294, 46.668293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667128, 33.964523, 46.197960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971262, 33.734287, 46.318348>,  <32.153744, 33.596146, 46.390579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971262, 33.734287, 46.318348>,  <31.667128, 33.964523, 46.197960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971262, 33.734287, 46.318348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399924, 0.049742, -0.915198,
		0.511810, 0.816223, 0.268014,
		0.760337, -0.575592, 0.300968,
		32.199364, 33.561611, 46.408638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318592, 34.365513, 46.143459>,  <31.667128, 33.964523, 46.197960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318592, 34.365513, 46.143459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.423038, 33.979492, 46.134571>,  <32.485706, 33.747879, 46.129238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.423038, 33.979492, 46.134571>,  <32.318592, 34.365513, 46.143459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423038, 33.979492, 46.134571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400945, 0.129367, -0.906922,
		0.878103, 0.227897, 0.420712,
		0.261111, -0.965053, -0.022224,
		32.501373, 33.689976, 46.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948738, 34.338779, 45.931614>,  <32.318592, 34.365513, 46.143459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948738, 34.338779, 45.931614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847538, 33.961308, 45.846325>,  <32.786819, 33.734825, 45.795151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847538, 33.961308, 45.846325>,  <32.948738, 34.338779, 45.931614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847538, 33.961308, 45.846325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390947, 0.101873, -0.914758,
		0.884959, -0.314787, 0.343155,
		-0.252996, -0.943679, -0.213219,
		32.771641, 33.678204, 45.782360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583488, 34.065899, 45.715496>,  <32.948738, 34.338779, 45.931614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583488, 34.065899, 45.715496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307709, 33.802444, 45.594925>,  <33.142242, 33.644371, 45.522583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307709, 33.802444, 45.594925>,  <33.583488, 34.065899, 45.715496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307709, 33.802444, 45.594925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249790, 0.174423, -0.952461,
		0.679903, -0.731965, 0.044266,
		-0.689447, -0.658638, -0.301428,
		33.100876, 33.604855, 45.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895477, 33.637447, 45.241997>,  <33.583488, 34.065899, 45.715496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895477, 33.637447, 45.241997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504440, 33.580757, 45.179726>,  <33.269817, 33.546745, 45.142365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504440, 33.580757, 45.179726>,  <33.895477, 33.637447, 45.241997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504440, 33.580757, 45.179726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137961, 0.127271, -0.982227,
		0.159020, -0.981690, -0.104866,
		-0.977589, -0.141726, -0.155674,
		33.211163, 33.538242, 45.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833820, 33.054707, 44.810764>,  <33.895477, 33.637447, 45.241997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833820, 33.054707, 44.810764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518661, 33.281982, 44.715790>,  <33.329567, 33.418346, 44.658806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518661, 33.281982, 44.715790>,  <33.833820, 33.054707, 44.810764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518661, 33.281982, 44.715790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330891, 0.065449, -0.941397,
		-0.519352, -0.820290, -0.239576,
		-0.787899, 0.568190, -0.237436,
		33.282291, 33.452438, 44.644558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720173, 32.943504, 44.070599>,  <33.833820, 33.054707, 44.810764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720173, 32.943504, 44.070599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484638, 33.258442, 44.143665>,  <33.343319, 33.447403, 44.187504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484638, 33.258442, 44.143665>,  <33.720173, 32.943504, 44.070599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484638, 33.258442, 44.143665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007029, 0.230979, -0.972933,
		-0.808222, -0.571614, -0.141542,
		-0.588835, 0.787341, 0.182664,
		33.307987, 33.494644, 44.198463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205574, 32.891827, 43.538826>,  <33.720173, 32.943504, 44.070599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205574, 32.891827, 43.538826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219296, 33.273911, 43.656399>,  <33.227528, 33.503162, 43.726944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219296, 33.273911, 43.656399>,  <33.205574, 32.891827, 43.538826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219296, 33.273911, 43.656399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097213, 0.295903, -0.950258,
		-0.994672, 0.004027, 0.103011,
		0.034308, 0.955210, 0.293934,
		33.229588, 33.560474, 43.744579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619652, 33.120220, 43.305244>,  <33.205574, 32.891827, 43.538826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619652, 33.120220, 43.305244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842216, 33.449406, 43.351093>,  <32.975754, 33.646915, 43.378601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.842216, 33.449406, 43.351093>,  <32.619652, 33.120220, 43.305244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842216, 33.449406, 43.351093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230658, 0.285505, -0.930206,
		-0.798250, 0.491139, 0.348681,
		0.556411, 0.822964, 0.114619,
		33.009140, 33.696293, 43.385479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162968, 33.544113, 43.157825>,  <32.619652, 33.120220, 43.305244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162968, 33.544113, 43.157825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516907, 33.727486, 43.124626>,  <32.729271, 33.837509, 43.104706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516907, 33.727486, 43.124626>,  <32.162968, 33.544113, 43.157825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516907, 33.727486, 43.124626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262383, 0.343162, -0.901884,
		-0.384974, 0.819804, 0.423931,
		0.884845, 0.458434, -0.082994,
		32.782360, 33.865017, 43.099728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004410, 34.152889, 42.794834>,  <32.162968, 33.544113, 43.157825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004410, 34.152889, 42.794834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403049, 34.154499, 42.761902>,  <32.642231, 34.155464, 42.742142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403049, 34.154499, 42.761902>,  <32.004410, 34.152889, 42.794834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403049, 34.154499, 42.761902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073566, 0.494084, -0.866296,
		0.037189, 0.869405, 0.492698,
		0.996597, 0.004029, -0.082333,
		32.702030, 34.155708, 42.737202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323833, 34.885586, 42.618397>,  <32.004410, 34.152889, 42.794834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323833, 34.885586, 42.618397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609474, 34.619133, 42.532314>,  <32.780861, 34.459259, 42.480663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609474, 34.619133, 42.532314>,  <32.323833, 34.885586, 42.618397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609474, 34.619133, 42.532314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203198, 0.491433, -0.846879,
		0.669897, 0.561032, 0.486293,
		0.714106, -0.666136, -0.215209,
		32.823708, 34.419292, 42.467751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883087, 35.181255, 42.238052>,  <32.323833, 34.885586, 42.618397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883087, 35.181255, 42.238052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908081, 34.796204, 42.132645>,  <32.923077, 34.565174, 42.069401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908081, 34.796204, 42.132645>,  <32.883087, 35.181255, 42.238052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908081, 34.796204, 42.132645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100181, 0.268753, -0.957985,
		0.993005, 0.033460, 0.113230,
		0.062485, -0.962628, -0.263521,
		32.926826, 34.507416, 42.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515095, 35.772945, 42.218704>,  <32.883087, 35.181255, 42.238052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515095, 35.772945, 42.218704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545135, 36.162231, 42.131786>,  <33.563160, 36.395802, 42.079636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545135, 36.162231, 42.131786>,  <33.515095, 35.772945, 42.218704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545135, 36.162231, 42.131786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135433, 0.205934, 0.969149,
		0.987936, -0.102213, -0.116339,
		0.075101, 0.973213, -0.217293,
		33.567665, 36.454197, 42.066597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102322, 36.104786, 42.623890>,  <33.515095, 35.772945, 42.218704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102322, 36.104786, 42.623890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825401, 36.383064, 42.547237>,  <33.659248, 36.550030, 42.501247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825401, 36.383064, 42.547237>,  <34.102322, 36.104786, 42.623890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825401, 36.383064, 42.547237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075249, 0.194510, 0.978010,
		0.717671, 0.691501, -0.082310,
		-0.692304, 0.695696, -0.191630,
		33.617710, 36.591774, 42.489750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175877, 36.523808, 43.193481>,  <34.102322, 36.104786, 42.623890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175877, 36.523808, 43.193481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849213, 36.692848, 43.036266>,  <33.653214, 36.794273, 42.941936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849213, 36.692848, 43.036266>,  <34.175877, 36.523808, 43.193481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849213, 36.692848, 43.036266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329734, 0.217268, 0.918733,
		0.473652, 0.879888, -0.038087,
		-0.816657, 0.422601, -0.393038,
		33.604214, 36.819630, 42.918354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153957, 37.160946, 43.437702>,  <34.175877, 36.523808, 43.193481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153957, 37.160946, 43.437702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772175, 37.095253, 43.338078>,  <33.543106, 37.055840, 43.278301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772175, 37.095253, 43.338078>,  <34.153957, 37.160946, 43.437702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772175, 37.095253, 43.338078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286383, 0.270397, 0.919168,
		-0.083608, 0.948638, -0.305115,
		-0.954460, -0.164230, -0.249066,
		33.485836, 37.045982, 43.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817142, 37.652241, 43.793541>,  <34.153957, 37.160946, 43.437702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817142, 37.652241, 43.793541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548752, 37.365704, 43.716969>,  <33.387718, 37.193783, 43.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548752, 37.365704, 43.716969>,  <33.817142, 37.652241, 43.793541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548752, 37.365704, 43.716969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322343, 0.049309, 0.945338,
		-0.667745, 0.696006, -0.263993,
		-0.670978, -0.716341, -0.191427,
		33.347458, 37.150803, 43.659542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110310, 37.890266, 44.142056>,  <33.817142, 37.652241, 43.793541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110310, 37.890266, 44.142056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115662, 37.495827, 44.075802>,  <33.118874, 37.259163, 44.036049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115662, 37.495827, 44.075802>,  <33.110310, 37.890266, 44.142056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115662, 37.495827, 44.075802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334132, -0.160538, 0.928754,
		-0.942431, 0.042915, -0.331635,
		0.013382, -0.986097, -0.165635,
		33.119675, 37.199997, 44.026112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439262, 37.529118, 44.423061>,  <33.110310, 37.890266, 44.142056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439262, 37.529118, 44.423061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.701046, 37.230148, 44.377377>,  <32.858116, 37.050766, 44.349964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.701046, 37.230148, 44.377377>,  <32.439262, 37.529118, 44.423061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701046, 37.230148, 44.377377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314616, -0.406557, 0.857746,
		-0.687535, -0.525422, -0.501225,
		0.654455, -0.747424, -0.114216,
		32.897385, 37.005920, 44.343113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087498, 36.912582, 44.543633>,  <32.439262, 37.529118, 44.423061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087498, 36.912582, 44.543633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481541, 36.858521, 44.586151>,  <32.717968, 36.826084, 44.611660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481541, 36.858521, 44.586151>,  <32.087498, 36.912582, 44.543633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481541, 36.858521, 44.586151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142140, -0.292250, 0.945720,
		-0.096756, -0.946743, -0.307108,
		0.985106, -0.135156, 0.106293,
		32.777073, 36.817974, 44.618038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168423, 36.258846, 44.825966>,  <32.087498, 36.912582, 44.543633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168423, 36.258846, 44.825966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515991, 36.442474, 44.899979>,  <32.724533, 36.552650, 44.944386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515991, 36.442474, 44.899979>,  <32.168423, 36.258846, 44.825966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515991, 36.442474, 44.899979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114125, -0.177943, 0.977400,
		0.481620, -0.870398, -0.102227,
		0.868917, 0.459069, 0.185035,
		32.776665, 36.580196, 44.955490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622578, 35.826698, 45.276165>,  <32.168423, 36.258846, 44.825966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622578, 35.826698, 45.276165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775402, 36.192036, 45.332489>,  <32.867096, 36.411240, 45.366283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775402, 36.192036, 45.332489>,  <32.622578, 35.826698, 45.276165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775402, 36.192036, 45.332489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165665, -0.082209, 0.982750,
		0.909167, -0.398797, 0.119901,
		0.382061, 0.913347, 0.140809,
		32.890018, 36.466042, 45.374733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186707, 35.692200, 45.782665>,  <32.622578, 35.826698, 45.276165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186707, 35.692200, 45.782665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058052, 36.070728, 45.795433>,  <32.980858, 36.297848, 45.803093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058052, 36.070728, 45.795433>,  <33.186707, 35.692200, 45.782665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058052, 36.070728, 45.795433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217086, -0.106508, 0.970325,
		0.921641, 0.305165, 0.239690,
		-0.321638, 0.946325, 0.031915,
		32.961559, 36.354626, 45.805008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414093, 35.915562, 46.314487>,  <33.186707, 35.692200, 45.782665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414093, 35.915562, 46.314487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173786, 36.234989, 46.299667>,  <33.029602, 36.426643, 46.290775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173786, 36.234989, 46.299667>,  <33.414093, 35.915562, 46.314487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173786, 36.234989, 46.299667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093420, 0.116161, 0.988827,
		0.793947, 0.590594, -0.144387,
		-0.600767, 0.798565, -0.037053,
		32.993557, 36.474560, 46.288551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696434, 36.563137, 46.769474>,  <33.414093, 35.915562, 46.314487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696434, 36.563137, 46.769474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301132, 36.594868, 46.717220>,  <33.063953, 36.613907, 46.685867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301132, 36.594868, 46.717220>,  <33.696434, 36.563137, 46.769474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301132, 36.594868, 46.717220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115291, 0.174143, 0.977948,
		0.100322, 0.981520, -0.162952,
		-0.988253, 0.079323, -0.130631,
		33.004658, 36.618664, 46.678032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548328, 37.100307, 47.158508>,  <33.696434, 36.563137, 46.769474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548328, 37.100307, 47.158508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184052, 36.947586, 47.095428>,  <32.965485, 36.855953, 47.057579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184052, 36.947586, 47.095428>,  <33.548328, 37.100307, 47.158508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184052, 36.947586, 47.095428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189862, 0.047817, 0.980646,
		-0.366878, 0.923004, -0.116037,
		-0.910688, -0.381808, -0.157700,
		32.910847, 36.833042, 47.048119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948112, 37.710350, 47.066868>,  <33.548328, 37.100307, 47.158508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948112, 37.710350, 47.066868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316582, 37.782341, 47.204880>,  <34.537663, 37.825535, 47.287685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316582, 37.782341, 47.204880>,  <33.948112, 37.710350, 47.066868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316582, 37.782341, 47.204880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363094, -0.078534, -0.928437,
		-0.140003, 0.980530, -0.137693,
		0.921174, 0.179979, 0.345030,
		34.592934, 37.836334, 47.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311951, 38.211266, 46.541065>,  <33.948112, 37.710350, 47.066868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311951, 38.211266, 46.541065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585979, 38.021599, 46.762276>,  <34.750397, 37.907799, 46.895000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585979, 38.021599, 46.762276>,  <34.311951, 38.211266, 46.541065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585979, 38.021599, 46.762276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492295, -0.258225, -0.831244,
		0.536956, 0.841714, 0.056529,
		0.685072, -0.474170, 0.553027,
		34.791500, 37.879349, 46.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934742, 38.404900, 46.222015>,  <34.311951, 38.211266, 46.541065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934742, 38.404900, 46.222015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023075, 38.074314, 46.429165>,  <35.076073, 37.875961, 46.553455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023075, 38.074314, 46.429165>,  <34.934742, 38.404900, 46.222015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023075, 38.074314, 46.429165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400530, -0.407293, -0.820785,
		0.889274, 0.388678, 0.241081,
		0.220831, -0.826463, 0.517873,
		35.089325, 37.826374, 46.584526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671234, 38.300228, 46.181355>,  <34.934742, 38.404900, 46.222015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671234, 38.300228, 46.181355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528889, 37.943718, 46.293777>,  <35.443481, 37.729813, 46.361229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528889, 37.943718, 46.293777>,  <35.671234, 38.300228, 46.181355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528889, 37.943718, 46.293777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491871, -0.434343, -0.754592,
		0.794623, -0.130286, 0.592958,
		-0.355860, -0.891275, 0.281056,
		35.422131, 37.676334, 46.378094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257095, 37.832294, 46.111946>,  <35.671234, 38.300228, 46.181355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257095, 37.832294, 46.111946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929565, 37.604767, 46.081051>,  <35.733047, 37.468250, 46.062515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929565, 37.604767, 46.081051>,  <36.257095, 37.832294, 46.111946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929565, 37.604767, 46.081051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393218, -0.457775, -0.797384,
		0.418210, -0.683292, 0.598509,
		-0.818829, -0.568818, -0.077237,
		35.683918, 37.434120, 46.057880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588715, 37.190636, 45.976818>,  <36.257095, 37.832294, 46.111946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588715, 37.190636, 45.976818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201733, 37.153728, 45.882576>,  <35.969543, 37.131584, 45.826031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201733, 37.153728, 45.882576>,  <36.588715, 37.190636, 45.976818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201733, 37.153728, 45.882576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251607, -0.449473, -0.857128,
		-0.026810, -0.888515, 0.458063,
		-0.967458, -0.092272, -0.235607,
		35.911495, 37.126045, 45.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398197, 36.457027, 45.726383>,  <36.588715, 37.190636, 45.976818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398197, 36.457027, 45.726383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110447, 36.680454, 45.561211>,  <35.937798, 36.814510, 45.462109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110447, 36.680454, 45.561211>,  <36.398197, 36.457027, 45.726383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110447, 36.680454, 45.561211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215163, -0.386043, -0.897037,
		-0.660462, -0.734150, 0.157525,
		-0.719371, 0.558565, -0.412928,
		35.894634, 36.848022, 45.437332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049355, 36.039532, 45.268013>,  <36.398197, 36.457027, 45.726383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049355, 36.039532, 45.268013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932159, 36.396217, 45.130020>,  <35.861843, 36.610229, 45.047226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932159, 36.396217, 45.130020>,  <36.049355, 36.039532, 45.268013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932159, 36.396217, 45.130020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106906, -0.328000, -0.938609,
		-0.950122, -0.311877, 0.000769,
		-0.292983, 0.891711, -0.344981,
		35.844265, 36.663731, 45.026527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556568, 35.927288, 44.715633>,  <36.049355, 36.039532, 45.268013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556568, 35.927288, 44.715633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715919, 36.286583, 44.641369>,  <35.811531, 36.502159, 44.596809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715919, 36.286583, 44.641369>,  <35.556568, 35.927288, 44.715633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715919, 36.286583, 44.641369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321232, -0.326228, -0.889036,
		-0.859132, 0.294530, -0.418503,
		0.398375, 0.898236, -0.185660,
		35.835430, 36.556053, 44.585670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764297, 35.914429, 44.080379>,  <35.556568, 35.927288, 44.715633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764297, 35.914429, 44.080379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.945198, 36.268017, 44.127811>,  <36.053738, 36.480171, 44.156273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.945198, 36.268017, 44.127811>,  <35.764297, 35.914429, 44.080379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945198, 36.268017, 44.127811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425760, -0.097142, -0.899607,
		-0.783709, 0.457334, -0.420292,
		0.452248, 0.883974, 0.118583,
		36.080872, 36.533211, 44.163387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635536, 36.316582, 43.457863>,  <35.764297, 35.914429, 44.080379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635536, 36.316582, 43.457863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944019, 36.488693, 43.645519>,  <36.129108, 36.591961, 43.758114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944019, 36.488693, 43.645519>,  <35.635536, 36.316582, 43.457863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944019, 36.488693, 43.645519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488904, 0.071630, -0.869392,
		-0.407683, 0.899851, -0.155121,
		0.771212, 0.430275, 0.469143,
		36.175385, 36.617775, 43.786263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732330, 36.888863, 43.091389>,  <35.635536, 36.316582, 43.457863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732330, 36.888863, 43.091389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066677, 36.796692, 43.290684>,  <36.267284, 36.741390, 43.410259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066677, 36.796692, 43.290684>,  <35.732330, 36.888863, 43.091389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066677, 36.796692, 43.290684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537502, 0.159255, -0.828088,
		0.111468, 0.959969, 0.256970,
		0.835863, -0.230427, 0.498234,
		36.317436, 36.727562, 43.440155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247646, 37.449291, 42.927849>,  <35.732330, 36.888863, 43.091389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247646, 37.449291, 42.927849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479500, 37.147079, 43.049969>,  <36.618610, 36.965752, 43.123241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479500, 37.147079, 43.049969>,  <36.247646, 37.449291, 42.927849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479500, 37.147079, 43.049969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495445, 0.029291, -0.868145,
		0.646964, 0.654463, 0.391300,
		0.579631, -0.755527, 0.305300,
		36.653389, 36.920422, 43.141560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955750, 37.593811, 42.839600>,  <36.247646, 37.449291, 42.927849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955750, 37.593811, 42.839600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914330, 37.196053, 42.831165>,  <36.889477, 36.957397, 42.826103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914330, 37.196053, 42.831165>,  <36.955750, 37.593811, 42.839600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914330, 37.196053, 42.831165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423131, -0.024852, -0.905728,
		0.900132, -0.102712, 0.423335,
		-0.103550, -0.994401, -0.021090,
		36.883263, 36.897732, 42.824837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.660589, 41.956394, 30.259867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530951, 41.706879, 29.975374>,  <28.453167, 41.557171, 29.804678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530951, 41.706879, 29.975374>,  <28.660589, 41.956394, 30.259867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530951, 41.706879, 29.975374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473739, -0.543740, 0.692762,
		-0.818862, 0.561459, -0.119289,
		-0.324095, -0.623788, -0.711232,
		28.433722, 41.519741, 29.762005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966982, 41.781170, 30.507050>,  <28.660589, 41.956394, 30.259867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966982, 41.781170, 30.507050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115606, 41.495174, 30.270157>,  <28.204781, 41.323578, 30.128021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115606, 41.495174, 30.270157>,  <27.966982, 41.781170, 30.507050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115606, 41.495174, 30.270157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246449, -0.690972, 0.679574,
		-0.895101, -0.106549, -0.432946,
		0.371561, -0.714986, -0.592231,
		28.227076, 41.280678, 30.092487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361000, 41.344891, 30.296385>,  <27.966982, 41.781170, 30.507050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361000, 41.344891, 30.296385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709532, 41.148613, 30.295605>,  <27.918650, 41.030846, 30.295137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709532, 41.148613, 30.295605>,  <27.361000, 41.344891, 30.296385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709532, 41.148613, 30.295605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413850, -0.736996, 0.534383,
		-0.263657, -0.464816, -0.845240,
		0.871328, -0.490697, -0.001950,
		27.970930, 41.001404, 30.295019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153069, 40.652447, 30.214914>,  <27.361000, 41.344891, 30.296385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153069, 40.652447, 30.214914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536478, 40.628952, 30.326475>,  <27.766523, 40.614857, 30.393412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536478, 40.628952, 30.326475>,  <27.153069, 40.652447, 30.214914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536478, 40.628952, 30.326475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201205, -0.832511, 0.516179,
		0.201872, -0.550885, -0.809798,
		0.958522, -0.058733, 0.278902,
		27.824034, 40.611332, 30.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294134, 39.932636, 30.106077>,  <27.153069, 40.652447, 30.214914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294134, 39.932636, 30.106077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565256, 40.080227, 30.360458>,  <27.727930, 40.168781, 30.513086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565256, 40.080227, 30.360458>,  <27.294134, 39.932636, 30.106077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565256, 40.080227, 30.360458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176376, -0.758105, 0.627828,
		0.713771, -0.537713, -0.448770,
		0.677806, 0.368974, 0.635953,
		27.768599, 40.190918, 30.551245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740740, 39.304470, 30.260612>,  <27.294134, 39.932636, 30.106077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740740, 39.304470, 30.260612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812328, 39.561104, 30.558964>,  <27.855282, 39.715084, 30.737974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812328, 39.561104, 30.558964>,  <27.740740, 39.304470, 30.260612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812328, 39.561104, 30.558964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066298, -0.748530, 0.659778,
		0.981618, -0.167531, -0.091429,
		0.178971, 0.641588, 0.745878,
		27.866020, 39.753582, 30.782726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206432, 38.966274, 30.653316>,  <27.740740, 39.304470, 30.260612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206432, 38.966274, 30.653316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.074919, 39.245678, 30.907557>,  <27.996012, 39.413319, 31.060101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.074919, 39.245678, 30.907557>,  <28.206432, 38.966274, 30.653316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074919, 39.245678, 30.907557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078574, -0.690913, 0.718655,
		0.941132, 0.186340, 0.282045,
		-0.328782, 0.698510, 0.635599,
		27.976284, 39.455231, 31.098236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541378, 38.735485, 31.204821>,  <28.206432, 38.966274, 30.653316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541378, 38.735485, 31.204821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244781, 38.973866, 31.328135>,  <28.066824, 39.116894, 31.402122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244781, 38.973866, 31.328135>,  <28.541378, 38.735485, 31.204821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244781, 38.973866, 31.328135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206186, -0.639619, 0.740523,
		0.638499, 0.485526, 0.597147,
		-0.741490, 0.595947, 0.308287,
		28.022335, 39.152649, 31.420620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761507, 38.858540, 31.924656>,  <28.541378, 38.735485, 31.204821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761507, 38.858540, 31.924656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369604, 38.893543, 31.852640>,  <28.134462, 38.914543, 31.809431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369604, 38.893543, 31.852640>,  <28.761507, 38.858540, 31.924656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369604, 38.893543, 31.852640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194439, -0.629837, 0.751997,
		-0.047590, 0.771783, 0.634103,
		-0.979759, 0.087507, -0.180039,
		28.075676, 38.919796, 31.798628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455078, 39.083591, 32.499580>,  <28.761507, 38.858540, 31.924656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455078, 39.083591, 32.499580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147003, 38.925900, 32.299023>,  <27.962158, 38.831284, 32.178688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147003, 38.925900, 32.299023>,  <28.455078, 39.083591, 32.499580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147003, 38.925900, 32.299023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296633, -0.474517, 0.828760,
		-0.564645, 0.787028, 0.248523,
		-0.770185, -0.394234, -0.501392,
		27.915947, 38.807629, 32.148605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892181, 39.214745, 32.981743>,  <28.455078, 39.083591, 32.499580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892181, 39.214745, 32.981743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776312, 38.922928, 32.733917>,  <27.706789, 38.747837, 32.585224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.776312, 38.922928, 32.733917>,  <27.892181, 39.214745, 32.981743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776312, 38.922928, 32.733917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170725, -0.597549, 0.783447,
		-0.941775, 0.332720, 0.048544,
		-0.289676, -0.729543, -0.619560,
		27.689409, 38.704063, 32.548050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541365, 38.816875, 33.398804>,  <27.892181, 39.214745, 32.981743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541365, 38.816875, 33.398804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574232, 38.578568, 33.079227>,  <27.593952, 38.435581, 32.887482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574232, 38.578568, 33.079227>,  <27.541365, 38.816875, 33.398804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574232, 38.578568, 33.079227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078602, -0.795281, 0.601124,
		-0.993514, -0.112192, -0.018519,
		0.082169, -0.595769, -0.798942,
		27.598883, 38.399837, 32.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940033, 38.369530, 33.411491>,  <27.541365, 38.816875, 33.398804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940033, 38.369530, 33.411491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235062, 38.180557, 33.218494>,  <27.412079, 38.067173, 33.102695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235062, 38.180557, 33.218494>,  <26.940033, 38.369530, 33.411491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235062, 38.180557, 33.218494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042778, -0.680391, 0.731599,
		-0.673900, -0.560255, -0.481636,
		0.737583, -0.472421, -0.482482,
		27.456333, 38.038826, 33.073746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705790, 37.700081, 33.312943>,  <26.940033, 38.369530, 33.411491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705790, 37.700081, 33.312943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099730, 37.658665, 33.257298>,  <27.336094, 37.633816, 33.223911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099730, 37.658665, 33.257298>,  <26.705790, 37.700081, 33.312943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099730, 37.658665, 33.257298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011834, -0.760190, 0.649593,
		-0.173012, -0.641397, -0.747447,
		0.984849, -0.103542, -0.139112,
		27.395184, 37.627602, 33.215565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712200, 37.021034, 33.208900>,  <26.705790, 37.700081, 33.312943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712200, 37.021034, 33.208900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076302, 37.144993, 33.318737>,  <27.294762, 37.219368, 33.384640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076302, 37.144993, 33.318737>,  <26.712200, 37.021034, 33.208900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076302, 37.144993, 33.318737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089596, -0.794901, 0.600088,
		0.404240, -0.521630, -0.751327,
		0.910254, 0.309895, 0.274595,
		27.349379, 37.237961, 33.401115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120680, 36.399624, 33.249527>,  <26.712200, 37.021034, 33.208900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120680, 36.399624, 33.249527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347979, 36.668652, 33.439159>,  <27.484358, 36.830067, 33.552940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347979, 36.668652, 33.439159>,  <27.120680, 36.399624, 33.249527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347979, 36.668652, 33.439159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183261, -0.665107, 0.723911,
		0.802193, -0.324478, -0.501199,
		0.568244, 0.672567, 0.474080,
		27.518452, 36.870422, 33.581383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799129, 36.088570, 33.371109>,  <27.120680, 36.399624, 33.249527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799129, 36.088570, 33.371109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746376, 36.380276, 33.639668>,  <27.714724, 36.555302, 33.800804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746376, 36.380276, 33.639668>,  <27.799129, 36.088570, 33.371109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746376, 36.380276, 33.639668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244660, -0.632414, 0.734979,
		0.960598, 0.261195, -0.095019,
		-0.131881, 0.729267, 0.671399,
		27.706812, 36.599056, 33.841087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288774, 35.997997, 33.893276>,  <27.799129, 36.088570, 33.371109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288774, 35.997997, 33.893276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087082, 36.260052, 34.118328>,  <27.966066, 36.417286, 34.253357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087082, 36.260052, 34.118328>,  <28.288774, 35.997997, 33.893276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087082, 36.260052, 34.118328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269639, -0.499500, 0.823283,
		0.820395, 0.566829, 0.075213,
		-0.504230, 0.655137, 0.562626,
		27.935814, 36.456593, 34.287117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473732, 35.757156, 34.482143>,  <28.288774, 35.997997, 33.893276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473732, 35.757156, 34.482143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278852, 36.085972, 34.600048>,  <28.161924, 36.283260, 34.670792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278852, 36.085972, 34.600048>,  <28.473732, 35.757156, 34.482143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278852, 36.085972, 34.600048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238115, -0.199698, 0.950485,
		0.840203, 0.533261, -0.098449,
		-0.487197, 0.822042, 0.294764,
		28.132694, 36.332584, 34.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941206, 36.208744, 34.805931>,  <28.473732, 35.757156, 34.482143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941206, 36.208744, 34.805931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575457, 36.215286, 34.967747>,  <28.356007, 36.219212, 35.064835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575457, 36.215286, 34.967747>,  <28.941206, 36.208744, 34.805931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575457, 36.215286, 34.967747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401472, -0.092562, 0.911182,
		0.052344, 0.995573, 0.078071,
		-0.914374, 0.016352, 0.404539,
		28.301144, 36.220192, 35.089108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657244, 36.848633, 35.164925>,  <28.941206, 36.208744, 34.805931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657244, 36.848633, 35.164925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044479, 36.766670, 35.222645>,  <29.276821, 36.717495, 35.257275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044479, 36.766670, 35.222645>,  <28.657244, 36.848633, 35.164925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044479, 36.766670, 35.222645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249400, 0.844264, -0.474361,
		-0.024628, 0.495211, 0.868424,
		0.968087, -0.204902, 0.144298,
		29.334906, 36.705200, 35.265934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933172, 37.472378, 35.468349>,  <28.657244, 36.848633, 35.164925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933172, 37.472378, 35.468349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224104, 37.278774, 35.273731>,  <29.398663, 37.162613, 35.156960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224104, 37.278774, 35.273731>,  <28.933172, 37.472378, 35.468349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224104, 37.278774, 35.273731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288876, 0.859000, -0.422693,
		0.622531, 0.166885, 0.764594,
		0.727328, -0.484012, -0.486545,
		29.442303, 37.133572, 35.127769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405872, 37.964046, 35.648056>,  <28.933172, 37.472378, 35.468349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405872, 37.964046, 35.648056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522505, 37.720501, 35.352959>,  <29.592484, 37.574375, 35.175900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522505, 37.720501, 35.352959>,  <29.405872, 37.964046, 35.648056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522505, 37.720501, 35.352959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453001, 0.767181, -0.454118,
		0.842479, -0.201788, 0.499510,
		0.291579, -0.608864, -0.737744,
		29.609978, 37.537842, 35.131634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125566, 37.967876, 35.640194>,  <29.405872, 37.964046, 35.648056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125566, 37.967876, 35.640194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004360, 37.857254, 35.275402>,  <29.931637, 37.790882, 35.056526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004360, 37.857254, 35.275402>,  <30.125566, 37.967876, 35.640194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004360, 37.857254, 35.275402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580970, 0.704966, -0.406813,
		0.755417, -0.653101, -0.052948,
		-0.303017, -0.276552, -0.911976,
		29.913454, 37.774288, 35.001808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606920, 38.188293, 35.223564>,  <30.125566, 37.967876, 35.640194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606920, 38.188293, 35.223564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345203, 38.096935, 34.935192>,  <30.188173, 38.042122, 34.762169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345203, 38.096935, 34.935192>,  <30.606920, 38.188293, 35.223564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345203, 38.096935, 34.935192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462220, 0.633736, -0.620267,
		0.598540, -0.739065, -0.309084,
		-0.654295, -0.228390, -0.720927,
		30.148916, 38.028416, 34.718914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991436, 38.105946, 34.627022>,  <30.606920, 38.188293, 35.223564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991436, 38.105946, 34.627022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635204, 38.149918, 34.450485>,  <30.421465, 38.176300, 34.344563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635204, 38.149918, 34.450485>,  <30.991436, 38.105946, 34.627022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635204, 38.149918, 34.450485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435953, 0.482949, -0.759411,
		0.129660, -0.868720, -0.478031,
		-0.890580, 0.109934, -0.441341,
		30.368031, 38.182899, 34.318085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937098, 37.755802, 33.948406>,  <30.991436, 38.105946, 34.627022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937098, 37.755802, 33.948406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686825, 38.067780, 33.954201>,  <30.536661, 38.254967, 33.957676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686825, 38.067780, 33.954201>,  <30.937098, 37.755802, 33.948406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686825, 38.067780, 33.954201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547611, 0.452369, -0.703906,
		-0.555560, -0.432489, -0.710145,
		-0.625680, 0.779946, 0.014482,
		30.499121, 38.301762, 33.958546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919725, 37.954758, 33.284584>,  <30.937098, 37.755802, 33.948406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919725, 37.954758, 33.284584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754765, 38.272011, 33.463852>,  <30.655788, 38.462364, 33.571411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754765, 38.272011, 33.463852>,  <30.919725, 37.954758, 33.284584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754765, 38.272011, 33.463852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329177, 0.588452, -0.738489,
		-0.849450, -0.157028, -0.503762,
		-0.412403, 0.793137, 0.448171,
		30.631044, 38.509953, 33.598305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527939, 38.340965, 32.768341>,  <30.919725, 37.954758, 33.284584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527939, 38.340965, 32.768341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599197, 38.595341, 33.068703>,  <30.641953, 38.747963, 33.248920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599197, 38.595341, 33.068703>,  <30.527939, 38.340965, 32.768341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599197, 38.595341, 33.068703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325948, 0.681889, -0.654817,
		-0.928451, 0.361408, -0.085806,
		0.178146, 0.635934, 0.750901,
		30.652641, 38.786121, 33.293972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311890, 38.903774, 32.527412>,  <30.527939, 38.340965, 32.768341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311890, 38.903774, 32.527412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550550, 39.036572, 32.819656>,  <30.693747, 39.116249, 32.995003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550550, 39.036572, 32.819656>,  <30.311890, 38.903774, 32.527412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550550, 39.036572, 32.819656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277464, 0.768927, -0.575991,
		-0.753009, 0.546383, 0.366665,
		0.596650, 0.331990, 0.730610,
		30.729546, 39.136169, 33.038841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229034, 39.547176, 32.488239>,  <30.311890, 38.903774, 32.527412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229034, 39.547176, 32.488239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578131, 39.516148, 32.681034>,  <30.787588, 39.497532, 32.796711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578131, 39.516148, 32.681034>,  <30.229034, 39.547176, 32.488239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578131, 39.516148, 32.681034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311447, 0.848753, -0.427340,
		-0.375936, 0.523069, 0.764899,
		0.872739, -0.077573, 0.481985,
		30.839952, 39.492874, 32.825630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396955, 40.242481, 32.614845>,  <30.229034, 39.547176, 32.488239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396955, 40.242481, 32.614845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760448, 40.078411, 32.645744>,  <30.978544, 39.979969, 32.664284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760448, 40.078411, 32.645744>,  <30.396955, 40.242481, 32.614845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760448, 40.078411, 32.645744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372154, 0.712471, -0.594883,
		0.188972, 0.569335, 0.800092,
		0.908730, -0.410174, 0.077244,
		31.033068, 39.955360, 32.668919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886595, 40.733810, 32.928520>,  <30.396955, 40.242481, 32.614845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886595, 40.733810, 32.928520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102230, 40.467628, 32.722004>,  <31.231611, 40.307919, 32.598095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102230, 40.467628, 32.722004>,  <30.886595, 40.733810, 32.928520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102230, 40.467628, 32.722004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464950, 0.746249, -0.476376,
		0.702286, 0.016761, 0.711698,
		0.539088, -0.665456, -0.516287,
		31.263956, 40.267990, 32.567120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449341, 41.064846, 32.814766>,  <30.886595, 40.733810, 32.928520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449341, 41.064846, 32.814766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487450, 40.764126, 32.553776>,  <31.510315, 40.583694, 32.397182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487450, 40.764126, 32.553776>,  <31.449341, 41.064846, 32.814766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487450, 40.764126, 32.553776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349755, 0.638946, -0.685142,
		0.931984, -0.162933, 0.323818,
		0.095270, -0.751798, -0.652474,
		31.516031, 40.538586, 32.358032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077446, 41.263668, 32.282101>,  <31.449341, 41.064846, 32.814766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077446, 41.263668, 32.282101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.903938, 40.951435, 32.102089>,  <31.799833, 40.764095, 31.994081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.903938, 40.951435, 32.102089>,  <32.077446, 41.263668, 32.282101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903938, 40.951435, 32.102089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303199, 0.343885, -0.888714,
		0.848476, -0.521950, 0.087504,
		-0.433773, -0.780584, -0.450034,
		31.773806, 40.717258, 31.967079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571968, 40.991352, 31.887993>,  <32.077446, 41.263668, 32.282101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571968, 40.991352, 31.887993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.211967, 40.906898, 31.735455>,  <31.995968, 40.856224, 31.643930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.211967, 40.906898, 31.735455>,  <32.571968, 40.991352, 31.887993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211967, 40.906898, 31.735455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326239, 0.253945, -0.910538,
		0.289093, -0.943891, -0.159667,
		-0.899996, -0.211141, -0.381348,
		31.941969, 40.843559, 31.621050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765694, 40.670433, 31.262856>,  <32.571968, 40.991352, 31.887993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765694, 40.670433, 31.262856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.377827, 40.763996, 31.234493>,  <32.145107, 40.820133, 31.217476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.377827, 40.763996, 31.234493>,  <32.765694, 40.670433, 31.262856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377827, 40.763996, 31.234493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086546, 0.057285, -0.994599,
		-0.228584, -0.970569, -0.075792,
		-0.969670, 0.233909, -0.070904,
		32.086926, 40.834167, 31.213223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530926, 40.185650, 30.747503>,  <32.765694, 40.670433, 31.262856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530926, 40.185650, 30.747503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.312565, 40.517944, 30.791084>,  <32.181549, 40.717319, 30.817234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.312565, 40.517944, 30.791084>,  <32.530926, 40.185650, 30.747503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312565, 40.517944, 30.791084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061847, 0.169641, -0.983563,
		-0.835561, -0.530195, -0.143986,
		-0.545906, 0.830732, 0.108955,
		32.148792, 40.767162, 30.823771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089775, 40.230350, 30.222975>,  <32.530926, 40.185650, 30.747503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089775, 40.230350, 30.222975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073051, 40.610935, 30.344944>,  <32.063019, 40.839287, 30.418125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073051, 40.610935, 30.344944>,  <32.089775, 40.230350, 30.222975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073051, 40.610935, 30.344944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015609, 0.304531, -0.952375,
		-0.999004, -0.044579, 0.002118,
		-0.041810, 0.951459, 0.304923,
		32.060509, 40.896374, 30.436420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649420, 40.502930, 29.709045>,  <32.089775, 40.230350, 30.222975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649420, 40.502930, 29.709045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.849403, 40.801460, 29.884789>,  <31.969393, 40.980579, 29.990234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.849403, 40.801460, 29.884789>,  <31.649420, 40.502930, 29.709045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849403, 40.801460, 29.884789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073907, 0.468696, -0.880262,
		-0.862890, 0.472567, 0.179170,
		0.499959, 0.746328, 0.439359,
		31.999392, 41.025360, 30.016596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530979, 41.063904, 29.338673>,  <31.649420, 40.502930, 29.709045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530979, 41.063904, 29.338673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.834408, 41.237347, 29.533220>,  <32.016464, 41.341412, 29.649950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.834408, 41.237347, 29.533220>,  <31.530979, 41.063904, 29.338673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834408, 41.237347, 29.533220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295671, 0.436103, -0.849937,
		-0.580644, 0.788544, 0.202612,
		0.758572, 0.433604, 0.486370,
		32.061981, 41.367428, 29.679131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619677, 41.731289, 29.012505>,  <31.530979, 41.063904, 29.338673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619677, 41.731289, 29.012505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959585, 41.623146, 29.193521>,  <32.163528, 41.558258, 29.302132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959585, 41.623146, 29.193521>,  <31.619677, 41.731289, 29.012505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959585, 41.623146, 29.193521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510197, 0.205821, -0.835067,
		0.132626, 0.940501, 0.312838,
		0.849770, -0.270361, 0.452544,
		32.214516, 41.542038, 29.329285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.262127, 36.260643, 47.939255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887001, 36.121986, 47.946564>,  <37.661926, 36.038792, 47.950947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887001, 36.121986, 47.946564>,  <38.262127, 36.260643, 47.939255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887001, 36.121986, 47.946564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113091, 0.354870, 0.928050,
		-0.328185, 0.868277, -0.372006,
		-0.937819, -0.346643, 0.018269,
		37.605656, 36.017994, 47.952045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778931, 36.802429, 48.257713>,  <38.262127, 36.260643, 47.939255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778931, 36.802429, 48.257713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561523, 36.469841, 48.303757>,  <37.431080, 36.270290, 48.331383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561523, 36.469841, 48.303757>,  <37.778931, 36.802429, 48.257713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561523, 36.469841, 48.303757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399533, 0.376858, 0.835674,
		-0.738216, 0.408214, -0.537028,
		-0.543517, -0.831468, 0.115107,
		37.398468, 36.220402, 48.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001850, 37.022572, 48.474506>,  <37.778931, 36.802429, 48.257713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001850, 37.022572, 48.474506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041672, 36.636997, 48.573227>,  <37.065563, 36.405651, 48.632462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041672, 36.636997, 48.573227>,  <37.001850, 37.022572, 48.474506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041672, 36.636997, 48.573227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615098, 0.135349, 0.776746,
		-0.782140, -0.229137, -0.579442,
		0.099555, -0.963938, 0.246804,
		37.071537, 36.347816, 48.647266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298428, 36.813427, 48.762215>,  <37.001850, 37.022572, 48.474506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298428, 36.813427, 48.762215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536613, 36.525848, 48.905617>,  <36.679527, 36.353302, 48.991661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536613, 36.525848, 48.905617>,  <36.298428, 36.813427, 48.762215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536613, 36.525848, 48.905617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537248, -0.024572, 0.843067,
		-0.597314, -0.694627, -0.400886,
		0.595468, -0.718950, 0.358510,
		36.715256, 36.310165, 49.013168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852467, 36.342064, 49.072044>,  <36.298428, 36.813427, 48.762215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852467, 36.342064, 49.072044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207672, 36.311871, 49.253479>,  <36.420795, 36.293755, 49.362339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207672, 36.311871, 49.253479>,  <35.852467, 36.342064, 49.072044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207672, 36.311871, 49.253479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447344, 0.086444, 0.890175,
		-0.106406, -0.993393, 0.042995,
		0.888010, -0.075486, 0.453586,
		36.474075, 36.289227, 49.389553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839588, 35.770832, 49.394363>,  <35.852467, 36.342064, 49.072044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839588, 35.770832, 49.394363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123604, 35.983665, 49.578850>,  <36.294014, 36.111366, 49.689541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123604, 35.983665, 49.578850>,  <35.839588, 35.770832, 49.394363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123604, 35.983665, 49.578850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448315, -0.163500, 0.878795,
		0.543005, -0.830753, 0.122451,
		0.710042, 0.532087, 0.461221,
		36.336617, 36.143291, 49.717216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986938, 35.360287, 49.900204>,  <35.839588, 35.770832, 49.394363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986938, 35.360287, 49.900204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111073, 35.721691, 50.018429>,  <36.185555, 35.938534, 50.089363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111073, 35.721691, 50.018429>,  <35.986938, 35.360287, 49.900204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111073, 35.721691, 50.018429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415188, -0.150875, 0.897137,
		0.855167, -0.401129, 0.328306,
		0.310334, 0.903511, 0.295567,
		36.204174, 35.992744, 50.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271637, 35.263626, 50.610134>,  <35.986938, 35.360287, 49.900204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271637, 35.263626, 50.610134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181393, 35.650337, 50.562054>,  <36.127247, 35.882362, 50.533207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181393, 35.650337, 50.562054>,  <36.271637, 35.263626, 50.610134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181393, 35.650337, 50.562054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382436, 0.025590, 0.923628,
		0.896015, 0.254351, 0.363955,
		-0.225612, 0.966774, -0.120202,
		36.113708, 35.940369, 50.525993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452377, 35.582500, 51.228333>,  <36.271637, 35.263626, 50.610134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452377, 35.582500, 51.228333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234901, 35.864655, 51.046421>,  <36.104416, 36.033947, 50.937275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234901, 35.864655, 51.046421>,  <36.452377, 35.582500, 51.228333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234901, 35.864655, 51.046421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533187, 0.128172, 0.836231,
		0.648159, 0.697135, 0.306418,
		-0.543692, 0.705390, -0.454780,
		36.071793, 36.076271, 50.909988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470383, 36.149517, 51.673683>,  <36.452377, 35.582500, 51.228333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470383, 36.149517, 51.673683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141140, 36.167442, 51.447235>,  <35.943596, 36.178196, 51.311367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141140, 36.167442, 51.447235>,  <36.470383, 36.149517, 51.673683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141140, 36.167442, 51.447235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567885, -0.062380, 0.820740,
		0.001464, 0.997046, 0.076793,
		-0.823106, 0.044811, -0.566117,
		35.894207, 36.180885, 51.277401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033936, 36.627426, 51.937534>,  <36.470383, 36.149517, 51.673683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033936, 36.627426, 51.937534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779819, 36.414787, 51.713455>,  <35.627350, 36.287205, 51.579010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779819, 36.414787, 51.713455>,  <36.033936, 36.627426, 51.937534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779819, 36.414787, 51.713455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620357, -0.080761, 0.780151,
		-0.459966, 0.843139, -0.278472,
		-0.635286, -0.531595, -0.560195,
		35.589233, 36.255310, 51.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343437, 36.919300, 52.093025>,  <36.033936, 36.627426, 51.937534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343437, 36.919300, 52.093025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296825, 36.540100, 51.974560>,  <35.268860, 36.312580, 51.903481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296825, 36.540100, 51.974560>,  <35.343437, 36.919300, 52.093025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296825, 36.540100, 51.974560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713980, -0.127328, 0.688492,
		-0.690401, 0.291687, -0.662016,
		-0.116531, -0.948001, -0.296166,
		35.261868, 36.255699, 51.885712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663052, 36.843189, 52.040577>,  <35.343437, 36.919300, 52.093025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663052, 36.843189, 52.040577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836727, 36.486942, 52.094666>,  <34.940933, 36.273193, 52.127121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836727, 36.486942, 52.094666>,  <34.663052, 36.843189, 52.040577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836727, 36.486942, 52.094666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654489, -0.208735, 0.726687,
		-0.618973, -0.404020, -0.673528,
		0.434185, -0.890617, 0.135225,
		34.966984, 36.219757, 52.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054298, 36.308941, 52.145309>,  <34.663052, 36.843189, 52.040577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054298, 36.308941, 52.145309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416809, 36.218552, 52.288189>,  <34.634315, 36.164318, 52.373917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416809, 36.218552, 52.288189>,  <34.054298, 36.308941, 52.145309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416809, 36.218552, 52.288189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406881, -0.237551, 0.882053,
		-0.114466, -0.944726, -0.307232,
		0.906281, -0.225972, 0.357199,
		34.688694, 36.150761, 52.395348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670902, 36.698486, 52.594883>,  <34.054298, 36.308941, 52.145309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670902, 36.698486, 52.594883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364525, 36.955070, 52.577648>,  <33.180698, 37.109020, 52.567307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364525, 36.955070, 52.577648>,  <33.670902, 36.698486, 52.594883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364525, 36.955070, 52.577648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138695, 0.099428, -0.985331,
		-0.627769, -0.760684, -0.165123,
		-0.765944, 0.641462, -0.043085,
		33.134743, 37.147511, 52.564724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220310, 36.508774, 52.088867>,  <33.670902, 36.698486, 52.594883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220310, 36.508774, 52.088867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171093, 36.900070, 52.155678>,  <33.141563, 37.134850, 52.195763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171093, 36.900070, 52.155678>,  <33.220310, 36.508774, 52.088867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171093, 36.900070, 52.155678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211064, 0.190248, -0.958779,
		-0.969697, -0.082717, -0.229881,
		-0.123042, 0.978245, 0.167024,
		33.134182, 37.193542, 52.205784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693470, 36.857964, 51.685326>,  <33.220310, 36.508774, 52.088867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693470, 36.857964, 51.685326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962349, 37.135433, 51.788834>,  <33.123676, 37.301914, 51.850937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962349, 37.135433, 51.788834>,  <32.693470, 36.857964, 51.685326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962349, 37.135433, 51.788834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151625, 0.213123, -0.965188,
		-0.724676, 0.688037, 0.038083,
		0.672202, 0.693674, 0.258768,
		33.164009, 37.343536, 51.866463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570343, 37.367096, 51.204758>,  <32.693470, 36.857964, 51.685326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570343, 37.367096, 51.204758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928669, 37.465534, 51.352787>,  <33.143665, 37.524597, 51.441605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928669, 37.465534, 51.352787>,  <32.570343, 37.367096, 51.204758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928669, 37.465534, 51.352787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273456, 0.351206, -0.895475,
		-0.350345, 0.903378, 0.247319,
		0.895812, 0.246095, 0.370078,
		33.197414, 37.539364, 51.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742996, 37.913158, 50.802944>,  <32.570343, 37.367096, 51.204758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742996, 37.913158, 50.802944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093727, 37.861149, 50.988098>,  <33.304165, 37.829945, 51.099190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093727, 37.861149, 50.988098>,  <32.742996, 37.913158, 50.802944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093727, 37.861149, 50.988098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469964, 0.435017, -0.768045,
		-0.101499, 0.890985, 0.442543,
		0.876830, -0.130023, 0.462885,
		33.356777, 37.822144, 51.126965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060024, 38.497421, 50.743717>,  <32.742996, 37.913158, 50.802944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060024, 38.497421, 50.743717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345543, 38.219818, 50.781338>,  <33.516853, 38.053257, 50.803909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345543, 38.219818, 50.781338>,  <33.060024, 38.497421, 50.743717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345543, 38.219818, 50.781338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448407, 0.349714, -0.822576,
		0.537983, 0.629326, 0.560824,
		0.713796, -0.694009, 0.094054,
		33.559681, 38.011616, 50.809555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670681, 38.853031, 50.622250>,  <33.060024, 38.497421, 50.743717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670681, 38.853031, 50.622250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764751, 38.475140, 50.530884>,  <33.821194, 38.248405, 50.476063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764751, 38.475140, 50.530884>,  <33.670681, 38.853031, 50.622250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764751, 38.475140, 50.530884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478711, 0.317110, -0.818704,
		0.845889, 0.083196, 0.526830,
		0.235176, -0.944732, -0.228413,
		33.835304, 38.191719, 50.462360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345860, 38.925049, 50.275520>,  <33.670681, 38.853031, 50.622250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345860, 38.925049, 50.275520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212814, 38.555286, 50.200863>,  <34.132988, 38.333427, 50.156067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212814, 38.555286, 50.200863>,  <34.345860, 38.925049, 50.275520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212814, 38.555286, 50.200863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388552, 0.046007, -0.920277,
		0.859300, -0.378616, 0.343879,
		-0.332610, -0.924410, -0.186646,
		34.113029, 38.277962, 50.144871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895184, 38.557522, 49.948387>,  <34.345860, 38.925049, 50.275520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895184, 38.557522, 49.948387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576782, 38.341385, 49.839272>,  <34.385742, 38.211704, 49.773804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576782, 38.341385, 49.839272>,  <34.895184, 38.557522, 49.948387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576782, 38.341385, 49.839272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426196, -0.180323, -0.886476,
		0.429812, -0.821896, 0.373829,
		-0.796002, -0.540342, -0.272784,
		34.337982, 38.179283, 49.757435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160938, 37.904823, 49.724464>,  <34.895184, 38.557522, 49.948387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160938, 37.904823, 49.724464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809273, 37.956684, 49.541050>,  <34.598274, 37.987801, 49.431004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809273, 37.956684, 49.541050>,  <35.160938, 37.904823, 49.724464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809273, 37.956684, 49.541050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400843, -0.319090, -0.858782,
		-0.257656, -0.938814, 0.228564,
		-0.879169, 0.129652, -0.458532,
		34.545521, 37.995579, 49.403488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124290, 37.372707, 49.290436>,  <35.160938, 37.904823, 49.724464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124290, 37.372707, 49.290436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859558, 37.632175, 49.140121>,  <34.700718, 37.787857, 49.049934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859558, 37.632175, 49.140121>,  <35.124290, 37.372707, 49.290436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859558, 37.632175, 49.140121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241706, -0.289861, -0.926045,
		-0.709619, -0.703714, 0.035052,
		-0.661831, 0.648666, -0.375783,
		34.661011, 37.826775, 49.027386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966030, 37.082573, 48.704781>,  <35.124290, 37.372707, 49.290436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966030, 37.082573, 48.704781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737137, 37.406239, 48.651413>,  <34.599800, 37.600437, 48.619392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737137, 37.406239, 48.651413>,  <34.966030, 37.082573, 48.704781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737137, 37.406239, 48.651413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046280, -0.130568, -0.990359,
		-0.818783, -0.572893, 0.037267,
		-0.572235, 0.809163, -0.133421,
		34.565468, 37.648987, 48.611385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358150, 36.941986, 48.187885>,  <34.966030, 37.082573, 48.704781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358150, 36.941986, 48.187885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470543, 37.325439, 48.206078>,  <34.537979, 37.555511, 48.216991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470543, 37.325439, 48.206078>,  <34.358150, 36.941986, 48.187885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470543, 37.325439, 48.206078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001346, 0.047784, -0.998857,
		-0.959713, 0.280595, 0.014717,
		0.280977, 0.958636, 0.045482,
		34.554836, 37.613029, 48.219723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033710, 37.319614, 47.649731>,  <34.358150, 36.941986, 48.187885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033710, 37.319614, 47.649731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361164, 37.545986, 47.688858>,  <34.557636, 37.681808, 47.712334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361164, 37.545986, 47.688858>,  <34.033710, 37.319614, 47.649731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361164, 37.545986, 47.688858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135235, -0.024417, -0.990513,
		-0.558167, 0.824095, -0.096522,
		0.818633, 0.565925, 0.097818,
		34.606754, 37.715763, 47.718204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240082, 37.309631, 47.754513>,  <34.033710, 37.319614, 47.649731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240082, 37.309631, 47.754513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988682, 37.041142, 47.597313>,  <32.837841, 36.880047, 47.502995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988682, 37.041142, 47.597313>,  <33.240082, 37.309631, 47.754513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988682, 37.041142, 47.597313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464770, -0.081051, 0.881714,
		-0.623678, 0.736812, -0.261023,
		-0.628502, -0.671221, -0.392998,
		32.800133, 36.839775, 47.479412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518440, 37.534138, 47.918926>,  <33.240082, 37.309631, 47.754513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518440, 37.534138, 47.918926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524773, 37.136379, 47.877132>,  <32.528572, 36.897724, 47.852055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524773, 37.136379, 47.877132>,  <32.518440, 37.534138, 47.918926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524773, 37.136379, 47.877132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419541, -0.101458, 0.902049,
		-0.907598, 0.029559, -0.418798,
		0.015826, -0.994401, -0.104484,
		32.529522, 36.838058, 47.845787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867546, 37.284660, 48.206825>,  <32.518440, 37.534138, 47.918926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867546, 37.284660, 48.206825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099621, 36.958893, 48.210793>,  <32.238865, 36.763432, 48.213173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099621, 36.958893, 48.210793>,  <31.867546, 37.284660, 48.206825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099621, 36.958893, 48.210793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354110, -0.241258, 0.903549,
		-0.733477, -0.527741, -0.428370,
		0.580188, -0.814422, 0.009921,
		32.273678, 36.714565, 48.213768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390707, 36.756073, 48.437897>,  <31.867546, 37.284660, 48.206825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390707, 36.756073, 48.437897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750526, 36.599213, 48.514862>,  <31.966419, 36.505096, 48.561043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750526, 36.599213, 48.514862>,  <31.390707, 36.756073, 48.437897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750526, 36.599213, 48.514862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321385, -0.295840, 0.899550,
		-0.295840, -0.871030, -0.392155,
		-0.899550, 0.392155, -0.192415,
		32.020393, 36.481567, 48.572586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322014, 36.048687, 48.615658>,  <31.390707, 36.756073, 48.437897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322014, 36.048687, 48.615658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685406, 36.125412, 48.764187>,  <31.903440, 36.171448, 48.853302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685406, 36.125412, 48.764187>,  <31.322014, 36.048687, 48.615658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685406, 36.125412, 48.764187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248761, -0.465766, 0.849223,
		0.335838, -0.863870, -0.375423,
		0.908478, 0.191811, 0.371319,
		31.957949, 36.182957, 48.875584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605995, 35.427044, 48.823128>,  <31.322014, 36.048687, 48.615658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605995, 35.427044, 48.823128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791401, 35.718006, 49.025524>,  <31.902645, 35.892586, 49.146961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791401, 35.718006, 49.025524>,  <31.605995, 35.427044, 48.823128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791401, 35.718006, 49.025524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099710, -0.524595, 0.845493,
		0.880461, -0.442351, -0.170628,
		0.463515, 0.727410, 0.505992,
		31.930456, 35.936230, 49.177322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064922, 35.108696, 49.362663>,  <31.605995, 35.427044, 48.823128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064922, 35.108696, 49.362663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054539, 35.482716, 49.504089>,  <32.048309, 35.707127, 49.588947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054539, 35.482716, 49.504089>,  <32.064922, 35.108696, 49.362663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054539, 35.482716, 49.504089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105080, -0.354281, 0.929217,
		0.994125, -0.013030, 0.107452,
		-0.025960, 0.935048, 0.353568,
		32.046749, 35.763229, 49.610161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551460, 34.737782, 49.663429>,  <32.064922, 35.108696, 49.362663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551460, 34.737782, 49.663429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368141, 34.382462, 49.675339>,  <32.258148, 34.169270, 49.682484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368141, 34.382462, 49.675339>,  <32.551460, 34.737782, 49.663429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368141, 34.382462, 49.675339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092878, 0.014549, -0.995571,
		0.883931, -0.459036, -0.089171,
		-0.458300, -0.888299, 0.029774,
		32.230652, 34.115971, 49.684273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876404, 34.282753, 49.217896>,  <32.551460, 34.737782, 49.663429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876404, 34.282753, 49.217896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500431, 34.155079, 49.266304>,  <32.274849, 34.078476, 49.295349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500431, 34.155079, 49.266304>,  <32.876404, 34.282753, 49.217896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500431, 34.155079, 49.266304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021428, -0.298664, -0.954118,
		0.340687, -0.899400, 0.273884,
		-0.939932, -0.319187, 0.121023,
		32.218452, 34.059322, 49.302612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986267, 33.617344, 49.032074>,  <32.876404, 34.282753, 49.217896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986267, 33.617344, 49.032074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603340, 33.723198, 48.985573>,  <32.373585, 33.786713, 48.957672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603340, 33.723198, 48.985573>,  <32.986267, 33.617344, 49.032074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603340, 33.723198, 48.985573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015354, -0.355056, -0.934719,
		-0.288635, -0.896607, 0.335837,
		-0.957316, 0.264636, -0.116248,
		32.316147, 33.802589, 48.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691921, 33.054352, 48.714348>,  <32.986267, 33.617344, 49.032074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691921, 33.054352, 48.714348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488617, 33.386978, 48.624760>,  <32.366634, 33.586555, 48.571007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488617, 33.386978, 48.624760>,  <32.691921, 33.054352, 48.714348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488617, 33.386978, 48.624760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045849, -0.233572, -0.971258,
		-0.859982, -0.503921, 0.080589,
		-0.508260, 0.831569, -0.223972,
		32.336140, 33.636448, 48.557568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223434, 32.655930, 48.228058>,  <32.691921, 33.054352, 48.714348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223434, 32.655930, 48.228058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212467, 33.053722, 48.187553>,  <32.205887, 33.292397, 48.163250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212467, 33.053722, 48.187553>,  <32.223434, 32.655930, 48.228058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212467, 33.053722, 48.187553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053493, -0.102612, -0.993282,
		-0.998192, -0.021819, 0.056012,
		-0.027420, 0.994482, -0.101259,
		32.204243, 33.352066, 48.157177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763577, 32.779697, 47.704876>,  <32.223434, 32.655930, 48.228058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763577, 32.779697, 47.704876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002419, 33.100334, 47.716988>,  <32.145725, 33.292717, 47.724255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002419, 33.100334, 47.716988>,  <31.763577, 32.779697, 47.704876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002419, 33.100334, 47.716988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045675, 0.003710, -0.998949,
		-0.800861, 0.597862, -0.034397,
		0.597106, 0.801590, 0.030278,
		32.181549, 33.340813, 47.726070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406570, 33.127750, 47.276112>,  <31.763577, 32.779697, 47.704876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406570, 33.127750, 47.276112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776323, 33.280334, 47.276325>,  <31.998175, 33.371887, 47.276451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776323, 33.280334, 47.276325>,  <31.406570, 33.127750, 47.276112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776323, 33.280334, 47.276325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091010, 0.221895, -0.970814,
		-0.370447, 0.897357, 0.239834,
		0.924384, 0.381463, 0.000532,
		32.053638, 33.394772, 47.276485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.069378, 33.812809, 52.100178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021976, 34.143486, 51.880165>,  <34.993534, 34.341892, 51.748158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021976, 34.143486, 51.880165>,  <35.069378, 33.812809, 52.100178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021976, 34.143486, 51.880165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290374, -0.500872, -0.815359,
		-0.949547, -0.256340, -0.180694,
		-0.118505, 0.826690, -0.550036,
		34.986423, 34.391495, 51.715153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668613, 33.766109, 51.585690>,  <35.069378, 33.812809, 52.100178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668613, 33.766109, 51.585690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905823, 34.062931, 51.460674>,  <35.048149, 34.241024, 51.385666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905823, 34.062931, 51.460674>,  <34.668613, 33.766109, 51.585690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905823, 34.062931, 51.460674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244378, -0.535718, -0.808261,
		-0.767207, 0.402938, -0.499034,
		0.593020, 0.742057, -0.312537,
		35.083729, 34.285549, 51.366913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426220, 34.076107, 50.871807>,  <34.668613, 33.766109, 51.585690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426220, 34.076107, 50.871807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818748, 34.105892, 50.942768>,  <35.054264, 34.123764, 50.985344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818748, 34.105892, 50.942768>,  <34.426220, 34.076107, 50.871807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818748, 34.105892, 50.942768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192317, -0.405271, -0.893739,
		0.005347, 0.911159, -0.412020,
		0.981318, 0.074459, 0.177398,
		35.113144, 34.128231, 50.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644123, 34.313686, 50.277454>,  <34.426220, 34.076107, 50.871807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644123, 34.313686, 50.277454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001568, 34.217377, 50.428974>,  <35.216034, 34.159592, 50.519886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001568, 34.217377, 50.428974>,  <34.644123, 34.313686, 50.277454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001568, 34.217377, 50.428974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315577, -0.263108, -0.911694,
		0.319181, 0.934238, -0.159131,
		0.893608, -0.240777, 0.378803,
		35.269650, 34.145142, 50.542614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129082, 34.643116, 49.906765>,  <34.644123, 34.313686, 50.277454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129082, 34.643116, 49.906765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.313961, 34.329021, 50.071583>,  <35.424889, 34.140564, 50.170475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.313961, 34.329021, 50.071583>,  <35.129082, 34.643116, 49.906765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313961, 34.329021, 50.071583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468754, -0.178086, -0.865191,
		0.752755, 0.593039, 0.285769,
		0.462201, -0.785232, 0.412045,
		35.452621, 34.093452, 50.195198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816654, 34.675819, 49.628864>,  <35.129082, 34.643116, 49.906765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816654, 34.675819, 49.628864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.804527, 34.305710, 49.780094>,  <35.797253, 34.083645, 49.870834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.804527, 34.305710, 49.780094>,  <35.816654, 34.675819, 49.628864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804527, 34.305710, 49.780094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632912, -0.310531, -0.709220,
		0.773630, 0.217790, 0.595033,
		-0.030315, -0.925277, 0.378078,
		35.795433, 34.028126, 49.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539646, 34.488197, 49.731289>,  <35.816654, 34.675819, 49.628864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539646, 34.488197, 49.731289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330357, 34.147484, 49.720783>,  <36.204781, 33.943054, 49.714481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330357, 34.147484, 49.720783>,  <36.539646, 34.488197, 49.731289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330357, 34.147484, 49.720783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647301, -0.377193, -0.662365,
		0.554288, -0.363568, 0.748721,
		-0.523228, -0.851788, -0.026264,
		36.173389, 33.891949, 49.712902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935001, 33.999676, 49.770142>,  <36.539646, 34.488197, 49.731289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935001, 33.999676, 49.770142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627602, 33.809864, 49.598454>,  <36.443161, 33.695976, 49.495441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627602, 33.809864, 49.598454>,  <36.935001, 33.999676, 49.770142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627602, 33.809864, 49.598454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595513, -0.285086, -0.751059,
		0.234033, -0.832796, 0.501676,
		-0.768500, -0.474527, -0.429221,
		36.397053, 33.667507, 49.469688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129028, 33.407562, 49.648567>,  <36.935001, 33.999676, 49.770142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129028, 33.407562, 49.648567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814163, 33.416527, 49.402035>,  <36.625244, 33.421906, 49.254116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814163, 33.416527, 49.402035>,  <37.129028, 33.407562, 49.648567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814163, 33.416527, 49.402035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556888, -0.403632, -0.725918,
		-0.265040, -0.914647, 0.305246,
		-0.787166, 0.022409, -0.616334,
		36.578014, 33.423248, 49.217133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980629, 32.712841, 49.461472>,  <37.129028, 33.407562, 49.648567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980629, 32.712841, 49.461472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790947, 32.923923, 49.179577>,  <36.677135, 33.050575, 49.010441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790947, 32.923923, 49.179577>,  <36.980629, 32.712841, 49.461472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790947, 32.923923, 49.179577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451573, -0.541359, -0.709234,
		-0.755784, -0.654562, 0.018416,
		-0.474207, 0.527711, -0.704733,
		36.648685, 33.082237, 48.968159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664413, 32.174301, 49.035156>,  <36.980629, 32.712841, 49.461472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664413, 32.174301, 49.035156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640987, 32.491341, 48.792385>,  <36.626930, 32.681564, 48.646721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.640987, 32.491341, 48.792385>,  <36.664413, 32.174301, 49.035156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640987, 32.491341, 48.792385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238097, -0.579337, -0.779538,
		-0.969474, -0.190163, -0.154784,
		-0.058567, 0.792595, -0.606929,
		36.623417, 32.729118, 48.610306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436695, 31.966095, 48.333435>,  <36.664413, 32.174301, 49.035156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436695, 31.966095, 48.333435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596504, 32.327446, 48.271088>,  <36.692390, 32.544254, 48.233677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596504, 32.327446, 48.271088>,  <36.436695, 31.966095, 48.333435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596504, 32.327446, 48.271088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342784, -0.304912, -0.888554,
		-0.850225, 0.301564, -0.431481,
		0.399520, 0.903376, -0.155872,
		36.716362, 32.598457, 48.224327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604996, 32.076645, 48.126457>,  <36.436695, 31.966095, 48.333435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604996, 32.076645, 48.126457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287441, 31.837769, 48.080650>,  <35.096909, 31.694443, 48.053165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287441, 31.837769, 48.080650>,  <35.604996, 32.076645, 48.126457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287441, 31.837769, 48.080650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229913, 0.120451, 0.965729,
		-0.562928, 0.793006, -0.232925,
		-0.793884, -0.597188, -0.114517,
		35.049274, 31.658611, 48.046295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943901, 32.437984, 48.408371>,  <35.604996, 32.076645, 48.126457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943901, 32.437984, 48.408371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816502, 32.059242, 48.390400>,  <34.740063, 31.831997, 48.379620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816502, 32.059242, 48.390400>,  <34.943901, 32.437984, 48.408371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816502, 32.059242, 48.390400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324515, 0.064384, 0.943687,
		-0.890646, 0.315139, -0.327776,
		-0.318496, -0.946859, -0.044924,
		34.720951, 31.775185, 48.376923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182781, 32.390682, 48.680992>,  <34.943901, 32.437984, 48.408371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182781, 32.390682, 48.680992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353378, 32.030087, 48.710468>,  <34.455734, 31.813730, 48.728153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353378, 32.030087, 48.710468>,  <34.182781, 32.390682, 48.680992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353378, 32.030087, 48.710468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257672, -0.043001, 0.965275,
		-0.867013, -0.430668, -0.250627,
		0.426490, -0.901486, 0.073689,
		34.481327, 31.759642, 48.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724987, 31.950428, 49.090733>,  <34.182781, 32.390682, 48.680992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724987, 31.950428, 49.090733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.070324, 31.752424, 49.129936>,  <34.277527, 31.633621, 49.153458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.070324, 31.752424, 49.129936>,  <33.724987, 31.950428, 49.090733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070324, 31.752424, 49.129936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321169, -0.389216, 0.863343,
		-0.389216, -0.776838, -0.495009,
		-0.863343, 0.495009, -0.098007,
		34.329327, 31.603922, 49.159340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496082, 31.258177, 49.356220>,  <33.724987, 31.950428, 49.090733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496082, 31.258177, 49.356220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881565, 31.306610, 49.451393>,  <34.112854, 31.335670, 49.508499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881565, 31.306610, 49.451393>,  <33.496082, 31.258177, 49.356220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881565, 31.306610, 49.451393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212505, -0.191573, 0.958197,
		0.161603, -0.973981, -0.158889,
		0.963704, 0.121083, 0.237935,
		34.170677, 31.342936, 49.522774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662781, 30.636618, 49.704369>,  <33.496082, 31.258177, 49.356220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662781, 30.636618, 49.704369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938522, 30.905375, 49.812698>,  <34.103970, 31.066629, 49.877697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938522, 30.905375, 49.812698>,  <33.662781, 30.636618, 49.704369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938522, 30.905375, 49.812698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207367, -0.175186, 0.962449,
		0.694109, -0.719630, 0.018564,
		0.689356, 0.671894, 0.270826,
		34.145329, 31.106943, 49.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981045, 30.329641, 50.331730>,  <33.662781, 30.636618, 49.704369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981045, 30.329641, 50.331730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078926, 30.717127, 50.348301>,  <34.137653, 30.949617, 50.358242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078926, 30.717127, 50.348301>,  <33.981045, 30.329641, 50.331730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078926, 30.717127, 50.348301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188575, 0.005641, 0.982043,
		0.951084, -0.248118, 0.184055,
		0.244700, 0.968714, 0.041424,
		34.152336, 31.007740, 50.360729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463253, 30.388174, 50.855919>,  <33.981045, 30.329641, 50.331730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463253, 30.388174, 50.855919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320339, 30.759668, 50.816322>,  <34.234589, 30.982565, 50.792564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320339, 30.759668, 50.816322>,  <34.463253, 30.388174, 50.855919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320339, 30.759668, 50.816322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186430, 0.032937, 0.981916,
		0.915200, 0.369280, 0.161376,
		-0.357286, 0.928734, -0.098989,
		34.213154, 31.038288, 50.786625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608196, 30.704609, 51.531490>,  <34.463253, 30.388174, 50.855919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608196, 30.704609, 51.531490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339603, 30.931955, 51.341301>,  <34.178448, 31.068363, 51.227188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339603, 30.931955, 51.341301>,  <34.608196, 30.704609, 51.531490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339603, 30.931955, 51.341301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419731, 0.237070, 0.876141,
		0.610691, 0.787881, 0.079374,
		-0.671478, 0.568367, -0.475475,
		34.138161, 31.102465, 51.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660172, 31.429249, 51.865570>,  <34.608196, 30.704609, 51.531490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660172, 31.429249, 51.865570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300495, 31.342651, 51.713474>,  <34.084690, 31.290693, 51.622215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300495, 31.342651, 51.713474>,  <34.660172, 31.429249, 51.865570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300495, 31.342651, 51.713474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431324, 0.292493, 0.853468,
		-0.073552, 0.931439, -0.356386,
		-0.899194, -0.216492, -0.380238,
		34.030735, 31.277704, 51.599403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255596, 32.012161, 52.156574>,  <34.660172, 31.429249, 51.865570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255596, 32.012161, 52.156574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.010742, 31.715227, 52.047596>,  <33.863831, 31.537066, 51.982208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.010742, 31.715227, 52.047596>,  <34.255596, 32.012161, 52.156574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010742, 31.715227, 52.047596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605883, 0.218904, 0.764845,
		-0.508132, 0.633259, -0.583768,
		-0.612134, -0.742337, -0.272448,
		33.827103, 31.492525, 51.965862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645348, 32.261238, 52.369904>,  <34.255596, 32.012161, 52.156574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645348, 32.261238, 52.369904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577972, 31.870174, 52.319603>,  <33.537548, 31.635536, 52.289421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577972, 31.870174, 52.319603>,  <33.645348, 32.261238, 52.369904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577972, 31.870174, 52.319603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591745, -0.001736, 0.806124,
		-0.788331, 0.210196, -0.578231,
		-0.168440, -0.977658, -0.125751,
		33.527439, 31.576878, 52.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884151, 32.225609, 52.554482>,  <33.645348, 32.261238, 52.369904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884151, 32.225609, 52.554482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035614, 31.855560, 52.543434>,  <33.126492, 31.633530, 52.536804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035614, 31.855560, 52.543434>,  <32.884151, 32.225609, 52.554482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035614, 31.855560, 52.543434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561444, -0.253321, 0.787788,
		-0.735799, -0.282792, -0.615328,
		0.378656, -0.925125, -0.027621,
		33.149212, 31.578022, 52.535149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308487, 31.855488, 52.571312>,  <32.884151, 32.225609, 52.554482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308487, 31.855488, 52.571312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607040, 31.627506, 52.708752>,  <32.786175, 31.490717, 52.791214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607040, 31.627506, 52.708752>,  <32.308487, 31.855488, 52.571312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607040, 31.627506, 52.708752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626632, -0.427988, 0.651275,
		-0.224139, -0.701414, -0.676594,
		0.746387, -0.569952, 0.343599,
		32.830956, 31.456520, 52.811832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145878, 32.651604, 52.543282>,  <32.308487, 31.855488, 52.571312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145878, 32.651604, 52.543282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919992, 32.979961, 52.509285>,  <31.784462, 33.176979, 52.488888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919992, 32.979961, 52.509285>,  <32.145878, 32.651604, 52.543282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919992, 32.979961, 52.509285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300236, 0.108426, -0.947682,
		-0.768737, -0.560686, -0.307693,
		-0.564714, 0.820899, -0.084987,
		31.750578, 33.226231, 52.483788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644367, 32.524364, 52.003010>,  <32.145878, 32.651604, 52.543282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644367, 32.524364, 52.003010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662626, 32.922352, 52.038704>,  <31.673582, 33.161144, 52.060120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662626, 32.922352, 52.038704>,  <31.644367, 32.524364, 52.003010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662626, 32.922352, 52.038704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084849, 0.092866, -0.992057,
		-0.995348, 0.037714, 0.088661,
		0.045648, 0.994964, 0.089234,
		31.676321, 33.220840, 52.065475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205044, 32.769711, 51.448681>,  <31.644367, 32.524364, 52.003010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205044, 32.769711, 51.448681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.436218, 33.080898, 51.547276>,  <31.574923, 33.267612, 51.606434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.436218, 33.080898, 51.547276>,  <31.205044, 32.769711, 51.448681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436218, 33.080898, 51.547276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129473, 0.210802, -0.968916,
		-0.805747, 0.591884, 0.021104,
		0.577935, 0.777969, 0.246486,
		31.609598, 33.314289, 51.621220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929600, 33.254265, 51.138737>,  <31.205044, 32.769711, 51.448681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929600, 33.254265, 51.138737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305780, 33.370983, 51.208485>,  <31.531488, 33.441013, 51.250332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.305780, 33.370983, 51.208485>,  <30.929600, 33.254265, 51.138737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305780, 33.370983, 51.208485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108202, 0.229305, -0.967322,
		-0.322248, 0.928586, 0.184077,
		0.940451, 0.291800, 0.174368,
		31.587915, 33.458523, 51.260796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031425, 33.975468, 50.867786>,  <30.929600, 33.254265, 51.138737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031425, 33.975468, 50.867786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402296, 33.828419, 50.896633>,  <31.624819, 33.740189, 50.913940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402296, 33.828419, 50.896633>,  <31.031425, 33.975468, 50.867786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402296, 33.828419, 50.896633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210511, 0.352015, -0.912015,
		0.309892, 0.860778, 0.403768,
		0.927174, -0.367624, 0.072116,
		31.680449, 33.718132, 50.918266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360643, 34.480381, 50.517414>,  <31.031425, 33.975468, 50.867786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360643, 34.480381, 50.517414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587139, 34.150852, 50.527939>,  <31.723036, 33.953136, 50.534252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587139, 34.150852, 50.527939>,  <31.360643, 34.480381, 50.517414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587139, 34.150852, 50.527939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173547, 0.087957, -0.980890,
		0.805764, 0.559983, 0.192776,
		0.566238, -0.823822, 0.026311,
		31.757011, 33.903706, 50.535831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007267, 34.737915, 50.317097>,  <31.360643, 34.480381, 50.517414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007267, 34.737915, 50.317097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.942873, 34.351189, 50.237751>,  <31.904236, 34.119152, 50.190144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.942873, 34.351189, 50.237751>,  <32.007267, 34.737915, 50.317097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942873, 34.351189, 50.237751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074396, 0.188523, -0.979247,
		0.984149, -0.172401, 0.041578,
		-0.160985, -0.966818, -0.198360,
		31.894577, 34.061142, 50.178242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551506, 35.304367, 50.401169>,  <32.007267, 34.737915, 50.317097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551506, 35.304367, 50.401169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284142, 35.588455, 50.312786>,  <32.123722, 35.758907, 50.259754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284142, 35.588455, 50.312786>,  <32.551506, 35.304367, 50.401169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284142, 35.588455, 50.312786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219442, 0.095548, 0.970936,
		0.710687, 0.697469, 0.091986,
		-0.668408, 0.710217, -0.220959,
		32.083618, 35.801521, 50.246498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644772, 35.738029, 50.884960>,  <32.551506, 35.304367, 50.401169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644772, 35.738029, 50.884960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.286282, 35.843464, 50.742241>,  <32.071190, 35.906727, 50.656609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.286282, 35.843464, 50.742241>,  <32.644772, 35.738029, 50.884960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286282, 35.843464, 50.742241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307797, 0.209698, 0.928056,
		0.319446, 0.941566, -0.106804,
		-0.896223, 0.263590, -0.356799,
		32.017414, 35.922543, 50.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344475, 36.331303, 51.348644>,  <32.644772, 35.738029, 50.884960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344475, 36.331303, 51.348644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.999640, 36.249439, 51.163204>,  <31.792740, 36.200321, 51.051941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.999640, 36.249439, 51.163204>,  <32.344475, 36.331303, 51.348644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999640, 36.249439, 51.163204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495551, 0.149082, 0.855689,
		-0.106012, 0.967413, -0.229941,
		-0.862085, -0.204661, -0.463598,
		31.741014, 36.188042, 51.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948809, 36.907249, 51.487011>,  <32.344475, 36.331303, 51.348644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948809, 36.907249, 51.487011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737595, 36.573303, 51.424824>,  <31.610867, 36.372936, 51.387512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737595, 36.573303, 51.424824>,  <31.948809, 36.907249, 51.487011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737595, 36.573303, 51.424824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346095, 0.044383, 0.937149,
		-0.775497, 0.548656, -0.312380,
		-0.528037, -0.834869, -0.155468,
		31.579184, 36.322842, 51.378181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238079, 37.069317, 51.750286>,  <31.948809, 36.907249, 51.487011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238079, 37.069317, 51.750286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255051, 36.670528, 51.724186>,  <31.265234, 36.431255, 51.708527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255051, 36.670528, 51.724186>,  <31.238079, 37.069317, 51.750286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255051, 36.670528, 51.724186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652751, -0.077101, 0.753639,
		-0.756384, 0.010614, -0.654042,
		0.042428, -0.996967, -0.065246,
		31.267778, 36.371437, 51.704613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507917, 36.942005, 51.686565>,  <31.238079, 37.069317, 51.750286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507917, 36.942005, 51.686565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710512, 36.619198, 51.808018>,  <30.832069, 36.425514, 51.880890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710512, 36.619198, 51.808018>,  <30.507917, 36.942005, 51.686565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710512, 36.619198, 51.808018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492896, 0.017948, 0.869903,
		-0.707479, -0.590252, -0.388686,
		0.506486, -0.807019, 0.303631,
		30.862457, 36.377090, 51.899105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080359, 36.374142, 51.790810>,  <30.507917, 36.942005, 51.686565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080359, 36.374142, 51.790810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.396080, 36.256702, 52.006512>,  <30.585514, 36.186241, 52.135933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.396080, 36.256702, 52.006512>,  <30.080359, 36.374142, 51.790810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396080, 36.256702, 52.006512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593451, -0.139468, 0.792694,
		-0.157528, -0.945699, -0.284322,
		0.789304, -0.293602, 0.539256,
		30.632872, 36.168625, 52.168289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792931, 35.840137, 52.288109>,  <30.080359, 36.374142, 51.790810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792931, 35.840137, 52.288109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141531, 35.919765, 52.467377>,  <30.350691, 35.967545, 52.574940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141531, 35.919765, 52.467377>,  <29.792931, 35.840137, 52.288109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141531, 35.919765, 52.467377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411615, -0.199842, 0.889177,
		0.266577, -0.959392, -0.092219,
		0.871499, 0.199076, 0.448173,
		30.402981, 35.979488, 52.601830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982561, 35.226700, 52.697746>,  <29.792931, 35.840137, 52.288109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982561, 35.226700, 52.697746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.149939, 35.565926, 52.827785>,  <30.250366, 35.769463, 52.905811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.149939, 35.565926, 52.827785>,  <29.982561, 35.226700, 52.697746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149939, 35.565926, 52.827785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411148, -0.142294, 0.900394,
		0.809852, -0.510430, 0.289137,
		0.418446, 0.848064, 0.325100,
		30.275473, 35.820343, 52.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.256676, 34.505573, 37.902161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638924, 34.593292, 37.980850>,  <34.868271, 34.645924, 38.028065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638924, 34.593292, 37.980850>,  <34.256676, 34.505573, 37.902161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638924, 34.593292, 37.980850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248023, 0.238503, 0.938936,
		0.158979, -0.946059, 0.282308,
		0.955620, 0.219290, 0.196728,
		34.925610, 34.659081, 38.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390957, 34.175201, 38.578274>,  <34.256676, 34.505573, 37.902161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390957, 34.175201, 38.578274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643620, 34.475075, 38.499294>,  <34.795216, 34.654999, 38.451904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643620, 34.475075, 38.499294>,  <34.390957, 34.175201, 38.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643620, 34.475075, 38.499294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237358, 0.429482, 0.871324,
		0.738017, -0.503511, 0.449229,
		0.631658, 0.749681, -0.197453,
		34.833118, 34.699978, 38.440060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763100, 34.291908, 39.146927>,  <34.390957, 34.175201, 38.578274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763100, 34.291908, 39.146927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791454, 34.634434, 38.942303>,  <34.808468, 34.839951, 38.819527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791454, 34.634434, 38.942303>,  <34.763100, 34.291908, 39.146927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791454, 34.634434, 38.942303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116884, 0.516451, 0.848302,
		0.990613, -0.000339, 0.136700,
		0.070887, 0.856317, -0.511563,
		34.812721, 34.891327, 38.788834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323399, 34.723473, 39.488514>,  <34.763100, 34.291908, 39.146927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323399, 34.723473, 39.488514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091797, 34.965134, 39.269520>,  <34.952835, 35.110130, 39.138123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091797, 34.965134, 39.269520>,  <35.323399, 34.723473, 39.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091797, 34.965134, 39.269520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229680, 0.523442, 0.820521,
		0.782302, 0.600836, -0.164315,
		-0.579008, 0.604155, -0.547490,
		34.918095, 35.146381, 39.105274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670017, 35.419876, 39.519402>,  <35.323399, 34.723473, 39.488514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670017, 35.419876, 39.519402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278263, 35.456749, 39.447514>,  <35.043209, 35.478874, 39.404381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278263, 35.456749, 39.447514>,  <35.670017, 35.419876, 39.519402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278263, 35.456749, 39.447514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100853, 0.547712, 0.830566,
		0.174999, 0.831573, -0.527126,
		-0.979390, 0.092186, -0.179716,
		34.984447, 35.484406, 39.393600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611320, 36.041546, 39.695107>,  <35.670017, 35.419876, 39.519402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611320, 36.041546, 39.695107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220695, 35.961418, 39.663631>,  <34.986320, 35.913342, 39.644745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220695, 35.961418, 39.663631>,  <35.611320, 36.041546, 39.695107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220695, 35.961418, 39.663631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186087, 0.602242, 0.776322,
		-0.108124, 0.772772, -0.625405,
		-0.976566, -0.200319, -0.078687,
		34.927727, 35.901321, 39.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265617, 36.666603, 39.854259>,  <35.611320, 36.041546, 39.695107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265617, 36.666603, 39.854259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982861, 36.387596, 39.901203>,  <34.813206, 36.220192, 39.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982861, 36.387596, 39.901203>,  <35.265617, 36.666603, 39.854259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982861, 36.387596, 39.901203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359950, 0.497569, 0.789215,
		-0.608885, 0.515647, -0.602799,
		-0.706891, -0.697520, 0.117355,
		34.770794, 36.178341, 39.936409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575294, 36.941875, 39.852924>,  <35.265617, 36.666603, 39.854259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575294, 36.941875, 39.852924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529675, 36.606918, 40.066753>,  <34.502304, 36.405945, 40.195049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529675, 36.606918, 40.066753>,  <34.575294, 36.941875, 39.852924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529675, 36.606918, 40.066753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320376, 0.540335, 0.778073,
		-0.940400, -0.082524, -0.329906,
		-0.114050, -0.837394, 0.534569,
		34.495461, 36.355701, 40.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834061, 36.969959, 40.104408>,  <34.575294, 36.941875, 39.852924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834061, 36.969959, 40.104408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039715, 36.706306, 40.323940>,  <34.163109, 36.548115, 40.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039715, 36.706306, 40.323940>,  <33.834061, 36.969959, 40.104408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039715, 36.706306, 40.323940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617530, 0.159611, 0.770182,
		-0.595250, -0.734895, -0.324972,
		0.514134, -0.659131, 0.548829,
		34.193954, 36.508568, 40.488590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329163, 36.618080, 40.330273>,  <33.834061, 36.969959, 40.104408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329163, 36.618080, 40.330273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641029, 36.541306, 40.568691>,  <33.828152, 36.495239, 40.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641029, 36.541306, 40.568691>,  <33.329163, 36.618080, 40.330273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641029, 36.541306, 40.568691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585168, 0.115527, 0.802640,
		-0.222917, -0.974584, -0.022243,
		0.779671, -0.191938, 0.596049,
		33.874931, 36.483723, 40.747505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087498, 36.089722, 40.918655>,  <33.329163, 36.618080, 40.330273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087498, 36.089722, 40.918655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412155, 36.281528, 41.052097>,  <33.606949, 36.396614, 41.132160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412155, 36.281528, 41.052097>,  <33.087498, 36.089722, 40.918655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412155, 36.281528, 41.052097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489562, 0.246825, 0.836305,
		0.318688, -0.842101, 0.435091,
		0.811645, 0.479524, 0.333601,
		33.655647, 36.425385, 41.152180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069366, 35.915707, 41.642246>,  <33.087498, 36.089722, 40.918655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069366, 35.915707, 41.642246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334976, 36.214764, 41.638081>,  <33.494343, 36.394196, 41.635582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334976, 36.214764, 41.638081>,  <33.069366, 35.915707, 41.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334976, 36.214764, 41.638081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172490, 0.166728, 0.970798,
		0.727543, -0.642837, 0.239672,
		0.664025, 0.747638, -0.010419,
		33.534184, 36.439056, 41.634956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364571, 35.145252, 41.692204>,  <33.069366, 35.915707, 41.642246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364571, 35.145252, 41.692204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207062, 34.781433, 41.639038>,  <33.112556, 34.563141, 41.607140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207062, 34.781433, 41.639038>,  <33.364571, 35.145252, 41.692204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207062, 34.781433, 41.639038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137564, 0.201282, -0.969826,
		0.908855, -0.363608, -0.204380,
		-0.393774, -0.909546, -0.132917,
		33.088928, 34.508568, 41.599163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609673, 35.052120, 41.073658>,  <33.364571, 35.145252, 41.692204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609673, 35.052120, 41.073658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294945, 34.809452, 41.119026>,  <33.106110, 34.663853, 41.146248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294945, 34.809452, 41.119026>,  <33.609673, 35.052120, 41.073658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294945, 34.809452, 41.119026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119502, -0.030540, -0.992364,
		0.605502, -0.794366, -0.048469,
		-0.786820, -0.606671, 0.113420,
		33.058899, 34.627449, 41.153053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589466, 34.632011, 40.541817>,  <33.609673, 35.052120, 41.073658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589466, 34.632011, 40.541817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218578, 34.527054, 40.648712>,  <32.996048, 34.464077, 40.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218578, 34.527054, 40.648712>,  <33.589466, 34.632011, 40.541817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218578, 34.527054, 40.648712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210256, -0.225811, -0.951211,
		0.309941, -0.938167, 0.154205,
		-0.927216, -0.262397, 0.267243,
		32.940414, 34.448334, 40.728886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406033, 34.028812, 40.239758>,  <33.589466, 34.632011, 40.541817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406033, 34.028812, 40.239758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039833, 34.167965, 40.320591>,  <32.820114, 34.251457, 40.369091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039833, 34.167965, 40.320591>,  <33.406033, 34.028812, 40.239758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039833, 34.167965, 40.320591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329588, -0.360469, -0.872602,
		-0.230715, -0.865472, 0.444666,
		-0.915501, 0.347879, 0.202083,
		32.765182, 34.272327, 40.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882713, 33.528442, 39.952545>,  <33.406033, 34.028812, 40.239758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882713, 33.528442, 39.952545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680885, 33.867168, 40.019848>,  <32.559788, 34.070404, 40.060230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680885, 33.867168, 40.019848>,  <32.882713, 33.528442, 39.952545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680885, 33.867168, 40.019848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515883, -0.139437, -0.845235,
		-0.692298, -0.513280, 0.507215,
		-0.504566, 0.846818, 0.168260,
		32.529514, 34.121216, 40.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143429, 33.409008, 39.898247>,  <32.882713, 33.528442, 39.952545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143429, 33.409008, 39.898247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207695, 33.793098, 39.806908>,  <32.246254, 34.023552, 39.752102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207695, 33.793098, 39.806908>,  <32.143429, 33.409008, 39.898247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207695, 33.793098, 39.806908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337601, -0.163937, -0.926904,
		-0.927476, 0.226014, 0.297835,
		0.160667, 0.960231, -0.228350,
		32.255894, 34.081169, 39.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589941, 33.579155, 39.455429>,  <32.143429, 33.409008, 39.898247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589941, 33.579155, 39.455429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834122, 33.884575, 39.371193>,  <31.980631, 34.067825, 39.320652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834122, 33.884575, 39.371193>,  <31.589941, 33.579155, 39.455429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834122, 33.884575, 39.371193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177718, -0.127054, -0.975845,
		-0.771858, 0.633131, 0.058136,
		0.610452, 0.763546, -0.210587,
		32.017258, 34.113640, 39.308018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230261, 33.970573, 39.083740>,  <31.589941, 33.579155, 39.455429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230261, 33.970573, 39.083740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612087, 34.050930, 38.995697>,  <31.841183, 34.099144, 38.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612087, 34.050930, 38.995697>,  <31.230261, 33.970573, 39.083740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612087, 34.050930, 38.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149701, -0.315387, -0.937081,
		-0.257668, 0.927456, -0.270985,
		0.954566, 0.200889, -0.220106,
		31.898457, 34.111198, 38.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191811, 34.231499, 38.452740>,  <31.230261, 33.970573, 39.083740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191811, 34.231499, 38.452740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573683, 34.119560, 38.493275>,  <31.802807, 34.052399, 38.517597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573683, 34.119560, 38.493275>,  <31.191811, 34.231499, 38.452740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573683, 34.119560, 38.493275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032708, -0.437073, -0.898831,
		0.295824, 0.854783, -0.426419,
		0.954682, -0.279844, 0.101338,
		31.860088, 34.035606, 38.523678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459803, 34.332840, 37.746101>,  <31.191811, 34.231499, 38.452740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459803, 34.332840, 37.746101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749102, 34.112137, 37.912220>,  <31.922682, 33.979713, 38.011890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749102, 34.112137, 37.912220>,  <31.459803, 34.332840, 37.746101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749102, 34.112137, 37.912220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174547, -0.435789, -0.882962,
		0.668167, 0.711088, -0.218875,
		0.723247, -0.551762, 0.415298,
		31.966076, 33.946609, 38.036808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014053, 34.418633, 37.278854>,  <31.459803, 34.332840, 37.746101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014053, 34.418633, 37.278854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086441, 34.084213, 37.486038>,  <32.129871, 33.883564, 37.610348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086441, 34.084213, 37.486038>,  <32.014053, 34.418633, 37.278854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086441, 34.084213, 37.486038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382333, -0.425424, -0.820266,
		0.906130, 0.346473, 0.242660,
		0.180967, -0.836045, 0.517958,
		32.140732, 33.833401, 37.641426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747673, 34.307678, 37.300972>,  <32.014053, 34.418633, 37.278854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747673, 34.307678, 37.300972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602818, 33.943787, 37.382214>,  <32.515907, 33.725452, 37.430958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602818, 33.943787, 37.382214>,  <32.747673, 34.307678, 37.300972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602818, 33.943787, 37.382214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486911, -0.370427, -0.791013,
		0.794844, -0.187557, 0.577101,
		-0.362134, -0.909729, 0.203108,
		32.494179, 33.670868, 37.443146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278515, 33.863316, 37.246925>,  <32.747673, 34.307678, 37.300972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278515, 33.863316, 37.246925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943974, 33.652912, 37.185177>,  <32.743248, 33.526669, 37.148129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943974, 33.652912, 37.185177>,  <33.278515, 33.863316, 37.246925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943974, 33.652912, 37.185177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330050, -0.258327, -0.907929,
		0.437703, -0.810296, 0.389661,
		-0.836351, -0.526011, -0.154368,
		32.693069, 33.495110, 37.138866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546577, 33.308075, 37.064770>,  <33.278515, 33.863316, 37.246925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546577, 33.308075, 37.064770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170063, 33.301395, 36.929893>,  <32.944153, 33.297390, 36.848969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170063, 33.301395, 36.929893>,  <33.546577, 33.308075, 37.064770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170063, 33.301395, 36.929893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286010, -0.570101, -0.770184,
		-0.179375, -0.821405, 0.541404,
		-0.941288, -0.016695, -0.337192,
		32.887676, 33.296387, 36.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107746, 32.758205, 37.282047>,  <33.546577, 33.308075, 37.064770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107746, 32.758205, 37.282047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276527, 32.793545, 36.921124>,  <33.377796, 32.814747, 36.704571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276527, 32.793545, 36.921124>,  <33.107746, 32.758205, 37.282047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276527, 32.793545, 36.921124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587015, -0.785080, 0.197642,
		-0.690921, -0.613061, -0.383124,
		0.421950, 0.088344, -0.902305,
		33.403111, 32.820049, 36.650433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332161, 32.028732, 37.099247>,  <33.107746, 32.758205, 37.282047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332161, 32.028732, 37.099247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545742, 32.315823, 36.920467>,  <33.673889, 32.488075, 36.813202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545742, 32.315823, 36.920467>,  <33.332161, 32.028732, 37.099247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545742, 32.315823, 36.920467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779585, -0.622553, -0.068376,
		-0.327323, -0.311922, -0.891944,
		0.533954, 0.717727, -0.446946,
		33.705929, 32.531139, 36.786385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447598, 31.406481, 37.607647>,  <33.332161, 32.028732, 37.099247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447598, 31.406481, 37.607647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766167, 31.626291, 37.708630>,  <33.957306, 31.758179, 37.769218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766167, 31.626291, 37.708630>,  <33.447598, 31.406481, 37.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766167, 31.626291, 37.708630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124686, -0.259276, 0.957721,
		0.591750, -0.794226, -0.137974,
		0.796420, 0.549528, 0.252455,
		34.005093, 31.791149, 37.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828323, 31.038328, 38.148773>,  <33.447598, 31.406481, 37.607647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828323, 31.038328, 38.148773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921429, 31.425291, 38.188671>,  <33.977291, 31.657469, 38.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921429, 31.425291, 38.188671>,  <33.828323, 31.038328, 38.148773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921429, 31.425291, 38.188671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026622, -0.108864, 0.993700,
		0.972170, -0.228638, -0.051093,
		0.232760, 0.967405, 0.099748,
		33.991257, 31.715513, 38.218597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404457, 30.998922, 38.528614>,  <33.828323, 31.038328, 38.148773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404457, 30.998922, 38.528614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252716, 31.365236, 38.581429>,  <34.161671, 31.585024, 38.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252716, 31.365236, 38.581429>,  <34.404457, 30.998922, 38.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252716, 31.365236, 38.581429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042990, -0.125102, 0.991212,
		0.924253, 0.381695, 0.008088,
		-0.379353, 0.915783, 0.132035,
		34.138908, 31.639971, 38.621040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919720, 31.356243, 38.945007>,  <34.404457, 30.998922, 38.528614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919720, 31.356243, 38.945007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564915, 31.535574, 38.989216>,  <34.352032, 31.643173, 39.015739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564915, 31.535574, 38.989216>,  <34.919720, 31.356243, 38.945007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564915, 31.535574, 38.989216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046227, -0.151933, 0.987309,
		0.459431, 0.880862, 0.114041,
		-0.887010, 0.448329, 0.110522,
		34.298813, 31.670073, 39.022373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026154, 31.968904, 39.454121>,  <34.919720, 31.356243, 38.945007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026154, 31.968904, 39.454121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628475, 31.931396, 39.475189>,  <34.389866, 31.908892, 39.487831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628475, 31.931396, 39.475189>,  <35.026154, 31.968904, 39.454121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628475, 31.931396, 39.475189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065375, -0.138020, 0.988269,
		-0.085399, 0.985981, 0.143350,
		-0.994200, -0.093769, 0.052671,
		34.330215, 31.903265, 39.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892170, 32.204979, 40.135628>,  <35.026154, 31.968904, 39.454121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892170, 32.204979, 40.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547371, 32.022839, 40.046532>,  <34.340492, 31.913553, 39.993076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547371, 32.022839, 40.046532>,  <34.892170, 32.204979, 40.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547371, 32.022839, 40.046532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055190, -0.352484, 0.934189,
		-0.503896, 0.817563, 0.278710,
		-0.861999, -0.455352, -0.222736,
		34.288773, 31.886232, 39.979710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454712, 32.482399, 40.504036>,  <34.892170, 32.204979, 40.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454712, 32.482399, 40.504036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290150, 32.130028, 40.410477>,  <34.191410, 31.918604, 40.354340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290150, 32.130028, 40.410477>,  <34.454712, 32.482399, 40.504036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290150, 32.130028, 40.410477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070844, -0.224938, 0.971794,
		-0.908694, 0.416374, 0.030132,
		-0.411407, -0.880929, -0.233897,
		34.166729, 31.865749, 40.340309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858387, 32.357063, 40.848660>,  <34.454712, 32.482399, 40.504036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858387, 32.357063, 40.848660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946106, 31.976818, 40.760803>,  <33.998737, 31.748671, 40.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946106, 31.976818, 40.760803>,  <33.858387, 32.357063, 40.848660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946106, 31.976818, 40.760803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035706, -0.232792, 0.971871,
		-0.975005, -0.205283, -0.084992,
		0.219294, -0.950614, -0.219643,
		34.011894, 31.691633, 40.694912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306759, 31.869675, 41.162807>,  <33.858387, 32.357063, 40.848660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306759, 31.869675, 41.162807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630180, 31.643656, 41.097122>,  <33.824234, 31.508043, 41.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630180, 31.643656, 41.097122>,  <33.306759, 31.869675, 41.162807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630180, 31.643656, 41.097122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044551, -0.337059, 0.940429,
		-0.586739, -0.753067, -0.297703,
		0.808550, -0.565049, -0.164216,
		33.872746, 31.474142, 41.047859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073471, 31.216471, 41.386810>,  <33.306759, 31.869675, 41.162807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073471, 31.216471, 41.386810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472923, 31.197174, 41.378727>,  <33.712593, 31.185596, 41.373875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472923, 31.197174, 41.378727>,  <33.073471, 31.216471, 41.386810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472923, 31.197174, 41.378727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006849, -0.262494, 0.964909,
		-0.051853, -0.963727, -0.261805,
		0.998631, -0.048240, -0.020212,
		33.772514, 31.182701, 41.372662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337387, 30.563391, 41.659782>,  <33.073471, 31.216471, 41.386810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337387, 30.563391, 41.659782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636600, 30.826115, 41.697819>,  <33.816128, 30.983749, 41.720638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636600, 30.826115, 41.697819>,  <33.337387, 30.563391, 41.659782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636600, 30.826115, 41.697819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029432, -0.175969, 0.983956,
		0.663003, -0.733238, -0.150962,
		0.748038, 0.656808, 0.095087,
		33.861012, 31.023157, 41.726345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724075, 30.221512, 42.069256>,  <33.337387, 30.563391, 41.659782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724075, 30.221512, 42.069256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895744, 30.581390, 42.101135>,  <33.998745, 30.797318, 42.120262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895744, 30.581390, 42.101135>,  <33.724075, 30.221512, 42.069256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895744, 30.581390, 42.101135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353427, -0.248477, 0.901858,
		0.831203, -0.358889, -0.424618,
		0.429175, 0.899699, 0.079694,
		34.024498, 30.851299, 42.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392982, 30.100115, 42.307858>,  <33.724075, 30.221512, 42.069256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392982, 30.100115, 42.307858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314583, 30.485416, 42.381313>,  <34.267544, 30.716599, 42.425385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314583, 30.485416, 42.381313>,  <34.392982, 30.100115, 42.307858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314583, 30.485416, 42.381313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391081, -0.094944, 0.915446,
		0.899243, 0.251247, -0.358101,
		-0.196003, 0.963255, 0.183636,
		34.255783, 30.774393, 42.436405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803776, 30.317644, 42.835682>,  <34.392982, 30.100115, 42.307858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803776, 30.317644, 42.835682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598274, 30.660271, 42.855083>,  <34.474972, 30.865847, 42.866726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598274, 30.660271, 42.855083>,  <34.803776, 30.317644, 42.835682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598274, 30.660271, 42.855083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325085, 0.142037, 0.934958,
		0.793962, 0.496108, -0.351428,
		-0.513755, 0.856564, 0.048506,
		34.444149, 30.917240, 42.869637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255657, 30.889757, 43.097965>,  <34.803776, 30.317644, 42.835682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255657, 30.889757, 43.097965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867676, 30.957815, 43.167534>,  <34.634888, 30.998650, 43.209274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867676, 30.957815, 43.167534>,  <35.255657, 30.889757, 43.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867676, 30.957815, 43.167534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213469, 0.252138, 0.943852,
		0.116738, 0.952616, -0.280882,
		-0.969950, 0.170143, 0.173920,
		34.576691, 31.008858, 43.219711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338665, 31.426281, 43.443161>,  <35.255657, 30.889757, 43.097965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338665, 31.426281, 43.443161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953960, 31.355143, 43.526470>,  <34.723137, 31.312460, 43.576454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953960, 31.355143, 43.526470>,  <35.338665, 31.426281, 43.443161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953960, 31.355143, 43.526470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132425, 0.363683, 0.922062,
		-0.239730, 0.914388, -0.326227,
		-0.961766, -0.177846, 0.208273,
		34.665432, 31.301788, 43.588951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965691, 31.985756, 43.798477>,  <35.338665, 31.426281, 43.443161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965691, 31.985756, 43.798477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745659, 31.667381, 43.899586>,  <34.613640, 31.476357, 43.960251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745659, 31.667381, 43.899586>,  <34.965691, 31.985756, 43.798477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745659, 31.667381, 43.899586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034096, 0.323828, 0.945502,
		-0.834414, 0.511485, -0.205270,
		-0.550082, -0.795939, 0.252767,
		34.580635, 31.428600, 43.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436440, 32.259430, 44.331604>,  <34.965691, 31.985756, 43.798477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436440, 32.259430, 44.331604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474209, 31.866936, 44.398838>,  <34.496872, 31.631437, 44.439178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474209, 31.866936, 44.398838>,  <34.436440, 32.259430, 44.331604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474209, 31.866936, 44.398838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013015, 0.167610, 0.985767,
		-0.995447, -0.095266, 0.003056,
		0.094422, -0.981240, 0.168087,
		34.502537, 31.572563, 44.449265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936096, 32.121437, 44.921837>,  <34.436440, 32.259430, 44.331604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936096, 32.121437, 44.921837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166298, 31.794647, 44.907158>,  <34.304420, 31.598574, 44.898350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166298, 31.794647, 44.907158>,  <33.936096, 32.121437, 44.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166298, 31.794647, 44.907158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123860, 0.042716, 0.991380,
		-0.808364, -0.575091, 0.125774,
		0.575506, -0.816974, -0.036701,
		34.338951, 31.549555, 44.896149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642643, 31.644707, 45.442371>,  <33.936096, 32.121437, 44.921837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642643, 31.644707, 45.442371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014530, 31.511019, 45.380508>,  <34.237663, 31.430807, 45.343391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014530, 31.511019, 45.380508>,  <33.642643, 31.644707, 45.442371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014530, 31.511019, 45.380508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168226, 0.011858, 0.985677,
		-0.327598, -0.942421, 0.067249,
		0.929720, -0.334219, -0.154656,
		34.293446, 31.410753, 45.334110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754715, 31.127718, 45.945507>,  <33.642643, 31.644707, 45.442371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754715, 31.127718, 45.945507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109215, 31.269943, 45.826759>,  <34.321915, 31.355278, 45.755508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109215, 31.269943, 45.826759>,  <33.754715, 31.127718, 45.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109215, 31.269943, 45.826759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363783, -0.137536, 0.921274,
		0.286741, -0.924477, -0.251240,
		0.886252, 0.355564, -0.296872,
		34.375092, 31.376612, 45.737698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252510, 30.704420, 46.243496>,  <33.754715, 31.127718, 45.945507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252510, 30.704420, 46.243496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427677, 31.056616, 46.170868>,  <34.532780, 31.267933, 46.127293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427677, 31.056616, 46.170868>,  <34.252510, 30.704420, 46.243496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427677, 31.056616, 46.170868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419383, -0.021434, 0.907556,
		0.795200, -0.473584, -0.378648,
		0.437920, 0.880488, -0.181569,
		34.559052, 31.320763, 46.116398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795784, 30.551373, 46.534161>,  <34.252510, 30.704420, 46.243496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795784, 30.551373, 46.534161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826561, 30.948549, 46.498066>,  <34.845028, 31.186855, 46.476410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826561, 30.948549, 46.498066>,  <34.795784, 30.551373, 46.534161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826561, 30.948549, 46.498066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372226, 0.055352, 0.926490,
		0.924947, -0.104878, -0.365340,
		0.076946, 0.992943, -0.090236,
		34.849644, 31.246433, 46.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419357, 30.796669, 46.617752>,  <34.795784, 30.551373, 46.534161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419357, 30.796669, 46.617752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159416, 31.082788, 46.720547>,  <35.003452, 31.254461, 46.782223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159416, 31.082788, 46.720547>,  <35.419357, 30.796669, 46.617752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159416, 31.082788, 46.720547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273061, -0.095819, 0.957213,
		0.709318, 0.692217, -0.133052,
		-0.649850, 0.715300, 0.256984,
		34.964462, 31.297379, 46.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693668, 31.025780, 47.156090>,  <35.419357, 30.796669, 46.617752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693668, 31.025780, 47.156090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338333, 31.208063, 47.178642>,  <35.125130, 31.317432, 47.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338333, 31.208063, 47.178642>,  <35.693668, 31.025780, 47.156090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338333, 31.208063, 47.178642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117839, 0.107579, 0.987188,
		0.443805, 0.883605, -0.149267,
		-0.888342, 0.455708, 0.056379,
		35.071831, 31.344776, 47.195557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805218, 31.648743, 47.560448>,  <35.693668, 31.025780, 47.156090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805218, 31.648743, 47.560448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418583, 31.548628, 47.582603>,  <35.186604, 31.488560, 47.595898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418583, 31.548628, 47.582603>,  <35.805218, 31.648743, 47.560448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418583, 31.548628, 47.582603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049661, 0.029168, 0.998340,
		-0.251485, 0.967733, -0.015764,
		-0.966586, -0.250285, 0.055394,
		35.128609, 31.473543, 47.599220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197243, 32.139488, 47.644753>,  <35.805218, 31.648743, 47.560448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197243, 32.139488, 47.644753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521461, 32.368401, 47.694553>,  <36.715992, 32.505749, 47.724434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521461, 32.368401, 47.694553>,  <36.197243, 32.139488, 47.644753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521461, 32.368401, 47.694553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415753, -0.412506, -0.810548,
		-0.412506, 0.708751, -0.572285,
		0.810548, 0.572285, 0.124504,
		36.764626, 32.540085, 47.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316902, 32.529312, 46.998024>,  <36.197243, 32.139488, 47.644753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316902, 32.529312, 46.998024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657326, 32.513050, 47.207424>,  <36.861580, 32.503292, 47.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657326, 32.513050, 47.207424>,  <36.316902, 32.529312, 46.998024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657326, 32.513050, 47.207424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497722, -0.255147, -0.828959,
		0.167269, 0.966047, -0.196910,
		0.851055, -0.040653, 0.523501,
		36.912643, 32.500854, 47.364475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836838, 32.943108, 46.584103>,  <36.316902, 32.529312, 46.998024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836838, 32.943108, 46.584103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070702, 32.727203, 46.826370>,  <37.211018, 32.597660, 46.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070702, 32.727203, 46.826370>,  <36.836838, 32.943108, 46.584103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070702, 32.727203, 46.826370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581500, -0.241769, -0.776792,
		0.565715, 0.806352, 0.172520,
		0.584657, -0.539763, 0.605666,
		37.246098, 32.565273, 47.008072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509373, 33.058083, 46.352180>,  <36.836838, 32.943108, 46.584103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509373, 33.058083, 46.352180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520275, 32.721893, 46.568649>,  <37.526817, 32.520180, 46.698532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520275, 32.721893, 46.568649>,  <37.509373, 33.058083, 46.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520275, 32.721893, 46.568649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657064, -0.392926, -0.643333,
		0.753342, 0.373120, 0.541533,
		0.027258, -0.840471, 0.541171,
		37.528454, 32.469753, 46.730999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250904, 32.911362, 46.433765>,  <37.509373, 33.058083, 46.352180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250904, 32.911362, 46.433765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040775, 32.574490, 46.482376>,  <37.914700, 32.372368, 46.511543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040775, 32.574490, 46.482376>,  <38.250904, 32.911362, 46.433765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040775, 32.574490, 46.482376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540788, -0.440707, -0.716467,
		0.656952, -0.310656, 0.686954,
		-0.525321, -0.842182, 0.121524,
		37.883179, 32.321835, 46.518833>
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
