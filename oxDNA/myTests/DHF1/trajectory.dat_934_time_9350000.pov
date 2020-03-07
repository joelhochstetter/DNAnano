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
	<1.929830, 1.591100, 5.663031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.232811, 1.450068, 5.443230>,  <2.414599, 1.365448, 5.311349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.232811, 1.450068, 5.443230>,  <1.929830, 1.591100, 5.663031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.232811, 1.450068, 5.443230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648649, -0.502174, -0.571905,
		-0.074303, 0.789625, -0.609074,
		0.757452, -0.352581, -0.549503,
		2.460047, 1.344293, 5.278379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.892850, 1.755509, 4.926301>,  <1.929830, 1.591100, 5.663031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.892850, 1.755509, 4.926301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082336, 1.411720, 5.003139>,  <2.196028, 1.205447, 5.049242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082336, 1.411720, 5.003139>,  <1.892850, 1.755509, 4.926301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082336, 1.411720, 5.003139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731727, -0.505496, -0.457219,
		0.490071, 0.076030, -0.868361,
		0.473715, -0.859473, 0.192096,
		2.224451, 1.153878, 5.060768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.731586, 1.415587, 4.313341>,  <1.892850, 1.755509, 4.926301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.731586, 1.415587, 4.313341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.822304, 1.151115, 4.599392>,  <1.876735, 0.992433, 4.771023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.822304, 1.151115, 4.599392>,  <1.731586, 1.415587, 4.313341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.822304, 1.151115, 4.599392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729423, -0.601860, -0.325126,
		0.645373, -0.447893, -0.618777,
		0.226795, -0.661178, 0.715128,
		1.890342, 0.952762, 4.813930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.717646, 0.791617, 3.925085>,  <1.731586, 1.415587, 4.313341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.717646, 0.791617, 3.925085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.641304, 0.779068, 4.317532>,  <1.595499, 0.771538, 4.552999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.641304, 0.779068, 4.317532>,  <1.717646, 0.791617, 3.925085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.641304, 0.779068, 4.317532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801077, -0.572668, -0.174144,
		0.567319, -0.819186, 0.084162,
		-0.190854, -0.031375, 0.981117,
		1.584048, 0.769656, 4.611866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.632558, 0.135301, 4.122176>,  <1.717646, 0.791617, 3.925085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.632558, 0.135301, 4.122176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447960, 0.313629, 4.428970>,  <1.337201, 0.420626, 4.613047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447960, 0.313629, 4.428970>,  <1.632558, 0.135301, 4.122176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.447960, 0.313629, 4.428970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732907, -0.678741, -0.046462,
		0.499870, -0.583570, 0.639981,
		-0.461495, 0.445822, 0.766985,
		1.309512, 0.447376, 4.659066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485629, -0.282232, 4.687077>,  <1.632558, 0.135300, 4.122176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485629, -0.282232, 4.687077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209564, 0.006641, 4.705521>,  <1.043925, 0.179966, 4.716587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209564, 0.006641, 4.705521>,  <1.485629, -0.282232, 4.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209564, 0.006641, 4.705521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723343, -0.686594, -0.073227,
		-0.021225, -0.083891, 0.996249,
		-0.690162, 0.722184, 0.046109,
		1.002516, 0.223297, 4.719353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022420, -0.611757, 5.102221>,  <1.485629, -0.282232, 4.687077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022420, -0.611757, 5.102221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820007, -0.309618, 4.935665>,  <0.698560, -0.128334, 4.835732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820007, -0.309618, 4.935665>,  <1.022420, -0.611757, 5.102221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.820007, -0.309618, 4.935665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793485, -0.596932, -0.118548,
		-0.338102, 0.270410, 0.901424,
		-0.506032, 0.755348, -0.416390,
		0.668198, -0.083014, 4.810748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.397751, -0.544045, 5.330723>,  <1.022420, -0.611757, 5.102221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.397751, -0.544045, 5.330723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.363655, -0.382025, 4.966599>,  <0.343198, -0.284813, 4.748124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.363655, -0.382025, 4.966599>,  <0.397751, -0.544045, 5.330723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.363655, -0.382025, 4.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801945, -0.570085, -0.178572,
		-0.591286, 0.714799, 0.373422,
		-0.085239, 0.405051, -0.910312,
		0.338083, -0.260509, 4.693505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.766362, -0.619518, 3.440927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.526810, -0.928871, 3.357769>,  <0.383078, -1.114483, 3.307874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.526810, -0.928871, 3.357769>,  <0.766362, -0.619518, 3.440927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.526810, -0.928871, 3.357769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066097, -0.306446, 0.949590,
		-0.798106, 0.554950, 0.234643,
		-0.598881, -0.773383, -0.207896,
		0.347146, -1.160886, 3.295400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.340214, -0.744628, 4.071238>,  <0.766362, -0.619518, 3.440927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.340214, -0.744628, 4.071238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.324799, -1.062347, 3.828716>,  <0.315550, -1.252979, 3.683203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.324799, -1.062347, 3.828716>,  <0.340214, -0.744628, 4.071238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.324799, -1.062347, 3.828716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030839, -0.605521, 0.795232,
		-0.998781, 0.049344, -0.001160,
		-0.038538, -0.794298, -0.606305,
		0.313237, -1.300637, 3.646825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.126996, -0.264477, 3.657517>,  <0.340214, -0.744628, 4.071238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.126996, -0.264477, 3.657517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.055801, -0.194420, 4.006340>,  <-0.165480, -0.152386, 4.215633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.055801, -0.194420, 4.006340>,  <0.126996, -0.264477, 3.657517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.055801, -0.194420, 4.006340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745708, 0.609865, 0.268297,
		-0.484847, 0.772910, -0.409309,
		-0.456993, 0.175142, 0.872057,
		-0.192899, -0.141877, 4.267957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.054504, 0.506182, 3.801274>,  <0.126996, -0.264477, 3.657517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.054504, 0.506182, 3.801274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.081772, 0.298893, 4.142284>,  <0.098133, 0.174520, 4.346890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.081772, 0.298893, 4.142284>,  <0.054504, 0.506182, 3.801274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.081772, 0.298893, 4.142284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679774, 0.649587, 0.340506,
		-0.730246, 0.556312, 0.396557,
		0.068170, -0.518222, 0.852525,
		0.102223, 0.143426, 4.398042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.024159, 0.970624, 4.356325>,  <0.054504, 0.506182, 3.801274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.024159, 0.970624, 4.356325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.219330, 0.650635, 4.496021>,  <0.336432, 0.458641, 4.579839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.219330, 0.650635, 4.496021>,  <0.024159, 0.970624, 4.356325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.219330, 0.650635, 4.496021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697307, 0.597895, 0.395329,
		-0.525063, 0.050637, 0.849556,
		0.487926, -0.799974, 0.349242,
		0.365708, 0.410643, 4.600794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.109423, 1.047640, 5.027909>,  <0.024159, 0.970624, 4.356325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.109423, 1.047640, 5.027909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.404358, 0.810516, 4.898350>,  <0.581319, 0.668242, 4.820614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.404358, 0.810516, 4.898350>,  <0.109423, 1.047640, 5.027909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.404358, 0.810516, 4.898350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670623, 0.584697, 0.456502,
		-0.081237, -0.553810, 0.828671,
		0.737337, -0.592810, -0.323898,
		0.625559, 0.632673, 4.801180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.606852, 1.104917, 5.536776>,  <0.109423, 1.047640, 5.027909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.606852, 1.104917, 5.536776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.819901, 0.897392, 5.269299>,  <0.947730, 0.772878, 5.108812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.819901, 0.897392, 5.269299>,  <0.606852, 1.104917, 5.536776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819901, 0.897392, 5.269299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824042, 0.498107, 0.269898,
		0.193054, -0.694784, 0.692824,
		0.532621, -0.518811, -0.668693,
		0.979687, 0.741749, 5.068691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.196508, 0.956809, 5.890527>,  <0.606852, 1.104917, 5.536776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.196508, 0.956809, 5.890527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294739, 0.910507, 5.505550>,  <1.353677, 0.882726, 5.274564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294739, 0.910507, 5.505550>,  <1.196508, 0.956809, 5.890527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.294739, 0.910507, 5.505550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877610, 0.448210, 0.170023,
		0.411695, -0.886402, 0.211658,
		0.245576, -0.115756, -0.962441,
		1.368412, 0.875781, 5.216818>
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
