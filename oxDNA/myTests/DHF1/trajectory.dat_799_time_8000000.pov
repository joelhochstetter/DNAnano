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
	<4.779633, 3.031014, 6.288069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618687, 3.381447, 6.181799>,  <4.522119, 3.591706, 6.118037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618687, 3.381447, 6.181799>,  <4.779633, 3.031014, 6.288069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.618687, 3.381447, 6.181799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011679, -0.295092, -0.955397,
		-0.915405, -0.381316, 0.128966,
		-0.402365, 0.876081, -0.265675,
		4.497977, 3.644271, 6.102096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.266174, 2.995093, 5.788398>,  <4.779633, 3.031014, 6.288069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.266174, 2.995093, 5.788398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433949, 3.354263, 5.735023>,  <4.534613, 3.569765, 5.702999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433949, 3.354263, 5.735023>,  <4.266174, 2.995093, 5.788398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.433949, 3.354263, 5.735023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105686, -0.194293, -0.975233,
		-0.901612, 0.394945, -0.176392,
		0.419435, 0.897925, -0.133437,
		4.559779, 3.623641, 5.694993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046284, 3.262690, 5.121566>,  <4.266174, 2.995093, 5.788398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046284, 3.262690, 5.121566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.380505, 3.468140, 5.199587>,  <4.581037, 3.591409, 5.246399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.380505, 3.468140, 5.199587>,  <4.046284, 3.262690, 5.121566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.380505, 3.468140, 5.199587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218593, 0.014926, -0.975702,
		-0.504055, 0.857886, -0.099803,
		0.835551, 0.513623, 0.195052,
		4.631170, 3.622227, 5.258102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016886, 3.933694, 4.751657>,  <4.046284, 3.262690, 5.121566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016886, 3.933694, 4.751657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.376333, 3.766808, 4.805939>,  <4.592001, 3.666676, 4.838508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.376333, 3.766808, 4.805939>,  <4.016886, 3.933694, 4.751657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.376333, 3.766808, 4.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084564, -0.138798, -0.986704,
		0.430505, 0.898145, -0.089445,
		0.898618, -0.417217, 0.135704,
		4.645919, 3.641643, 4.846650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.570332, 4.216068, 4.381269>,  <4.016886, 3.933694, 4.751657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.570332, 4.216068, 4.381269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.678705, 3.838257, 4.455526>,  <4.743729, 3.611570, 4.500081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.678705, 3.838257, 4.455526>,  <4.570332, 4.216068, 4.381269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.678705, 3.838257, 4.455526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166262, -0.144041, -0.975505,
		0.948131, 0.295162, 0.118014,
		0.270933, -0.944527, 0.185644,
		4.759985, 3.554899, 4.511220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.095881, 4.140553, 3.887457>,  <4.570332, 4.216068, 4.381269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.095881, 4.140553, 3.887457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023584, 3.769150, 4.017197>,  <4.980206, 3.546308, 4.095041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023584, 3.769150, 4.017197>,  <5.095881, 4.140553, 3.887457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.023584, 3.769150, 4.017197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014390, -0.332242, -0.943084,
		0.983425, -0.165788, 0.073412,
		-0.180742, -0.928509, 0.324350,
		4.969362, 3.490597, 4.114501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.650187, 3.619348, 3.564824>,  <5.095881, 4.140553, 3.887457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.650187, 3.619348, 3.564824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.341932, 3.388397, 3.672718>,  <5.156980, 3.249827, 3.737455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.341932, 3.388397, 3.672718>,  <5.650187, 3.619348, 3.564824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.341932, 3.388397, 3.672718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030248, -0.389648, -0.920467,
		0.636558, -0.717504, 0.282812,
		-0.770636, -0.577376, 0.269736,
		5.110742, 3.215184, 3.753639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.833146, 2.900115, 3.373559>,  <5.650187, 3.619348, 3.564824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.833146, 2.900115, 3.373559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442446, 2.985222, 3.363056>,  <5.208026, 3.036286, 3.356755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442446, 2.985222, 3.363056>,  <5.833146, 2.900115, 3.373559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.442446, 2.985222, 3.363056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046805, -0.331166, -0.942411,
		-0.209208, -0.919271, 0.333425,
		-0.976751, 0.212766, -0.026257,
		5.149421, 3.049052, 3.355179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.532770, 2.782723, 2.132662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.229839, 2.542793, 2.235940>,  <5.048080, 2.398835, 2.297907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.229839, 2.542793, 2.235940>,  <5.532770, 2.782723, 2.132662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.229839, 2.542793, 2.235940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109884, 0.506787, 0.855039,
		-0.643724, 0.619174, -0.449715,
		-0.757328, -0.599826, 0.258194,
		5.002641, 2.362846, 2.313398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.007339, 3.178230, 2.432416>,  <5.532770, 2.782723, 2.132662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.007339, 3.178230, 2.432416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.922325, 2.831009, 2.611888>,  <4.871317, 2.622676, 2.719571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.922325, 2.831009, 2.611888>,  <5.007339, 3.178230, 2.432416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.922325, 2.831009, 2.611888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004978, 0.460126, 0.887840,
		-0.977141, 0.186463, -0.102114,
		-0.212535, -0.868053, 0.448680,
		4.858565, 2.570593, 2.746492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.411001, 3.216827, 2.890874>,  <5.007339, 3.178230, 2.432416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.411001, 3.216827, 2.890874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.619263, 2.899376, 3.016777>,  <4.744220, 2.708905, 3.092319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.619263, 2.899376, 3.016777>,  <4.411001, 3.216827, 2.890874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.619263, 2.899376, 3.016777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076543, 0.323795, 0.943026,
		-0.850329, -0.515084, 0.107839,
		0.520655, -0.793629, 0.314758,
		4.775459, 2.661288, 3.111204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.933834, 2.871635, 3.428617>,  <4.411001, 3.216827, 2.890874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.933834, 2.871635, 3.428617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330578, 2.835442, 3.464458>,  <4.568624, 2.813726, 3.485964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330578, 2.835442, 3.464458>,  <3.933834, 2.871635, 3.428617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330578, 2.835442, 3.464458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053355, 0.343619, 0.937592,
		-0.115626, -0.934740, 0.335993,
		0.991859, -0.090483, 0.089604,
		4.628136, 2.808297, 3.491340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092918, 2.504491, 4.039306>,  <3.933834, 2.871635, 3.428617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092918, 2.504491, 4.039306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.431690, 2.699051, 3.953398>,  <4.634953, 2.815787, 3.901853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.431690, 2.699051, 3.953398>,  <4.092918, 2.504491, 4.039306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.431690, 2.699051, 3.953398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070600, 0.297477, 0.952115,
		0.526998, -0.821536, 0.217602,
		0.846929, 0.486400, -0.214771,
		4.685769, 2.844971, 3.888967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.526134, 2.337799, 4.593998>,  <4.092918, 2.504491, 4.039306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.526134, 2.337799, 4.593998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.671852, 2.669380, 4.424234>,  <4.759284, 2.868329, 4.322376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.671852, 2.669380, 4.424234>,  <4.526134, 2.337799, 4.593998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.671852, 2.669380, 4.424234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172678, 0.387697, 0.905468,
		0.915134, -0.403146, -0.001906,
		0.364297, 0.828954, -0.424409,
		4.781141, 2.918066, 4.296912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.137188, 2.373905, 4.920148>,  <4.526134, 2.337799, 4.593998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.137188, 2.373905, 4.920148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.029442, 2.737366, 4.792528>,  <4.964794, 2.955442, 4.715956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.029442, 2.737366, 4.792528>,  <5.137188, 2.373905, 4.920148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.029442, 2.737366, 4.792528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094799, 0.354704, 0.930160,
		0.958361, 0.220308, -0.181684,
		-0.269366, 0.908652, -0.319050,
		4.948632, 3.009961, 4.696813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.737989, 2.885634, 5.013074>,  <5.137188, 2.373905, 4.920148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.737989, 2.885634, 5.013074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.385792, 3.075050, 5.004200>,  <5.174473, 3.188700, 4.998876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.385792, 3.075050, 5.004200>,  <5.737989, 2.885634, 5.013074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.385792, 3.075050, 5.004200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129643, 0.285542, 0.949557,
		0.455988, 0.833202, -0.312809,
		-0.880493, 0.473540, -0.022185,
		5.121644, 3.217112, 4.997544>
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
