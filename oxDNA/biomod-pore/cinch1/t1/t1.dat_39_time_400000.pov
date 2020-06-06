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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.908855, 33.110264, 23.331787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785709, 33.135441, 22.952049>,  <42.711823, 33.150547, 22.724207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785709, 33.135441, 22.952049>,  <42.908855, 33.110264, 23.331787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785709, 33.135441, 22.952049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837246, 0.456033, 0.301750,
		0.451927, 0.887734, -0.087696,
		-0.307866, 0.062946, -0.949345,
		42.693348, 33.154324, 22.667246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788113, 33.773178, 23.169386>,  <42.908855, 33.110264, 23.331787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788113, 33.773178, 23.169386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563805, 33.526970, 22.947876>,  <42.429218, 33.379246, 22.814970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563805, 33.526970, 22.947876>,  <42.788113, 33.773178, 23.169386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563805, 33.526970, 22.947876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826096, 0.460911, 0.324231,
		0.055669, 0.639289, -0.766949,
		-0.560773, -0.615524, -0.553773,
		42.395573, 33.342312, 22.781744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250782, 34.051025, 23.397627>,  <42.788113, 33.773178, 23.169386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250782, 34.051025, 23.397627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097141, 33.786835, 23.139561>,  <42.004955, 33.628319, 22.984720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097141, 33.786835, 23.139561>,  <42.250782, 34.051025, 23.397627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097141, 33.786835, 23.139561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923018, 0.291679, 0.250921,
		0.022454, 0.691878, -0.721665,
		-0.384101, -0.660476, -0.645165,
		41.981911, 33.588692, 22.946011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777435, 34.332298, 22.913021>,  <42.250782, 34.051025, 23.397627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777435, 34.332298, 22.913021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706406, 33.957241, 23.032551>,  <41.663788, 33.732208, 23.104269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706406, 33.957241, 23.032551>,  <41.777435, 34.332298, 22.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706406, 33.957241, 23.032551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725419, 0.329907, 0.604093,
		-0.665007, -0.109500, -0.738767,
		-0.177576, -0.937642, 0.298823,
		41.653133, 33.675949, 23.122198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463264, 34.658241, 23.434105>,  <41.777435, 34.332298, 22.913021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463264, 34.658241, 23.434105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079269, 34.594624, 23.526299>,  <40.848873, 34.556454, 23.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079269, 34.594624, 23.526299>,  <41.463264, 34.658241, 23.434105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079269, 34.594624, 23.526299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141504, 0.434745, 0.889367,
		-0.241647, 0.886399, -0.394846,
		-0.959991, -0.159040, 0.230484,
		40.791271, 34.546913, 23.595444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217468, 35.194027, 23.893303>,  <41.463264, 34.658241, 23.434105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217468, 35.194027, 23.893303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976414, 34.880718, 23.954384>,  <40.831779, 34.692734, 23.991034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976414, 34.880718, 23.954384>,  <41.217468, 35.194027, 23.893303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976414, 34.880718, 23.954384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125831, 0.095694, 0.987426,
		-0.788032, 0.614275, 0.040890,
		-0.602638, -0.783268, 0.152705,
		40.795624, 34.645737, 24.000195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693176, 35.372883, 24.382959>,  <41.217468, 35.194027, 23.893303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693176, 35.372883, 24.382959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714264, 34.975990, 24.428017>,  <40.726917, 34.737854, 24.455051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714264, 34.975990, 24.428017>,  <40.693176, 35.372883, 24.382959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714264, 34.975990, 24.428017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149874, 0.119385, 0.981471,
		-0.987298, -0.034864, 0.155005,
		0.052723, -0.992236, 0.112644,
		40.730080, 34.678318, 24.461809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224873, 35.164406, 24.963705>,  <40.693176, 35.372883, 24.382959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224873, 35.164406, 24.963705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494652, 34.876720, 24.896946>,  <40.656521, 34.704109, 24.856892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494652, 34.876720, 24.896946>,  <40.224873, 35.164406, 24.963705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494652, 34.876720, 24.896946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254730, 0.014503, 0.966903,
		-0.692987, -0.694640, 0.192987,
		0.674449, -0.719211, -0.166895,
		40.696987, 34.660957, 24.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024548, 34.611423, 25.392986>,  <40.224873, 35.164406, 24.963705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024548, 34.611423, 25.392986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413895, 34.607925, 25.301350>,  <40.647503, 34.605827, 25.246368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413895, 34.607925, 25.301350>,  <40.024548, 34.611423, 25.392986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413895, 34.607925, 25.301350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229256, 0.038027, 0.972623,
		0.000198, -0.999238, 0.039021,
		0.973366, -0.008753, -0.229089,
		40.705906, 34.605301, 25.232622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275208, 34.260860, 25.894924>,  <40.024548, 34.611423, 25.392986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275208, 34.260860, 25.894924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592461, 34.458973, 25.753139>,  <40.782814, 34.577839, 25.668070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592461, 34.458973, 25.753139>,  <40.275208, 34.260860, 25.894924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592461, 34.458973, 25.753139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263266, 0.246016, 0.932828,
		0.549211, -0.833173, 0.064733,
		0.793132, 0.495277, -0.354460,
		40.830399, 34.607555, 25.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859829, 33.976391, 26.279446>,  <40.275208, 34.260860, 25.894924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859829, 33.976391, 26.279446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957691, 34.339325, 26.142689>,  <41.016407, 34.557083, 26.060635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957691, 34.339325, 26.142689>,  <40.859829, 33.976391, 26.279446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957691, 34.339325, 26.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317398, 0.258236, 0.912454,
		0.916189, -0.331753, -0.224806,
		0.244657, 0.907333, -0.341891,
		41.031090, 34.611526, 26.040121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494381, 34.105412, 26.612074>,  <40.859829, 33.976391, 26.279446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494381, 34.105412, 26.612074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356747, 34.455528, 26.476154>,  <41.274166, 34.665600, 26.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356747, 34.455528, 26.476154>,  <41.494381, 34.105412, 26.612074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356747, 34.455528, 26.476154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345573, 0.454548, 0.820954,
		0.873032, 0.165053, -0.458882,
		-0.344085, 0.875296, -0.339797,
		41.253521, 34.718117, 26.374216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037117, 34.625080, 26.707346>,  <41.494381, 34.105412, 26.612074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037117, 34.625080, 26.707346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695419, 34.829128, 26.667271>,  <41.490402, 34.951557, 26.643225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695419, 34.829128, 26.667271>,  <42.037117, 34.625080, 26.707346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695419, 34.829128, 26.667271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165202, 0.449100, 0.878076,
		0.492922, 0.733541, -0.467916,
		-0.854246, 0.510124, -0.100189,
		41.439144, 34.982166, 26.637215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206070, 35.182663, 27.037279>,  <42.037117, 34.625080, 26.707346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206070, 35.182663, 27.037279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807255, 35.213303, 27.034603>,  <41.567966, 35.231686, 27.032997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807255, 35.213303, 27.034603>,  <42.206070, 35.182663, 27.037279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807255, 35.213303, 27.034603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023223, 0.382896, 0.923500,
		0.073305, 0.920610, -0.383541,
		-0.997039, 0.076604, -0.006689,
		41.508144, 35.236282, 27.032597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994617, 35.919155, 27.190870>,  <42.206070, 35.182663, 27.037279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994617, 35.919155, 27.190870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681644, 35.691986, 27.293060>,  <41.493862, 35.555687, 27.354374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681644, 35.691986, 27.293060>,  <41.994617, 35.919155, 27.190870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681644, 35.691986, 27.293060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008763, 0.400165, 0.916401,
		-0.622673, 0.719261, -0.308125,
		-0.782433, -0.567918, 0.255475,
		41.446915, 35.521610, 27.369703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592472, 36.367706, 27.381037>,  <41.994617, 35.919155, 27.190870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592472, 36.367706, 27.381037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459675, 36.031578, 27.552448>,  <41.379997, 35.829899, 27.655294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459675, 36.031578, 27.552448>,  <41.592472, 36.367706, 27.381037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459675, 36.031578, 27.552448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047004, 0.468468, 0.882229,
		-0.942110, 0.272752, -0.195026,
		-0.331993, -0.840323, 0.428528,
		41.360077, 35.779480, 27.681007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042347, 36.592869, 27.862099>,  <41.592472, 36.367706, 27.381037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042347, 36.592869, 27.862099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178421, 36.236240, 27.981678>,  <41.260067, 36.022263, 28.053427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178421, 36.236240, 27.981678>,  <41.042347, 36.592869, 27.862099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178421, 36.236240, 27.981678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031989, 0.306754, 0.951251,
		-0.939815, -0.333163, 0.075832,
		0.340184, -0.891574, 0.298949,
		41.280476, 35.968769, 28.071363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620243, 36.482178, 28.397408>,  <41.042347, 36.592869, 27.862099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620243, 36.482178, 28.397408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899166, 36.207596, 28.479908>,  <41.066521, 36.042847, 28.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899166, 36.207596, 28.479908>,  <40.620243, 36.482178, 28.397408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899166, 36.207596, 28.479908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088581, 0.203011, 0.975161,
		-0.711273, -0.698261, 0.080755,
		0.697312, -0.686453, 0.206249,
		41.108360, 36.001659, 28.541782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488308, 36.111759, 28.944889>,  <40.620243, 36.482178, 28.397408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488308, 36.111759, 28.944889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883236, 36.049686, 28.931522>,  <41.120193, 36.012444, 28.923502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883236, 36.049686, 28.931522>,  <40.488308, 36.111759, 28.944889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883236, 36.049686, 28.931522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054364, 0.132765, 0.989655,
		-0.149144, -0.978923, 0.139518,
		0.987320, -0.155185, -0.033417,
		41.179432, 36.003132, 28.921497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672859, 35.583061, 29.508961>,  <40.488308, 36.111759, 28.944889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672859, 35.583061, 29.508961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012562, 35.777561, 29.426662>,  <41.216381, 35.894260, 29.377283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012562, 35.777561, 29.426662>,  <40.672859, 35.583061, 29.508961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012562, 35.777561, 29.426662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190751, 0.080793, 0.978308,
		0.492324, -0.870077, -0.024139,
		0.849254, 0.486249, -0.205744,
		41.267338, 35.923435, 29.364939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146046, 35.254063, 29.964558>,  <40.672859, 35.583061, 29.508961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146046, 35.254063, 29.964558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278973, 35.618546, 29.867172>,  <41.358730, 35.837234, 29.808741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278973, 35.618546, 29.867172>,  <41.146046, 35.254063, 29.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278973, 35.618546, 29.867172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153676, 0.202374, 0.967176,
		0.930564, -0.358823, -0.072778,
		0.332316, 0.911203, -0.243464,
		41.378666, 35.891907, 29.794132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705402, 35.229336, 30.402847>,  <41.146046, 35.254063, 29.964558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705402, 35.229336, 30.402847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598476, 35.601303, 30.301815>,  <41.534321, 35.824482, 30.241196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598476, 35.601303, 30.301815>,  <41.705402, 35.229336, 30.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598476, 35.601303, 30.301815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185633, 0.207514, 0.960458,
		0.945561, 0.303629, 0.117153,
		-0.267312, 0.929918, -0.252580,
		41.518284, 35.880280, 30.226042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753387, 35.597679, 31.040745>,  <41.705402, 35.229336, 30.402847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753387, 35.597679, 31.040745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555977, 35.868114, 30.821899>,  <41.437531, 36.030376, 30.690592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555977, 35.868114, 30.821899>,  <41.753387, 35.597679, 31.040745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555977, 35.868114, 30.821899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257368, 0.487361, 0.834411,
		0.830776, 0.552617, -0.066524,
		-0.493531, 0.676087, -0.547114,
		41.407917, 36.070942, 30.657764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954948, 36.329777, 31.311255>,  <41.753387, 35.597679, 31.040745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954948, 36.329777, 31.311255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596554, 36.344341, 31.134216>,  <41.381519, 36.353081, 31.027994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596554, 36.344341, 31.134216>,  <41.954948, 36.329777, 31.311255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596554, 36.344341, 31.134216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402314, 0.355452, 0.843681,
		0.188038, 0.933985, -0.303831,
		-0.895983, 0.036409, -0.442593,
		41.327759, 36.355263, 31.001438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667179, 36.956802, 31.563248>,  <41.954948, 36.329777, 31.311255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667179, 36.956802, 31.563248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365654, 36.735718, 31.421101>,  <41.184738, 36.603069, 31.335814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365654, 36.735718, 31.421101>,  <41.667179, 36.956802, 31.563248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365654, 36.735718, 31.421101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554563, 0.245031, 0.795248,
		-0.352465, 0.796538, -0.491218,
		-0.753809, -0.552709, -0.355365,
		41.139511, 36.569904, 31.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113144, 37.362556, 31.822893>,  <41.667179, 36.956802, 31.563248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113144, 37.362556, 31.822893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931675, 37.023685, 31.712288>,  <40.822792, 36.820362, 31.645924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931675, 37.023685, 31.712288>,  <41.113144, 37.362556, 31.822893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931675, 37.023685, 31.712288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673807, 0.123023, 0.728595,
		-0.583234, 0.516864, -0.626649,
		-0.453677, -0.847182, -0.276515,
		40.795570, 36.769531, 31.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430859, 37.474827, 31.610609>,  <41.113144, 37.362556, 31.822893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430859, 37.474827, 31.610609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481049, 37.110069, 31.766922>,  <40.511162, 36.891216, 31.860710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481049, 37.110069, 31.766922>,  <40.430859, 37.474827, 31.610609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481049, 37.110069, 31.766922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616555, 0.236919, 0.750819,
		-0.777249, -0.335147, -0.532504,
		0.125474, -0.911892, 0.390782,
		40.518692, 36.836502, 31.884157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160896, 38.038464, 32.004646>,  <40.430859, 37.474827, 31.610609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160896, 38.038464, 32.004646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376869, 37.899899, 32.311493>,  <40.506454, 37.816761, 32.495602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376869, 37.899899, 32.311493>,  <40.160896, 38.038464, 32.004646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376869, 37.899899, 32.311493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697871, 0.325300, 0.638088,
		-0.470586, -0.879874, -0.066112,
		0.539930, -0.346412, 0.767120,
		40.538849, 37.795975, 32.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789455, 37.592918, 32.443966>,  <40.160896, 38.038464, 32.004646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789455, 37.592918, 32.443966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088882, 37.762989, 32.647480>,  <40.268539, 37.865032, 32.769588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088882, 37.762989, 32.647480>,  <39.789455, 37.592918, 32.443966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088882, 37.762989, 32.647480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662140, 0.439090, 0.607264,
		0.034789, -0.791471, 0.610215,
		0.748572, 0.425174, 0.508790,
		40.313454, 37.890541, 32.800117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740849, 37.426483, 33.075329>,  <39.789455, 37.592918, 32.443966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740849, 37.426483, 33.075329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951584, 37.765991, 33.093365>,  <40.078026, 37.969696, 33.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951584, 37.765991, 33.093365>,  <39.740849, 37.426483, 33.075329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951584, 37.765991, 33.093365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615916, 0.344672, 0.708413,
		0.585737, -0.400991, 0.704357,
		0.526839, 0.848768, 0.045089,
		40.109634, 38.020622, 33.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759071, 36.881504, 33.668407>,  <39.740849, 37.426483, 33.075329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759071, 36.881504, 33.668407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469631, 37.123615, 33.801094>,  <39.295967, 37.268883, 33.880707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469631, 37.123615, 33.801094>,  <39.759071, 36.881504, 33.668407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469631, 37.123615, 33.801094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383126, 0.047522, -0.922473,
		-0.574120, -0.794591, 0.197512,
		-0.723603, 0.605282, 0.331712,
		39.252552, 37.305199, 33.900608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119499, 36.634224, 33.364887>,  <39.759071, 36.881504, 33.668407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119499, 36.634224, 33.364887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068058, 37.027752, 33.414780>,  <39.037193, 37.263870, 33.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068058, 37.027752, 33.414780>,  <39.119499, 36.634224, 33.364887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068058, 37.027752, 33.414780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559140, 0.031943, -0.828458,
		-0.819039, -0.176284, 0.545985,
		-0.128604, 0.983821, 0.124730,
		39.029476, 37.322899, 33.452198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409004, 36.882393, 33.523449>,  <39.119499, 36.634224, 33.364887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409004, 36.882393, 33.523449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624741, 37.141750, 33.308525>,  <38.754181, 37.297363, 33.179573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624741, 37.141750, 33.308525>,  <38.409004, 36.882393, 33.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624741, 37.141750, 33.308525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624855, -0.119584, -0.771528,
		-0.564505, 0.751857, 0.340654,
		0.539342, 0.648391, -0.537308,
		38.786545, 37.336269, 33.147331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537373, 36.772232, 32.744247>,  <38.409004, 36.882393, 33.523449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537373, 36.772232, 32.744247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593586, 37.049095, 32.461075>,  <38.627316, 37.215214, 32.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593586, 37.049095, 32.461075>,  <38.537373, 36.772232, 32.744247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593586, 37.049095, 32.461075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679603, -0.452534, -0.577367,
		-0.719993, 0.562249, 0.406799,
		0.140534, 0.692162, -0.707928,
		38.635746, 37.256744, 32.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866455, 37.106583, 32.471428>,  <38.537373, 36.772232, 32.744247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866455, 37.106583, 32.471428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132942, 37.078842, 32.174416>,  <38.292835, 37.062199, 31.996208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132942, 37.078842, 32.174416>,  <37.866455, 37.106583, 32.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132942, 37.078842, 32.174416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721543, -0.311619, -0.618280,
		-0.188506, 0.947673, -0.257647,
		0.666215, -0.069354, -0.742528,
		38.332806, 37.058037, 31.951656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410488, 36.979290, 31.854586>,  <37.866455, 37.106583, 32.471428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410488, 36.979290, 31.854586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780651, 36.909092, 31.720234>,  <38.002750, 36.866974, 31.639622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780651, 36.909092, 31.720234>,  <37.410488, 36.979290, 31.854586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780651, 36.909092, 31.720234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378380, -0.378756, -0.844614,
		0.021005, 0.908706, -0.416908,
		0.925412, -0.175491, -0.335881,
		38.058273, 36.856445, 31.619471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605000, 37.255939, 31.084492>,  <37.410488, 36.979290, 31.854586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605000, 37.255939, 31.084492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838764, 36.951981, 31.198353>,  <37.979023, 36.769608, 31.266670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838764, 36.951981, 31.198353>,  <37.605000, 37.255939, 31.084492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838764, 36.951981, 31.198353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335959, -0.545895, -0.767548,
		0.738647, 0.352929, -0.574318,
		0.584407, -0.759895, 0.284654,
		38.014088, 36.724010, 31.283749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120098, 37.117340, 30.644278>,  <37.605000, 37.255939, 31.084492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120098, 37.117340, 30.644278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026707, 36.780071, 30.838001>,  <37.970673, 36.577709, 30.954235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026707, 36.780071, 30.838001>,  <38.120098, 37.117340, 30.644278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026707, 36.780071, 30.838001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192691, -0.448074, -0.872983,
		0.953078, -0.297146, -0.057855,
		-0.233480, -0.843169, 0.484307,
		37.956661, 36.527122, 30.983294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376579, 36.685337, 30.193731>,  <38.120098, 37.117340, 30.644278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376579, 36.685337, 30.193731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169861, 36.446804, 30.439434>,  <38.045830, 36.303684, 30.586855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169861, 36.446804, 30.439434>,  <38.376579, 36.685337, 30.193731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169861, 36.446804, 30.439434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160902, -0.637052, -0.753840,
		0.840854, -0.488414, 0.233272,
		-0.516793, -0.596335, 0.614255,
		38.014824, 36.267902, 30.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643997, 35.982903, 30.130602>,  <38.376579, 36.685337, 30.193731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643997, 35.982903, 30.130602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270222, 35.965786, 30.272015>,  <38.045956, 35.955517, 30.356863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270222, 35.965786, 30.272015>,  <38.643997, 35.982903, 30.130602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270222, 35.965786, 30.272015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213788, -0.726550, -0.653009,
		0.284802, -0.685781, 0.669771,
		-0.934443, -0.042789, 0.353534,
		37.989887, 35.952950, 30.378075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585148, 35.336750, 30.084188>,  <38.643997, 35.982903, 30.130602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585148, 35.336750, 30.084188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211124, 35.464527, 30.145660>,  <37.986710, 35.541195, 30.182543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211124, 35.464527, 30.145660>,  <38.585148, 35.336750, 30.084188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211124, 35.464527, 30.145660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324550, -0.597099, -0.733580,
		-0.142574, -0.735819, 0.661999,
		-0.935061, 0.319441, 0.153679,
		37.930607, 35.560360, 30.191765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109661, 34.720127, 30.160398>,  <38.585148, 35.336750, 30.084188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109661, 34.720127, 30.160398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861477, 35.018295, 30.062935>,  <37.712566, 35.197197, 30.004457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861477, 35.018295, 30.062935>,  <38.109661, 34.720127, 30.160398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861477, 35.018295, 30.062935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342168, -0.536878, -0.771157,
		-0.705653, -0.395103, 0.588173,
		-0.620464, 0.745423, -0.243658,
		37.675339, 35.241920, 29.989838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644104, 34.374435, 29.859783>,  <38.109661, 34.720127, 30.160398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644104, 34.374435, 29.859783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583103, 34.749592, 29.735134>,  <37.546501, 34.974686, 29.660345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583103, 34.749592, 29.735134>,  <37.644104, 34.374435, 29.859783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583103, 34.749592, 29.735134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404682, -0.346927, -0.846094,
		-0.901652, -0.002922, 0.432453,
		-0.152502, 0.937888, -0.311624,
		37.537354, 35.030956, 29.641647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963955, 34.436039, 29.529739>,  <37.644104, 34.374435, 29.859783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963955, 34.436039, 29.529739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178761, 34.735413, 29.374065>,  <37.307644, 34.915035, 29.280661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178761, 34.735413, 29.374065>,  <36.963955, 34.436039, 29.529739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178761, 34.735413, 29.374065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268764, -0.285514, -0.919917,
		-0.799612, 0.598609, 0.047826,
		0.537016, 0.748431, -0.389185,
		37.339867, 34.959942, 29.257309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534756, 34.698227, 28.969015>,  <36.963955, 34.436039, 29.529739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534756, 34.698227, 28.969015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907158, 34.816696, 28.883690>,  <37.130600, 34.887779, 28.832495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907158, 34.816696, 28.883690>,  <36.534756, 34.698227, 28.969015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907158, 34.816696, 28.883690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143617, -0.240029, -0.960084,
		-0.335555, 0.924482, -0.180933,
		0.931009, 0.296176, -0.213314,
		37.186462, 34.905548, 28.819696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505280, 35.073551, 28.309877>,  <36.534756, 34.698227, 28.969015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505280, 35.073551, 28.309877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879932, 34.935711, 28.335091>,  <37.104725, 34.853004, 28.350220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879932, 34.935711, 28.335091>,  <36.505280, 35.073551, 28.309877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879932, 34.935711, 28.335091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069336, 0.005980, -0.997575,
		0.343390, 0.938730, 0.029495,
		0.936630, -0.344603, 0.063034,
		37.160923, 34.832329, 28.354000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852470, 35.475544, 27.871334>,  <36.505280, 35.073551, 28.309877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852470, 35.475544, 27.871334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105255, 35.171734, 27.932976>,  <37.256927, 34.989449, 27.969961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105255, 35.171734, 27.932976>,  <36.852470, 35.475544, 27.871334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105255, 35.171734, 27.932976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192983, -0.038355, -0.980452,
		0.750587, 0.649348, 0.122336,
		0.631963, -0.759523, 0.154102,
		37.294846, 34.943878, 27.979206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421398, 35.669357, 27.442820>,  <36.852470, 35.475544, 27.871334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421398, 35.669357, 27.442820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477806, 35.280411, 27.517239>,  <37.511650, 35.047043, 27.561890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477806, 35.280411, 27.517239>,  <37.421398, 35.669357, 27.442820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477806, 35.280411, 27.517239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302900, -0.136533, -0.943191,
		0.942530, 0.189366, 0.275276,
		0.141024, -0.972368, 0.186046,
		37.520115, 34.988701, 27.573051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932953, 35.598000, 27.050257>,  <37.421398, 35.669357, 27.442820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932953, 35.598000, 27.050257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 35.216301, 27.108921>,  <37.766186, 34.987282, 27.144119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 35.216301, 27.108921>,  <37.932953, 35.598000, 27.050257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828724, 35.216301, 27.108921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302900, -0.225039, -0.926072,
		0.916709, -0.196883, 0.347681,
		-0.260570, -0.954251, 0.146659,
		37.750553, 34.930027, 27.152918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494324, 35.256992, 26.844538>,  <37.932953, 35.598000, 27.050257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494324, 35.256992, 26.844538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186035, 35.003468, 26.818367>,  <38.001064, 34.851353, 26.802664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186035, 35.003468, 26.818367>,  <38.494324, 35.256992, 26.844538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186035, 35.003468, 26.818367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260918, -0.220252, -0.939899,
		0.581305, -0.741469, 0.335124,
		-0.770718, -0.633808, -0.065429,
		37.954819, 34.813324, 26.798738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718712, 34.609879, 26.504528>,  <38.494324, 35.256992, 26.844538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718712, 34.609879, 26.504528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323597, 34.569683, 26.456902>,  <38.086529, 34.545567, 26.428326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323597, 34.569683, 26.456902>,  <38.718712, 34.609879, 26.504528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323597, 34.569683, 26.456902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145753, -0.325957, -0.934081,
		0.055051, -0.940029, 0.336623,
		-0.987788, -0.100486, -0.119068,
		38.027260, 34.539539, 26.421181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666950, 33.990799, 26.158710>,  <38.718712, 34.609879, 26.504528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666950, 33.990799, 26.158710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333103, 34.193180, 26.071602>,  <38.132797, 34.314610, 26.019337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333103, 34.193180, 26.071602>,  <38.666950, 33.990799, 26.158710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333103, 34.193180, 26.071602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128219, -0.206041, -0.970106,
		-0.535703, -0.837588, 0.107092,
		-0.834615, 0.505957, -0.217772,
		38.082718, 34.344967, 26.006269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263096, 33.481316, 25.846848>,  <38.666950, 33.990799, 26.158710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263096, 33.481316, 25.846848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141582, 33.843891, 25.729485>,  <38.068676, 34.061436, 25.659067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141582, 33.843891, 25.729485>,  <38.263096, 33.481316, 25.846848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141582, 33.843891, 25.729485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340650, -0.184266, -0.921956,
		-0.889761, -0.380022, -0.252802,
		-0.303781, 0.906438, -0.293407,
		38.050449, 34.115822, 25.641462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778072, 33.430035, 25.242882>,  <38.263096, 33.481316, 25.846848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778072, 33.430035, 25.242882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945198, 33.793079, 25.226528>,  <38.045475, 34.010906, 25.216717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945198, 33.793079, 25.226528>,  <37.778072, 33.430035, 25.242882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945198, 33.793079, 25.226528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320749, -0.189460, -0.928022,
		-0.850028, 0.374632, -0.370275,
		0.417819, 0.907610, -0.040884,
		38.070545, 34.065361, 25.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980267, 33.202492, 24.687817>,  <37.778072, 33.430035, 25.242882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980267, 33.202492, 24.687817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136314, 33.564720, 24.754456>,  <38.229942, 33.782055, 24.794439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136314, 33.564720, 24.754456>,  <37.980267, 33.202492, 24.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136314, 33.564720, 24.754456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347789, 0.022608, -0.937300,
		-0.852556, 0.423597, -0.306127,
		0.390117, 0.905569, 0.166598,
		38.253349, 33.836391, 24.804436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708210, 33.594208, 24.103113>,  <37.980267, 33.202492, 24.687817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708210, 33.594208, 24.103113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033520, 33.768696, 24.257149>,  <38.228706, 33.873386, 24.349571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033520, 33.768696, 24.257149>,  <37.708210, 33.594208, 24.103113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033520, 33.768696, 24.257149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337460, 0.185550, -0.922871,
		-0.474026, 0.880503, 0.003697,
		0.813277, 0.436217, 0.385090,
		38.277504, 33.899563, 24.372675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813744, 34.219078, 23.721048>,  <37.708210, 33.594208, 24.103113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813744, 34.219078, 23.721048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181988, 34.168365, 23.868778>,  <38.402935, 34.137936, 23.957417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181988, 34.168365, 23.868778>,  <37.813744, 34.219078, 23.721048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181988, 34.168365, 23.868778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384510, 0.129554, -0.913985,
		0.068031, 0.983434, 0.168018,
		0.920611, -0.126784, 0.369326,
		38.458172, 34.130329, 23.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339638, 34.815903, 23.537800>,  <37.813744, 34.219078, 23.721048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339638, 34.815903, 23.537800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508881, 34.455574, 23.576797>,  <38.610428, 34.239376, 23.600195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508881, 34.455574, 23.576797>,  <38.339638, 34.815903, 23.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508881, 34.455574, 23.576797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447691, 0.114297, -0.886854,
		0.787751, 0.418882, 0.451648,
		0.423109, -0.900818, 0.097492,
		38.635815, 34.185329, 23.606045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019482, 34.929298, 23.412378>,  <38.339638, 34.815903, 23.537800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019482, 34.929298, 23.412378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935692, 34.549610, 23.318478>,  <38.885418, 34.321796, 23.262136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935692, 34.549610, 23.318478>,  <39.019482, 34.929298, 23.412378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935692, 34.549610, 23.318478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291180, 0.168633, -0.941689,
		0.933454, -0.265612, 0.241069,
		-0.209472, -0.949217, -0.234752,
		38.872849, 34.264847, 23.248053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082218, 35.133678, 22.682365>,  <39.019482, 34.929298, 23.412378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082218, 35.133678, 22.682365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701405, 35.056183, 22.777107>,  <38.472916, 35.009686, 22.833952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701405, 35.056183, 22.777107>,  <39.082218, 35.133678, 22.682365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701405, 35.056183, 22.777107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303664, 0.693547, -0.653284,
		-0.037707, -0.693872, -0.719110,
		-0.952033, -0.193735, 0.236855,
		38.415794, 34.998062, 22.848164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671097, 34.991348, 22.016043>,  <39.082218, 35.133678, 22.682365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671097, 34.991348, 22.016043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414028, 35.089756, 22.306271>,  <38.259789, 35.148800, 22.480408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414028, 35.089756, 22.306271>,  <38.671097, 34.991348, 22.016043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414028, 35.089756, 22.306271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453362, 0.641317, -0.619011,
		-0.617609, -0.726765, -0.300618,
		-0.642667, 0.246018, 0.725571,
		38.221230, 35.163563, 22.523941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008503, 34.988113, 21.665468>,  <38.671097, 34.991348, 22.016043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008503, 34.988113, 21.665468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010365, 35.211140, 21.997517>,  <38.011482, 35.344955, 22.196745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010365, 35.211140, 21.997517>,  <38.008503, 34.988113, 21.665468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010365, 35.211140, 21.997517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589409, 0.672132, -0.448147,
		-0.807822, -0.487197, 0.331758,
		0.004649, 0.557564, 0.830121,
		38.011761, 35.378410, 22.246553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266483, 35.224026, 21.848555>,  <38.008503, 34.988113, 21.665468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266483, 35.224026, 21.848555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513245, 35.503536, 21.993412>,  <37.661301, 35.671242, 22.080326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513245, 35.503536, 21.993412>,  <37.266483, 35.224026, 21.848555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513245, 35.503536, 21.993412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632058, 0.714040, -0.301081,
		-0.468973, -0.043158, 0.882158,
		0.616902, 0.698774, 0.362144,
		37.698315, 35.713169, 22.102055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772430, 35.377506, 22.438913>,  <37.266483, 35.224026, 21.848555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772430, 35.377506, 22.438913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733444, 35.032665, 22.637825>,  <36.710052, 34.825760, 22.757172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733444, 35.032665, 22.637825>,  <36.772430, 35.377506, 22.438913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733444, 35.032665, 22.637825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410888, 0.489944, 0.768847,
		-0.906461, -0.129387, -0.401980,
		-0.097469, -0.862099, 0.497279,
		36.704205, 34.774036, 22.787008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059761, 35.518497, 22.736086>,  <36.772430, 35.377506, 22.438913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059761, 35.518497, 22.736086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922115, 35.696903, 23.066578>,  <35.839527, 35.803947, 23.264874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922115, 35.696903, 23.066578>,  <36.059761, 35.518497, 22.736086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922115, 35.696903, 23.066578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155959, -0.894900, 0.418127,
		0.925885, 0.015025, 0.377507,
		-0.344113, 0.446013, 0.826232,
		35.818882, 35.830708, 23.314447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284046, 35.164249, 23.295624>,  <36.059761, 35.518497, 22.736086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284046, 35.164249, 23.295624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963261, 35.347736, 23.448689>,  <35.770790, 35.457829, 23.540527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963261, 35.347736, 23.448689>,  <36.284046, 35.164249, 23.295624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963261, 35.347736, 23.448689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242439, -0.835376, 0.493325,
		0.545966, 0.302856, 0.781153,
		-0.801963, 0.458721, 0.382663,
		35.722672, 35.485352, 23.563488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311352, 34.928303, 23.977520>,  <36.284046, 35.164249, 23.295624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311352, 34.928303, 23.977520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946575, 35.084908, 23.928391>,  <35.727711, 35.178871, 23.898912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946575, 35.084908, 23.928391>,  <36.311352, 34.928303, 23.977520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946575, 35.084908, 23.928391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389311, -0.731008, 0.560415,
		0.129620, 0.558882, 0.819054,
		-0.911940, 0.391508, -0.122826,
		35.672993, 35.202358, 23.891542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911037, 35.033695, 24.720148>,  <36.311352, 34.928303, 23.977520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911037, 35.033695, 24.720148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655422, 34.996693, 24.414711>,  <35.502052, 34.974491, 24.231449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655422, 34.996693, 24.414711>,  <35.911037, 35.033695, 24.720148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655422, 34.996693, 24.414711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446610, -0.763631, 0.466269,
		-0.626238, 0.638991, 0.446672,
		-0.639035, -0.092507, -0.763595,
		35.463711, 34.968941, 24.185633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243671, 34.953568, 25.087465>,  <35.911037, 35.033695, 24.720148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243671, 34.953568, 25.087465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197750, 34.809334, 24.717213>,  <35.170197, 34.722794, 24.495060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197750, 34.809334, 24.717213>,  <35.243671, 34.953568, 25.087465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197750, 34.809334, 24.717213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409171, -0.831917, 0.374826,
		-0.905207, 0.421772, -0.052039,
		-0.114799, -0.360588, -0.925634,
		35.163311, 34.701157, 24.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610989, 34.594051, 25.179497>,  <35.243671, 34.953568, 25.087465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610989, 34.594051, 25.179497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796387, 34.442432, 24.859123>,  <34.907623, 34.351460, 24.666899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796387, 34.442432, 24.859123>,  <34.610989, 34.594051, 25.179497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796387, 34.442432, 24.859123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334875, -0.911782, 0.237723,
		-0.820386, 0.158029, -0.549540,
		0.463494, -0.379051, -0.800933,
		34.935436, 34.328716, 24.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175556, 34.046322, 25.027905>,  <34.610989, 34.594051, 25.179497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175556, 34.046322, 25.027905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507374, 33.962250, 24.820950>,  <34.706463, 33.911808, 24.696777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507374, 33.962250, 24.820950>,  <34.175556, 34.046322, 25.027905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507374, 33.962250, 24.820950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080144, -0.961688, 0.262171,
		-0.552666, -0.176016, -0.814604,
		0.829541, -0.210179, -0.517385,
		34.756237, 33.899197, 24.665733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984814, 33.466042, 24.824205>,  <34.175556, 34.046322, 25.027905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984814, 33.466042, 24.824205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374531, 33.471554, 24.734264>,  <34.608360, 33.474861, 24.680300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374531, 33.471554, 24.734264>,  <33.984814, 33.466042, 24.824205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374531, 33.471554, 24.734264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059943, -0.978005, 0.199782,
		-0.217155, -0.208125, -0.953692,
		0.974295, 0.013783, -0.224854,
		34.666821, 33.475689, 24.666809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107750, 32.920826, 24.348536>,  <33.984814, 33.466042, 24.824205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107750, 32.920826, 24.348536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464710, 32.982189, 24.518280>,  <34.678886, 33.019005, 24.620127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464710, 32.982189, 24.518280>,  <34.107750, 32.920826, 24.348536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464710, 32.982189, 24.518280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107999, -0.985717, 0.129219,
		0.438121, -0.069485, -0.896226,
		0.892405, 0.153405, 0.424359,
		34.732433, 33.028210, 24.645588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561687, 32.340679, 24.059925>,  <34.107750, 32.920826, 24.348536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561687, 32.340679, 24.059925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732967, 32.463684, 24.399826>,  <34.835735, 32.537487, 24.603767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732967, 32.463684, 24.399826>,  <34.561687, 32.340679, 24.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732967, 32.463684, 24.399826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012510, -0.938215, 0.345828,
		0.903597, -0.158715, -0.397898,
		0.428202, 0.307511, 0.849753,
		34.861427, 32.555939, 24.654753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003925, 31.822096, 24.210655>,  <34.561687, 32.340679, 24.059925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003925, 31.822096, 24.210655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978817, 31.998558, 24.568748>,  <34.963753, 32.104435, 24.783604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978817, 31.998558, 24.568748>,  <35.003925, 31.822096, 24.210655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978817, 31.998558, 24.568748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026489, -0.897422, 0.440378,
		0.997676, 0.003931, 0.068022,
		-0.062775, 0.441156, 0.895232,
		34.959984, 32.130905, 24.837318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604755, 31.610876, 24.718536>,  <35.003925, 31.822096, 24.210655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604755, 31.610876, 24.718536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294765, 31.711174, 24.950584>,  <35.108772, 31.771353, 25.089813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294765, 31.711174, 24.950584>,  <35.604755, 31.610876, 24.718536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294765, 31.711174, 24.950584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146709, -0.821474, 0.551052,
		0.614725, 0.512161, 0.599837,
		-0.774978, 0.250744, 0.580118,
		35.062271, 31.786398, 25.124620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727409, 31.198254, 25.299456>,  <35.604755, 31.610876, 24.718536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727409, 31.198254, 25.299456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361542, 31.339802, 25.377590>,  <35.142021, 31.424730, 25.424471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361542, 31.339802, 25.377590>,  <35.727409, 31.198254, 25.299456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361542, 31.339802, 25.377590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157738, -0.757442, 0.633561,
		0.372156, 0.548687, 0.748627,
		-0.914669, 0.353871, 0.195338,
		35.087143, 31.445963, 25.436192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697906, 31.227425, 25.982721>,  <35.727409, 31.198254, 25.299456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697906, 31.227425, 25.982721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330395, 31.192966, 25.828621>,  <35.109886, 31.172293, 25.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330395, 31.192966, 25.828621>,  <35.697906, 31.227425, 25.982721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330395, 31.192966, 25.828621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199735, -0.740330, 0.641887,
		-0.340508, 0.666702, 0.662995,
		-0.918782, -0.086144, -0.385251,
		35.054760, 31.167124, 25.713045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190098, 31.344942, 26.463991>,  <35.697906, 31.227425, 25.982721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190098, 31.344942, 26.463991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058601, 31.090675, 26.184605>,  <34.979702, 30.938116, 26.016973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058601, 31.090675, 26.184605>,  <35.190098, 31.344942, 26.463991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058601, 31.090675, 26.184605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156721, -0.692600, 0.704091,
		-0.931325, 0.340930, 0.128065,
		-0.328744, -0.635667, -0.698467,
		34.959980, 30.899975, 25.975065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612492, 31.089432, 26.808098>,  <35.190098, 31.344942, 26.463991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612492, 31.089432, 26.808098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672256, 30.817986, 26.520443>,  <34.708115, 30.655117, 26.347851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672256, 30.817986, 26.520443>,  <34.612492, 31.089432, 26.808098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672256, 30.817986, 26.520443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243669, -0.730140, 0.638374,
		-0.958281, 0.079852, -0.274448,
		0.149410, -0.678616, -0.719137,
		34.717079, 30.614401, 26.304703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038113, 30.568052, 26.849903>,  <34.612492, 31.089432, 26.808098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038113, 30.568052, 26.849903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339470, 30.407696, 26.641407>,  <34.520283, 30.311481, 26.516310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339470, 30.407696, 26.641407>,  <34.038113, 30.568052, 26.849903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339470, 30.407696, 26.641407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088532, -0.723616, 0.684502,
		-0.651585, -0.561844, -0.509675,
		0.753392, -0.400888, -0.521238,
		34.565487, 30.287428, 26.485035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867916, 29.856028, 26.966368>,  <34.038113, 30.568052, 26.849903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867916, 29.856028, 26.966368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241028, 29.849712, 26.822327>,  <34.464893, 29.845924, 26.735901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241028, 29.849712, 26.822327>,  <33.867916, 29.856028, 26.966368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241028, 29.849712, 26.822327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219654, -0.767215, 0.602606,
		-0.285790, -0.641196, -0.712174,
		0.932779, -0.015786, -0.360104,
		34.520863, 29.844976, 26.714296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959991, 29.237511, 26.651466>,  <33.867916, 29.856028, 26.966368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959991, 29.237511, 26.651466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329533, 29.352764, 26.752251>,  <34.551258, 29.421915, 26.812721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329533, 29.352764, 26.752251>,  <33.959991, 29.237511, 26.651466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329533, 29.352764, 26.752251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176759, -0.905042, 0.386854,
		0.339500, -0.312858, -0.887051,
		0.923848, 0.288131, 0.251962,
		34.606686, 29.439203, 26.827839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401318, 28.645441, 26.568687>,  <33.959991, 29.237511, 26.651466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401318, 28.645441, 26.568687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587765, 28.871136, 26.841267>,  <34.699635, 29.006554, 27.004814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587765, 28.871136, 26.841267>,  <34.401318, 28.645441, 26.568687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587765, 28.871136, 26.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259230, -0.823534, 0.504571,
		0.845893, -0.058538, -0.530131,
		0.466117, 0.564239, 0.681447,
		34.727600, 29.040407, 27.045700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852627, 28.207079, 26.773050>,  <34.401318, 28.645441, 26.568687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852627, 28.207079, 26.773050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896561, 28.484592, 27.057755>,  <34.922920, 28.651100, 27.228577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896561, 28.484592, 27.057755>,  <34.852627, 28.207079, 26.773050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896561, 28.484592, 27.057755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209020, -0.716201, 0.665858,
		0.971724, 0.075640, -0.223676,
		0.109831, 0.693783, 0.711760,
		34.929508, 28.692728, 27.271282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541237, 28.206442, 27.036644>,  <34.852627, 28.207079, 26.773050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541237, 28.206442, 27.036644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340740, 28.381607, 27.335171>,  <35.220444, 28.486706, 27.514288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340740, 28.381607, 27.335171>,  <35.541237, 28.206442, 27.036644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340740, 28.381607, 27.335171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190407, -0.785530, 0.588802,
		0.844100, 0.437235, 0.310356,
		-0.501239, 0.437913, 0.746319,
		35.190369, 28.512981, 27.559067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927731, 28.212740, 27.701424>,  <35.541237, 28.206442, 27.036644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927731, 28.212740, 27.701424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547695, 28.257046, 27.818089>,  <35.319675, 28.283628, 27.888088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547695, 28.257046, 27.818089>,  <35.927731, 28.212740, 27.701424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547695, 28.257046, 27.818089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141988, -0.678917, 0.720355,
		0.277805, 0.725812, 0.629303,
		-0.950086, 0.110765, 0.291663,
		35.262669, 28.290276, 27.905588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913998, 28.257944, 28.502748>,  <35.927731, 28.212740, 27.701424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913998, 28.257944, 28.502748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543518, 28.168949, 28.380989>,  <35.321232, 28.115553, 28.307934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543518, 28.168949, 28.380989>,  <35.913998, 28.257944, 28.502748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543518, 28.168949, 28.380989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106342, -0.620411, 0.777034,
		-0.361731, 0.752057, 0.550963,
		-0.926198, -0.222487, -0.304397,
		35.265659, 28.102203, 28.289671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572868, 28.331762, 29.035645>,  <35.913998, 28.257944, 28.502748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572868, 28.331762, 29.035645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335915, 28.084106, 28.829441>,  <35.193741, 27.935513, 28.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335915, 28.084106, 28.829441>,  <35.572868, 28.331762, 29.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335915, 28.084106, 28.829441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057990, -0.605436, 0.793779,
		-0.803567, 0.500115, 0.322746,
		-0.592383, -0.619138, -0.515510,
		35.158199, 27.898365, 28.674788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133110, 28.090662, 29.485809>,  <35.572868, 28.331762, 29.035645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133110, 28.090662, 29.485809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081959, 27.824764, 29.191391>,  <35.051270, 27.665226, 29.014740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081959, 27.824764, 29.191391>,  <35.133110, 28.090662, 29.485809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081959, 27.824764, 29.191391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225873, -0.703117, 0.674246,
		-0.965727, 0.252475, -0.060233,
		-0.127880, -0.664743, -0.736046,
		35.043594, 27.625341, 28.970577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477135, 27.897833, 29.540874>,  <35.133110, 28.090662, 29.485809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477135, 27.897833, 29.540874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670925, 27.596581, 29.362854>,  <34.787201, 27.415829, 29.256041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670925, 27.596581, 29.362854>,  <34.477135, 27.897833, 29.540874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670925, 27.596581, 29.362854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426214, -0.647495, 0.631737,
		-0.763951, -0.116376, -0.634693,
		0.484480, -0.753132, -0.445054,
		34.816269, 27.370642, 29.229338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968449, 27.382736, 29.451536>,  <34.477135, 27.897833, 29.540874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968449, 27.382736, 29.451536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317001, 27.197121, 29.387836>,  <34.526134, 27.085751, 29.349617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317001, 27.197121, 29.387836>,  <33.968449, 27.382736, 29.451536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317001, 27.197121, 29.387836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370901, -0.835571, 0.405283,
		-0.321132, -0.294091, -0.900214,
		0.871382, -0.464039, -0.159250,
		34.578415, 27.057909, 29.340061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855370, 26.775732, 29.033844>,  <33.968449, 27.382736, 29.451536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855370, 26.775732, 29.033844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191059, 26.708961, 29.240860>,  <34.392471, 26.668900, 29.365068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191059, 26.708961, 29.240860>,  <33.855370, 26.775732, 29.033844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191059, 26.708961, 29.240860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412212, -0.816009, 0.405230,
		0.354673, -0.553412, -0.753619,
		0.839219, -0.166927, 0.517539,
		34.442825, 26.658884, 29.396122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061073, 26.100660, 28.962805>,  <33.855370, 26.775732, 29.033844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061073, 26.100660, 28.962805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237896, 26.208687, 29.304951>,  <34.343990, 26.273502, 29.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237896, 26.208687, 29.304951>,  <34.061073, 26.100660, 28.962805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237896, 26.208687, 29.304951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302680, -0.852755, 0.425668,
		0.844378, -0.447070, -0.295218,
		0.442052, 0.270068, 0.855367,
		34.370510, 26.289707, 29.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399628, 25.467896, 29.183298>,  <34.061073, 26.100660, 28.962805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399628, 25.467896, 29.183298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343010, 25.702423, 29.502346>,  <34.309040, 25.843140, 29.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343010, 25.702423, 29.502346>,  <34.399628, 25.467896, 29.183298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343010, 25.702423, 29.502346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354442, -0.782331, 0.512180,
		0.924302, -0.210212, 0.318554,
		-0.141548, 0.586318, 0.797619,
		34.300545, 25.878319, 29.741632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343002, 24.957575, 29.650822>,  <34.399628, 25.467896, 29.183298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343002, 24.957575, 29.650822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230431, 25.264259, 29.881630>,  <34.162888, 25.448271, 30.020115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230431, 25.264259, 29.881630>,  <34.343002, 24.957575, 29.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230431, 25.264259, 29.881630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299484, -0.641466, 0.706279,
		0.911652, 0.025956, 0.410143,
		-0.281425, 0.766712, 0.577021,
		34.146004, 25.494272, 30.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543121, 24.823933, 30.275743>,  <34.343002, 24.957575, 29.650822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543121, 24.823933, 30.275743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249413, 25.087349, 30.341686>,  <34.073189, 25.245398, 30.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249413, 25.087349, 30.341686>,  <34.543121, 24.823933, 30.275743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249413, 25.087349, 30.341686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377297, -0.597758, 0.707342,
		0.564355, 0.457179, 0.687379,
		-0.734268, 0.658539, 0.164856,
		34.029133, 25.284910, 30.391144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478439, 24.846298, 30.988405>,  <34.543121, 24.823933, 30.275743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478439, 24.846298, 30.988405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140171, 25.036507, 30.891479>,  <33.937210, 25.150633, 30.833324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140171, 25.036507, 30.891479>,  <34.478439, 24.846298, 30.988405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140171, 25.036507, 30.891479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495314, -0.530207, 0.688146,
		0.198753, 0.701967, 0.683914,
		-0.845672, 0.475523, -0.242314,
		33.886471, 25.179163, 30.818785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053452, 24.896955, 31.590487>,  <34.478439, 24.846298, 30.988405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053452, 24.896955, 31.590487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774300, 24.963032, 31.311726>,  <33.606808, 25.002678, 31.144468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774300, 24.963032, 31.311726>,  <34.053452, 24.896955, 31.590487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774300, 24.963032, 31.311726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697518, -0.377627, 0.608988,
		-0.162570, 0.911104, 0.378764,
		-0.697882, 0.165192, -0.696902,
		33.564934, 25.012589, 31.102655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488266, 25.095299, 31.963192>,  <34.053452, 24.896955, 31.590487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488266, 25.095299, 31.963192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332191, 24.962753, 31.619576>,  <33.238544, 24.883226, 31.413406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332191, 24.962753, 31.619576>,  <33.488266, 25.095299, 31.963192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332191, 24.962753, 31.619576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778407, -0.379596, 0.499989,
		-0.491766, 0.863774, -0.109821,
		-0.390190, -0.331363, -0.859040,
		33.215134, 24.863344, 31.361864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845886, 25.222347, 31.991879>,  <33.488266, 25.095299, 31.963192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845886, 25.222347, 31.991879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857868, 24.926090, 31.723385>,  <32.865059, 24.748337, 31.562288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857868, 24.926090, 31.723385>,  <32.845886, 25.222347, 31.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857868, 24.926090, 31.723385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640937, -0.529536, 0.555691,
		-0.767009, 0.413572, -0.490566,
		0.029954, -0.740642, -0.671232,
		32.866856, 24.703897, 31.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063519, 25.166346, 31.826807>,  <32.845886, 25.222347, 31.991879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063519, 25.166346, 31.826807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281662, 24.845676, 31.728905>,  <32.412548, 24.653275, 31.670164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281662, 24.845676, 31.728905>,  <32.063519, 25.166346, 31.826807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281662, 24.845676, 31.728905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442216, -0.523235, 0.728471,
		-0.712059, -0.289044, -0.639864,
		0.545360, -0.801672, -0.244754,
		32.445271, 24.605175, 31.655479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592609, 24.692173, 31.739796>,  <32.063519, 25.166346, 31.826807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592609, 24.692173, 31.739796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926977, 24.476837, 31.782555>,  <32.127598, 24.347635, 31.808210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926977, 24.476837, 31.782555>,  <31.592609, 24.692173, 31.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926977, 24.476837, 31.782555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492997, -0.650870, 0.577341,
		-0.241227, -0.535312, -0.809475,
		0.835921, -0.538339, 0.106900,
		32.177753, 24.315334, 31.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268267, 24.031641, 32.115158>,  <31.592609, 24.692173, 31.739796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268267, 24.031641, 32.115158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662125, 23.967659, 32.087193>,  <31.898439, 23.929270, 32.070412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662125, 23.967659, 32.087193>,  <31.268267, 24.031641, 32.115158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662125, 23.967659, 32.087193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086512, -0.794980, 0.600435,
		-0.151623, -0.585167, -0.796612,
		0.984645, -0.159957, -0.069913,
		31.957518, 23.919672, 32.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409264, 23.329500, 31.974554>,  <31.268267, 24.031641, 32.115158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409264, 23.329500, 31.974554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725080, 23.477215, 32.170616>,  <31.914570, 23.565844, 32.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725080, 23.477215, 32.170616>,  <31.409264, 23.329500, 31.974554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725080, 23.477215, 32.170616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070135, -0.739166, 0.669862,
		0.609677, -0.563261, -0.557702,
		0.789541, 0.369285, 0.490157,
		31.961943, 23.587999, 32.317661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776810, 22.794846, 32.096710>,  <31.409264, 23.329500, 31.974554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776810, 22.794846, 32.096710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903597, 23.063229, 32.364845>,  <31.979670, 23.224258, 32.525726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903597, 23.063229, 32.364845>,  <31.776810, 22.794846, 32.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903597, 23.063229, 32.364845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174408, -0.653491, 0.736567,
		0.932262, -0.350379, -0.090115,
		0.316968, 0.670957, 0.670334,
		31.998688, 23.264515, 32.565945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051182, 22.399458, 32.500622>,  <31.776810, 22.794846, 32.096710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051182, 22.399458, 32.500622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954760, 22.728962, 32.705875>,  <31.896906, 22.926664, 32.829029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954760, 22.728962, 32.705875>,  <32.051182, 22.399458, 32.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954760, 22.728962, 32.705875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364923, -0.566861, 0.738580,
		0.899289, -0.009212, 0.437257,
		-0.241060, 0.823762, 0.513134,
		31.882442, 22.976091, 32.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353592, 22.350876, 33.159134>,  <32.051182, 22.399458, 32.500622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353592, 22.350876, 33.159134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998365, 22.533901, 33.141373>,  <31.785229, 22.643717, 33.130714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998365, 22.533901, 33.141373>,  <32.353592, 22.350876, 33.159134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998365, 22.533901, 33.141373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349768, -0.609835, 0.711171,
		0.298323, 0.647100, 0.701616,
		-0.888068, 0.457562, -0.044407,
		31.731945, 22.671169, 33.128052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977562, 22.350788, 33.889553>,  <32.353592, 22.350876, 33.159134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977562, 22.350788, 33.889553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715385, 22.365356, 33.587807>,  <31.558079, 22.374098, 33.406757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715385, 22.365356, 33.587807>,  <31.977562, 22.350788, 33.889553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715385, 22.365356, 33.587807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639605, -0.557929, 0.528791,
		-0.401623, 0.829089, 0.388986,
		-0.655442, 0.036423, -0.754367,
		31.518753, 22.376284, 33.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340195, 22.465546, 34.211887>,  <31.977562, 22.350788, 33.889553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340195, 22.465546, 34.211887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288437, 22.266682, 33.868706>,  <31.257381, 22.147364, 33.662796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288437, 22.266682, 33.868706>,  <31.340195, 22.465546, 34.211887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288437, 22.266682, 33.868706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704011, -0.563255, 0.432565,
		-0.698302, 0.659982, -0.277123,
		-0.129394, -0.497159, -0.857957,
		31.249619, 22.117535, 33.611320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702608, 22.434481, 34.162598>,  <31.340195, 22.465546, 34.211887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702608, 22.434481, 34.162598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854959, 22.126949, 33.957138>,  <30.946369, 21.942430, 33.833862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854959, 22.126949, 33.957138>,  <30.702608, 22.434481, 34.162598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854959, 22.126949, 33.957138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630866, -0.622212, 0.463530,
		-0.675974, 0.147496, -0.722014,
		0.380877, -0.768828, -0.513649,
		30.969223, 21.896301, 33.803043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848238, 22.898876, 34.720795>,  <30.702608, 22.434481, 34.162598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848238, 22.898876, 34.720795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970497, 23.164577, 34.993660>,  <31.043852, 23.323997, 35.157379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970497, 23.164577, 34.993660>,  <30.848238, 22.898876, 34.720795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970497, 23.164577, 34.993660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187450, 0.744407, -0.640874,
		-0.933511, 0.068009, 0.352040,
		0.305647, 0.664253, 0.682164,
		31.062191, 23.363853, 35.198311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305321, 23.361454, 34.936596>,  <30.848238, 22.898876, 34.720795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305321, 23.361454, 34.936596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661743, 23.540203, 34.968395>,  <30.875597, 23.647453, 34.987476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661743, 23.540203, 34.968395>,  <30.305321, 23.361454, 34.936596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661743, 23.540203, 34.968395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286326, 0.689324, -0.665470,
		-0.352183, 0.570208, 0.742179,
		0.891058, 0.446872, 0.079503,
		30.929060, 23.674265, 34.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041624, 24.086050, 34.886234>,  <30.305321, 23.361454, 34.936596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041624, 24.086050, 34.886234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439350, 24.047081, 34.869045>,  <30.677986, 24.023699, 34.858730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439350, 24.047081, 34.869045>,  <30.041624, 24.086050, 34.886234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439350, 24.047081, 34.869045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061357, 0.854084, -0.516503,
		0.087025, 0.510929, 0.855206,
		0.994315, -0.097422, -0.042977,
		30.737644, 24.017855, 34.856152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398733, 24.703911, 35.202503>,  <30.041624, 24.086050, 34.886234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398733, 24.703911, 35.202503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606609, 24.551777, 34.896492>,  <30.731335, 24.460497, 34.712887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606609, 24.551777, 34.896492>,  <30.398733, 24.703911, 35.202503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606609, 24.551777, 34.896492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099797, 0.862290, -0.496484,
		0.848507, 0.334364, 0.410166,
		0.519689, -0.380337, -0.765028,
		30.762516, 24.437675, 34.666985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948748, 25.194950, 35.040962>,  <30.398733, 24.703911, 35.202503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948748, 25.194950, 35.040962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850134, 24.980370, 34.718113>,  <30.790966, 24.851622, 34.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850134, 24.980370, 34.718113>,  <30.948748, 25.194950, 35.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850134, 24.980370, 34.718113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196760, 0.843185, -0.500324,
		0.948950, 0.035462, -0.313426,
		-0.246533, -0.536452, -0.807119,
		30.776175, 24.819433, 34.475979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197798, 25.010527, 35.771332>,  <30.948748, 25.194950, 35.040962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197798, 25.010527, 35.771332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327127, 24.841637, 35.432583>,  <31.404726, 24.740303, 35.229336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327127, 24.841637, 35.432583>,  <31.197798, 25.010527, 35.771332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327127, 24.841637, 35.432583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640195, 0.756644, -0.132820,
		0.696858, -0.499217, 0.514948,
		0.323326, -0.422223, -0.846869,
		31.424126, 24.714970, 35.178520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930712, 25.128052, 35.780415>,  <31.197798, 25.010527, 35.771332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930712, 25.128052, 35.780415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820101, 25.064796, 35.401253>,  <31.753735, 25.026842, 35.173756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820101, 25.064796, 35.401253>,  <31.930712, 25.128052, 35.780415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820101, 25.064796, 35.401253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388039, 0.884008, -0.260682,
		0.879181, -0.439909, -0.183087,
		-0.276527, -0.158141, -0.947905,
		31.737143, 25.017355, 35.116882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454559, 25.517380, 35.489109>,  <31.930712, 25.128052, 35.780415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454559, 25.517380, 35.489109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173851, 25.473248, 35.207588>,  <32.005424, 25.446768, 35.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173851, 25.473248, 35.207588>,  <32.454559, 25.517380, 35.489109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173851, 25.473248, 35.207588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066116, 0.973584, -0.218548,
		0.709324, -0.199904, -0.675942,
		-0.701775, -0.110331, -0.703803,
		31.963318, 25.440147, 34.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796032, 25.774323, 34.860916>,  <32.454559, 25.517380, 35.489109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796032, 25.774323, 34.860916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401501, 25.818863, 34.812321>,  <32.164783, 25.845587, 34.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401501, 25.818863, 34.812321>,  <32.796032, 25.774323, 34.860916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401501, 25.818863, 34.812321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145799, 0.933245, -0.328324,
		0.076817, -0.341547, -0.936720,
		-0.986327, 0.111352, -0.121486,
		32.105602, 25.852268, 34.775875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739529, 26.123695, 34.274994>,  <32.796032, 25.774323, 34.860916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739529, 26.123695, 34.274994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390511, 26.181892, 34.461540>,  <32.181099, 26.216810, 34.573467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390511, 26.181892, 34.461540>,  <32.739529, 26.123695, 34.274994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390511, 26.181892, 34.461540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016447, 0.945335, -0.325685,
		-0.488259, -0.291845, -0.822453,
		-0.872543, 0.145492, 0.466368,
		32.128746, 26.225540, 34.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220886, 26.284121, 33.744961>,  <32.739529, 26.123695, 34.274994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220886, 26.284121, 33.744961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090679, 26.425762, 34.095650>,  <32.012554, 26.510746, 34.306065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090679, 26.425762, 34.095650>,  <32.220886, 26.284121, 33.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090679, 26.425762, 34.095650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091921, 0.910984, -0.402067,
		-0.941057, -0.211470, -0.263992,
		-0.325517, 0.354102, 0.876727,
		31.993025, 26.531992, 34.358669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688530, 26.814936, 33.523396>,  <32.220886, 26.284121, 33.744961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688530, 26.814936, 33.523396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752539, 26.889698, 33.911098>,  <31.790945, 26.934555, 34.143719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752539, 26.889698, 33.911098>,  <31.688530, 26.814936, 33.523396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752539, 26.889698, 33.911098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012875, 0.982222, -0.187280,
		-0.987029, 0.017491, 0.159586,
		0.160024, 0.186905, 0.969257,
		31.800547, 26.945770, 34.201874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174435, 27.231369, 33.658161>,  <31.688530, 26.814936, 33.523396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174435, 27.231369, 33.658161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423824, 27.306484, 33.961742>,  <31.573458, 27.351553, 34.143890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423824, 27.306484, 33.961742>,  <31.174435, 27.231369, 33.658161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423824, 27.306484, 33.961742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031422, 0.975961, -0.215669,
		-0.781213, 0.110616, 0.614386,
		0.623473, 0.187789, 0.758958,
		31.610867, 27.362822, 34.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854036, 27.706436, 34.168839>,  <31.174435, 27.231369, 33.658161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854036, 27.706436, 34.168839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243780, 27.749454, 34.247894>,  <31.477627, 27.775265, 34.295326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243780, 27.749454, 34.247894>,  <30.854036, 27.706436, 34.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243780, 27.749454, 34.247894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060369, 0.971122, -0.230817,
		-0.216756, 0.212967, 0.952713,
		0.974357, 0.107546, 0.197640,
		31.536087, 27.781717, 34.307186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878551, 28.436884, 34.247162>,  <30.854036, 27.706436, 34.168839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878551, 28.436884, 34.247162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263918, 28.331814, 34.225872>,  <31.495138, 28.268772, 34.213097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263918, 28.331814, 34.225872>,  <30.878551, 28.436884, 34.247162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263918, 28.331814, 34.225872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234553, 0.922429, -0.306774,
		0.129678, 0.283066, 0.950293,
		0.963415, -0.262676, -0.053224,
		31.552942, 28.253012, 34.209904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331427, 28.987396, 34.600048>,  <30.878551, 28.436884, 34.247162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331427, 28.987396, 34.600048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548874, 28.795227, 34.324753>,  <31.679342, 28.679926, 34.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548874, 28.795227, 34.324753>,  <31.331427, 28.987396, 34.600048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548874, 28.795227, 34.324753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286272, 0.876944, -0.386027,
		0.789004, 0.012827, 0.614254,
		0.543619, -0.480421, -0.688240,
		31.711960, 28.651100, 34.118282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955044, 29.374739, 34.577496>,  <31.331427, 28.987396, 34.600048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955044, 29.374739, 34.577496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935858, 29.162361, 34.239079>,  <31.924345, 29.034935, 34.036026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935858, 29.162361, 34.239079>,  <31.955044, 29.374739, 34.577496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935858, 29.162361, 34.239079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419304, 0.758073, -0.499509,
		0.906578, -0.378711, 0.186266,
		-0.047966, -0.530946, -0.846047,
		31.921469, 29.003077, 33.985264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526520, 29.595482, 34.149334>,  <31.955044, 29.374739, 34.577496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526520, 29.595482, 34.149334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319901, 29.405418, 33.864407>,  <32.195930, 29.291380, 33.693451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319901, 29.405418, 33.864407>,  <32.526520, 29.595482, 34.149334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319901, 29.405418, 33.864407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416025, 0.587838, -0.693808,
		0.748400, -0.654728, -0.105968,
		-0.516547, -0.475161, -0.712321,
		32.164936, 29.262871, 33.650711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982563, 29.291590, 33.646881>,  <32.526520, 29.595482, 34.149334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982563, 29.291590, 33.646881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633358, 29.353039, 33.461735>,  <32.423836, 29.389908, 33.350647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633358, 29.353039, 33.461735>,  <32.982563, 29.291590, 33.646881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633358, 29.353039, 33.461735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458966, 0.579729, -0.673249,
		0.164913, -0.800197, -0.576618,
		-0.873014, 0.153621, -0.462868,
		32.371452, 29.399124, 33.322876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225521, 29.284176, 33.086273>,  <32.982563, 29.291590, 33.646881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225521, 29.284176, 33.086273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869160, 29.462475, 33.051414>,  <32.655342, 29.569454, 33.030499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869160, 29.462475, 33.051414>,  <33.225521, 29.284176, 33.086273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869160, 29.462475, 33.051414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381448, 0.630169, -0.676302,
		-0.246546, -0.635763, -0.731451,
		-0.890906, 0.445750, -0.087145,
		32.601887, 29.596199, 33.025272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226723, 29.514261, 32.354462>,  <33.225521, 29.284176, 33.086273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226723, 29.514261, 32.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940960, 29.726639, 32.536766>,  <32.769501, 29.854065, 32.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940960, 29.726639, 32.536766>,  <33.226723, 29.514261, 32.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940960, 29.726639, 32.536766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184681, 0.771316, -0.609068,
		-0.674916, -0.350954, -0.649092,
		-0.714410, 0.530945, 0.455759,
		32.726639, 29.885921, 32.673492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977077, 29.858074, 31.809933>,  <33.226723, 29.514261, 32.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977077, 29.858074, 31.809933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890450, 30.076893, 32.133373>,  <32.838470, 30.208183, 32.327438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890450, 30.076893, 32.133373>,  <32.977077, 29.858074, 31.809933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890450, 30.076893, 32.133373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121180, 0.836918, -0.533745,
		-0.968717, -0.017608, -0.247545,
		-0.216573, 0.547045, 0.808603,
		32.825478, 30.241007, 32.375954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325596, 30.332529, 31.636055>,  <32.977077, 29.858074, 31.809933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325596, 30.332529, 31.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507633, 30.501957, 31.949356>,  <32.616856, 30.603613, 32.137337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507633, 30.501957, 31.949356>,  <32.325596, 30.332529, 31.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507633, 30.501957, 31.949356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060493, 0.892292, -0.447388,
		-0.888388, 0.156221, 0.431696,
		0.455090, 0.423568, 0.783251,
		32.644161, 30.629028, 32.184330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078117, 31.080200, 31.520098>,  <32.325596, 30.332529, 31.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078117, 31.080200, 31.520098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348877, 31.113136, 31.812679>,  <32.511333, 31.132898, 31.988228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348877, 31.113136, 31.812679>,  <32.078117, 31.080200, 31.520098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348877, 31.113136, 31.812679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191899, 0.939617, -0.283361,
		-0.710617, 0.332173, 0.620229,
		0.676903, 0.082340, 0.731452,
		32.551949, 31.137838, 32.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976177, 31.704512, 31.838018>,  <32.078117, 31.080200, 31.520098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976177, 31.704512, 31.838018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364063, 31.622330, 31.890839>,  <32.596794, 31.573021, 31.922531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364063, 31.622330, 31.890839>,  <31.976177, 31.704512, 31.838018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364063, 31.622330, 31.890839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241238, 0.890168, -0.386530,
		-0.038134, 0.406681, 0.912774,
		0.969717, -0.205455, 0.132053,
		32.654980, 31.560694, 31.930454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252338, 32.366280, 31.978172>,  <31.976177, 31.704512, 31.838018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252338, 32.366280, 31.978172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556107, 32.138889, 31.851612>,  <32.738369, 32.002453, 31.775677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556107, 32.138889, 31.851612>,  <32.252338, 32.366280, 31.978172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556107, 32.138889, 31.851612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345669, 0.764562, -0.544020,
		0.551170, 0.303771, 0.777132,
		0.759423, -0.568478, -0.316400,
		32.783932, 31.968346, 31.756693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790482, 32.834789, 31.902784>,  <32.252338, 32.366280, 31.978172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790482, 32.834789, 31.902784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926014, 32.517395, 31.700569>,  <33.007332, 32.326958, 31.579239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926014, 32.517395, 31.700569>,  <32.790482, 32.834789, 31.902784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926014, 32.517395, 31.700569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486033, 0.607696, -0.628074,
		0.805584, -0.032898, 0.591568,
		0.338831, -0.793488, -0.505540,
		33.027664, 32.279350, 31.548906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424702, 32.976429, 31.775423>,  <32.790482, 32.834789, 31.902784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424702, 32.976429, 31.775423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338112, 32.702339, 31.497253>,  <33.286160, 32.537888, 31.330353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338112, 32.702339, 31.497253>,  <33.424702, 32.976429, 31.775423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338112, 32.702339, 31.497253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344167, 0.613022, -0.711163,
		0.913613, -0.393287, 0.103129,
		-0.216471, -0.685222, -0.695422,
		33.273170, 32.496773, 31.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925621, 33.081608, 31.367928>,  <33.424702, 32.976429, 31.775423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925621, 33.081608, 31.367928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671089, 32.873535, 31.140072>,  <33.518368, 32.748692, 31.003359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671089, 32.873535, 31.140072>,  <33.925621, 33.081608, 31.367928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671089, 32.873535, 31.140072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348860, 0.464556, -0.813932,
		0.688024, -0.716656, -0.114140,
		-0.636333, -0.520186, -0.569638,
		33.480190, 32.717480, 30.969181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285408, 32.673283, 30.820230>,  <33.925621, 33.081608, 31.367928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285408, 32.673283, 30.820230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912704, 32.743500, 30.693104>,  <33.689083, 32.785629, 30.616829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912704, 32.743500, 30.693104>,  <34.285408, 32.673283, 30.820230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912704, 32.743500, 30.693104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361065, 0.356067, -0.861887,
		-0.038133, -0.917824, -0.395152,
		-0.931761, 0.175542, -0.317816,
		33.633175, 32.796162, 30.597759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270664, 32.399750, 30.164600>,  <34.285408, 32.673283, 30.820230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270664, 32.399750, 30.164600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948597, 32.636868, 30.171497>,  <33.755356, 32.779140, 30.175634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948597, 32.636868, 30.171497>,  <34.270664, 32.399750, 30.164600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948597, 32.636868, 30.171497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296202, 0.427164, -0.854281,
		-0.513779, -0.682732, -0.519526,
		-0.805168, 0.592796, 0.017241,
		33.707047, 32.814705, 30.176670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956303, 32.280285, 29.510818>,  <34.270664, 32.399750, 30.164600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956303, 32.280285, 29.510818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813046, 32.634346, 29.629631>,  <33.727089, 32.846783, 29.700918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813046, 32.634346, 29.629631>,  <33.956303, 32.280285, 29.510818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813046, 32.634346, 29.629631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322900, 0.415931, -0.850140,
		-0.876052, -0.208563, -0.434781,
		-0.358147, 0.885157, 0.297032,
		33.705601, 32.899895, 29.718740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533211, 32.560181, 29.039082>,  <33.956303, 32.280285, 29.510818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533211, 32.560181, 29.039082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604057, 32.889408, 29.254929>,  <33.646564, 33.086945, 29.384436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604057, 32.889408, 29.254929>,  <33.533211, 32.560181, 29.039082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604057, 32.889408, 29.254929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171668, 0.514043, -0.840410,
		-0.969103, 0.241483, -0.050251,
		0.177113, 0.823071, 0.539616,
		33.657192, 33.136330, 29.416813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086826, 33.092396, 28.796844>,  <33.533211, 32.560181, 29.039082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086826, 33.092396, 28.796844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394791, 33.283028, 28.966602>,  <33.579571, 33.397408, 29.068457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394791, 33.283028, 28.966602>,  <33.086826, 33.092396, 28.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394791, 33.283028, 28.966602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090452, 0.576826, -0.811844,
		-0.631709, 0.663434, 0.400997,
		0.769910, 0.476579, 0.424395,
		33.625763, 33.426003, 29.093922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961571, 33.852467, 28.664455>,  <33.086826, 33.092396, 28.796844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961571, 33.852467, 28.664455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349617, 33.839268, 28.760616>,  <33.582443, 33.831348, 28.818314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349617, 33.839268, 28.760616>,  <32.961571, 33.852467, 28.664455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349617, 33.839268, 28.760616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188522, 0.726247, -0.661079,
		-0.152780, 0.686642, 0.710761,
		0.970112, -0.032994, 0.240403,
		33.640652, 33.829369, 28.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172264, 34.493454, 28.796331>,  <32.961571, 33.852467, 28.664455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172264, 34.493454, 28.796331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537868, 34.343601, 28.734074>,  <33.757233, 34.253689, 28.696718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537868, 34.343601, 28.734074>,  <33.172264, 34.493454, 28.796331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537868, 34.343601, 28.734074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242070, 0.811532, -0.531805,
		0.325543, 0.448401, 0.832441,
		0.914015, -0.374635, -0.155644,
		33.812073, 34.231213, 28.687380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568993, 35.025337, 28.955870>,  <33.172264, 34.493454, 28.796331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568993, 35.025337, 28.955870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772659, 34.772175, 28.722569>,  <33.894859, 34.620277, 28.582588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772659, 34.772175, 28.722569>,  <33.568993, 35.025337, 28.955870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772659, 34.772175, 28.722569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239817, 0.755165, -0.610094,
		0.826581, 0.170767, 0.536287,
		0.509168, -0.632902, -0.583252,
		33.925411, 34.582306, 28.547592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204231, 35.309750, 28.828537>,  <33.568993, 35.025337, 28.955870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204231, 35.309750, 28.828537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150139, 35.061802, 28.519352>,  <34.117683, 34.913033, 28.333841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150139, 35.061802, 28.519352>,  <34.204231, 35.309750, 28.828537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150139, 35.061802, 28.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210243, 0.744411, -0.633759,
		0.968251, -0.248214, 0.029656,
		-0.135232, -0.619872, -0.772962,
		34.109570, 34.875839, 28.287464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786987, 35.287422, 28.474157>,  <34.204231, 35.309750, 28.828537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786987, 35.287422, 28.474157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542187, 35.156246, 28.186295>,  <34.395306, 35.077541, 28.013577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542187, 35.156246, 28.186295>,  <34.786987, 35.287422, 28.474157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542187, 35.156246, 28.186295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327074, 0.723550, -0.607864,
		0.720043, -0.607401, -0.335565,
		-0.612014, -0.327933, -0.719652,
		34.358585, 35.057865, 27.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154835, 35.197670, 27.780289>,  <34.786987, 35.287422, 28.474157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154835, 35.197670, 27.780289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766716, 35.237362, 27.692039>,  <34.533844, 35.261177, 27.639090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766716, 35.237362, 27.692039>,  <35.154835, 35.197670, 27.780289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766716, 35.237362, 27.692039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233275, 0.625311, -0.744694,
		0.064064, -0.774042, -0.629885,
		-0.970298, 0.099228, -0.220624,
		34.475628, 35.267132, 27.625853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083599, 35.107807, 27.006556>,  <35.154835, 35.197670, 27.780289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083599, 35.107807, 27.006556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726849, 35.276558, 27.071777>,  <34.512798, 35.377808, 27.110910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726849, 35.276558, 27.071777>,  <35.083599, 35.107807, 27.006556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726849, 35.276558, 27.071777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142747, 0.604642, -0.783602,
		-0.429171, -0.675596, -0.599484,
		-0.891871, 0.421874, 0.163056,
		34.459286, 35.403122, 27.120693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770088, 35.031120, 26.381941>,  <35.083599, 35.107807, 27.006556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770088, 35.031120, 26.381941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599857, 35.335720, 26.577496>,  <34.497719, 35.518478, 26.694828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599857, 35.335720, 26.577496>,  <34.770088, 35.031120, 26.381941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599857, 35.335720, 26.577496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074888, 0.568036, -0.819589,
		-0.901820, -0.312183, -0.298768,
		-0.425573, 0.761496, 0.488888,
		34.472187, 35.564171, 26.724161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323505, 35.352722, 25.858559>,  <34.770088, 35.031120, 26.381941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323505, 35.352722, 25.858559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355335, 35.628426, 26.146610>,  <34.374432, 35.793850, 26.319441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355335, 35.628426, 26.146610>,  <34.323505, 35.352722, 25.858559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355335, 35.628426, 26.146610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140567, 0.722961, -0.676438,
		-0.986868, -0.047401, 0.154415,
		0.079572, 0.689261, 0.720130,
		34.379208, 35.835205, 26.362650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740868, 35.807346, 25.736965>,  <34.323505, 35.352722, 25.858559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740868, 35.807346, 25.736965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007565, 36.012291, 25.953461>,  <34.167583, 36.135258, 26.083359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007565, 36.012291, 25.953461>,  <33.740868, 35.807346, 25.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007565, 36.012291, 25.953461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166575, 0.810290, -0.561856,
		-0.726436, 0.284455, 0.625601,
		0.666741, 0.512362, 0.541241,
		34.207588, 36.166000, 26.115833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486748, 36.520996, 25.989208>,  <33.740868, 35.807346, 25.736965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486748, 36.520996, 25.989208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880928, 36.516056, 25.921402>,  <34.117435, 36.513092, 25.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880928, 36.516056, 25.921402>,  <33.486748, 36.520996, 25.989208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880928, 36.516056, 25.921402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103672, 0.746684, -0.657050,
		0.134688, 0.665064, 0.734540,
		0.985450, -0.012345, -0.169518,
		34.176563, 36.512352, 25.870546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797421, 36.927185, 26.092051>,  <33.486748, 36.520996, 25.989208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797421, 36.927185, 26.092051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516731, 37.097198, 25.863338>,  <32.348316, 37.199207, 25.726112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516731, 37.097198, 25.863338>,  <32.797421, 36.927185, 26.092051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516731, 37.097198, 25.863338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703750, -0.288489, 0.649238,
		0.110997, 0.857974, 0.501557,
		-0.701723, 0.425034, -0.571778,
		32.306213, 37.224709, 25.691805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425938, 37.112110, 26.580139>,  <32.797421, 36.927185, 26.092051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425938, 37.112110, 26.580139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190670, 37.133652, 26.257362>,  <32.049511, 37.146576, 26.063696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190670, 37.133652, 26.257362>,  <32.425938, 37.112110, 26.580139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190670, 37.133652, 26.257362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773974, -0.326878, 0.542323,
		-0.234567, 0.943531, 0.233940,
		-0.588169, 0.053853, -0.806943,
		32.014221, 37.149807, 26.015280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813246, 37.395256, 26.791731>,  <32.425938, 37.112110, 26.580139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813246, 37.395256, 26.791731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737095, 37.157825, 26.478958>,  <31.691404, 37.015366, 26.291294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737095, 37.157825, 26.478958>,  <31.813246, 37.395256, 26.791731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737095, 37.157825, 26.478958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696576, -0.479580, 0.533653,
		-0.691764, 0.646273, -0.322170,
		-0.190379, -0.593578, -0.781934,
		31.679981, 36.979752, 26.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087524, 37.268852, 26.836023>,  <31.813246, 37.395256, 26.791731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087524, 37.268852, 26.836023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211660, 36.985695, 26.582230>,  <31.286142, 36.815800, 26.429953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211660, 36.985695, 26.582230>,  <31.087524, 37.268852, 26.836023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211660, 36.985695, 26.582230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695330, -0.624163, 0.356283,
		-0.648234, 0.330609, -0.685923,
		0.310337, -0.707897, -0.634486,
		31.304762, 36.773327, 26.391884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526329, 37.005856, 26.750566>,  <31.087524, 37.268852, 26.836023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526329, 37.005856, 26.750566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801252, 36.729530, 26.660778>,  <30.966206, 36.563736, 26.606905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801252, 36.729530, 26.660778>,  <30.526329, 37.005856, 26.750566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801252, 36.729530, 26.660778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527671, -0.687230, 0.499277,
		-0.499169, -0.224711, -0.836860,
		0.687309, -0.690811, -0.224471,
		31.007444, 36.522285, 26.593437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110216, 36.342693, 26.633469>,  <30.526329, 37.005856, 26.750566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110216, 36.342693, 26.633469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482582, 36.202354, 26.674080>,  <30.706001, 36.118153, 26.698446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482582, 36.202354, 26.674080>,  <30.110216, 36.342693, 26.633469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482582, 36.202354, 26.674080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353216, -0.794038, 0.494714,
		-0.092949, -0.496398, -0.863105,
		0.930913, -0.350845, 0.101531,
		30.761856, 36.097099, 26.704538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200932, 35.586464, 26.265034>,  <30.110216, 36.342693, 26.633469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200932, 35.586464, 26.265034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451101, 35.635822, 26.573219>,  <30.601204, 35.665436, 26.758131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451101, 35.635822, 26.573219>,  <30.200932, 35.586464, 26.265034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451101, 35.635822, 26.573219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272063, -0.890966, 0.363540,
		0.731317, -0.436982, -0.523661,
		0.625425, 0.123394, 0.770466,
		30.638729, 35.672840, 26.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564754, 34.872868, 26.351116>,  <30.200932, 35.586464, 26.265034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564754, 34.872868, 26.351116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657143, 35.048462, 26.698437>,  <30.712576, 35.153816, 26.906830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657143, 35.048462, 26.698437>,  <30.564754, 34.872868, 26.351116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657143, 35.048462, 26.698437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298151, -0.817564, 0.492640,
		0.926153, -0.372669, -0.057948,
		0.230968, 0.438983, 0.868301,
		30.726433, 35.180157, 26.958927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954628, 34.378353, 26.782276>,  <30.564754, 34.872868, 26.351116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954628, 34.378353, 26.782276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814791, 34.652206, 27.038109>,  <30.730888, 34.816517, 27.191608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814791, 34.652206, 27.038109>,  <30.954628, 34.378353, 26.782276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814791, 34.652206, 27.038109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292855, -0.728302, 0.619525,
		0.889955, 0.029277, 0.455107,
		-0.349593, 0.684630, 0.639582,
		30.709913, 34.857597, 27.229984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182735, 34.080086, 27.429520>,  <30.954628, 34.378353, 26.782276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182735, 34.080086, 27.429520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891581, 34.341621, 27.512150>,  <30.716888, 34.498543, 27.561728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891581, 34.341621, 27.512150>,  <31.182735, 34.080086, 27.429520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891581, 34.341621, 27.512150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359298, -0.620276, 0.697253,
		0.584027, 0.433299, 0.686414,
		-0.727886, 0.653842, 0.206575,
		30.673216, 34.537773, 27.574121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236618, 34.211384, 28.191803>,  <31.182735, 34.080086, 27.429520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236618, 34.211384, 28.191803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873512, 34.329552, 28.072674>,  <30.655649, 34.400452, 28.001196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873512, 34.329552, 28.072674>,  <31.236618, 34.211384, 28.191803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873512, 34.329552, 28.072674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408939, -0.465014, 0.785195,
		0.093467, 0.834561, 0.542929,
		-0.907762, 0.295415, -0.297821,
		30.601183, 34.418175, 27.983328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960972, 34.558266, 28.710651>,  <31.236618, 34.211384, 28.191803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960972, 34.558266, 28.710651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634319, 34.437469, 28.513912>,  <30.438328, 34.364994, 28.395868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634319, 34.437469, 28.513912>,  <30.960972, 34.558266, 28.710651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634319, 34.437469, 28.513912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312384, -0.485312, 0.816633,
		-0.485312, 0.820535, 0.301986,
		-0.816633, -0.301986, -0.491849,
		30.389330, 34.346874, 28.366358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297331, 34.711143, 29.110338>,  <30.960972, 34.558266, 28.710651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297331, 34.711143, 29.110338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256840, 34.391697, 28.873032>,  <30.232546, 34.200027, 28.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256840, 34.391697, 28.873032>,  <30.297331, 34.711143, 29.110338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256840, 34.391697, 28.873032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342170, -0.532000, 0.774529,
		-0.934169, 0.281401, -0.219410,
		-0.101227, -0.798617, -0.593265,
		30.226471, 34.152111, 28.695051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573996, 34.312702, 29.232182>,  <30.297331, 34.711143, 29.110338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573996, 34.312702, 29.232182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811682, 34.023010, 29.092239>,  <29.954292, 33.849194, 29.008274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811682, 34.023010, 29.092239>,  <29.573996, 34.312702, 29.232182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811682, 34.023010, 29.092239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405726, -0.645483, 0.647100,
		-0.694477, -0.242569, -0.677394,
		0.594212, -0.724232, -0.349857,
		29.989946, 33.805740, 28.987284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134903, 33.749176, 29.226124>,  <29.573996, 34.312702, 29.232182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134903, 33.749176, 29.226124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501348, 33.589111, 29.216301>,  <29.721216, 33.493073, 29.210407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501348, 33.589111, 29.216301>,  <29.134903, 33.749176, 29.226124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501348, 33.589111, 29.216301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242884, -0.602686, 0.760117,
		-0.318970, -0.690390, -0.649323,
		0.916114, -0.400164, -0.024554,
		29.776182, 33.469063, 29.208935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061556, 33.000004, 29.251261>,  <29.134903, 33.749176, 29.226124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061556, 33.000004, 29.251261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437675, 33.061455, 29.372746>,  <29.663347, 33.098324, 29.445637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437675, 33.061455, 29.372746>,  <29.061556, 33.000004, 29.251261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437675, 33.061455, 29.372746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157039, -0.595848, 0.787594,
		0.301962, -0.788266, -0.536148,
		0.940297, 0.153628, 0.303712,
		29.719765, 33.107544, 29.463860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289682, 32.330879, 29.355270>,  <29.061556, 33.000004, 29.251261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289682, 32.330879, 29.355270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535061, 32.575642, 29.554970>,  <29.682287, 32.722500, 29.674789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535061, 32.575642, 29.554970>,  <29.289682, 32.330879, 29.355270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535061, 32.575642, 29.554970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071139, -0.672419, 0.736744,
		0.786527, -0.416436, -0.456022,
		0.613445, 0.611910, 0.499251,
		29.719095, 32.759216, 29.704744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817694, 31.887388, 29.530993>,  <29.289682, 32.330879, 29.355270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817694, 31.887388, 29.530993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884369, 32.191475, 29.782162>,  <29.924374, 32.373928, 29.932863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884369, 32.191475, 29.782162>,  <29.817694, 31.887388, 29.530993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884369, 32.191475, 29.782162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186093, -0.649644, 0.737110,
		0.968290, -0.006014, -0.249758,
		0.166686, 0.760214, 0.627925,
		29.934376, 32.419540, 29.970539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445322, 31.738644, 29.978659>,  <29.817694, 31.887388, 29.530993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445322, 31.738644, 29.978659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224857, 32.021164, 30.156361>,  <30.092579, 32.190674, 30.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224857, 32.021164, 30.156361>,  <30.445322, 31.738644, 29.978659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224857, 32.021164, 30.156361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026056, -0.517596, 0.855228,
		0.833991, 0.482945, 0.266877,
		-0.551162, 0.706299, 0.444254,
		30.059509, 32.233055, 30.289637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858225, 31.917234, 30.440714>,  <30.445322, 31.738644, 29.978659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858225, 31.917234, 30.440714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490177, 32.020412, 30.558590>,  <30.269348, 32.082321, 30.629316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490177, 32.020412, 30.558590>,  <30.858225, 31.917234, 30.440714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490177, 32.020412, 30.558590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175440, -0.401257, 0.899007,
		0.350143, 0.878895, 0.323951,
		-0.920120, 0.257947, 0.294690,
		30.214142, 32.097797, 30.646997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952484, 32.127769, 31.147747>,  <30.858225, 31.917234, 30.440714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952484, 32.127769, 31.147747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559401, 32.058956, 31.120365>,  <30.323549, 32.017670, 31.103937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559401, 32.058956, 31.120365>,  <30.952484, 32.127769, 31.147747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559401, 32.058956, 31.120365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025368, -0.491336, 0.870600,
		-0.183402, 0.853812, 0.487205,
		-0.982711, -0.172029, -0.068453,
		30.264587, 32.007347, 31.099829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663946, 32.265064, 31.835215>,  <30.952484, 32.127769, 31.147747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663946, 32.265064, 31.835215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407511, 32.024040, 31.645088>,  <30.253649, 31.879425, 31.531013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407511, 32.024040, 31.645088>,  <30.663946, 32.265064, 31.835215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407511, 32.024040, 31.645088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079276, -0.668008, 0.739919,
		-0.763361, 0.436673, 0.476021,
		-0.641089, -0.602563, -0.475314,
		30.215183, 31.843271, 31.502495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213057, 31.962982, 32.339169>,  <30.663946, 32.265064, 31.835215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213057, 31.962982, 32.339169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151121, 31.725288, 32.023468>,  <30.113960, 31.582672, 31.834049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151121, 31.725288, 32.023468>,  <30.213057, 31.962982, 32.339169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151121, 31.725288, 32.023468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162205, -0.772750, 0.613634,
		-0.974533, 0.223035, 0.023265,
		-0.154840, -0.594232, -0.789248,
		30.104670, 31.547018, 31.786694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780529, 31.403784, 32.569435>,  <30.213057, 31.962982, 32.339169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780529, 31.403784, 32.569435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932873, 31.240845, 32.237408>,  <30.024279, 31.143082, 32.038193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932873, 31.240845, 32.237408>,  <29.780529, 31.403784, 32.569435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932873, 31.240845, 32.237408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061059, -0.906848, 0.417012,
		-0.922613, -0.108141, -0.370257,
		0.380863, -0.407349, -0.830067,
		30.047131, 31.118641, 31.988388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451475, 30.721834, 32.616459>,  <29.780529, 31.403784, 32.569435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451475, 30.721834, 32.616459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773104, 30.700779, 32.379578>,  <29.966082, 30.688147, 32.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773104, 30.700779, 32.379578>,  <29.451475, 30.721834, 32.616459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773104, 30.700779, 32.379578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068644, -0.981192, 0.180414,
		-0.590557, -0.185716, -0.785335,
		0.804071, -0.052637, -0.592199,
		30.014324, 30.684988, 32.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251307, 30.229940, 32.056953>,  <29.451475, 30.721834, 32.616459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251307, 30.229940, 32.056953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651024, 30.244907, 32.058189>,  <29.890854, 30.253887, 32.058933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651024, 30.244907, 32.058189>,  <29.251307, 30.229940, 32.056953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651024, 30.244907, 32.058189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037172, -0.997568, 0.058961,
		0.005291, -0.058805, -0.998256,
		0.999295, 0.037419, 0.003093,
		29.950813, 30.256134, 32.059116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555584, 29.989298, 31.342869>,  <29.251307, 30.229940, 32.056953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555584, 29.989298, 31.342869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751492, 29.929298, 31.686409>,  <29.869036, 29.893299, 31.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751492, 29.929298, 31.686409>,  <29.555584, 29.989298, 31.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751492, 29.929298, 31.686409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165442, -0.983180, -0.077368,
		0.856010, -0.104197, -0.506349,
		0.489771, -0.150000, 0.858851,
		29.898422, 29.884298, 31.944065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890965, 29.235783, 31.279816>,  <29.555584, 29.989298, 31.342869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890965, 29.235783, 31.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939583, 29.313950, 31.669079>,  <29.968754, 29.360849, 31.902637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939583, 29.313950, 31.669079>,  <29.890965, 29.235783, 31.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939583, 29.313950, 31.669079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046889, -0.978203, 0.202288,
		0.991478, -0.070218, -0.109732,
		0.121544, 0.195419, 0.973159,
		29.976046, 29.372576, 31.961027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276585, 28.647465, 31.527723>,  <29.890965, 29.235783, 31.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276585, 28.647465, 31.527723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133648, 28.799885, 31.868805>,  <30.047886, 28.891336, 32.073456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133648, 28.799885, 31.868805>,  <30.276585, 28.647465, 31.527723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133648, 28.799885, 31.868805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149139, -0.924553, 0.350656,
		0.921988, -0.001867, 0.387213,
		-0.357344, 0.381050, 0.852705,
		30.026445, 28.914200, 32.124615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656546, 28.429083, 32.255337>,  <30.276585, 28.647465, 31.527723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656546, 28.429083, 32.255337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268980, 28.509655, 32.312786>,  <30.036440, 28.557999, 32.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268980, 28.509655, 32.312786>,  <30.656546, 28.429083, 32.255337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268980, 28.509655, 32.312786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093216, -0.835022, 0.542262,
		0.229156, 0.512019, 0.827843,
		-0.968916, 0.201431, 0.143622,
		29.978306, 28.570084, 32.355873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481155, 28.176111, 32.947147>,  <30.656546, 28.429083, 32.255337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481155, 28.176111, 32.947147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128469, 28.206718, 32.760933>,  <29.916859, 28.225082, 32.649204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128469, 28.206718, 32.760933>,  <30.481155, 28.176111, 32.947147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128469, 28.206718, 32.760933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293636, -0.861345, 0.414563,
		-0.369266, 0.502225, 0.781929,
		-0.881715, 0.076518, -0.465537,
		29.863955, 28.229673, 32.621273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013733, 27.978701, 33.445496>,  <30.481155, 28.176111, 32.947147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013733, 27.978701, 33.445496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795864, 27.952110, 33.111092>,  <29.665144, 27.936155, 32.910450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795864, 27.952110, 33.111092>,  <30.013733, 27.978701, 33.445496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795864, 27.952110, 33.111092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497789, -0.776632, 0.386069,
		-0.674937, 0.626438, 0.389917,
		-0.544670, -0.066476, -0.836011,
		29.632463, 27.932167, 32.860287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382601, 27.659496, 33.657871>,  <30.013733, 27.978701, 33.445496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382601, 27.659496, 33.657871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378151, 27.625362, 33.259354>,  <29.375481, 27.604883, 33.020245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378151, 27.625362, 33.259354>,  <29.382601, 27.659496, 33.657871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378151, 27.625362, 33.259354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521741, -0.849477, 0.078584,
		-0.853031, 0.520680, -0.035071,
		-0.011125, -0.085333, -0.996290,
		29.374813, 27.599762, 32.960468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758591, 27.317030, 33.510113>,  <29.382601, 27.659496, 33.657871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758591, 27.317030, 33.510113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953194, 27.260933, 33.165173>,  <29.069956, 27.227274, 32.958210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953194, 27.260933, 33.165173>,  <28.758591, 27.317030, 33.510113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953194, 27.260933, 33.165173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372846, -0.925967, -0.059758,
		-0.790124, 0.350595, -0.502780,
		0.486508, -0.140244, -0.862347,
		29.099146, 27.218861, 32.906467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238939, 27.101624, 32.989349>,  <28.758591, 27.317030, 33.510113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238939, 27.101624, 32.989349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608810, 27.000557, 32.875412>,  <28.830732, 26.939917, 32.807049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608810, 27.000557, 32.875412>,  <28.238939, 27.101624, 32.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608810, 27.000557, 32.875412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227506, -0.966505, 0.118777,
		-0.305309, -0.045028, -0.951188,
		0.924677, -0.252665, -0.284839,
		28.886213, 26.924757, 32.789959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126230, 26.545574, 32.535065>,  <28.238939, 27.101624, 32.989349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126230, 26.545574, 32.535065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512354, 26.503452, 32.630642>,  <28.744028, 26.478180, 32.687988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512354, 26.503452, 32.630642>,  <28.126230, 26.545574, 32.535065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512354, 26.503452, 32.630642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102398, -0.994440, -0.024575,
		0.240202, -0.000745, -0.970723,
		0.965307, -0.105303, 0.238943,
		28.801947, 26.471861, 32.702324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379364, 26.012066, 32.121887>,  <28.126230, 26.545574, 32.535065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379364, 26.012066, 32.121887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627527, 26.044445, 32.433922>,  <28.776424, 26.063873, 32.621143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627527, 26.044445, 32.433922>,  <28.379364, 26.012066, 32.121887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627527, 26.044445, 32.433922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079657, -0.983011, 0.165358,
		0.780223, -0.164729, -0.603420,
		0.620408, 0.080950, 0.780090,
		28.813650, 26.068729, 32.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939629, 25.491974, 32.045868>,  <28.379364, 26.012066, 32.121887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939629, 25.491974, 32.045868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901573, 25.575932, 32.435101>,  <28.878740, 25.626307, 32.668640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901573, 25.575932, 32.435101>,  <28.939629, 25.491974, 32.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901573, 25.575932, 32.435101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212249, -0.950763, 0.225831,
		0.972573, 0.228021, 0.045906,
		-0.095140, 0.209894, 0.973084,
		28.873032, 25.638899, 32.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153666, 24.676773, 32.276825>,  <28.939629, 25.491974, 32.045868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153666, 24.676773, 32.276825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007530, 24.591183, 31.914448>,  <28.919849, 24.539827, 31.697021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007530, 24.591183, 31.914448>,  <29.153666, 24.676773, 32.276825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007530, 24.591183, 31.914448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434203, 0.821691, -0.369178,
		0.823406, -0.528239, -0.207282,
		-0.365336, -0.213981, -0.905948,
		28.897928, 24.526989, 31.642664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628368, 24.920633, 31.808378>,  <29.153666, 24.676773, 32.276825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628368, 24.920633, 31.808378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311157, 24.881245, 31.567909>,  <29.120831, 24.857611, 31.423628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311157, 24.881245, 31.567909>,  <29.628368, 24.920633, 31.808378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311157, 24.881245, 31.567909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383700, 0.685754, -0.618478,
		0.473159, -0.721141, -0.506040,
		-0.793029, -0.098471, -0.601173,
		29.073248, 24.851704, 31.387558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867079, 24.903324, 31.198656>,  <29.628368, 24.920633, 31.808378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867079, 24.903324, 31.198656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483887, 25.008400, 31.152576>,  <29.253971, 25.071445, 31.124929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483887, 25.008400, 31.152576>,  <29.867079, 24.903324, 31.198656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483887, 25.008400, 31.152576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273800, 0.717747, -0.640213,
		-0.085493, -0.644852, -0.759511,
		-0.957979, 0.262688, -0.115198,
		29.196493, 25.087206, 31.118017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859324, 24.944407, 30.518723>,  <29.867079, 24.903324, 31.198656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859324, 24.944407, 30.518723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547159, 25.151424, 30.659069>,  <29.359861, 25.275635, 30.743277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547159, 25.151424, 30.659069>,  <29.859324, 24.944407, 30.518723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547159, 25.151424, 30.659069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115743, 0.671022, -0.732347,
		-0.614461, -0.530922, -0.583576,
		-0.780411, 0.517544, 0.350866,
		29.313036, 25.306688, 30.764328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372795, 25.001583, 30.013010>,  <29.859324, 24.944407, 30.518723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372795, 25.001583, 30.013010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321266, 25.320412, 30.249004>,  <29.290348, 25.511709, 30.390600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321266, 25.320412, 30.249004>,  <29.372795, 25.001583, 30.013010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321266, 25.320412, 30.249004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298002, 0.598559, -0.743588,
		-0.945833, 0.080025, -0.314637,
		-0.128823, 0.797072, 0.589984,
		29.282619, 25.559534, 30.425999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192465, 25.558365, 29.594147>,  <29.372795, 25.001583, 30.013010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192465, 25.558365, 29.594147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269522, 25.775036, 29.921432>,  <29.315756, 25.905039, 30.117804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269522, 25.775036, 29.921432>,  <29.192465, 25.558365, 29.594147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269522, 25.775036, 29.921432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295342, 0.763160, -0.574769,
		-0.935769, 0.352377, -0.012964,
		0.192641, 0.541680, 0.818213,
		29.327314, 25.937540, 30.166897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808502, 26.206495, 29.445379>,  <29.192465, 25.558365, 29.594147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808502, 26.206495, 29.445379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063858, 26.320621, 29.731331>,  <29.217072, 26.389097, 29.902903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063858, 26.320621, 29.731331>,  <28.808502, 26.206495, 29.445379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063858, 26.320621, 29.731331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218627, 0.823296, -0.523818,
		-0.738011, 0.490692, 0.463207,
		0.638390, 0.285314, 0.714881,
		29.255375, 26.406216, 29.945795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701698, 26.922741, 29.567368>,  <28.808502, 26.206495, 29.445379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701698, 26.922741, 29.567368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075312, 26.835613, 29.680603>,  <29.299479, 26.783337, 29.748545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075312, 26.835613, 29.680603>,  <28.701698, 26.922741, 29.567368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075312, 26.835613, 29.680603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341994, 0.774063, -0.532792,
		-0.103076, 0.594460, 0.797492,
		0.934032, -0.217819, 0.283089,
		29.355522, 26.770267, 29.765530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020767, 27.580872, 29.649155>,  <28.701698, 26.922741, 29.567368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020767, 27.580872, 29.649155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324753, 27.321987, 29.625252>,  <29.507145, 27.166656, 29.610910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324753, 27.321987, 29.625252>,  <29.020767, 27.580872, 29.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324753, 27.321987, 29.625252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564024, 0.702377, -0.434216,
		0.323002, 0.296285, 0.898824,
		0.759965, -0.647211, -0.059757,
		29.552742, 27.127823, 29.607325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567724, 27.862652, 29.947634>,  <29.020767, 27.580872, 29.649155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567724, 27.862652, 29.947634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730228, 27.610096, 29.683422>,  <29.827730, 27.458563, 29.524895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730228, 27.610096, 29.683422>,  <29.567724, 27.862652, 29.947634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730228, 27.610096, 29.683422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611762, 0.724898, -0.316654,
		0.678750, -0.275444, 0.680757,
		0.406259, -0.631390, -0.660531,
		29.852106, 27.420679, 29.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261770, 27.944201, 30.101862>,  <29.567724, 27.862652, 29.947634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261770, 27.944201, 30.101862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235123, 27.755688, 29.750076>,  <30.219133, 27.642580, 29.539005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235123, 27.755688, 29.750076>,  <30.261770, 27.944201, 30.101862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235123, 27.755688, 29.750076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548821, 0.718799, -0.426759,
		0.833281, -0.511098, 0.210764,
		-0.066619, -0.471282, -0.879463,
		30.215137, 27.614304, 29.486237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867163, 28.048563, 29.783058>,  <30.261770, 27.944201, 30.101862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867163, 28.048563, 29.783058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626383, 27.935448, 29.484344>,  <30.481915, 27.867579, 29.305117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626383, 27.935448, 29.484344>,  <30.867163, 28.048563, 29.783058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626383, 27.935448, 29.484344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344401, 0.751805, -0.562297,
		0.720446, -0.595668, -0.355158,
		-0.601952, -0.282787, -0.746783,
		30.445799, 27.850611, 29.260309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145420, 28.400030, 29.302822>,  <30.867163, 28.048563, 29.783058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145420, 28.400030, 29.302822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832041, 28.276558, 29.087070>,  <30.644014, 28.202475, 28.957621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832041, 28.276558, 29.087070>,  <31.145420, 28.400030, 29.302822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832041, 28.276558, 29.087070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212546, 0.682492, -0.699306,
		0.583981, -0.662513, -0.469088,
		-0.783448, -0.308678, -0.539376,
		30.597006, 28.183954, 28.925257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312277, 28.212210, 28.666843>,  <31.145420, 28.400030, 29.302822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312277, 28.212210, 28.666843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927313, 28.319958, 28.652962>,  <30.696335, 28.384607, 28.644632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927313, 28.319958, 28.652962>,  <31.312277, 28.212210, 28.666843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927313, 28.319958, 28.652962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215334, 0.678910, -0.701935,
		-0.165520, -0.683023, -0.711395,
		-0.962411, 0.269372, -0.034705,
		30.638590, 28.400768, 28.642550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068655, 28.412178, 27.897757>,  <31.312277, 28.212210, 28.666843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068655, 28.412178, 27.897757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788918, 28.544914, 28.150990>,  <30.621075, 28.624556, 28.302929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788918, 28.544914, 28.150990>,  <31.068655, 28.412178, 27.897757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788918, 28.544914, 28.150990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046801, 0.862542, -0.503816,
		-0.713250, -0.381971, -0.587684,
		-0.699346, 0.331843, 0.633084,
		30.579113, 28.644466, 28.340916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451973, 28.631392, 27.455435>,  <31.068655, 28.412178, 27.897757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451973, 28.631392, 27.455435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401209, 28.823139, 27.802792>,  <30.370750, 28.938187, 28.011206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401209, 28.823139, 27.802792>,  <30.451973, 28.631392, 27.455435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401209, 28.823139, 27.802792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167474, 0.852545, -0.495096,
		-0.977674, -0.208265, -0.027915,
		-0.126910, 0.479367, 0.868390,
		30.363136, 28.966949, 28.063309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923115, 29.084921, 27.317850>,  <30.451973, 28.631392, 27.455435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923115, 29.084921, 27.317850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096020, 29.232933, 27.646782>,  <30.199762, 29.321741, 27.844141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096020, 29.232933, 27.646782>,  <29.923115, 29.084921, 27.317850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096020, 29.232933, 27.646782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087180, 0.924805, -0.370317,
		-0.897525, 0.088383, 0.432016,
		0.432260, 0.370032, 0.822331,
		30.225698, 29.343943, 27.893480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508385, 29.591923, 27.482855>,  <29.923115, 29.084921, 27.317850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508385, 29.591923, 27.482855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854101, 29.680645, 27.663433>,  <30.061531, 29.733879, 27.771780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854101, 29.680645, 27.663433>,  <29.508385, 29.591923, 27.482855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854101, 29.680645, 27.663433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170894, 0.973621, -0.151185,
		-0.473071, 0.053518, 0.879397,
		0.864291, 0.221805, 0.451447,
		30.113388, 29.747187, 27.798866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335011, 30.202126, 27.814518>,  <29.508385, 29.591923, 27.482855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335011, 30.202126, 27.814518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730782, 30.199078, 27.872444>,  <29.968245, 30.197248, 27.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730782, 30.199078, 27.872444>,  <29.335011, 30.202126, 27.814518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730782, 30.199078, 27.872444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030411, 0.987316, -0.155831,
		-0.141793, 0.158588, 0.977110,
		0.989429, -0.007619, 0.144818,
		30.027611, 30.196793, 27.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541367, 30.742382, 28.422609>,  <29.335011, 30.202126, 27.814518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541367, 30.742382, 28.422609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835691, 30.665066, 28.163002>,  <30.012285, 30.618675, 28.007238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835691, 30.665066, 28.163002>,  <29.541367, 30.742382, 28.422609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835691, 30.665066, 28.163002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095750, 0.978467, -0.182852,
		0.670385, 0.072401, 0.738473,
		0.735810, -0.193291, -0.649017,
		30.056435, 30.607079, 27.968298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088602, 31.192081, 28.524342>,  <29.541367, 30.742382, 28.422609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088602, 31.192081, 28.524342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147491, 31.103901, 28.138653>,  <30.182825, 31.050993, 27.907240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147491, 31.103901, 28.138653>,  <30.088602, 31.192081, 28.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147491, 31.103901, 28.138653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093891, 0.973558, -0.208251,
		0.984636, -0.059872, 0.164031,
		0.147225, -0.220453, -0.964223,
		30.191658, 31.037766, 27.849386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599222, 31.652544, 28.272753>,  <30.088602, 31.192081, 28.524342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599222, 31.652544, 28.272753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448004, 31.518860, 27.927410>,  <30.357273, 31.438648, 27.720205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448004, 31.518860, 27.927410>,  <30.599222, 31.652544, 28.272753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448004, 31.518860, 27.927410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162282, 0.894202, -0.417213,
		0.911453, -0.297833, -0.283812,
		-0.378045, -0.334213, -0.863356,
		30.334589, 31.418596, 27.668404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967808, 32.072392, 27.773647>,  <30.599222, 31.652544, 28.272753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967808, 32.072392, 27.773647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660151, 31.903328, 27.581909>,  <30.475555, 31.801889, 27.466866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660151, 31.903328, 27.581909>,  <30.967808, 32.072392, 27.773647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660151, 31.903328, 27.581909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085090, 0.811116, -0.578663,
		0.633383, -0.404289, -0.659830,
		-0.769146, -0.422660, -0.479346,
		30.429407, 31.776529, 27.438105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158148, 32.121899, 27.038256>,  <30.967808, 32.072392, 27.773647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158148, 32.121899, 27.038256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763708, 32.088036, 27.095440>,  <30.527044, 32.067719, 27.129751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763708, 32.088036, 27.095440>,  <31.158148, 32.121899, 27.038256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763708, 32.088036, 27.095440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161422, 0.691923, -0.703694,
		-0.039344, -0.716990, -0.695972,
		-0.986101, -0.084659, 0.142961,
		30.467878, 32.062637, 27.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905823, 32.117958, 26.349197>,  <31.158148, 32.121899, 27.038256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905823, 32.117958, 26.349197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591688, 32.196171, 26.584148>,  <30.403208, 32.243099, 26.725119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591688, 32.196171, 26.584148>,  <30.905823, 32.117958, 26.349197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591688, 32.196171, 26.584148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301760, 0.707552, -0.638992,
		-0.540544, -0.679071, -0.496663,
		-0.785337, 0.195530, 0.587379,
		30.356087, 32.254829, 26.760363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353727, 32.429695, 25.907343>,  <30.905823, 32.117958, 26.349197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353727, 32.429695, 25.907343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182583, 32.504223, 26.261116>,  <30.079895, 32.548939, 26.473379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182583, 32.504223, 26.261116>,  <30.353727, 32.429695, 25.907343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182583, 32.504223, 26.261116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656814, 0.608117, -0.445858,
		-0.620910, -0.771673, -0.137814,
		-0.427863, 0.186320, 0.884431,
		30.054224, 32.560120, 26.526445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647066, 32.277210, 25.897299>,  <30.353727, 32.429695, 25.907343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647066, 32.277210, 25.897299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691099, 32.541477, 26.194324>,  <29.717518, 32.700035, 26.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691099, 32.541477, 26.194324>,  <29.647066, 32.277210, 25.897299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691099, 32.541477, 26.194324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687327, 0.590270, -0.423276,
		-0.717958, -0.463791, 0.519071,
		0.110081, 0.660666, 0.742566,
		29.724123, 32.739677, 26.417093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911098, 32.560394, 26.145948>,  <29.647066, 32.277210, 25.897299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911098, 32.560394, 26.145948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139704, 32.853348, 26.293995>,  <29.276867, 33.029121, 26.382822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139704, 32.853348, 26.293995>,  <28.911098, 32.560394, 26.145948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139704, 32.853348, 26.293995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606499, 0.680814, -0.410672,
		-0.552750, 0.010229, 0.833285,
		0.571512, 0.732385, 0.370116,
		29.311157, 33.073063, 26.405029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453703, 33.046223, 26.488976>,  <28.911098, 32.560394, 26.145948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453703, 33.046223, 26.488976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794970, 33.248760, 26.438820>,  <28.999729, 33.370281, 26.408728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794970, 33.248760, 26.438820>,  <28.453703, 33.046223, 26.488976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794970, 33.248760, 26.438820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521625, 0.829778, -0.198435,
		0.003567, 0.234703, 0.972061,
		0.853168, 0.506343, -0.125387,
		29.050920, 33.400661, 26.401203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261644, 33.759792, 26.767096>,  <28.453703, 33.046223, 26.488976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261644, 33.759792, 26.767096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591667, 33.780209, 26.542000>,  <28.789680, 33.792458, 26.406942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591667, 33.780209, 26.542000>,  <28.261644, 33.759792, 26.767096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591667, 33.780209, 26.542000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323607, 0.859089, -0.396542,
		0.463204, 0.509276, 0.725314,
		0.825058, 0.051037, -0.562738,
		28.839184, 33.795521, 26.373178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516211, 34.572578, 26.711632>,  <28.261644, 33.759792, 26.767096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516211, 34.572578, 26.711632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620443, 34.388309, 26.372250>,  <28.682983, 34.277748, 26.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620443, 34.388309, 26.372250>,  <28.516211, 34.572578, 26.711632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620443, 34.388309, 26.372250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476661, 0.702850, -0.528011,
		0.839578, 0.542016, -0.036435,
		0.260583, -0.460674, -0.848455,
		28.698618, 34.250107, 26.117714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614027, 35.165497, 26.203674>,  <28.516211, 34.572578, 26.711632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614027, 35.165497, 26.203674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622332, 34.845520, 25.963787>,  <28.627314, 34.653534, 25.819855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622332, 34.845520, 25.963787>,  <28.614027, 35.165497, 26.203674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622332, 34.845520, 25.963787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445352, 0.529647, -0.721898,
		0.895115, 0.282072, -0.345260,
		0.020761, -0.799944, -0.599716,
		28.628559, 34.605537, 25.783873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841345, 35.376041, 25.522373>,  <28.614027, 35.165497, 26.203674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841345, 35.376041, 25.522373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602489, 35.056515, 25.493191>,  <28.459177, 34.864799, 25.475681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602489, 35.056515, 25.493191>,  <28.841345, 35.376041, 25.522373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602489, 35.056515, 25.493191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442646, 0.404001, -0.800530,
		0.668950, -0.445732, -0.594836,
		-0.597136, -0.798816, -0.072955,
		28.423349, 34.816872, 25.471304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744984, 35.322113, 24.827305>,  <28.841345, 35.376041, 25.522373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744984, 35.322113, 24.827305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453276, 35.098408, 24.984982>,  <28.278252, 34.964184, 25.079588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453276, 35.098408, 24.984982>,  <28.744984, 35.322113, 24.827305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453276, 35.098408, 24.984982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639842, 0.353298, -0.682483,
		0.242421, -0.749936, -0.615490,
		-0.729270, -0.559264, 0.394194,
		28.234495, 34.930630, 25.103239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587318, 34.855915, 24.306408>,  <28.744984, 35.322113, 24.827305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587318, 34.855915, 24.306408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278589, 34.894108, 24.557858>,  <28.093351, 34.917023, 24.708727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278589, 34.894108, 24.557858>,  <28.587318, 34.855915, 24.306408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278589, 34.894108, 24.557858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587888, 0.269476, -0.762739,
		-0.242227, -0.958262, -0.151855,
		-0.771825, 0.095483, 0.628625,
		28.047041, 34.922752, 24.746445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031017, 34.399364, 23.976978>,  <28.587318, 34.855915, 24.306408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031017, 34.399364, 23.976978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858038, 34.677464, 24.206631>,  <27.754251, 34.844322, 24.344421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858038, 34.677464, 24.206631>,  <28.031017, 34.399364, 23.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858038, 34.677464, 24.206631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668799, 0.179726, -0.721392,
		-0.604729, -0.695942, 0.387256,
		-0.432447, 0.695243, 0.574131,
		27.728304, 34.886036, 24.378870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420418, 34.556664, 23.623260>,  <28.031017, 34.399364, 23.976978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420418, 34.556664, 23.623260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432329, 34.865334, 23.877388>,  <27.439476, 35.050537, 24.029865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432329, 34.865334, 23.877388>,  <27.420418, 34.556664, 23.623260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432329, 34.865334, 23.877388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665320, 0.489648, -0.563555,
		-0.745964, -0.405910, 0.527991,
		0.029777, 0.771674, 0.635320,
		27.441263, 35.096836, 24.067984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630663, 34.777531, 23.841509>,  <27.420418, 34.556664, 23.623260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630663, 34.777531, 23.841509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900864, 35.068596, 23.889183>,  <27.062984, 35.243237, 23.917788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900864, 35.068596, 23.889183>,  <26.630663, 34.777531, 23.841509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900864, 35.068596, 23.889183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641742, 0.659777, -0.390974,
		-0.363133, 0.187617, 0.912652,
		0.675501, 0.727663, 0.119185,
		27.103514, 35.286896, 23.924938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252346, 35.320576, 24.022696>,  <26.630663, 34.777531, 23.841509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252346, 35.320576, 24.022696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603512, 35.469944, 23.902813>,  <26.814211, 35.559566, 23.830883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603512, 35.469944, 23.902813>,  <26.252346, 35.320576, 24.022696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603512, 35.469944, 23.902813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473068, 0.773173, -0.422387,
		0.073995, 0.512600, 0.855433,
		0.877913, 0.373423, -0.299705,
		26.866886, 35.581970, 23.812901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342554, 35.993443, 24.326681>,  <26.252346, 35.320576, 24.022696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342554, 35.993443, 24.326681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561392, 35.994644, 23.991856>,  <26.692694, 35.995365, 23.790960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561392, 35.994644, 23.991856>,  <26.342554, 35.993443, 24.326681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561392, 35.994644, 23.991856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519249, 0.785566, -0.336552,
		0.656559, 0.618771, 0.431339,
		0.547094, 0.003006, -0.837066,
		26.725519, 35.995544, 23.740736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391764, 36.758591, 24.212328>,  <26.342554, 35.993443, 24.326681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391764, 36.758591, 24.212328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487598, 36.590908, 23.862045>,  <26.545099, 36.490295, 23.651876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487598, 36.590908, 23.862045>,  <26.391764, 36.758591, 24.212328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487598, 36.590908, 23.862045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518462, 0.707353, -0.480467,
		0.820850, 0.569134, -0.047872,
		0.239587, -0.419211, -0.875705,
		26.559475, 36.465145, 23.599333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716888, 37.063984, 24.188564>,  <26.391764, 36.758591, 24.212328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716888, 37.063984, 24.188564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618349, 36.781670, 23.922878>,  <25.559225, 36.612282, 23.763468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618349, 36.781670, 23.922878>,  <25.716888, 37.063984, 24.188564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618349, 36.781670, 23.922878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930246, -0.020107, 0.366386,
		-0.271945, 0.708141, -0.651600,
		-0.246351, -0.705785, -0.664213,
		25.544443, 36.569935, 23.723614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139261, 37.202549, 23.571556>,  <25.716888, 37.063984, 24.188564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139261, 37.202549, 23.571556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136742, 36.811089, 23.653732>,  <25.135229, 36.576214, 23.703037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136742, 36.811089, 23.653732>,  <25.139261, 37.202549, 23.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136742, 36.811089, 23.653732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981803, 0.045049, 0.184484,
		-0.189800, -0.200538, -0.961125,
		-0.006301, -0.978649, 0.205439,
		25.134851, 36.517494, 23.715364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571617, 36.961460, 23.279842>,  <25.139261, 37.202549, 23.571556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571617, 36.961460, 23.279842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670155, 36.672180, 23.537926>,  <24.729277, 36.498611, 23.692776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670155, 36.672180, 23.537926>,  <24.571617, 36.961460, 23.279842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670155, 36.672180, 23.537926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958877, -0.085041, 0.270783,
		-0.140962, -0.685380, -0.714411,
		0.246344, -0.723202, 0.645208,
		24.744059, 36.455219, 23.731487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.080448, 37.040791, 22.577253>,  <24.571617, 36.961460, 23.279842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.080448, 37.040791, 22.577253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063883, 36.659897, 22.698269>,  <24.053944, 36.431358, 22.770878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063883, 36.659897, 22.698269>,  <24.080448, 37.040791, 22.577253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063883, 36.659897, 22.698269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584507, -0.222488, -0.780289,
		0.810331, -0.209150, -0.547375,
		-0.041413, -0.952237, 0.302539,
		24.051458, 36.374226, 22.789030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493521, 36.439674, 22.065193>,  <24.080448, 37.040791, 22.577253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493521, 36.439674, 22.065193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209682, 36.282906, 22.299416>,  <24.039379, 36.188847, 22.439949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209682, 36.282906, 22.299416>,  <24.493521, 36.439674, 22.065193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209682, 36.282906, 22.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411090, -0.444664, -0.795789,
		0.572259, -0.805404, 0.154418,
		-0.709595, -0.391917, 0.585556,
		23.996803, 36.165329, 22.475082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587448, 35.737797, 22.008862>,  <24.493521, 36.439674, 22.065193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587448, 35.737797, 22.008862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209234, 35.842655, 22.086056>,  <23.982306, 35.905571, 22.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209234, 35.842655, 22.086056>,  <24.587448, 35.737797, 22.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209234, 35.842655, 22.086056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294104, -0.433842, -0.851636,
		-0.139525, -0.862010, 0.487310,
		-0.945535, 0.262145, 0.192988,
		23.925573, 35.921299, 22.143951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142839, 35.200829, 21.952484>,  <24.587448, 35.737797, 22.008862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142839, 35.200829, 21.952484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.891195, 35.499275, 21.865276>,  <23.740210, 35.678345, 21.812952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.891195, 35.499275, 21.865276>,  <24.142839, 35.200829, 21.952484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.891195, 35.499275, 21.865276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244689, -0.456305, -0.855519,
		-0.737800, -0.484869, 0.469632,
		-0.629110, 0.746116, -0.218020,
		23.702463, 35.723110, 21.799870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571632, 34.875641, 21.826586>,  <24.142839, 35.200829, 21.952484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571632, 34.875641, 21.826586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562878, 35.221706, 21.626179>,  <23.557625, 35.429344, 21.505934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562878, 35.221706, 21.626179>,  <23.571632, 34.875641, 21.826586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562878, 35.221706, 21.626179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332568, -0.478901, -0.812436,
		-0.942825, 0.148840, 0.298207,
		-0.021888, 0.865159, -0.501019,
		23.556311, 35.481255, 21.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189320, 34.625217, 21.322437>,  <23.571632, 34.875641, 21.826586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189320, 34.625217, 21.322437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270931, 34.985245, 21.168427>,  <23.319899, 35.201263, 21.076021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270931, 34.985245, 21.168427>,  <23.189320, 34.625217, 21.322437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270931, 34.985245, 21.168427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204090, -0.345550, -0.915938,
		-0.957455, 0.265458, 0.113193,
		0.204029, 0.900071, -0.385026,
		23.332140, 35.255264, 21.052919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614302, 34.769806, 20.879866>,  <23.189320, 34.625217, 21.322437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614302, 34.769806, 20.879866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920965, 34.993801, 20.754234>,  <23.104963, 35.128197, 20.678856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920965, 34.993801, 20.754234>,  <22.614302, 34.769806, 20.879866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920965, 34.993801, 20.754234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152878, -0.315892, -0.936397,
		-0.623587, 0.765914, -0.156572,
		0.766660, 0.559989, -0.314078,
		23.150963, 35.161797, 20.660011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.368267, 35.039909, 20.279112>,  <22.614302, 34.769806, 20.879866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.368267, 35.039909, 20.279112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.760370, 35.106728, 20.236797>,  <22.995632, 35.146820, 20.211409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.760370, 35.106728, 20.236797>,  <22.368267, 35.039909, 20.279112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.760370, 35.106728, 20.236797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060981, -0.253531, -0.965403,
		-0.188087, 0.952795, -0.238339,
		0.980258, 0.167045, -0.105788,
		23.054447, 35.156841, 20.205061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529226, 35.566845, 19.708151>,  <22.368267, 35.039909, 20.279112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529226, 35.566845, 19.708151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850340, 35.340565, 19.783539>,  <23.043007, 35.204796, 19.828772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.850340, 35.340565, 19.783539>,  <22.529226, 35.566845, 19.708151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850340, 35.340565, 19.783539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035752, -0.269848, -0.962239,
		0.595199, 0.779207, -0.196405,
		0.802783, -0.565702, 0.188471,
		23.091175, 35.170853, 19.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.859369, 35.647587, 19.074203>,  <22.529226, 35.566845, 19.708151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.859369, 35.647587, 19.074203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080191, 35.348907, 19.222626>,  <23.212685, 35.169701, 19.311680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080191, 35.348907, 19.222626>,  <22.859369, 35.647587, 19.074203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080191, 35.348907, 19.222626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297383, -0.239425, -0.924251,
		0.778973, 0.620583, 0.089879,
		0.552055, -0.746695, 0.371056,
		23.245808, 35.124901, 19.333942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500391, 35.635593, 18.769291>,  <22.859369, 35.647587, 19.074203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500391, 35.635593, 18.769291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457956, 35.254070, 18.881721>,  <23.432495, 35.025158, 18.949179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457956, 35.254070, 18.881721>,  <23.500391, 35.635593, 18.769291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457956, 35.254070, 18.881721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159635, -0.295341, -0.941961,
		0.981459, -0.055061, 0.183592,
		-0.106087, -0.953804, 0.281075,
		23.426130, 34.967930, 18.966043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100891, 35.331844, 18.538086>,  <23.500391, 35.635593, 18.769291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100891, 35.331844, 18.538086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855904, 35.019165, 18.585114>,  <23.708912, 34.831558, 18.613331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855904, 35.019165, 18.585114>,  <24.100891, 35.331844, 18.538086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855904, 35.019165, 18.585114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329275, -0.387495, -0.861061,
		0.718652, -0.488660, 0.494723,
		-0.612469, -0.781703, 0.117570,
		23.672163, 34.784653, 18.620384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377779, 34.813435, 18.093054>,  <24.100891, 35.331844, 18.538086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377779, 34.813435, 18.093054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037519, 34.612537, 18.155212>,  <23.833363, 34.492001, 18.192507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037519, 34.612537, 18.155212>,  <24.377779, 34.813435, 18.093054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037519, 34.612537, 18.155212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087960, -0.427377, -0.899785,
		0.518322, -0.751733, 0.407725,
		-0.850650, -0.502242, 0.155396,
		23.782324, 34.461864, 18.201832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.531586, 34.071541, 17.881672>,  <24.377779, 34.813435, 18.093054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.531586, 34.071541, 17.881672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142221, 34.162605, 17.871555>,  <23.908604, 34.217243, 17.865486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.142221, 34.162605, 17.871555>,  <24.531586, 34.071541, 17.881672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.142221, 34.162605, 17.871555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093520, -0.495767, -0.863405,
		-0.209105, -0.838083, 0.503876,
		-0.973411, 0.227665, -0.025289,
		23.850199, 34.230904, 17.863968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110888, 33.390648, 17.716934>,  <24.531586, 34.071541, 17.881672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110888, 33.390648, 17.716934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868946, 33.693211, 17.617329>,  <23.723782, 33.874748, 17.557566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868946, 33.693211, 17.617329>,  <24.110888, 33.390648, 17.716934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868946, 33.693211, 17.617329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185827, -0.438131, -0.879494,
		-0.774352, -0.485691, 0.405565,
		-0.604853, 0.756403, -0.249013,
		23.687490, 33.920132, 17.542625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.408236, 33.072231, 17.442945>,  <24.110888, 33.390648, 17.716934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.408236, 33.072231, 17.442945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432558, 33.450031, 17.313816>,  <23.447151, 33.676712, 17.236338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432558, 33.450031, 17.313816>,  <23.408236, 33.072231, 17.442945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432558, 33.450031, 17.313816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271752, -0.295540, -0.915864,
		-0.960444, 0.143417, 0.238700,
		0.060805, 0.944504, -0.322823,
		23.450800, 33.733383, 17.216969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675014, 33.198162, 17.078144>,  <23.408236, 33.072231, 17.442945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675014, 33.198162, 17.078144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933880, 33.474121, 16.948391>,  <23.089199, 33.639694, 16.870539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.933880, 33.474121, 16.948391>,  <22.675014, 33.198162, 17.078144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.933880, 33.474121, 16.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271631, -0.188902, -0.943680,
		-0.712316, 0.698829, 0.065146,
		0.647165, 0.689894, -0.324382,
		23.128029, 33.681087, 16.851076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327284, 33.704502, 16.621349>,  <22.675014, 33.198162, 17.078144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327284, 33.704502, 16.621349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712467, 33.731800, 16.516998>,  <22.943577, 33.748180, 16.454388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712467, 33.731800, 16.516998>,  <22.327284, 33.704502, 16.621349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.712467, 33.731800, 16.516998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231815, -0.284699, -0.930165,
		-0.137749, 0.956185, -0.258333,
		0.962957, 0.068244, -0.260875,
		23.001354, 33.752274, 16.438736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.403784, 34.116837, 16.101624>,  <22.327284, 33.704502, 16.621349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.403784, 34.116837, 16.101624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732229, 33.890263, 16.073536>,  <22.929296, 33.754318, 16.056683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732229, 33.890263, 16.073536>,  <22.403784, 34.116837, 16.101624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732229, 33.890263, 16.073536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298433, -0.321198, -0.898760,
		0.486531, 0.758939, -0.432781,
		0.821112, -0.566431, -0.070220,
		22.978563, 33.720333, 16.052469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635511, 34.180485, 15.390746>,  <22.403784, 34.116837, 16.101624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635511, 34.180485, 15.390746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847055, 33.865746, 15.517978>,  <22.973982, 33.676903, 15.594316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847055, 33.865746, 15.517978>,  <22.635511, 34.180485, 15.390746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.847055, 33.865746, 15.517978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185191, -0.472736, -0.861525,
		0.828258, 0.396720, -0.395729,
		0.528859, -0.786851, 0.318079,
		23.005713, 33.629692, 15.613401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.022272, 34.057293, 14.856140>,  <22.635511, 34.180485, 15.390746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.022272, 34.057293, 14.856140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050924, 33.721344, 15.071357>,  <23.068115, 33.519775, 15.200487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050924, 33.721344, 15.071357>,  <23.022272, 34.057293, 14.856140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050924, 33.721344, 15.071357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120758, -0.542762, -0.831160,
		0.990094, -0.005435, -0.140301,
		0.071633, -0.839869, 0.538042,
		23.072414, 33.469383, 15.232769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606312, 33.668243, 14.582910>,  <23.022272, 34.057293, 14.856140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606312, 33.668243, 14.582910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355888, 33.426704, 14.780261>,  <23.205635, 33.281780, 14.898672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355888, 33.426704, 14.780261>,  <23.606312, 33.668243, 14.582910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.355888, 33.426704, 14.780261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012887, -0.624619, -0.780824,
		0.779670, -0.495199, 0.383265,
		-0.626058, -0.603846, 0.493378,
		23.168072, 33.245552, 14.928274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.943483, 33.008114, 14.467495>,  <23.606312, 33.668243, 14.582910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.943483, 33.008114, 14.467495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.571119, 32.924000, 14.586953>,  <23.347702, 32.873531, 14.658628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.571119, 32.924000, 14.586953>,  <23.943483, 33.008114, 14.467495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.571119, 32.924000, 14.586953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134219, -0.563493, -0.815145,
		0.339699, -0.798909, 0.496335,
		-0.930908, -0.210287, 0.298647,
		23.291847, 32.860912, 14.676547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.826256, 32.377457, 14.241361>,  <23.943483, 33.008114, 14.467495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.826256, 32.377457, 14.241361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449181, 32.480316, 14.326419>,  <23.222937, 32.542030, 14.377454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449181, 32.480316, 14.326419>,  <23.826256, 32.377457, 14.241361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449181, 32.480316, 14.326419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328587, -0.604464, -0.725710,
		-0.058076, -0.753990, 0.654314,
		-0.942687, 0.257145, 0.212646,
		23.166374, 32.557461, 14.390213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.465054, 31.789673, 14.315288>,  <23.826256, 32.377457, 14.241361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.465054, 31.789673, 14.315288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241497, 32.095970, 14.187989>,  <23.107363, 32.279747, 14.111610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241497, 32.095970, 14.187989>,  <23.465054, 31.789673, 14.315288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.241497, 32.095970, 14.187989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382740, -0.578661, -0.720182,
		-0.735630, -0.280698, 0.616488,
		-0.558891, 0.765741, -0.318246,
		23.073830, 32.325691, 14.092516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.693974, 31.214766, 14.478617>,  <23.465054, 31.789673, 14.315288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.693974, 31.214766, 14.478617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.598978, 30.897038, 14.254954>,  <23.541981, 30.706402, 14.120757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.598978, 30.897038, 14.254954>,  <23.693974, 31.214766, 14.478617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.598978, 30.897038, 14.254954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596982, -0.334742, 0.729082,
		-0.766297, 0.506956, -0.394696,
		-0.237491, -0.794319, -0.559156,
		23.527731, 30.658741, 14.087208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.960928, 31.004417, 14.166060>,  <23.693974, 31.214766, 14.478617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.960928, 31.004417, 14.166060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203564, 30.723835, 14.315730>,  <23.349146, 30.555485, 14.405532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203564, 30.723835, 14.315730>,  <22.960928, 31.004417, 14.166060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.203564, 30.723835, 14.315730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567335, -0.052224, 0.821830,
		-0.556939, -0.710795, -0.429640,
		0.606590, -0.701459, 0.374173,
		23.385540, 30.513397, 14.427982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.363863, 30.611448, 14.379920>,  <22.960928, 31.004417, 14.166060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.363863, 30.611448, 14.379920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.164202, 30.453724, 14.071280>,  <22.044405, 30.359089, 13.886097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.164202, 30.453724, 14.071280>,  <22.363863, 30.611448, 14.379920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164202, 30.453724, 14.071280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802507, 0.546243, 0.240002,
		0.326846, 0.739012, -0.589095,
		-0.499153, -0.394310, -0.771600,
		22.014456, 30.335430, 13.839801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.055603, 31.160110, 13.821858>,  <22.363863, 30.611448, 14.379920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.055603, 31.160110, 13.821858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.823023, 30.839371, 13.876933>,  <21.683475, 30.646927, 13.909978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.823023, 30.839371, 13.876933>,  <22.055603, 31.160110, 13.821858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.823023, 30.839371, 13.876933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804586, 0.591823, 0.048856,
		-0.120661, -0.082374, -0.989270,
		-0.581448, -0.801848, 0.137688,
		21.648588, 30.598816, 13.918240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310009, 31.406202, 13.874494>,  <22.055603, 31.160110, 13.821858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310009, 31.406202, 13.874494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.918116, 31.335213, 13.911637>,  <20.682980, 31.292618, 13.933924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.918116, 31.335213, 13.911637>,  <21.310009, 31.406202, 13.874494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918116, 31.335213, 13.911637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070259, 0.129642, 0.989069,
		-0.187574, 0.975549, -0.114545,
		-0.979734, -0.177476, 0.092859,
		20.624195, 31.281969, 13.939495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996279, 32.000217, 14.193285>,  <21.310009, 31.406202, 13.874494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996279, 32.000217, 14.193285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765636, 31.680923, 14.262971>,  <20.627251, 31.489347, 14.304783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765636, 31.680923, 14.262971>,  <20.996279, 32.000217, 14.193285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765636, 31.680923, 14.262971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100196, 0.142536, 0.984705,
		-0.810856, 0.585242, -0.002208,
		-0.576605, -0.798233, 0.174215,
		20.592655, 31.441454, 14.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396494, 32.201893, 14.615609>,  <20.996279, 32.000217, 14.193285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396494, 32.201893, 14.615609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498459, 31.818600, 14.667457>,  <20.559639, 31.588623, 14.698565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498459, 31.818600, 14.667457>,  <20.396494, 32.201893, 14.615609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498459, 31.818600, 14.667457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065535, 0.116619, 0.991012,
		-0.964741, -0.261117, -0.033070,
		0.254914, -0.958237, 0.129620,
		20.574932, 31.531128, 14.706343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981682, 31.918709, 15.123851>,  <20.396494, 32.201893, 14.615609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981682, 31.918709, 15.123851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297712, 31.675297, 15.153434>,  <20.487331, 31.529249, 15.171184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297712, 31.675297, 15.153434>,  <19.981682, 31.918709, 15.123851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297712, 31.675297, 15.153434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005695, 0.127928, 0.991767,
		-0.612982, -0.783150, 0.104539,
		0.790076, -0.608531, 0.073957,
		20.534735, 31.492737, 15.175621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825756, 31.320055, 15.613971>,  <19.981682, 31.918709, 15.123851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825756, 31.320055, 15.613971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215513, 31.408741, 15.628947>,  <20.449368, 31.461952, 15.637934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215513, 31.408741, 15.628947>,  <19.825756, 31.320055, 15.613971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215513, 31.408741, 15.628947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096652, 0.262642, 0.960041,
		0.203019, -0.939075, 0.277345,
		0.974393, 0.221713, 0.037442,
		20.507832, 31.475256, 15.640180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115211, 31.044577, 16.227865>,  <19.825756, 31.320055, 15.613971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115211, 31.044577, 16.227865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370447, 31.340775, 16.143475>,  <20.523588, 31.518494, 16.092840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370447, 31.340775, 16.143475>,  <20.115211, 31.044577, 16.227865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370447, 31.340775, 16.143475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176037, 0.407056, 0.896279,
		0.749570, -0.534765, 0.390092,
		0.638088, 0.740494, -0.210978,
		20.561874, 31.562923, 16.080181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620443, 31.190245, 16.850500>,  <20.115211, 31.044577, 16.227865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620443, 31.190245, 16.850500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573866, 31.521854, 16.631718>,  <20.545919, 31.720819, 16.500448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573866, 31.521854, 16.631718>,  <20.620443, 31.190245, 16.850500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573866, 31.521854, 16.631718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193838, 0.521145, 0.831164,
		0.974099, 0.202804, 0.100012,
		-0.116443, 0.829022, -0.546958,
		20.538933, 31.770561, 16.467630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.969570, 31.736624, 17.273027>,  <20.620443, 31.190245, 16.850500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.969570, 31.736624, 17.273027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757143, 31.944946, 17.005676>,  <20.629686, 32.069939, 16.845266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757143, 31.944946, 17.005676>,  <20.969570, 31.736624, 17.273027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757143, 31.944946, 17.005676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248278, 0.658540, 0.710411,
		0.810138, 0.543220, -0.220426,
		-0.531069, 0.520804, -0.668378,
		20.597822, 32.101189, 16.805162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157137, 32.406330, 17.343781>,  <20.969570, 31.736624, 17.273027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157137, 32.406330, 17.343781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790190, 32.405552, 17.184566>,  <20.570021, 32.405083, 17.089039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790190, 32.405552, 17.184566>,  <21.157137, 32.406330, 17.343781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.790190, 32.405552, 17.184566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292737, 0.680872, 0.671355,
		0.269702, 0.732399, -0.625181,
		-0.917369, -0.001948, -0.398033,
		20.514978, 32.404968, 17.065157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.012354, 33.062599, 17.467587>,  <21.157137, 32.406330, 17.343781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.012354, 33.062599, 17.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667181, 32.882172, 17.376476>,  <20.460077, 32.773914, 17.321810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667181, 32.882172, 17.376476>,  <21.012354, 33.062599, 17.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667181, 32.882172, 17.376476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462415, 0.523140, 0.715889,
		-0.203757, 0.723092, -0.660016,
		-0.862934, -0.451069, -0.227775,
		20.408300, 32.746853, 17.308144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609367, 33.589260, 17.405161>,  <21.012354, 33.062599, 17.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609367, 33.589260, 17.405161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.381311, 33.268078, 17.474682>,  <20.244478, 33.075371, 17.516396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.381311, 33.268078, 17.474682>,  <20.609367, 33.589260, 17.405161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381311, 33.268078, 17.474682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315495, 0.409327, 0.856104,
		-0.758553, 0.433265, -0.486702,
		-0.570140, -0.802952, 0.173803,
		20.210270, 33.027191, 17.526823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975586, 33.816612, 17.386637>,  <20.609367, 33.589260, 17.405161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975586, 33.816612, 17.386637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.966759, 33.471142, 17.588062>,  <19.961462, 33.263859, 17.708918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.966759, 33.471142, 17.588062>,  <19.975586, 33.816612, 17.386637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966759, 33.471142, 17.588062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314008, 0.484183, 0.816680,
		-0.949164, -0.140100, -0.281887,
		-0.022068, -0.863677, 0.503562,
		19.960138, 33.212040, 17.739130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387836, 33.861629, 17.807749>,  <19.975586, 33.816612, 17.386637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387836, 33.861629, 17.807749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.625332, 33.583401, 17.969563>,  <19.767830, 33.416462, 18.066650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.625332, 33.583401, 17.969563>,  <19.387836, 33.861629, 17.807749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625332, 33.583401, 17.969563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190354, 0.367055, 0.910514,
		-0.781818, -0.617613, 0.085529,
		0.593739, -0.695575, 0.404535,
		19.803453, 33.374729, 18.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005745, 33.691788, 18.374994>,  <19.387836, 33.861629, 17.807749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.005745, 33.691788, 18.374994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367405, 33.541039, 18.455475>,  <19.584400, 33.450588, 18.503763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367405, 33.541039, 18.455475>,  <19.005745, 33.691788, 18.374994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367405, 33.541039, 18.455475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025164, 0.423159, 0.905706,
		-0.426478, -0.823955, 0.373115,
		0.904148, -0.376874, 0.201202,
		19.638649, 33.427975, 18.515835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885092, 33.629116, 19.120134>,  <19.005745, 33.691788, 18.374994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885092, 33.629116, 19.120134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268780, 33.636311, 19.007301>,  <19.498993, 33.640625, 18.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268780, 33.636311, 19.007301>,  <18.885092, 33.629116, 19.120134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268780, 33.636311, 19.007301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227349, 0.543891, 0.807772,
		0.167948, -0.838963, 0.517624,
		0.959221, 0.017982, -0.282083,
		19.556547, 33.641705, 18.922676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183556, 33.490242, 19.711018>,  <18.885092, 33.629116, 19.120134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183556, 33.490242, 19.711018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476717, 33.651657, 19.491928>,  <19.652615, 33.748508, 19.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476717, 33.651657, 19.491928>,  <19.183556, 33.490242, 19.711018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476717, 33.651657, 19.491928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311792, 0.516328, 0.797616,
		0.604678, -0.755353, 0.252598,
		0.732905, 0.403543, -0.547726,
		19.696589, 33.772720, 19.327610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897295, 33.264866, 20.007196>,  <19.183556, 33.490242, 19.711018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897295, 33.264866, 20.007196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883394, 33.616867, 19.817715>,  <19.875053, 33.828068, 19.704025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883394, 33.616867, 19.817715>,  <19.897295, 33.264866, 20.007196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883394, 33.616867, 19.817715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426266, 0.441764, 0.789394,
		0.903930, -0.174489, -0.390466,
		-0.034754, 0.879999, -0.473702,
		19.872969, 33.880867, 19.675604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553284, 33.503689, 20.201645>,  <19.897295, 33.264866, 20.007196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553284, 33.503689, 20.201645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375950, 33.839886, 20.077045>,  <20.269550, 34.041603, 20.002285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375950, 33.839886, 20.077045>,  <20.553284, 33.503689, 20.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375950, 33.839886, 20.077045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423631, 0.502725, 0.753528,
		0.789931, 0.202103, -0.578933,
		-0.443335, 0.840489, -0.311501,
		20.242950, 34.092033, 19.983595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034857, 34.118446, 20.222961>,  <20.553284, 33.503689, 20.201645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034857, 34.118446, 20.222961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690353, 34.312595, 20.162766>,  <20.483652, 34.429085, 20.126648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690353, 34.312595, 20.162766>,  <21.034857, 34.118446, 20.222961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690353, 34.312595, 20.162766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362197, 0.794045, 0.488166,
		0.356441, 0.365929, -0.859678,
		-0.861257, 0.485375, -0.150491,
		20.431976, 34.458206, 20.117619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304192, 34.674026, 20.178827>,  <21.034857, 34.118446, 20.222961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304192, 34.674026, 20.178827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921232, 34.765583, 20.249252>,  <20.691458, 34.820518, 20.291508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921232, 34.765583, 20.249252>,  <21.304192, 34.674026, 20.178827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921232, 34.765583, 20.249252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278736, 0.891851, 0.356241,
		-0.075481, 0.390140, -0.917656,
		-0.957397, 0.228895, 0.176063,
		20.634012, 34.834251, 20.302071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159985, 35.320381, 19.822187>,  <21.304192, 34.674026, 20.178827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159985, 35.320381, 19.822187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.896231, 35.272587, 20.119087>,  <20.737978, 35.243912, 20.297226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.896231, 35.272587, 20.119087>,  <21.159985, 35.320381, 19.822187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896231, 35.272587, 20.119087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354309, 0.821385, 0.446981,
		-0.663080, 0.557718, -0.499275,
		-0.659386, -0.119486, 0.742249,
		20.698416, 35.236740, 20.341763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.001535, 35.971294, 19.999380>,  <21.159985, 35.320381, 19.822187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.001535, 35.971294, 19.999380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865063, 35.780106, 20.323143>,  <20.783178, 35.665394, 20.517401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865063, 35.780106, 20.323143>,  <21.001535, 35.971294, 19.999380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865063, 35.780106, 20.323143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249822, 0.784000, 0.568271,
		-0.906191, 0.396093, -0.148080,
		-0.341183, -0.477968, 0.809407,
		20.762709, 35.636715, 20.565966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564491, 36.455601, 20.308788>,  <21.001535, 35.971294, 19.999380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564491, 36.455601, 20.308788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.687387, 36.212143, 20.601406>,  <20.761126, 36.066071, 20.776978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.687387, 36.212143, 20.601406>,  <20.564491, 36.455601, 20.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687387, 36.212143, 20.601406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261803, 0.793126, 0.549919,
		-0.914911, 0.022563, 0.403025,
		0.307241, -0.608640, 0.731546,
		20.779560, 36.029552, 20.820869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167191, 36.653732, 20.833406>,  <20.564491, 36.455601, 20.308788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167191, 36.653732, 20.833406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494198, 36.485229, 20.990486>,  <20.690401, 36.384129, 21.084734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494198, 36.485229, 20.990486>,  <20.167191, 36.653732, 20.833406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494198, 36.485229, 20.990486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162416, 0.822845, 0.544562,
		-0.552527, -0.381408, 0.741108,
		0.817517, -0.421253, 0.392697,
		20.739452, 36.358852, 21.108295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182180, 36.909752, 21.444811>,  <20.167191, 36.653732, 20.833406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182180, 36.909752, 21.444811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554838, 36.764755, 21.434704>,  <20.778433, 36.677757, 21.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554838, 36.764755, 21.434704>,  <20.182180, 36.909752, 21.444811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554838, 36.764755, 21.434704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289075, 0.697219, 0.655989,
		-0.220174, -0.618452, 0.754348,
		0.931643, -0.362495, -0.025270,
		20.834332, 36.656006, 21.427122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.397636, 36.785606, 22.086800>,  <20.182180, 36.909752, 21.444811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.397636, 36.785606, 22.086800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739458, 36.828094, 21.883446>,  <20.944551, 36.853588, 21.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739458, 36.828094, 21.883446>,  <20.397636, 36.785606, 22.086800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739458, 36.828094, 21.883446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290363, 0.713886, 0.637225,
		0.430615, -0.692159, 0.579212,
		0.854553, 0.106216, -0.508387,
		20.995825, 36.859959, 21.730930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781370, 36.976963, 22.536457>,  <20.397636, 36.785606, 22.086800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781370, 36.976963, 22.536457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.568626, 37.314987, 22.514530>,  <19.440981, 37.517799, 22.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.568626, 37.314987, 22.514530>,  <19.781370, 36.976963, 22.536457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568626, 37.314987, 22.514530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441754, -0.221635, 0.869328,
		0.722483, 0.486575, 0.491186,
		-0.531857, 0.845058, -0.054819,
		19.409069, 37.568504, 22.498085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893141, 37.462212, 23.191879>,  <19.781370, 36.976963, 22.536457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893141, 37.462212, 23.191879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.546680, 37.530830, 23.004112>,  <19.338804, 37.572002, 22.891453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.546680, 37.530830, 23.004112>,  <19.893141, 37.462212, 23.191879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546680, 37.530830, 23.004112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480881, -0.030205, 0.876265,
		0.136141, 0.984713, 0.108655,
		-0.866152, 0.171546, -0.469418,
		19.286835, 37.582294, 22.863287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506453, 38.102463, 23.389162>,  <19.893141, 37.462212, 23.191879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506453, 38.102463, 23.389162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251749, 37.813595, 23.281082>,  <19.098927, 37.640274, 23.216234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251749, 37.813595, 23.281082>,  <19.506453, 38.102463, 23.389162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251749, 37.813595, 23.281082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324417, -0.066975, 0.943540,
		-0.699493, 0.688466, -0.191637,
		-0.636760, -0.722170, -0.270198,
		19.060720, 37.596943, 23.200022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721272, 38.304310, 23.368364>,  <19.506453, 38.102463, 23.389162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721272, 38.304310, 23.368364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812761, 37.931522, 23.480873>,  <18.867655, 37.707848, 23.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812761, 37.931522, 23.480873>,  <18.721272, 38.304310, 23.368364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812761, 37.931522, 23.480873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468091, 0.148048, 0.871190,
		-0.853567, -0.330923, -0.402385,
		0.228725, -0.931972, 0.281271,
		18.881378, 37.651932, 23.565254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130211, 37.960293, 23.642731>,  <18.721272, 38.304310, 23.368364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130211, 37.960293, 23.642731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.439674, 37.761787, 23.800301>,  <18.625353, 37.642685, 23.894842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.439674, 37.761787, 23.800301>,  <18.130211, 37.960293, 23.642731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439674, 37.761787, 23.800301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428588, 0.048016, 0.902224,
		-0.466652, -0.866846, -0.175543,
		0.773659, -0.496259, 0.393926,
		18.671772, 37.612911, 23.918478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.104610, 26.946878, 25.506966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.479465, 26.987026, 25.640652>,  <32.704380, 27.011114, 25.720863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.479465, 26.987026, 25.640652>,  <32.104610, 26.946878, 25.506966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479465, 26.987026, 25.640652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149143, 0.750668, -0.643625,
		-0.315485, 0.653011, 0.688510,
		0.937137, 0.100368, 0.334217,
		32.760605, 27.017138, 25.740917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206520, 27.602009, 25.821110>,  <32.104610, 26.946878, 25.506966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206520, 27.602009, 25.821110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584194, 27.499039, 25.738895>,  <32.810799, 27.437258, 25.689568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584194, 27.499039, 25.738895>,  <32.206520, 27.602009, 25.821110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584194, 27.499039, 25.738895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125777, 0.858403, -0.497318,
		0.304452, 0.443709, 0.842871,
		0.944187, -0.257423, -0.205534,
		32.867451, 27.421812, 25.677235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587879, 28.182022, 25.979673>,  <32.206520, 27.602009, 25.821110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587879, 28.182022, 25.979673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811882, 27.969650, 25.725269>,  <32.946281, 27.842228, 25.572626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811882, 27.969650, 25.725269>,  <32.587879, 28.182022, 25.979673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811882, 27.969650, 25.725269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341408, 0.847350, -0.406741,
		0.754875, 0.010637, 0.655782,
		0.560003, -0.530928, -0.636012,
		32.979881, 27.810371, 25.534466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230213, 28.536455, 25.888645>,  <32.587879, 28.182022, 25.979673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230213, 28.536455, 25.888645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167458, 28.308487, 25.566013>,  <33.129803, 28.171705, 25.372435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167458, 28.308487, 25.566013>,  <33.230213, 28.536455, 25.888645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167458, 28.308487, 25.566013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326258, 0.740937, -0.587000,
		0.932170, -0.355248, 0.069695,
		-0.156891, -0.569922, -0.806582,
		33.120392, 28.137510, 25.324039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726765, 28.877764, 25.470787>,  <33.230213, 28.536455, 25.888645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726765, 28.877764, 25.470787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.509407, 28.655895, 25.218735>,  <33.378994, 28.522774, 25.067503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.509407, 28.655895, 25.218735>,  <33.726765, 28.877764, 25.470787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509407, 28.655895, 25.218735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235953, 0.619448, -0.748739,
		0.805638, -0.555540, -0.205726,
		-0.543391, -0.554671, -0.630132,
		33.346390, 28.489494, 25.029696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114525, 28.866989, 24.833725>,  <33.726765, 28.877764, 25.470787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114525, 28.866989, 24.833725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741333, 28.781837, 24.717636>,  <33.517418, 28.730747, 24.647984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741333, 28.781837, 24.717636>,  <34.114525, 28.866989, 24.833725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741333, 28.781837, 24.717636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034526, 0.749684, -0.660894,
		0.358265, -0.626623, -0.692092,
		-0.932982, -0.212880, -0.290220,
		33.461437, 28.717974, 24.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130417, 28.959438, 24.106054>,  <34.114525, 28.866989, 24.833725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130417, 28.959438, 24.106054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746422, 28.991474, 24.213394>,  <33.516026, 29.010696, 24.277798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746422, 28.991474, 24.213394>,  <34.130417, 28.959438, 24.106054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746422, 28.991474, 24.213394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056048, 0.883898, -0.464309,
		-0.274379, -0.460771, -0.844042,
		-0.959987, 0.080090, 0.268348,
		33.458427, 29.015501, 24.293900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769051, 29.087379, 23.595850>,  <34.130417, 28.959438, 24.106054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769051, 29.087379, 23.595850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524246, 29.237434, 23.874336>,  <33.377365, 29.327467, 24.041428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524246, 29.237434, 23.874336>,  <33.769051, 29.087379, 23.595850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524246, 29.237434, 23.874336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049410, 0.896755, -0.439760,
		-0.789307, -0.234736, -0.567357,
		-0.612008, 0.375139, 0.696217,
		33.340645, 29.349976, 24.083200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394112, 29.668921, 23.197548>,  <33.769051, 29.087379, 23.595850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394112, 29.668921, 23.197548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309238, 29.733608, 23.583050>,  <33.258316, 29.772421, 23.814352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309238, 29.733608, 23.583050>,  <33.394112, 29.668921, 23.197548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309238, 29.733608, 23.583050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224670, 0.951721, -0.209164,
		-0.951053, -0.260908, -0.165604,
		-0.212182, 0.161720, 0.963756,
		33.245583, 29.782124, 23.872177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890026, 30.216915, 23.136847>,  <33.394112, 29.668921, 23.197548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890026, 30.216915, 23.136847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.003304, 30.218884, 23.520466>,  <33.071270, 30.220064, 23.750637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.003304, 30.218884, 23.520466>,  <32.890026, 30.216915, 23.136847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003304, 30.218884, 23.520466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213325, 0.975259, 0.057985,
		-0.935037, -0.221010, 0.277238,
		0.283194, 0.004923, 0.959050,
		33.088261, 30.220360, 23.808182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343899, 30.538115, 23.471149>,  <32.890026, 30.216915, 23.136847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343899, 30.538115, 23.471149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675846, 30.557114, 23.693523>,  <32.875015, 30.568512, 23.826948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675846, 30.557114, 23.693523>,  <32.343899, 30.538115, 23.471149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675846, 30.557114, 23.693523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097449, 0.993394, 0.060597,
		-0.549384, -0.104463, 0.829014,
		0.829868, 0.047496, 0.555935,
		32.924805, 30.571362, 23.860304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244041, 30.913086, 24.122683>,  <32.343899, 30.538115, 23.471149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244041, 30.913086, 24.122683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624428, 30.951244, 24.004997>,  <32.852661, 30.974140, 23.934387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624428, 30.951244, 24.004997>,  <32.244041, 30.913086, 24.122683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624428, 30.951244, 24.004997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080705, 0.994826, 0.061710,
		0.298576, -0.034940, 0.953746,
		0.950968, 0.095398, -0.294211,
		32.909718, 30.979864, 23.916735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509636, 31.485048, 24.445606>,  <32.244041, 30.913086, 24.122683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509636, 31.485048, 24.445606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.767670, 31.432205, 24.144566>,  <32.922489, 31.400499, 23.963942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.767670, 31.432205, 24.144566>,  <32.509636, 31.485048, 24.445606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767670, 31.432205, 24.144566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083890, 0.991232, -0.102090,
		0.759491, 0.002721, 0.650512,
		0.645086, -0.132107, -0.752603,
		32.961197, 31.392572, 23.918785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886631, 32.092915, 24.476183>,  <32.509636, 31.485048, 24.445606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886631, 32.092915, 24.476183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001114, 31.918816, 24.134739>,  <33.069805, 31.814358, 23.929873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001114, 31.918816, 24.134739>,  <32.886631, 32.092915, 24.476183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001114, 31.918816, 24.134739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017623, 0.893116, -0.449480,
		0.958005, 0.113602, 0.263288,
		0.286209, -0.435244, -0.853608,
		33.086975, 31.788242, 23.878656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449554, 32.453163, 24.230865>,  <32.886631, 32.092915, 24.476183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449554, 32.453163, 24.230865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317513, 32.275505, 23.897697>,  <33.238285, 32.168911, 23.697796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317513, 32.275505, 23.897697>,  <33.449554, 32.453163, 24.230865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317513, 32.275505, 23.897697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128014, 0.853170, -0.505682,
		0.935223, -0.273556, -0.224780,
		-0.330107, -0.444150, -0.832922,
		33.218479, 32.142262, 23.647821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936298, 32.687981, 23.671274>,  <33.449554, 32.453163, 24.230865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936298, 32.687981, 23.671274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601051, 32.558281, 23.495811>,  <33.399902, 32.480461, 23.390533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601051, 32.558281, 23.495811>,  <33.936298, 32.687981, 23.671274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601051, 32.558281, 23.495811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100838, 0.882391, -0.459584,
		0.536086, -0.340952, -0.772245,
		-0.838119, -0.324248, -0.438656,
		33.349617, 32.461006, 23.364214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072319, 32.746780, 22.992100>,  <33.936298, 32.687981, 23.671274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072319, 32.746780, 22.992100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673145, 32.727623, 23.009186>,  <33.433640, 32.716129, 23.019438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673145, 32.727623, 23.009186>,  <34.072319, 32.746780, 22.992100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673145, 32.727623, 23.009186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062555, 0.874543, -0.480896,
		-0.014326, -0.482577, -0.875736,
		-0.997939, -0.047892, 0.042716,
		33.373764, 32.713257, 23.022001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740906, 32.780582, 22.295662>,  <34.072319, 32.746780, 22.992100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740906, 32.780582, 22.295662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446301, 32.895885, 22.540436>,  <33.269539, 32.965065, 22.687300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446301, 32.895885, 22.540436>,  <33.740906, 32.780582, 22.295662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446301, 32.895885, 22.540436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187285, 0.782390, -0.593962,
		-0.649984, -0.552064, -0.522251,
		-0.736509, 0.288256, 0.611934,
		33.225349, 32.982361, 22.724016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188507, 32.892982, 21.870073>,  <33.740906, 32.780582, 22.295662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188507, 32.892982, 21.870073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113667, 33.109406, 22.198036>,  <33.068764, 33.239262, 22.394814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113667, 33.109406, 22.198036>,  <33.188507, 32.892982, 21.870073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113667, 33.109406, 22.198036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317333, 0.756609, -0.571702,
		-0.929674, -0.367148, 0.030137,
		-0.187097, 0.541060, 0.819908,
		33.057537, 33.271725, 22.444008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587742, 33.110218, 21.699705>,  <33.188507, 32.892982, 21.870073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587742, 33.110218, 21.699705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714321, 33.334473, 22.005791>,  <32.790268, 33.469025, 22.189442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714321, 33.334473, 22.005791>,  <32.587742, 33.110218, 21.699705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714321, 33.334473, 22.005791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530019, 0.773505, -0.347521,
		-0.786727, -0.295604, 0.541922,
		0.316451, 0.560633, 0.765212,
		32.809258, 33.502663, 22.235353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936775, 33.578850, 21.811090>,  <32.587742, 33.110218, 21.699705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936775, 33.578850, 21.811090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.240768, 33.761066, 21.996525>,  <32.423164, 33.870396, 22.107786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.240768, 33.761066, 21.996525>,  <31.936775, 33.578850, 21.811090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240768, 33.761066, 21.996525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306478, 0.880167, -0.362460,
		-0.573149, 0.133384, 0.808523,
		0.759981, 0.455538, 0.463588,
		32.468761, 33.897728, 22.135601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634918, 34.173801, 22.222342>,  <31.936775, 33.578850, 21.811090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634918, 34.173801, 22.222342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023895, 34.256214, 22.178688>,  <32.257282, 34.305660, 22.152496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.023895, 34.256214, 22.178688>,  <31.634918, 34.173801, 22.222342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023895, 34.256214, 22.178688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217082, 0.970868, -0.101447,
		0.085053, 0.122342, 0.988837,
		0.972441, 0.206030, -0.109133,
		32.315628, 34.318024, 22.145948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027803, 34.424713, 21.807615>,  <31.634918, 34.173801, 22.222342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027803, 34.424713, 21.807615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.646822, 34.539780, 21.847775>,  <30.418234, 34.608818, 21.871870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.646822, 34.539780, 21.847775>,  <31.027803, 34.424713, 21.807615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646822, 34.539780, 21.847775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265458, -0.945223, 0.189960,
		0.149544, 0.154277, 0.976645,
		-0.952454, 0.287666, 0.100398,
		30.361086, 34.626080, 21.877893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742300, 34.112175, 22.389843>,  <31.027803, 34.424713, 21.807615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742300, 34.112175, 22.389843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.396042, 34.236080, 22.232513>,  <30.188288, 34.310425, 22.138115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.396042, 34.236080, 22.232513>,  <30.742300, 34.112175, 22.389843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396042, 34.236080, 22.232513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481061, -0.732280, 0.482022,
		-0.138710, 0.606473, 0.782911,
		-0.865644, 0.309767, -0.393326,
		30.136349, 34.329010, 22.114515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266577, 34.245068, 22.929142>,  <30.742300, 34.112175, 22.389843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266577, 34.245068, 22.929142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.092253, 34.144424, 22.583481>,  <29.987658, 34.084038, 22.376083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.092253, 34.144424, 22.583481>,  <30.266577, 34.245068, 22.929142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092253, 34.144424, 22.583481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439860, -0.778118, 0.448392,
		-0.785233, 0.575521, 0.228439,
		-0.435812, -0.251611, -0.864153,
		29.961510, 34.068939, 22.324236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599310, 34.084705, 23.111177>,  <30.266577, 34.245068, 22.929142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599310, 34.084705, 23.111177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.630985, 33.903816, 22.755825>,  <29.649990, 33.795280, 22.542614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.630985, 33.903816, 22.755825>,  <29.599310, 34.084705, 23.111177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630985, 33.903816, 22.755825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468814, -0.803371, 0.367163,
		-0.879740, 0.387411, -0.275627,
		0.079188, -0.452226, -0.888381,
		29.654741, 33.768150, 22.489311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948385, 33.648167, 23.011648>,  <29.599310, 34.084705, 23.111177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948385, 33.648167, 23.011648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196331, 33.529438, 22.721085>,  <29.345098, 33.458202, 22.546747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196331, 33.529438, 22.721085>,  <28.948385, 33.648167, 23.011648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196331, 33.529438, 22.721085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315423, -0.941871, 0.115705,
		-0.718525, 0.157404, -0.677455,
		0.619863, -0.296822, -0.726406,
		29.382290, 33.440392, 22.503162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570963, 33.106274, 22.570131>,  <28.948385, 33.648167, 23.011648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570963, 33.106274, 22.570131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.958834, 33.050053, 22.490154>,  <29.191555, 33.016319, 22.442169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.958834, 33.050053, 22.490154>,  <28.570963, 33.106274, 22.570131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958834, 33.050053, 22.490154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118906, -0.986051, 0.116473,
		-0.213522, -0.089166, -0.972861,
		0.969675, -0.140548, -0.199941,
		29.249737, 33.007889, 22.430172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590120, 32.400860, 22.352070>,  <28.570963, 33.106274, 22.570131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590120, 32.400860, 22.352070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.979628, 32.460125, 22.421150>,  <29.213331, 32.495686, 22.462599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.979628, 32.460125, 22.421150>,  <28.590120, 32.400860, 22.352070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979628, 32.460125, 22.421150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133215, -0.986501, 0.095234,
		0.184482, -0.069729, -0.980359,
		0.973766, 0.148167, 0.172703,
		29.271757, 32.504574, 22.472961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871246, 31.886116, 21.916616>,  <28.590120, 32.400860, 22.352070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871246, 31.886116, 21.916616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.106758, 32.015717, 22.212822>,  <29.248066, 32.093475, 22.390545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.106758, 32.015717, 22.212822>,  <28.871246, 31.886116, 21.916616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106758, 32.015717, 22.212822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301126, -0.938120, 0.171038,
		0.750106, 0.122283, -0.649913,
		0.588781, 0.324002, 0.740512,
		29.283392, 32.112919, 22.434977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587473, 31.474337, 21.837772>,  <28.871246, 31.886116, 21.916616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587473, 31.474337, 21.837772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.530682, 31.618423, 22.206573>,  <29.496607, 31.704876, 22.427855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.530682, 31.618423, 22.206573>,  <29.587473, 31.474337, 21.837772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530682, 31.618423, 22.206573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229763, -0.894005, 0.384661,
		0.962835, 0.266455, 0.044164,
		-0.141977, 0.360218, 0.922001,
		29.488089, 31.726488, 22.483173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195812, 31.355221, 22.130947>,  <29.587473, 31.474337, 21.837772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195812, 31.355221, 22.130947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946791, 31.389828, 22.442059>,  <29.797379, 31.410593, 22.628725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.946791, 31.389828, 22.442059>,  <30.195812, 31.355221, 22.130947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946791, 31.389828, 22.442059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421884, -0.799977, 0.426674,
		0.659121, 0.593760, 0.461528,
		-0.622554, 0.086519, 0.777780,
		29.760025, 31.415783, 22.675392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624784, 31.206635, 22.727583>,  <30.195812, 31.355221, 22.130947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624784, 31.206635, 22.727583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243950, 31.146690, 22.834221>,  <30.015450, 31.110723, 22.898203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243950, 31.146690, 22.834221>,  <30.624784, 31.206635, 22.727583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243950, 31.146690, 22.834221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266796, -0.833121, 0.484489,
		0.149500, 0.532402, 0.833185,
		-0.952087, -0.149860, 0.266594,
		29.958324, 31.101732, 22.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776087, 30.973404, 23.348022>,  <30.624784, 31.206635, 22.727583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776087, 30.973404, 23.348022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.398550, 30.865364, 23.271908>,  <30.172028, 30.800541, 23.226238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.398550, 30.865364, 23.271908>,  <30.776087, 30.973404, 23.348022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398550, 30.865364, 23.271908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180281, -0.903657, 0.388464,
		-0.276878, 0.332343, 0.901602,
		-0.943842, -0.270099, -0.190287,
		30.115398, 30.784334, 23.214821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512278, 30.703779, 23.985134>,  <30.776087, 30.973404, 23.348022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512278, 30.703779, 23.985134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.274834, 30.533894, 23.711712>,  <30.132368, 30.431961, 23.547659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.274834, 30.533894, 23.711712>,  <30.512278, 30.703779, 23.985134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274834, 30.533894, 23.711712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119993, -0.886611, 0.446679,
		-0.795758, 0.183131, 0.577263,
		-0.593608, -0.424716, -0.683554,
		30.096752, 30.406479, 23.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051481, 30.291248, 24.315262>,  <30.512278, 30.703779, 23.985134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051481, 30.291248, 24.315262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.062708, 30.143204, 23.943836>,  <30.069445, 30.054377, 23.720982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.062708, 30.143204, 23.943836>,  <30.051481, 30.291248, 24.315262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062708, 30.143204, 23.943836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067677, -0.926094, 0.371173,
		-0.997312, -0.073260, -0.000945,
		0.028068, -0.370112, -0.928563,
		30.071129, 30.032169, 23.665268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504143, 29.933716, 24.350811>,  <30.051481, 30.291248, 24.315262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504143, 29.933716, 24.350811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738619, 29.792831, 24.058968>,  <29.879305, 29.708302, 23.883862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738619, 29.792831, 24.058968>,  <29.504143, 29.933716, 24.350811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738619, 29.792831, 24.058968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048928, -0.914304, 0.402062,
		-0.808694, -0.199987, -0.553191,
		0.586191, -0.352211, -0.729607,
		29.914476, 29.687168, 23.840086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201380, 29.294842, 24.033052>,  <29.504143, 29.933716, 24.350811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201380, 29.294842, 24.033052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.592300, 29.267456, 23.952858>,  <29.826853, 29.251024, 23.904741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.592300, 29.267456, 23.952858>,  <29.201380, 29.294842, 24.033052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592300, 29.267456, 23.952858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007902, -0.933905, 0.357434,
		-0.211706, -0.350905, -0.912166,
		0.977302, -0.068463, -0.200486,
		29.885490, 29.246918, 23.892712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162739, 28.591068, 23.809744>,  <29.201380, 29.294842, 24.033052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162739, 28.591068, 23.809744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.540638, 28.704319, 23.875828>,  <29.767378, 28.772268, 23.915478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.540638, 28.704319, 23.875828>,  <29.162739, 28.591068, 23.809744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540638, 28.704319, 23.875828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192303, -0.886847, 0.420144,
		0.265468, -0.365160, -0.892292,
		0.944746, 0.283125, 0.165208,
		29.824062, 28.789257, 23.925390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593809, 28.114748, 23.563017>,  <29.162739, 28.591068, 23.809744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593809, 28.114748, 23.563017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.825148, 28.301701, 23.830471>,  <29.963951, 28.413872, 23.990944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.825148, 28.301701, 23.830471>,  <29.593809, 28.114748, 23.563017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825148, 28.301701, 23.830471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203884, -0.876415, 0.436267,
		0.789905, -0.115988, -0.602161,
		0.578344, 0.467380, 0.668636,
		29.998652, 28.441916, 24.031061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.011290, 27.562403, 23.888702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104530, 27.869106, 24.127949>,  <30.160475, 28.053129, 24.271496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104530, 27.869106, 24.127949>,  <30.011290, 27.562403, 23.888702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104530, 27.869106, 24.127949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311246, -0.641531, 0.701116,
		0.921297, 0.022728, -0.388194,
		0.233103, 0.766760, 0.598115,
		30.174461, 28.099134, 24.307383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778790, 27.493565, 24.142622>,  <30.011290, 27.562403, 23.888702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778790, 27.493565, 24.142622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528452, 27.683994, 24.389740>,  <30.378250, 27.798252, 24.538012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528452, 27.683994, 24.389740>,  <30.778790, 27.493565, 24.142622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528452, 27.683994, 24.389740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143081, -0.708575, 0.690977,
		0.766712, 0.520838, 0.375340,
		-0.625844, 0.476076, 0.617795,
		30.340698, 27.826817, 24.575079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173935, 27.644932, 24.772432>,  <30.778790, 27.493565, 24.142622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173935, 27.644932, 24.772432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788382, 27.672832, 24.875244>,  <30.557049, 27.689573, 24.936932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788382, 27.672832, 24.875244>,  <31.173935, 27.644932, 24.772432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788382, 27.672832, 24.875244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188154, -0.504681, 0.842553,
		0.188486, 0.860484, 0.473330,
		-0.963883, 0.069751, 0.257029,
		30.499216, 27.693758, 24.952353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091387, 27.741289, 25.508299>,  <31.173935, 27.644932, 24.772432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091387, 27.741289, 25.508299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.717171, 27.625599, 25.427197>,  <30.492641, 27.556185, 25.378534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.717171, 27.625599, 25.427197>,  <31.091387, 27.741289, 25.508299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717171, 27.625599, 25.427197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004479, -0.564265, 0.825582,
		-0.353188, 0.773274, 0.526598,
		-0.935542, -0.289227, -0.202755,
		30.436508, 27.538832, 25.366369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816252, 27.690331, 26.153557>,  <31.091387, 27.741289, 25.508299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816252, 27.690331, 26.153557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572550, 27.470707, 25.924702>,  <30.426329, 27.338932, 25.787388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572550, 27.470707, 25.924702>,  <30.816252, 27.690331, 26.153557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572550, 27.470707, 25.924702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223634, -0.573251, 0.788271,
		-0.760786, 0.608208, 0.226468,
		-0.609256, -0.549059, -0.572138,
		30.389772, 27.305988, 25.753061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413910, 27.424835, 26.708340>,  <30.816252, 27.690331, 26.153557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413910, 27.424835, 26.708340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329996, 27.193470, 26.393017>,  <30.279648, 27.054651, 26.203823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329996, 27.193470, 26.393017>,  <30.413910, 27.424835, 26.708340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329996, 27.193470, 26.393017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110289, -0.787103, 0.606882,
		-0.971507, 0.214257, 0.101331,
		-0.209786, -0.578414, -0.788306,
		30.267059, 27.019945, 26.156525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823145, 27.057835, 26.944059>,  <30.413910, 27.424835, 26.708340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823145, 27.057835, 26.944059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993771, 26.868790, 26.635597>,  <30.096146, 26.755363, 26.450520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993771, 26.868790, 26.635597>,  <29.823145, 27.057835, 26.944059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993771, 26.868790, 26.635597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064346, -0.866314, 0.495338,
		-0.902166, -0.161672, -0.399948,
		0.426563, -0.472612, -0.771156,
		30.121738, 26.727005, 26.404251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382797, 26.615276, 26.767096>,  <29.823145, 27.057835, 26.944059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382797, 26.615276, 26.767096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708897, 26.438419, 26.617493>,  <29.904556, 26.332306, 26.527731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708897, 26.438419, 26.617493>,  <29.382797, 26.615276, 26.767096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708897, 26.438419, 26.617493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244359, -0.848156, 0.470022,
		-0.525033, -0.291792, -0.799498,
		0.815248, -0.442142, -0.374008,
		29.953470, 26.305777, 26.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167501, 25.920982, 26.414732>,  <29.382797, 26.615276, 26.767096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167501, 25.920982, 26.414732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556786, 25.903400, 26.505005>,  <29.790356, 25.892851, 26.559168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556786, 25.903400, 26.505005>,  <29.167501, 25.920982, 26.414732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556786, 25.903400, 26.505005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154275, -0.852630, 0.499221,
		0.170480, -0.520663, -0.836568,
		0.973209, -0.043954, 0.225682,
		29.848749, 25.890215, 26.572710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305447, 25.229883, 26.612017>,  <29.167501, 25.920982, 26.414732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305447, 25.229883, 26.612017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658949, 25.381866, 26.721272>,  <29.871050, 25.473057, 26.786825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658949, 25.381866, 26.721272>,  <29.305447, 25.229883, 26.612017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658949, 25.381866, 26.721272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103895, -0.728449, 0.677176,
		0.456268, -0.570081, -0.683247,
		0.883756, 0.379960, 0.273139,
		29.924076, 25.495855, 26.803213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766542, 24.731211, 26.660654>,  <29.305447, 25.229883, 26.612017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766542, 24.731211, 26.660654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904474, 25.015644, 26.905750>,  <29.987232, 25.186304, 27.052809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904474, 25.015644, 26.905750>,  <29.766542, 24.731211, 26.660654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904474, 25.015644, 26.905750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082487, -0.673210, 0.734836,
		0.935034, -0.202849, -0.290797,
		0.344828, 0.711084, 0.612742,
		30.007923, 25.228970, 27.089573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369356, 24.439016, 26.953613>,  <29.766542, 24.731211, 26.660654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369356, 24.439016, 26.953613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226694, 24.724014, 27.195324>,  <30.141096, 24.895012, 27.340351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226694, 24.724014, 27.195324>,  <30.369356, 24.439016, 26.953613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226694, 24.724014, 27.195324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017100, -0.651684, 0.758297,
		0.934080, 0.260117, 0.244610,
		-0.356655, 0.712493, 0.604277,
		30.119698, 24.937761, 27.376608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776821, 24.323496, 27.516483>,  <30.369356, 24.439016, 26.953613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776821, 24.323496, 27.516483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459665, 24.524555, 27.654278>,  <30.269371, 24.645191, 27.736954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459665, 24.524555, 27.654278>,  <30.776821, 24.323496, 27.516483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459665, 24.524555, 27.654278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118644, -0.681840, 0.721816,
		0.597703, 0.531450, 0.600260,
		-0.792890, 0.502649, 0.344484,
		30.221798, 24.675350, 27.757624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880209, 24.449371, 28.251099>,  <30.776821, 24.323496, 27.516483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880209, 24.449371, 28.251099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485613, 24.493519, 28.202682>,  <30.248856, 24.520008, 28.173632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485613, 24.493519, 28.202682>,  <30.880209, 24.449371, 28.251099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485613, 24.493519, 28.202682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161995, -0.547727, 0.820824,
		0.024297, 0.829345, 0.558208,
		-0.986492, 0.110370, -0.121042,
		30.189665, 24.526630, 28.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577150, 24.751343, 28.873829>,  <30.880209, 24.449371, 28.251099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577150, 24.751343, 28.873829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271238, 24.575127, 28.685772>,  <30.087690, 24.469397, 28.572937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271238, 24.575127, 28.685772>,  <30.577150, 24.751343, 28.873829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271238, 24.575127, 28.685772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168322, -0.567749, 0.805809,
		-0.621915, 0.695403, 0.360051,
		-0.764781, -0.440541, -0.470143,
		30.041803, 24.442965, 28.544729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962910, 24.638115, 29.365229>,  <30.577150, 24.751343, 28.873829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962910, 24.638115, 29.365229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943365, 24.373318, 29.066063>,  <29.931639, 24.214439, 28.886564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943365, 24.373318, 29.066063>,  <29.962910, 24.638115, 29.365229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943365, 24.373318, 29.066063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184569, -0.729928, 0.658133,
		-0.981604, 0.170199, -0.086518,
		-0.048862, -0.661995, -0.747914,
		29.928707, 24.174719, 28.841688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548882, 24.295637, 29.694565>,  <29.962910, 24.638115, 29.365229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548882, 24.295637, 29.694565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.660875, 24.075367, 29.380020>,  <29.728071, 23.943205, 29.191294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.660875, 24.075367, 29.380020>,  <29.548882, 24.295637, 29.694565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660875, 24.075367, 29.380020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139695, -0.833775, 0.534139,
		-0.949786, -0.039700, -0.310372,
		0.279986, -0.550675, -0.786361,
		29.744871, 23.910164, 29.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084124, 23.721140, 29.702024>,  <29.548882, 24.295637, 29.694565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084124, 23.721140, 29.702024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377228, 23.564308, 29.479553>,  <29.553091, 23.470209, 29.346069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377228, 23.564308, 29.479553>,  <29.084124, 23.721140, 29.702024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377228, 23.564308, 29.479553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040754, -0.790573, 0.611010,
		-0.679265, -0.470390, -0.563322,
		0.732760, -0.392080, -0.556180,
		29.597055, 23.446684, 29.312700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870092, 23.107733, 29.647179>,  <29.084124, 23.721140, 29.702024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870092, 23.107733, 29.647179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259909, 23.085632, 29.560261>,  <29.493799, 23.072372, 29.508110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259909, 23.085632, 29.560261>,  <28.870092, 23.107733, 29.647179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259909, 23.085632, 29.560261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024631, -0.936916, 0.348685,
		-0.222854, -0.345160, -0.911702,
		0.974541, -0.055250, -0.217297,
		29.552271, 23.069057, 29.495071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903164, 22.456041, 29.191971>,  <28.870092, 23.107733, 29.647179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903164, 22.456041, 29.191971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263220, 22.549099, 29.339279>,  <29.479254, 22.604933, 29.427664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263220, 22.549099, 29.339279>,  <28.903164, 22.456041, 29.191971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263220, 22.549099, 29.339279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143314, -0.956536, 0.253967,
		0.411348, -0.175828, -0.894359,
		0.900141, 0.232643, 0.368270,
		29.533262, 22.618893, 29.449760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338497, 21.793882, 29.053682>,  <28.903164, 22.456041, 29.191971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338497, 21.793882, 29.053682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521441, 22.025852, 29.323353>,  <29.631207, 22.165035, 29.485155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521441, 22.025852, 29.323353>,  <29.338497, 21.793882, 29.053682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521441, 22.025852, 29.323353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213090, -0.807491, 0.550045,
		0.863376, -0.107907, -0.492887,
		0.457356, 0.579926, 0.674175,
		29.658648, 22.199829, 29.525606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880219, 21.355160, 29.236801>,  <29.338497, 21.793882, 29.053682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880219, 21.355160, 29.236801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812416, 21.605507, 29.541317>,  <29.771734, 21.755714, 29.724026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812416, 21.605507, 29.541317>,  <29.880219, 21.355160, 29.236801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812416, 21.605507, 29.541317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096114, -0.758286, 0.644799,
		0.980831, 0.182466, 0.068379,
		-0.169505, 0.625867, 0.761288,
		29.761564, 21.793266, 29.769703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380495, 21.185007, 29.701004>,  <29.880219, 21.355160, 29.236801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380495, 21.185007, 29.701004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073971, 21.316238, 29.921959>,  <29.890057, 21.394978, 30.054531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073971, 21.316238, 29.921959>,  <30.380495, 21.185007, 29.701004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073971, 21.316238, 29.921959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134937, -0.758421, 0.637644,
		0.628139, 0.563172, 0.536916,
		-0.766312, 0.328079, 0.552386,
		29.844078, 21.414661, 30.087675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203243, 20.999151, 29.823736>,  <30.380495, 21.185007, 29.701004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203243, 20.999151, 29.823736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.532316, 20.773571, 29.852455>,  <31.729759, 20.638224, 29.869686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.532316, 20.773571, 29.852455>,  <31.203243, 20.999151, 29.823736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532316, 20.773571, 29.852455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534961, -0.810685, -0.237923,
		0.192380, 0.157327, -0.968627,
		0.822683, -0.563949, 0.071795,
		31.779121, 20.604387, 29.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957363, 20.999769, 29.630939>,  <31.203243, 20.999151, 29.823736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957363, 20.999769, 29.630939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320724, 21.021393, 29.796776>,  <32.538742, 21.034367, 29.896276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320724, 21.021393, 29.796776>,  <31.957363, 20.999769, 29.630939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320724, 21.021393, 29.796776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008794, 0.988916, -0.148215,
		-0.418007, 0.138284, 0.897857,
		0.908401, 0.054059, 0.414590,
		32.593246, 21.037611, 29.921152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866823, 21.582922, 30.066612>,  <31.957363, 20.999769, 29.630939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866823, 21.582922, 30.066612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265347, 21.555138, 30.046421>,  <32.504459, 21.538467, 30.034307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265347, 21.555138, 30.046421>,  <31.866823, 21.582922, 30.066612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265347, 21.555138, 30.046421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064860, 0.994034, -0.087694,
		0.056267, 0.084097, 0.994868,
		0.996307, -0.069461, -0.050477,
		32.564240, 21.534300, 30.031279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135368, 22.039675, 30.609140>,  <31.866823, 21.582922, 30.066612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135368, 22.039675, 30.609140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432713, 21.953579, 30.355812>,  <32.611118, 21.901920, 30.203815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432713, 21.953579, 30.355812>,  <32.135368, 22.039675, 30.609140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432713, 21.953579, 30.355812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111942, 0.973491, -0.199462,
		0.659463, 0.077376, 0.747745,
		0.743356, -0.215242, -0.633319,
		32.655720, 21.889006, 30.165817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521206, 22.568239, 30.673252>,  <32.135368, 22.039675, 30.609140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521206, 22.568239, 30.673252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655319, 22.421066, 30.326332>,  <32.735786, 22.332762, 30.118179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655319, 22.421066, 30.326332>,  <32.521206, 22.568239, 30.673252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655319, 22.421066, 30.326332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168633, 0.929157, -0.328984,
		0.926903, -0.035954, 0.373575,
		0.335281, -0.367933, -0.867301,
		32.755905, 22.310686, 30.066141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082813, 23.040668, 30.466211>,  <32.521206, 22.568239, 30.673252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082813, 23.040668, 30.466211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941391, 22.853500, 30.142223>,  <32.856537, 22.741199, 29.947830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941391, 22.853500, 30.142223>,  <33.082813, 23.040668, 30.466211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941391, 22.853500, 30.142223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106636, 0.840087, -0.531867,
		0.929315, -0.274417, -0.247120,
		-0.353555, -0.467921, -0.809968,
		32.835323, 22.713123, 29.899233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507324, 23.155470, 29.972202>,  <33.082813, 23.040668, 30.466211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507324, 23.155470, 29.972202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192970, 23.044479, 29.751156>,  <33.004356, 22.977886, 29.618528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192970, 23.044479, 29.751156>,  <33.507324, 23.155470, 29.972202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192970, 23.044479, 29.751156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113868, 0.813453, -0.570375,
		0.607792, -0.511178, -0.607689,
		-0.785890, -0.277473, -0.552617,
		32.957203, 22.961237, 29.585371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603809, 23.257984, 29.347130>,  <33.507324, 23.155470, 29.972202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603809, 23.257984, 29.347130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204117, 23.245277, 29.337971>,  <32.964302, 23.237654, 29.332476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204117, 23.245277, 29.337971>,  <33.603809, 23.257984, 29.347130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204117, 23.245277, 29.337971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014077, 0.837061, -0.546929,
		0.036539, -0.546187, -0.836866,
		-0.999233, -0.031765, -0.022897,
		32.904346, 23.235748, 29.331102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472065, 23.371895, 28.670370>,  <33.603809, 23.257984, 29.347130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472065, 23.371895, 28.670370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127056, 23.442932, 28.859901>,  <32.920052, 23.485554, 28.973621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127056, 23.442932, 28.859901>,  <33.472065, 23.371895, 28.670370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127056, 23.442932, 28.859901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128398, 0.828933, -0.544412,
		-0.489458, -0.530407, -0.692171,
		-0.862523, 0.177593, 0.473831,
		32.868298, 23.496210, 29.002050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910618, 23.434635, 28.190187>,  <33.472065, 23.371895, 28.670370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910618, 23.434635, 28.190187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793110, 23.631199, 28.518143>,  <32.722607, 23.749138, 28.714916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793110, 23.631199, 28.518143>,  <32.910618, 23.434635, 28.190187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793110, 23.631199, 28.518143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139328, 0.826562, -0.545329,
		-0.945669, -0.274433, -0.174349,
		-0.293766, 0.491409, 0.819890,
		32.704979, 23.778622, 28.764109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258751, 23.753201, 28.044832>,  <32.910618, 23.434635, 28.190187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258751, 23.753201, 28.044832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413483, 23.949932, 28.356850>,  <32.506321, 24.067972, 28.544060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413483, 23.949932, 28.356850>,  <32.258751, 23.753201, 28.044832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413483, 23.949932, 28.356850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031845, 0.838265, -0.544333,
		-0.921602, 0.235404, 0.308602,
		0.386828, 0.491831, 0.780043,
		32.529530, 24.097481, 28.590862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820028, 24.267380, 28.196589>,  <32.258751, 23.753201, 28.044832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820028, 24.267380, 28.196589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176491, 24.377998, 28.340458>,  <32.390369, 24.444370, 28.426779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176491, 24.377998, 28.340458>,  <31.820028, 24.267380, 28.196589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176491, 24.377998, 28.340458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041222, 0.838831, -0.542830,
		-0.451824, 0.468918, 0.758927,
		0.891154, 0.276548, 0.359674,
		32.443836, 24.460962, 28.448360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771212, 24.969902, 28.305944>,  <31.820028, 24.267380, 28.196589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771212, 24.969902, 28.305944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164402, 24.896442, 28.303734>,  <32.400318, 24.852365, 28.302408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164402, 24.896442, 28.303734>,  <31.771212, 24.969902, 28.305944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164402, 24.896442, 28.303734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163596, 0.888531, -0.428660,
		0.083632, 0.420459, 0.903449,
		0.982976, -0.183651, -0.005524,
		32.459293, 24.841347, 28.302076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110363, 25.600571, 28.627462>,  <31.771212, 24.969902, 28.305944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110363, 25.600571, 28.627462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333183, 25.385231, 28.374519>,  <32.466877, 25.256027, 28.222754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333183, 25.385231, 28.374519>,  <32.110363, 25.600571, 28.627462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333183, 25.385231, 28.374519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194497, 0.824829, -0.530874,
		0.807381, 0.172733, 0.564180,
		0.557052, -0.538349, -0.632355,
		32.500298, 25.223726, 28.184813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516731, 26.137560, 28.349627>,  <32.110363, 25.600571, 28.627462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516731, 26.137560, 28.349627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596470, 25.833340, 28.102459>,  <32.644314, 25.650808, 27.954159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596470, 25.833340, 28.102459>,  <32.516731, 26.137560, 28.349627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596470, 25.833340, 28.102459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070389, 0.640059, -0.765095,
		0.977398, 0.109023, 0.181127,
		0.199345, -0.760551, -0.617919,
		32.656273, 25.605175, 27.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212452, 26.246241, 27.983526>,  <32.516731, 26.137560, 28.349627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212452, 26.246241, 27.983526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021446, 25.985867, 27.747471>,  <32.906841, 25.829641, 27.605837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021446, 25.985867, 27.747471>,  <33.212452, 26.246241, 27.983526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021446, 25.985867, 27.747471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132779, 0.610486, -0.780818,
		0.868533, -0.451210, -0.205086,
		-0.477515, -0.650935, -0.590139,
		32.878193, 25.790586, 27.570429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688992, 26.101162, 27.411974>,  <33.212452, 26.246241, 27.983526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688992, 26.101162, 27.411974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312531, 26.023849, 27.301064>,  <33.086655, 25.977463, 27.234518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312531, 26.023849, 27.301064>,  <33.688992, 26.101162, 27.411974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312531, 26.023849, 27.301064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157815, 0.474151, -0.866184,
		0.298886, -0.858967, -0.415744,
		-0.941149, -0.193280, -0.277275,
		33.030186, 25.965866, 27.217880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695812, 25.826508, 26.720526>,  <33.688992, 26.101162, 27.411974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695812, 25.826508, 26.720526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326004, 25.969036, 26.774624>,  <33.104118, 26.054552, 26.807083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326004, 25.969036, 26.774624>,  <33.695812, 25.826508, 26.720526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326004, 25.969036, 26.774624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082601, 0.533756, -0.841595,
		-0.372065, -0.766903, -0.522902,
		-0.924524, 0.356320, 0.135245,
		33.048645, 26.075932, 26.815197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454922, 25.792488, 25.996962>,  <33.695812, 25.826508, 26.720526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454922, 25.792488, 25.996962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179718, 25.973198, 26.224136>,  <33.014595, 26.081623, 26.360441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179718, 25.973198, 26.224136>,  <33.454922, 25.792488, 25.996962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179718, 25.973198, 26.224136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147825, 0.678944, -0.719154,
		-0.710490, -0.578737, -0.400333,
		-0.688005, 0.451773, 0.567935,
		32.973316, 26.108730, 26.394516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887360, 25.755949, 25.598461>,  <33.454922, 25.792488, 25.996962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887360, 25.755949, 25.598461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.881805, 26.053722, 25.865482>,  <32.878475, 26.232386, 26.025696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.881805, 26.053722, 25.865482>,  <32.887360, 25.755949, 25.598461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881805, 26.053722, 25.865482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003265, 0.667648, -0.744470,
		-0.999898, -0.008156, -0.011699,
		-0.013883, 0.744433, 0.667553,
		32.877640, 26.277052, 26.065748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395920, 26.286394, 25.333008>,  <32.887360, 25.755949, 25.598461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395920, 26.286394, 25.333008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648129, 26.459148, 25.590973>,  <32.799454, 26.562801, 25.745752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648129, 26.459148, 25.590973>,  <32.395920, 26.286394, 25.333008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648129, 26.459148, 25.590973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124262, 0.764005, -0.633131,
		-0.766158, 0.479343, 0.428056,
		0.630524, 0.431887, 0.644913,
		32.837284, 26.588715, 25.784447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.977470, 32.986435, 14.528795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.346766, 32.838146, 14.488410>,  <22.568342, 32.749172, 14.464179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.346766, 32.838146, 14.488410>,  <21.977470, 32.986435, 14.528795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.346766, 32.838146, 14.488410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204654, 0.252082, 0.945818,
		-0.325185, -0.893879, 0.308602,
		0.923240, -0.370722, -0.100962,
		22.623737, 32.726929, 14.458121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004950, 32.582577, 14.998639>,  <21.977470, 32.986435, 14.528795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004950, 32.582577, 14.998639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375231, 32.690834, 14.892936>,  <22.597399, 32.755787, 14.829514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375231, 32.690834, 14.892936>,  <22.004950, 32.582577, 14.998639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375231, 32.690834, 14.892936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129352, 0.430006, 0.893511,
		0.355447, -0.861308, 0.363051,
		0.925703, 0.270635, -0.264256,
		22.652941, 32.772026, 14.813659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356674, 32.489193, 15.558838>,  <22.004950, 32.582577, 14.998639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356674, 32.489193, 15.558838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.635948, 32.692608, 15.357272>,  <22.803513, 32.814655, 15.236333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.635948, 32.692608, 15.357272>,  <22.356674, 32.489193, 15.558838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635948, 32.692608, 15.357272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266612, 0.468552, 0.842245,
		0.664421, -0.722393, 0.191555,
		0.698185, 0.508534, -0.503914,
		22.845404, 32.845169, 15.206098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066986, 32.306114, 15.848964>,  <22.356674, 32.489193, 15.558838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066986, 32.306114, 15.848964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.052500, 32.664131, 15.671159>,  <23.043808, 32.878941, 15.564476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.052500, 32.664131, 15.671159>,  <23.066986, 32.306114, 15.848964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052500, 32.664131, 15.671159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388886, 0.422365, 0.818765,
		0.920574, -0.143213, -0.363365,
		-0.036214, 0.895041, -0.444512,
		23.041636, 32.932644, 15.537806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696648, 32.590557, 15.936871>,  <23.066986, 32.306114, 15.848964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696648, 32.590557, 15.936871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.479763, 32.911140, 15.835940>,  <23.349632, 33.103493, 15.775382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.479763, 32.911140, 15.835940>,  <23.696648, 32.590557, 15.936871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.479763, 32.911140, 15.835940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386553, 0.504565, 0.772005,
		0.746046, 0.321052, -0.583387,
		-0.542211, 0.801461, -0.252325,
		23.317101, 33.151577, 15.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152838, 33.175453, 15.945777>,  <23.696648, 32.590557, 15.936871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152838, 33.175453, 15.945777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789255, 33.336548, 15.988860>,  <23.571106, 33.433205, 16.014709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789255, 33.336548, 15.988860>,  <24.152838, 33.175453, 15.945777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.789255, 33.336548, 15.988860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311402, 0.484129, 0.817709,
		0.277180, 0.776801, -0.565465,
		-0.908956, 0.402739, 0.107707,
		23.516569, 33.457371, 16.021172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260212, 33.907761, 16.114023>,  <24.152838, 33.175453, 15.945777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260212, 33.907761, 16.114023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.877972, 33.843552, 16.212868>,  <23.648628, 33.805027, 16.272175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.877972, 33.843552, 16.212868>,  <24.260212, 33.907761, 16.114023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.877972, 33.843552, 16.212868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157602, 0.430157, 0.888891,
		-0.248980, 0.888368, -0.385760,
		-0.955600, -0.160520, 0.247109,
		23.591291, 33.795395, 16.287001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004816, 34.578022, 16.505417>,  <24.260212, 33.907761, 16.114023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004816, 34.578022, 16.505417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720936, 34.307652, 16.584858>,  <23.550608, 34.145428, 16.632523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720936, 34.307652, 16.584858>,  <24.004816, 34.578022, 16.505417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.720936, 34.307652, 16.584858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014936, 0.267408, 0.963468,
		-0.704345, 0.686739, -0.179684,
		-0.709700, -0.675930, 0.198605,
		23.508026, 34.104874, 16.644440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364973, 34.898674, 16.752968>,  <24.004816, 34.578022, 16.505417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364973, 34.898674, 16.752968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.411186, 34.530735, 16.902920>,  <23.438913, 34.309971, 16.992891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.411186, 34.530735, 16.902920>,  <23.364973, 34.898674, 16.752968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.411186, 34.530735, 16.902920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032997, 0.373643, 0.926985,
		-0.992756, -0.119466, 0.012816,
		0.115532, -0.919847, 0.374878,
		23.445847, 34.254780, 17.015383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.920086, 34.936668, 17.298363>,  <23.364973, 34.898674, 16.752968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.920086, 34.936668, 17.298363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159744, 34.622677, 17.361397>,  <23.303539, 34.434280, 17.399218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159744, 34.622677, 17.361397>,  <22.920086, 34.936668, 17.298363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159744, 34.622677, 17.361397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011073, 0.204931, 0.978714,
		-0.800564, -0.584647, 0.131476,
		0.599146, -0.784979, 0.157586,
		23.339487, 34.387184, 17.408672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555256, 34.460430, 17.811628>,  <22.920086, 34.936668, 17.298363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555256, 34.460430, 17.811628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.952225, 34.415401, 17.831345>,  <23.190405, 34.388386, 17.843174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.952225, 34.415401, 17.831345>,  <22.555256, 34.460430, 17.811628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952225, 34.415401, 17.831345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034220, 0.132106, 0.990645,
		-0.118028, -0.984823, 0.127253,
		0.992420, -0.112569, 0.049292,
		23.249950, 34.381630, 17.846132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628231, 33.914360, 18.323118>,  <22.555256, 34.460430, 17.811628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628231, 33.914360, 18.323118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.980528, 34.100609, 18.288502>,  <23.191906, 34.212360, 18.267731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.980528, 34.100609, 18.288502>,  <22.628231, 33.914360, 18.323118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980528, 34.100609, 18.288502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030262, 0.237691, 0.970869,
		0.472632, -0.852465, 0.223435,
		0.880740, 0.465625, -0.086543,
		23.244751, 34.240295, 18.262539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045500, 33.626434, 18.754519>,  <22.628231, 33.914360, 18.323118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045500, 33.626434, 18.754519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216972, 33.986526, 18.724030>,  <23.319857, 34.202583, 18.705736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216972, 33.986526, 18.724030>,  <23.045500, 33.626434, 18.754519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216972, 33.986526, 18.724030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071555, 0.117933, 0.990440,
		0.900617, -0.419131, 0.114972,
		0.428683, 0.900234, -0.076222,
		23.345577, 34.256596, 18.701162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.108675, 33.773933, 19.384655>,  <23.045500, 33.626434, 18.754519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.108675, 33.773933, 19.384655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.241716, 34.129143, 19.257668>,  <23.321541, 34.342270, 19.181475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.241716, 34.129143, 19.257668>,  <23.108675, 33.773933, 19.384655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.241716, 34.129143, 19.257668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106134, 0.369742, 0.923053,
		0.937075, -0.273316, 0.217227,
		0.332603, 0.888025, -0.317468,
		23.341497, 34.395550, 19.162428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571552, 33.966793, 19.893019>,  <23.108675, 33.773933, 19.384655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571552, 33.966793, 19.893019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.504395, 34.322010, 19.721813>,  <23.464100, 34.535141, 19.619089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.504395, 34.322010, 19.721813>,  <23.571552, 33.966793, 19.893019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.504395, 34.322010, 19.721813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229067, 0.457437, 0.859232,
		0.958822, 0.046216, -0.280221,
		-0.167894, 0.888040, -0.428015,
		23.454027, 34.588421, 19.593409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219381, 34.525120, 19.945917>,  <23.571552, 33.966793, 19.893019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219381, 34.525120, 19.945917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876011, 34.727856, 19.914375>,  <23.669989, 34.849499, 19.895451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876011, 34.727856, 19.914375>,  <24.219381, 34.525120, 19.945917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.876011, 34.727856, 19.914375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146642, 0.389813, 0.909143,
		0.491531, 0.768867, -0.408950,
		-0.858425, 0.506842, -0.078857,
		23.618483, 34.879910, 19.890718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.382475, 35.248363, 20.012766>,  <24.219381, 34.525120, 19.945917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.382475, 35.248363, 20.012766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991926, 35.207718, 20.089050>,  <23.757597, 35.183331, 20.134821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991926, 35.207718, 20.089050>,  <24.382475, 35.248363, 20.012766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.991926, 35.207718, 20.089050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097483, 0.580522, 0.808388,
		-0.192857, 0.807879, -0.556899,
		-0.976372, -0.101615, 0.190712,
		23.699015, 35.177235, 20.146263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170137, 35.913036, 20.276558>,  <24.382475, 35.248363, 20.012766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170137, 35.913036, 20.276558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880363, 35.665123, 20.397266>,  <23.706499, 35.516376, 20.469692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880363, 35.665123, 20.397266>,  <24.170137, 35.913036, 20.276558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.880363, 35.665123, 20.397266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142462, 0.562923, 0.814139,
		-0.674464, 0.546798, -0.496095,
		-0.724433, -0.619782, 0.301773,
		23.663034, 35.479187, 20.487799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.620653, 36.425816, 20.436502>,  <24.170137, 35.913036, 20.276558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.620653, 36.425816, 20.436502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544102, 36.077808, 20.618244>,  <23.498171, 35.869003, 20.727289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544102, 36.077808, 20.618244>,  <23.620653, 36.425816, 20.436502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.544102, 36.077808, 20.618244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181524, 0.486297, 0.854730,
		-0.964585, 0.081100, -0.250996,
		-0.191377, -0.870022, 0.454354,
		23.486689, 35.816803, 20.754551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461830, 36.667225, 20.964148>,  <23.620653, 36.425816, 20.436502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461830, 36.667225, 20.964148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494104, 36.293072, 21.101875>,  <23.513470, 36.068581, 21.184511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494104, 36.293072, 21.101875>,  <23.461830, 36.667225, 20.964148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.494104, 36.293072, 21.101875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072759, 0.338997, 0.937970,
		-0.994080, -0.100734, -0.040705,
		0.080687, -0.935379, 0.344319,
		23.518311, 36.012459, 21.205172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784975, 36.500092, 21.244509>,  <23.461830, 36.667225, 20.964148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784975, 36.500092, 21.244509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.059664, 36.278271, 21.432503>,  <23.224478, 36.145180, 21.545300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.059664, 36.278271, 21.432503>,  <22.784975, 36.500092, 21.244509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.059664, 36.278271, 21.432503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449304, 0.184438, 0.874133,
		-0.571435, -0.811452, -0.122504,
		0.686723, -0.554552, 0.469983,
		23.265680, 36.111904, 21.573498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241337, 36.929241, 21.171545>,  <22.784975, 36.500092, 21.244509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241337, 36.929241, 21.171545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.873882, 36.882931, 21.322647>,  <21.653408, 36.855145, 21.413309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.873882, 36.882931, 21.322647>,  <22.241337, 36.929241, 21.171545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873882, 36.882931, 21.322647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136896, -0.803611, -0.579197,
		0.370625, -0.583786, 0.722379,
		-0.918639, -0.115774, 0.377756,
		21.598291, 36.848198, 21.435974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094925, 36.215256, 21.239492>,  <22.241337, 36.929241, 21.171545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094925, 36.215256, 21.239492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722918, 36.334190, 21.325893>,  <21.499714, 36.405552, 21.377735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722918, 36.334190, 21.325893>,  <22.094925, 36.215256, 21.239492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722918, 36.334190, 21.325893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356488, -0.872751, -0.333500,
		0.089355, -0.387164, 0.917671,
		-0.930017, 0.297339, 0.216004,
		21.443913, 36.423393, 21.390694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.698612, 35.642052, 21.563789>,  <22.094925, 36.215256, 21.239492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.698612, 35.642052, 21.563789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.398520, 35.874912, 21.438404>,  <21.218464, 36.014626, 21.363173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.398520, 35.874912, 21.438404>,  <21.698612, 35.642052, 21.563789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398520, 35.874912, 21.438404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554499, -0.812203, -0.181264,
		-0.360116, 0.037824, 0.932140,
		-0.750231, 0.582147, -0.313461,
		21.173450, 36.049557, 21.344366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144753, 35.264828, 21.804134>,  <21.698612, 35.642052, 21.563789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144753, 35.264828, 21.804134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032732, 35.494259, 21.496216>,  <20.965519, 35.631916, 21.311464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032732, 35.494259, 21.496216>,  <21.144753, 35.264828, 21.804134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032732, 35.494259, 21.496216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380868, -0.802457, -0.459350,
		-0.881198, 0.164548, 0.443186,
		-0.280053, 0.573573, -0.769795,
		20.948715, 35.666332, 21.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463097, 35.042458, 21.635578>,  <21.144753, 35.264828, 21.804134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463097, 35.042458, 21.635578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.520992, 35.263298, 21.307133>,  <20.555729, 35.395802, 21.110065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.520992, 35.263298, 21.307133>,  <20.463097, 35.042458, 21.635578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520992, 35.263298, 21.307133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502658, -0.673770, -0.541635,
		-0.852282, 0.491136, 0.180000,
		0.144738, 0.552105, -0.821116,
		20.564413, 35.428928, 21.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788939, 35.185062, 21.329258>,  <20.463097, 35.042458, 21.635578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788939, 35.185062, 21.329258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.058725, 35.207329, 21.034775>,  <20.220596, 35.220688, 20.858086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.058725, 35.207329, 21.034775>,  <19.788939, 35.185062, 21.329258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058725, 35.207329, 21.034775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491941, -0.709672, -0.504341,
		-0.550537, 0.702330, -0.451267,
		0.674465, 0.055661, -0.736206,
		20.261065, 35.224026, 20.813913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415874, 35.065392, 20.738155>,  <19.788939, 35.185062, 21.329258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415874, 35.065392, 20.738155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.786446, 34.991787, 20.606781>,  <20.008789, 34.947624, 20.527956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.786446, 34.991787, 20.606781>,  <19.415874, 35.065392, 20.738155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786446, 34.991787, 20.606781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368988, -0.616888, -0.695196,
		-0.074683, 0.765238, -0.639401,
		0.926429, -0.184012, -0.328434,
		20.064375, 34.936584, 20.508251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385103, 35.216103, 20.067396>,  <19.415874, 35.065392, 20.738155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385103, 35.216103, 20.067396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710777, 34.984264, 20.081108>,  <19.906181, 34.845161, 20.089334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710777, 34.984264, 20.081108>,  <19.385103, 35.216103, 20.067396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710777, 34.984264, 20.081108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290590, -0.457900, -0.840170,
		0.502652, 0.674093, -0.541239,
		0.814186, -0.579591, 0.034280,
		19.955032, 34.810387, 20.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563883, 35.109558, 19.431664>,  <19.385103, 35.216103, 20.067396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563883, 35.109558, 19.431664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.793722, 34.819950, 19.584312>,  <19.931625, 34.646187, 19.675901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.793722, 34.819950, 19.584312>,  <19.563883, 35.109558, 19.431664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.793722, 34.819950, 19.584312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211160, -0.581642, -0.785560,
		0.790728, 0.370796, -0.487093,
		0.574596, -0.724019, 0.381623,
		19.966101, 34.602745, 19.698799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091921, 34.939793, 18.961401>,  <19.563883, 35.109558, 19.431664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091921, 34.939793, 18.961401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013166, 34.624889, 19.195141>,  <19.965914, 34.435947, 19.335384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013166, 34.624889, 19.195141>,  <20.091921, 34.939793, 18.961401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013166, 34.624889, 19.195141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096338, -0.577596, -0.810618,
		0.975681, -0.215896, 0.037878,
		-0.196888, -0.787256, 0.584348,
		19.954100, 34.388714, 19.370445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517712, 34.425858, 18.577662>,  <20.091921, 34.939793, 18.961401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517712, 34.425858, 18.577662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306828, 34.203773, 18.834969>,  <20.180298, 34.070522, 18.989353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306828, 34.203773, 18.834969>,  <20.517712, 34.425858, 18.577662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306828, 34.203773, 18.834969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084284, -0.719120, -0.689755,
		0.845545, -0.417863, 0.332332,
		-0.527210, -0.555209, 0.643268,
		20.148664, 34.037212, 19.027948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856621, 33.744793, 18.655941>,  <20.517712, 34.425858, 18.577662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856621, 33.744793, 18.655941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467831, 33.698689, 18.737900>,  <20.234556, 33.671024, 18.787075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467831, 33.698689, 18.737900>,  <20.856621, 33.744793, 18.655941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467831, 33.698689, 18.737900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041608, -0.773464, -0.632473,
		0.231378, -0.623273, 0.746991,
		-0.971974, -0.115260, 0.204895,
		20.176239, 33.664112, 18.799368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811468, 33.126457, 18.879103>,  <20.856621, 33.744793, 18.655941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811468, 33.126457, 18.879103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.441055, 33.213383, 18.755657>,  <20.218807, 33.265537, 18.681591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.441055, 33.213383, 18.755657>,  <20.811468, 33.126457, 18.879103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.441055, 33.213383, 18.755657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097301, -0.652549, -0.751474,
		-0.364693, -0.725915, 0.583134,
		-0.926030, 0.217318, -0.308612,
		20.163246, 33.278580, 18.663073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485285, 32.495556, 18.715967>,  <20.811468, 33.126457, 18.879103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485285, 32.495556, 18.715967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.278463, 32.775589, 18.518974>,  <20.154371, 32.943607, 18.400780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.278463, 32.775589, 18.518974>,  <20.485285, 32.495556, 18.715967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278463, 32.775589, 18.518974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039212, -0.555383, -0.830670,
		-0.855054, -0.448812, 0.259711,
		-0.517054, 0.700084, -0.492481,
		20.123348, 32.985615, 18.371229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853527, 32.125824, 18.407940>,  <20.485285, 32.495556, 18.715967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853527, 32.125824, 18.407940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.887840, 32.467289, 18.202457>,  <19.908428, 32.672169, 18.079168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.887840, 32.467289, 18.202457>,  <19.853527, 32.125824, 18.407940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887840, 32.467289, 18.202457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227284, -0.485244, -0.844322,
		-0.970043, 0.189184, 0.152400,
		0.085781, 0.853667, -0.513707,
		19.913574, 32.723389, 18.048346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371103, 32.058441, 17.846786>,  <19.853527, 32.125824, 18.407940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371103, 32.058441, 17.846786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624331, 32.347240, 17.735115>,  <19.776266, 32.520519, 17.668112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624331, 32.347240, 17.735115>,  <19.371103, 32.058441, 17.846786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624331, 32.347240, 17.735115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159176, -0.474361, -0.865820,
		-0.757554, 0.503684, -0.415227,
		0.633068, 0.722000, -0.279180,
		19.814251, 32.563839, 17.651361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226110, 32.184822, 17.174417>,  <19.371103, 32.058441, 17.846786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226110, 32.184822, 17.174417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.602146, 32.316860, 17.208527>,  <19.827768, 32.396084, 17.228992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.602146, 32.316860, 17.208527>,  <19.226110, 32.184822, 17.174417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602146, 32.316860, 17.208527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218030, -0.389807, -0.894714,
		-0.262099, 0.859703, -0.438424,
		0.940089, 0.330093, 0.085273,
		19.884172, 32.415890, 17.234108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373903, 32.474079, 16.492073>,  <19.226110, 32.184822, 17.174417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373903, 32.474079, 16.492073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.733053, 32.466969, 16.668030>,  <19.948544, 32.462700, 16.773603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.733053, 32.466969, 16.668030>,  <19.373903, 32.474079, 16.492073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733053, 32.466969, 16.668030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352962, -0.568125, -0.743406,
		0.263129, 0.822750, -0.503830,
		0.897876, -0.017778, 0.439890,
		20.002417, 32.461636, 16.799997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888090, 32.775883, 16.019104>,  <19.373903, 32.474079, 16.492073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888090, 32.775883, 16.019104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.110403, 32.560341, 16.272320>,  <20.243790, 32.431015, 16.424250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.110403, 32.560341, 16.272320>,  <19.888090, 32.775883, 16.019104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.110403, 32.560341, 16.272320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447681, -0.447638, -0.774082,
		0.700492, 0.713620, -0.007553,
		0.555781, -0.538857, 0.633041,
		20.277138, 32.398685, 16.462233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604744, 32.796604, 15.712980>,  <19.888090, 32.775883, 16.019104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604744, 32.796604, 15.712980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607634, 32.488007, 15.967460>,  <20.609367, 32.302849, 16.120148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607634, 32.488007, 15.967460>,  <20.604744, 32.796604, 15.712980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607634, 32.488007, 15.967460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466307, -0.560206, -0.684636,
		0.884593, 0.301611, 0.355704,
		0.007226, -0.771492, 0.636198,
		20.609802, 32.256557, 16.158319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.303585, 32.618011, 15.795809>,  <20.604744, 32.796604, 15.712980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.303585, 32.618011, 15.795809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.071695, 32.298615, 15.860707>,  <20.932562, 32.106976, 15.899647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.071695, 32.298615, 15.860707>,  <21.303585, 32.618011, 15.795809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071695, 32.298615, 15.860707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403615, -0.454389, -0.794119,
		0.707824, -0.394885, 0.585706,
		-0.579724, -0.798496, 0.162246,
		20.897778, 32.059067, 15.909381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.883886, 30.369457, 22.839628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246555, 30.487263, 22.960426>,  <29.464157, 30.557947, 23.032906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246555, 30.487263, 22.960426>,  <28.883886, 30.369457, 22.839628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246555, 30.487263, 22.960426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251614, 0.952204, -0.173202,
		-0.338574, 0.081051, 0.937443,
		0.906674, 0.294515, 0.301998,
		29.518559, 30.575617, 23.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745956, 30.849674, 23.410297>,  <28.883886, 30.369457, 22.839628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745956, 30.849674, 23.410297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105864, 30.921349, 23.251144>,  <29.321808, 30.964354, 23.155653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105864, 30.921349, 23.251144>,  <28.745956, 30.849674, 23.410297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105864, 30.921349, 23.251144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247175, 0.960704, -0.126302,
		0.359616, 0.211989, 0.908701,
		0.899767, 0.179188, -0.397882,
		29.375793, 30.975105, 23.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038355, 31.496731, 23.748661>,  <28.745956, 30.849674, 23.410297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038355, 31.496731, 23.748661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278084, 31.474915, 23.429203>,  <29.421921, 31.461824, 23.237528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278084, 31.474915, 23.429203>,  <29.038355, 31.496731, 23.748661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278084, 31.474915, 23.429203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066566, 0.990826, -0.117616,
		0.797734, 0.123653, 0.590196,
		0.599324, -0.054539, -0.798646,
		29.457882, 31.458553, 23.189610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581623, 32.040012, 23.702623>,  <29.038355, 31.496731, 23.748661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581623, 32.040012, 23.702623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525307, 31.935833, 23.320557>,  <29.491518, 31.873325, 23.091316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525307, 31.935833, 23.320557>,  <29.581623, 32.040012, 23.702623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525307, 31.935833, 23.320557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113033, 0.962698, -0.245838,
		0.983566, 0.073354, -0.164976,
		-0.140789, -0.260446, -0.955168,
		29.483070, 31.857698, 23.034006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018847, 32.569046, 23.447676>,  <29.581623, 32.040012, 23.702623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018847, 32.569046, 23.447676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819168, 32.407299, 23.141136>,  <29.699362, 32.310249, 22.957212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819168, 32.407299, 23.141136>,  <30.018847, 32.569046, 23.447676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819168, 32.407299, 23.141136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020929, 0.878546, -0.477200,
		0.866233, -0.254258, -0.430109,
		-0.499202, -0.404364, -0.766347,
		29.669409, 32.285988, 22.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484327, 32.702526, 22.869247>,  <30.018847, 32.569046, 23.447676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484327, 32.702526, 22.869247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114693, 32.641609, 22.729038>,  <29.892912, 32.605057, 22.644913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114693, 32.641609, 22.729038>,  <30.484327, 32.702526, 22.869247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114693, 32.641609, 22.729038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036026, 0.878376, -0.476612,
		0.380477, -0.453059, -0.806210,
		-0.924089, -0.152295, -0.350523,
		29.837465, 32.595921, 22.623880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450747, 32.721722, 22.083384>,  <30.484327, 32.702526, 22.869247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450747, 32.721722, 22.083384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090500, 32.814636, 22.230320>,  <29.874352, 32.870384, 22.318481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090500, 32.814636, 22.230320>,  <30.450747, 32.721722, 22.083384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090500, 32.814636, 22.230320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080200, 0.919505, -0.384809,
		-0.427154, -0.317104, -0.846749,
		-0.900615, 0.232282, 0.367339,
		29.820316, 32.884319, 22.340521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013945, 32.916046, 21.577162>,  <30.450747, 32.721722, 22.083384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013945, 32.916046, 21.577162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823603, 33.109089, 21.871277>,  <29.709398, 33.224915, 22.047747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823603, 33.109089, 21.871277>,  <30.013945, 32.916046, 21.577162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823603, 33.109089, 21.871277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249987, 0.875742, -0.413015,
		-0.843249, -0.012723, -0.537372,
		-0.475854, 0.482611, 0.735289,
		29.680847, 33.253872, 22.091864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625502, 33.464252, 21.231346>,  <30.013945, 32.916046, 21.577162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625502, 33.464252, 21.231346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658123, 33.546028, 21.621536>,  <29.677696, 33.595093, 21.855650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658123, 33.546028, 21.621536>,  <29.625502, 33.464252, 21.231346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658123, 33.546028, 21.621536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032348, 0.977678, -0.207603,
		-0.996144, 0.048485, 0.073118,
		0.081551, 0.204437, 0.975477,
		29.682589, 33.607361, 21.914179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112770, 33.983170, 21.306246>,  <29.625502, 33.464252, 21.231346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112770, 33.983170, 21.306246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365126, 34.018024, 21.614632>,  <29.516539, 34.038937, 21.799664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365126, 34.018024, 21.614632>,  <29.112770, 33.983170, 21.306246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365126, 34.018024, 21.614632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063659, 0.984509, -0.163370,
		-0.773258, 0.152147, 0.615567,
		0.630888, 0.087141, 0.770965,
		29.554392, 34.044167, 21.845921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023998, 34.656918, 21.623007>,  <29.112770, 33.983170, 21.306246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023998, 34.656918, 21.623007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379215, 34.534290, 21.760056>,  <29.592346, 34.460712, 21.842285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379215, 34.534290, 21.760056>,  <29.023998, 34.656918, 21.623007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379215, 34.534290, 21.760056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363980, 0.924086, -0.116551,
		-0.280883, 0.228211, 0.932215,
		0.888045, -0.306571, 0.342624,
		29.645628, 34.442318, 21.862843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218222, 35.148415, 22.139412>,  <29.023998, 34.656918, 21.623007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218222, 35.148415, 22.139412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552271, 34.962902, 22.021103>,  <29.752701, 34.851597, 21.950117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552271, 34.962902, 22.021103>,  <29.218222, 35.148415, 22.139412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552271, 34.962902, 22.021103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444251, 0.885746, -0.134519,
		0.324366, -0.019057, 0.945740,
		0.835122, -0.463779, -0.295772,
		29.802807, 34.823769, 21.932371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766880, 35.042461, 22.717680>,  <29.218222, 35.148415, 22.139412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766880, 35.042461, 22.717680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889118, 35.364399, 22.514175>,  <28.962461, 35.557560, 22.392073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889118, 35.364399, 22.514175>,  <28.766880, 35.042461, 22.717680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889118, 35.364399, 22.514175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907206, 0.083875, -0.412240,
		-0.289116, 0.587530, 0.755791,
		0.305596, 0.804844, -0.508761,
		28.980797, 35.605854, 22.361547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228968, 35.657551, 22.731386>,  <28.766880, 35.042461, 22.717680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228968, 35.657551, 22.731386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457140, 35.661335, 22.402870>,  <28.594044, 35.663605, 22.205761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457140, 35.661335, 22.402870>,  <28.228968, 35.657551, 22.731386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457140, 35.661335, 22.402870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820791, -0.030193, -0.570431,
		-0.030193, 0.999499, -0.009459,
		0.570431, 0.009459, -0.821291,
		28.628269, 35.664173, 22.156483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619312, 36.011562, 22.834684>,  <28.228968, 35.657551, 22.731386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619312, 36.011562, 22.834684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329611, 36.002346, 23.110344>,  <27.155790, 35.996819, 23.275740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329611, 36.002346, 23.110344>,  <27.619312, 36.011562, 22.834684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329611, 36.002346, 23.110344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535637, -0.648176, 0.541258,
		0.434220, 0.761142, 0.481784,
		-0.724255, -0.023036, 0.689147,
		27.112335, 35.995434, 23.317089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961893, 36.095139, 23.399885>,  <27.619312, 36.011562, 22.834684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961893, 36.095139, 23.399885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609020, 35.937542, 23.503059>,  <27.397297, 35.842983, 23.564964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609020, 35.937542, 23.503059>,  <27.961893, 36.095139, 23.399885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609020, 35.937542, 23.503059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449714, -0.542363, 0.709647,
		-0.139698, 0.742034, 0.655644,
		-0.882180, -0.393989, 0.257937,
		27.344366, 35.819344, 23.580441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869406, 36.350174, 24.144135>,  <27.961893, 36.095139, 23.399885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869406, 36.350174, 24.144135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653404, 36.022984, 24.064827>,  <27.523804, 35.826668, 24.017242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653404, 36.022984, 24.064827>,  <27.869406, 36.350174, 24.144135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653404, 36.022984, 24.064827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404574, -0.458834, 0.791069,
		-0.738047, 0.346968, 0.578705,
		-0.540005, -0.817976, -0.198267,
		27.491402, 35.777592, 24.005346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532036, 36.194363, 24.759216>,  <27.869406, 36.350174, 24.144135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532036, 36.194363, 24.759216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521458, 35.851948, 24.552723>,  <27.515110, 35.646500, 24.428827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521458, 35.851948, 24.552723>,  <27.532036, 36.194363, 24.759216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521458, 35.851948, 24.552723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407069, -0.480880, 0.776562,
		-0.913014, -0.189606, 0.361185,
		-0.026446, -0.856040, -0.516233,
		27.513523, 35.595135, 24.397854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209692, 35.680607, 25.231644>,  <27.532036, 36.194363, 24.759216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209692, 35.680607, 25.231644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338068, 35.426373, 24.950779>,  <27.415092, 35.273834, 24.782261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338068, 35.426373, 24.950779>,  <27.209692, 35.680607, 25.231644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338068, 35.426373, 24.950779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146919, -0.698996, 0.699870,
		-0.935635, -0.327776, -0.130956,
		0.320938, -0.635583, -0.702162,
		27.434349, 35.235699, 24.740129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010448, 34.952290, 25.570713>,  <27.209692, 35.680607, 25.231644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010448, 34.952290, 25.570713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317356, 34.948818, 25.314205>,  <27.501501, 34.946735, 25.160301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317356, 34.948818, 25.314205>,  <27.010448, 34.952290, 25.570713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317356, 34.948818, 25.314205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465237, -0.680704, 0.565859,
		-0.441422, -0.732507, -0.518246,
		0.767268, -0.008676, -0.641268,
		27.547537, 34.946217, 25.121824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203768, 34.250019, 25.484425>,  <27.010448, 34.952290, 25.570713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203768, 34.250019, 25.484425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522520, 34.472588, 25.390297>,  <27.713772, 34.606129, 25.333820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522520, 34.472588, 25.390297>,  <27.203768, 34.250019, 25.484425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522520, 34.472588, 25.390297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593627, -0.648837, 0.476043,
		0.112199, -0.519040, -0.847354,
		0.796880, 0.556424, -0.235318,
		27.761583, 34.639515, 25.319702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826246, 33.702984, 25.345156>,  <27.203768, 34.250019, 25.484425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826246, 33.702984, 25.345156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039032, 34.040371, 25.375011>,  <28.166704, 34.242805, 25.392925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039032, 34.040371, 25.375011>,  <27.826246, 33.702984, 25.345156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039032, 34.040371, 25.375011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778352, -0.521792, 0.349142,
		0.333438, -0.127635, -0.934092,
		0.531965, 0.843470, 0.074641,
		28.198622, 34.293411, 25.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477930, 33.617584, 24.966503>,  <27.826246, 33.702984, 25.345156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477930, 33.617584, 24.966503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551432, 33.905251, 25.234543>,  <28.595531, 34.077850, 25.395367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551432, 33.905251, 25.234543>,  <28.477930, 33.617584, 24.966503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551432, 33.905251, 25.234543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752197, -0.541731, 0.375137,
		0.632799, 0.435113, -0.640501,
		0.183752, 0.719169, 0.670098,
		28.606558, 34.121002, 25.435572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231283, 33.691166, 25.079798>,  <28.477930, 33.617584, 24.966503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231283, 33.691166, 25.079798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077103, 33.877872, 25.398182>,  <28.984594, 33.989895, 25.589212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077103, 33.877872, 25.398182>,  <29.231283, 33.691166, 25.079798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077103, 33.877872, 25.398182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724614, -0.380947, 0.574294,
		0.571281, 0.798128, -0.191390,
		-0.385450, 0.466767, 0.795963,
		28.961468, 34.017902, 25.636971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764811, 34.040253, 25.489931>,  <29.231283, 33.691166, 25.079798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764811, 34.040253, 25.489931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487114, 33.944401, 25.761402>,  <29.320496, 33.886890, 25.924286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487114, 33.944401, 25.761402>,  <29.764811, 34.040253, 25.489931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487114, 33.944401, 25.761402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716230, -0.323028, 0.618601,
		0.070999, 0.915550, 0.395888,
		-0.694243, -0.239627, 0.678679,
		29.278841, 33.872513, 25.965006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085508, 34.086113, 26.108244>,  <29.764811, 34.040253, 25.489931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085508, 34.086113, 26.108244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759840, 33.884224, 26.223057>,  <29.564440, 33.763092, 26.291945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759840, 33.884224, 26.223057>,  <30.085508, 34.086113, 26.108244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759840, 33.884224, 26.223057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553381, -0.524860, 0.646755,
		-0.175777, 0.685406, 0.706627,
		-0.814170, -0.504718, 0.287032,
		29.515589, 33.732807, 26.309166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075682, 34.036068, 26.808321>,  <30.085508, 34.086113, 26.108244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075682, 34.036068, 26.808321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844084, 33.736103, 26.680328>,  <29.705124, 33.556122, 26.603533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844084, 33.736103, 26.680328>,  <30.075682, 34.036068, 26.808321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844084, 33.736103, 26.680328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491627, -0.634198, 0.596738,
		-0.650436, 0.188197, 0.735877,
		-0.578996, -0.749917, -0.319983,
		29.670385, 33.511127, 26.584333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957542, 33.616783, 27.396408>,  <30.075682, 34.036068, 26.808321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957542, 33.616783, 27.396408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917299, 33.358116, 27.093964>,  <29.893152, 33.202915, 26.912497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917299, 33.358116, 27.093964>,  <29.957542, 33.616783, 27.396408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917299, 33.358116, 27.093964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335723, -0.737459, 0.586042,
		-0.936572, -0.194881, 0.291296,
		-0.100610, -0.646665, -0.756110,
		29.887115, 33.164116, 26.867130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354778, 34.050453, 27.694019>,  <29.957542, 33.616783, 27.396408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354778, 34.050453, 27.694019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681320, 34.140953, 27.906574>,  <29.877245, 34.195251, 28.034107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681320, 34.140953, 27.906574>,  <29.354778, 34.050453, 27.694019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681320, 34.140953, 27.906574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277591, 0.653128, -0.704533,
		-0.506464, 0.722659, 0.470381,
		0.816356, 0.226247, 0.531389,
		29.926228, 34.208828, 28.065990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415838, 34.879284, 27.728199>,  <29.354778, 34.050453, 27.694019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415838, 34.879284, 27.728199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773211, 34.720814, 27.812885>,  <29.987635, 34.625732, 27.863697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773211, 34.720814, 27.812885>,  <29.415838, 34.879284, 27.728199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773211, 34.720814, 27.812885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449116, 0.778834, -0.437851,
		0.008573, 0.486276, 0.873764,
		0.893432, -0.396175, 0.211717,
		30.041241, 34.601963, 27.876400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711838, 35.402527, 27.925955>,  <29.415838, 34.879284, 27.728199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711838, 35.402527, 27.925955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001165, 35.145634, 27.824493>,  <30.174763, 34.991497, 27.763617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001165, 35.145634, 27.824493>,  <29.711838, 35.402527, 27.925955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001165, 35.145634, 27.824493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455847, 0.720040, -0.523208,
		0.518664, 0.262820, 0.813581,
		0.723320, -0.642237, -0.253653,
		30.218161, 34.952961, 27.748398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365429, 35.732883, 28.109076>,  <29.711838, 35.402527, 27.925955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365429, 35.732883, 28.109076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469023, 35.465508, 27.830189>,  <30.531179, 35.305080, 27.662857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469023, 35.465508, 27.830189>,  <30.365429, 35.732883, 28.109076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469023, 35.465508, 27.830189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639591, 0.659592, -0.394793,
		0.723776, -0.343689, 0.598354,
		0.258983, -0.668443, -0.697217,
		30.546719, 35.264977, 27.621023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086515, 35.828609, 28.058590>,  <30.365429, 35.732883, 28.109076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086515, 35.828609, 28.058590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975046, 35.631054, 27.729126>,  <30.908165, 35.512520, 27.531446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975046, 35.631054, 27.729126>,  <31.086515, 35.828609, 28.058590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975046, 35.631054, 27.729126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486580, 0.666804, -0.564457,
		0.827999, -0.558075, 0.054497,
		-0.278671, -0.493887, -0.823661,
		30.891445, 35.482887, 27.482027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600834, 35.706203, 27.624296>,  <31.086515, 35.828609, 28.058590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600834, 35.706203, 27.624296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305645, 35.693645, 27.354656>,  <31.128532, 35.686111, 27.192871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305645, 35.693645, 27.354656>,  <31.600834, 35.706203, 27.624296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305645, 35.693645, 27.354656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516555, 0.616510, -0.594210,
		0.434247, -0.786720, -0.438749,
		-0.737970, -0.031396, -0.674102,
		31.084253, 35.684227, 27.152426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988926, 35.854347, 27.021555>,  <31.600834, 35.706203, 27.624296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988926, 35.854347, 27.021555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607681, 35.914627, 26.916584>,  <31.378935, 35.950794, 26.853601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607681, 35.914627, 26.916584>,  <31.988926, 35.854347, 27.021555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607681, 35.914627, 26.916584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296542, 0.637976, -0.710668,
		0.060326, -0.755167, -0.652750,
		-0.953113, 0.150697, -0.262426,
		31.321747, 35.959835, 26.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865580, 35.606766, 26.263474>,  <31.988926, 35.854347, 27.021555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865580, 35.606766, 26.263474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610558, 35.896133, 26.369450>,  <31.457544, 36.069752, 26.433035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610558, 35.896133, 26.369450>,  <31.865580, 35.606766, 26.263474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610558, 35.896133, 26.369450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321626, 0.562426, -0.761731,
		-0.700058, -0.400433, -0.591246,
		-0.637555, 0.723416, 0.264941,
		31.419291, 36.113159, 26.448933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681345, 35.826694, 25.666527>,  <31.865580, 35.606766, 26.263474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681345, 35.826694, 25.666527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573402, 36.130936, 25.902714>,  <31.508636, 36.313480, 26.044426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573402, 36.130936, 25.902714>,  <31.681345, 35.826694, 25.666527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573402, 36.130936, 25.902714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437436, 0.643126, -0.628521,
		-0.857804, 0.088683, -0.506268,
		-0.269855, 0.760608, 0.590470,
		31.492445, 36.359119, 26.079855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330700, 36.360222, 25.194344>,  <31.681345, 35.826694, 25.666527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330700, 36.360222, 25.194344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460489, 36.541367, 25.526520>,  <31.538363, 36.650055, 25.725824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460489, 36.541367, 25.526520>,  <31.330700, 36.360222, 25.194344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460489, 36.541367, 25.526520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413844, 0.721486, -0.555150,
		-0.850559, 0.523804, 0.046688,
		0.324474, 0.452866, 0.830439,
		31.557831, 36.677227, 25.775652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171625, 37.053886, 25.032978>,  <31.330700, 36.360222, 25.194344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171625, 37.053886, 25.032978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458904, 37.053967, 25.311314>,  <31.631271, 37.054012, 25.478315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458904, 37.053967, 25.311314>,  <31.171625, 37.053886, 25.032978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458904, 37.053967, 25.311314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520275, 0.663892, -0.537179,
		-0.462068, 0.747828, 0.476704,
		0.718197, 0.000196, 0.695840,
		31.674364, 37.054024, 25.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356102, 37.701908, 25.069096>,  <31.171625, 37.053886, 25.032978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356102, 37.701908, 25.069096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679823, 37.536575, 25.236038>,  <31.874056, 37.437374, 25.336205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679823, 37.536575, 25.236038>,  <31.356102, 37.701908, 25.069096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679823, 37.536575, 25.236038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587380, 0.565001, -0.579447,
		0.003697, 0.714095, 0.700040,
		0.809303, -0.413332, 0.417356,
		31.922613, 37.412575, 25.361244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.009592, 31.837429, 30.942583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.398245, 31.900280, 31.013287>,  <29.631437, 31.937990, 31.055710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.398245, 31.900280, 31.013287>,  <29.009592, 31.837429, 30.942583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398245, 31.900280, 31.013287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021466, 0.802904, -0.595722,
		-0.235524, 0.575028, 0.783500,
		0.971631, 0.157125, 0.176760,
		29.689734, 31.947418, 31.066315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096380, 32.542885, 31.085842>,  <29.009592, 31.837429, 30.942583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096380, 32.542885, 31.085842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442320, 32.405895, 30.939011>,  <29.649883, 32.323700, 30.850912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.442320, 32.405895, 30.939011>,  <29.096380, 32.542885, 31.085842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442320, 32.405895, 30.939011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020426, 0.706577, -0.707341,
		0.501616, 0.619242, 0.604087,
		0.864849, -0.342474, -0.367079,
		29.701775, 32.303154, 30.828886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422523, 33.130695, 30.947784>,  <29.096380, 32.542885, 31.085842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422523, 33.130695, 30.947784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.607018, 32.844475, 30.737926>,  <29.717714, 32.672745, 30.612011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.607018, 32.844475, 30.737926>,  <29.422523, 33.130695, 30.947784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607018, 32.844475, 30.737926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028960, 0.603124, -0.797122,
		0.886805, 0.352467, 0.298904,
		0.461236, -0.715548, -0.524646,
		29.745388, 32.629810, 30.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055494, 33.491066, 30.744387>,  <29.422523, 33.130695, 30.947784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055494, 33.491066, 30.744387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.037937, 33.170238, 30.506142>,  <30.027403, 32.977741, 30.363195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.037937, 33.170238, 30.506142>,  <30.055494, 33.491066, 30.744387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037937, 33.170238, 30.506142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199274, 0.577175, -0.791933,
		0.978960, -0.153451, 0.134498,
		-0.043894, -0.802073, -0.595610,
		30.024769, 32.929615, 30.327459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647034, 33.429302, 30.354267>,  <30.055494, 33.491066, 30.744387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647034, 33.429302, 30.354267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.396631, 33.201191, 30.141514>,  <30.246389, 33.064323, 30.013863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.396631, 33.201191, 30.141514>,  <30.647034, 33.429302, 30.354267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396631, 33.201191, 30.141514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312414, 0.441527, -0.841102,
		0.714504, -0.692701, -0.098234,
		-0.626005, -0.570281, -0.531882,
		30.208830, 33.030106, 29.981949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993233, 33.249569, 29.773186>,  <30.647034, 33.429302, 30.354267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993233, 33.249569, 29.773186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.606020, 33.212299, 29.680035>,  <30.373692, 33.189938, 29.624144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.606020, 33.212299, 29.680035>,  <30.993233, 33.249569, 29.773186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606020, 33.212299, 29.680035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176597, 0.406153, -0.896579,
		0.178123, -0.909042, -0.376714,
		-0.968032, -0.093175, -0.232879,
		30.315611, 33.184345, 29.610170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967976, 32.872185, 29.204201>,  <30.993233, 33.249569, 29.773186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967976, 32.872185, 29.204201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.615612, 33.061470, 29.200897>,  <30.404194, 33.175041, 29.198915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.615612, 33.061470, 29.200897>,  <30.967976, 32.872185, 29.204201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615612, 33.061470, 29.200897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194299, 0.345667, -0.918021,
		-0.431569, -0.810296, -0.396446,
		-0.880907, 0.473218, -0.008260,
		30.351339, 33.203434, 29.198420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752541, 32.898350, 28.547426>,  <30.967976, 32.872185, 29.204201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752541, 32.898350, 28.547426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.498089, 33.177490, 28.679089>,  <30.345417, 33.344975, 28.758087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.498089, 33.177490, 28.679089>,  <30.752541, 32.898350, 28.547426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498089, 33.177490, 28.679089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088614, 0.489854, -0.867289,
		-0.766478, -0.522539, -0.373450,
		-0.636128, 0.697851, 0.329157,
		30.307251, 33.386845, 28.777836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292578, 33.068466, 28.043900>,  <30.752541, 32.898350, 28.547426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292578, 33.068466, 28.043900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329533, 33.395798, 28.270809>,  <30.351706, 33.592197, 28.406954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329533, 33.395798, 28.270809>,  <30.292578, 33.068466, 28.043900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329533, 33.395798, 28.270809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119692, 0.556451, -0.822214,
		-0.988503, 0.143859, -0.046539,
		0.092387, 0.818332, 0.567273,
		30.357248, 33.641296, 28.440990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709436, 32.959999, 27.690145>,  <30.292578, 33.068466, 28.043900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709436, 32.959999, 27.690145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826683, 32.841217, 27.326630>,  <29.897032, 32.769947, 27.108521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826683, 32.841217, 27.326630>,  <29.709436, 32.959999, 27.690145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826683, 32.841217, 27.326630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083532, -0.938954, 0.333749,
		-0.952422, -0.173740, -0.250414,
		0.293113, -0.296952, -0.908793,
		29.914618, 32.752132, 27.053991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326199, 32.398357, 27.684076>,  <29.709436, 32.959999, 27.690145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326199, 32.398357, 27.684076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.630116, 32.377186, 27.424873>,  <29.812466, 32.364483, 27.269352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.630116, 32.377186, 27.424873>,  <29.326199, 32.398357, 27.684076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630116, 32.377186, 27.424873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156999, -0.952251, 0.261859,
		-0.630922, -0.300695, -0.715206,
		0.759795, -0.052926, -0.648005,
		29.858053, 32.361309, 27.230473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240601, 31.862040, 27.379957>,  <29.326199, 32.398357, 27.684076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240601, 31.862040, 27.379957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624886, 31.917122, 27.283569>,  <29.855457, 31.950171, 27.225737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624886, 31.917122, 27.283569>,  <29.240601, 31.862040, 27.379957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624886, 31.917122, 27.283569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175222, -0.974259, 0.141833,
		-0.215238, -0.178484, -0.960112,
		0.960713, 0.137706, -0.240972,
		29.913099, 31.958433, 27.211277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346485, 31.357262, 26.871099>,  <29.240601, 31.862040, 27.379957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346485, 31.357262, 26.871099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.677763, 31.484772, 27.055481>,  <29.876530, 31.561277, 27.166111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.677763, 31.484772, 27.055481>,  <29.346485, 31.357262, 26.871099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677763, 31.484772, 27.055481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282583, -0.947798, 0.147736,
		0.483986, 0.007904, -0.875040,
		0.828193, 0.318774, 0.460955,
		29.926222, 31.580404, 27.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901260, 30.917759, 26.589281>,  <29.346485, 31.357262, 26.871099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901260, 30.917759, 26.589281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.008099, 31.085762, 26.936211>,  <30.072201, 31.186563, 27.144369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.008099, 31.085762, 26.936211>,  <29.901260, 30.917759, 26.589281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008099, 31.085762, 26.936211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295937, -0.892282, 0.340960,
		0.917105, 0.165604, -0.362621,
		0.267096, 0.420009, 0.867325,
		30.088228, 31.211765, 27.196407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645227, 30.658939, 26.707575>,  <29.901260, 30.917759, 26.589281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645227, 30.658939, 26.707575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508041, 30.775745, 27.064697>,  <30.425730, 30.845829, 27.278971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508041, 30.775745, 27.064697>,  <30.645227, 30.658939, 26.707575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508041, 30.775745, 27.064697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376920, -0.827800, 0.415547,
		0.860410, 0.479034, 0.173840,
		-0.342966, 0.292017, 0.892805,
		30.405151, 30.863350, 27.332539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031414, 30.263462, 27.148640>,  <30.645227, 30.658939, 26.707575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031414, 30.263462, 27.148640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739639, 30.387108, 27.392727>,  <30.564573, 30.461296, 27.539179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739639, 30.387108, 27.392727>,  <31.031414, 30.263462, 27.148640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739639, 30.387108, 27.392727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120581, -0.819997, 0.559522,
		0.673335, 0.481717, 0.560864,
		-0.729438, 0.309116, 0.610219,
		30.520807, 30.479843, 27.575792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292793, 30.242758, 27.882483>,  <31.031414, 30.263462, 27.148640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292793, 30.242758, 27.882483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.893278, 30.223278, 27.879696>,  <30.653568, 30.211590, 27.878023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.893278, 30.223278, 27.879696>,  <31.292793, 30.242758, 27.882483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893278, 30.223278, 27.879696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042124, -0.919773, 0.390183,
		-0.025408, 0.389417, 0.920711,
		-0.998789, -0.048698, -0.006966,
		30.593641, 30.208668, 27.877605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181330, 30.101961, 28.498325>,  <31.292793, 30.242758, 27.882483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181330, 30.101961, 28.498325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.868301, 29.975086, 28.284046>,  <30.680485, 29.898962, 28.155478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.868301, 29.975086, 28.284046>,  <31.181330, 30.101961, 28.498325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868301, 29.975086, 28.284046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121632, -0.921794, 0.368106,
		-0.610562, 0.222912, 0.759950,
		-0.782573, -0.317186, -0.535699,
		30.633530, 29.879930, 28.123337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926212, 29.666941, 28.964293>,  <31.181330, 30.101961, 28.498325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926212, 29.666941, 28.964293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.688835, 29.599670, 28.649448>,  <30.546410, 29.559307, 28.460543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.688835, 29.599670, 28.649448>,  <30.926212, 29.666941, 28.964293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688835, 29.599670, 28.649448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133772, -0.943717, 0.302496,
		-0.793681, 0.284808, 0.537546,
		-0.593444, -0.168177, -0.787109,
		30.510801, 29.549217, 28.413315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311537, 29.559210, 29.244251>,  <30.926212, 29.666941, 28.964293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311537, 29.559210, 29.244251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.323486, 29.380135, 28.886776>,  <30.330656, 29.272690, 28.672291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.323486, 29.380135, 28.886776>,  <30.311537, 29.559210, 29.244251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323486, 29.380135, 28.886776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287846, -0.860067, 0.421224,
		-0.957211, 0.244662, -0.154559,
		0.029873, -0.447689, -0.893690,
		30.332449, 29.245829, 28.618670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698769, 29.157921, 29.161266>,  <30.311537, 29.559210, 29.244251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698769, 29.157921, 29.161266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974791, 29.013092, 28.910595>,  <30.140404, 28.926195, 28.760191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974791, 29.013092, 28.910595>,  <29.698769, 29.157921, 29.161266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974791, 29.013092, 28.910595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358313, -0.923218, 0.138854,
		-0.628837, 0.128731, -0.766807,
		0.690055, -0.362073, -0.626679,
		30.181807, 28.904470, 28.722591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332199, 28.661476, 28.875418>,  <29.698769, 29.157921, 29.161266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332199, 28.661476, 28.875418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715761, 28.595173, 28.783306>,  <29.945898, 28.555391, 28.728039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715761, 28.595173, 28.783306>,  <29.332199, 28.661476, 28.875418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715761, 28.595173, 28.783306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120342, -0.972590, 0.198963,
		-0.256949, -0.163074, -0.952567,
		0.958903, -0.165758, -0.230281,
		30.003431, 28.545446, 28.714222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339277, 28.097967, 28.479046>,  <29.332199, 28.661476, 28.875418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339277, 28.097967, 28.479046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.711473, 28.119682, 28.623955>,  <29.934792, 28.132711, 28.710899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.711473, 28.119682, 28.623955>,  <29.339277, 28.097967, 28.479046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711473, 28.119682, 28.623955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083517, -0.931471, 0.354100,
		0.356669, -0.359743, -0.862190,
		0.930490, 0.054289, 0.362272,
		29.990620, 28.135969, 28.732635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.641003, 26.366388, 29.179371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299793, 26.567234, 29.236271>,  <35.095066, 26.687740, 29.270411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299793, 26.567234, 29.236271>,  <35.641003, 26.366388, 29.179371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299793, 26.567234, 29.236271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257051, 0.641468, -0.722803,
		-0.454177, -0.580002, -0.676255,
		-0.853023, 0.502113, 0.142249,
		35.043888, 26.717867, 29.278946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365437, 26.457594, 28.596672>,  <35.641003, 26.366388, 29.179371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365437, 26.457594, 28.596672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.185970, 26.761337, 28.785172>,  <35.078293, 26.943583, 28.898272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.185970, 26.761337, 28.785172>,  <35.365437, 26.457594, 28.596672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185970, 26.761337, 28.785172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278278, 0.619790, -0.733772,
		-0.849272, -0.198078, -0.489390,
		-0.448664, 0.759358, 0.471249,
		35.051373, 26.989145, 28.926546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050884, 26.757601, 28.058256>,  <35.365437, 26.457594, 28.596672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050884, 26.757601, 28.058256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017944, 27.047302, 28.332096>,  <34.998180, 27.221123, 28.496399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017944, 27.047302, 28.332096>,  <35.050884, 26.757601, 28.058256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017944, 27.047302, 28.332096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046304, 0.688969, -0.723310,
		-0.995527, -0.027864, -0.090271,
		-0.082349, 0.724255, 0.684597,
		34.993240, 27.264578, 28.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393349, 27.161249, 27.958332>,  <35.050884, 26.757601, 28.058256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393349, 27.161249, 27.958332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632240, 27.407364, 28.164146>,  <34.775574, 27.555033, 28.287634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632240, 27.407364, 28.164146>,  <34.393349, 27.161249, 27.958332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632240, 27.407364, 28.164146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238036, 0.748569, -0.618857,
		-0.765937, 0.247120, 0.593525,
		0.597226, 0.615286, 0.514534,
		34.811409, 27.591949, 28.318506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031998, 27.843876, 27.888651>,  <34.393349, 27.161249, 27.958332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031998, 27.843876, 27.888651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396973, 27.933231, 28.025799>,  <34.615955, 27.986845, 28.108088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396973, 27.933231, 28.025799>,  <34.031998, 27.843876, 27.888651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396973, 27.933231, 28.025799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032037, 0.874282, -0.484361,
		-0.407967, 0.430963, 0.804881,
		0.912435, 0.223389, 0.342871,
		34.670704, 28.000248, 28.128660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029957, 28.539265, 28.183228>,  <34.031998, 27.843876, 27.888651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029957, 28.539265, 28.183228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410305, 28.454906, 28.092571>,  <34.638515, 28.404291, 28.038177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410305, 28.454906, 28.092571>,  <34.029957, 28.539265, 28.183228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410305, 28.454906, 28.092571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121473, 0.927534, -0.353448,
		0.284758, 0.308553, 0.907583,
		0.950872, -0.210894, -0.226641,
		34.695568, 28.391638, 28.024578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529606, 29.105118, 28.496782>,  <34.029957, 28.539265, 28.183228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529606, 29.105118, 28.496782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712906, 28.912392, 28.198021>,  <34.822887, 28.796757, 28.018764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712906, 28.912392, 28.198021>,  <34.529606, 29.105118, 28.496782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712906, 28.912392, 28.198021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260634, 0.876228, -0.405332,
		0.849751, -0.008924, 0.527109,
		0.458250, -0.481814, -0.746902,
		34.850380, 28.767847, 27.973951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020760, 29.568266, 28.242985>,  <34.529606, 29.105118, 28.496782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020760, 29.568266, 28.242985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987507, 29.314430, 27.935638>,  <34.967556, 29.162128, 27.751230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987507, 29.314430, 27.935638>,  <35.020760, 29.568266, 28.242985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987507, 29.314430, 27.935638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268385, 0.728288, -0.630529,
		0.959718, -0.258637, 0.109768,
		-0.083135, -0.634590, -0.768365,
		34.962566, 29.124054, 27.705130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549835, 29.663815, 27.774611>,  <35.020760, 29.568266, 28.242985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549835, 29.663815, 27.774611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290623, 29.465096, 27.543701>,  <35.135094, 29.345863, 27.405155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290623, 29.465096, 27.543701>,  <35.549835, 29.663815, 27.774611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290623, 29.465096, 27.543701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120596, 0.681465, -0.721846,
		0.752003, -0.537398, -0.381700,
		-0.648034, -0.496799, -0.577272,
		35.096210, 29.316055, 27.370520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785679, 29.963657, 27.156492>,  <35.549835, 29.663815, 27.774611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785679, 29.963657, 27.156492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440083, 29.784351, 27.064766>,  <35.232727, 29.676767, 27.009731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440083, 29.784351, 27.064766>,  <35.785679, 29.963657, 27.156492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440083, 29.784351, 27.064766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084917, 0.578626, -0.811161,
		0.496301, -0.681360, -0.537991,
		-0.863988, -0.448264, -0.229313,
		35.180885, 29.649872, 26.995972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801010, 29.802908, 26.475901>,  <35.785679, 29.963657, 27.156492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801010, 29.802908, 26.475901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406746, 29.808636, 26.543148>,  <35.170185, 29.812073, 26.583496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406746, 29.808636, 26.543148>,  <35.801010, 29.802908, 26.475901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406746, 29.808636, 26.543148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146159, 0.425329, -0.893159,
		-0.084296, -0.904926, -0.417138,
		-0.985663, 0.014321, 0.168117,
		35.111046, 29.812933, 26.593582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550674, 29.764513, 25.822392>,  <35.801010, 29.802908, 26.475901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550674, 29.764513, 25.822392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.241943, 29.907627, 26.032635>,  <35.056705, 29.993496, 26.158781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.241943, 29.907627, 26.032635>,  <35.550674, 29.764513, 25.822392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241943, 29.907627, 26.032635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289961, 0.537627, -0.791758,
		-0.565862, -0.763509, -0.311213,
		-0.771831, 0.357786, 0.525610,
		35.010395, 30.014963, 26.190317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989822, 29.779020, 25.407913>,  <35.550674, 29.764513, 25.822392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989822, 29.779020, 25.407913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890213, 30.053551, 25.681248>,  <34.830448, 30.218269, 25.845247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890213, 30.053551, 25.681248>,  <34.989822, 29.779020, 25.407913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890213, 30.053551, 25.681248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165025, 0.665174, -0.728224,
		-0.954334, -0.294112, -0.052383,
		-0.249023, 0.686325, 0.683334,
		34.815506, 30.259449, 25.886248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427109, 30.030188, 25.164648>,  <34.989822, 29.779020, 25.407913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427109, 30.030188, 25.164648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.571712, 30.306114, 25.415554>,  <34.658474, 30.471670, 25.566097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.571712, 30.306114, 25.415554>,  <34.427109, 30.030188, 25.164648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571712, 30.306114, 25.415554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215894, 0.716415, -0.663430,
		-0.907027, 0.104416, 0.407921,
		0.361513, 0.689817, 0.627265,
		34.680168, 30.513060, 25.603733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691460, 30.303680, 24.882290>,  <34.427109, 30.030188, 25.164648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691460, 30.303680, 24.882290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489491, 30.276287, 24.538113>,  <33.368309, 30.259851, 24.331606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489491, 30.276287, 24.538113>,  <33.691460, 30.303680, 24.882290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489491, 30.276287, 24.538113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229217, -0.950419, 0.210152,
		-0.832170, 0.303339, 0.464195,
		-0.504927, -0.068481, -0.860441,
		33.338013, 30.255743, 24.279980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090725, 30.077669, 25.127604>,  <33.691460, 30.303680, 24.882290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090725, 30.077669, 25.127604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141235, 29.984127, 24.741989>,  <33.171543, 29.928001, 24.510620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141235, 29.984127, 24.741989>,  <33.090725, 30.077669, 25.127604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141235, 29.984127, 24.741989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216780, -0.954833, 0.203225,
		-0.968019, 0.183320, -0.171271,
		0.126280, -0.233854, -0.964036,
		33.179119, 29.913971, 24.452778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547745, 29.823284, 24.932810>,  <33.090725, 30.077669, 25.127604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547745, 29.823284, 24.932810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803146, 29.662693, 24.670170>,  <32.956387, 29.566338, 24.512585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803146, 29.662693, 24.670170>,  <32.547745, 29.823284, 24.932810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803146, 29.662693, 24.670170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286641, -0.915827, 0.281243,
		-0.714247, 0.008634, -0.699840,
		0.638504, -0.401480, -0.656601,
		32.994698, 29.542250, 24.473188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226334, 29.087656, 24.759869>,  <32.547745, 29.823284, 24.932810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226334, 29.087656, 24.759869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607857, 29.059139, 24.643135>,  <32.836769, 29.042030, 24.573095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607857, 29.059139, 24.643135>,  <32.226334, 29.087656, 24.759869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607857, 29.059139, 24.643135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016860, -0.957202, 0.288931,
		-0.299944, -0.280505, -0.911784,
		0.953808, -0.071291, -0.291836,
		32.893997, 29.037752, 24.555584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223564, 28.404619, 24.574146>,  <32.226334, 29.087656, 24.759869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223564, 28.404619, 24.574146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615257, 28.478905, 24.541599>,  <32.850273, 28.523476, 24.522072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615257, 28.478905, 24.541599>,  <32.223564, 28.404619, 24.574146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615257, 28.478905, 24.541599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200232, -0.822610, 0.532184,
		0.031902, -0.537422, -0.842710,
		0.979229, 0.185715, -0.081366,
		32.909027, 28.534618, 24.517189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558937, 27.813929, 24.313128>,  <32.223564, 28.404619, 24.574146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558937, 27.813929, 24.313128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812004, 28.037792, 24.527233>,  <32.963844, 28.172110, 24.655697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812004, 28.037792, 24.527233>,  <32.558937, 27.813929, 24.313128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812004, 28.037792, 24.527233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194788, -0.783965, 0.589455,
		0.749522, -0.268668, -0.605007,
		0.632672, 0.559657, 0.535266,
		33.001804, 28.205690, 24.687813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204506, 27.476303, 24.254536>,  <32.558937, 27.813929, 24.313128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204506, 27.476303, 24.254536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158085, 27.671169, 24.600761>,  <33.130234, 27.788088, 24.808496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158085, 27.671169, 24.600761>,  <33.204506, 27.476303, 24.254536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158085, 27.671169, 24.600761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237324, -0.832611, 0.500436,
		0.964474, 0.263496, -0.018989,
		-0.116052, 0.487164, 0.865565,
		33.123268, 27.817318, 24.860432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684650, 27.105261, 24.661409>,  <33.204506, 27.476303, 24.254536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684650, 27.105261, 24.661409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465515, 27.323952, 24.914696>,  <33.334034, 27.455166, 25.066668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465515, 27.323952, 24.914696>,  <33.684650, 27.105261, 24.661409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465515, 27.323952, 24.914696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110997, -0.702711, 0.702764,
		0.829187, 0.455287, 0.324288,
		-0.547840, 0.546728, 0.633214,
		33.301163, 27.487970, 25.104660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053024, 26.970022, 25.364349>,  <33.684650, 27.105261, 24.661409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053024, 26.970022, 25.364349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685104, 27.102013, 25.449280>,  <33.464352, 27.181206, 25.500238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685104, 27.102013, 25.449280>,  <34.053024, 26.970022, 25.364349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685104, 27.102013, 25.449280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076041, -0.680757, 0.728552,
		0.384945, 0.653978, 0.651253,
		-0.919802, 0.329974, 0.212325,
		33.409164, 27.201004, 25.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997341, 27.144463, 26.048626>,  <34.053024, 26.970022, 25.364349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997341, 27.144463, 26.048626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621964, 27.069069, 25.932838>,  <33.396736, 27.023832, 25.863365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621964, 27.069069, 25.932838>,  <33.997341, 27.144463, 26.048626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621964, 27.069069, 25.932838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110785, -0.629505, 0.769058,
		-0.327179, 0.753788, 0.569875,
		-0.938446, -0.188486, -0.289469,
		33.340431, 27.012524, 25.845997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505363, 27.283237, 26.698521>,  <33.997341, 27.144463, 26.048626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505363, 27.283237, 26.698521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301720, 27.065968, 26.431458>,  <33.179531, 26.935606, 26.271219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301720, 27.065968, 26.431458>,  <33.505363, 27.283237, 26.698521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301720, 27.065968, 26.431458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429933, -0.511513, 0.743983,
		-0.745629, 0.665818, 0.026888,
		-0.509111, -0.543176, -0.667657,
		33.148987, 26.903015, 26.231161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784470, 27.255495, 26.964676>,  <33.505363, 27.283237, 26.698521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784470, 27.255495, 26.964676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841560, 26.962463, 26.698456>,  <32.875816, 26.786644, 26.538723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841560, 26.962463, 26.698456>,  <32.784470, 27.255495, 26.964676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841560, 26.962463, 26.698456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424429, -0.652773, 0.627493,
		-0.894141, 0.192918, -0.404096,
		0.142728, -0.732578, -0.665552,
		32.884380, 26.742689, 26.498791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189514, 26.890068, 27.120972>,  <32.784470, 27.255495, 26.964676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189514, 26.890068, 27.120972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431038, 26.651257, 26.909698>,  <32.575951, 26.507969, 26.782934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431038, 26.651257, 26.909698>,  <32.189514, 26.890068, 27.120972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431038, 26.651257, 26.909698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276127, -0.778233, 0.564011,
		-0.747774, -0.194711, -0.634760,
		0.603810, -0.597027, -0.528177,
		32.612179, 26.472149, 26.751244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771326, 26.336393, 26.960415>,  <32.189514, 26.890068, 27.120972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771326, 26.336393, 26.960415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146893, 26.212109, 26.901226>,  <32.372231, 26.137539, 26.865713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146893, 26.212109, 26.901226>,  <31.771326, 26.336393, 26.960415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146893, 26.212109, 26.901226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163761, -0.781545, 0.601972,
		-0.302687, -0.540969, -0.784687,
		0.938916, -0.310710, -0.147974,
		32.428566, 26.118895, 26.856834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281157, 26.279778, 26.249582>,  <31.771326, 26.336393, 26.960415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281157, 26.279778, 26.249582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888088, 26.252003, 26.318329>,  <30.652246, 26.235338, 26.359577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888088, 26.252003, 26.318329>,  <31.281157, 26.279778, 26.249582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888088, 26.252003, 26.318329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180359, 0.572129, -0.800087,
		-0.042775, -0.817219, -0.574737,
		-0.982670, -0.069435, 0.171866,
		30.593287, 26.231173, 26.369888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908813, 26.103138, 25.511328>,  <31.281157, 26.279778, 26.249582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908813, 26.103138, 25.511328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667187, 26.288990, 25.770317>,  <30.522209, 26.400501, 25.925711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667187, 26.288990, 25.770317>,  <30.908813, 26.103138, 25.511328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667187, 26.288990, 25.770317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385071, 0.541144, -0.747585,
		-0.697726, -0.700916, -0.147973,
		-0.604069, 0.464630, 0.647472,
		30.485966, 26.428379, 25.964560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302395, 26.217749, 25.176090>,  <30.908813, 26.103138, 25.511328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302395, 26.217749, 25.176090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.271652, 26.483849, 25.473152>,  <30.253206, 26.643509, 25.651388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.271652, 26.483849, 25.473152>,  <30.302395, 26.217749, 25.176090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271652, 26.483849, 25.473152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457801, 0.638149, -0.619018,
		-0.885726, -0.387564, 0.255507,
		-0.076857, 0.665252, 0.742653,
		30.248594, 26.683424, 25.695948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640554, 26.587175, 25.018887>,  <30.302395, 26.217749, 25.176090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640554, 26.587175, 25.018887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.882023, 26.808994, 25.247993>,  <30.026903, 26.942085, 25.385458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.882023, 26.808994, 25.247993>,  <29.640554, 26.587175, 25.018887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882023, 26.808994, 25.247993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286249, 0.821301, -0.493483,
		-0.744072, 0.133947, 0.654534,
		0.603670, 0.554547, 0.572765,
		30.063124, 26.975359, 25.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223320, 27.218941, 25.124714>,  <29.640554, 26.587175, 25.018887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223320, 27.218941, 25.124714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614466, 27.290413, 25.168266>,  <29.849154, 27.333296, 25.194397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614466, 27.290413, 25.168266>,  <29.223320, 27.218941, 25.124714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614466, 27.290413, 25.168266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110482, 0.882822, -0.456528,
		-0.177696, 0.434393, 0.883021,
		0.977864, 0.178681, 0.108881,
		29.907825, 27.344017, 25.200930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342022, 27.875490, 25.472252>,  <29.223320, 27.218941, 25.124714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342022, 27.875490, 25.472252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.686575, 27.805363, 25.281555>,  <29.893307, 27.763287, 25.167137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.686575, 27.805363, 25.281555>,  <29.342022, 27.875490, 25.472252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686575, 27.805363, 25.281555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121728, 0.839954, -0.528829,
		0.493153, 0.513557, 0.702181,
		0.861384, -0.175319, -0.476740,
		29.944990, 27.752768, 25.138533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760801, 28.541681, 25.427494>,  <29.342022, 27.875490, 25.472252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760801, 28.541681, 25.427494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.899023, 28.301594, 25.138958>,  <29.981956, 28.157541, 24.965837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.899023, 28.301594, 25.138958>,  <29.760801, 28.541681, 25.427494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899023, 28.301594, 25.138958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015084, 0.765039, -0.643807,
		0.938278, 0.233350, 0.255308,
		0.345553, -0.600219, -0.721339,
		30.002689, 28.121529, 24.922556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261814, 29.026403, 25.136255>,  <29.760801, 28.541681, 25.427494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261814, 29.026403, 25.136255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257904, 28.725479, 24.872761>,  <30.255558, 28.544924, 24.714664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257904, 28.725479, 24.872761>,  <30.261814, 29.026403, 25.136255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257904, 28.725479, 24.872761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027074, 0.658326, -0.752246,
		0.999586, -0.025189, 0.013932,
		-0.009776, -0.752311, -0.658736,
		30.254971, 28.499786, 24.675140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817028, 29.172905, 24.746372>,  <30.261814, 29.026403, 25.136255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817028, 29.172905, 24.746372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.551878, 28.961330, 24.534401>,  <30.392788, 28.834387, 24.407219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.551878, 28.961330, 24.534401>,  <30.817028, 29.172905, 24.746372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551878, 28.961330, 24.534401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001882, 0.708945, -0.705262,
		0.748730, -0.466501, -0.470935,
		-0.662872, -0.528937, -0.529931,
		30.353016, 28.802650, 24.375422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035936, 29.268192, 24.225594>,  <30.817028, 29.172905, 24.746372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035936, 29.268192, 24.225594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675365, 29.123024, 24.131172>,  <30.459023, 29.035923, 24.074520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675365, 29.123024, 24.131172>,  <31.035936, 29.268192, 24.225594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675365, 29.123024, 24.131172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027734, 0.592526, -0.805074,
		0.432044, -0.719168, -0.544183,
		-0.901426, -0.362920, -0.236052,
		30.404938, 29.014149, 24.060356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136963, 29.199024, 23.499807>,  <31.035936, 29.268192, 24.225594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136963, 29.199024, 23.499807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758265, 29.211384, 23.628006>,  <30.531046, 29.218800, 23.704926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758265, 29.211384, 23.628006>,  <31.136963, 29.199024, 23.499807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758265, 29.211384, 23.628006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220053, 0.664547, -0.714111,
		-0.235049, -0.746607, -0.622358,
		-0.946746, 0.030900, 0.320495,
		30.474241, 29.220654, 23.724154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735374, 29.266659, 22.891722>,  <31.136963, 29.199024, 23.499807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735374, 29.266659, 22.891722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479548, 29.380104, 23.177525>,  <30.326052, 29.448172, 23.349007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479548, 29.380104, 23.177525>,  <30.735374, 29.266659, 22.891722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479548, 29.380104, 23.177525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288587, 0.772896, -0.565110,
		-0.712512, -0.567622, -0.412471,
		-0.639566, 0.283614, 0.714506,
		30.287678, 29.465189, 23.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087208, 29.464346, 22.542498>,  <30.735374, 29.266659, 22.891722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087208, 29.464346, 22.542498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058170, 29.641983, 22.899712>,  <30.040749, 29.748566, 23.114040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058170, 29.641983, 22.899712>,  <30.087208, 29.464346, 22.542498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058170, 29.641983, 22.899712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360759, 0.823077, -0.438631,
		-0.929830, -0.354011, 0.100463,
		-0.072591, 0.444095, 0.893034,
		30.036392, 29.775211, 23.167622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425854, 29.722099, 22.541592>,  <30.087208, 29.464346, 22.542498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425854, 29.722099, 22.541592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.642473, 29.942471, 22.795586>,  <29.772444, 30.074694, 22.947983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.642473, 29.942471, 22.795586>,  <29.425854, 29.722099, 22.541592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642473, 29.942471, 22.795586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267259, 0.828973, -0.491301,
		-0.797057, 0.096356, 0.596168,
		0.541546, 0.550926, 0.634986,
		29.804937, 30.107748, 22.986082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.262623, 35.631855, 31.443241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.421352, 35.997829, 31.472710>,  <40.516590, 36.217415, 31.490391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.421352, 35.997829, 31.472710>,  <40.262623, 35.631855, 31.443241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421352, 35.997829, 31.472710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498096, -0.147225, -0.854532,
		-0.770993, 0.375796, -0.514147,
		0.396825, 0.914933, 0.073673,
		40.540401, 36.272308, 31.494812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072662, 36.005127, 30.873478>,  <40.262623, 35.631855, 31.443241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072662, 36.005127, 30.873478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.412186, 36.169891, 31.006054>,  <40.615898, 36.268749, 31.085600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.412186, 36.169891, 31.006054>,  <40.072662, 36.005127, 30.873478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412186, 36.169891, 31.006054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380354, -0.040323, -0.923962,
		-0.367227, 0.910331, -0.190898,
		0.848808, 0.411912, 0.331440,
		40.666828, 36.293465, 31.105486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265026, 36.496712, 30.345034>,  <40.072662, 36.005127, 30.873478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265026, 36.496712, 30.345034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605972, 36.433453, 30.544418>,  <40.810539, 36.395496, 30.664049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605972, 36.433453, 30.544418>,  <40.265026, 36.496712, 30.345034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605972, 36.433453, 30.544418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506952, 0.015945, -0.861827,
		0.128347, 0.987287, 0.093763,
		0.852365, -0.158147, 0.498460,
		40.861683, 36.386009, 30.693956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692326, 36.905033, 29.981033>,  <40.265026, 36.496712, 30.345034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692326, 36.905033, 29.981033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.916031, 36.642231, 30.183250>,  <41.050255, 36.484550, 30.304581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.916031, 36.642231, 30.183250>,  <40.692326, 36.905033, 29.981033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916031, 36.642231, 30.183250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590265, -0.112593, -0.799318,
		0.582074, 0.745433, 0.324837,
		0.559264, -0.657003, 0.505540,
		41.083809, 36.445129, 30.334913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389008, 37.209705, 29.889606>,  <40.692326, 36.905033, 29.981033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389008, 37.209705, 29.889606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398712, 36.823334, 29.992672>,  <41.404537, 36.591511, 30.054512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398712, 36.823334, 29.992672>,  <41.389008, 37.209705, 29.889606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398712, 36.823334, 29.992672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592622, -0.193675, -0.781850,
		0.805115, 0.171668, 0.567732,
		0.024263, -0.965930, 0.257665,
		41.405991, 36.533554, 30.069971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992706, 36.972675, 29.544510>,  <41.389008, 37.209705, 29.889606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992706, 36.972675, 29.544510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794327, 36.629642, 29.599045>,  <41.675297, 36.423824, 29.631765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794327, 36.629642, 29.599045>,  <41.992706, 36.972675, 29.544510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794327, 36.629642, 29.599045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195837, -0.263424, -0.944593,
		0.845979, -0.441772, 0.298591,
		-0.495951, -0.857580, 0.136336,
		41.645542, 36.372368, 29.639946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378067, 36.557438, 29.179996>,  <41.992706, 36.972675, 29.544510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378067, 36.557438, 29.179996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032566, 36.363350, 29.234409>,  <41.825268, 36.246899, 29.267057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032566, 36.363350, 29.234409>,  <42.378067, 36.557438, 29.179996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032566, 36.363350, 29.234409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059057, -0.365557, -0.928913,
		0.500452, -0.794313, 0.344404,
		-0.863748, -0.485216, 0.136034,
		41.773441, 36.217785, 29.275219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454884, 35.870770, 28.871857>,  <42.378067, 36.557438, 29.179996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454884, 35.870770, 28.871857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057018, 35.902500, 28.898251>,  <41.818298, 35.921539, 28.914087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057018, 35.902500, 28.898251>,  <42.454884, 35.870770, 28.871857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057018, 35.902500, 28.898251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087050, -0.301791, -0.949392,
		-0.055402, -0.950068, 0.307085,
		-0.994662, 0.079330, 0.065984,
		41.758621, 35.926300, 28.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210430, 35.303745, 28.524860>,  <42.454884, 35.870770, 28.871857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210430, 35.303745, 28.524860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.843967, 35.460457, 28.558708>,  <41.624088, 35.554482, 28.579018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.843967, 35.460457, 28.558708>,  <42.210430, 35.303745, 28.524860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843967, 35.460457, 28.558708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234384, -0.352412, -0.906019,
		-0.325132, -0.849894, 0.414692,
		-0.916162, 0.391773, 0.084621,
		41.569118, 35.577991, 28.584095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592178, 34.758396, 28.460693>,  <42.210430, 35.303745, 28.524860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592178, 34.758396, 28.460693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484844, 35.131870, 28.365849>,  <41.420444, 35.355957, 28.308941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484844, 35.131870, 28.365849>,  <41.592178, 34.758396, 28.460693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484844, 35.131870, 28.365849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334853, -0.321198, -0.885836,
		-0.903254, -0.158306, 0.398838,
		-0.268339, 0.933687, -0.237114,
		41.404343, 35.411976, 28.294714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954208, 34.618912, 28.126873>,  <41.592178, 34.758396, 28.460693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954208, 34.618912, 28.126873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082886, 34.974518, 27.996536>,  <41.160091, 35.187881, 27.918333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082886, 34.974518, 27.996536>,  <40.954208, 34.618912, 28.126873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082886, 34.974518, 27.996536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354260, -0.206134, -0.912145,
		-0.878075, 0.408862, 0.248630,
		0.321690, 0.889011, -0.325844,
		41.179394, 35.241222, 27.898783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399868, 34.886940, 27.739555>,  <40.954208, 34.618912, 28.126873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399868, 34.886940, 27.739555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724701, 35.086273, 27.618111>,  <40.919601, 35.205872, 27.545244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724701, 35.086273, 27.618111>,  <40.399868, 34.886940, 27.739555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724701, 35.086273, 27.618111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206980, -0.240482, -0.948329,
		-0.545598, 0.832966, -0.092147,
		0.812085, 0.498334, -0.303614,
		40.968327, 35.235775, 27.527027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203018, 35.139599, 27.103237>,  <40.399868, 34.886940, 27.739555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203018, 35.139599, 27.103237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598866, 35.193089, 27.082180>,  <40.836372, 35.225182, 27.069546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598866, 35.193089, 27.082180>,  <40.203018, 35.139599, 27.103237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598866, 35.193089, 27.082180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017016, -0.254707, -0.966869,
		-0.142702, 0.957727, -0.249788,
		0.989619, 0.133723, -0.052644,
		40.895752, 35.233204, 27.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350155, 35.641434, 26.570959>,  <40.203018, 35.139599, 27.103237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350155, 35.641434, 26.570959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684818, 35.424603, 26.602345>,  <40.885616, 35.294506, 26.621176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684818, 35.424603, 26.602345>,  <40.350155, 35.641434, 26.570959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684818, 35.424603, 26.602345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012108, -0.161523, -0.986795,
		0.547589, 0.824661, -0.141703,
		0.836659, -0.542074, 0.078463,
		40.935818, 35.261982, 26.625883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743137, 35.826382, 25.927322>,  <40.350155, 35.641434, 26.570959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743137, 35.826382, 25.927322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918011, 35.494549, 26.066265>,  <41.022934, 35.295448, 26.149632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918011, 35.494549, 26.066265>,  <40.743137, 35.826382, 25.927322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918011, 35.494549, 26.066265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109548, -0.334229, -0.936104,
		0.892674, 0.447306, -0.055242,
		0.437188, -0.829584, 0.347358,
		41.049168, 35.245674, 26.170473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399231, 35.701057, 25.535484>,  <40.743137, 35.826382, 25.927322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399231, 35.701057, 25.535484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.292229, 35.346645, 25.686954>,  <41.228027, 35.133999, 25.777836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.292229, 35.346645, 25.686954>,  <41.399231, 35.701057, 25.535484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292229, 35.346645, 25.686954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136416, -0.423862, -0.895395,
		0.953852, -0.187861, 0.234252,
		-0.267501, -0.886030, 0.378675,
		41.211979, 35.080837, 25.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917564, 35.194691, 25.239330>,  <41.399231, 35.701057, 25.535484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917564, 35.194691, 25.239330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576164, 35.025471, 25.361027>,  <41.371323, 34.923939, 25.434044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576164, 35.025471, 25.361027>,  <41.917564, 35.194691, 25.239330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576164, 35.025471, 25.361027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117403, -0.412731, -0.903255,
		0.507688, -0.806651, 0.302600,
		-0.853504, -0.423046, 0.304242,
		41.320114, 34.898556, 25.452299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995998, 34.513866, 24.926889>,  <41.917564, 35.194691, 25.239330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995998, 34.513866, 24.926889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609291, 34.560066, 25.018116>,  <41.377266, 34.587784, 25.072853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609291, 34.560066, 25.018116>,  <41.995998, 34.513866, 24.926889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609291, 34.560066, 25.018116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255634, -0.445246, -0.858142,
		0.002433, -0.887928, 0.459975,
		-0.966771, 0.115498, 0.228068,
		41.319260, 34.594715, 25.086536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681908, 33.828819, 24.685358>,  <41.995998, 34.513866, 24.926889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681908, 33.828819, 24.685358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385212, 34.096043, 24.709084>,  <41.207195, 34.256378, 24.723318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385212, 34.096043, 24.709084>,  <41.681908, 33.828819, 24.685358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385212, 34.096043, 24.709084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429903, -0.405703, -0.806591,
		-0.514788, -0.623778, 0.588127,
		-0.741738, 0.668061, 0.059313,
		41.162689, 34.296459, 24.726877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953167, 33.426064, 24.463802>,  <41.681908, 33.828819, 24.685358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953167, 33.426064, 24.463802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918442, 33.824413, 24.453205>,  <40.897606, 34.063423, 24.446846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918442, 33.824413, 24.453205>,  <40.953167, 33.426064, 24.463802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918442, 33.824413, 24.453205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575355, -0.071834, -0.814744,
		-0.813283, -0.055489, 0.579216,
		-0.086816, 0.995872, -0.026495,
		40.892395, 34.123177, 24.445257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223095, 33.505821, 24.335255>,  <40.953167, 33.426064, 24.463802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223095, 33.505821, 24.335255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420609, 33.820984, 24.188080>,  <40.539116, 34.010082, 24.099775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420609, 33.820984, 24.188080>,  <40.223095, 33.505821, 24.335255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420609, 33.820984, 24.188080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543392, -0.050755, -0.837944,
		-0.678898, 0.613697, 0.403081,
		0.493785, 0.787909, -0.367935,
		40.568745, 34.057358, 24.077700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602154, 33.779240, 24.599270>,  <40.223095, 33.505821, 24.335255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602154, 33.779240, 24.599270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282509, 33.908882, 24.396736>,  <39.090721, 33.986668, 24.275215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282509, 33.908882, 24.396736>,  <39.602154, 33.779240, 24.599270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282509, 33.908882, 24.396736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434386, 0.270964, 0.859004,
		0.415605, 0.906386, -0.075744,
		-0.799113, 0.324104, -0.506335,
		39.042774, 34.006115, 24.244835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409489, 34.463814, 24.864166>,  <39.602154, 33.779240, 24.599270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409489, 34.463814, 24.864166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072330, 34.308437, 24.715225>,  <38.870037, 34.215210, 24.625860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072330, 34.308437, 24.715225>,  <39.409489, 34.463814, 24.864166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072330, 34.308437, 24.715225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529137, 0.472692, 0.704682,
		-0.097720, 0.790996, -0.603967,
		-0.842891, -0.388442, -0.372354,
		38.819462, 34.191906, 24.603519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893028, 34.943176, 24.871838>,  <39.409489, 34.463814, 24.864166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893028, 34.943176, 24.871838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681274, 34.604042, 24.859619>,  <38.554222, 34.400562, 24.852287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681274, 34.604042, 24.859619>,  <38.893028, 34.943176, 24.871838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681274, 34.604042, 24.859619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664082, 0.391702, 0.636840,
		-0.527969, 0.357416, -0.770391,
		-0.529381, -0.847834, -0.030547,
		38.522461, 34.349693, 24.850454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387104, 35.312519, 25.277826>,  <38.893028, 34.943176, 24.871838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387104, 35.312519, 25.277826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292347, 34.924397, 25.258282>,  <38.235493, 34.691525, 25.246555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292347, 34.924397, 25.258282>,  <38.387104, 35.312519, 25.277826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292347, 34.924397, 25.258282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704026, 0.136789, 0.696876,
		-0.669500, 0.199483, -0.715525,
		-0.236891, -0.970307, -0.048861,
		38.221279, 34.633305, 25.243624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598099, 35.266483, 25.267572>,  <38.387104, 35.312519, 25.277826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598099, 35.266483, 25.267572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.744339, 34.915375, 25.391411>,  <37.832085, 34.704708, 25.465714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.744339, 34.915375, 25.391411>,  <37.598099, 35.266483, 25.267572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744339, 34.915375, 25.391411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718206, -0.054468, 0.693695,
		-0.592044, -0.475970, -0.650336,
		0.365600, -0.877773, 0.309597,
		37.854019, 34.652042, 25.484289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056911, 35.033779, 25.693636>,  <37.598099, 35.266483, 25.267572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056911, 35.033779, 25.693636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369049, 34.801708, 25.786976>,  <37.556332, 34.662464, 25.842979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369049, 34.801708, 25.786976>,  <37.056911, 35.033779, 25.693636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369049, 34.801708, 25.786976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383985, -0.150030, 0.911069,
		-0.493577, -0.800550, -0.339856,
		0.780344, -0.580182, 0.233348,
		37.603153, 34.627655, 25.856979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782780, 34.537895, 26.185577>,  <37.056911, 35.033779, 25.693636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782780, 34.537895, 26.185577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174435, 34.527260, 26.266163>,  <37.409428, 34.520878, 26.314514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174435, 34.527260, 26.266163>,  <36.782780, 34.537895, 26.185577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174435, 34.527260, 26.266163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202649, -0.201263, 0.958346,
		0.015069, -0.979177, -0.202451,
		0.979136, -0.026585, 0.201462,
		37.468174, 34.519283, 26.326601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814121, 34.157585, 26.731808>,  <36.782780, 34.537895, 26.185577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814121, 34.157585, 26.731808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171764, 34.336555, 26.739578>,  <37.386353, 34.443935, 26.744242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171764, 34.336555, 26.739578>,  <36.814121, 34.157585, 26.731808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171764, 34.336555, 26.739578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044909, 0.046414, 0.997912,
		0.445589, -0.893116, 0.061593,
		0.894111, 0.447424, 0.019427,
		37.439999, 34.470783, 26.745407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314114, 33.736538, 27.151285>,  <36.814121, 34.157585, 26.731808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314114, 33.736538, 27.151285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.440620, 34.115765, 27.164787>,  <37.516525, 34.343300, 27.172888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.440620, 34.115765, 27.164787>,  <37.314114, 33.736538, 27.151285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440620, 34.115765, 27.164787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075835, -0.010200, 0.997068,
		0.945633, -0.317903, 0.068671,
		0.316270, 0.948068, 0.033753,
		37.535503, 34.400185, 27.174913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653534, 33.663029, 27.715334>,  <37.314114, 33.736538, 27.151285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653534, 33.663029, 27.715334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592388, 34.056519, 27.677540>,  <37.555702, 34.292610, 27.654863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.592388, 34.056519, 27.677540>,  <37.653534, 33.663029, 27.715334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592388, 34.056519, 27.677540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127244, 0.075222, 0.989015,
		0.980022, 0.163206, 0.113674,
		-0.152862, 0.983720, -0.094486,
		37.546528, 34.351635, 27.649195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039276, 33.921082, 28.196739>,  <37.653534, 33.663029, 27.715334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039276, 33.921082, 28.196739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.797848, 34.232410, 28.127556>,  <37.652992, 34.419209, 28.086046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.797848, 34.232410, 28.127556>,  <38.039276, 33.921082, 28.196739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797848, 34.232410, 28.127556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090061, 0.148986, 0.984729,
		0.792206, 0.609932, -0.019827,
		-0.603572, 0.778323, -0.172959,
		37.616776, 34.465908, 28.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377701, 34.516060, 28.510603>,  <38.039276, 33.921082, 28.196739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377701, 34.516060, 28.510603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004433, 34.649525, 28.457153>,  <37.780472, 34.729603, 28.425083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004433, 34.649525, 28.457153>,  <38.377701, 34.516060, 28.510603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004433, 34.649525, 28.457153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005123, 0.359388, 0.933174,
		0.359388, 0.871499, -0.333662,
		-0.933174, 0.333662, -0.133624,
		37.724480, 34.749622, 28.417067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453671, 35.240879, 28.639322>,  <38.377701, 34.516060, 28.510603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453671, 35.240879, 28.639322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062134, 35.165947, 28.672245>,  <37.827213, 35.120987, 28.691998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062134, 35.165947, 28.672245>,  <38.453671, 35.240879, 28.639322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062134, 35.165947, 28.672245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022516, 0.498410, 0.866649,
		-0.203374, 0.846460, -0.492083,
		-0.978842, -0.187334, 0.082305,
		37.768482, 35.109745, 28.696936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140434, 35.859600, 28.800663>,  <38.453671, 35.240879, 28.639322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140434, 35.859600, 28.800663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875996, 35.592216, 28.936958>,  <37.717331, 35.431786, 29.018736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875996, 35.592216, 28.936958>,  <38.140434, 35.859600, 28.800663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875996, 35.592216, 28.936958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071126, 0.507928, 0.858458,
		-0.746919, 0.543291, -0.383337,
		-0.661100, -0.668463, 0.340739,
		37.677666, 35.391678, 29.039181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488781, 36.209751, 29.072424>,  <38.140434, 35.859600, 28.800663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488781, 36.209751, 29.072424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507908, 35.855850, 29.257866>,  <37.519386, 35.643509, 29.369131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507908, 35.855850, 29.257866>,  <37.488781, 36.209751, 29.072424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507908, 35.855850, 29.257866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100349, 0.457531, 0.883513,
		-0.993803, -0.088773, -0.066904,
		0.047822, -0.884751, 0.463604,
		37.522255, 35.590424, 29.396948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946907, 36.170872, 29.532516>,  <37.488781, 36.209751, 29.072424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946907, 36.170872, 29.532516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188423, 35.890202, 29.683826>,  <37.333332, 35.721798, 29.774612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188423, 35.890202, 29.683826>,  <36.946907, 36.170872, 29.532516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188423, 35.890202, 29.683826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106874, 0.398997, 0.910702,
		-0.789948, -0.590299, 0.165918,
		0.603788, -0.701676, 0.378275,
		37.369560, 35.679699, 29.797310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731884, 36.103191, 30.222551>,  <36.946907, 36.170872, 29.532516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731884, 36.103191, 30.222551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098808, 35.943939, 30.219929>,  <37.318962, 35.848389, 30.218355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098808, 35.943939, 30.219929>,  <36.731884, 36.103191, 30.222551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098808, 35.943939, 30.219929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164171, 0.363156, 0.917151,
		-0.362763, -0.842384, 0.398486,
		0.917306, -0.398129, -0.006555,
		37.374001, 35.824501, 30.217962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811745, 35.836197, 30.839718>,  <36.731884, 36.103191, 30.222551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811745, 35.836197, 30.839718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184597, 35.864937, 30.697750>,  <37.408310, 35.882179, 30.612568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184597, 35.864937, 30.697750>,  <36.811745, 35.836197, 30.839718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184597, 35.864937, 30.697750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311977, 0.338289, 0.887824,
		0.183852, -0.938296, 0.292916,
		0.932131, 0.071845, -0.354922,
		37.464237, 35.886490, 30.591274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168861, 35.519157, 31.241472>,  <36.811745, 35.836197, 30.839718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168861, 35.519157, 31.241472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434723, 35.760632, 31.065376>,  <37.594238, 35.905514, 30.959719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434723, 35.760632, 31.065376>,  <37.168861, 35.519157, 31.241472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434723, 35.760632, 31.065376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261494, 0.364006, 0.893936,
		0.699902, -0.709273, 0.084077,
		0.664649, 0.603682, -0.440239,
		37.634117, 35.941734, 30.933304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776127, 35.470028, 31.624046>,  <37.168861, 35.519157, 31.241472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776127, 35.470028, 31.624046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789066, 35.818035, 31.427265>,  <37.796829, 36.026840, 31.309196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789066, 35.818035, 31.427265>,  <37.776127, 35.470028, 31.624046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789066, 35.818035, 31.427265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306536, 0.459854, 0.833409,
		0.951309, -0.177761, -0.251817,
		0.032349, 0.870020, -0.491953,
		37.798771, 36.079041, 31.279678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353207, 35.761208, 31.827522>,  <37.776127, 35.470028, 31.624046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353207, 35.761208, 31.827522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105495, 36.057430, 31.723167>,  <37.956867, 36.235165, 31.660555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105495, 36.057430, 31.723167>,  <38.353207, 35.761208, 31.827522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105495, 36.057430, 31.723167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205397, 0.473496, 0.856512,
		0.757830, 0.476834, -0.445335,
		-0.619278, 0.740561, -0.260889,
		37.919712, 36.279598, 31.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.669657, 27.482546, 28.277170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.946833, 27.567795, 28.552681>,  <30.113138, 27.618944, 28.717987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.946833, 27.567795, 28.552681>,  <29.669657, 27.482546, 28.277170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946833, 27.567795, 28.552681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233316, -0.837628, 0.493906,
		0.682200, -0.502950, -0.530702,
		0.692940, 0.213122, 0.688776,
		30.154715, 27.631731, 28.759314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114098, 26.992466, 28.351244>,  <29.669657, 27.482546, 28.277170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114098, 26.992466, 28.351244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.158577, 27.185642, 28.698669>,  <30.185265, 27.301548, 28.907125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.158577, 27.185642, 28.698669>,  <30.114098, 26.992466, 28.351244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158577, 27.185642, 28.698669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297565, -0.817707, 0.492758,
		0.948204, -0.313247, 0.052780,
		0.111196, 0.482940, 0.868564,
		30.191936, 27.330524, 28.959238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465267, 26.492233, 28.806128>,  <30.114098, 26.992466, 28.351244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465267, 26.492233, 28.806128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277655, 26.769505, 29.025040>,  <30.165087, 26.935867, 29.156387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277655, 26.769505, 29.025040>,  <30.465267, 26.492233, 28.806128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277655, 26.769505, 29.025040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394360, -0.718837, 0.572497,
		0.790248, 0.052693, 0.610517,
		-0.469029, 0.693178, 0.547280,
		30.136946, 26.977459, 29.189224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632301, 26.423088, 29.530573>,  <30.465267, 26.492233, 28.806128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632301, 26.423088, 29.530573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292542, 26.634182, 29.532238>,  <30.088686, 26.760838, 29.533237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292542, 26.634182, 29.532238>,  <30.632301, 26.423088, 29.530573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292542, 26.634182, 29.532238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337470, -0.549197, 0.764524,
		0.405752, 0.647981, 0.644582,
		-0.849399, 0.527734, 0.004163,
		30.037722, 26.792501, 29.533487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587168, 26.532131, 30.284216>,  <30.632301, 26.423088, 29.530573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587168, 26.532131, 30.284216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229675, 26.581234, 30.111622>,  <30.015181, 26.610695, 30.008066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229675, 26.581234, 30.111622>,  <30.587168, 26.532131, 30.284216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229675, 26.581234, 30.111622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441702, -0.408899, 0.798562,
		-0.078406, 0.904286, 0.419666,
		-0.893729, 0.122755, -0.431485,
		29.961557, 26.618061, 29.982176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161121, 26.501371, 30.898991>,  <30.587168, 26.532131, 30.284216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161121, 26.501371, 30.898991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892948, 26.471039, 30.603756>,  <29.732044, 26.452839, 30.426615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892948, 26.471039, 30.603756>,  <30.161121, 26.501371, 30.898991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892948, 26.471039, 30.603756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539214, -0.633526, 0.554881,
		-0.509675, 0.769996, 0.383845,
		-0.670432, -0.075834, -0.738085,
		29.691818, 26.448288, 30.382330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554907, 26.658060, 31.236769>,  <30.161121, 26.501371, 30.898991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554907, 26.658060, 31.236769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484983, 26.433815, 30.913002>,  <29.443029, 26.299269, 30.718742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484983, 26.433815, 30.913002>,  <29.554907, 26.658060, 31.236769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484983, 26.433815, 30.913002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552897, -0.624334, 0.551827,
		-0.814707, 0.543988, -0.200823,
		-0.174807, -0.560612, -0.809418,
		29.432541, 26.265631, 30.670177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871342, 26.597071, 31.140018>,  <29.554907, 26.658060, 31.236769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871342, 26.597071, 31.140018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017570, 26.277889, 30.948341>,  <29.105309, 26.086380, 30.833336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017570, 26.277889, 30.948341>,  <28.871342, 26.597071, 31.140018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017570, 26.277889, 30.948341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626254, -0.591735, 0.507597,
		-0.688595, 0.114534, -0.716044,
		0.365571, -0.797954, -0.479193,
		29.127243, 26.038504, 30.804585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320440, 26.012304, 31.115696>,  <28.871342, 26.597071, 31.140018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320440, 26.012304, 31.115696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.636864, 25.798248, 30.997135>,  <28.826717, 25.669815, 30.925999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.636864, 25.798248, 30.997135>,  <28.320440, 26.012304, 31.115696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636864, 25.798248, 30.997135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379212, -0.809163, 0.448835,
		-0.480027, -0.242656, -0.843026,
		0.791058, -0.535138, -0.296402,
		28.874182, 25.637707, 30.908215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006624, 25.424679, 30.837793>,  <28.320440, 26.012304, 31.115696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006624, 25.424679, 30.837793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383696, 25.311703, 30.908886>,  <28.609938, 25.243917, 30.951542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383696, 25.311703, 30.908886>,  <28.006624, 25.424679, 30.837793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383696, 25.311703, 30.908886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328089, -0.881744, 0.338946,
		0.060981, -0.377828, -0.923865,
		0.942676, -0.282440, 0.177731,
		28.666498, 25.226971, 30.962206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055698, 24.828352, 30.528635>,  <28.006624, 25.424679, 30.837793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055698, 24.828352, 30.528635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.356497, 24.839989, 30.792046>,  <28.536976, 24.846972, 30.950092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.356497, 24.839989, 30.792046>,  <28.055698, 24.828352, 30.528635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356497, 24.839989, 30.792046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247634, -0.913380, 0.323133,
		0.610885, -0.406068, -0.679653,
		0.751995, 0.029092, 0.658526,
		28.582096, 24.848717, 30.989603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432703, 24.251328, 30.394669>,  <28.055698, 24.828352, 30.528635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432703, 24.251328, 30.394669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538563, 24.338551, 30.770416>,  <28.602077, 24.390884, 30.995865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538563, 24.338551, 30.770416>,  <28.432703, 24.251328, 30.394669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538563, 24.338551, 30.770416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192078, -0.942663, 0.272934,
		0.945022, -0.252663, -0.207590,
		0.264648, 0.218056, 0.939368,
		28.617958, 24.403967, 31.052227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995699, 23.830162, 30.835960>,  <28.432703, 24.251328, 30.394669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995699, 23.830162, 30.835960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.741138, 23.983879, 31.103485>,  <28.588402, 24.076109, 31.264000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.741138, 23.983879, 31.103485>,  <28.995699, 23.830162, 30.835960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741138, 23.983879, 31.103485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481432, -0.875335, 0.044854,
		0.602674, -0.293443, 0.742075,
		-0.636403, 0.384291, 0.668814,
		28.550219, 24.099167, 31.304129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209419, 23.073101, 30.579737>,  <28.995699, 23.830162, 30.835960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209419, 23.073101, 30.579737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339918, 23.336689, 30.308643>,  <29.418217, 23.494841, 30.145987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339918, 23.336689, 30.308643>,  <29.209419, 23.073101, 30.579737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339918, 23.336689, 30.308643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871068, 0.488047, 0.055221,
		0.367155, 0.572337, 0.733230,
		0.326246, 0.658969, -0.677734,
		29.437792, 23.534380, 30.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758442, 22.621984, 30.828468>,  <29.209419, 23.073101, 30.579737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758442, 22.621984, 30.828468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772045, 22.379074, 30.510963>,  <29.780207, 22.233328, 30.320461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772045, 22.379074, 30.510963>,  <29.758442, 22.621984, 30.828468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772045, 22.379074, 30.510963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071884, 0.793650, -0.604113,
		0.996833, -0.036514, 0.070643,
		0.034007, -0.607278, -0.793761,
		29.782248, 22.196890, 30.272835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284288, 22.857771, 30.441181>,  <29.758442, 22.621984, 30.828468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284288, 22.857771, 30.441181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109083, 22.643898, 30.152111>,  <30.003960, 22.515574, 29.978668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109083, 22.643898, 30.152111>,  <30.284288, 22.857771, 30.441181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109083, 22.643898, 30.152111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195780, 0.727862, -0.657181,
		0.877391, -0.429339, -0.214133,
		-0.438012, -0.534683, -0.722675,
		29.977680, 22.483494, 29.935308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722265, 22.913960, 29.972048>,  <30.284288, 22.857771, 30.441181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722265, 22.913960, 29.972048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371719, 22.821453, 29.803051>,  <30.161392, 22.765949, 29.701653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371719, 22.821453, 29.803051>,  <30.722265, 22.913960, 29.972048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371719, 22.821453, 29.803051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084958, 0.789206, -0.608224,
		0.474093, -0.568920, -0.671986,
		-0.876366, -0.231264, -0.422492,
		30.108810, 22.752073, 29.676304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816036, 22.977554, 29.180197>,  <30.722265, 22.913960, 29.972048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816036, 22.977554, 29.180197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.420521, 22.979916, 29.239883>,  <30.183212, 22.981333, 29.275696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.420521, 22.979916, 29.239883>,  <30.816036, 22.977554, 29.180197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420521, 22.979916, 29.239883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100582, 0.712239, -0.694693,
		-0.110379, -0.701912, -0.703659,
		-0.988787, 0.005904, 0.149216,
		30.123884, 22.981686, 29.284649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564339, 22.907745, 28.581669>,  <30.816036, 22.977554, 29.180197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564339, 22.907745, 28.581669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272779, 23.070358, 28.802010>,  <30.097843, 23.167925, 28.934214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272779, 23.070358, 28.802010>,  <30.564339, 22.907745, 28.581669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272779, 23.070358, 28.802010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216752, 0.626188, -0.748938,
		-0.649404, -0.665298, -0.368311,
		-0.728899, 0.406531, 0.550853,
		30.054110, 23.192318, 28.967266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046656, 23.114473, 28.128233>,  <30.564339, 22.907745, 28.581669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046656, 23.114473, 28.128233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968731, 23.356083, 28.437347>,  <29.921976, 23.501049, 28.622816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968731, 23.356083, 28.437347>,  <30.046656, 23.114473, 28.128233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968731, 23.356083, 28.437347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210627, 0.743740, -0.634418,
		-0.957958, -0.286363, -0.017666,
		-0.194813, 0.604026, 0.772788,
		29.910288, 23.537291, 28.669184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576073, 23.526182, 27.826416>,  <30.046656, 23.114473, 28.128233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576073, 23.526182, 27.826416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692064, 23.722057, 28.155323>,  <29.761660, 23.839582, 28.352667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692064, 23.722057, 28.155323>,  <29.576073, 23.526182, 27.826416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692064, 23.722057, 28.155323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003717, 0.859752, -0.510699,
		-0.957026, 0.145034, 0.251128,
		0.289977, 0.489686, 0.822266,
		29.779057, 23.868963, 28.402002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981167, 24.048330, 27.886080>,  <29.576073, 23.526182, 27.826416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981167, 24.048330, 27.886080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.320820, 24.142590, 28.075161>,  <29.524611, 24.199144, 28.188610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.320820, 24.142590, 28.075161>,  <28.981167, 24.048330, 27.886080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320820, 24.142590, 28.075161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009665, 0.901741, -0.432169,
		-0.528095, 0.362399, 0.767974,
		0.849131, 0.235648, 0.472702,
		29.575560, 24.213284, 28.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956522, 24.780993, 28.072386>,  <28.981167, 24.048330, 27.886080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956522, 24.780993, 28.072386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.349142, 24.708504, 28.096771>,  <29.584715, 24.665010, 28.111403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.349142, 24.708504, 28.096771>,  <28.956522, 24.780993, 28.072386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349142, 24.708504, 28.096771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189076, 0.872558, -0.450437,
		0.028437, 0.453653, 0.890725,
		0.981551, -0.181223, 0.060962,
		29.643608, 24.654137, 28.115059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205996, 25.397436, 28.177103>,  <28.956522, 24.780993, 28.072386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205996, 25.397436, 28.177103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519350, 25.181671, 28.053596>,  <29.707363, 25.052212, 27.979492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519350, 25.181671, 28.053596>,  <29.205996, 25.397436, 28.177103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519350, 25.181671, 28.053596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362760, 0.800204, -0.477577,
		0.504688, 0.262119, 0.822547,
		0.783387, -0.539414, -0.308767,
		29.754366, 25.019848, 27.960966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826248, 25.762150, 28.290424>,  <29.205996, 25.397436, 28.177103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826248, 25.762150, 28.290424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901165, 25.516216, 27.983986>,  <29.946115, 25.368656, 27.800123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901165, 25.516216, 27.983986>,  <29.826248, 25.762150, 28.290424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901165, 25.516216, 27.983986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437245, 0.750554, -0.495465,
		0.879625, -0.242175, 0.409404,
		0.187291, -0.614833, -0.766096,
		29.957352, 25.331766, 27.754158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326546, 26.186445, 27.876318>,  <29.826248, 25.762150, 28.290424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326546, 26.186445, 27.876318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243498, 25.872276, 27.643078>,  <30.193670, 25.683775, 27.503134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243498, 25.872276, 27.643078>,  <30.326546, 26.186445, 27.876318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243498, 25.872276, 27.643078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233740, 0.538990, -0.809232,
		0.949874, -0.304305, 0.071681,
		-0.207617, -0.785423, -0.583101,
		30.181213, 25.636650, 27.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868267, 26.147587, 27.471298>,  <30.326546, 26.186445, 27.876318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868267, 26.147587, 27.471298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597769, 25.925236, 27.277931>,  <30.435471, 25.791824, 27.161911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597769, 25.925236, 27.277931>,  <30.868267, 26.147587, 27.471298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597769, 25.925236, 27.277931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149578, 0.538936, -0.828960,
		0.721333, -0.632888, -0.281304,
		-0.676243, -0.555879, -0.483418,
		30.394896, 25.758472, 27.132906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233320, 25.812023, 26.917992>,  <30.868267, 26.147587, 27.471298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233320, 25.812023, 26.917992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845242, 25.859974, 26.833759>,  <30.612394, 25.888744, 26.783220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845242, 25.859974, 26.833759>,  <31.233320, 25.812023, 26.917992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845242, 25.859974, 26.833759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232771, 0.702556, -0.672482,
		0.067329, -0.701458, -0.709523,
		-0.970198, 0.119879, -0.210582,
		30.554182, 25.895937, 26.770584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847963, 25.541121, 26.810911>,  <31.233320, 25.812023, 26.917992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847963, 25.541121, 26.810911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213737, 25.659626, 26.921211>,  <32.433201, 25.730730, 26.987391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213737, 25.659626, 26.921211>,  <31.847963, 25.541121, 26.810911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213737, 25.659626, 26.921211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068447, -0.784696, 0.616091,
		0.398905, -0.544500, -0.737831,
		0.914434, 0.296264, 0.275750,
		32.488068, 25.748505, 27.003937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247669, 24.992342, 26.791702>,  <31.847963, 25.541121, 26.810911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247669, 24.992342, 26.791702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452606, 25.238323, 27.031483>,  <32.575569, 25.385912, 27.175352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452606, 25.238323, 27.031483>,  <32.247669, 24.992342, 26.791702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452606, 25.238323, 27.031483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029296, -0.710134, 0.703457,
		0.858283, -0.342847, -0.381845,
		0.512339, 0.614952, 0.599452,
		32.606308, 25.422810, 27.211319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885502, 24.599758, 27.076914>,  <32.247669, 24.992342, 26.791702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885502, 24.599758, 27.076914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836201, 24.899670, 27.336956>,  <32.806622, 25.079617, 27.492981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836201, 24.899670, 27.336956>,  <32.885502, 24.599758, 27.076914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836201, 24.899670, 27.336956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107420, -0.641172, 0.759842,
		0.986544, 0.163486, -0.001515,
		-0.123252, 0.749781, 0.650106,
		32.799225, 25.124603, 27.531988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465759, 24.714485, 27.516380>,  <32.885502, 24.599758, 27.076914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465759, 24.714485, 27.516380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148212, 24.844955, 27.721664>,  <32.957684, 24.923239, 27.844835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148212, 24.844955, 27.721664>,  <33.465759, 24.714485, 27.516380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148212, 24.844955, 27.721664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281459, -0.551028, 0.785588,
		0.539034, 0.768100, 0.345636,
		-0.793866, 0.326176, 0.513212,
		32.910053, 24.942808, 27.875628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794979, 24.701710, 28.319723>,  <33.465759, 24.714485, 27.516380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794979, 24.701710, 28.319723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398029, 24.747799, 28.302238>,  <33.159859, 24.775452, 28.291748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398029, 24.747799, 28.302238>,  <33.794979, 24.701710, 28.319723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398029, 24.747799, 28.302238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100840, -0.555354, 0.825478,
		0.070839, 0.823593, 0.562740,
		-0.992378, 0.115222, -0.043710,
		33.100315, 24.782366, 28.289125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544262, 24.829060, 29.065598>,  <33.794979, 24.701710, 28.319723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544262, 24.829060, 29.065598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220875, 24.698895, 28.869438>,  <33.026844, 24.620796, 28.751743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220875, 24.698895, 28.869438>,  <33.544262, 24.829060, 29.065598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220875, 24.698895, 28.869438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148653, -0.693318, 0.705133,
		-0.569460, 0.642975, 0.512151,
		-0.808466, -0.325412, -0.490397,
		32.978336, 24.601271, 28.722319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027622, 24.702375, 29.618149>,  <33.544262, 24.829060, 29.065598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027622, 24.702375, 29.618149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908699, 24.504360, 29.291580>,  <32.837345, 24.385551, 29.095640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908699, 24.504360, 29.291580>,  <33.027622, 24.702375, 29.618149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908699, 24.504360, 29.291580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303520, -0.761726, 0.572406,
		-0.905253, 0.417982, 0.076215,
		-0.297310, -0.495039, -0.816421,
		32.819508, 24.355848, 29.046654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743992, 25.215166, 30.127760>,  <33.027622, 24.702375, 29.618149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743992, 25.215166, 30.127760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990795, 25.140926, 30.433662>,  <33.138878, 25.096382, 30.617205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990795, 25.140926, 30.433662>,  <32.743992, 25.215166, 30.127760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990795, 25.140926, 30.433662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673912, 0.626443, -0.391679,
		-0.406381, 0.757048, 0.511598,
		0.617006, -0.185601, 0.764758,
		33.175896, 25.085247, 30.663090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776287, 25.811768, 30.541937>,  <32.743992, 25.215166, 30.127760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776287, 25.811768, 30.541937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112553, 25.600349, 30.589149>,  <33.314312, 25.473499, 30.617477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112553, 25.600349, 30.589149>,  <32.776287, 25.811768, 30.541937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112553, 25.600349, 30.589149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523163, 0.736249, -0.429230,
		0.139968, 0.422585, 0.895450,
		0.840660, -0.528545, 0.118029,
		33.364750, 25.441786, 30.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263985, 26.327059, 30.760349>,  <32.776287, 25.811768, 30.541937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263985, 26.327059, 30.760349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493950, 26.016006, 30.658554>,  <33.631927, 25.829374, 30.597477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493950, 26.016006, 30.658554>,  <33.263985, 26.327059, 30.760349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493950, 26.016006, 30.658554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616858, 0.616272, -0.489587,
		0.537553, 0.124485, 0.833991,
		0.574911, -0.777632, -0.254489,
		33.666424, 25.782717, 30.582207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811527, 26.635431, 30.669876>,  <33.263985, 26.327059, 30.760349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811527, 26.635431, 30.669876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907372, 26.285965, 30.500504>,  <33.964878, 26.076284, 30.398880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907372, 26.285965, 30.500504>,  <33.811527, 26.635431, 30.669876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907372, 26.285965, 30.500504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736685, 0.447680, -0.506830,
		0.632363, -0.190495, 0.750886,
		0.239608, -0.873667, -0.423431,
		33.979256, 26.023865, 30.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443779, 26.572504, 30.838091>,  <33.811527, 26.635431, 30.669876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443779, 26.572504, 30.838091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383774, 26.335091, 30.521809>,  <34.347771, 26.192642, 30.332039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383774, 26.335091, 30.521809>,  <34.443779, 26.572504, 30.838091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383774, 26.335091, 30.521809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643411, 0.548624, -0.533887,
		0.750679, -0.588837, 0.299586,
		-0.150012, -0.593535, -0.790704,
		34.338772, 26.157030, 30.284597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102856, 26.572588, 30.600348>,  <34.443779, 26.572504, 30.838091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102856, 26.572588, 30.600348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857506, 26.489506, 30.295551>,  <34.710297, 26.439657, 30.112673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857506, 26.489506, 30.295551>,  <35.102856, 26.572588, 30.600348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857506, 26.489506, 30.295551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517535, 0.623092, -0.586441,
		0.596596, -0.754066, -0.274697,
		-0.613377, -0.207703, -0.761990,
		34.673492, 26.427195, 30.066954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548626, 26.371588, 29.963223>,  <35.102856, 26.572588, 30.600348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548626, 26.371588, 29.963223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200432, 26.491798, 29.807304>,  <34.991516, 26.563925, 29.713755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200432, 26.491798, 29.807304>,  <35.548626, 26.371588, 29.963223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200432, 26.491798, 29.807304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488279, 0.626978, -0.607027,
		0.061964, -0.718736, -0.692516,
		-0.870485, 0.300528, -0.389794,
		34.939285, 26.581957, 29.690367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.685387, 25.780153, 33.992882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.767097, 25.742367, 33.603146>,  <28.816124, 25.719694, 33.369305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.767097, 25.742367, 33.603146>,  <28.685387, 25.780153, 33.992882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767097, 25.742367, 33.603146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150262, 0.986563, -0.064148,
		0.967311, -0.133303, 0.215729,
		0.204279, -0.094467, -0.974344,
		28.828381, 25.714027, 33.310841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411310, 26.064342, 33.819115>,  <28.685387, 25.780153, 33.992882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411310, 26.064342, 33.819115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240141, 26.062916, 33.457592>,  <29.137440, 26.062059, 33.240677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.240141, 26.062916, 33.457592>,  <29.411310, 26.064342, 33.819115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240141, 26.062916, 33.457592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393782, 0.899354, -0.189995,
		0.813521, -0.437207, -0.383451,
		-0.427925, -0.003569, -0.903807,
		29.111763, 26.061846, 33.186451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902428, 26.348091, 33.355476>,  <29.411310, 26.064342, 33.819115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902428, 26.348091, 33.355476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557173, 26.398354, 33.159843>,  <29.350019, 26.428511, 33.042465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557173, 26.398354, 33.159843>,  <29.902428, 26.348091, 33.355476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557173, 26.398354, 33.159843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364988, 0.824570, -0.432283,
		0.348961, -0.551629, -0.757583,
		-0.863140, 0.125659, -0.489081,
		29.298231, 26.436050, 33.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100809, 26.489199, 32.589767>,  <29.902428, 26.348091, 33.355476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100809, 26.489199, 32.589767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.737856, 26.635056, 32.673378>,  <29.520084, 26.722569, 32.723545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.737856, 26.635056, 32.673378>,  <30.100809, 26.489199, 32.589767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737856, 26.635056, 32.673378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277717, 0.893446, -0.353027,
		-0.315480, -0.262281, -0.911965,
		-0.907384, 0.364641, 0.209024,
		29.465641, 26.744448, 32.736084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909163, 27.001228, 31.939247>,  <30.100809, 26.489199, 32.589767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909163, 27.001228, 31.939247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645840, 27.061924, 32.234165>,  <29.487846, 27.098341, 32.411118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645840, 27.061924, 32.234165>,  <29.909163, 27.001228, 31.939247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645840, 27.061924, 32.234165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041101, 0.970765, -0.236485,
		-0.751627, -0.185984, -0.632825,
		-0.658307, 0.151739, 0.737297,
		29.448347, 27.107445, 32.455353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251553, 27.282900, 31.709871>,  <29.909163, 27.001228, 31.939247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251553, 27.282900, 31.709871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.294409, 27.401218, 32.089561>,  <29.320124, 27.472210, 32.317375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.294409, 27.401218, 32.089561>,  <29.251553, 27.282900, 31.709871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294409, 27.401218, 32.089561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144731, 0.949189, -0.279450,
		-0.983653, -0.107441, 0.144509,
		0.107142, 0.295797, 0.949223,
		29.326551, 27.489958, 32.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999117, 27.939465, 31.722681>,  <29.251553, 27.282900, 31.709871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999117, 27.939465, 31.722681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189644, 27.943855, 32.074364>,  <29.303959, 27.946489, 32.285374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189644, 27.943855, 32.074364>,  <28.999117, 27.939465, 31.722681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189644, 27.943855, 32.074364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136806, 0.986820, -0.086435,
		-0.868566, 0.161451, 0.468537,
		0.476316, 0.010976, 0.879206,
		29.332539, 27.947147, 32.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670015, 28.442837, 32.207184>,  <28.999117, 27.939465, 31.722681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670015, 28.442837, 32.207184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040796, 28.379169, 32.343079>,  <29.263266, 28.340969, 32.424618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040796, 28.379169, 32.343079>,  <28.670015, 28.442837, 32.207184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040796, 28.379169, 32.343079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230174, 0.956367, -0.179950,
		-0.296274, 0.245004, 0.923144,
		0.926953, -0.159170, 0.339740,
		29.318882, 28.331419, 32.445000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834709, 29.032356, 32.755749>,  <28.670015, 28.442837, 32.207184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834709, 29.032356, 32.755749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.184774, 28.893669, 32.620766>,  <29.394814, 28.810457, 32.539776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.184774, 28.893669, 32.620766>,  <28.834709, 29.032356, 32.755749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184774, 28.893669, 32.620766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352760, 0.934612, -0.045405,
		0.331131, -0.079303, 0.940247,
		0.875165, -0.346716, -0.337454,
		29.447323, 28.789654, 32.519531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398458, 29.386282, 33.146820>,  <28.834709, 29.032356, 32.755749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398458, 29.386282, 33.146820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582680, 29.249401, 32.819214>,  <29.693213, 29.167273, 32.622650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582680, 29.249401, 32.819214>,  <29.398458, 29.386282, 33.146820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582680, 29.249401, 32.819214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391194, 0.906508, -0.158779,
		0.796780, -0.247267, 0.551363,
		0.460554, -0.342202, -0.819016,
		29.720846, 29.146740, 32.573509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089264, 29.566248, 33.244263>,  <29.398458, 29.386282, 33.146820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089264, 29.566248, 33.244263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.054207, 29.521774, 32.848293>,  <30.033173, 29.495090, 32.610710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.054207, 29.521774, 32.848293>,  <30.089264, 29.566248, 33.244263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054207, 29.521774, 32.848293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448646, 0.882853, -0.138877,
		0.889401, -0.456299, -0.027497,
		-0.087645, -0.111181, -0.989928,
		30.027914, 29.488420, 32.551315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730206, 29.838535, 32.907543>,  <30.089264, 29.566248, 33.244263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730206, 29.838535, 32.907543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443830, 29.853897, 32.628700>,  <30.272005, 29.863115, 32.461395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443830, 29.853897, 32.628700>,  <30.730206, 29.838535, 32.907543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443830, 29.853897, 32.628700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272497, 0.934663, -0.228363,
		0.642791, -0.353453, -0.679625,
		-0.715937, 0.038406, -0.697108,
		30.229050, 29.865419, 32.419567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242771, 29.451674, 32.723209>,  <30.730206, 29.838535, 32.907543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242771, 29.451674, 32.723209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608589, 29.423298, 32.882496>,  <31.828079, 29.406273, 32.978065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608589, 29.423298, 32.882496>,  <31.242771, 29.451674, 32.723209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608589, 29.423298, 32.882496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233118, -0.896991, 0.375585,
		0.330550, -0.436320, -0.836876,
		0.914545, -0.070941, 0.398214,
		31.882954, 29.402016, 33.001961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457514, 28.747103, 32.713306>,  <31.242771, 29.451674, 32.723209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457514, 28.747103, 32.713306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674574, 28.901287, 33.011822>,  <31.804810, 28.993797, 33.190933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.674574, 28.901287, 33.011822>,  <31.457514, 28.747103, 32.713306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674574, 28.901287, 33.011822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133858, -0.837445, 0.529875,
		0.829225, -0.387434, -0.402842,
		0.542649, 0.385462, 0.746291,
		31.837368, 29.016926, 33.235710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934683, 28.243938, 32.914986>,  <31.457514, 28.747103, 32.713306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934683, 28.243938, 32.914986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.947824, 28.484173, 33.234539>,  <31.955709, 28.628313, 33.426270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.947824, 28.484173, 33.234539>,  <31.934683, 28.243938, 32.914986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947824, 28.484173, 33.234539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096298, -0.797500, 0.595585,
		0.994810, 0.057363, -0.084037,
		0.032855, 0.600586, 0.798885,
		31.957682, 28.664349, 33.474205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424686, 27.960316, 33.308319>,  <31.934683, 28.243938, 32.914986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424686, 27.960316, 33.308319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.176964, 28.172077, 33.540245>,  <32.028328, 28.299135, 33.679401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.176964, 28.172077, 33.540245>,  <32.424686, 27.960316, 33.308319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176964, 28.172077, 33.540245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003847, -0.740517, 0.672027,
		0.785138, 0.413962, 0.460645,
		-0.619309, 0.529406, 0.579815,
		31.991171, 28.330898, 33.714191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796894, 27.890629, 33.925289>,  <32.424686, 27.960316, 33.308319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796894, 27.890629, 33.925289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417332, 27.986427, 34.007484>,  <32.189594, 28.043907, 34.056801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417332, 27.986427, 34.007484>,  <32.796894, 27.890629, 33.925289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417332, 27.986427, 34.007484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017439, -0.689971, 0.723627,
		0.315087, 0.683068, 0.658892,
		-0.948903, 0.239496, 0.205489,
		32.132660, 28.058275, 34.069130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711884, 27.966513, 34.670513>,  <32.796894, 27.890629, 33.925289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711884, 27.966513, 34.670513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344234, 27.882504, 34.537189>,  <32.123646, 27.832098, 34.457195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344234, 27.882504, 34.537189>,  <32.711884, 27.966513, 34.670513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344234, 27.882504, 34.537189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010239, -0.833025, 0.553141,
		-0.393828, 0.511820, 0.763505,
		-0.919127, -0.210025, -0.333309,
		32.068497, 27.819496, 34.437195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549950, 27.478313, 35.099628>,  <32.711884, 27.966513, 34.670513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549950, 27.478313, 35.099628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251072, 27.450279, 34.835270>,  <32.071743, 27.433458, 34.676655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251072, 27.450279, 34.835270>,  <32.549950, 27.478313, 35.099628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251072, 27.450279, 34.835270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290871, -0.859640, 0.420016,
		-0.597569, 0.506070, 0.621936,
		-0.747199, -0.070085, -0.660895,
		32.026913, 27.429255, 34.637001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969482, 27.157242, 35.494156>,  <32.549950, 27.478313, 35.099628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969482, 27.157242, 35.494156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.899553, 27.101471, 35.104286>,  <31.857595, 27.068008, 34.870365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.899553, 27.101471, 35.104286>,  <31.969482, 27.157242, 35.494156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899553, 27.101471, 35.104286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183255, -0.968018, 0.171343,
		-0.967395, 0.208570, 0.143682,
		-0.174824, -0.139426, -0.974678,
		31.847107, 27.059643, 34.811882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238750, 26.937857, 35.388813>,  <31.969482, 27.157242, 35.494156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238750, 26.937857, 35.388813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458666, 26.801338, 35.083855>,  <31.590614, 26.719427, 34.900879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458666, 26.801338, 35.083855>,  <31.238750, 26.937857, 35.388813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458666, 26.801338, 35.083855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193668, -0.939931, 0.281109,
		-0.812544, -0.006898, -0.582860,
		0.549787, -0.341294, -0.762399,
		31.623602, 26.698950, 34.855133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987741, 26.332129, 35.270443>,  <31.238750, 26.937857, 35.388813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987741, 26.332129, 35.270443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319315, 26.304386, 35.048431>,  <31.518259, 26.287741, 34.915222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319315, 26.304386, 35.048431>,  <30.987741, 26.332129, 35.270443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319315, 26.304386, 35.048431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102845, -0.994264, -0.029356,
		-0.549813, 0.081416, -0.831310,
		0.828932, -0.069356, -0.555033,
		31.567995, 26.283579, 34.881920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842882, 25.885948, 34.697876>,  <30.987741, 26.332129, 35.270443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842882, 25.885948, 34.697876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.240192, 25.872200, 34.742096>,  <31.478579, 25.863951, 34.768627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.240192, 25.872200, 34.742096>,  <30.842882, 25.885948, 34.697876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240192, 25.872200, 34.742096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017318, -0.988281, -0.151662,
		0.114467, 0.148727, -0.982231,
		0.993276, -0.034370, 0.110550,
		31.538176, 25.861889, 34.775261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112923, 25.492891, 34.088676>,  <30.842882, 25.885948, 34.697876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112923, 25.492891, 34.088676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.372225, 25.448578, 34.390007>,  <31.527805, 25.421989, 34.570805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.372225, 25.448578, 34.390007>,  <31.112923, 25.492891, 34.088676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372225, 25.448578, 34.390007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048068, -0.993340, -0.104714,
		0.759905, 0.031670, -0.649262,
		0.648254, -0.110781, 0.753322,
		31.566702, 25.415344, 34.616005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646996, 24.928761, 33.879753>,  <31.112923, 25.492891, 34.088676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646996, 24.928761, 33.879753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643967, 24.948090, 34.279274>,  <31.642149, 24.959686, 34.518986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643967, 24.948090, 34.279274>,  <31.646996, 24.928761, 33.879753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643967, 24.948090, 34.279274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052556, -0.997470, 0.047857,
		0.998589, -0.052131, 0.010096,
		-0.007576, 0.048321, 0.998803,
		31.641695, 24.962585, 34.578915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949858, 24.368980, 33.964325>,  <31.646996, 24.928761, 33.879753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949858, 24.368980, 33.964325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754293, 24.441437, 34.305653>,  <31.636955, 24.484911, 34.510448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754293, 24.441437, 34.305653>,  <31.949858, 24.368980, 33.964325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754293, 24.441437, 34.305653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207638, -0.974253, 0.087847,
		0.847263, -0.134232, 0.513933,
		-0.488909, 0.181142, 0.853321,
		31.607620, 24.495779, 34.561649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364826, 24.185265, 33.444458>,  <31.949858, 24.368980, 33.964325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364826, 24.185265, 33.444458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282833, 23.893051, 33.183907>,  <32.233639, 23.717722, 33.027576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282833, 23.893051, 33.183907>,  <32.364826, 24.185265, 33.444458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282833, 23.893051, 33.183907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253755, 0.603092, -0.756232,
		0.945299, -0.320307, 0.061753,
		-0.204984, -0.730536, -0.651382,
		32.221336, 23.673891, 32.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887016, 24.170860, 33.020863>,  <32.364826, 24.185265, 33.444458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887016, 24.170860, 33.020863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590607, 23.999298, 32.814201>,  <32.412762, 23.896360, 32.690205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590607, 23.999298, 32.814201>,  <32.887016, 24.170860, 33.020863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590607, 23.999298, 32.814201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371369, 0.379257, -0.847496,
		0.559441, -0.819879, -0.121754,
		-0.741021, -0.428908, -0.516649,
		32.368301, 23.870626, 32.659206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173092, 24.002941, 32.506920>,  <32.887016, 24.170860, 33.020863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173092, 24.002941, 32.506920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798466, 23.961308, 32.373051>,  <32.573689, 23.936327, 32.292728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798466, 23.961308, 32.373051>,  <33.173092, 24.002941, 32.506920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798466, 23.961308, 32.373051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270510, 0.392482, -0.879081,
		0.222850, -0.913852, -0.339431,
		-0.936570, -0.104084, -0.334670,
		32.517494, 23.930082, 32.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260460, 23.604797, 31.985008>,  <33.173092, 24.002941, 32.506920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260460, 23.604797, 31.985008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936790, 23.837566, 31.952488>,  <32.742588, 23.977228, 31.932976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936790, 23.837566, 31.952488>,  <33.260460, 23.604797, 31.985008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936790, 23.837566, 31.952488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342585, 0.354833, -0.869902,
		-0.477366, -0.731752, -0.486478,
		-0.809171, 0.581921, -0.081302,
		32.694038, 24.012142, 31.928097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145103, 23.566263, 31.257570>,  <33.260460, 23.604797, 31.985008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145103, 23.566263, 31.257570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928616, 23.876640, 31.387184>,  <32.798721, 24.062866, 31.464952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928616, 23.876640, 31.387184>,  <33.145103, 23.566263, 31.257570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928616, 23.876640, 31.387184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223275, 0.504127, -0.834269,
		-0.810698, -0.379173, -0.446091,
		-0.541219, 0.775941, 0.324035,
		32.766251, 24.109423, 31.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771313, 23.834269, 30.636082>,  <33.145103, 23.566263, 31.257570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771313, 23.834269, 30.636082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780930, 24.120823, 30.914997>,  <32.786701, 24.292755, 31.082346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780930, 24.120823, 30.914997>,  <32.771313, 23.834269, 30.636082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780930, 24.120823, 30.914997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335030, 0.651383, -0.680776,
		-0.941901, 0.249981, -0.224350,
		0.024043, 0.716387, 0.697289,
		32.788143, 24.335739, 31.124184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663708, 24.405190, 30.298697>,  <32.771313, 23.834269, 30.636082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663708, 24.405190, 30.298697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850357, 24.542160, 30.624889>,  <32.962345, 24.624342, 30.820604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850357, 24.542160, 30.624889>,  <32.663708, 24.405190, 30.298697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850357, 24.542160, 30.624889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485676, 0.671363, -0.559813,
		-0.739178, 0.657280, 0.146965,
		0.466621, 0.342424, 0.815482,
		32.990345, 24.644888, 30.869534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138962, 24.402285, 29.788546>,  <32.663708, 24.405190, 30.298697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138962, 24.402285, 29.788546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319042, 24.204834, 29.490913>,  <32.427090, 24.086365, 29.312334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319042, 24.204834, 29.490913>,  <32.138962, 24.402285, 29.788546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319042, 24.204834, 29.490913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159461, -0.864353, 0.476934,
		-0.878575, -0.096062, -0.467843,
		0.450197, -0.493626, -0.744081,
		32.454102, 24.056747, 29.267691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770681, 23.742897, 29.705906>,  <32.138962, 24.402285, 29.788546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770681, 23.742897, 29.705906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084156, 23.658497, 29.472218>,  <32.272240, 23.607857, 29.332005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084156, 23.658497, 29.472218>,  <31.770681, 23.742897, 29.705906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084156, 23.658497, 29.472218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080131, -0.898338, 0.431935,
		-0.615966, -0.385316, -0.687108,
		0.783687, -0.210998, -0.584221,
		32.319263, 23.595198, 29.296951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616951, 23.138197, 29.275465>,  <31.770681, 23.742897, 29.705906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616951, 23.138197, 29.275465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014328, 23.178448, 29.297176>,  <32.252754, 23.202599, 29.310204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014328, 23.178448, 29.297176>,  <31.616951, 23.138197, 29.275465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014328, 23.178448, 29.297176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079292, -0.948400, 0.307000,
		0.082369, -0.300684, -0.950161,
		0.993443, 0.100628, 0.054277,
		32.312363, 23.208635, 29.313459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881256, 22.595219, 28.872055>,  <31.616951, 23.138197, 29.275465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881256, 22.595219, 28.872055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186443, 22.695877, 29.110233>,  <32.369556, 22.756273, 29.253139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186443, 22.695877, 29.110233>,  <31.881256, 22.595219, 28.872055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186443, 22.695877, 29.110233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126267, -0.961390, 0.244512,
		0.633985, -0.111370, -0.765284,
		0.762968, 0.251647, 0.595445,
		32.415333, 22.771372, 29.288866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439426, 22.101948, 28.831118>,  <31.881256, 22.595219, 28.872055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439426, 22.101948, 28.831118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.562080, 22.287010, 29.163845>,  <32.635674, 22.398048, 29.363482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.562080, 22.287010, 29.163845>,  <32.439426, 22.101948, 28.831118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562080, 22.287010, 29.163845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146643, -0.886447, 0.438985,
		0.940464, -0.012626, -0.339658,
		0.306631, 0.462658, 0.831820,
		32.654068, 22.425808, 29.413391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972813, 21.687950, 28.960766>,  <32.439426, 22.101948, 28.831118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972813, 21.687950, 28.960766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924488, 21.889137, 29.303093>,  <32.895493, 22.009850, 29.508490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924488, 21.889137, 29.303093>,  <32.972813, 21.687950, 28.960766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924488, 21.889137, 29.303093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353611, -0.783774, 0.510546,
		0.927558, 0.364308, -0.083164,
		-0.120815, 0.502968, 0.855819,
		32.888245, 22.040028, 29.559839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537315, 21.656012, 29.308886>,  <32.972813, 21.687950, 28.960766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537315, 21.656012, 29.308886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265011, 21.724174, 29.593849>,  <33.101627, 21.765072, 29.764828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265011, 21.724174, 29.593849>,  <33.537315, 21.656012, 29.308886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265011, 21.724174, 29.593849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239254, -0.867496, 0.436128,
		0.692333, 0.467345, 0.549785,
		-0.680758, 0.170408, 0.712411,
		33.060783, 21.775297, 29.807573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864574, 21.485064, 29.962433>,  <33.537315, 21.656012, 29.308886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864574, 21.485064, 29.962433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.464981, 21.479252, 29.979473>,  <33.225224, 21.475765, 29.989697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.464981, 21.479252, 29.979473>,  <33.864574, 21.485064, 29.962433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464981, 21.479252, 29.979473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029488, -0.926306, 0.375616,
		0.034004, 0.376492, 0.925796,
		-0.998987, -0.014527, 0.042600,
		33.165283, 21.474894, 29.992252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701397, 21.296892, 30.604847>,  <33.864574, 21.485064, 29.962433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701397, 21.296892, 30.604847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385532, 21.193871, 30.382103>,  <33.196014, 21.132057, 30.248457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385532, 21.193871, 30.382103>,  <33.701397, 21.296892, 30.604847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385532, 21.193871, 30.382103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127721, -0.956746, 0.261389,
		-0.600098, 0.135286, 0.788403,
		-0.789664, -0.257555, -0.556862,
		33.148632, 21.116604, 30.215044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.558861, 34.612755, 21.931110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172550, 34.543884, 22.008705>,  <32.940765, 34.502563, 22.055262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172550, 34.543884, 22.008705>,  <33.558861, 34.612755, 21.931110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172550, 34.543884, 22.008705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256504, -0.744981, 0.615799,
		0.038489, 0.644483, 0.763649,
		-0.965776, -0.172178, 0.193987,
		32.882816, 34.492229, 22.066900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506908, 34.511528, 22.640928>,  <33.558861, 34.612755, 21.931110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506908, 34.511528, 22.640928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208828, 34.303017, 22.474583>,  <33.029980, 34.177910, 22.374775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208828, 34.303017, 22.474583>,  <33.506908, 34.511528, 22.640928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208828, 34.303017, 22.474583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283931, -0.812315, 0.509438,
		-0.603370, 0.261559, 0.753347,
		-0.745203, -0.521278, -0.415862,
		32.985268, 34.146633, 22.349825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190273, 34.252098, 23.201471>,  <33.506908, 34.511528, 22.640928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190273, 34.252098, 23.201471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074341, 34.034641, 22.886398>,  <33.004780, 33.904167, 22.697353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074341, 34.034641, 22.886398>,  <33.190273, 34.252098, 23.201471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074341, 34.034641, 22.886398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074980, -0.833378, 0.547594,
		-0.954135, 0.099651, 0.282305,
		-0.289835, -0.543646, -0.787683,
		32.987389, 33.871548, 22.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635696, 33.824734, 23.541389>,  <33.190273, 34.252098, 23.201471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635696, 33.824734, 23.541389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742188, 33.649410, 23.197994>,  <32.806084, 33.544216, 22.991957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742188, 33.649410, 23.197994>,  <32.635696, 33.824734, 23.541389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742188, 33.649410, 23.197994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121790, -0.868200, 0.481036,
		-0.956184, -0.232623, -0.177760,
		0.266231, -0.438309, -0.858490,
		32.822056, 33.517918, 22.940447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237213, 33.176239, 23.490664>,  <32.635696, 33.824734, 23.541389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237213, 33.176239, 23.490664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549534, 33.127209, 23.245609>,  <32.736927, 33.097790, 23.098577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549534, 33.127209, 23.245609>,  <32.237213, 33.176239, 23.490664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549534, 33.127209, 23.245609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165170, -0.905182, 0.391617,
		-0.602549, -0.406965, -0.686524,
		0.780804, -0.122575, -0.612635,
		32.783775, 33.090435, 23.061819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077461, 32.528713, 23.082476>,  <32.237213, 33.176239, 23.490664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077461, 32.528713, 23.082476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471180, 32.594139, 23.055916>,  <32.707413, 32.633396, 23.039980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471180, 32.594139, 23.055916>,  <32.077461, 32.528713, 23.082476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471180, 32.594139, 23.055916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176298, -0.930082, 0.322284,
		-0.009044, -0.328929, -0.944311,
		0.984295, 0.163566, -0.066401,
		32.766468, 32.643208, 23.035995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369888, 32.041092, 22.639935>,  <32.077461, 32.528713, 23.082476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369888, 32.041092, 22.639935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682861, 32.166203, 22.855331>,  <32.870644, 32.241268, 22.984570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682861, 32.166203, 22.855331>,  <32.369888, 32.041092, 22.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682861, 32.166203, 22.855331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148787, -0.933568, 0.326057,
		0.604701, -0.174996, -0.776989,
		0.782431, 0.312773, 0.538493,
		32.917591, 32.260033, 23.016880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812035, 31.532682, 22.538496>,  <32.369888, 32.041092, 22.639935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812035, 31.532682, 22.538496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948193, 31.710083, 22.870144>,  <33.029888, 31.816523, 23.069132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948193, 31.710083, 22.870144>,  <32.812035, 31.532682, 22.538496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948193, 31.710083, 22.870144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171809, -0.896268, 0.408884,
		0.924454, 0.003269, -0.381280,
		0.340393, 0.443501, 0.829120,
		33.050312, 31.843134, 23.118879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388229, 31.202745, 22.715588>,  <32.812035, 31.532682, 22.538496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388229, 31.202745, 22.715588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297913, 31.386265, 23.059338>,  <33.243725, 31.496376, 23.265587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297913, 31.386265, 23.059338>,  <33.388229, 31.202745, 22.715588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297913, 31.386265, 23.059338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243600, -0.827538, 0.505806,
		0.943228, 0.323549, 0.075085,
		-0.225789, 0.458799, 0.859373,
		33.230175, 31.523905, 23.317150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954437, 31.160381, 23.125860>,  <33.388229, 31.202745, 22.715588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954437, 31.160381, 23.125860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648811, 31.228397, 23.374794>,  <33.465435, 31.269207, 23.524155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648811, 31.228397, 23.374794>,  <33.954437, 31.160381, 23.125860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648811, 31.228397, 23.374794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123938, -0.907986, 0.400250,
		0.633128, 0.382945, 0.672682,
		-0.764060, 0.170039, 0.622333,
		33.419594, 31.279409, 23.561495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183144, 30.985405, 23.779787>,  <33.954437, 31.160381, 23.125860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183144, 30.985405, 23.779787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783325, 30.973438, 23.781479>,  <33.543434, 30.966259, 23.782494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783325, 30.973438, 23.781479>,  <34.183144, 30.985405, 23.779787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783325, 30.973438, 23.781479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027898, -0.860107, 0.509350,
		-0.011600, 0.509236, 0.860549,
		-0.999543, -0.029916, 0.004229,
		33.483463, 30.964464, 23.782747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005909, 30.789425, 24.436321>,  <34.183144, 30.985405, 23.779787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005909, 30.789425, 24.436321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675365, 30.687721, 24.235332>,  <33.477039, 30.626699, 24.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675365, 30.687721, 24.235332>,  <34.005909, 30.789425, 24.436321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675365, 30.687721, 24.235332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035876, -0.866687, 0.497561,
		-0.561996, 0.429192, 0.707075,
		-0.826361, -0.254260, -0.502473,
		33.427456, 30.611443, 24.084591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939655, 31.021355, 25.208395>,  <34.005909, 30.789425, 24.436321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939655, 31.021355, 25.208395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272110, 31.091434, 25.419495>,  <34.471584, 31.133482, 25.546154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272110, 31.091434, 25.419495>,  <33.939655, 31.021355, 25.208395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272110, 31.091434, 25.419495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033344, 0.963064, -0.267201,
		-0.555070, 0.204483, 0.806278,
		0.831135, 0.175199, 0.527750,
		34.521450, 31.143993, 25.577820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832886, 31.711130, 25.702549>,  <33.939655, 31.021355, 25.208395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832886, 31.711130, 25.702549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215508, 31.649551, 25.603516>,  <34.445080, 31.612604, 25.544096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215508, 31.649551, 25.603516>,  <33.832886, 31.711130, 25.702549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215508, 31.649551, 25.603516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083724, 0.958501, -0.272519,
		0.279264, 0.239952, 0.929750,
		0.956557, -0.153947, -0.247585,
		34.502476, 31.603367, 25.529240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185020, 32.339840, 25.879814>,  <33.832886, 31.711130, 25.702549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185020, 32.339840, 25.879814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465069, 32.167992, 25.651688>,  <34.633099, 32.064884, 25.514811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465069, 32.167992, 25.651688>,  <34.185020, 32.339840, 25.879814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465069, 32.167992, 25.651688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270787, 0.898823, -0.344662,
		0.660687, 0.086870, 0.745618,
		0.700119, -0.429618, -0.570318,
		34.675106, 32.039104, 25.480593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857273, 32.789467, 25.960941>,  <34.185020, 32.339840, 25.879814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857273, 32.789467, 25.960941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924786, 32.584568, 25.624104>,  <34.965294, 32.461628, 25.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924786, 32.584568, 25.624104>,  <34.857273, 32.789467, 25.960941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924786, 32.584568, 25.624104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273611, 0.845120, -0.459248,
		0.946917, -0.152895, 0.282793,
		0.168777, -0.512245, -0.842093,
		34.975418, 32.430893, 25.371475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567787, 32.960747, 25.679926>,  <34.857273, 32.789467, 25.960941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567787, 32.960747, 25.679926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344131, 32.824692, 25.377491>,  <35.209938, 32.743057, 25.196030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344131, 32.824692, 25.377491>,  <35.567787, 32.960747, 25.679926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344131, 32.824692, 25.377491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203166, 0.827948, -0.522709,
		0.803795, -0.445879, -0.393834,
		-0.559139, -0.340138, -0.756089,
		35.176392, 32.722649, 25.150663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808903, 33.334042, 25.237881>,  <35.567787, 32.960747, 25.679926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808903, 33.334042, 25.237881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487473, 33.215721, 25.031281>,  <35.294617, 33.144730, 24.907320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487473, 33.215721, 25.031281>,  <35.808903, 33.334042, 25.237881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487473, 33.215721, 25.031281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137100, 0.752445, -0.644229,
		0.579202, -0.588496, -0.564089,
		-0.803572, -0.295802, -0.516500,
		35.246403, 33.126980, 24.876329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952015, 33.478241, 24.592772>,  <35.808903, 33.334042, 25.237881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952015, 33.478241, 24.592772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552727, 33.456528, 24.602711>,  <35.313156, 33.443501, 24.608675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552727, 33.456528, 24.602711>,  <35.952015, 33.478241, 24.592772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552727, 33.456528, 24.602711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057724, 0.771303, -0.633845,
		0.015244, -0.634149, -0.773061,
		-0.998216, -0.054287, 0.024848,
		35.253262, 33.440243, 24.610165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761086, 33.583241, 23.934532>,  <35.952015, 33.478241, 24.592772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761086, 33.583241, 23.934532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458656, 33.690121, 24.173515>,  <35.277199, 33.754250, 24.316904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458656, 33.690121, 24.173515>,  <35.761086, 33.583241, 23.934532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458656, 33.690121, 24.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083970, 0.865715, -0.493443,
		-0.649077, -0.423248, -0.632107,
		-0.756074, 0.267205, 0.597456,
		35.231834, 33.770283, 24.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321526, 33.788994, 23.519022>,  <35.761086, 33.583241, 23.934532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321526, 33.788994, 23.519022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219833, 33.953045, 23.869373>,  <35.158817, 34.051476, 24.079584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219833, 33.953045, 23.869373>,  <35.321526, 33.788994, 23.519022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219833, 33.953045, 23.869373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130637, 0.882771, -0.451276,
		-0.958281, -0.229149, -0.170847,
		-0.254228, 0.410130, 0.875877,
		35.143566, 34.076084, 24.132137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776520, 34.217300, 23.316965>,  <35.321526, 33.788994, 23.519022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776520, 34.217300, 23.316965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909004, 34.373013, 23.660770>,  <34.988495, 34.466438, 23.867054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909004, 34.373013, 23.660770>,  <34.776520, 34.217300, 23.316965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909004, 34.373013, 23.660770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041255, 0.904082, -0.425364,
		-0.942655, 0.176344, 0.283381,
		0.331210, 0.389281, 0.859512,
		35.008366, 34.489796, 23.918625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533848, 34.885254, 23.344999>,  <34.776520, 34.217300, 23.316965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533848, 34.885254, 23.344999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833244, 34.905079, 23.609516>,  <35.012882, 34.916973, 23.768227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833244, 34.905079, 23.609516>,  <34.533848, 34.885254, 23.344999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833244, 34.905079, 23.609516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193490, 0.937488, -0.289272,
		-0.634292, 0.344470, 0.692108,
		0.748489, 0.049567, 0.661292,
		35.057793, 34.919949, 23.807903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466282, 35.586758, 23.686537>,  <34.533848, 34.885254, 23.344999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466282, 35.586758, 23.686537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840172, 35.483803, 23.784554>,  <35.064507, 35.422031, 23.843363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840172, 35.483803, 23.784554>,  <34.466282, 35.586758, 23.686537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840172, 35.483803, 23.784554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331945, 0.878577, -0.343388,
		-0.126903, 0.402313, 0.906664,
		0.934724, -0.257386, 0.245040,
		35.120590, 35.406586, 23.858065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780846, 36.053589, 24.163822>,  <34.466282, 35.586758, 23.686537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780846, 36.053589, 24.163822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069111, 35.876358, 23.950531>,  <35.242069, 35.770020, 23.822556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069111, 35.876358, 23.950531>,  <34.780846, 36.053589, 24.163822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069111, 35.876358, 23.950531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335692, 0.895963, -0.290794,
		0.606596, 0.030564, 0.794423,
		0.720661, -0.443076, -0.533227,
		35.285309, 35.743435, 23.790564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314438, 36.561161, 24.208107>,  <34.780846, 36.053589, 24.163822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314438, 36.561161, 24.208107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434341, 36.319801, 23.912525>,  <35.506283, 36.174984, 23.735176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434341, 36.319801, 23.912525>,  <35.314438, 36.561161, 24.208107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434341, 36.319801, 23.912525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415014, 0.779918, -0.468498,
		0.859016, -0.166241, 0.484206,
		0.299757, -0.603400, -0.738955,
		35.524269, 36.138783, 23.690838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267002, 36.824924, 24.863617>,  <35.314438, 36.561161, 24.208107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267002, 36.824924, 24.863617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644012, 36.939045, 24.794048>,  <35.870220, 37.007519, 24.752308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644012, 36.939045, 24.794048>,  <35.267002, 36.824924, 24.863617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644012, 36.939045, 24.794048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026432, 0.582541, 0.812371,
		0.333085, -0.761084, 0.556601,
		0.942526, 0.285301, -0.173919,
		35.926769, 37.024635, 24.741873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544456, 36.973736, 25.570719>,  <35.267002, 36.824924, 24.863617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544456, 36.973736, 25.570719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738197, 37.202328, 25.305748>,  <35.854443, 37.339481, 25.146765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738197, 37.202328, 25.305748>,  <35.544456, 36.973736, 25.570719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738197, 37.202328, 25.305748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092332, 0.786333, 0.610864,
		0.869985, -0.234713, 0.433631,
		0.484356, 0.571481, -0.662426,
		35.883503, 37.373772, 25.107019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363560, 36.548370, 26.142603>,  <35.544456, 36.973736, 25.570719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363560, 36.548370, 26.142603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964848, 36.565781, 26.115669>,  <34.725620, 36.576225, 26.099508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964848, 36.565781, 26.115669>,  <35.363560, 36.548370, 26.142603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964848, 36.565781, 26.115669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080174, -0.547958, 0.832655,
		-0.000658, 0.835373, 0.549684,
		-0.996781, 0.043522, -0.067336,
		34.665813, 36.578838, 26.095469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013622, 36.941990, 26.777552>,  <35.363560, 36.548370, 26.142603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013622, 36.941990, 26.777552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743828, 36.709034, 26.596050>,  <34.581951, 36.569260, 26.487148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743828, 36.709034, 26.596050>,  <35.013622, 36.941990, 26.777552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743828, 36.709034, 26.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063459, -0.566596, 0.821548,
		-0.735557, 0.582916, 0.345202,
		-0.674484, -0.582390, -0.453755,
		34.541481, 36.534317, 26.459923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427464, 36.872456, 27.227070>,  <35.013622, 36.941990, 26.777552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427464, 36.872456, 27.227070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428337, 36.564407, 26.971912>,  <34.428864, 36.379578, 26.818817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428337, 36.564407, 26.971912>,  <34.427464, 36.872456, 27.227070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428337, 36.564407, 26.971912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089380, -0.635492, 0.766917,
		-0.995995, 0.055338, -0.070223,
		0.002187, -0.770122, -0.637893,
		34.428993, 36.333370, 26.780544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828159, 36.507671, 27.347618>,  <34.427464, 36.872456, 27.227070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828159, 36.507671, 27.347618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023689, 36.219730, 27.150494>,  <34.141006, 36.046967, 27.032219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023689, 36.219730, 27.150494>,  <33.828159, 36.507671, 27.347618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023689, 36.219730, 27.150494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159907, -0.629269, 0.760559,
		-0.857601, -0.292977, -0.422712,
		0.488826, -0.719851, -0.492813,
		34.170338, 36.003777, 27.002649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367809, 35.999298, 27.394531>,  <33.828159, 36.507671, 27.347618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367809, 35.999298, 27.394531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712929, 35.814167, 27.313168>,  <33.919998, 35.703087, 27.264349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712929, 35.814167, 27.313168>,  <33.367809, 35.999298, 27.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712929, 35.814167, 27.313168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200642, -0.682784, 0.702531,
		-0.464035, -0.565327, -0.681965,
		0.862795, -0.462830, -0.203407,
		33.971767, 35.675320, 27.252146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252125, 35.334969, 27.281675>,  <33.367809, 35.999298, 27.394531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252125, 35.334969, 27.281675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634666, 35.332439, 27.398537>,  <33.864189, 35.330921, 27.468653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634666, 35.332439, 27.398537>,  <33.252125, 35.334969, 27.281675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634666, 35.332439, 27.398537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213097, -0.699195, 0.682434,
		0.199958, -0.714903, -0.670022,
		0.956350, -0.006322, 0.292154,
		33.921570, 35.330544, 27.486183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450619, 34.556839, 27.214428>,  <33.252125, 35.334969, 27.281675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450619, 34.556839, 27.214428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740833, 34.719818, 27.436272>,  <33.914963, 34.817604, 27.569378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740833, 34.719818, 27.436272>,  <33.450619, 34.556839, 27.214428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740833, 34.719818, 27.436272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146082, -0.696351, 0.702677,
		0.672505, -0.590833, -0.445704,
		0.725532, 0.407445, 0.554610,
		33.958492, 34.842052, 27.602655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067776, 34.015179, 27.274694>,  <33.450619, 34.556839, 27.214428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067776, 34.015179, 27.274694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032917, 34.274765, 27.577019>,  <34.012001, 34.430515, 27.758413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032917, 34.274765, 27.577019>,  <34.067776, 34.015179, 27.274694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032917, 34.274765, 27.577019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154909, -0.740641, 0.653800,
		0.984077, 0.174060, -0.035983,
		-0.087150, 0.648964, 0.755811,
		34.006771, 34.469456, 27.803762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656940, 33.795658, 27.765011>,  <34.067776, 34.015179, 27.274694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656940, 33.795658, 27.765011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437973, 34.031372, 28.002693>,  <34.306591, 34.172802, 28.145302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437973, 34.031372, 28.002693>,  <34.656940, 33.795658, 27.765011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437973, 34.031372, 28.002693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016614, -0.717553, 0.696306,
		0.836694, 0.371298, 0.402592,
		-0.547418, 0.589284, 0.594204,
		34.273746, 34.208157, 28.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944019, 33.639664, 28.353128>,  <34.656940, 33.795658, 27.765011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944019, 33.639664, 28.353128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599197, 33.809303, 28.464130>,  <34.392303, 33.911087, 28.530731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599197, 33.809303, 28.464130>,  <34.944019, 33.639664, 28.353128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599197, 33.809303, 28.464130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114890, -0.696805, 0.707999,
		0.493629, 0.578448, 0.649406,
		-0.862050, 0.424099, 0.277505,
		34.340584, 33.936535, 28.547382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913639, 33.822826, 29.117559>,  <34.944019, 33.639664, 28.353128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913639, 33.822826, 29.117559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521442, 33.809937, 29.039989>,  <34.286125, 33.802200, 28.993448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521442, 33.809937, 29.039989>,  <34.913639, 33.822826, 29.117559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521442, 33.809937, 29.039989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161801, -0.427963, 0.889195,
		-0.111649, 0.903221, 0.414398,
		-0.980487, -0.032228, -0.193924,
		34.227295, 33.800266, 28.981812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559368, 34.083145, 29.657333>,  <34.913639, 33.822826, 29.117559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559368, 34.083145, 29.657333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257240, 33.884281, 29.486538>,  <34.075962, 33.764961, 29.384060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257240, 33.884281, 29.486538>,  <34.559368, 34.083145, 29.657333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257240, 33.884281, 29.486538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300475, -0.316309, 0.899813,
		-0.582411, 0.807949, 0.089532,
		-0.755323, -0.497159, -0.426990,
		34.030643, 33.735134, 29.358440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014515, 34.225239, 30.110739>,  <34.559368, 34.083145, 29.657333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014515, 34.225239, 30.110739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909058, 33.898605, 29.905338>,  <33.845783, 33.702625, 29.782097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909058, 33.898605, 29.905338>,  <34.014515, 34.225239, 30.110739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909058, 33.898605, 29.905338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496257, -0.341670, 0.798117,
		-0.827178, 0.465245, -0.315157,
		-0.263640, -0.816583, -0.513503,
		33.829967, 33.653629, 29.751287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288479, 34.049397, 30.125196>,  <34.014515, 34.225239, 30.110739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288479, 34.049397, 30.125196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405437, 33.688232, 29.999176>,  <33.475613, 33.471535, 29.923563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405437, 33.688232, 29.999176>,  <33.288479, 34.049397, 30.125196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405437, 33.688232, 29.999176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630845, -0.429716, 0.646049,
		-0.718706, 0.009846, -0.695244,
		0.292396, -0.902911, -0.315051,
		33.493156, 33.417358, 29.904661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743279, 33.623356, 30.345364>,  <33.288479, 34.049397, 30.125196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743279, 33.623356, 30.345364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021549, 33.357864, 30.235458>,  <33.188511, 33.198570, 30.169516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021549, 33.357864, 30.235458>,  <32.743279, 33.623356, 30.345364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021549, 33.357864, 30.235458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396557, -0.673761, 0.623530,
		-0.598979, -0.324818, -0.731928,
		0.695678, -0.663731, -0.274760,
		33.230251, 33.158745, 30.153030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408421, 32.926449, 30.324245>,  <32.743279, 33.623356, 30.345364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408421, 32.926449, 30.324245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796627, 32.850899, 30.384136>,  <33.029552, 32.805569, 30.420071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796627, 32.850899, 30.384136>,  <32.408421, 32.926449, 30.324245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796627, 32.850899, 30.384136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240962, -0.746425, 0.620312,
		-0.005399, -0.638104, -0.769932,
		0.970520, -0.188873, 0.149728,
		33.087784, 32.794235, 30.429054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424854, 32.243561, 30.378977>,  <32.408421, 32.926449, 30.324245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424854, 32.243561, 30.378977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774593, 32.363934, 30.531273>,  <32.984436, 32.436157, 30.622650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774593, 32.363934, 30.531273>,  <32.424854, 32.243561, 30.378977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774593, 32.363934, 30.531273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043099, -0.733289, 0.678550,
		0.483389, -0.609696, -0.628177,
		0.874345, 0.300930, 0.380741,
		33.036896, 32.454212, 30.645494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820297, 31.678219, 30.426298>,  <32.424854, 32.243561, 30.378977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820297, 31.678219, 30.426298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974766, 31.930283, 30.695747>,  <33.067448, 32.081520, 30.857418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974766, 31.930283, 30.695747>,  <32.820297, 31.678219, 30.426298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974766, 31.930283, 30.695747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031732, -0.738918, 0.673048,
		0.921880, -0.238539, -0.305347,
		0.386175, 0.630158, 0.673624,
		33.090618, 32.119331, 30.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358875, 31.251459, 30.849613>,  <32.820297, 31.678219, 30.426298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358875, 31.251459, 30.849613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278015, 31.573418, 31.072781>,  <33.229500, 31.766594, 31.206682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278015, 31.573418, 31.072781>,  <33.358875, 31.251459, 30.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278015, 31.573418, 31.072781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009304, -0.571234, 0.820734,
		0.979310, 0.160720, 0.122964,
		-0.202150, 0.804898, 0.557920,
		33.217369, 31.814886, 31.240156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812580, 31.230623, 31.492054>,  <33.358875, 31.251459, 30.849613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812580, 31.230623, 31.492054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484276, 31.451790, 31.549515>,  <33.287292, 31.584490, 31.583992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484276, 31.451790, 31.549515>,  <33.812580, 31.230623, 31.492054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484276, 31.451790, 31.549515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306576, -0.638495, 0.705929,
		0.482042, 0.535357, 0.693562,
		-0.820760, 0.552917, 0.143654,
		33.238049, 31.617664, 31.592611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817089, 31.216110, 32.236286>,  <33.812580, 31.230623, 31.492054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817089, 31.216110, 32.236286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452011, 31.331509, 32.120525>,  <33.232964, 31.400747, 32.051067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452011, 31.331509, 32.120525>,  <33.817089, 31.216110, 32.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452011, 31.331509, 32.120525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405299, -0.729407, 0.551088,
		-0.052107, 0.620271, 0.782654,
		-0.912698, 0.288494, -0.289403,
		33.178204, 31.418056, 32.033703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630367, 31.143826, 32.798008>,  <33.817089, 31.216110, 32.236286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630367, 31.143826, 32.798008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311916, 31.142574, 32.555958>,  <33.120846, 31.141823, 32.410728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311916, 31.142574, 32.555958>,  <33.630367, 31.143826, 32.798008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311916, 31.142574, 32.555958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394972, -0.754918, 0.523541,
		-0.458458, 0.655811, 0.599773,
		-0.796124, -0.003128, -0.605126,
		33.073078, 31.141636, 32.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126026, 31.189362, 33.231037>,  <33.630367, 31.143826, 32.798008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126026, 31.189362, 33.231037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984058, 31.020145, 32.897552>,  <32.898880, 30.918615, 32.697464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984058, 31.020145, 32.897552>,  <33.126026, 31.189362, 33.231037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984058, 31.020145, 32.897552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439143, -0.711823, 0.548143,
		-0.825340, 0.560663, 0.066863,
		-0.354918, -0.423042, -0.833708,
		32.877583, 30.893232, 32.647442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525887, 31.026136, 33.404728>,  <33.126026, 31.189362, 33.231037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525887, 31.026136, 33.404728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562977, 30.782997, 33.089279>,  <32.585232, 30.637114, 32.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562977, 30.782997, 33.089279>,  <32.525887, 31.026136, 33.404728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562977, 30.782997, 33.089279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447262, -0.733055, 0.512433,
		-0.889584, 0.305206, -0.339838,
		0.092722, -0.607848, -0.788621,
		32.590794, 30.600643, 32.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800083, 30.704937, 33.190140>,  <32.525887, 31.026136, 33.404728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800083, 30.704937, 33.190140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086716, 30.465462, 33.046986>,  <32.258698, 30.321775, 32.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086716, 30.465462, 33.046986>,  <31.800083, 30.704937, 33.190140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086716, 30.465462, 33.046986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528513, -0.800882, 0.281535,
		-0.455172, -0.012599, -0.890314,
		0.716584, -0.598690, -0.357881,
		32.301689, 30.285854, 32.939621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380846, 30.119503, 32.952553>,  <31.800083, 30.704937, 33.190140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380846, 30.119503, 32.952553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749346, 29.964344, 32.964127>,  <31.970446, 29.871248, 32.971073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749346, 29.964344, 32.964127>,  <31.380846, 30.119503, 32.952553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749346, 29.964344, 32.964127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369951, -0.850776, 0.373252,
		-0.120164, -0.354563, -0.927278,
		0.921248, -0.387899, 0.028938,
		32.025719, 29.847975, 32.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170967, 30.334911, 32.287174>,  <31.380846, 30.119503, 32.952553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170967, 30.334911, 32.287174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779840, 30.305939, 32.208553>,  <30.545164, 30.288555, 32.161381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779840, 30.305939, 32.208553>,  <31.170967, 30.334911, 32.287174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779840, 30.305939, 32.208553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048754, 0.833850, -0.549833,
		0.203719, -0.547218, -0.811820,
		-0.977815, -0.072432, -0.196551,
		30.486496, 30.284208, 32.149590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132101, 30.479538, 31.573370>,  <31.170967, 30.334911, 32.287174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132101, 30.479538, 31.573370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776499, 30.551880, 31.741638>,  <30.563137, 30.595285, 31.842600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776499, 30.551880, 31.741638>,  <31.132101, 30.479538, 31.573370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776499, 30.551880, 31.741638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153517, 0.747807, -0.645924,
		-0.431398, -0.638809, -0.637040,
		-0.889004, 0.180854, 0.420670,
		30.509798, 30.606136, 31.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656202, 30.456898, 31.071033>,  <31.132101, 30.479538, 31.573370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656202, 30.456898, 31.071033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464163, 30.670155, 31.349678>,  <30.348940, 30.798109, 31.516865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464163, 30.670155, 31.349678>,  <30.656202, 30.456898, 31.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464163, 30.670155, 31.349678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302033, 0.645096, -0.701874,
		-0.823579, -0.547368, -0.148683,
		-0.480098, 0.533141, 0.696611,
		30.320133, 30.830097, 31.558661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094883, 30.720238, 30.732365>,  <30.656202, 30.456898, 31.071033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094883, 30.720238, 30.732365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094801, 30.958988, 31.053299>,  <30.094751, 31.102238, 31.245859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094801, 30.958988, 31.053299>,  <30.094883, 30.720238, 30.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094801, 30.958988, 31.053299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558749, 0.665338, -0.495101,
		-0.829337, -0.448405, 0.333367,
		-0.000204, 0.596874, 0.802335,
		30.094740, 31.138050, 31.293999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387411, 31.052887, 30.842470>,  <30.094883, 30.720238, 30.732365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387411, 31.052887, 30.842470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651844, 31.275829, 31.043400>,  <29.810503, 31.409594, 31.163958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651844, 31.275829, 31.043400>,  <29.387411, 31.052887, 30.842470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651844, 31.275829, 31.043400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407124, 0.828814, -0.383819,
		-0.630255, 0.049228, 0.774826,
		0.661081, 0.557354, 0.502322,
		29.850168, 31.443035, 31.194096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
