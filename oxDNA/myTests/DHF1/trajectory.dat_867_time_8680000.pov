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
	<-1.231365, 3.632602, 3.632024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.048027, 3.733685, 3.972860>,  <-0.938024, 3.794334, 4.177362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.048027, 3.733685, 3.972860>,  <-1.231365, 3.632602, 3.632024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.048027, 3.733685, 3.972860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768155, -0.594877, -0.236770,
		0.447056, 0.763060, -0.466776,
		0.458344, 0.252707, 0.852091,
		-0.910524, 3.809497, 4.228488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.578384, 3.960032, 3.493080>,  <-1.231365, 3.632602, 3.632024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.578384, 3.960032, 3.493080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.586540, 3.776173, 3.848227>,  <-0.591434, 3.665857, 4.061315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.586540, 3.776173, 3.848227>,  <-0.578384, 3.960032, 3.493080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.586540, 3.776173, 3.848227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793970, -0.547150, -0.265027,
		0.607615, 0.699535, 0.376105,
		-0.020390, -0.459650, 0.887866,
		-0.592657, 3.638278, 4.114586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.024605, 4.031568, 3.913497>,  <-0.578384, 3.960032, 3.493080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.024605, 4.031568, 3.913497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.182289, 3.668816, 3.973052>,  <-0.276900, 3.451164, 4.008785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.182289, 3.668816, 3.973052>,  <-0.024605, 4.031568, 3.913497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.182289, 3.668816, 3.973052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814915, -0.419834, -0.399567,
		0.424867, -0.036182, 0.904533,
		-0.394210, -0.906880, 0.148888,
		-0.300552, 3.396752, 4.017718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360345, 3.718273, 4.303215>,  <-0.024605, 4.031568, 3.913497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360345, 3.718273, 4.303215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.170052, 3.471172, 4.052755>,  <0.055875, 3.322912, 3.902480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.170052, 3.471172, 4.052755>,  <0.360345, 3.718273, 4.303215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.170052, 3.471172, 4.052755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878352, -0.295895, -0.375426,
		0.046645, -0.728581, 0.683370,
		-0.475734, -0.617751, -0.626148,
		0.027331, 3.285847, 3.864911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.837473, 3.259796, 4.251946>,  <0.360345, 3.718273, 4.303215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.837473, 3.259796, 4.251946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.584389, 3.203152, 3.947414>,  <0.432538, 3.169165, 3.764695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.584389, 3.203152, 3.947414>,  <0.837473, 3.259796, 4.251946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.584389, 3.203152, 3.947414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773501, -0.162641, -0.612572,
		-0.037076, -0.976470, 0.212441,
		-0.632710, -0.141611, -0.761330,
		0.394576, 3.160668, 3.719015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.908774, 2.606369, 4.006786>,  <0.837473, 3.259796, 4.251946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.908774, 2.606369, 4.006786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.788269, 2.840675, 3.705823>,  <0.715966, 2.981259, 3.525245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.788269, 2.840675, 3.705823>,  <0.908774, 2.606369, 4.006786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.788269, 2.840675, 3.705823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861667, -0.170699, -0.477904,
		-0.408375, -0.792300, -0.453311,
		-0.301264, 0.585767, -0.752408,
		0.697890, 3.016405, 3.480101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.254439, 2.315341, 3.390090>,  <0.908774, 2.606369, 4.006786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.254439, 2.315341, 3.390090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.111404, 2.663311, 3.254230>,  <1.025584, 2.872093, 3.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.111404, 2.663311, 3.254230>,  <1.254439, 2.315341, 3.390090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111404, 2.663311, 3.254230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646316, -0.031998, -0.762399,
		-0.674098, -0.492144, -0.550805,
		-0.357585, 0.869925, -0.339650,
		1.004129, 2.924289, 3.152334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.905614, 2.252841, 2.704129>,  <1.254439, 2.315341, 3.390090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.905614, 2.252841, 2.704129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030670, 2.632179, 2.725664>,  <1.105704, 2.859782, 2.738585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030670, 2.632179, 2.725664>,  <0.905614, 2.252841, 2.704129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030670, 2.632179, 2.725664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579598, -0.145557, -0.801797,
		-0.752544, 0.281878, -0.595166,
		0.312640, 0.948345, 0.053838,
		1.124462, 2.916683, 2.741815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.096489, 2.868018, 1.810198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911484, 3.216522, 1.744485>,  <1.800481, 3.425625, 1.705058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911484, 3.216522, 1.744485>,  <2.096489, 2.868018, 1.810198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.911484, 3.216522, 1.744485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281935, 0.031144, 0.958928,
		0.840591, 0.489834, 0.231234,
		-0.462513, 0.871260, -0.164281,
		1.772730, 3.477900, 1.695201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.226701, 3.279344, 2.371848>,  <2.096489, 2.868018, 1.810198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.226701, 3.279344, 2.371848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.890114, 3.405746, 2.196545>,  <1.688161, 3.481588, 2.091363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.890114, 3.405746, 2.196545>,  <2.226701, 3.279344, 2.371848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.890114, 3.405746, 2.196545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435477, 0.083473, 0.896321,
		0.319827, 0.945078, 0.067374,
		-0.841469, 0.316007, -0.438257,
		1.637673, 3.500549, 2.065068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.950892, 3.787384, 2.817413>,  <2.226701, 3.279344, 2.371848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.950892, 3.787384, 2.817413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.655533, 3.639526, 2.591799>,  <1.478317, 3.550812, 2.456431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.655533, 3.639526, 2.591799>,  <1.950892, 3.787384, 2.817413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.655533, 3.639526, 2.591799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599804, -0.022295, 0.799837,
		-0.308229, 0.928906, -0.205250,
		-0.738397, -0.369643, -0.564034,
		1.434014, 3.528634, 2.422589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.213655, 4.119299, 2.941324>,  <1.950892, 3.787384, 2.817413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.213655, 4.119299, 2.941324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200218, 3.737183, 2.823824>,  <1.192156, 3.507912, 2.753325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.200218, 3.737183, 2.823824>,  <1.213655, 4.119299, 2.941324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.200218, 3.737183, 2.823824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698007, -0.187931, 0.690991,
		-0.715303, 0.228250, -0.660487,
		-0.033593, -0.955292, -0.293748,
		1.190140, 3.450595, 2.735700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.561859, 4.114323, 2.843157>,  <1.213655, 4.119299, 2.941324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.561859, 4.114323, 2.843157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702271, 3.746513, 2.913871>,  <0.786517, 3.525827, 2.956300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702271, 3.746513, 2.913871>,  <0.561859, 4.114323, 2.843157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.702271, 3.746513, 2.913871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849421, -0.233257, 0.473367,
		-0.394036, -0.316330, -0.862943,
		0.351028, -0.919525, 0.176786,
		0.807579, 3.470656, 2.966907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.130710, 3.584606, 2.480440>,  <0.561859, 4.114323, 2.843157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.130710, 3.584606, 2.480440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.292183, 3.416862, 2.805692>,  <0.389067, 3.316217, 3.000843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.292183, 3.416862, 2.805692>,  <0.130710, 3.584606, 2.480440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.292183, 3.416862, 2.805692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895069, 0.003016, 0.445917,
		-0.189452, -0.907815, -0.374139,
		0.403682, -0.419360, 0.813129,
		0.413288, 3.291055, 3.049631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.443102, 3.117035, 2.697212>,  <0.130710, 3.584606, 2.480440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.443102, 3.117035, 2.697212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174049, 3.125893, 2.993071>,  <-0.012618, 3.131207, 3.170586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174049, 3.125893, 2.993071>,  <-0.443102, 3.117035, 2.697212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.174049, 3.125893, 2.993071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737222, -0.066132, 0.672406,
		0.063805, -0.997565, -0.028156,
		0.672631, 0.022145, 0.739646,
		0.027740, 3.132536, 3.214965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.370423, 2.364624, 2.936203>,  <-0.443102, 3.117035, 2.697212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.370423, 2.364624, 2.936203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.278290, 2.651329, 3.199474>,  <-0.223010, 2.823352, 3.357436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.278290, 2.651329, 3.199474>,  <-0.370423, 2.364624, 2.936203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.278290, 2.651329, 3.199474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818465, -0.223158, 0.529449,
		0.526367, -0.660645, 0.535245,
		0.230334, 0.716763, 0.658177,
		-0.209190, 2.866358, 3.396927>
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
