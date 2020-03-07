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
	<3.455929, 2.274811, 0.521251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.286114, 2.406120, 0.858772>,  <3.184225, 2.484906, 1.061285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.286114, 2.406120, 0.858772>,  <3.455929, 2.274811, 0.521251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.286114, 2.406120, 0.858772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176535, -0.944083, 0.278466,
		0.888034, -0.030742, 0.458750,
		-0.424537, 0.328272, 0.843805,
		3.158753, 2.504602, 1.111914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.638644, 1.739879, 1.095843>,  <3.455929, 2.274811, 0.521251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.638644, 1.739879, 1.095843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.326435, 1.958183, 1.217781>,  <3.139110, 2.089166, 1.290944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.326435, 1.958183, 1.217781>,  <3.638644, 1.739879, 1.095843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.326435, 1.958183, 1.217781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358498, -0.790277, 0.496932,
		0.512118, 0.278580, 0.812483,
		-0.780522, 0.545761, 0.304845,
		3.092278, 2.121912, 1.309234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065576, 1.607008, 1.693316>,  <3.638644, 1.739879, 1.095843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065576, 1.607008, 1.693316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188747, 1.632439, 2.073029>,  <4.262650, 1.647697, 2.300856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188747, 1.632439, 2.073029>,  <4.065576, 1.607008, 1.693316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188747, 1.632439, 2.073029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635594, -0.728702, 0.254979,
		0.707955, -0.681873, -0.183979,
		0.307929, 0.063578, 0.949283,
		4.281126, 1.651512, 2.357813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.193751, 0.898958, 1.907827>,  <4.065576, 1.607008, 1.693316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.193751, 0.898958, 1.907827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.075138, 1.114609, 2.223145>,  <4.003970, 1.243999, 2.412335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.075138, 1.114609, 2.223145>,  <4.193751, 0.898958, 1.907827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.075138, 1.114609, 2.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573079, -0.760745, 0.304710,
		0.763969, -0.361398, 0.534549,
		-0.296534, 0.539128, 0.788295,
		3.986178, 1.276347, 2.459633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.293068, 0.490517, 2.541904>,  <4.193751, 0.898958, 1.907827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.293068, 0.490517, 2.541904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.020897, 0.769829, 2.630829>,  <3.857594, 0.937416, 2.684184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.020897, 0.769829, 2.630829>,  <4.293068, 0.490517, 2.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.020897, 0.769829, 2.630829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622972, -0.710935, 0.326311,
		0.385906, 0.083537, 0.918748,
		-0.680429, 0.698279, 0.222313,
		3.816768, 0.979313, 2.697523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907508, 0.309418, 3.223319>,  <4.293068, 0.490517, 2.541904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907508, 0.309418, 3.223319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.678394, 0.584763, 3.045296>,  <3.540926, 0.749969, 2.938482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.678394, 0.584763, 3.045296>,  <3.907508, 0.309418, 3.223319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.678394, 0.584763, 3.045296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819576, -0.490605, 0.295976,
		-0.014609, 0.534290, 0.845175,
		-0.572784, 0.688361, -0.445059,
		3.506559, 0.791271, 2.911778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.357976, 0.373459, 3.691209>,  <3.907508, 0.309418, 3.223319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.357976, 0.373459, 3.691209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.198650, 0.540306, 3.364441>,  <3.103055, 0.640414, 3.168380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.198650, 0.540306, 3.364441>,  <3.357976, 0.373459, 3.691209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.198650, 0.540306, 3.364441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887470, -0.400347, 0.228296,
		-0.231826, 0.815926, 0.529642,
		-0.398314, 0.417117, -0.816921,
		3.079156, 0.665441, 3.119365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.808807, 0.759905, 3.904747>,  <3.357976, 0.373459, 3.691209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.808807, 0.759905, 3.904747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.756897, 0.679947, 3.516273>,  <2.725751, 0.631972, 3.283189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.756897, 0.679947, 3.516273>,  <2.808807, 0.759905, 3.904747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.756897, 0.679947, 3.516273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943031, -0.277736, 0.183179,
		-0.306349, 0.939630, -0.152464,
		-0.129776, -0.199895, -0.971185,
		2.717964, 0.619978, 3.224918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.986643, -0.007306, 3.759046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.793699, 0.060013, 3.415184>,  <1.677933, 0.100404, 3.208867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.793699, 0.060013, 3.415184>,  <1.986643, -0.007306, 3.759046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.793699, 0.060013, 3.415184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813218, 0.450796, -0.368050,
		0.325586, -0.876618, -0.354308,
		-0.482360, 0.168298, -0.859654,
		1.648991, 0.110502, 3.157288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459908, -0.163441, 3.144635>,  <1.986643, -0.007306, 3.759046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459908, -0.163441, 3.144635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179812, 0.104164, 3.044968>,  <2.011755, 0.264727, 2.985168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179812, 0.104164, 3.044968>,  <2.459908, -0.163441, 3.144635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.179812, 0.104164, 3.044968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673631, 0.503613, -0.540920,
		-0.236399, -0.546621, -0.803319,
		-0.700240, 0.669014, -0.249167,
		1.969740, 0.304868, 2.970217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.366024, -0.141439, 2.300927>,  <2.459908, -0.163441, 3.144635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.366024, -0.141439, 2.300927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301435, 0.168839, 2.544968>,  <2.262681, 0.355005, 2.691392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301435, 0.168839, 2.544968>,  <2.366024, -0.141439, 2.300927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.301435, 0.168839, 2.544968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755028, 0.495202, -0.429777,
		-0.635499, 0.391246, -0.665633,
		-0.161474, 0.775694, 0.610102,
		2.252992, 0.401547, 2.727998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.672252, 0.374137, 1.912943>,  <2.366024, -0.141439, 2.300927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.672252, 0.374137, 1.912943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.642658, 0.482262, 2.296913>,  <2.624902, 0.547136, 2.527295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.642658, 0.482262, 2.296913>,  <2.672252, 0.374137, 1.912943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.642658, 0.482262, 2.296913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864633, 0.497026, -0.073321,
		-0.496927, 0.824559, -0.270492,
		-0.073984, 0.270311, 0.959926,
		2.620463, 0.563355, 2.584891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.790446, 1.082485, 1.880365>,  <2.672252, 0.374137, 1.912943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.790446, 1.082485, 1.880365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.865307, 0.951073, 2.250671>,  <2.910223, 0.872225, 2.472855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.865307, 0.951073, 2.250671>,  <2.790446, 1.082485, 1.880365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.865307, 0.951073, 2.250671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770378, 0.633822, 0.069189,
		-0.609502, 0.700240, 0.371714,
		0.187152, -0.328531, 0.925765,
		2.921453, 0.852513, 2.528401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.779584, 1.686414, 2.314372>,  <2.790446, 1.082485, 1.880365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.779584, 1.686414, 2.314372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.000821, 1.409889, 2.500351>,  <3.133564, 1.243974, 2.611938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.000821, 1.409889, 2.500351>,  <2.779584, 1.686414, 2.314372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.000821, 1.409889, 2.500351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769975, 0.637290, 0.031612,
		-0.318161, 0.340514, 0.884774,
		0.553093, -0.691311, 0.464948,
		3.166749, 1.202496, 2.639835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989063, 2.006142, 2.981399>,  <2.779584, 1.686414, 2.314372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989063, 2.006142, 2.981399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.223974, 1.700531, 2.874542>,  <3.364921, 1.517164, 2.810428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.223974, 1.700531, 2.874542>,  <2.989063, 2.006142, 2.981399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.223974, 1.700531, 2.874542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798776, 0.600366, 0.038960,
		0.130616, -0.236267, 0.962869,
		0.587279, -0.764028, -0.267142,
		3.400158, 1.471323, 2.794399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.625505, 2.102928, 3.321482>,  <2.989063, 2.006142, 2.981399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.625505, 2.102928, 3.321482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738770, 1.834763, 3.047150>,  <3.806730, 1.673863, 2.882550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738770, 1.834763, 3.047150>,  <3.625505, 2.102928, 3.321482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738770, 1.834763, 3.047150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903131, 0.427046, -0.044565,
		0.322758, -0.606776, 0.726396,
		0.283163, -0.670414, -0.685830,
		3.823720, 1.633638, 2.841401>
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
