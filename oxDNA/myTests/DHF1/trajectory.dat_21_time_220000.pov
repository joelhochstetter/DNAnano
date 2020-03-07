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
	<5.421573, 2.259912, 1.060636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.676151, 1.953201, 1.094081>,  <5.828898, 1.769175, 1.114147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.676151, 1.953201, 1.094081>,  <5.421573, 2.259912, 1.060636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.676151, 1.953201, 1.094081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618174, -0.571904, -0.539246,
		0.461299, 0.291515, -0.837987,
		0.636447, -0.766775, 0.083612,
		5.867085, 1.723169, 1.119164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.609390, 1.985091, 0.382281>,  <5.421573, 2.259912, 1.060636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.609390, 1.985091, 0.382281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.607897, 1.717567, 0.679651>,  <5.607001, 1.557053, 0.858074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.607897, 1.717567, 0.679651>,  <5.609390, 1.985091, 0.382281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.607897, 1.717567, 0.679651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662091, -0.555488, -0.503059,
		0.749414, -0.494094, -0.440738,
		-0.003734, -0.668809, 0.743425,
		5.606777, 1.516925, 0.902679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.517984, 1.361527, -0.026133>,  <5.609390, 1.985091, 0.382281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.517984, 1.361527, -0.026133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.391529, 1.264240, 0.340670>,  <5.315656, 1.205868, 0.560751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.391529, 1.264240, 0.340670>,  <5.517984, 1.361527, -0.026133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.391529, 1.264240, 0.340670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752993, -0.523653, -0.398483,
		0.577112, -0.816476, -0.017595,
		-0.316138, -0.243218, 0.917007,
		5.296688, 1.191275, 0.615772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.345522, 0.667915, -0.081578>,  <5.517984, 1.361527, -0.026133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.345522, 0.667915, -0.081578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163752, 0.820442, 0.240439>,  <5.054689, 0.911959, 0.433649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163752, 0.820442, 0.240439>,  <5.345522, 0.667915, -0.081578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.163752, 0.820442, 0.240439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828229, -0.513560, -0.224259,
		0.327923, -0.768669, 0.549195,
		-0.454426, 0.381319, 0.805042,
		5.027424, 0.934838, 0.481951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.723486, 0.423696, -0.108514>,  <5.345522, 0.667915, -0.081578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.723486, 0.423696, -0.108514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652437, 0.617790, 0.233947>,  <4.609808, 0.734247, 0.439424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652437, 0.617790, 0.233947>,  <4.723486, 0.423696, -0.108514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.652437, 0.617790, 0.233947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851393, -0.512081, 0.113593,
		0.493539, -0.708745, 0.504083,
		-0.177623, 0.485235, 0.856152,
		4.599151, 0.763361, 0.490793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.615170, -0.089463, 0.433436>,  <4.723486, 0.423696, -0.108514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.615170, -0.089463, 0.433436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.421118, 0.255875, 0.488988>,  <4.304687, 0.463077, 0.522318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.421118, 0.255875, 0.488988>,  <4.615170, -0.089463, 0.433436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.421118, 0.255875, 0.488988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858303, -0.500504, 0.113187,
		0.167228, -0.064289, 0.983820,
		-0.485129, 0.863344, 0.138878,
		4.275579, 0.514878, 0.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.190417, -0.279254, 0.917348>,  <4.615170, -0.089463, 0.433436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.190417, -0.279254, 0.917348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027378, 0.026398, 0.717360>,  <3.929554, 0.209789, 0.597368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027378, 0.026398, 0.717360>,  <4.190417, -0.279254, 0.917348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.027378, 0.026398, 0.717360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818501, -0.548472, -0.170981,
		-0.404870, 0.339533, 0.848998,
		-0.407598, 0.764130, -0.499968,
		3.905099, 0.255637, 0.567370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.955104, -0.955783, 1.205143>,  <4.190417, -0.279254, 0.917348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.955104, -0.955783, 1.205143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.846724, -0.860550, 0.832069>,  <3.781695, -0.803410, 0.608225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.846724, -0.860550, 0.832069>,  <3.955104, -0.955783, 1.205143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.846724, -0.860550, 0.832069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383667, -0.861929, -0.331479,
		-0.882828, -0.447655, 0.142195,
		-0.270950, 0.238084, -0.932686,
		3.765438, -0.789125, 0.552263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.409114, 6.122771, 1.117426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.344318, 5.947245, 0.763884>,  <2.305441, 5.841928, 0.551758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.344318, 5.947245, 0.763884>,  <2.409114, 6.122771, 1.117426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.344318, 5.947245, 0.763884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098795, -0.898396, 0.427930,
		-0.981835, -0.018001, 0.188883,
		-0.161988, -0.438817, -0.883855,
		2.295722, 5.815599, 0.498727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724467, 5.839769, 1.047338>,  <2.409114, 6.122771, 1.117426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724467, 5.839769, 1.047338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005974, 5.611992, 0.877421>,  <2.174878, 5.475326, 0.775472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005974, 5.611992, 0.877421>,  <1.724467, 5.839769, 1.047338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005974, 5.611992, 0.877421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202871, -0.734121, 0.648004,
		-0.680851, -0.369865, -0.632173,
		0.703765, -0.569443, -0.424792,
		2.217104, 5.441159, 0.749984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.497333, 5.091599, 0.724612>,  <1.724467, 5.839769, 1.047338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.497333, 5.091599, 0.724612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871212, 5.083220, 0.866543>,  <2.095539, 5.078192, 0.951701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871212, 5.083220, 0.866543>,  <1.497333, 5.091599, 0.724612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.871212, 5.083220, 0.866543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223059, -0.811794, 0.539662,
		0.276741, -0.583568, -0.763454,
		0.934697, -0.020949, 0.354827,
		2.151621, 5.076935, 0.972991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.709196, 4.448366, 0.642371>,  <1.497333, 5.091599, 0.724612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.709196, 4.448366, 0.642371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902264, 4.600170, 0.958093>,  <2.018104, 4.691253, 1.147526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902264, 4.600170, 0.958093>,  <1.709196, 4.448366, 0.642371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.902264, 4.600170, 0.958093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476994, -0.641929, 0.600337,
		0.734512, -0.666258, -0.128814,
		0.482669, 0.379511, 0.789305,
		2.047064, 4.714024, 1.194884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.993492, 3.913640, 1.111708>,  <1.709196, 4.448366, 0.642371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.993492, 3.913640, 1.111708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.897642, 4.253971, 1.298758>,  <1.840132, 4.458170, 1.410987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.897642, 4.253971, 1.298758>,  <1.993492, 3.913640, 1.111708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.897642, 4.253971, 1.298758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687505, -0.488793, 0.537046,
		0.685505, -0.192804, 0.702075,
		-0.239624, 0.850827, 0.467624,
		1.825755, 4.509219, 1.439045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.070992, 3.867498, 1.859879>,  <1.993492, 3.913640, 1.111708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.070992, 3.867498, 1.859879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.793180, 4.127304, 1.736097>,  <1.626494, 4.283188, 1.661829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.793180, 4.127304, 1.736097>,  <2.070992, 3.867498, 1.859879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.793180, 4.127304, 1.736097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682713, -0.459258, 0.568319,
		0.227013, 0.605981, 0.762399,
		-0.694528, 0.649515, -0.309454,
		1.584822, 4.322158, 1.643261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.920375, 4.381099, 2.342289>,  <2.070992, 3.867498, 1.859879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.920375, 4.381099, 2.342289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642630, 4.236732, 2.093259>,  <1.475982, 4.150113, 1.943841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642630, 4.236732, 2.093259>,  <1.920375, 4.381099, 2.342289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642630, 4.236732, 2.093259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363545, -0.570693, 0.736305,
		-0.621043, 0.737597, 0.265059,
		-0.694364, -0.360915, -0.622575,
		1.434320, 4.128458, 1.906487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235496, 4.426471, 2.439760>,  <1.920375, 4.381099, 2.342289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235496, 4.426471, 2.439760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.299854, 4.078518, 2.253247>,  <1.338469, 3.869746, 2.141340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.299854, 4.078518, 2.253247>,  <1.235496, 4.426471, 2.439760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.299854, 4.078518, 2.253247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412584, -0.488457, 0.768885,
		-0.896598, 0.068670, -0.437489,
		0.160895, -0.869881, -0.466281,
		1.348123, 3.817553, 2.113363>
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
