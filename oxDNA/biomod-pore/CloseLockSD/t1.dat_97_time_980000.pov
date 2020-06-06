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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.219659, 15.204324, 15.119035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298142, 15.053127, 14.757123>,  <4.345232, 14.962409, 14.539976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298142, 15.053127, 14.757123>,  <4.219659, 15.204324, 15.119035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.298142, 15.053127, 14.757123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050051, -0.917651, 0.394224,
		-0.979284, -0.122635, -0.161132,
		0.196208, -0.377992, -0.904779,
		4.357005, 14.939730, 14.485689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.776749, 15.610881, 15.361485>,  <4.219659, 15.204324, 15.119035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.776749, 15.610881, 15.361485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.675333, 15.631139, 15.747885>,  <4.614483, 15.643293, 15.979724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.675333, 15.631139, 15.747885>,  <4.776749, 15.610881, 15.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.675333, 15.631139, 15.747885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343720, -0.938176, -0.041028,
		0.904198, -0.342435, 0.255274,
		-0.253541, 0.050645, 0.965998,
		4.599270, 15.646333, 16.037683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970180, 14.977146, 15.613299>,  <4.776749, 15.610881, 15.361485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970180, 14.977146, 15.613299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.653862, 15.139382, 15.796664>,  <4.464072, 15.236724, 15.906683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.653862, 15.139382, 15.796664>,  <4.970180, 14.977146, 15.613299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.653862, 15.139382, 15.796664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510166, -0.850572, -0.127510,
		0.338196, -0.334701, 0.879545,
		-0.790794, 0.405590, 0.458413,
		4.416624, 15.261060, 15.934188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.201653, 14.293647, 15.314223>,  <4.970180, 14.977146, 15.613299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.201653, 14.293647, 15.314223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.592186, 14.211782, 15.286269>,  <5.826507, 14.162663, 15.269497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.592186, 14.211782, 15.286269>,  <5.201653, 14.293647, 15.314223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.592186, 14.211782, 15.286269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183300, 0.611622, 0.769623,
		-0.114771, -0.764219, 0.634663,
		0.976335, -0.204664, -0.069885,
		5.885087, 14.150382, 15.265304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.426823, 14.169210, 15.988935>,  <5.201653, 14.293647, 15.314223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.426823, 14.169210, 15.988935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.755526, 14.282357, 15.791065>,  <5.952747, 14.350245, 15.672343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.755526, 14.282357, 15.791065>,  <5.426823, 14.169210, 15.988935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.755526, 14.282357, 15.791065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195352, 0.675648, 0.710871,
		0.535305, -0.680799, 0.499961,
		0.821758, 0.282865, -0.494673,
		6.002053, 14.367217, 15.642663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.012928, 14.144350, 16.452154>,  <5.426823, 14.169210, 15.988935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.012928, 14.144350, 16.452154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.116060, 14.410819, 16.172228>,  <6.177939, 14.570701, 16.004272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.116060, 14.410819, 16.172228>,  <6.012928, 14.144350, 16.452154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.116060, 14.410819, 16.172228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167157, 0.682625, 0.711394,
		0.951621, -0.300397, 0.064646,
		0.257830, 0.666171, -0.699814,
		6.193409, 14.610670, 15.962284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.410354, 14.504854, 16.814657>,  <6.012928, 14.144350, 16.452154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.410354, 14.504854, 16.814657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412100, 14.743575, 16.493706>,  <6.413147, 14.886807, 16.301136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412100, 14.743575, 16.493706>,  <6.410354, 14.504854, 16.814657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.412100, 14.743575, 16.493706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179026, 0.788955, 0.587792,
		0.983835, -0.146211, -0.103400,
		0.004364, 0.596802, -0.802377,
		6.413409, 14.922616, 16.252993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.954932, 14.757107, 16.848228>,  <6.410354, 14.504854, 16.814657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.954932, 14.757107, 16.848228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.742599, 15.020715, 16.635096>,  <6.615200, 15.178880, 16.507215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.742599, 15.020715, 16.635096>,  <6.954932, 14.757107, 16.848228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.742599, 15.020715, 16.635096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096310, 0.671565, 0.734659,
		0.841987, 0.338662, -0.419958,
		-0.530831, 0.659020, -0.532833,
		6.583350, 15.218421, 16.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.263271, 15.437732, 16.826292>,  <6.954932, 14.757107, 16.848228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.263271, 15.437732, 16.826292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.873435, 15.508824, 16.771761>,  <6.639534, 15.551479, 16.739042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.873435, 15.508824, 16.771761>,  <7.263271, 15.437732, 16.826292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.873435, 15.508824, 16.771761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040553, 0.738569, 0.672957,
		0.220294, 0.650329, -0.727009,
		-0.974590, 0.177731, -0.136330,
		6.581059, 15.562143, 16.730862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.148503, 16.154465, 16.981838>,  <7.263271, 15.437732, 16.826292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.148503, 16.154465, 16.981838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.769242, 16.027340, 16.981916>,  <6.541685, 15.951065, 16.981962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.769242, 16.027340, 16.981916>,  <7.148503, 16.154465, 16.981838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.769242, 16.027340, 16.981916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241627, 0.721260, 0.649153,
		-0.206448, 0.615451, -0.760658,
		-0.948154, -0.317812, 0.000193,
		6.484796, 15.931996, 16.981974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.656168, 16.737041, 16.750135>,  <7.148503, 16.154465, 16.981838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.656168, 16.737041, 16.750135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.460611, 16.460510, 16.962946>,  <6.343277, 16.294592, 17.090631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.460611, 16.460510, 16.962946>,  <6.656168, 16.737041, 16.750135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.460611, 16.460510, 16.962946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250607, 0.695476, 0.673431,
		-0.835572, 0.195907, -0.513265,
		-0.488893, -0.691327, 0.532025,
		6.313943, 16.253113, 17.122553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.131062, 17.095131, 16.967392>,  <6.656168, 16.737041, 16.750135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.131062, 17.095131, 16.967392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.159839, 16.788563, 17.222710>,  <6.177105, 16.604622, 17.375900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.159839, 16.788563, 17.222710>,  <6.131062, 17.095131, 16.967392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.159839, 16.788563, 17.222710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262188, 0.602915, 0.753492,
		-0.962331, -0.221561, -0.157572,
		0.071942, -0.766423, 0.638295,
		6.181421, 16.558636, 17.414198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.615595, 17.129112, 17.474901>,  <6.131062, 17.095131, 16.967392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.615595, 17.129112, 17.474901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.867269, 16.875782, 17.655134>,  <6.018272, 16.723783, 17.763275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.867269, 16.875782, 17.655134>,  <5.615595, 17.129112, 17.474901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.867269, 16.875782, 17.655134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120881, 0.492925, 0.861634,
		-0.767800, -0.596593, 0.233583,
		0.629183, -0.633327, 0.450584,
		6.056024, 16.685783, 17.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.306477, 16.948185, 18.159897>,  <5.615595, 17.129112, 17.474901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.306477, 16.948185, 18.159897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698538, 16.877815, 18.196445>,  <5.933775, 16.835594, 18.218374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698538, 16.877815, 18.196445>,  <5.306477, 16.948185, 18.159897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.698538, 16.877815, 18.196445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020374, 0.547875, 0.836312,
		-0.197186, -0.817854, 0.540586,
		0.980154, -0.175923, 0.091371,
		5.992585, 16.825039, 18.223856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.403443, 16.589813, 18.813831>,  <5.306477, 16.948185, 18.159897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.403443, 16.589813, 18.813831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.751035, 16.774429, 18.742439>,  <5.959590, 16.885199, 18.699604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.751035, 16.774429, 18.742439>,  <5.403443, 16.589813, 18.813831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.751035, 16.774429, 18.742439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011477, 0.379377, 0.925171,
		0.494713, -0.801907, 0.334968,
		0.868980, 0.461539, -0.178479,
		6.011729, 16.912891, 18.688896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.736579, 16.679916, 19.484999>,  <5.403443, 16.589813, 18.813831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.736579, 16.679916, 19.484999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.972572, 16.923048, 19.272409>,  <6.114168, 17.068928, 19.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.972572, 16.923048, 19.272409>,  <5.736579, 16.679916, 19.484999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.972572, 16.923048, 19.272409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311462, 0.435963, 0.844350,
		0.744925, -0.663685, 0.067894,
		0.589982, 0.607831, -0.531472,
		6.149567, 17.105398, 19.112968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.444092, 16.712147, 19.762218>,  <5.736579, 16.679916, 19.484999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.444092, 16.712147, 19.762218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.393605, 17.048052, 19.550987>,  <6.363313, 17.249596, 19.424250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.393605, 17.048052, 19.550987>,  <6.444092, 16.712147, 19.762218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.393605, 17.048052, 19.550987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398575, 0.530405, 0.748204,
		0.908409, -0.116041, -0.401655,
		-0.126217, 0.839765, -0.528076,
		6.355740, 17.299982, 19.392565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.997622, 17.071651, 19.786291>,  <6.444092, 16.712147, 19.762218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.997622, 17.071651, 19.786291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.771444, 17.373568, 19.653286>,  <6.635737, 17.554716, 19.573483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.771444, 17.373568, 19.653286>,  <6.997622, 17.071651, 19.786291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.771444, 17.373568, 19.653286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450640, 0.620382, 0.641911,
		0.690793, 0.213121, -0.690930,
		-0.565445, 0.754788, -0.332515,
		6.601810, 17.600004, 19.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.496365, 17.656237, 19.751638>,  <6.997622, 17.071651, 19.786291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.496365, 17.656237, 19.751638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.130158, 17.816740, 19.740185>,  <6.910434, 17.913042, 19.733313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.130158, 17.816740, 19.740185>,  <7.496365, 17.656237, 19.751638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.130158, 17.816740, 19.740185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302434, 0.733476, 0.608726,
		0.265259, 0.548639, -0.792864,
		-0.915517, 0.401259, -0.028634,
		6.855504, 17.937119, 19.731594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.529787, 18.411543, 19.671423>,  <7.496365, 17.656237, 19.751638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.529787, 18.411543, 19.671423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.157103, 18.355669, 19.805531>,  <6.933492, 18.322145, 19.885994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.157103, 18.355669, 19.805531>,  <7.529787, 18.411543, 19.671423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.157103, 18.355669, 19.805531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085082, 0.813465, 0.575358,
		-0.353096, 0.564592, -0.746029,
		-0.931710, -0.139683, 0.335268,
		6.877589, 18.313765, 19.906111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.253942, 19.014063, 19.709789>,  <7.529787, 18.411543, 19.671423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.253942, 19.014063, 19.709789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.029575, 18.809992, 19.970585>,  <6.894955, 18.687550, 20.127062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.029575, 18.809992, 19.970585>,  <7.253942, 19.014063, 19.709789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.029575, 18.809992, 19.970585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072334, 0.754337, 0.652490,
		-0.824706, 0.413154, -0.386217,
		-0.560917, -0.510176, 0.651991,
		6.861300, 18.656939, 20.166182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.633245, 19.450386, 19.913267>,  <7.253942, 19.014063, 19.709789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.633245, 19.450386, 19.913267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.692705, 19.182072, 20.203909>,  <6.728380, 19.021084, 20.378294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.692705, 19.182072, 20.203909>,  <6.633245, 19.450386, 19.913267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.692705, 19.182072, 20.203909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139729, 0.741641, 0.656082,
		-0.978969, 0.004003, 0.203971,
		0.148647, -0.670785, 0.726603,
		6.737299, 18.980837, 20.421890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.156389, 19.614609, 20.481873>,  <6.633245, 19.450386, 19.913267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.156389, 19.614609, 20.481873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448342, 19.399317, 20.650433>,  <6.623514, 19.270142, 20.751570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448342, 19.399317, 20.650433>,  <6.156389, 19.614609, 20.481873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.448342, 19.399317, 20.650433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032882, 0.588112, 0.808111,
		-0.682781, -0.603683, 0.411555,
		0.729883, -0.538229, 0.421402,
		6.667307, 19.237848, 20.776854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.060625, 19.728746, 21.268690>,  <6.156389, 19.614609, 20.481873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.060625, 19.728746, 21.268690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.432532, 19.594048, 21.209185>,  <6.655677, 19.513227, 21.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.432532, 19.594048, 21.209185>,  <6.060625, 19.728746, 21.268690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.432532, 19.594048, 21.209185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314924, 0.518240, 0.795141,
		-0.190666, -0.786147, 0.587894,
		0.929768, -0.336748, -0.148766,
		6.711463, 19.493023, 21.164555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.311002, 19.631811, 21.952562>,  <6.060625, 19.728746, 21.268690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.311002, 19.631811, 21.952562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.628038, 19.664583, 21.710873>,  <6.818260, 19.684246, 21.565859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.628038, 19.664583, 21.710873>,  <6.311002, 19.631811, 21.952562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.628038, 19.664583, 21.710873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425638, 0.635215, 0.644465,
		0.436613, -0.767978, 0.468593,
		0.792592, 0.081930, -0.604223,
		6.865816, 19.689163, 21.529606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.940176, 19.551140, 22.375559>,  <6.311002, 19.631811, 21.952562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.940176, 19.551140, 22.375559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.010331, 19.748201, 22.034613>,  <7.052423, 19.866438, 21.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.010331, 19.748201, 22.034613>,  <6.940176, 19.551140, 22.375559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.010331, 19.748201, 22.034613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308479, 0.794689, 0.522792,
		0.934923, -0.354627, -0.012598,
		0.175385, 0.492656, -0.852367,
		7.062946, 19.895998, 21.778902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576955, 19.888041, 22.441580>,  <6.940176, 19.551140, 22.375559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576955, 19.888041, 22.441580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.379043, 20.081213, 22.152590>,  <7.260296, 20.197117, 21.979195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.379043, 20.081213, 22.152590>,  <7.576955, 19.888041, 22.441580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.379043, 20.081213, 22.152590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293899, 0.875372, 0.383858,
		0.817812, -0.022410, -0.575049,
		-0.494780, 0.482930, -0.722476,
		7.230609, 20.226091, 21.935846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.906740, 19.516008, 23.016354>,  <7.576955, 19.888041, 22.441580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.906740, 19.516008, 23.016354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.992013, 19.284998, 22.701136>,  <8.043178, 19.146393, 22.512005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.992013, 19.284998, 22.701136>,  <7.906740, 19.516008, 23.016354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.992013, 19.284998, 22.701136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921028, -0.150320, 0.359320,
		-0.325975, -0.802415, 0.499871,
		0.213183, -0.577525, -0.788047,
		8.055968, 19.111740, 22.464722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.247595, 18.823298, 23.257717>,  <7.906740, 19.516008, 23.016354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.247595, 18.823298, 23.257717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.340127, 18.981771, 22.902296>,  <8.395646, 19.076857, 22.689043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.340127, 18.981771, 22.902296>,  <8.247595, 18.823298, 23.257717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.340127, 18.981771, 22.902296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968314, -0.182106, 0.170898,
		-0.094103, -0.899930, -0.425760,
		0.231330, 0.396187, -0.888551,
		8.409526, 19.100628, 22.635731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.392163, 18.026543, 23.337648>,  <8.247595, 18.823298, 23.257717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.392163, 18.026543, 23.337648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424130, 17.693733, 23.557230>,  <8.443311, 17.494047, 23.688978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424130, 17.693733, 23.557230>,  <8.392163, 18.026543, 23.337648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.424130, 17.693733, 23.557230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910355, -0.163407, -0.380199,
		0.406037, 0.530127, 0.744378,
		0.079917, -0.832024, 0.548953,
		8.448106, 17.444126, 23.721916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.020514, 18.020960, 23.489805>,  <8.392163, 18.026543, 23.337648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.020514, 18.020960, 23.489805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900840, 17.640999, 23.525972>,  <8.829036, 17.413023, 23.547672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900840, 17.640999, 23.525972>,  <9.020514, 18.020960, 23.489805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.900840, 17.640999, 23.525972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826072, -0.305274, -0.473723,
		0.477592, -0.067038, 0.876020,
		-0.299184, -0.949902, 0.090418,
		8.811085, 17.356028, 23.553099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.325210, 18.341433, 22.950302>,  <9.020514, 18.020960, 23.489805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.325210, 18.341433, 22.950302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681294, 18.379639, 23.128471>,  <9.894945, 18.402563, 23.235373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681294, 18.379639, 23.128471>,  <9.325210, 18.341433, 22.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.681294, 18.379639, 23.128471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454748, -0.128430, -0.881312,
		-0.026973, 0.987108, -0.157765,
		0.890212, 0.095515, 0.445422,
		9.948358, 18.408293, 23.262098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.511703, 18.909248, 22.600941>,  <9.325210, 18.341433, 22.950302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.511703, 18.909248, 22.600941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822794, 18.672346, 22.685196>,  <10.009449, 18.530205, 22.735748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822794, 18.672346, 22.685196>,  <9.511703, 18.909248, 22.600941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.822794, 18.672346, 22.685196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296534, 0.050210, -0.953701,
		0.554260, 0.804184, 0.214674,
		0.777730, -0.592257, 0.210639,
		10.056113, 18.494669, 22.748388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.078000, 19.139334, 22.090240>,  <9.511703, 18.909248, 22.600941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.078000, 19.139334, 22.090240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138015, 18.776522, 22.247612>,  <10.174024, 18.558834, 22.342035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138015, 18.776522, 22.247612>,  <10.078000, 19.139334, 22.090240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.138015, 18.776522, 22.247612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109801, -0.380184, -0.918370,
		0.982564, 0.180989, 0.042551,
		0.150037, -0.907030, 0.393427,
		10.183026, 18.504414, 22.365641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.676002, 18.815035, 21.705639>,  <10.078000, 19.139334, 22.090240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.676002, 18.815035, 21.705639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.425618, 18.543636, 21.859428>,  <10.275388, 18.380796, 21.951702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.425618, 18.543636, 21.859428>,  <10.676002, 18.815035, 21.705639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.425618, 18.543636, 21.859428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010926, -0.485325, -0.874266,
		0.779780, -0.551455, 0.296380,
		-0.625958, -0.678497, 0.384471,
		10.237830, 18.340088, 21.974770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.853802, 18.169083, 21.522104>,  <10.676002, 18.815035, 21.705639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.853802, 18.169083, 21.522104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458108, 18.133770, 21.568785>,  <10.220692, 18.112581, 21.596792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458108, 18.133770, 21.568785>,  <10.853802, 18.169083, 21.522104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458108, 18.133770, 21.568785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066126, -0.441747, -0.894699,
		0.130540, -0.892785, 0.431154,
		-0.989235, -0.088284, 0.116702,
		10.161337, 18.107285, 21.603796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692238, 17.478708, 21.402914>,  <10.853802, 18.169083, 21.522104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692238, 17.478708, 21.402914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.365211, 17.693182, 21.318922>,  <10.168996, 17.821867, 21.268528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.365211, 17.693182, 21.318922>,  <10.692238, 17.478708, 21.402914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.365211, 17.693182, 21.318922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047025, -0.425601, -0.903688,
		-0.573912, -0.728950, 0.373171,
		-0.817565, 0.536186, -0.209979,
		10.119942, 17.854038, 21.255928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.234004, 16.984261, 21.036514>,  <10.692238, 17.478708, 21.402914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.234004, 16.984261, 21.036514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070210, 17.339117, 20.951372>,  <9.971934, 17.552031, 20.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070210, 17.339117, 20.951372>,  <10.234004, 16.984261, 21.036514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070210, 17.339117, 20.951372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296587, -0.350084, -0.888525,
		-0.862762, -0.300707, 0.406468,
		-0.409483, 0.887140, -0.212853,
		9.947366, 17.605259, 20.887516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.577002, 16.810917, 20.720854>,  <10.234004, 16.984261, 21.036514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.577002, 16.810917, 20.720854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694222, 17.178366, 20.614834>,  <9.764555, 17.398836, 20.551222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694222, 17.178366, 20.614834>,  <9.577002, 16.810917, 20.720854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694222, 17.178366, 20.614834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201599, -0.211618, -0.956335,
		-0.934601, 0.333689, 0.123179,
		0.293051, 0.918624, -0.265050,
		9.782138, 17.453953, 20.535318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.110719, 16.937071, 20.272789>,  <9.577002, 16.810917, 20.720854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.110719, 16.937071, 20.272789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.403734, 17.197300, 20.192648>,  <9.579544, 17.353437, 20.144564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.403734, 17.197300, 20.192648>,  <9.110719, 16.937071, 20.272789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.403734, 17.197300, 20.192648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234576, -0.035042, -0.971466,
		-0.639030, 0.758635, 0.126939,
		0.732540, 0.650573, -0.200351,
		9.623496, 17.392471, 20.132544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.797709, 17.501417, 19.901894>,  <9.110719, 16.937071, 20.272789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.797709, 17.501417, 19.901894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.191584, 17.499945, 19.832174>,  <9.427908, 17.499062, 19.790342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.191584, 17.499945, 19.832174>,  <8.797709, 17.501417, 19.901894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.191584, 17.499945, 19.832174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167951, -0.288118, -0.942751,
		-0.046749, 0.957588, -0.284324,
		0.984686, -0.003680, -0.174297,
		9.486990, 17.498840, 19.779884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.751655, 17.856834, 19.209423>,  <8.797709, 17.501417, 19.901894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.751655, 17.856834, 19.209423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129176, 17.726562, 19.231941>,  <9.355689, 17.648399, 19.245451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129176, 17.726562, 19.231941>,  <8.751655, 17.856834, 19.209423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.129176, 17.726562, 19.231941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005203, -0.184945, -0.982735,
		0.330467, 0.927216, -0.176246,
		0.943803, -0.325679, 0.056294,
		9.412317, 17.628859, 19.248829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.050935, 18.088152, 18.619030>,  <8.751655, 17.856834, 19.209423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.050935, 18.088152, 18.619030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.313013, 17.809273, 18.735397>,  <9.470260, 17.641945, 18.805218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.313013, 17.809273, 18.735397>,  <9.050935, 18.088152, 18.619030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.313013, 17.809273, 18.735397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064537, -0.332026, -0.941060,
		0.752698, 0.635354, -0.172547,
		0.655196, -0.697198, 0.290919,
		9.509572, 17.600113, 18.822674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.344394, 17.934896, 18.048891>,  <9.050935, 18.088152, 18.619030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.344394, 17.934896, 18.048891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.501862, 17.620327, 18.239286>,  <9.596342, 17.431585, 18.353523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.501862, 17.620327, 18.239286>,  <9.344394, 17.934896, 18.048891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.501862, 17.620327, 18.239286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080070, -0.545166, -0.834496,
		0.915758, 0.290403, -0.277584,
		0.393670, -0.786423, 0.475987,
		9.619963, 17.384399, 18.382082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.929466, 17.684879, 17.712690>,  <9.344394, 17.934896, 18.048891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.929466, 17.684879, 17.712690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.773568, 17.385406, 17.927195>,  <9.680029, 17.205723, 18.055897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.773568, 17.385406, 17.927195>,  <9.929466, 17.684879, 17.712690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.773568, 17.385406, 17.927195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081987, -0.551786, -0.829946,
		0.917266, -0.367434, 0.153673,
		-0.389745, -0.748682, 0.536260,
		9.656645, 17.160803, 18.088072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.231635, 17.044214, 17.426432>,  <9.929466, 17.684879, 17.712690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.231635, 17.044214, 17.426432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915120, 16.894421, 17.619770>,  <9.725211, 16.804544, 17.735773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915120, 16.894421, 17.619770>,  <10.231635, 17.044214, 17.426432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915120, 16.894421, 17.619770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126058, -0.673606, -0.728261,
		0.598308, -0.637194, 0.485809,
		-0.791288, -0.374484, 0.483347,
		9.677733, 16.782076, 17.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.231428, 16.241957, 17.398409>,  <10.231635, 17.044214, 17.426432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.231428, 16.241957, 17.398409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.851119, 16.345018, 17.467283>,  <9.622933, 16.406855, 17.508608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.851119, 16.345018, 17.467283>,  <10.231428, 16.241957, 17.398409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.851119, 16.345018, 17.467283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308223, -0.728659, -0.611600,
		-0.032117, -0.634564, 0.772203,
		-0.950772, 0.257654, 0.172185,
		9.565887, 16.422314, 17.518938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.912821, 15.542757, 17.453196>,  <10.231428, 16.241957, 17.398409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.912821, 15.542757, 17.453196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.610676, 15.792300, 17.372969>,  <9.429389, 15.942026, 17.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.610676, 15.792300, 17.372969>,  <9.912821, 15.542757, 17.453196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.610676, 15.792300, 17.372969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391098, -0.674760, -0.625892,
		-0.525804, -0.394334, 0.753679,
		-0.755363, 0.623859, -0.200568,
		9.384068, 15.979458, 17.312798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.317125, 15.156399, 17.561493>,  <9.912821, 15.542757, 17.453196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.317125, 15.156399, 17.561493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.225437, 15.450272, 17.306087>,  <9.170424, 15.626595, 17.152843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.225437, 15.450272, 17.306087>,  <9.317125, 15.156399, 17.561493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.225437, 15.450272, 17.306087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400800, -0.669027, -0.625909,
		-0.887027, 0.112446, 0.447815,
		-0.229220, 0.734683, -0.638514,
		9.156672, 15.670676, 17.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626536, 14.901307, 17.338493>,  <9.317125, 15.156399, 17.561493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626536, 14.901307, 17.338493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.729462, 15.176952, 17.067522>,  <8.791217, 15.342340, 16.904940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.729462, 15.176952, 17.067522>,  <8.626536, 14.901307, 17.338493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.729462, 15.176952, 17.067522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507711, -0.500069, -0.701541,
		-0.822204, 0.524454, 0.221197,
		0.257312, 0.689114, -0.677430,
		8.806656, 15.383687, 16.864292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.967187, 15.068555, 16.939877>,  <8.626536, 14.901307, 17.338493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.967187, 15.068555, 16.939877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.298975, 15.144356, 16.729708>,  <8.498048, 15.189837, 16.603605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.298975, 15.144356, 16.729708>,  <7.967187, 15.068555, 16.939877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.298975, 15.144356, 16.729708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372572, -0.513127, -0.773234,
		-0.416138, 0.837132, -0.355020,
		0.829469, 0.189502, -0.525424,
		8.547815, 15.201206, 16.572081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.719226, 15.124496, 16.314947>,  <7.967187, 15.068555, 16.939877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.719226, 15.124496, 16.314947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.109462, 15.074847, 16.242481>,  <8.343603, 15.045057, 16.199001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.109462, 15.074847, 16.242481>,  <7.719226, 15.124496, 16.314947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.109462, 15.074847, 16.242481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218819, -0.479612, -0.849759,
		0.018587, 0.868657, -0.495065,
		0.975588, -0.124124, -0.181164,
		8.402139, 15.037610, 16.188131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.781590, 15.473600, 15.754105>,  <7.719226, 15.124496, 16.314947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.781590, 15.473600, 15.754105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.098918, 15.230301, 15.764527>,  <8.289314, 15.084321, 15.770781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.098918, 15.230301, 15.764527>,  <7.781590, 15.473600, 15.754105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.098918, 15.230301, 15.764527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170323, -0.262831, -0.949689,
		0.584496, 0.748968, -0.312107,
		0.793319, -0.608249, 0.026057,
		8.336913, 15.047826, 15.772345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.982027, 15.512425, 15.143258>,  <7.781590, 15.473600, 15.754105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.982027, 15.512425, 15.143258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185750, 15.186729, 15.254699>,  <8.307983, 14.991312, 15.321563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185750, 15.186729, 15.254699>,  <7.982027, 15.512425, 15.143258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.185750, 15.186729, 15.254699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085360, -0.369936, -0.925128,
		0.856341, 0.447393, -0.257914,
		0.509307, -0.814240, 0.278602,
		8.338542, 14.942457, 15.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.563725, 15.454861, 14.729006>,  <7.982027, 15.512425, 15.143258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.563725, 15.454861, 14.729006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420230, 15.111318, 14.875251>,  <8.334133, 14.905192, 14.962997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420230, 15.111318, 14.875251>,  <8.563725, 15.454861, 14.729006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.420230, 15.111318, 14.875251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116217, -0.347539, -0.930435,
		0.926175, -0.376272, 0.024861,
		-0.358737, -0.858857, 0.365612,
		8.312609, 14.853661, 14.984935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.931989, 14.828543, 14.332233>,  <8.563725, 15.454861, 14.729006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.931989, 14.828543, 14.332233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.572476, 14.761876, 14.494426>,  <8.356769, 14.721876, 14.591742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.572476, 14.761876, 14.494426>,  <8.931989, 14.828543, 14.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.572476, 14.761876, 14.494426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276736, -0.501661, -0.819606,
		0.340016, -0.848857, 0.404760,
		-0.898780, -0.166667, 0.405482,
		8.302842, 14.711876, 14.616070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.879701, 14.159697, 13.984241>,  <8.931989, 14.828543, 14.332233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.879701, 14.159697, 13.984241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.521118, 14.292562, 14.101565>,  <8.305968, 14.372281, 14.171960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.521118, 14.292562, 14.101565>,  <8.879701, 14.159697, 13.984241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.521118, 14.292562, 14.101565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414154, -0.392606, -0.821180,
		-0.157609, -0.857629, 0.489521,
		-0.896457, 0.332163, 0.293313,
		8.252181, 14.392211, 14.189559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.250078, 14.114789, 14.664819>,  <8.879701, 14.159697, 13.984241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.250078, 14.114789, 14.664819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050338, 14.345240, 14.923656>,  <8.930493, 14.483510, 15.078958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050338, 14.345240, 14.923656>,  <9.250078, 14.114789, 14.664819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050338, 14.345240, 14.923656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294210, 0.589736, -0.752098,
		-0.814916, -0.565942, -0.124983,
		-0.499351, 0.576126, 0.647091,
		8.900533, 14.518078, 15.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.952501, 14.187127, 15.062990>,  <9.250078, 14.114789, 14.664819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.952501, 14.187127, 15.062990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245100, 14.074009, 15.311164>,  <10.420659, 14.006138, 15.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245100, 14.074009, 15.311164>,  <9.952501, 14.187127, 15.062990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245100, 14.074009, 15.311164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110209, -0.848932, -0.516883,
		0.672878, 0.446476, -0.589825,
		0.731498, -0.282795, 0.620434,
		10.464549, 13.989170, 15.497294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.589699, 14.045454, 14.780809>,  <9.952501, 14.187127, 15.062990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.589699, 14.045454, 14.780809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.656010, 13.819180, 15.103924>,  <10.695796, 13.683416, 15.297792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.656010, 13.819180, 15.103924>,  <10.589699, 14.045454, 14.780809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.656010, 13.819180, 15.103924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218397, -0.777722, -0.589450,
		0.961676, 0.274136, -0.005385,
		0.165777, -0.565684, 0.807787,
		10.705743, 13.649475, 15.346260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.265293, 13.985956, 15.190295>,  <10.589699, 14.045454, 14.780809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.265293, 13.985956, 15.190295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.468302, 13.829454, 14.883221>,  <11.590107, 13.735554, 14.698977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.468302, 13.829454, 14.883221>,  <11.265293, 13.985956, 15.190295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.468302, 13.829454, 14.883221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813492, 0.076078, -0.576579,
		0.283993, 0.917133, -0.279671,
		0.507523, -0.391254, -0.767685,
		11.620559, 13.712078, 14.652915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193277, 13.967197, 15.876667>,  <11.265293, 13.985956, 15.190295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193277, 13.967197, 15.876667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003017, 14.029953, 16.222879>,  <10.888862, 14.067606, 16.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003017, 14.029953, 16.222879>,  <11.193277, 13.967197, 15.876667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003017, 14.029953, 16.222879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856423, -0.141958, 0.496375,
		0.200744, 0.977361, -0.066841,
		-0.475649, 0.156888, 0.865531,
		10.860323, 14.077020, 16.482538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479311, 14.461852, 16.366199>,  <11.193277, 13.967197, 15.876667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479311, 14.461852, 16.366199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.265737, 14.233908, 16.616055>,  <11.137592, 14.097141, 16.765968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.265737, 14.233908, 16.616055>,  <11.479311, 14.461852, 16.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.265737, 14.233908, 16.616055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747217, 0.027718, 0.664002,
		-0.395703, 0.821274, 0.411010,
		-0.533935, -0.569861, 0.624638,
		11.105556, 14.062949, 16.803446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482892, 14.914891, 17.032480>,  <11.479311, 14.461852, 16.366199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482892, 14.914891, 17.032480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449579, 14.517495, 17.063570>,  <11.429591, 14.279058, 17.082224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449579, 14.517495, 17.063570>,  <11.482892, 14.914891, 17.032480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449579, 14.517495, 17.063570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709021, -0.004267, 0.705175,
		-0.700252, 0.113839, 0.704760,
		-0.083283, -0.993490, 0.077726,
		11.424594, 14.219448, 17.086887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.417546, 14.701944, 17.723267>,  <11.482892, 14.914891, 17.032480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.417546, 14.701944, 17.723267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589908, 14.405462, 17.517380>,  <11.693324, 14.227572, 17.393847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589908, 14.405462, 17.517380>,  <11.417546, 14.701944, 17.723267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.589908, 14.405462, 17.517380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703531, -0.081272, 0.706003,
		-0.565126, -0.666340, 0.486441,
		0.430903, -0.741206, -0.514719,
		11.719178, 14.183101, 17.362965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.216044, 14.082415, 18.077900>,  <11.417546, 14.701944, 17.723267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.216044, 14.082415, 18.077900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557006, 14.014087, 17.880222>,  <11.761582, 13.973090, 17.761616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557006, 14.014087, 17.880222>,  <11.216044, 14.082415, 18.077900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557006, 14.014087, 17.880222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447778, -0.249573, 0.858608,
		-0.270017, -0.953168, -0.136240,
		0.852400, -0.170834, -0.494197,
		11.812727, 13.962841, 17.731964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.447633, 13.442643, 18.349754>,  <11.216044, 14.082415, 18.077900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.447633, 13.442643, 18.349754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771414, 13.606210, 18.181196>,  <11.965682, 13.704350, 18.080061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.771414, 13.606210, 18.181196>,  <11.447633, 13.442643, 18.349754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771414, 13.606210, 18.181196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527096, -0.189762, 0.828348,
		0.258762, -0.892623, -0.369143,
		0.809452, 0.408918, -0.421395,
		12.014250, 13.728885, 18.054777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973475, 12.939614, 18.494986>,  <11.447633, 13.442643, 18.349754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973475, 12.939614, 18.494986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176249, 13.266566, 18.385509>,  <12.297914, 13.462737, 18.319824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176249, 13.266566, 18.385509>,  <11.973475, 12.939614, 18.494986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.176249, 13.266566, 18.385509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604362, -0.110638, 0.788990,
		0.614623, -0.565377, -0.550079,
		0.506936, 0.817379, -0.273692,
		12.328329, 13.511780, 18.303402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.692797, 12.748075, 18.456606>,  <11.973475, 12.939614, 18.494986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.692797, 12.748075, 18.456606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683397, 13.141113, 18.530308>,  <12.677757, 13.376937, 18.574528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683397, 13.141113, 18.530308>,  <12.692797, 12.748075, 18.456606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683397, 13.141113, 18.530308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594799, -0.134393, 0.792561,
		0.803531, 0.128218, -0.581290,
		-0.023499, 0.982598, 0.184253,
		12.676348, 13.435893, 18.585583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373211, 12.953753, 18.464674>,  <12.692797, 12.748075, 18.456606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373211, 12.953753, 18.464674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.217009, 13.250484, 18.682737>,  <13.123287, 13.428522, 18.813576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.217009, 13.250484, 18.682737>,  <13.373211, 12.953753, 18.464674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.217009, 13.250484, 18.682737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726478, -0.115408, 0.677429,
		0.565451, 0.660586, -0.493854,
		-0.390505, 0.741827, 0.545159,
		13.099857, 13.473032, 18.846285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959765, 13.433353, 18.725906>,  <13.373211, 12.953753, 18.464674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959765, 13.433353, 18.725906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644725, 13.478419, 18.968225>,  <13.455701, 13.505459, 19.113617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644725, 13.478419, 18.968225>,  <13.959765, 13.433353, 18.725906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644725, 13.478419, 18.968225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614478, 0.070463, 0.785781,
		0.045843, 0.991131, -0.124726,
		-0.787601, 0.112664, 0.605798,
		13.408444, 13.512218, 19.149965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222140, 14.041667, 19.116774>,  <13.959765, 13.433353, 18.725906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222140, 14.041667, 19.116774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.911329, 13.865038, 19.296213>,  <13.724842, 13.759061, 19.403877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.911329, 13.865038, 19.296213>,  <14.222140, 14.041667, 19.116774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.911329, 13.865038, 19.296213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488830, 0.025690, 0.872001,
		-0.396576, 0.896858, 0.195892,
		-0.777028, -0.441573, 0.448599,
		13.678221, 13.732566, 19.430792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290959, 14.345891, 19.818233>,  <14.222140, 14.041667, 19.116774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290959, 14.345891, 19.818233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004437, 14.072498, 19.874462>,  <13.832524, 13.908463, 19.908199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004437, 14.072498, 19.874462>,  <14.290959, 14.345891, 19.818233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004437, 14.072498, 19.874462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317540, -0.139898, 0.937868,
		-0.621350, 0.716437, 0.317242,
		-0.716305, -0.683481, 0.140572,
		13.789546, 13.867454, 19.916634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825591, 14.490083, 20.403116>,  <14.290959, 14.345891, 19.818233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825591, 14.490083, 20.403116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.866511, 14.096010, 20.348047>,  <13.891064, 13.859567, 20.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.866511, 14.096010, 20.348047>,  <13.825591, 14.490083, 20.403116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866511, 14.096010, 20.348047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248997, -0.108633, 0.962393,
		-0.963086, -0.132734, 0.234194,
		0.102301, -0.985180, -0.137674,
		13.897202, 13.800456, 20.306746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544374, 14.146509, 21.024086>,  <13.825591, 14.490083, 20.403116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544374, 14.146509, 21.024086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735612, 13.843609, 20.846098>,  <13.850354, 13.661869, 20.739305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735612, 13.843609, 20.846098>,  <13.544374, 14.146509, 21.024086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735612, 13.843609, 20.846098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483489, -0.196049, 0.853114,
		-0.733257, -0.623006, 0.272392,
		0.478093, -0.757251, -0.444971,
		13.879040, 13.616434, 20.712606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403865, 13.579877, 21.524935>,  <13.544374, 14.146509, 21.024086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403865, 13.579877, 21.524935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706927, 13.451724, 21.297491>,  <13.888764, 13.374832, 21.161026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706927, 13.451724, 21.297491>,  <13.403865, 13.579877, 21.524935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706927, 13.451724, 21.297491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259625, -0.651371, 0.712959,
		-0.598792, -0.687803, -0.410336,
		0.757657, -0.320381, -0.568606,
		13.934224, 13.355610, 21.126909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327626, 12.968099, 21.670618>,  <13.403865, 13.579877, 21.524935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327626, 12.968099, 21.670618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705062, 13.043722, 21.561882>,  <13.931523, 13.089096, 21.496641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705062, 13.043722, 21.561882>,  <13.327626, 12.968099, 21.670618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705062, 13.043722, 21.561882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331069, -0.524234, 0.784584,
		0.005826, -0.830322, -0.557253,
		0.943588, 0.189060, -0.271840,
		13.988138, 13.100440, 21.480330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656805, 12.377818, 21.732151>,  <13.327626, 12.968099, 21.670618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656805, 12.377818, 21.732151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968213, 12.628633, 21.721338>,  <14.155058, 12.779121, 21.714849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968213, 12.628633, 21.721338>,  <13.656805, 12.377818, 21.732151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968213, 12.628633, 21.721338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264775, -0.289079, 0.919961,
		0.569033, -0.723367, -0.391078,
		0.778521, 0.627036, -0.027033,
		14.201770, 12.816743, 21.713228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325307, 11.977887, 21.783175>,  <13.656805, 12.377818, 21.732151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325307, 11.977887, 21.783175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383677, 12.353296, 21.908319>,  <14.418698, 12.578542, 21.983406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383677, 12.353296, 21.908319>,  <14.325307, 11.977887, 21.783175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383677, 12.353296, 21.908319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387046, -0.345200, 0.855004,
		0.910441, -0.003673, -0.413624,
		0.145923, 0.938522, 0.312862,
		14.427454, 12.634853, 22.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875729, 11.921740, 22.309893>,  <14.325307, 11.977887, 21.783175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875729, 11.921740, 22.309893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698831, 12.269768, 22.396975>,  <14.592691, 12.478585, 22.449224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.698831, 12.269768, 22.396975>,  <14.875729, 11.921740, 22.309893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698831, 12.269768, 22.396975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056789, -0.215080, 0.974944,
		0.895095, 0.443527, 0.045708,
		-0.442245, 0.870071, 0.217704,
		14.566157, 12.530789, 22.462286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265446, 12.218084, 22.798004>,  <14.875729, 11.921740, 22.309893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265446, 12.218084, 22.798004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914458, 12.407427, 22.828945>,  <14.703866, 12.521032, 22.847509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914458, 12.407427, 22.828945>,  <15.265446, 12.218084, 22.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914458, 12.407427, 22.828945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040423, -0.233686, 0.971472,
		0.477929, 0.849308, 0.224186,
		-0.877468, 0.473357, 0.077354,
		14.651218, 12.549434, 22.852152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322379, 12.432436, 23.466755>,  <15.265446, 12.218084, 22.798004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322379, 12.432436, 23.466755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936780, 12.519920, 23.406258>,  <14.705420, 12.572412, 23.369959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936780, 12.519920, 23.406258>,  <15.322379, 12.432436, 23.466755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936780, 12.519920, 23.406258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152377, 0.011767, 0.988252,
		0.217922, 0.975718, 0.021983,
		-0.963997, 0.218712, -0.151242,
		14.647581, 12.585534, 23.360886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156677, 13.060208, 23.903397>,  <15.322379, 12.432436, 23.466755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156677, 13.060208, 23.903397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842325, 12.825155, 23.826372>,  <14.653714, 12.684124, 23.780157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842325, 12.825155, 23.826372>,  <15.156677, 13.060208, 23.903397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842325, 12.825155, 23.826372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268527, 0.043792, 0.962276,
		-0.557032, 0.807942, -0.192211,
		-0.785881, -0.587632, -0.192561,
		14.606561, 12.648866, 23.768604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614499, 13.301891, 24.386309>,  <15.156677, 13.060208, 23.903397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614499, 13.301891, 24.386309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487325, 12.941562, 24.268032>,  <14.411020, 12.725364, 24.197065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487325, 12.941562, 24.268032>,  <14.614499, 13.301891, 24.386309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487325, 12.941562, 24.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346719, -0.179805, 0.920574,
		-0.882441, 0.395206, -0.255167,
		-0.317936, -0.900823, -0.295692,
		14.391944, 12.671314, 24.179325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013930, 13.221156, 24.633856>,  <14.614499, 13.301891, 24.386309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013930, 13.221156, 24.633856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128867, 12.844747, 24.562403>,  <14.197829, 12.618901, 24.519531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128867, 12.844747, 24.562403>,  <14.013930, 13.221156, 24.633856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.128867, 12.844747, 24.562403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402758, -0.287915, 0.868845,
		-0.869035, -0.177709, -0.461734,
		0.287341, -0.941023, -0.178634,
		14.215070, 12.562440, 24.508812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420585, 12.850007, 24.918177>,  <14.013930, 13.221156, 24.633856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420585, 12.850007, 24.918177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693718, 12.564666, 24.855103>,  <13.857597, 12.393461, 24.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693718, 12.564666, 24.855103>,  <13.420585, 12.850007, 24.918177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693718, 12.564666, 24.855103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243035, -0.425345, 0.871789,
		-0.688966, -0.556962, -0.463809,
		0.682832, -0.713355, -0.157687,
		13.898568, 12.350659, 24.807796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135492, 12.227131, 25.094086>,  <13.420585, 12.850007, 24.918177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135492, 12.227131, 25.094086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523131, 12.133915, 25.126438>,  <13.755715, 12.077986, 25.145849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523131, 12.133915, 25.126438>,  <13.135492, 12.227131, 25.094086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523131, 12.133915, 25.126438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178992, -0.438710, 0.880622,
		-0.169735, -0.867886, -0.466865,
		0.969098, -0.233038, 0.080880,
		13.813861, 12.064003, 25.150702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247563, 11.476469, 25.299149>,  <13.135492, 12.227131, 25.094086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247563, 11.476469, 25.299149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595901, 11.656154, 25.378986>,  <13.804904, 11.763965, 25.426889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595901, 11.656154, 25.378986>,  <13.247563, 11.476469, 25.299149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595901, 11.656154, 25.378986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061192, -0.501956, 0.862726,
		0.487735, -0.739087, -0.464613,
		0.870845, 0.449212, 0.199595,
		13.857155, 11.790917, 25.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689023, 10.924138, 25.459087>,  <13.247563, 11.476469, 25.299149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689023, 10.924138, 25.459087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878559, 11.225417, 25.641588>,  <13.992281, 11.406185, 25.751089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878559, 11.225417, 25.641588>,  <13.689023, 10.924138, 25.459087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878559, 11.225417, 25.641588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054114, -0.492227, 0.868783,
		0.878947, -0.436354, -0.192478,
		0.473840, 0.753199, 0.456254,
		14.020711, 11.451377, 25.778465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243640, 10.608138, 25.835308>,  <13.689023, 10.924138, 25.459087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243640, 10.608138, 25.835308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182158, 10.970203, 25.993828>,  <14.145267, 11.187443, 26.088940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182158, 10.970203, 25.993828>,  <14.243640, 10.608138, 25.835308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182158, 10.970203, 25.993828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186394, -0.367307, 0.911232,
		0.970377, 0.213931, -0.112259,
		-0.153707, 0.905163, 0.396302,
		14.136045, 11.241753, 26.112719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805000, 10.768353, 26.254276>,  <14.243640, 10.608138, 25.835308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805000, 10.768353, 26.254276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525022, 11.012304, 26.402935>,  <14.357034, 11.158675, 26.492130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525022, 11.012304, 26.402935>,  <14.805000, 10.768353, 26.254276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525022, 11.012304, 26.402935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215241, -0.316041, 0.924007,
		0.680988, 0.726750, 0.089941,
		-0.699947, 0.609879, 0.371646,
		14.315038, 11.195268, 26.514429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082554, 11.208838, 26.817554>,  <14.805000, 10.768353, 26.254276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082554, 11.208838, 26.817554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686274, 11.174733, 26.859964>,  <14.448505, 11.154270, 26.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686274, 11.174733, 26.859964>,  <15.082554, 11.208838, 26.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686274, 11.174733, 26.859964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129859, -0.360041, 0.923854,
		-0.040597, 0.929032, 0.367766,
		-0.990701, -0.085263, 0.106027,
		14.389063, 11.149155, 26.891773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912297, 11.573050, 27.513418>,  <15.082554, 11.208838, 26.817554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912297, 11.573050, 27.513418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621378, 11.316750, 27.415052>,  <14.446827, 11.162969, 27.356033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621378, 11.316750, 27.415052>,  <14.912297, 11.573050, 27.513418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621378, 11.316750, 27.415052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016760, -0.374780, 0.926962,
		-0.686117, 0.670056, 0.283315,
		-0.727298, -0.640753, -0.245913,
		14.403189, 11.124523, 27.341278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396080, 11.647536, 27.937174>,  <14.912297, 11.573050, 27.513418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396080, 11.647536, 27.937174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358904, 11.282289, 27.778391>,  <14.336598, 11.063140, 27.683121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358904, 11.282289, 27.778391>,  <14.396080, 11.647536, 27.937174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.358904, 11.282289, 27.778391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043350, -0.402018, 0.914605,
		-0.994728, 0.067795, 0.076947,
		-0.092940, -0.913119, -0.396959,
		14.331022, 11.008353, 27.659304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105058, 11.365065, 28.502716>,  <14.396080, 11.647536, 27.937174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105058, 11.365065, 28.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180512, 11.063727, 28.250719>,  <14.225785, 10.882925, 28.099522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180512, 11.063727, 28.250719>,  <14.105058, 11.365065, 28.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180512, 11.063727, 28.250719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098159, -0.652762, 0.751177,
		-0.977129, -0.079860, -0.197082,
		0.188637, -0.753342, -0.629993,
		14.237103, 10.837725, 28.061722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676495, 10.871602, 28.756536>,  <14.105058, 11.365065, 28.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676495, 10.871602, 28.756536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940498, 10.671348, 28.532482>,  <14.098901, 10.551195, 28.398050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940498, 10.671348, 28.532482>,  <13.676495, 10.871602, 28.756536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940498, 10.671348, 28.532482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027338, -0.729098, 0.683863,
		-0.750759, -0.466670, -0.467526,
		0.660011, -0.500635, -0.560134,
		14.138501, 10.521157, 28.364441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630929, 10.178688, 29.023911>,  <13.676495, 10.871602, 28.756536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630929, 10.178688, 29.023911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.983137, 10.165841, 28.834743>,  <14.194462, 10.158133, 28.721243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.983137, 10.165841, 28.834743>,  <13.630929, 10.178688, 29.023911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983137, 10.165841, 28.834743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389413, -0.519839, 0.760345,
		-0.270261, -0.853660, -0.445222,
		0.880520, -0.032117, -0.472919,
		14.247293, 10.156206, 28.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882177, 9.437258, 29.138309>,  <13.630929, 10.178688, 29.023911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882177, 9.437258, 29.138309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183265, 9.681990, 29.041082>,  <14.363917, 9.828829, 28.982746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183265, 9.681990, 29.041082>,  <13.882177, 9.437258, 29.138309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.183265, 9.681990, 29.041082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561250, -0.403383, 0.722690,
		0.344114, -0.680403, -0.647022,
		0.752718, 0.611829, -0.243066,
		14.409081, 9.865539, 28.968163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478962, 9.074040, 29.185658>,  <13.882177, 9.437258, 29.138309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478962, 9.074040, 29.185658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608384, 9.446189, 29.254618>,  <14.686037, 9.669478, 29.295994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608384, 9.446189, 29.254618>,  <14.478962, 9.074040, 29.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608384, 9.446189, 29.254618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480027, -0.318410, 0.817429,
		0.815406, -0.181727, -0.549626,
		0.323555, 0.930371, 0.172400,
		14.705451, 9.725300, 29.306337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145656, 8.951458, 29.449594>,  <14.478962, 9.074040, 29.185658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.145656, 8.951458, 29.449594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032957, 9.308494, 29.590393>,  <14.965338, 9.522716, 29.674871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032957, 9.308494, 29.590393>,  <15.145656, 8.951458, 29.449594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032957, 9.308494, 29.590393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400823, -0.223822, 0.888395,
		0.871757, 0.391391, -0.294709,
		-0.281747, 0.892590, 0.351996,
		14.948433, 9.576271, 29.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729574, 9.298627, 29.767305>,  <15.145656, 8.951458, 29.449594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729574, 9.298627, 29.767305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430819, 9.488485, 29.953581>,  <15.251565, 9.602400, 30.065346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430819, 9.488485, 29.953581>,  <15.729574, 9.298627, 29.767305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430819, 9.488485, 29.953581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389927, -0.254655, 0.884934,
		0.538620, 0.842533, 0.005122,
		-0.746890, 0.474646, 0.465689,
		15.206752, 9.630879, 30.093288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038120, 9.713820, 30.341602>,  <15.729574, 9.298627, 29.767305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038120, 9.713820, 30.341602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657317, 9.655890, 30.449459>,  <15.428835, 9.621133, 30.514174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657317, 9.655890, 30.449459>,  <16.038120, 9.713820, 30.341602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657317, 9.655890, 30.449459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301142, -0.285671, 0.909783,
		-0.054729, 0.947322, 0.315573,
		-0.952008, -0.144824, 0.269644,
		15.371715, 9.612443, 30.530352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035393, 9.643185, 31.059729>,  <16.038120, 9.713820, 30.341602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035393, 9.643185, 31.059729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662317, 9.512935, 30.997681>,  <15.438472, 9.434785, 30.960451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662317, 9.512935, 30.997681>,  <16.035393, 9.643185, 31.059729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662317, 9.512935, 30.997681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061915, -0.568227, 0.820540,
		-0.355331, 0.755703, 0.550139,
		-0.932688, -0.325624, -0.155119,
		15.382511, 9.415247, 30.951145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507395, 9.879487, 31.717443>,  <16.035393, 9.643185, 31.059729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507395, 9.879487, 31.717443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.375404, 9.567342, 31.504972>,  <15.296209, 9.380054, 31.377491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.375404, 9.567342, 31.504972>,  <15.507395, 9.879487, 31.717443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375404, 9.567342, 31.504972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026811, -0.570213, 0.821059,
		-0.943608, 0.256689, 0.209080,
		-0.329977, -0.780364, -0.531175,
		15.276411, 9.333233, 31.345619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037699, 9.492307, 32.192490>,  <15.507395, 9.879487, 31.717443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037699, 9.492307, 32.192490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160474, 9.214102, 31.932627>,  <15.234138, 9.047179, 31.776709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160474, 9.214102, 31.932627>,  <15.037699, 9.492307, 32.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160474, 9.214102, 31.932627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027872, -0.675743, 0.736610,
		-0.951321, -0.244201, -0.188026,
		0.306938, -0.695512, -0.649655,
		15.252555, 9.005448, 31.737730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671461, 8.898394, 32.302387>,  <15.037699, 9.492307, 32.192490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671461, 8.898394, 32.302387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006210, 8.750325, 32.141083>,  <15.207060, 8.661484, 32.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006210, 8.750325, 32.141083>,  <14.671461, 8.898394, 32.302387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006210, 8.750325, 32.141083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085191, -0.815782, 0.572050,
		-0.540728, -0.444379, -0.714241,
		0.836873, -0.370171, -0.403259,
		15.257272, 8.639274, 32.020103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466170, 8.280061, 32.017879>,  <14.671461, 8.898394, 32.302387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466170, 8.280061, 32.017879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.855224, 8.280990, 32.110813>,  <15.088655, 8.281547, 32.166573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.855224, 8.280990, 32.110813>,  <14.466170, 8.280061, 32.017879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855224, 8.280990, 32.110813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119135, -0.853506, 0.507281,
		0.199473, -0.521078, -0.829872,
		0.972634, 0.002322, 0.232331,
		15.147014, 8.281686, 32.180511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827725, 7.548810, 31.936129>,  <14.466170, 8.280061, 32.017879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827725, 7.548810, 31.936129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032158, 7.756381, 32.210213>,  <15.154818, 7.880924, 32.374664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032158, 7.756381, 32.210213>,  <14.827725, 7.548810, 31.936129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032158, 7.756381, 32.210213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141814, -0.735353, 0.662680,
		0.847753, -0.435855, -0.302233,
		0.511080, 0.518928, 0.685208,
		15.185482, 7.912059, 32.415775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262139, 7.171066, 32.434372>,  <14.827725, 7.548810, 31.936129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262139, 7.171066, 32.434372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255438, 7.491701, 32.673428>,  <15.251417, 7.684082, 32.816860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255438, 7.491701, 32.673428>,  <15.262139, 7.171066, 32.434372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255438, 7.491701, 32.673428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062644, -0.597395, 0.799497,
		0.997895, -0.024044, 0.060223,
		-0.016754, 0.801587, 0.597644,
		15.250412, 7.732177, 32.852722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677880, 7.056551, 33.169689>,  <15.262139, 7.171066, 32.434372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677880, 7.056551, 33.169689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374991, 7.310785, 33.229881>,  <15.193258, 7.463326, 33.265995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374991, 7.310785, 33.229881>,  <15.677880, 7.056551, 33.169689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374991, 7.310785, 33.229881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, -0.537068, 0.790776,
		0.583423, 0.554605, 0.593321,
		-0.757222, 0.635587, 0.150477,
		15.147824, 7.501462, 33.275024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600302, 7.441253, 33.733967>,  <15.677880, 7.056551, 33.169689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600302, 7.441253, 33.733967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997042, 7.403340, 33.699905>,  <16.235086, 7.380592, 33.679470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997042, 7.403340, 33.699905>,  <15.600302, 7.441253, 33.733967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997042, 7.403340, 33.699905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104915, -0.228327, -0.967915,
		0.072298, 0.968960, -0.236410,
		0.991850, -0.094782, -0.085151,
		16.294596, 7.374905, 33.674358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971765, 7.972482, 33.224537>,  <15.600302, 7.441253, 33.733967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971765, 7.972482, 33.224537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127901, 7.607477, 33.273445>,  <16.221582, 7.388474, 33.302792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127901, 7.607477, 33.273445>,  <15.971765, 7.972482, 33.224537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127901, 7.607477, 33.273445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178145, -0.205159, -0.962379,
		0.903270, 0.353875, -0.242642,
		0.390342, -0.912514, 0.122273,
		16.245005, 7.333723, 33.310127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.548594, 7.953465, 32.758286>,  <15.971765, 7.972482, 33.224537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.548594, 7.953465, 32.758286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385710, 7.600376, 32.852077>,  <16.287979, 7.388522, 32.908352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385710, 7.600376, 32.852077>,  <16.548594, 7.953465, 32.758286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385710, 7.600376, 32.852077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138229, -0.194204, -0.971173,
		0.902813, -0.427884, -0.042936,
		-0.407211, -0.882723, 0.234476,
		16.263546, 7.335559, 32.922421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871265, 7.308142, 32.584122>,  <16.548594, 7.953465, 32.758286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871265, 7.308142, 32.584122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475126, 7.258989, 32.558468>,  <16.237444, 7.229498, 32.543076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475126, 7.258989, 32.558468>,  <16.871265, 7.308142, 32.584122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475126, 7.258989, 32.558468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065622, -0.008056, -0.997812,
		0.122098, -0.992388, 0.016043,
		-0.990347, -0.122884, -0.064139,
		16.178022, 7.222125, 32.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666945, 6.741611, 32.223068>,  <16.871265, 7.308142, 32.584122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666945, 6.741611, 32.223068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374319, 7.010984, 32.180534>,  <16.198744, 7.172608, 32.155014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374319, 7.010984, 32.180534>,  <16.666945, 6.741611, 32.223068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374319, 7.010984, 32.180534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028806, -0.186356, -0.982060,
		-0.681167, -0.715374, 0.155730,
		-0.731561, 0.673432, -0.106333,
		16.154850, 7.213014, 32.148636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122332, 6.475978, 31.884932>,  <16.666945, 6.741611, 32.223068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122332, 6.475978, 31.884932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189449, 6.862688, 31.807789>,  <16.229719, 7.094713, 31.761503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189449, 6.862688, 31.807789>,  <16.122332, 6.475978, 31.884932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189449, 6.862688, 31.807789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060935, -0.185084, -0.980832,
		-0.983937, 0.176329, 0.027854,
		0.167794, 0.966774, -0.192856,
		16.239788, 7.152720, 31.749931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173035, 6.282335, 31.230177>,  <16.122332, 6.475978, 31.884932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173035, 6.282335, 31.230177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211576, 6.680331, 31.240837>,  <16.234701, 6.919128, 31.247232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211576, 6.680331, 31.240837>,  <16.173035, 6.282335, 31.230177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211576, 6.680331, 31.240837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058887, 0.032427, -0.997738,
		-0.993604, 0.094567, 0.061717,
		0.096355, 0.994990, 0.026651,
		16.240482, 6.978828, 31.248833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562889, 6.514605, 30.980082>,  <16.173035, 6.282335, 31.230177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562889, 6.514605, 30.980082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856711, 6.777748, 30.913570>,  <16.033005, 6.935634, 30.873663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856711, 6.777748, 30.913570>,  <15.562889, 6.514605, 30.980082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856711, 6.777748, 30.913570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235681, 0.017559, -0.971672,
		-0.636303, 0.752937, 0.167943,
		0.734556, 0.657859, -0.166280,
		16.077078, 6.975106, 30.863686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236048, 7.043289, 30.546509>,  <15.562889, 6.514605, 30.980082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236048, 7.043289, 30.546509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631273, 7.069975, 30.490971>,  <15.868409, 7.085987, 30.457647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631273, 7.069975, 30.490971>,  <15.236048, 7.043289, 30.546509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631273, 7.069975, 30.490971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147711, 0.154592, -0.976874,
		-0.043708, 0.985723, 0.162601,
		0.988064, 0.066715, -0.138845,
		15.927692, 7.089989, 30.449318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370554, 7.700062, 30.190453>,  <15.236048, 7.043289, 30.546509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370554, 7.700062, 30.190453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663432, 7.442764, 30.100899>,  <15.839159, 7.288385, 30.047167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663432, 7.442764, 30.100899>,  <15.370554, 7.700062, 30.190453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663432, 7.442764, 30.100899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114369, 0.207930, -0.971435,
		0.671424, 0.736885, 0.078678,
		0.732195, -0.643246, -0.223886,
		15.883091, 7.249790, 30.033733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689694, 7.980278, 29.615004>,  <15.370554, 7.700062, 30.190453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689694, 7.980278, 29.615004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893939, 7.636506, 29.604759>,  <16.016485, 7.430243, 29.598612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893939, 7.636506, 29.604759>,  <15.689694, 7.980278, 29.615004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893939, 7.636506, 29.604759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437702, 0.285459, -0.852602,
		0.740062, 0.424139, 0.521933,
		0.510613, -0.859429, -0.025611,
		16.047123, 7.378677, 29.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441395, 8.160715, 29.487629>,  <15.689694, 7.980278, 29.615004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441395, 8.160715, 29.487629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360117, 7.782532, 29.385790>,  <16.311350, 7.555622, 29.324686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360117, 7.782532, 29.385790>,  <16.441395, 8.160715, 29.487629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360117, 7.782532, 29.385790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359708, 0.169760, -0.917492,
		0.910671, -0.278012, 0.305594,
		-0.203196, -0.945458, -0.254599,
		16.299158, 7.498895, 29.309410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041080, 7.879791, 29.334164>,  <16.441395, 8.160715, 29.487629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041080, 7.879791, 29.334164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796928, 7.630305, 29.138851>,  <16.650438, 7.480614, 29.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796928, 7.630305, 29.138851>,  <17.041080, 7.879791, 29.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796928, 7.630305, 29.138851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425640, 0.261612, -0.866250,
		0.668033, -0.736572, 0.105796,
		-0.610379, -0.623715, -0.488280,
		16.613815, 7.443191, 28.992367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370445, 7.505357, 28.841293>,  <17.041080, 7.879791, 29.334164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370445, 7.505357, 28.841293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993235, 7.468349, 28.713457>,  <16.766909, 7.446144, 28.636755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993235, 7.468349, 28.713457>,  <17.370445, 7.505357, 28.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993235, 7.468349, 28.713457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301605, 0.167825, -0.938546,
		0.140468, -0.981466, -0.130360,
		-0.943029, -0.092518, -0.319589,
		16.710325, 7.440592, 28.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351601, 7.226229, 28.226379>,  <17.370445, 7.505357, 28.841293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351601, 7.226229, 28.226379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983303, 7.381350, 28.209230>,  <16.762325, 7.474423, 28.198940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983303, 7.381350, 28.209230>,  <17.351601, 7.226229, 28.226379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983303, 7.381350, 28.209230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140083, 0.226021, -0.963998,
		-0.364152, -0.893601, -0.262432,
		-0.920744, 0.387804, -0.042873,
		16.707079, 7.497691, 28.196369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902983, 6.920081, 27.623194>,  <17.351601, 7.226229, 28.226379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902983, 6.920081, 27.623194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807919, 7.296453, 27.719664>,  <16.750881, 7.522277, 27.777546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807919, 7.296453, 27.719664>,  <16.902983, 6.920081, 27.623194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807919, 7.296453, 27.719664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035555, 0.256548, -0.965877,
		-0.970698, -0.220975, -0.094426,
		-0.237660, 0.940932, 0.241174,
		16.736620, 7.578733, 27.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692558, 7.089318, 26.991781>,  <16.902983, 6.920081, 27.623194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692558, 7.089318, 26.991781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674942, 7.439800, 27.183752>,  <16.664373, 7.650089, 27.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674942, 7.439800, 27.183752>,  <16.692558, 7.089318, 26.991781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674942, 7.439800, 27.183752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125978, 0.471686, -0.872721,
		-0.991055, -0.098894, 0.089610,
		-0.044039, 0.876204, 0.479925,
		16.661730, 7.702661, 27.327730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130060, 7.440118, 26.602879>,  <16.692558, 7.089318, 26.991781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130060, 7.440118, 26.602879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319513, 7.720097, 26.816700>,  <16.433186, 7.888084, 26.944992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319513, 7.720097, 26.816700>,  <16.130060, 7.440118, 26.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319513, 7.720097, 26.816700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228345, 0.683786, -0.693033,
		-0.850606, 0.206181, 0.483693,
		0.473633, 0.699947, 0.534552,
		16.461603, 7.930081, 26.977066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716502, 8.053123, 26.665901>,  <16.130060, 7.440118, 26.602879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716502, 8.053123, 26.665901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104612, 8.148705, 26.681225>,  <16.337479, 8.206054, 26.690420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104612, 8.148705, 26.681225>,  <15.716502, 8.053123, 26.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104612, 8.148705, 26.681225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153553, 0.730230, -0.665722,
		-0.187053, 0.640051, 0.745216,
		0.970275, 0.238956, 0.038310,
		16.395695, 8.220391, 26.692719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784933, 8.828060, 26.635551>,  <15.716502, 8.053123, 26.665901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784933, 8.828060, 26.635551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118685, 8.653071, 26.501429>,  <16.318935, 8.548079, 26.420956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118685, 8.653071, 26.501429>,  <15.784933, 8.828060, 26.635551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118685, 8.653071, 26.501429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041553, 0.656525, -0.753159,
		0.549623, 0.614487, 0.565969,
		0.834379, -0.437471, -0.335307,
		16.368998, 8.521830, 26.400837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352652, 9.373713, 26.427221>,  <15.784933, 8.828060, 26.635551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352652, 9.373713, 26.427221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444777, 9.044100, 26.220175>,  <16.500051, 8.846333, 26.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444777, 9.044100, 26.220175>,  <16.352652, 9.373713, 26.427221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444777, 9.044100, 26.220175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006984, 0.530503, -0.847654,
		0.973091, 0.198842, 0.116428,
		0.230315, -0.824032, -0.517616,
		16.513870, 8.796890, 26.064890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.696991, 9.602053, 25.878820>,  <16.352652, 9.373713, 26.427221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.696991, 9.602053, 25.878820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581186, 9.242384, 25.747566>,  <16.511703, 9.026583, 25.668814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581186, 9.242384, 25.747566>,  <16.696991, 9.602053, 25.878820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581186, 9.242384, 25.747566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189049, 0.389777, -0.901296,
		0.938319, -0.198903, -0.282833,
		-0.289512, -0.899173, -0.328133,
		16.494333, 8.972632, 25.649126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140125, 9.389486, 25.286583>,  <16.696991, 9.602053, 25.878820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140125, 9.389486, 25.286583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.801472, 9.179510, 25.251595>,  <16.598280, 9.053525, 25.230602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.801472, 9.179510, 25.251595>,  <17.140125, 9.389486, 25.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801472, 9.179510, 25.251595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083957, 0.294052, -0.952095,
		0.525514, -0.798731, -0.293027,
		-0.846632, -0.524940, -0.087469,
		16.547482, 9.022028, 25.225353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206446, 9.084853, 24.637676>,  <17.140125, 9.389486, 25.286583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206446, 9.084853, 24.637676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817493, 9.041435, 24.720324>,  <16.584122, 9.015385, 24.769913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817493, 9.041435, 24.720324>,  <17.206446, 9.084853, 24.637676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817493, 9.041435, 24.720324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231658, 0.341061, -0.911050,
		0.028422, -0.933753, -0.356787,
		-0.972382, -0.108546, 0.206618,
		16.525780, 9.008871, 24.782309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836042, 8.849429, 24.043936>,  <17.206446, 9.084853, 24.637676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.836042, 8.849429, 24.043936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509501, 8.971679, 24.239960>,  <16.313576, 9.045029, 24.357574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509501, 8.971679, 24.239960>,  <16.836042, 8.849429, 24.043936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509501, 8.971679, 24.239960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439216, 0.222470, -0.870400,
		-0.375039, -0.925797, -0.047380,
		-0.816355, 0.305624, 0.490060,
		16.264593, 9.063366, 24.386978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305258, 8.523586, 23.710793>,  <16.836042, 8.849429, 24.043936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305258, 8.523586, 23.710793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168041, 8.848781, 23.898994>,  <16.085711, 9.043898, 24.011915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168041, 8.848781, 23.898994>,  <16.305258, 8.523586, 23.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168041, 8.848781, 23.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281203, 0.389042, -0.877252,
		-0.896240, -0.433241, 0.095157,
		-0.343042, 0.812987, 0.470504,
		16.065128, 9.092677, 24.040146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702980, 8.683256, 23.427351>,  <16.305258, 8.523586, 23.710793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702980, 8.683256, 23.427351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782883, 9.035401, 23.599426>,  <15.830824, 9.246688, 23.702671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782883, 9.035401, 23.599426>,  <15.702980, 8.683256, 23.427351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782883, 9.035401, 23.599426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139348, 0.460096, -0.876866,
		-0.969886, 0.115214, 0.214583,
		0.199756, 0.880362, 0.430186,
		15.842810, 9.299510, 23.728481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126395, 9.110530, 23.377159>,  <15.702980, 8.683256, 23.427351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126395, 9.110530, 23.377159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420501, 9.379246, 23.413126>,  <15.596964, 9.540475, 23.434706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420501, 9.379246, 23.413126>,  <15.126395, 9.110530, 23.377159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420501, 9.379246, 23.413126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316307, 0.457434, -0.831086,
		-0.599447, 0.582626, 0.548827,
		0.735264, 0.671790, 0.089919,
		15.641080, 9.580783, 23.440102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794075, 9.781922, 23.245760>,  <15.126395, 9.110530, 23.377159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794075, 9.781922, 23.245760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.182660, 9.873937, 23.222628>,  <15.415812, 9.929145, 23.208748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.182660, 9.873937, 23.222628>,  <14.794075, 9.781922, 23.245760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182660, 9.873937, 23.222628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196270, 0.642693, -0.740557,
		-0.133188, 0.730773, 0.669501,
		0.971463, 0.230036, -0.057830,
		15.474099, 9.942947, 23.205278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847570, 10.506372, 23.033970>,  <14.794075, 9.781922, 23.245760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847570, 10.506372, 23.033970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193228, 10.334031, 22.929951>,  <15.400622, 10.230626, 22.867540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193228, 10.334031, 22.929951>,  <14.847570, 10.506372, 23.033970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193228, 10.334031, 22.929951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043486, 0.450875, -0.891527,
		0.501365, 0.781715, 0.370884,
		0.864142, -0.430853, -0.260047,
		15.452471, 10.204775, 22.851936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302914, 10.958719, 22.761976>,  <14.847570, 10.506372, 23.033970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302914, 10.958719, 22.761976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466143, 10.627912, 22.607306>,  <15.564080, 10.429427, 22.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466143, 10.627912, 22.607306>,  <15.302914, 10.958719, 22.761976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466143, 10.627912, 22.607306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059010, 0.398765, -0.915153,
		0.911041, 0.396266, 0.113922,
		0.408072, -0.827019, -0.386674,
		15.588564, 10.379806, 22.491302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711055, 11.195267, 22.231384>,  <15.302914, 10.958719, 22.761976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711055, 11.195267, 22.231384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663417, 10.810385, 22.133425>,  <15.634834, 10.579455, 22.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663417, 10.810385, 22.133425>,  <15.711055, 11.195267, 22.231384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663417, 10.810385, 22.133425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098369, 0.256876, -0.961425,
		0.987998, -0.090411, -0.125244,
		-0.119096, -0.962206, -0.244900,
		15.627688, 10.521723, 22.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234188, 11.100671, 21.644566>,  <15.711055, 11.195267, 22.231384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234188, 11.100671, 21.644566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967702, 10.802411, 21.649719>,  <15.807811, 10.623455, 21.652811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967702, 10.802411, 21.649719>,  <16.234188, 11.100671, 21.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967702, 10.802411, 21.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061329, 0.037563, -0.997411,
		0.743235, -0.665278, -0.070755,
		-0.666213, -0.745650, 0.012883,
		15.767838, 10.578716, 21.653584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487024, 10.562963, 21.248652>,  <16.234188, 11.100671, 21.644566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487024, 10.562963, 21.248652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087385, 10.549010, 21.258326>,  <15.847602, 10.540639, 21.264130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087385, 10.549010, 21.258326>,  <16.487024, 10.562963, 21.248652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087385, 10.549010, 21.258326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029967, 0.176148, -0.983907,
		0.030058, -0.983746, -0.177034,
		-0.999099, -0.034879, 0.024185,
		15.787656, 10.538547, 21.265581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445951, 10.265456, 20.604874>,  <16.487024, 10.562963, 21.248652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445951, 10.265456, 20.604874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077412, 10.388095, 20.700464>,  <15.856287, 10.461678, 20.757818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077412, 10.388095, 20.700464>,  <16.445951, 10.265456, 20.604874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077412, 10.388095, 20.700464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255197, -0.013321, -0.966797,
		-0.293234, -0.951746, 0.090516,
		-0.921352, 0.306597, 0.238976,
		15.801006, 10.480074, 20.772158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105423, 9.985020, 20.034826>,  <16.445951, 10.265456, 20.604874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105423, 9.985020, 20.034826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844372, 10.233692, 20.208075>,  <15.687741, 10.382895, 20.312023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844372, 10.233692, 20.208075>,  <16.105423, 9.985020, 20.034826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844372, 10.233692, 20.208075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337191, 0.273604, -0.900801,
		-0.678514, -0.733931, 0.031064,
		-0.652627, 0.621680, 0.433119,
		15.648583, 10.420197, 20.338011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356940, 9.812541, 19.912350>,  <16.105423, 9.985020, 20.034826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356940, 9.812541, 19.912350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407829, 10.200819, 19.993900>,  <15.438363, 10.433785, 20.042830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407829, 10.200819, 19.993900>,  <15.356940, 9.812541, 19.912350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407829, 10.200819, 19.993900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241966, 0.229708, -0.942702,
		-0.961908, 0.070603, 0.264099,
		0.127223, 0.970695, 0.203875,
		15.445996, 10.492027, 20.055063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949720, 10.086182, 19.473793>,  <15.356940, 9.812541, 19.912350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949720, 10.086182, 19.473793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129579, 10.419790, 19.601685>,  <15.237494, 10.619955, 19.678419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129579, 10.419790, 19.601685>,  <14.949720, 10.086182, 19.473793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129579, 10.419790, 19.601685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147544, 0.422392, -0.894324,
		-0.880936, 0.354956, 0.312982,
		0.449647, 0.834021, 0.319729,
		15.264473, 10.669996, 19.697603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379815, 10.722698, 19.350750>,  <14.949720, 10.086182, 19.473793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379815, 10.722698, 19.350750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764733, 10.830460, 19.365755>,  <14.995685, 10.895117, 19.374758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764733, 10.830460, 19.365755>,  <14.379815, 10.722698, 19.350750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764733, 10.830460, 19.365755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080068, 0.412356, -0.907498,
		-0.259952, 0.870278, 0.418379,
		0.962296, 0.269404, 0.037512,
		15.053422, 10.911281, 19.377008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306100, 11.233458, 19.058733>,  <14.379815, 10.722698, 19.350750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306100, 11.233458, 19.058733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705748, 11.217733, 19.052883>,  <14.945537, 11.208299, 19.049374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705748, 11.217733, 19.052883>,  <14.306100, 11.233458, 19.058733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705748, 11.217733, 19.052883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008521, 0.531640, -0.846928,
		0.041067, 0.846058, 0.531507,
		0.999120, -0.039310, -0.014624,
		15.005484, 11.205940, 19.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561876, 11.847684, 19.159586>,  <14.306100, 11.233458, 19.058733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561876, 11.847684, 19.159586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874334, 11.660889, 18.993824>,  <15.061810, 11.548812, 18.894367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874334, 11.660889, 18.993824>,  <14.561876, 11.847684, 19.159586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874334, 11.660889, 18.993824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005016, 0.659027, -0.752103,
		0.624328, 0.589581, 0.512453,
		0.781146, -0.466988, -0.414407,
		15.108678, 11.520792, 18.869501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093142, 12.452718, 18.975067>,  <14.561876, 11.847684, 19.159586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093142, 12.452718, 18.975067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.166693, 12.127607, 18.753948>,  <15.210823, 11.932541, 18.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.166693, 12.127607, 18.753948>,  <15.093142, 12.452718, 18.975067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.166693, 12.127607, 18.753948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067041, 0.571447, -0.817896,
		0.980660, 0.113333, 0.159566,
		0.183878, -0.812776, -0.552797,
		15.221856, 11.883775, 18.588110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669071, 12.675493, 18.550941>,  <15.093142, 12.452718, 18.975067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669071, 12.675493, 18.550941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488822, 12.357498, 18.388493>,  <15.380672, 12.166701, 18.291023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488822, 12.357498, 18.388493>,  <15.669071, 12.675493, 18.550941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488822, 12.357498, 18.388493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022112, 0.444849, -0.895333,
		0.892441, -0.412437, -0.182880,
		-0.450622, -0.794988, -0.406121,
		15.353636, 12.119001, 18.266657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082458, 12.382114, 18.051847>,  <15.669071, 12.675493, 18.550941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082458, 12.382114, 18.051847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721225, 12.250961, 17.940903>,  <15.504484, 12.172270, 17.874336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721225, 12.250961, 17.940903>,  <16.082458, 12.382114, 18.051847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721225, 12.250961, 17.940903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207418, 0.232512, -0.950219,
		0.376050, -0.915659, -0.141970,
		-0.903086, -0.327883, -0.277360,
		15.450299, 12.152596, 17.857695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733051, 12.707912, 18.396074>,  <16.082458, 12.382114, 18.051847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733051, 12.707912, 18.396074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061886, 12.651190, 18.175507>,  <17.259188, 12.617156, 18.043167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061886, 12.651190, 18.175507>,  <16.733051, 12.707912, 18.396074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061886, 12.651190, 18.175507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453931, -0.421362, 0.785112,
		-0.343679, -0.895737, -0.282028,
		0.822089, -0.141805, -0.551416,
		17.308512, 12.608647, 18.010082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974516, 12.005699, 18.314367>,  <16.733051, 12.707912, 18.396074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974516, 12.005699, 18.314367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303743, 12.230346, 18.280546>,  <17.501280, 12.365133, 18.260254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303743, 12.230346, 18.280546>,  <16.974516, 12.005699, 18.314367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303743, 12.230346, 18.280546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448070, -0.550623, 0.704306,
		0.348992, -0.617577, -0.704843,
		0.823066, 0.561616, -0.084554,
		17.550663, 12.398830, 18.255180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560389, 11.542267, 18.511467>,  <16.974516, 12.005699, 18.314367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560389, 11.542267, 18.511467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706747, 11.913810, 18.534605>,  <17.794561, 12.136735, 18.548489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706747, 11.913810, 18.534605>,  <17.560389, 11.542267, 18.511467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706747, 11.913810, 18.534605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493080, -0.246198, 0.834421,
		0.789299, -0.276789, -0.548083,
		0.365896, 0.928856, 0.057845,
		17.816515, 12.192467, 18.551958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283680, 11.451953, 18.625093>,  <17.560389, 11.542267, 18.511467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283680, 11.451953, 18.625093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176840, 11.812284, 18.762012>,  <18.112736, 12.028481, 18.844164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176840, 11.812284, 18.762012>,  <18.283680, 11.451953, 18.625093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176840, 11.812284, 18.762012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592189, -0.126788, 0.795762,
		0.760243, 0.415255, -0.499594,
		-0.267102, 0.900826, 0.342299,
		18.096710, 12.082532, 18.864702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923853, 11.728601, 18.732588>,  <18.283680, 11.451953, 18.625093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923853, 11.728601, 18.732588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657343, 11.913206, 18.966881>,  <18.497437, 12.023970, 19.107456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657343, 11.913206, 18.966881>,  <18.923853, 11.728601, 18.732588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657343, 11.913206, 18.966881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597842, -0.138896, 0.789489,
		0.445717, 0.876192, -0.183370,
		-0.666274, 0.461515, 0.585732,
		18.457460, 12.051661, 19.142601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233839, 12.138381, 19.236288>,  <18.923853, 11.728601, 18.732588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233839, 12.138381, 19.236288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878584, 12.116637, 19.418829>,  <18.665430, 12.103591, 19.528353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878584, 12.116637, 19.418829>,  <19.233839, 12.138381, 19.236288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878584, 12.116637, 19.418829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459563, -0.112831, 0.880949,
		0.003602, 0.992126, 0.125192,
		-0.888138, -0.054360, 0.456351,
		18.612143, 12.100329, 19.555735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238338, 12.617855, 19.814423>,  <19.233839, 12.138381, 19.236288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238338, 12.617855, 19.814423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938639, 12.371254, 19.911213>,  <18.758820, 12.223293, 19.969288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938639, 12.371254, 19.911213>,  <19.238338, 12.617855, 19.814423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938639, 12.371254, 19.911213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414329, -0.151290, 0.897465,
		-0.516681, 0.772681, 0.368788,
		-0.749248, -0.616502, 0.241976,
		18.713863, 12.186303, 19.983805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015827, 12.901354, 20.485508>,  <19.238338, 12.617855, 19.814423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015827, 12.901354, 20.485508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903145, 12.519077, 20.451338>,  <18.835535, 12.289712, 20.430836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903145, 12.519077, 20.451338>,  <19.015827, 12.901354, 20.485508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903145, 12.519077, 20.451338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538070, -0.231062, 0.810612,
		-0.794431, 0.182392, 0.579320,
		-0.281708, -0.955690, -0.085423,
		18.818632, 12.232370, 20.425711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862879, 12.613824, 21.135311>,  <19.015827, 12.901354, 20.485508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862879, 12.613824, 21.135311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887932, 12.263416, 20.944035>,  <18.902964, 12.053172, 20.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887932, 12.263416, 20.944035>,  <18.862879, 12.613824, 21.135311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887932, 12.263416, 20.944035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459782, -0.399933, 0.792877,
		-0.885820, -0.269525, 0.377728,
		0.062634, -0.876019, -0.478192,
		18.906723, 12.000610, 20.800577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542686, 12.144179, 21.621153>,  <18.862879, 12.613824, 21.135311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542686, 12.144179, 21.621153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793629, 11.945801, 21.380999>,  <18.944195, 11.826774, 21.236906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793629, 11.945801, 21.380999>,  <18.542686, 12.144179, 21.621153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793629, 11.945801, 21.380999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453524, -0.394051, 0.799400,
		-0.633042, -0.773797, -0.022287,
		0.627355, -0.495946, -0.600386,
		18.981834, 11.797017, 21.200882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.537519, 11.663884, 21.961218>,  <18.542686, 12.144179, 21.621153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.537519, 11.663884, 21.961218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853519, 11.587916, 21.728039>,  <19.043119, 11.542336, 21.588131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853519, 11.587916, 21.728039>,  <18.537519, 11.663884, 21.961218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853519, 11.587916, 21.728039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481072, -0.397435, 0.781419,
		-0.380086, -0.897763, -0.222612,
		0.790003, -0.189914, -0.582948,
		19.090519, 11.530940, 21.553154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671556, 10.900357, 22.014343>,  <18.537519, 11.663884, 21.961218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671556, 10.900357, 22.014343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007187, 11.053667, 21.859917>,  <19.208565, 11.145653, 21.767262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007187, 11.053667, 21.859917>,  <18.671556, 10.900357, 22.014343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007187, 11.053667, 21.859917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537490, -0.474523, 0.697089,
		0.083979, -0.792419, -0.604169,
		0.839078, 0.383275, -0.386067,
		19.258911, 11.168650, 21.744097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191914, 10.412681, 22.119181>,  <18.671556, 10.900357, 22.014343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191914, 10.412681, 22.119181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406059, 10.748849, 22.085524>,  <19.534546, 10.950550, 22.065329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406059, 10.748849, 22.085524>,  <19.191914, 10.412681, 22.119181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406059, 10.748849, 22.085524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645776, -0.343078, 0.682107,
		0.544388, -0.419514, -0.726395,
		0.535364, 0.840420, -0.084144,
		19.566668, 11.000975, 22.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887907, 10.246414, 21.966312>,  <19.191914, 10.412681, 22.119181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887907, 10.246414, 21.966312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867935, 10.597856, 22.156286>,  <19.855953, 10.808721, 22.270271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867935, 10.597856, 22.156286>,  <19.887907, 10.246414, 21.966312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867935, 10.597856, 22.156286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518017, -0.383787, 0.764439,
		0.853912, 0.284192, -0.435969,
		-0.049928, 0.878603, 0.474936,
		19.852957, 10.861437, 22.298767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496754, 10.200412, 22.358089>,  <19.887907, 10.246414, 21.966312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496754, 10.200412, 22.358089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308107, 10.513455, 22.520620>,  <20.194920, 10.701282, 22.618139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308107, 10.513455, 22.520620>,  <20.496754, 10.200412, 22.358089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308107, 10.513455, 22.520620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473220, -0.164194, 0.865508,
		0.744070, 0.600471, -0.292909,
		-0.471618, 0.782608, 0.406327,
		20.166622, 10.748238, 22.642519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951517, 10.487384, 22.893881>,  <20.496754, 10.200412, 22.358089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951517, 10.487384, 22.893881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595142, 10.643100, 22.987419>,  <20.381317, 10.736529, 23.043543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595142, 10.643100, 22.987419>,  <20.951517, 10.487384, 22.893881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595142, 10.643100, 22.987419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168935, -0.193868, 0.966373,
		0.421534, 0.900483, 0.106959,
		-0.890938, 0.389290, 0.233845,
		20.327862, 10.759887, 23.057573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145782, 10.776024, 23.495522>,  <20.951517, 10.487384, 22.893881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145782, 10.776024, 23.495522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752375, 10.709805, 23.466450>,  <20.516331, 10.670073, 23.449007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752375, 10.709805, 23.466450>,  <21.145782, 10.776024, 23.495522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752375, 10.709805, 23.466450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026072, -0.527653, 0.849060,
		-0.178911, 0.833172, 0.523273,
		-0.983520, -0.165549, -0.072680,
		20.457319, 10.660140, 23.444645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938189, 10.922153, 24.199495>,  <21.145782, 10.776024, 23.495522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938189, 10.922153, 24.199495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622429, 10.725343, 24.052658>,  <20.432972, 10.607257, 23.964556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622429, 10.725343, 24.052658>,  <20.938189, 10.922153, 24.199495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622429, 10.725343, 24.052658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132594, -0.447211, 0.884546,
		-0.599387, 0.746936, 0.287789,
		-0.789401, -0.492026, -0.367092,
		20.385609, 10.577735, 23.942530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444883, 11.150212, 24.615543>,  <20.938189, 10.922153, 24.199495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444883, 11.150212, 24.615543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303083, 10.807029, 24.466824>,  <20.218002, 10.601118, 24.377592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303083, 10.807029, 24.466824>,  <20.444883, 11.150212, 24.615543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303083, 10.807029, 24.466824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094854, -0.362573, 0.927116,
		-0.930232, 0.363931, 0.047152,
		-0.354502, -0.857960, -0.371797,
		20.196733, 10.549641, 24.355284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707170, 11.065600, 24.832369>,  <20.444883, 11.150212, 24.615543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707170, 11.065600, 24.832369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828415, 10.698174, 24.730888>,  <19.901161, 10.477719, 24.670000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828415, 10.698174, 24.730888>,  <19.707170, 11.065600, 24.832369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828415, 10.698174, 24.730888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416515, -0.367151, 0.831694,
		-0.857110, -0.146426, -0.493884,
		0.303112, -0.918564, -0.253700,
		19.919348, 10.422606, 24.654778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105303, 10.582243, 24.976793>,  <19.707170, 11.065600, 24.832369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105303, 10.582243, 24.976793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448202, 10.376470, 24.967997>,  <19.653942, 10.253005, 24.962719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448202, 10.376470, 24.967997>,  <19.105303, 10.582243, 24.976793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448202, 10.376470, 24.967997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225519, -0.413517, 0.882125,
		-0.462894, -0.751237, -0.470502,
		0.857245, -0.514438, -0.021997,
		19.705376, 10.222139, 24.961399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818550, 9.882393, 24.899458>,  <19.105303, 10.582243, 24.976793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818550, 9.882393, 24.899458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185528, 9.868291, 25.057978>,  <19.405714, 9.859830, 25.153090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185528, 9.868291, 25.057978>,  <18.818550, 9.882393, 24.899458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185528, 9.868291, 25.057978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370669, -0.437667, 0.819178,
		0.144568, -0.898446, -0.414602,
		0.917445, -0.035253, 0.396299,
		19.460762, 9.857715, 25.176867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922302, 9.218326, 25.142511>,  <18.818550, 9.882393, 24.899458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922302, 9.218326, 25.142511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193668, 9.444247, 25.330446>,  <19.356489, 9.579801, 25.443207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193668, 9.444247, 25.330446>,  <18.922302, 9.218326, 25.142511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193668, 9.444247, 25.330446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360510, -0.301298, 0.882753,
		0.640143, -0.768255, -0.000788,
		0.678417, 0.564804, 0.469837,
		19.397194, 9.613688, 25.471397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038746, 8.820765, 25.825838>,  <18.922302, 9.218326, 25.142511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038746, 8.820765, 25.825838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228722, 9.157537, 25.928278>,  <19.342707, 9.359601, 25.989742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228722, 9.157537, 25.928278>,  <19.038746, 8.820765, 25.825838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228722, 9.157537, 25.928278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064135, -0.257125, 0.964247,
		0.877679, -0.474383, -0.068122,
		0.474938, 0.841931, 0.256098,
		19.371202, 9.410117, 26.005108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646410, 8.678558, 26.262054>,  <19.038746, 8.820765, 25.825838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646410, 8.678558, 26.262054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.519571, 9.050525, 26.336571>,  <19.443468, 9.273705, 26.381281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.519571, 9.050525, 26.336571>,  <19.646410, 8.678558, 26.262054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519571, 9.050525, 26.336571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008004, -0.199047, 0.979957,
		0.948360, 0.309249, 0.070560,
		-0.317096, 0.929917, 0.186293,
		19.424442, 9.329500, 26.392458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685907, 8.730038, 27.002550>,  <19.646410, 8.678558, 26.262054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.685907, 8.730038, 27.002550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448591, 9.040108, 26.915731>,  <19.306202, 9.226150, 26.863640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448591, 9.040108, 26.915731>,  <19.685907, 8.730038, 27.002550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448591, 9.040108, 26.915731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407929, -0.057074, 0.911228,
		0.693973, 0.629164, 0.350078,
		-0.593292, 0.775174, -0.217046,
		19.270603, 9.272660, 26.850618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757719, 9.170647, 27.551292>,  <19.685907, 8.730038, 27.002550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757719, 9.170647, 27.551292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410019, 9.258228, 27.373997>,  <19.201399, 9.310778, 27.267618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410019, 9.258228, 27.373997>,  <19.757719, 9.170647, 27.551292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410019, 9.258228, 27.373997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437042, 0.078739, 0.895988,
		0.231081, 0.972553, 0.027249,
		-0.869250, 0.218955, -0.443241,
		19.149244, 9.323915, 27.241024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571074, 9.616276, 27.941113>,  <19.757719, 9.170647, 27.551292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.571074, 9.616276, 27.941113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235474, 9.471189, 27.778872>,  <19.034113, 9.384136, 27.681526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235474, 9.471189, 27.778872>,  <19.571074, 9.616276, 27.941113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235474, 9.471189, 27.778872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433347, -0.005390, 0.901211,
		-0.329072, 0.931883, -0.152661,
		-0.839000, -0.362719, -0.405603,
		18.983774, 9.362373, 27.657190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061028, 10.076076, 28.138363>,  <19.571074, 9.616276, 27.941113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061028, 10.076076, 28.138363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915867, 9.714927, 28.046165>,  <18.828772, 9.498238, 27.990847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915867, 9.714927, 28.046165>,  <19.061028, 10.076076, 28.138363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915867, 9.714927, 28.046165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506901, -0.016277, 0.861850,
		-0.781891, 0.429603, -0.451759,
		-0.362900, -0.902871, -0.230494,
		18.806997, 9.444065, 27.977016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384768, 10.161479, 28.226322>,  <19.061028, 10.076076, 28.138363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384768, 10.161479, 28.226322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469366, 9.771420, 28.252718>,  <18.520124, 9.537384, 28.268557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469366, 9.771420, 28.252718>,  <18.384768, 10.161479, 28.226322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469366, 9.771420, 28.252718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405045, -0.026000, 0.913927,
		-0.889499, -0.220021, -0.400478,
		0.211496, -0.975148, 0.065991,
		18.532814, 9.478875, 28.272516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787718, 9.874509, 28.597002>,  <18.384768, 10.161479, 28.226322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787718, 9.874509, 28.597002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083277, 9.607744, 28.635500>,  <18.260612, 9.447685, 28.658598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083277, 9.607744, 28.635500>,  <17.787718, 9.874509, 28.597002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083277, 9.607744, 28.635500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382906, -0.298049, 0.874386,
		-0.554452, -0.682932, -0.475591,
		0.738895, -0.666911, 0.096245,
		18.304945, 9.407671, 28.664373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399309, 9.357064, 28.825930>,  <17.787718, 9.874509, 28.597002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399309, 9.357064, 28.825930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780468, 9.286033, 28.924276>,  <18.009163, 9.243414, 28.983284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780468, 9.286033, 28.924276>,  <17.399309, 9.357064, 28.825930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780468, 9.286033, 28.924276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288389, -0.279524, 0.915805,
		-0.093901, -0.943574, -0.317569,
		0.952898, -0.177578, 0.245869,
		18.066338, 9.232759, 28.998037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362888, 8.817541, 29.369982>,  <17.399309, 9.357064, 28.825930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362888, 8.817541, 29.369982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.720837, 8.992339, 29.406300>,  <17.935606, 9.097219, 29.428091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.720837, 8.992339, 29.406300>,  <17.362888, 8.817541, 29.369982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720837, 8.992339, 29.406300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024448, -0.155129, 0.987592,
		0.445659, -0.885985, -0.128137,
		0.894869, 0.436996, 0.090795,
		17.989298, 9.123438, 29.433538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940857, 8.373845, 29.879389>,  <17.362888, 8.817541, 29.369982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940857, 8.373845, 29.879389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998898, 8.769612, 29.879543>,  <18.033722, 9.007072, 29.879637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998898, 8.769612, 29.879543>,  <17.940857, 8.373845, 29.879389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998898, 8.769612, 29.879543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024192, 0.003157, 0.999702,
		0.989121, -0.145066, 0.024394,
		0.145100, 0.989417, 0.000387,
		18.042427, 9.066438, 29.879660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330961, 8.441545, 30.396418>,  <17.940857, 8.373845, 29.879389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330961, 8.441545, 30.396418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242189, 8.828860, 30.350525>,  <18.188927, 9.061250, 30.322990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242189, 8.828860, 30.350525>,  <18.330961, 8.441545, 30.396418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242189, 8.828860, 30.350525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038391, 0.126250, 0.991255,
		0.974306, 0.215586, -0.065192,
		-0.221931, 0.968289, -0.114729,
		18.175610, 9.119347, 30.316107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732494, 8.707530, 30.898262>,  <18.330961, 8.441545, 30.396418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732494, 8.707530, 30.898262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.465910, 8.990667, 30.804634>,  <18.305960, 9.160549, 30.748457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.465910, 8.990667, 30.804634>,  <18.732494, 8.707530, 30.898262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.465910, 8.990667, 30.804634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177826, 0.153973, 0.971941,
		0.724022, 0.689384, 0.023256,
		-0.666461, 0.707843, -0.234071,
		18.265972, 9.203020, 30.734413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942741, 9.160188, 31.311033>,  <18.732494, 8.707530, 30.898262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942741, 9.160188, 31.311033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.564554, 9.241576, 31.209297>,  <18.337643, 9.290409, 31.148256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.564554, 9.241576, 31.209297>,  <18.942741, 9.160188, 31.311033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564554, 9.241576, 31.209297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209174, 0.219263, 0.952980,
		0.249672, 0.954213, -0.164745,
		-0.945468, 0.203472, -0.254340,
		18.280914, 9.302618, 31.132996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787531, 9.734598, 31.694817>,  <18.942741, 9.160188, 31.311033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787531, 9.734598, 31.694817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441383, 9.562105, 31.592695>,  <18.233696, 9.458610, 31.531424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441383, 9.562105, 31.592695>,  <18.787531, 9.734598, 31.694817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441383, 9.562105, 31.592695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302121, 0.042475, 0.952323,
		-0.399828, 0.901241, -0.167040,
		-0.865367, -0.431232, -0.255301,
		18.181772, 9.432735, 31.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975719, 10.298673, 32.284569>,  <18.787531, 9.734598, 31.694817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975719, 10.298673, 32.284569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763184, 10.585739, 32.464626>,  <18.635662, 10.757979, 32.572662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763184, 10.585739, 32.464626>,  <18.975719, 10.298673, 32.284569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763184, 10.585739, 32.464626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082338, 0.485096, -0.870576,
		-0.843148, -0.499636, -0.198660,
		-0.531340, 0.717667, 0.450146,
		18.603781, 10.801039, 32.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340538, 10.372516, 31.901510>,  <18.975719, 10.298673, 32.284569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340538, 10.372516, 31.901510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463509, 10.703181, 32.090027>,  <18.537291, 10.901581, 32.203136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463509, 10.703181, 32.090027>,  <18.340538, 10.372516, 31.901510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463509, 10.703181, 32.090027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221422, 0.543825, -0.809461,
		-0.925452, 0.144496, 0.350228,
		0.307427, 0.826665, 0.471290,
		18.555737, 10.951180, 32.231415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909864, 10.836708, 31.595114>,  <18.340538, 10.372516, 31.901510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909864, 10.836708, 31.595114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214348, 11.045658, 31.748835>,  <18.397038, 11.171028, 31.841066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214348, 11.045658, 31.748835>,  <17.909864, 10.836708, 31.595114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.214348, 11.045658, 31.748835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141434, 0.444603, -0.884491,
		-0.632898, 0.727635, 0.264554,
		0.761208, 0.522375, 0.384301,
		18.442711, 11.202371, 31.864124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.812172, 11.414359, 31.193302>,  <17.909864, 10.836708, 31.595114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.812172, 11.414359, 31.193302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182171, 11.450444, 31.340948>,  <18.404169, 11.472095, 31.429535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182171, 11.450444, 31.340948>,  <17.812172, 11.414359, 31.193302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182171, 11.450444, 31.340948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318652, 0.344993, -0.882859,
		-0.206987, 0.934260, 0.290370,
		0.924996, 0.090214, 0.369113,
		18.459669, 11.477509, 31.451683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073675, 12.130045, 31.164339>,  <17.812172, 11.414359, 31.193302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073675, 12.130045, 31.164339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399725, 11.899018, 31.182175>,  <18.595356, 11.760403, 31.192877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399725, 11.899018, 31.182175>,  <18.073675, 12.130045, 31.164339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399725, 11.899018, 31.182175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363932, 0.450693, -0.815125,
		0.450693, 0.680656, 0.577566,
		0.815125, -0.577566, 0.044589,
		18.644262, 11.725748, 31.195551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629190, 12.563004, 30.913645>,  <18.073675, 12.130045, 31.164339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629190, 12.563004, 30.913645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777849, 12.191892, 30.900351>,  <18.867044, 11.969225, 30.892374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777849, 12.191892, 30.900351>,  <18.629190, 12.563004, 30.913645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777849, 12.191892, 30.900351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350680, 0.173440, -0.920295,
		0.859595, 0.330370, 0.389812,
		0.371646, -0.927779, -0.033234,
		18.889343, 11.913558, 30.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272682, 12.599463, 30.728447>,  <18.629190, 12.563004, 30.913645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272682, 12.599463, 30.728447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172993, 12.232301, 30.604939>,  <19.113180, 12.012004, 30.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172993, 12.232301, 30.604939>,  <19.272682, 12.599463, 30.728447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172993, 12.232301, 30.604939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156117, 0.276581, -0.948225,
		0.955780, -0.284523, 0.074370,
		-0.249223, -0.917905, -0.308769,
		19.098227, 11.956929, 30.512308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907116, 12.436183, 30.276655>,  <19.272682, 12.599463, 30.728447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907116, 12.436183, 30.276655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591862, 12.202242, 30.199932>,  <19.402710, 12.061877, 30.153898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591862, 12.202242, 30.199932>,  <19.907116, 12.436183, 30.276655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591862, 12.202242, 30.199932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207734, 0.040595, -0.977343,
		0.579389, -0.810122, 0.089500,
		-0.788134, -0.584854, -0.191810,
		19.355421, 12.026786, 30.142389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.126726, 11.958307, 29.677380>,  <19.907116, 12.436183, 30.276655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.126726, 11.958307, 29.677380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.726868, 11.968175, 29.673433>,  <19.486952, 11.974095, 29.671066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.726868, 11.968175, 29.673433>,  <20.126726, 11.958307, 29.677380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.726868, 11.968175, 29.673433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010924, 0.043131, -0.999010,
		-0.024223, -0.998765, -0.043385,
		-0.999647, 0.024673, -0.009866,
		19.426973, 11.975576, 29.670473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959894, 11.352643, 29.142408>,  <20.126726, 11.958307, 29.677380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959894, 11.352643, 29.142408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634268, 11.577961, 29.198969>,  <19.438892, 11.713152, 29.232906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634268, 11.577961, 29.198969>,  <19.959894, 11.352643, 29.142408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634268, 11.577961, 29.198969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132706, 0.056618, -0.989537,
		-0.565407, -0.824314, 0.028662,
		-0.814066, 0.563295, 0.141404,
		19.390047, 11.746949, 29.241390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358185, 11.082685, 28.800190>,  <19.959894, 11.352643, 29.142408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358185, 11.082685, 28.800190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280445, 11.473274, 28.837570>,  <19.233801, 11.707627, 28.859999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280445, 11.473274, 28.837570>,  <19.358185, 11.082685, 28.800190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280445, 11.473274, 28.837570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278947, 0.036318, -0.959620,
		-0.940434, -0.212569, 0.265326,
		-0.194350, 0.976471, 0.093450,
		19.222139, 11.766215, 28.865604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943441, 11.252398, 28.220993>,  <19.358185, 11.082685, 28.800190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943441, 11.252398, 28.220993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.003498, 11.622932, 28.359186>,  <19.039532, 11.845253, 28.442102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.003498, 11.622932, 28.359186>,  <18.943441, 11.252398, 28.220993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003498, 11.622932, 28.359186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279058, 0.374941, -0.884051,
		-0.948464, 0.036326, 0.314797,
		0.150144, 0.926337, 0.345481,
		19.048542, 11.900833, 28.462830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310862, 11.672141, 28.084757>,  <18.943441, 11.252398, 28.220993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310862, 11.672141, 28.084757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641418, 11.895338, 28.115013>,  <18.839752, 12.029257, 28.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641418, 11.895338, 28.115013>,  <18.310862, 11.672141, 28.084757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641418, 11.895338, 28.115013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199326, 0.415510, -0.887480,
		-0.526638, 0.718328, 0.454596,
		0.826391, 0.557994, 0.075642,
		18.889336, 12.062737, 28.137705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040817, 12.390767, 28.085592>,  <18.310862, 11.672141, 28.084757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040817, 12.390767, 28.085592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.422596, 12.355453, 27.971584>,  <18.651663, 12.334264, 27.903179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.422596, 12.355453, 27.971584>,  <18.040817, 12.390767, 28.085592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.422596, 12.355453, 27.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234392, 0.369246, -0.899287,
		0.184638, 0.925129, 0.331732,
		0.954447, -0.088287, -0.285020,
		18.708931, 12.328966, 27.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016653, 12.752333, 27.491169>,  <18.040817, 12.390767, 28.085592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016653, 12.752333, 27.491169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382648, 12.592281, 27.470421>,  <18.602245, 12.496250, 27.457972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382648, 12.592281, 27.470421>,  <18.016653, 12.752333, 27.491169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382648, 12.592281, 27.470421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005369, 0.140621, -0.990049,
		0.403442, 0.905606, 0.130815,
		0.914990, -0.400129, -0.051870,
		18.657145, 12.472242, 27.454861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372448, 13.213658, 27.066599>,  <18.016653, 12.752333, 27.491169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372448, 13.213658, 27.066599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584526, 12.874784, 27.052910>,  <18.711773, 12.671459, 27.044697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584526, 12.874784, 27.052910>,  <18.372448, 13.213658, 27.066599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584526, 12.874784, 27.052910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227016, 0.180731, -0.956974,
		0.816921, 0.499612, 0.288147,
		0.530193, -0.847186, -0.034223,
		18.743584, 12.620627, 27.042643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061062, 13.385715, 26.773073>,  <18.372448, 13.213658, 27.066599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061062, 13.385715, 26.773073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005760, 12.996929, 26.697004>,  <18.972580, 12.763657, 26.651363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005760, 12.996929, 26.697004>,  <19.061062, 13.385715, 26.773073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005760, 12.996929, 26.697004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193560, 0.161798, -0.967655,
		0.971298, -0.170591, 0.165764,
		-0.138253, -0.971967, -0.190174,
		18.964285, 12.705339, 26.639952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652889, 13.118492, 26.384529>,  <19.061062, 13.385715, 26.773073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652889, 13.118492, 26.384529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335388, 12.888757, 26.304441>,  <19.144888, 12.750916, 26.256388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335388, 12.888757, 26.304441>,  <19.652889, 13.118492, 26.384529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335388, 12.888757, 26.304441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128936, 0.162815, -0.978196,
		0.594415, -0.802263, -0.055182,
		-0.793754, -0.574339, -0.200220,
		19.097261, 12.716455, 26.244375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830452, 12.794098, 25.851170>,  <19.652889, 13.118492, 26.384529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830452, 12.794098, 25.851170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451130, 12.672048, 25.816261>,  <19.223537, 12.598818, 25.795317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451130, 12.672048, 25.816261>,  <19.830452, 12.794098, 25.851170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451130, 12.672048, 25.816261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040659, 0.155917, -0.986933,
		0.314747, -0.939461, -0.135450,
		-0.948305, -0.305127, -0.087272,
		19.166637, 12.580510, 25.790079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844334, 12.308268, 25.325075>,  <19.830452, 12.794098, 25.851170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844334, 12.308268, 25.325075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464706, 12.431062, 25.353453>,  <19.236931, 12.504739, 25.370480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464706, 12.431062, 25.353453>,  <19.844334, 12.308268, 25.325075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464706, 12.431062, 25.353453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017158, 0.174476, -0.984512,
		-0.314610, -0.935584, -0.160322,
		-0.949066, 0.306986, 0.070944,
		19.179987, 12.523157, 25.374737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574141, 11.883227, 24.781364>,  <19.844334, 12.308268, 25.325075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574141, 11.883227, 24.781364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340094, 12.200883, 24.847067>,  <19.199665, 12.391477, 24.886488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340094, 12.200883, 24.847067>,  <19.574141, 11.883227, 24.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340094, 12.200883, 24.847067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053974, 0.240237, -0.969213,
		-0.809151, -0.558236, -0.183430,
		-0.585116, 0.794140, 0.164257,
		19.164558, 12.439125, 24.896343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151276, 11.895000, 24.155876>,  <19.574141, 11.883227, 24.781364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151276, 11.895000, 24.155876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142340, 12.252957, 24.334166>,  <19.136978, 12.467731, 24.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142340, 12.252957, 24.334166>,  <19.151276, 11.895000, 24.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142340, 12.252957, 24.334166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279007, 0.433701, -0.856772,
		-0.960029, 0.105221, -0.259370,
		-0.022339, 0.894892, 0.445723,
		19.135637, 12.521425, 24.467882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073502, 12.307682, 23.556803>,  <19.151276, 11.895000, 24.155876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073502, 12.307682, 23.556803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186104, 12.581457, 23.825815>,  <19.253666, 12.745722, 23.987223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186104, 12.581457, 23.825815>,  <19.073502, 12.307682, 23.556803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.186104, 12.581457, 23.825815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319157, 0.594187, -0.738296,
		-0.904927, 0.422479, -0.051175,
		0.281507, 0.684437, 0.672532,
		19.270555, 12.786788, 24.027575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737482, 12.978065, 23.369652>,  <19.073502, 12.307682, 23.556803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737482, 12.978065, 23.369652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077673, 13.036633, 23.571741>,  <19.281788, 13.071774, 23.692995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077673, 13.036633, 23.571741>,  <18.737482, 12.978065, 23.369652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077673, 13.036633, 23.571741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313016, 0.631032, -0.709803,
		-0.422744, 0.761813, 0.490844,
		0.850475, 0.146422, 0.505225,
		19.332815, 13.080560, 23.723309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825026, 13.701556, 23.475855>,  <18.737482, 12.978065, 23.369652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825026, 13.701556, 23.475855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188290, 13.534146, 23.472227>,  <19.406248, 13.433701, 23.470051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188290, 13.534146, 23.472227>,  <18.825026, 13.701556, 23.475855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188290, 13.534146, 23.472227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272498, 0.607468, -0.746142,
		0.317789, 0.675144, 0.665725,
		0.908160, -0.418525, -0.009071,
		19.460737, 13.408589, 23.469505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245533, 14.005984, 22.937536>,  <18.825026, 13.701556, 23.475855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245533, 14.005984, 22.937536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538950, 13.809821, 23.125757>,  <19.715000, 13.692123, 23.238689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538950, 13.809821, 23.125757>,  <19.245533, 14.005984, 22.937536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538950, 13.809821, 23.125757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601866, 0.147112, -0.784930,
		0.315712, 0.858987, 0.403073,
		0.733541, -0.490408, 0.470550,
		19.759012, 13.662699, 23.266922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759678, 14.551234, 23.034376>,  <19.245533, 14.005984, 22.937536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759678, 14.551234, 23.034376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963125, 14.206839, 23.033895>,  <20.085194, 14.000201, 23.033607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963125, 14.206839, 23.033895>,  <19.759678, 14.551234, 23.034376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963125, 14.206839, 23.033895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493584, 0.292724, -0.818955,
		0.705464, 0.415944, 0.573856,
		0.508621, -0.860990, -0.001203,
		20.115711, 13.948542, 23.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601885, 14.609995, 23.046892>,  <19.759678, 14.551234, 23.034376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601885, 14.609995, 23.046892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.502432, 14.271501, 22.858397>,  <20.442760, 14.068404, 22.745298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.502432, 14.271501, 22.858397>,  <20.601885, 14.609995, 23.046892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.502432, 14.271501, 22.858397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304236, 0.393666, -0.867449,
		0.919578, -0.359043, 0.159578,
		-0.248631, -0.846236, -0.471240,
		20.427843, 14.017630, 22.717024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127686, 14.422480, 22.595663>,  <20.601885, 14.609995, 23.046892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127686, 14.422480, 22.595663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826946, 14.202028, 22.450895>,  <20.646503, 14.069757, 22.364035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826946, 14.202028, 22.450895>,  <21.127686, 14.422480, 22.595663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826946, 14.202028, 22.450895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291389, 0.214661, -0.932209,
		0.591456, -0.806337, -0.000799,
		-0.751846, -0.551128, -0.361920,
		20.601393, 14.036690, 22.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.369610, 13.898920, 22.133953>,  <21.127686, 14.422480, 22.595663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.369610, 13.898920, 22.133953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989277, 13.955778, 22.023886>,  <20.761078, 13.989893, 21.957846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989277, 13.955778, 22.023886>,  <21.369610, 13.898920, 22.133953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989277, 13.955778, 22.023886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291825, 0.113624, -0.949699,
		-0.103731, -0.983302, -0.149519,
		-0.950830, 0.142147, -0.275166,
		20.704027, 13.998422, 21.941336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.326866, 13.583010, 21.547720>,  <21.369610, 13.898920, 22.133953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.326866, 13.583010, 21.547720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988176, 13.795274, 21.532440>,  <20.784964, 13.922632, 21.523272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988176, 13.795274, 21.532440>,  <21.326866, 13.583010, 21.547720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.988176, 13.795274, 21.532440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256276, 0.343885, -0.903363,
		-0.466244, -0.774688, -0.427171,
		-0.846723, 0.530662, -0.038199,
		20.734159, 13.954473, 21.520981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912811, 13.285244, 20.925980>,  <21.326866, 13.583010, 21.547720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912811, 13.285244, 20.925980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801250, 13.655854, 21.026985>,  <20.734314, 13.878221, 21.087589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801250, 13.655854, 21.026985>,  <20.912811, 13.285244, 20.925980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801250, 13.655854, 21.026985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179011, 0.308501, -0.934228,
		-0.943488, -0.215354, -0.251900,
		-0.278901, 0.926526, 0.252516,
		20.717581, 13.933812, 21.102739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375326, 13.467972, 20.446047>,  <20.912811, 13.285244, 20.925980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375326, 13.467972, 20.446047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520296, 13.814672, 20.583096>,  <20.607279, 14.022692, 20.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520296, 13.814672, 20.583096>,  <20.375326, 13.467972, 20.446047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520296, 13.814672, 20.583096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032140, 0.379021, -0.924830,
		-0.931458, 0.324171, 0.165225,
		0.362427, 0.866750, 0.342623,
		20.629025, 14.074697, 20.685883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.986177, 13.869969, 20.182196>,  <20.375326, 13.467972, 20.446047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.986177, 13.869969, 20.182196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.298527, 14.096955, 20.286671>,  <20.485937, 14.233147, 20.349356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.298527, 14.096955, 20.286671>,  <19.986177, 13.869969, 20.182196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.298527, 14.096955, 20.286671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037719, 0.460173, -0.887027,
		-0.623548, 0.682806, 0.380742,
		0.780875, 0.567465, 0.261186,
		20.532789, 14.267195, 20.365026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.730816, 14.426509, 19.885262>,  <19.986177, 13.869969, 20.182196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.730816, 14.426509, 19.885262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124987, 14.442636, 19.951361>,  <20.361488, 14.452312, 19.991020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124987, 14.442636, 19.951361>,  <19.730816, 14.426509, 19.885262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124987, 14.442636, 19.951361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126377, 0.476719, -0.869924,
		-0.113850, 0.878131, 0.464677,
		0.985427, 0.040316, 0.165250,
		20.420614, 14.454730, 20.000937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789469, 15.101332, 19.808834>,  <19.730816, 14.426509, 19.885262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789469, 15.101332, 19.808834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160423, 14.953918, 19.783106>,  <20.382996, 14.865471, 19.767668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160423, 14.953918, 19.783106>,  <19.789469, 15.101332, 19.808834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.160423, 14.953918, 19.783106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134001, 0.487764, -0.862630,
		0.349281, 0.791372, 0.501730,
		0.927387, -0.368532, -0.064322,
		20.438639, 14.843359, 19.763809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270300, 15.651814, 19.918921>,  <19.789469, 15.101332, 19.808834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270300, 15.651814, 19.918921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428022, 15.358185, 19.697775>,  <20.522655, 15.182008, 19.565086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428022, 15.358185, 19.697775>,  <20.270300, 15.651814, 19.918921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.428022, 15.358185, 19.697775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164599, 0.648294, -0.743386,
		0.904118, 0.202121, 0.376455,
		0.394307, -0.734072, -0.552865,
		20.546314, 15.137963, 19.531916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.823233, 15.981747, 19.682350>,  <20.270300, 15.651814, 19.918921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.823233, 15.981747, 19.682350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802713, 15.652825, 19.455656>,  <20.790401, 15.455473, 19.319639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802713, 15.652825, 19.455656>,  <20.823233, 15.981747, 19.682350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802713, 15.652825, 19.455656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398932, 0.503367, -0.766469,
		0.915545, -0.265406, 0.302221,
		-0.051297, -0.822302, -0.566734,
		20.787325, 15.406135, 19.285635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498106, 15.747763, 19.400143>,  <20.823233, 15.981747, 19.682350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498106, 15.747763, 19.400143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230251, 15.620049, 19.131922>,  <21.069538, 15.543422, 18.970989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230251, 15.620049, 19.131922>,  <21.498106, 15.747763, 19.400143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230251, 15.620049, 19.131922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424653, 0.576120, -0.698395,
		0.609310, -0.752423, -0.250203,
		-0.669635, -0.319289, -0.670555,
		21.029360, 15.524264, 18.930756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858046, 15.724912, 18.784281>,  <21.498106, 15.747763, 19.400143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858046, 15.724912, 18.784281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480722, 15.725597, 18.651512>,  <21.254330, 15.726009, 18.571852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480722, 15.725597, 18.651512>,  <21.858046, 15.724912, 18.784281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480722, 15.725597, 18.651512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290280, 0.489214, -0.822440,
		0.160969, -0.872162, -0.461977,
		-0.943306, 0.001715, -0.331919,
		21.197731, 15.726111, 18.551937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858826, 15.484221, 18.126427>,  <21.858046, 15.724912, 18.784281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858826, 15.484221, 18.126427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542490, 15.726997, 18.157913>,  <21.352690, 15.872663, 18.176805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542490, 15.726997, 18.157913>,  <21.858826, 15.484221, 18.126427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542490, 15.726997, 18.157913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264211, 0.454584, -0.850615,
		-0.552058, -0.651900, -0.519864,
		-0.790838, 0.606943, 0.078717,
		21.305239, 15.909081, 18.181528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498356, 15.520494, 17.436216>,  <21.858826, 15.484221, 18.126427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498356, 15.520494, 17.436216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444786, 15.844679, 17.664326>,  <21.412643, 16.039190, 17.801191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444786, 15.844679, 17.664326>,  <21.498356, 15.520494, 17.436216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444786, 15.844679, 17.664326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513094, 0.549028, -0.659775,
		-0.847820, 0.204244, -0.489372,
		-0.133924, 0.810465, 0.570273,
		21.404610, 16.087818, 17.835407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275974, 16.109039, 16.999907>,  <21.498356, 15.520494, 17.436216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275974, 16.109039, 16.999907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488989, 16.232225, 17.315264>,  <21.616798, 16.306137, 17.504478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488989, 16.232225, 17.315264>,  <21.275974, 16.109039, 16.999907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488989, 16.232225, 17.315264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508955, 0.627734, -0.588995,
		-0.676289, 0.714918, 0.177552,
		0.532539, 0.307965, 0.788391,
		21.648750, 16.324615, 17.551781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161356, 16.922783, 17.072325>,  <21.275974, 16.109039, 16.999907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161356, 16.922783, 17.072325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482334, 16.761314, 17.248112>,  <21.674921, 16.664434, 17.353584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482334, 16.761314, 17.248112>,  <21.161356, 16.922783, 17.072325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482334, 16.761314, 17.248112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590962, 0.639704, -0.491470,
		-0.082738, 0.654087, 0.751881,
		0.802445, -0.403670, 0.439468,
		21.723068, 16.640213, 17.379951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620478, 17.466677, 17.487846>,  <21.161356, 16.922783, 17.072325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620478, 17.466677, 17.487846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817694, 17.146465, 17.351572>,  <21.936024, 16.954338, 17.269808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817694, 17.146465, 17.351572>,  <21.620478, 17.466677, 17.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817694, 17.146465, 17.351572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595444, 0.596000, -0.538730,
		0.634318, 0.062755, 0.770521,
		0.493039, -0.800528, -0.340687,
		21.965605, 16.906307, 17.249367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220901, 17.760126, 17.350452>,  <21.620478, 17.466677, 17.487846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220901, 17.760126, 17.350452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.270090, 17.409500, 17.164328>,  <22.299603, 17.199125, 17.052652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.270090, 17.409500, 17.164328>,  <22.220901, 17.760126, 17.350452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.270090, 17.409500, 17.164328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764254, 0.382748, -0.519056,
		0.633083, -0.291788, 0.716984,
		0.122970, -0.876564, -0.465311,
		22.306982, 17.146530, 17.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.907347, 17.499355, 17.490149>,  <22.220901, 17.760126, 17.350452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.907347, 17.499355, 17.490149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801128, 17.332315, 17.142565>,  <22.737396, 17.232092, 16.934013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801128, 17.332315, 17.142565>,  <22.907347, 17.499355, 17.490149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801128, 17.332315, 17.142565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814516, 0.385036, -0.433948,
		0.515799, -0.823016, 0.237899,
		-0.265547, -0.417602, -0.868961,
		22.721464, 17.207035, 16.881876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.358152, 17.092577, 17.268463>,  <22.907347, 17.499355, 17.490149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.358152, 17.092577, 17.268463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182285, 17.222496, 16.933512>,  <23.076765, 17.300447, 16.732542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182285, 17.222496, 16.933512>,  <23.358152, 17.092577, 17.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.182285, 17.222496, 16.933512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874375, 0.367927, -0.316382,
		0.205334, -0.871284, -0.445759,
		-0.439666, 0.324797, -0.837377,
		23.050386, 17.319935, 16.682299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.726698, 16.785351, 16.695795>,  <23.358152, 17.092577, 17.268463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.726698, 16.785351, 16.695795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.560833, 17.111761, 16.534719>,  <23.461313, 17.307608, 16.438074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.560833, 17.111761, 16.534719>,  <23.726698, 16.785351, 16.695795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560833, 17.111761, 16.534719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904488, 0.321085, -0.280725,
		-0.099781, -0.480633, -0.871227,
		-0.414663, 0.816025, -0.402688,
		23.436434, 17.356569, 16.413914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.973984, 16.891796, 15.978415>,  <23.726698, 16.785351, 16.695795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.973984, 16.891796, 15.978415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857409, 17.251707, 16.108316>,  <23.787464, 17.467653, 16.186256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857409, 17.251707, 16.108316>,  <23.973984, 16.891796, 15.978415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.857409, 17.251707, 16.108316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901121, 0.372157, -0.222443,
		-0.321008, 0.227812, -0.919269,
		-0.291437, 0.899778, 0.324751,
		23.769978, 17.521641, 16.205742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177183, 17.373119, 15.457812>,  <23.973984, 16.891796, 15.978415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177183, 17.373119, 15.457812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.083975, 17.602785, 15.771765>,  <24.028049, 17.740583, 15.960136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.083975, 17.602785, 15.771765>,  <24.177183, 17.373119, 15.457812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.083975, 17.602785, 15.771765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750663, 0.619296, -0.230170,
		-0.618229, 0.535546, -0.575312,
		-0.233021, 0.574163, 0.784881,
		24.014069, 17.775034, 16.007229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.098680, 17.991699, 15.165310>,  <24.177183, 17.373119, 15.457812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.098680, 17.991699, 15.165310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203169, 18.040178, 15.548366>,  <24.265862, 18.069265, 15.778199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203169, 18.040178, 15.548366>,  <24.098680, 17.991699, 15.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203169, 18.040178, 15.548366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791476, 0.541018, -0.284367,
		-0.552566, 0.832232, 0.045401,
		0.261222, 0.121198, 0.957640,
		24.281536, 18.076538, 15.835657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366570, 18.669863, 15.184710>,  <24.098680, 17.991699, 15.165310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366570, 18.669863, 15.184710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516539, 18.483486, 15.505291>,  <24.606520, 18.371660, 15.697640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516539, 18.483486, 15.505291>,  <24.366570, 18.669863, 15.184710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516539, 18.483486, 15.505291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874956, 0.463583, -0.139795,
		-0.306404, 0.753650, 0.581488,
		0.374924, -0.465943, 0.801454,
		24.629015, 18.343702, 15.745728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696255, 19.282019, 15.560822>,  <24.366570, 18.669863, 15.184710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696255, 19.282019, 15.560822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833773, 18.922981, 15.671188>,  <24.916283, 18.707560, 15.737409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833773, 18.922981, 15.671188>,  <24.696255, 19.282019, 15.560822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.833773, 18.922981, 15.671188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929663, 0.366766, 0.034768,
		-0.132405, 0.244557, 0.960552,
		0.343795, -0.897594, 0.275917,
		24.936911, 18.653704, 15.753963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131063, 19.412106, 16.158976>,  <24.696255, 19.282019, 15.560822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131063, 19.412106, 16.158976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241468, 19.046886, 16.038870>,  <25.307711, 18.827755, 15.966806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241468, 19.046886, 16.038870>,  <25.131063, 19.412106, 16.158976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241468, 19.046886, 16.038870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947896, 0.310290, -0.072207,
		0.159098, -0.264691, 0.951119,
		0.276010, -0.913049, -0.300266,
		25.324272, 18.772972, 15.948791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780188, 19.281708, 16.506620>,  <25.131063, 19.412106, 16.158976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780188, 19.281708, 16.506620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762447, 19.039753, 16.188591>,  <25.751804, 18.894581, 15.997773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762447, 19.039753, 16.188591>,  <25.780188, 19.281708, 16.506620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762447, 19.039753, 16.188591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992318, 0.065333, -0.105057,
		0.115492, -0.793627, 0.597342,
		-0.044350, -0.604887, -0.795076,
		25.749142, 18.858288, 15.950068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369940, 18.878435, 16.562948>,  <25.780188, 19.281708, 16.506620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369940, 18.878435, 16.562948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262873, 18.855551, 16.178225>,  <26.198633, 18.841820, 15.947390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262873, 18.855551, 16.178225>,  <26.369940, 18.878435, 16.562948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262873, 18.855551, 16.178225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935154, 0.224972, -0.273632,
		0.232036, -0.972684, -0.006715,
		-0.267668, -0.057213, -0.961811,
		26.182571, 18.838387, 15.889681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974730, 18.455790, 16.331944>,  <26.369940, 18.878435, 16.562948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974730, 18.455790, 16.331944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767731, 18.588011, 16.016239>,  <26.643532, 18.667343, 15.826817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767731, 18.588011, 16.016239>,  <26.974730, 18.455790, 16.331944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767731, 18.588011, 16.016239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855249, 0.170348, -0.489419,
		-0.027330, -0.928287, -0.370859,
		-0.517496, 0.330552, -0.789261,
		26.612482, 18.687176, 15.779461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130997, 17.989353, 15.803638>,  <26.974730, 18.455790, 16.331944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130997, 17.989353, 15.803638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023392, 18.346485, 15.659144>,  <26.958830, 18.560764, 15.572449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023392, 18.346485, 15.659144>,  <27.130997, 17.989353, 15.803638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023392, 18.346485, 15.659144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899877, 0.099307, -0.424688,
		-0.343301, -0.439311, -0.830151,
		-0.269010, 0.892829, -0.361234,
		26.942688, 18.614334, 15.550775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472208, 18.008343, 15.170288>,  <27.130997, 17.989353, 15.803638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472208, 18.008343, 15.170288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386219, 18.395111, 15.225211>,  <27.334625, 18.627172, 15.258165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386219, 18.395111, 15.225211>,  <27.472208, 18.008343, 15.170288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386219, 18.395111, 15.225211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888433, 0.252002, -0.383643,
		-0.405554, 0.039516, -0.913216,
		-0.214972, 0.966920, 0.137308,
		27.321728, 18.685186, 15.266403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650602, 18.272427, 14.477499>,  <27.472208, 18.008343, 15.170288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650602, 18.272427, 14.477499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663086, 18.563297, 14.751794>,  <27.670576, 18.737820, 14.916371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663086, 18.563297, 14.751794>,  <27.650602, 18.272427, 14.477499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663086, 18.563297, 14.751794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958701, 0.172269, -0.226311,
		-0.282700, 0.664481, -0.691770,
		0.031208, 0.727179, 0.685738,
		27.672449, 18.781450, 14.957516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907959, 18.824060, 14.170863>,  <27.650602, 18.272427, 14.477499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907959, 18.824060, 14.170863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970791, 18.882023, 14.561622>,  <28.008490, 18.916800, 14.796077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970791, 18.882023, 14.561622>,  <27.907959, 18.824060, 14.170863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970791, 18.882023, 14.561622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925522, 0.323536, -0.196810,
		-0.344581, 0.935054, -0.083293,
		0.157080, 0.144907, 0.976897,
		28.017914, 18.925495, 14.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191223, 19.433851, 14.175387>,  <27.907959, 18.824060, 14.170863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191223, 19.433851, 14.175387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283869, 19.302763, 14.541765>,  <28.339457, 19.224110, 14.761592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283869, 19.302763, 14.541765>,  <28.191223, 19.433851, 14.175387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283869, 19.302763, 14.541765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968106, 0.170115, -0.183936,
		-0.095537, 0.929334, 0.356668,
		0.231612, -0.327719, 0.915945,
		28.353352, 19.204447, 14.816549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610029, 19.920647, 14.532821>,  <28.191223, 19.433851, 14.175387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610029, 19.920647, 14.532821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706352, 19.564259, 14.686802>,  <28.764145, 19.350426, 14.779191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706352, 19.564259, 14.686802>,  <28.610029, 19.920647, 14.532821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706352, 19.564259, 14.686802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968015, 0.249250, -0.028653,
		-0.070421, 0.379540, 0.922491,
		0.240806, -0.890968, 0.384953,
		28.778593, 19.296968, 14.802288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184155, 20.100851, 14.862068>,  <28.610029, 19.920647, 14.532821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184155, 20.100851, 14.862068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190453, 19.701036, 14.872504>,  <29.194231, 19.461147, 14.878766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190453, 19.701036, 14.872504>,  <29.184155, 20.100851, 14.862068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190453, 19.701036, 14.872504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986973, 0.011359, -0.160481,
		0.160111, 0.028278, 0.986694,
		0.015746, -0.999535, 0.026091,
		29.195177, 19.401176, 14.880331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834024, 19.889105, 15.239042>,  <29.184155, 20.100851, 14.862068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834024, 19.889105, 15.239042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736593, 19.548859, 15.052655>,  <29.678135, 19.344711, 14.940823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736593, 19.548859, 15.052655>,  <29.834024, 19.889105, 15.239042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736593, 19.548859, 15.052655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969366, -0.229169, -0.088376,
		-0.031612, -0.473220, 0.880377,
		-0.243577, -0.850614, -0.465968,
		29.663521, 19.293674, 14.912865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256899, 19.314196, 15.451594>,  <29.834024, 19.889105, 15.239042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256899, 19.314196, 15.451594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139458, 19.165771, 15.099206>,  <30.068993, 19.076717, 14.887773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139458, 19.165771, 15.099206>,  <30.256899, 19.314196, 15.451594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139458, 19.165771, 15.099206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903324, -0.409196, -0.128700,
		-0.312735, -0.833589, 0.455331,
		-0.293602, -0.371062, -0.880971,
		30.051376, 19.054453, 14.834914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511942, 18.627018, 15.481451>,  <30.256899, 19.314196, 15.451594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511942, 18.627018, 15.481451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431944, 18.727806, 15.102714>,  <30.383945, 18.788279, 14.875471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431944, 18.727806, 15.102714>,  <30.511942, 18.627018, 15.481451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431944, 18.727806, 15.102714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849097, -0.437642, -0.295809,
		-0.488914, -0.863123, -0.126420,
		-0.199993, 0.251968, -0.946845,
		30.371946, 18.803396, 14.818660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796804, 18.059952, 15.047062>,  <30.511942, 18.627018, 15.481451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796804, 18.059952, 15.047062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757162, 18.355118, 14.780031>,  <30.733376, 18.532217, 14.619813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757162, 18.355118, 14.780031>,  <30.796804, 18.059952, 15.047062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757162, 18.355118, 14.780031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918657, -0.189978, -0.346377,
		-0.382422, -0.647603, -0.659063,
		-0.099107, 0.737915, -0.667577,
		30.727430, 18.576492, 14.579758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905378, 17.748108, 14.374632>,  <30.796804, 18.059952, 15.047062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905378, 17.748108, 14.374632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987000, 18.137999, 14.338263>,  <31.035973, 18.371933, 14.316441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987000, 18.137999, 14.338263>,  <30.905378, 17.748108, 14.374632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987000, 18.137999, 14.338263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892716, -0.223388, -0.391351,
		-0.401772, -0.001312, -0.915739,
		0.204052, 0.974729, -0.090923,
		31.048216, 18.430418, 14.310986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041288, 17.901447, 13.708336>,  <30.905378, 17.748108, 14.374632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041288, 17.901447, 13.708336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231354, 18.196188, 13.900698>,  <31.345392, 18.373034, 14.016114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231354, 18.196188, 13.900698>,  <31.041288, 17.901447, 13.708336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231354, 18.196188, 13.900698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755281, -0.061169, -0.652540,
		-0.451410, 0.673280, -0.585596,
		0.475163, 0.736853, 0.480904,
		31.373903, 18.417244, 14.044969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326292, 18.441071, 13.175301>,  <31.041288, 17.901447, 13.708336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326292, 18.441071, 13.175301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548689, 18.435644, 13.507732>,  <31.682127, 18.432388, 13.707191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548689, 18.435644, 13.507732>,  <31.326292, 18.441071, 13.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548689, 18.435644, 13.507732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829812, -0.048476, -0.555934,
		0.047828, 0.998732, -0.015696,
		0.555990, -0.013564, 0.831078,
		31.715487, 18.431576, 13.757056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864336, 18.916594, 12.860523>,  <31.326292, 18.441071, 13.175301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864336, 18.916594, 12.860523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950115, 18.724014, 13.200458>,  <32.001583, 18.608467, 13.404418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950115, 18.724014, 13.200458>,  <31.864336, 18.916594, 12.860523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950115, 18.724014, 13.200458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838543, -0.355417, -0.412947,
		0.500858, 0.801179, 0.327495,
		0.214447, -0.481446, 0.849837,
		32.014450, 18.579580, 13.455408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344477, 19.341656, 12.680843>,  <31.864336, 18.916594, 12.860523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344477, 19.341656, 12.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181469, 19.093361, 12.412929>,  <31.083664, 18.944384, 12.252180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181469, 19.093361, 12.412929>,  <31.344477, 19.341656, 12.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181469, 19.093361, 12.412929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907503, 0.357055, 0.221248,
		0.101813, 0.697996, -0.708827,
		-0.407520, -0.620736, -0.669786,
		31.059214, 18.907141, 12.211992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679306, 19.624125, 12.409257>,  <31.344477, 19.341656, 12.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679306, 19.624125, 12.409257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646627, 19.233616, 12.329034>,  <30.627020, 18.999311, 12.280900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646627, 19.233616, 12.329034>,  <30.679306, 19.624125, 12.409257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646627, 19.233616, 12.329034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954849, 0.018997, 0.296484,
		-0.285638, 0.215723, -0.933742,
		-0.081696, -0.976270, -0.200557,
		30.622118, 18.940735, 12.268867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002722, 19.459965, 12.105549>,  <30.679306, 19.624125, 12.409257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002722, 19.459965, 12.105549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125412, 19.121578, 12.280025>,  <30.199026, 18.918547, 12.384711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125412, 19.121578, 12.280025>,  <30.002722, 19.459965, 12.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125412, 19.121578, 12.280025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854485, -0.042879, 0.517704,
		-0.419256, -0.531512, -0.736016,
		0.306725, -0.845965, 0.436192,
		30.217430, 18.867788, 12.410883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564287, 18.775436, 11.926576>,  <30.002722, 19.459965, 12.105549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564287, 18.775436, 11.926576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732332, 18.772099, 12.289550>,  <29.833158, 18.770096, 12.507334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732332, 18.772099, 12.289550>,  <29.564287, 18.775436, 11.926576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732332, 18.772099, 12.289550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906480, -0.050635, 0.419202,
		0.042451, -0.998682, -0.028836,
		0.420110, -0.008343, 0.907435,
		29.858366, 18.769596, 12.561780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309565, 18.128391, 12.373632>,  <29.564287, 18.775436, 11.926576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309565, 18.128391, 12.373632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426098, 18.452147, 12.577600>,  <29.496017, 18.646400, 12.699980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426098, 18.452147, 12.577600>,  <29.309565, 18.128391, 12.373632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426098, 18.452147, 12.577600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907740, 0.065688, 0.414358,
		0.301881, -0.583588, 0.753852,
		0.291333, 0.809389, 0.509916,
		29.513498, 18.694963, 12.730575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226810, 17.950785, 13.140941>,  <29.309565, 18.128391, 12.373632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226810, 17.950785, 13.140941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172338, 18.310843, 12.975436>,  <29.139656, 18.526876, 12.876134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172338, 18.310843, 12.975436>,  <29.226810, 17.950785, 13.140941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172338, 18.310843, 12.975436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964378, -0.024839, 0.263360,
		0.226784, 0.434886, 0.871460,
		-0.136178, 0.900143, -0.413761,
		29.131485, 18.580885, 12.851308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883499, 18.384987, 13.567772>,  <29.226810, 17.950785, 13.140941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883499, 18.384987, 13.567772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806482, 18.454124, 13.181394>,  <28.760273, 18.495607, 12.949566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806482, 18.454124, 13.181394>,  <28.883499, 18.384987, 13.567772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806482, 18.454124, 13.181394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964050, -0.217020, 0.153330,
		-0.183128, 0.960744, 0.208414,
		-0.192541, 0.172843, -0.965947,
		28.748720, 18.505978, 12.891609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343660, 18.850330, 13.487381>,  <28.883499, 18.384987, 13.567772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343660, 18.850330, 13.487381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322161, 18.662024, 13.135133>,  <28.309261, 18.549040, 12.923784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322161, 18.662024, 13.135133>,  <28.343660, 18.850330, 13.487381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322161, 18.662024, 13.135133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993939, -0.059476, 0.092458,
		-0.095902, 0.880252, -0.464715,
		-0.053747, -0.470765, -0.880620,
		28.306036, 18.520794, 12.870947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859409, 19.248634, 13.017925>,  <28.343660, 18.850330, 13.487381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859409, 19.248634, 13.017925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884590, 18.860676, 12.923828>,  <27.899698, 18.627901, 12.867370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884590, 18.860676, 12.923828>,  <27.859409, 19.248634, 13.017925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884590, 18.860676, 12.923828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983914, -0.099798, 0.148171,
		-0.167187, 0.222131, -0.960576,
		0.062950, -0.969896, -0.235243,
		27.903475, 18.569708, 12.853255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250692, 19.207233, 12.584992>,  <27.859409, 19.248634, 13.017925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250692, 19.207233, 12.584992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345980, 18.827629, 12.667583>,  <27.403152, 18.599867, 12.717136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345980, 18.827629, 12.667583>,  <27.250692, 19.207233, 12.584992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345980, 18.827629, 12.667583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967794, -0.249772, -0.031441,
		0.081409, -0.192337, -0.977946,
		0.238217, -0.949010, 0.206476,
		27.417444, 18.542927, 12.729526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868452, 18.694553, 12.126113>,  <27.250692, 19.207233, 12.584992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868452, 18.694553, 12.126113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945408, 18.482170, 12.456222>,  <26.991581, 18.354740, 12.654286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945408, 18.482170, 12.456222>,  <26.868452, 18.694553, 12.126113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945408, 18.482170, 12.456222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944705, -0.327787, 0.009342,
		0.265553, -0.781435, -0.564660,
		0.192388, -0.530957, 0.825271,
		27.003124, 18.322884, 12.703803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661398, 17.961182, 12.030778>,  <26.868452, 18.694553, 12.126113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661398, 17.961182, 12.030778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676605, 18.028261, 12.424820>,  <26.685730, 18.068510, 12.661245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676605, 18.028261, 12.424820>,  <26.661398, 17.961182, 12.030778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676605, 18.028261, 12.424820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911484, -0.398239, 0.102973,
		0.409575, -0.901822, 0.137715,
		0.038020, 0.167700, 0.985105,
		26.688011, 18.078571, 12.720351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242327, 17.438913, 12.194279>,  <26.661398, 17.961182, 12.030778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242327, 17.438913, 12.194279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305204, 17.638145, 12.535385>,  <26.342930, 17.757685, 12.740048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305204, 17.638145, 12.535385>,  <26.242327, 17.438913, 12.194279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305204, 17.638145, 12.535385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720350, -0.532865, 0.444017,
		0.675564, -0.684085, 0.275029,
		0.157192, 0.498079, 0.852765,
		26.352362, 17.787569, 12.791215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443939, 16.967285, 12.694233>,  <26.242327, 17.438913, 12.194279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443939, 16.967285, 12.694233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277132, 17.279917, 12.879803>,  <26.177048, 17.467497, 12.991145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277132, 17.279917, 12.879803>,  <26.443939, 16.967285, 12.694233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277132, 17.279917, 12.879803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585765, -0.621396, 0.520333,
		0.694963, -0.054762, 0.716957,
		-0.417020, 0.781580, 0.463926,
		26.152025, 17.514391, 13.018980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312138, 16.788212, 13.460440>,  <26.443939, 16.967285, 12.694233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312138, 16.788212, 13.460440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082453, 17.109108, 13.395089>,  <25.944643, 17.301645, 13.355879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082453, 17.109108, 13.395089>,  <26.312138, 16.788212, 13.460440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082453, 17.109108, 13.395089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642488, -0.317869, 0.697258,
		0.507436, 0.505341, 0.697954,
		-0.574211, 0.802241, -0.163378,
		25.910189, 17.349781, 13.346076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062433, 16.963270, 14.185616>,  <26.312138, 16.788212, 13.460440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062433, 16.963270, 14.185616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836397, 17.153328, 13.915828>,  <25.700775, 17.267363, 13.753955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836397, 17.153328, 13.915828>,  <26.062433, 16.963270, 14.185616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836397, 17.153328, 13.915828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818374, -0.219204, 0.531237,
		0.104567, 0.852167, 0.512716,
		-0.565092, 0.475144, -0.674470,
		25.666870, 17.295872, 13.713487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529530, 17.347212, 14.551847>,  <26.062433, 16.963270, 14.185616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529530, 17.347212, 14.551847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379419, 17.309364, 14.183019>,  <25.289352, 17.286655, 13.961721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379419, 17.309364, 14.183019>,  <25.529530, 17.347212, 14.551847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379419, 17.309364, 14.183019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896376, -0.216190, 0.387003,
		-0.235960, 0.971756, -0.003682,
		-0.375277, -0.094618, -0.922071,
		25.266836, 17.280979, 13.906398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014019, 17.770355, 14.545453>,  <25.529530, 17.347212, 14.551847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014019, 17.770355, 14.545453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931625, 17.499697, 14.262690>,  <24.882189, 17.337301, 14.093031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931625, 17.499697, 14.262690>,  <25.014019, 17.770355, 14.545453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931625, 17.499697, 14.262690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824644, -0.268879, 0.497660,
		-0.526813, 0.685460, -0.502606,
		-0.205986, -0.676645, -0.706910,
		24.869829, 17.296703, 14.050616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.253702, 17.806807, 14.422622>,  <25.014019, 17.770355, 14.545453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.253702, 17.806807, 14.422622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355940, 17.447235, 14.280301>,  <24.417282, 17.231491, 14.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355940, 17.447235, 14.280301>,  <24.253702, 17.806807, 14.422622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355940, 17.447235, 14.280301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709357, -0.424428, 0.562738,
		-0.656875, 0.108558, -0.746144,
		0.255595, -0.898930, -0.355802,
		24.432619, 17.177555, 14.173560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568987, 17.481865, 14.304290>,  <24.253702, 17.806807, 14.422622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568987, 17.481865, 14.304290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.808144, 17.165314, 14.253310>,  <23.951637, 16.975382, 14.222722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.808144, 17.165314, 14.253310>,  <23.568987, 17.481865, 14.304290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.808144, 17.165314, 14.253310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756724, -0.609696, 0.235880,
		-0.264376, -0.044587, -0.963389,
		0.597891, -0.791380, -0.127448,
		23.987511, 16.927900, 14.215075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.233356, 16.937321, 13.871794>,  <23.568987, 17.481865, 14.304290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.233356, 16.937321, 13.871794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.519253, 16.744911, 14.074874>,  <23.690790, 16.629465, 14.196722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.519253, 16.744911, 14.074874>,  <23.233356, 16.937321, 13.871794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.519253, 16.744911, 14.074874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677163, -0.657507, 0.330354,
		0.174908, -0.579914, -0.795680,
		0.714743, -0.481023, 0.507700,
		23.733675, 16.600605, 14.227184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212194, 16.256426, 13.597187>,  <23.233356, 16.937321, 13.871794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212194, 16.256426, 13.597187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358931, 16.296082, 13.967182>,  <23.446972, 16.319876, 14.189179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358931, 16.296082, 13.967182>,  <23.212194, 16.256426, 13.597187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358931, 16.296082, 13.967182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755529, -0.548379, 0.358409,
		0.542776, -0.830332, -0.126264,
		0.366839, 0.099139, 0.924986,
		23.468983, 16.325823, 14.244678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945150, 15.633581, 13.891912>,  <23.212194, 16.256426, 13.597187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945150, 15.633581, 13.891912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075121, 15.859311, 14.195480>,  <23.153103, 15.994749, 14.377622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075121, 15.859311, 14.195480>,  <22.945150, 15.633581, 13.891912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075121, 15.859311, 14.195480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713298, -0.380681, 0.588463,
		0.620991, -0.732543, 0.278839,
		0.324925, 0.564325, 0.758921,
		23.172598, 16.028608, 14.423157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971331, 15.252282, 14.495174>,  <22.945150, 15.633581, 13.891912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971331, 15.252282, 14.495174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956142, 15.622652, 14.645492>,  <22.947029, 15.844874, 14.735682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956142, 15.622652, 14.645492>,  <22.971331, 15.252282, 14.495174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956142, 15.622652, 14.645492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669742, -0.302681, 0.678108,
		0.741623, -0.225936, 0.631624,
		-0.037971, 0.925925, 0.375794,
		22.944752, 15.900430, 14.758230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.026363, 15.194622, 15.174258>,  <22.971331, 15.252282, 14.495174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.026363, 15.194622, 15.174258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860424, 15.557545, 15.146852>,  <22.760860, 15.775298, 15.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860424, 15.557545, 15.146852>,  <23.026363, 15.194622, 15.174258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.860424, 15.557545, 15.146852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728107, -0.285868, 0.623008,
		0.545673, 0.308341, 0.779209,
		-0.414850, 0.907307, -0.068514,
		22.735970, 15.829737, 15.126298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.773720, 15.201405, 14.710270>,  <23.026363, 15.194622, 15.174258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.773720, 15.201405, 14.710270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.892609, 14.827186, 14.786595>,  <23.963942, 14.602654, 14.832391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.892609, 14.827186, 14.786595>,  <23.773720, 15.201405, 14.710270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.892609, 14.827186, 14.786595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784671, 0.125469, -0.607083,
		0.544013, 0.330166, 0.771389,
		0.297224, -0.935547, 0.190815,
		23.981775, 14.546521, 14.843840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459127, 15.159395, 14.960183>,  <23.773720, 15.201405, 14.710270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459127, 15.159395, 14.960183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447966, 14.791081, 14.804555>,  <24.441269, 14.570093, 14.711178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447966, 14.791081, 14.804555>,  <24.459127, 15.159395, 14.960183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447966, 14.791081, 14.804555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864482, 0.173193, -0.471885,
		0.501889, -0.349511, 0.791170,
		-0.027904, -0.920786, -0.389069,
		24.439594, 14.514846, 14.687834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060131, 14.675632, 15.225331>,  <24.459127, 15.159395, 14.960183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060131, 14.675632, 15.225331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923229, 14.576979, 14.862667>,  <24.841089, 14.517787, 14.645068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923229, 14.576979, 14.862667>,  <25.060131, 14.675632, 15.225331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923229, 14.576979, 14.862667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922302, 0.096162, -0.374316,
		0.179506, -0.964326, 0.194558,
		-0.342253, -0.246633, -0.906661,
		24.820553, 14.502989, 14.590669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434977, 14.117582, 14.888063>,  <25.060131, 14.675632, 15.225331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434977, 14.117582, 14.888063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298962, 14.364148, 14.603976>,  <25.217354, 14.512088, 14.433524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298962, 14.364148, 14.603976>,  <25.434977, 14.117582, 14.888063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298962, 14.364148, 14.603976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928899, 0.102336, -0.355914,
		-0.146709, -0.780744, -0.607384,
		-0.340035, 0.616414, -0.710218,
		25.196951, 14.549072, 14.390911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021753, 14.626531, 14.839697>,  <25.434977, 14.117582, 14.888063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021753, 14.626531, 14.839697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218781, 14.900448, 15.054521>,  <26.336998, 15.064798, 15.183415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218781, 14.900448, 15.054521>,  <26.021753, 14.626531, 14.839697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218781, 14.900448, 15.054521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848855, -0.514117, -0.122998,
		0.191884, 0.516472, -0.834528,
		0.492570, 0.684792, 0.537060,
		26.366552, 15.105886, 15.215639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559319, 14.953482, 14.451940>,  <26.021753, 14.626531, 14.839697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559319, 14.953482, 14.451940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646715, 14.910452, 14.839896>,  <26.699154, 14.884634, 15.072670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646715, 14.910452, 14.839896>,  <26.559319, 14.953482, 14.451940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646715, 14.910452, 14.839896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557088, -0.802278, -0.214482,
		0.801195, 0.587177, -0.115363,
		0.218492, -0.107575, 0.969891,
		26.712263, 14.878180, 15.130863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.272699, 14.858036, 25.417913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.923227, 14.666458, 25.383743>,  <16.713545, 14.551512, 25.363241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.923227, 14.666458, 25.383743>,  <17.272699, 14.858036, 25.417913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923227, 14.666458, 25.383743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023847, 0.133220, -0.990800,
		0.485919, -0.867678, -0.104970,
		-0.873679, -0.478945, -0.085425,
		16.661123, 14.522775, 25.358116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375738, 14.335955, 24.868210>,  <17.272699, 14.858036, 25.417913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375738, 14.335955, 24.868210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.987947, 14.418144, 24.921717>,  <16.755274, 14.467458, 24.953821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.987947, 14.418144, 24.921717>,  <17.375738, 14.335955, 24.868210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987947, 14.418144, 24.921717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130392, 0.029954, -0.991010,
		-0.207635, -0.978204, -0.002248,
		-0.969477, 0.205476, 0.133769,
		16.697104, 14.479787, 24.961847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.079519, 13.832199, 24.492111>,  <17.375738, 14.335955, 24.868210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.079519, 13.832199, 24.492111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.791006, 14.106859, 24.528479>,  <16.617899, 14.271655, 24.550299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.791006, 14.106859, 24.528479>,  <17.079519, 13.832199, 24.492111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791006, 14.106859, 24.528479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177224, -0.056059, -0.982573,
		-0.669586, -0.724824, 0.162125,
		-0.721281, 0.686649, 0.090920,
		16.574621, 14.312854, 24.555756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642813, 13.674318, 24.003054>,  <17.079519, 13.832199, 24.492111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642813, 13.674318, 24.003054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.527336, 14.048877, 24.082870>,  <16.458050, 14.273612, 24.130760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.527336, 14.048877, 24.082870>,  <16.642813, 13.674318, 24.003054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.527336, 14.048877, 24.082870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388442, 0.075939, -0.918339,
		-0.875082, -0.342628, 0.341813,
		-0.288692, 0.936397, 0.199544,
		16.440729, 14.329796, 24.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924555, 13.730343, 23.871294>,  <16.642813, 13.674318, 24.003054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924555, 13.730343, 23.871294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.070028, 14.102556, 23.854128>,  <16.157312, 14.325884, 23.843828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.070028, 14.102556, 23.854128>,  <15.924555, 13.730343, 23.871294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070028, 14.102556, 23.854128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267098, 0.060034, -0.961797,
		-0.892408, 0.361253, 0.270377,
		0.363684, 0.930533, -0.042915,
		16.179134, 14.381716, 23.841253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408693, 14.238530, 23.546835>,  <15.924555, 13.730343, 23.871294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408693, 14.238530, 23.546835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776576, 14.384998, 23.490181>,  <15.997306, 14.472879, 23.456188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776576, 14.384998, 23.490181>,  <15.408693, 14.238530, 23.546835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776576, 14.384998, 23.490181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145978, -0.015956, -0.989159,
		-0.364461, 0.930411, 0.038778,
		0.919706, 0.366170, -0.141634,
		16.052488, 14.494849, 23.447691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256605, 14.583832, 22.957491>,  <15.408693, 14.238530, 23.546835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256605, 14.583832, 22.957491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.654778, 14.550460, 22.976044>,  <15.893682, 14.530437, 22.987175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.654778, 14.550460, 22.976044>,  <15.256605, 14.583832, 22.957491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.654778, 14.550460, 22.976044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041365, -0.060876, -0.997288,
		0.086026, 0.994653, -0.057147,
		0.995434, -0.083429, 0.046381,
		15.953408, 14.525432, 22.989958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389610, 15.049718, 22.491493>,  <15.256605, 14.583832, 22.957491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389610, 15.049718, 22.491493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.734102, 14.850599, 22.532442>,  <15.940798, 14.731128, 22.557011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.734102, 14.850599, 22.532442>,  <15.389610, 15.049718, 22.491493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734102, 14.850599, 22.532442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190346, 0.129179, -0.973181,
		0.471222, 0.857620, 0.206006,
		0.861231, -0.497796, 0.102373,
		15.992472, 14.701261, 22.563154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855090, 15.515695, 22.159845>,  <15.389610, 15.049718, 22.491493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855090, 15.515695, 22.159845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.027384, 15.154774, 22.152719>,  <16.130760, 14.938221, 22.148443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.027384, 15.154774, 22.152719>,  <15.855090, 15.515695, 22.159845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027384, 15.154774, 22.152719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313946, 0.168317, -0.934402,
		0.846112, 0.396886, 0.355775,
		0.430734, -0.902303, -0.017815,
		16.156605, 14.884083, 22.147375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464058, 15.591990, 21.854197>,  <15.855090, 15.515695, 22.159845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464058, 15.591990, 21.854197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367054, 15.207850, 21.799189>,  <16.308851, 14.977365, 21.766184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367054, 15.207850, 21.799189>,  <16.464058, 15.591990, 21.854197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.367054, 15.207850, 21.799189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222495, 0.082919, -0.971401,
		0.944290, -0.266173, 0.193565,
		-0.242511, -0.960352, -0.137521,
		16.294300, 14.919744, 21.757933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.000832, 15.289821, 21.645248>,  <16.464058, 15.591990, 21.854197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.000832, 15.289821, 21.645248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.707884, 15.059058, 21.500576>,  <16.532114, 14.920601, 21.413773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.707884, 15.059058, 21.500576>,  <17.000832, 15.289821, 21.645248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707884, 15.059058, 21.500576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332721, 0.160231, -0.929313,
		0.594080, -0.800940, 0.074601,
		-0.732370, -0.576907, -0.361679,
		16.488173, 14.885986, 21.392073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287554, 14.898075, 21.012693>,  <17.000832, 15.289821, 21.645248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287554, 14.898075, 21.012693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.894341, 14.834402, 20.976227>,  <16.658413, 14.796199, 20.954346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.894341, 14.834402, 20.976227>,  <17.287554, 14.898075, 21.012693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894341, 14.834402, 20.976227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095891, -0.022231, -0.995144,
		0.156382, -0.986999, 0.037118,
		-0.983031, -0.159182, -0.091168,
		16.599432, 14.786648, 20.948877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231564, 14.278228, 20.655542>,  <17.287554, 14.898075, 21.012693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231564, 14.278228, 20.655542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.887735, 14.475947, 20.603683>,  <16.681438, 14.594580, 20.572567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.887735, 14.475947, 20.603683>,  <17.231564, 14.278228, 20.655542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887735, 14.475947, 20.603683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124954, -0.042700, -0.991243,
		-0.495508, -0.868242, -0.025061,
		-0.859569, 0.494300, -0.129648,
		16.629864, 14.624237, 20.564789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814840, 13.847233, 20.202095>,  <17.231564, 14.278228, 20.655542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814840, 13.847233, 20.202095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.712242, 14.233118, 20.178295>,  <16.650682, 14.464649, 20.164015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.712242, 14.233118, 20.178295>,  <16.814840, 13.847233, 20.202095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712242, 14.233118, 20.178295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037880, -0.051479, -0.997955,
		-0.965802, -0.258226, -0.023339,
		-0.256497, 0.964712, -0.059500,
		16.635294, 14.522532, 20.160444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404015, 13.867491, 19.614061>,  <16.814840, 13.847233, 20.202095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404015, 13.867491, 19.614061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.443573, 14.263745, 19.651711>,  <16.467308, 14.501498, 19.674299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.443573, 14.263745, 19.651711>,  <16.404015, 13.867491, 19.614061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443573, 14.263745, 19.651711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307280, 0.059562, -0.949753,
		-0.946467, 0.122847, -0.298512,
		0.098894, 0.990637, 0.094122,
		16.473242, 14.560936, 19.679947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089010, 14.206256, 19.038778>,  <16.404015, 13.867491, 19.614061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089010, 14.206256, 19.038778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.353849, 14.466008, 19.188408>,  <16.512753, 14.621860, 19.278187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.353849, 14.466008, 19.188408>,  <16.089010, 14.206256, 19.038778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353849, 14.466008, 19.188408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278920, 0.249768, -0.927264,
		-0.695580, 0.718276, -0.015755,
		0.662096, 0.649381, 0.374075,
		16.552479, 14.660823, 19.300631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075655, 14.725748, 18.538862>,  <16.089010, 14.206256, 19.038778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075655, 14.725748, 18.538862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.403145, 14.815981, 18.750071>,  <16.599638, 14.870121, 18.876795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.403145, 14.815981, 18.750071>,  <16.075655, 14.725748, 18.538862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403145, 14.815981, 18.750071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465209, 0.278415, -0.840277,
		-0.336560, 0.933594, 0.123002,
		0.818723, 0.225582, 0.528020,
		16.648762, 14.883656, 18.908476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274061, 15.292112, 18.219353>,  <16.075655, 14.725748, 18.538862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274061, 15.292112, 18.219353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.595095, 15.166262, 18.422081>,  <16.787716, 15.090751, 18.543718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.595095, 15.166262, 18.422081>,  <16.274061, 15.292112, 18.219353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595095, 15.166262, 18.422081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589266, 0.285893, -0.755666,
		0.092857, 0.905138, 0.414853,
		0.802586, -0.314627, 0.506820,
		16.835871, 15.071874, 18.574127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811272, 15.795047, 18.187586>,  <16.274061, 15.292112, 18.219353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811272, 15.795047, 18.187586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.022547, 15.471713, 18.291595>,  <17.149313, 15.277713, 18.354002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.022547, 15.471713, 18.291595>,  <16.811272, 15.795047, 18.187586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022547, 15.471713, 18.291595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756339, 0.308675, -0.576777,
		0.385964, 0.501315, 0.774413,
		0.528189, -0.808334, 0.260026,
		17.181004, 15.229213, 18.369604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483253, 16.031687, 18.420317>,  <16.811272, 15.795047, 18.187586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483253, 16.031687, 18.420317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509346, 15.659498, 18.276112>,  <17.525002, 15.436185, 18.189589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509346, 15.659498, 18.276112>,  <17.483253, 16.031687, 18.420317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509346, 15.659498, 18.276112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770198, 0.276654, -0.574680,
		0.634460, -0.240178, 0.734694,
		0.065231, -0.930471, -0.360511,
		17.528915, 15.380357, 18.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134529, 16.005562, 18.211594>,  <17.483253, 16.031687, 18.420317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134529, 16.005562, 18.211594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.983778, 15.697416, 18.005873>,  <17.893328, 15.512529, 17.882441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.983778, 15.697416, 18.005873>,  <18.134529, 16.005562, 18.211594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983778, 15.697416, 18.005873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703030, 0.123614, -0.700335,
		0.603086, -0.625509, 0.495001,
		-0.376876, -0.770362, -0.514301,
		17.870714, 15.466308, 17.851582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712433, 15.707229, 18.009239>,  <18.134529, 16.005562, 18.211594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712433, 15.707229, 18.009239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.425980, 15.555028, 17.775188>,  <18.254108, 15.463708, 17.634758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.425980, 15.555028, 17.775188>,  <18.712433, 15.707229, 18.009239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425980, 15.555028, 17.775188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601524, 0.088740, -0.793911,
		0.354008, -0.920513, 0.165331,
		-0.716134, -0.380501, -0.585125,
		18.211140, 15.440878, 17.599651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049553, 16.280989, 18.243629>,  <18.712433, 15.707229, 18.009239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049553, 16.280989, 18.243629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.151249, 16.661636, 18.312662>,  <19.212267, 16.890024, 18.354082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.151249, 16.661636, 18.312662>,  <19.049553, 16.280989, 18.243629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151249, 16.661636, 18.312662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142643, -0.213391, 0.966498,
		0.956564, -0.221106, -0.189994,
		0.254242, 0.951618, 0.172583,
		19.227522, 16.947123, 18.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500612, 16.283180, 18.812660>,  <19.049553, 16.280989, 18.243629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500612, 16.283180, 18.812660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.386616, 16.666212, 18.795603>,  <19.318218, 16.896032, 18.785368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.386616, 16.666212, 18.795603>,  <19.500612, 16.283180, 18.812660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386616, 16.666212, 18.795603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103597, 0.074998, 0.991788,
		0.952915, 0.278233, -0.120577,
		-0.284991, 0.957581, -0.042643,
		19.301119, 16.953487, 18.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115450, 16.684721, 19.140610>,  <19.500612, 16.283180, 18.812660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115450, 16.684721, 19.140610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.782362, 16.905796, 19.153955>,  <19.582508, 17.038441, 19.161963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.782362, 16.905796, 19.153955>,  <20.115450, 16.684721, 19.140610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782362, 16.905796, 19.153955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195874, 0.237684, 0.951388,
		0.517889, 0.798777, -0.306181,
		-0.832721, 0.552686, 0.033366,
		19.532545, 17.071602, 19.163965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310165, 17.232536, 19.475054>,  <20.115450, 16.684721, 19.140610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310165, 17.232536, 19.475054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.915110, 17.268553, 19.526371>,  <19.678076, 17.290163, 19.557161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.915110, 17.268553, 19.526371>,  <20.310165, 17.232536, 19.475054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915110, 17.268553, 19.526371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150725, 0.321083, 0.934980,
		0.042996, 0.942761, -0.330687,
		-0.987640, 0.090044, 0.128292,
		19.618818, 17.295567, 19.564859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128757, 17.976280, 19.826212>,  <20.310165, 17.232536, 19.475054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128757, 17.976280, 19.826212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.840731, 17.708546, 19.899414>,  <19.667913, 17.547905, 19.943336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.840731, 17.708546, 19.899414>,  <20.128757, 17.976280, 19.826212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840731, 17.708546, 19.899414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068999, 0.331495, 0.940931,
		-0.690464, 0.664907, -0.284883,
		-0.720069, -0.669335, 0.183007,
		19.624710, 17.507746, 19.954315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762995, 18.353252, 20.365910>,  <20.128757, 17.976280, 19.826212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762995, 18.353252, 20.365910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.616835, 17.981977, 20.394066>,  <19.529139, 17.759212, 20.410959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.616835, 17.981977, 20.394066>,  <19.762995, 18.353252, 20.365910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616835, 17.981977, 20.394066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116434, 0.120599, 0.985849,
		-0.923540, 0.352033, -0.152139,
		-0.365399, -0.928185, 0.070390,
		19.507215, 17.703522, 20.415182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180502, 18.365433, 20.926332>,  <19.762995, 18.353252, 20.365910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180502, 18.365433, 20.926332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.310703, 17.991081, 20.872400>,  <19.388824, 17.766470, 20.840040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.310703, 17.991081, 20.872400>,  <19.180502, 18.365433, 20.926332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310703, 17.991081, 20.872400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159748, -0.194977, 0.967711,
		-0.931949, -0.293454, -0.212971,
		0.325503, -0.935878, -0.134830,
		19.408354, 17.710318, 20.831951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717585, 18.017839, 21.262676>,  <19.180502, 18.365433, 20.926332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717585, 18.017839, 21.262676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.026407, 17.764446, 21.242193>,  <19.211700, 17.612410, 21.229904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.026407, 17.764446, 21.242193>,  <18.717585, 18.017839, 21.262676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026407, 17.764446, 21.242193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266936, -0.396337, 0.878443,
		-0.576777, -0.664540, -0.475095,
		0.772058, -0.633486, -0.051209,
		19.258024, 17.574400, 21.226831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436840, 17.349226, 21.529360>,  <18.717585, 18.017839, 21.262676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436840, 17.349226, 21.529360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.836210, 17.327284, 21.534077>,  <19.075832, 17.314117, 21.536907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.836210, 17.327284, 21.534077>,  <18.436840, 17.349226, 21.529360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836210, 17.327284, 21.534077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037579, -0.497732, 0.866517,
		-0.041665, -0.865595, -0.499009,
		0.998425, -0.054856, 0.011790,
		19.135738, 17.310827, 21.537613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706247, 16.763512, 21.863407>,  <18.436840, 17.349226, 21.529360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.706247, 16.763512, 21.863407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.057049, 16.954477, 21.885103>,  <19.267529, 17.069057, 21.898121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.057049, 16.954477, 21.885103>,  <18.706247, 16.763512, 21.863407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057049, 16.954477, 21.885103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207814, -0.478670, 0.853047,
		0.433222, -0.736852, -0.519008,
		0.877002, 0.477415, 0.054242,
		19.320150, 17.097702, 21.901377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222065, 16.209801, 21.848703>,  <18.706247, 16.763512, 21.863407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222065, 16.209801, 21.848703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.367912, 16.528875, 22.040848>,  <19.455420, 16.720320, 22.156136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.367912, 16.528875, 22.040848>,  <19.222065, 16.209801, 21.848703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367912, 16.528875, 22.040848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048042, -0.531305, 0.845817,
		0.929918, -0.285321, -0.232045,
		0.364616, 0.797688, 0.480363,
		19.477297, 16.768183, 22.184958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887608, 16.053385, 22.253168>,  <19.222065, 16.209801, 21.848703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887608, 16.053385, 22.253168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.718624, 16.363770, 22.440535>,  <19.617233, 16.549999, 22.552954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.718624, 16.363770, 22.440535>,  <19.887608, 16.053385, 22.253168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.718624, 16.363770, 22.440535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056145, -0.538208, 0.840940,
		0.904641, 0.328965, 0.270938,
		-0.422461, 0.775960, 0.468415,
		19.591887, 16.596558, 22.581059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047661, 15.771359, 22.820330>,  <19.887608, 16.053385, 22.253168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047661, 15.771359, 22.820330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.827591, 16.088121, 22.926304>,  <19.695549, 16.278179, 22.989889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.827591, 16.088121, 22.926304>,  <20.047661, 15.771359, 22.820330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827591, 16.088121, 22.926304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119971, -0.239019, 0.963575,
		0.826385, 0.561921, 0.036497,
		-0.550177, 0.791906, 0.264936,
		19.662539, 16.325693, 23.005785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424843, 15.975593, 23.341410>,  <20.047661, 15.771359, 22.820330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424843, 15.975593, 23.341410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063341, 16.138041, 23.395512>,  <19.846439, 16.235510, 23.427973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063341, 16.138041, 23.395512>,  <20.424843, 15.975593, 23.341410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063341, 16.138041, 23.395512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052992, -0.207396, 0.976821,
		0.424758, 0.889974, 0.165914,
		-0.903755, 0.406120, 0.135255,
		19.792215, 16.259876, 23.436089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493515, 16.342644, 23.914015>,  <20.424843, 15.975593, 23.341410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493515, 16.342644, 23.914015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.096352, 16.298420, 23.896521>,  <19.858053, 16.271885, 23.886024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.096352, 16.298420, 23.896521>,  <20.493515, 16.342644, 23.914015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096352, 16.298420, 23.896521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032344, -0.102784, 0.994178,
		-0.114410, 0.988540, 0.098479,
		-0.992907, -0.110559, -0.043733,
		19.798479, 16.265253, 23.883400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178371, 16.719778, 24.568739>,  <20.493515, 16.342644, 23.914015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.178371, 16.719778, 24.568739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.897894, 16.475449, 24.421648>,  <19.729609, 16.328850, 24.333393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.897894, 16.475449, 24.421648>,  <20.178371, 16.719778, 24.568739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897894, 16.475449, 24.421648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143088, -0.384709, 0.911880,
		-0.698466, 0.692021, 0.182353,
		-0.701193, -0.610825, -0.367726,
		19.687536, 16.292202, 24.311331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529839, 16.922430, 24.944485>,  <20.178371, 16.719778, 24.568739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529839, 16.922430, 24.944485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.462284, 16.553989, 24.804171>,  <19.421751, 16.332926, 24.719982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.462284, 16.553989, 24.804171>,  <19.529839, 16.922430, 24.944485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.462284, 16.553989, 24.804171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047792, -0.347827, 0.936340,
		-0.984476, 0.174902, 0.014723,
		-0.168889, -0.921101, -0.350786,
		19.411617, 16.277658, 24.698935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830624, 16.676426, 25.152655>,  <19.529839, 16.922430, 24.944485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830624, 16.676426, 25.152655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.088926, 16.378496, 25.085440>,  <19.243908, 16.199738, 25.045111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.088926, 16.378496, 25.085440>,  <18.830624, 16.676426, 25.152655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088926, 16.378496, 25.085440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059446, -0.268449, 0.961458,
		-0.761227, -0.610878, -0.217629,
		0.645755, -0.744825, -0.168036,
		19.282654, 16.155048, 25.035028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.505432, 16.127966, 25.467745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.871328, 15.974166, 25.418089>,  <19.090866, 15.881886, 25.388294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.871328, 15.974166, 25.418089>,  <18.505432, 16.127966, 25.467745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871328, 15.974166, 25.418089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211666, -0.717738, 0.663362,
		-0.344163, -0.580528, -0.737929,
		0.914740, -0.384499, -0.124141,
		19.145750, 15.858816, 25.380846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332088, 15.463327, 25.322481>,  <18.505432, 16.127966, 25.467745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332088, 15.463327, 25.322481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.711296, 15.475248, 25.449209>,  <18.938820, 15.482401, 25.525246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.711296, 15.475248, 25.449209>,  <18.332088, 15.463327, 25.322481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711296, 15.475248, 25.449209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239034, -0.590523, 0.770808,
		0.210063, -0.806470, -0.552702,
		0.948017, 0.029803, 0.316821,
		18.995701, 15.484189, 25.544256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574173, 14.760592, 25.348112>,  <18.332088, 15.463327, 25.322481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574173, 14.760592, 25.348112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.795860, 14.991606, 25.587879>,  <18.928871, 15.130214, 25.731739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.795860, 14.991606, 25.587879>,  <18.574173, 14.760592, 25.348112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795860, 14.991606, 25.587879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250682, -0.570885, 0.781824,
		0.793728, -0.583562, -0.171616,
		0.554216, 0.577534, 0.599415,
		18.962126, 15.164866, 25.767704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886047, 14.256785, 25.809916>,  <18.574173, 14.760592, 25.348112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886047, 14.256785, 25.809916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929918, 14.616884, 25.978451>,  <18.956242, 14.832944, 26.079573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929918, 14.616884, 25.978451>,  <18.886047, 14.256785, 25.809916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929918, 14.616884, 25.978451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380566, -0.353560, 0.854496,
		0.918226, -0.254067, 0.303826,
		0.109678, 0.900247, 0.421338,
		18.962822, 14.886958, 26.104853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125183, 14.064613, 26.488152>,  <18.886047, 14.256785, 25.809916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125183, 14.064613, 26.488152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.987587, 14.438777, 26.520844>,  <18.905029, 14.663276, 26.540459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.987587, 14.438777, 26.520844>,  <19.125183, 14.064613, 26.488152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987587, 14.438777, 26.520844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309853, -0.195250, 0.930521,
		0.886376, 0.294765, 0.357004,
		-0.343990, 0.935410, 0.081731,
		18.884390, 14.719399, 26.545362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264553, 14.235836, 27.183388>,  <19.125183, 14.064613, 26.488152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.264553, 14.235836, 27.183388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.990414, 14.504280, 27.070316>,  <18.825930, 14.665346, 27.002474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.990414, 14.504280, 27.070316>,  <19.264553, 14.235836, 27.183388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990414, 14.504280, 27.070316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463589, -0.102729, 0.880075,
		0.561587, 0.734206, 0.381524,
		-0.685350, 0.671109, -0.282679,
		18.784809, 14.705613, 26.985512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331347, 14.790716, 27.667591>,  <19.264553, 14.235836, 27.183388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331347, 14.790716, 27.667591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.964117, 14.838952, 27.516541>,  <18.743780, 14.867893, 27.425911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.964117, 14.838952, 27.516541>,  <19.331347, 14.790716, 27.667591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964117, 14.838952, 27.516541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364943, 0.114871, 0.923916,
		0.154793, 0.986034, -0.061452,
		-0.918072, 0.120589, -0.377627,
		18.688696, 14.875129, 27.403252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054674, 15.387609, 27.911285>,  <19.331347, 14.790716, 27.667591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054674, 15.387609, 27.911285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.729593, 15.172161, 27.822380>,  <18.534544, 15.042892, 27.769037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.729593, 15.172161, 27.822380>,  <19.054674, 15.387609, 27.911285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729593, 15.172161, 27.822380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283523, 0.032302, 0.958421,
		-0.509045, 0.841930, -0.178963,
		-0.812704, -0.538619, -0.222263,
		18.485783, 15.010575, 27.755701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625937, 15.681499, 28.386850>,  <19.054674, 15.387609, 27.911285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625937, 15.681499, 28.386850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.396662, 15.371792, 28.279543>,  <18.259096, 15.185967, 28.215158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.396662, 15.371792, 28.279543>,  <18.625937, 15.681499, 28.386850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396662, 15.371792, 28.279543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333774, -0.078386, 0.939389,
		-0.748366, 0.627986, -0.213500,
		-0.573188, -0.774267, -0.268266,
		18.224705, 15.139512, 28.199062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.004782, 15.860368, 28.701469>,  <18.625937, 15.681499, 28.386850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.004782, 15.860368, 28.701469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.985174, 15.468167, 28.625349>,  <17.973410, 15.232847, 28.579676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.985174, 15.468167, 28.625349>,  <18.004782, 15.860368, 28.701469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985174, 15.468167, 28.625349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271190, -0.170309, 0.947339,
		-0.961277, 0.098045, -0.257553,
		-0.049018, -0.980501, -0.190303,
		17.970469, 15.174017, 28.568258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377281, 15.581844, 28.954634>,  <18.004782, 15.860368, 28.701469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377281, 15.581844, 28.954634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.597910, 15.250772, 28.913235>,  <17.730288, 15.052129, 28.888395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.597910, 15.250772, 28.913235>,  <17.377281, 15.581844, 28.954634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597910, 15.250772, 28.913235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379343, -0.359410, 0.852598,
		-0.742877, -0.431009, -0.512216,
		0.551573, -0.827681, -0.103497,
		17.763382, 15.002468, 28.882185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.924774, 14.910578, 28.910574>,  <17.377281, 15.581844, 28.954634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.924774, 14.910578, 28.910574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.288681, 14.850031, 29.065189>,  <17.507025, 14.813703, 29.157959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.288681, 14.850031, 29.065189>,  <16.924774, 14.910578, 28.910574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288681, 14.850031, 29.065189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412067, -0.441985, 0.796775,
		0.050239, -0.884159, -0.464477,
		0.909768, -0.151366, 0.386538,
		17.561611, 14.804621, 29.181150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852509, 14.360765, 29.275333>,  <16.924774, 14.910578, 28.910574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852509, 14.360765, 29.275333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.217175, 14.454329, 29.410482>,  <17.435974, 14.510467, 29.491571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.217175, 14.454329, 29.410482>,  <16.852509, 14.360765, 29.275333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217175, 14.454329, 29.410482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262063, -0.302386, 0.916453,
		0.316533, -0.924040, -0.214375,
		0.911663, 0.233908, 0.337872,
		17.490673, 14.524501, 29.511845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260483, 13.702203, 29.508524>,  <16.852509, 14.360765, 29.275333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260483, 13.702203, 29.508524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402771, 14.026291, 29.694859>,  <17.488144, 14.220744, 29.806660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402771, 14.026291, 29.694859>,  <17.260483, 13.702203, 29.508524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402771, 14.026291, 29.694859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035167, -0.509691, 0.859638,
		0.933931, -0.289409, -0.209801,
		0.355720, 0.810221, 0.465838,
		17.509487, 14.269357, 29.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728050, 13.472740, 30.007027>,  <17.260483, 13.702203, 29.508524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728050, 13.472740, 30.007027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.659271, 13.843047, 30.141720>,  <17.618004, 14.065231, 30.222536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.659271, 13.843047, 30.141720>,  <17.728050, 13.472740, 30.007027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659271, 13.843047, 30.141720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097261, -0.356109, 0.929369,
		0.980293, 0.127051, 0.151273,
		-0.171947, 0.925767, 0.336734,
		17.607687, 14.120777, 30.242741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062771, 13.484446, 30.597584>,  <17.728050, 13.472740, 30.007027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062771, 13.484446, 30.597584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.820747, 13.801547, 30.627106>,  <17.675533, 13.991808, 30.644819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.820747, 13.801547, 30.627106>,  <18.062771, 13.484446, 30.597584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820747, 13.801547, 30.627106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133426, -0.192347, 0.972214,
		0.784921, 0.578400, 0.222155,
		-0.605059, 0.792753, 0.073804,
		17.639229, 14.039372, 30.649246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256405, 13.844881, 31.189259>,  <18.062771, 13.484446, 30.597584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256405, 13.844881, 31.189259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.880535, 13.950871, 31.102724>,  <17.655014, 14.014464, 31.050804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.880535, 13.950871, 31.102724>,  <18.256405, 13.844881, 31.189259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880535, 13.950871, 31.102724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276836, -0.217595, 0.935956,
		0.200930, 0.939384, 0.277823,
		-0.939675, 0.264973, -0.216334,
		17.598633, 14.030362, 31.037825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138855, 14.205220, 31.764256>,  <18.256405, 13.844881, 31.189259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138855, 14.205220, 31.764256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.787292, 14.087643, 31.613995>,  <17.576355, 14.017096, 31.523838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.787292, 14.087643, 31.613995>,  <18.138855, 14.205220, 31.764256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787292, 14.087643, 31.613995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323426, -0.211607, 0.922290,
		-0.350593, 0.932104, 0.090914,
		-0.878908, -0.293945, -0.375654,
		17.523621, 13.999459, 31.501299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547174, 14.482777, 32.276348>,  <18.138855, 14.205220, 31.764256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.547174, 14.482777, 32.276348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.348782, 14.200613, 32.073803>,  <17.229746, 14.031315, 31.952276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.348782, 14.200613, 32.073803>,  <17.547174, 14.482777, 32.276348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348782, 14.200613, 32.073803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376171, -0.351032, 0.857480,
		-0.782623, 0.615772, -0.091249,
		-0.495981, -0.705408, -0.506362,
		17.199987, 13.988991, 31.921894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798309, 14.562162, 32.427296>,  <17.547174, 14.482777, 32.276348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798309, 14.562162, 32.427296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.811882, 14.190538, 32.279949>,  <16.820024, 13.967564, 32.191540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.811882, 14.190538, 32.279949>,  <16.798309, 14.562162, 32.427296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811882, 14.190538, 32.279949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691040, -0.288086, 0.662925,
		-0.722020, 0.232066, -0.651792,
		0.033929, -0.929060, -0.368371,
		16.822062, 13.911820, 32.169437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109926, 14.196922, 32.421036>,  <16.798309, 14.562162, 32.427296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109926, 14.196922, 32.421036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.355616, 13.881543, 32.407898>,  <16.503029, 13.692316, 32.400017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.355616, 13.881543, 32.407898>,  <16.109926, 14.196922, 32.421036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355616, 13.881543, 32.407898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651754, -0.530320, 0.542197,
		-0.444909, -0.311627, -0.839610,
		0.614225, -0.788447, -0.032840,
		16.539883, 13.645009, 32.398045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691210, 13.542428, 32.321938>,  <16.109926, 14.196922, 32.421036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691210, 13.542428, 32.321938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037050, 13.466990, 32.508224>,  <16.244555, 13.421726, 32.619999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.037050, 13.466990, 32.508224>,  <15.691210, 13.542428, 32.321938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037050, 13.466990, 32.508224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495827, -0.470329, 0.730032,
		0.081360, -0.862103, -0.500159,
		0.864602, -0.188597, 0.465720,
		16.296431, 13.410411, 32.647942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980546, 12.775365, 32.377487>,  <15.691210, 13.542428, 32.321938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980546, 12.775365, 32.377487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.050102, 13.011485, 32.692780>,  <16.091835, 13.153157, 32.881954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.050102, 13.011485, 32.692780>,  <15.980546, 12.775365, 32.377487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050102, 13.011485, 32.692780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550156, -0.605634, 0.574923,
		0.816756, -0.533623, 0.219444,
		0.173890, 0.590300, 0.788231,
		16.102270, 13.188575, 32.929249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276291, 12.318886, 32.982086>,  <15.980546, 12.775365, 32.377487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276291, 12.318886, 32.982086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.108517, 11.961670, 33.047268>,  <16.007853, 11.747340, 33.086376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.108517, 11.961670, 33.047268>,  <16.276291, 12.318886, 32.982086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108517, 11.961670, 33.047268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043466, -0.159544, -0.986233,
		0.906743, -0.420745, 0.028101,
		-0.419436, -0.893039, 0.162953,
		15.982686, 11.693758, 33.096153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632050, 11.853152, 32.513046>,  <16.276291, 12.318886, 32.982086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.632050, 11.853152, 32.513046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.277908, 11.697180, 32.614323>,  <16.065424, 11.603597, 32.675091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.277908, 11.697180, 32.614323>,  <16.632050, 11.853152, 32.513046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277908, 11.697180, 32.614323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103046, -0.366472, -0.924705,
		0.453360, -0.844779, 0.284276,
		-0.885351, -0.389931, 0.253195,
		16.012302, 11.580201, 32.690281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668795, 11.161662, 32.210255>,  <16.632050, 11.853152, 32.513046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668795, 11.161662, 32.210255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.290335, 11.273099, 32.276207>,  <16.063259, 11.339961, 32.315781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.290335, 11.273099, 32.276207>,  <16.668795, 11.161662, 32.210255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290335, 11.273099, 32.276207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271220, -0.404080, -0.873590,
		-0.176749, -0.871267, 0.457880,
		-0.946150, 0.278592, 0.164885,
		16.006489, 11.356677, 32.325672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290758, 10.649908, 31.864172>,  <16.668795, 11.161662, 32.210255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290758, 10.649908, 31.864172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.042933, 10.959495, 31.916504>,  <15.894238, 11.145247, 31.947903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.042933, 10.959495, 31.916504>,  <16.290758, 10.649908, 31.864172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042933, 10.959495, 31.916504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322819, -0.099315, -0.941235,
		-0.715492, -0.625389, 0.311384,
		-0.619563, 0.773967, 0.130828,
		15.857063, 11.191685, 31.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559440, 10.568175, 31.526184>,  <16.290758, 10.649908, 31.864172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559440, 10.568175, 31.526184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.605165, 10.962574, 31.574757>,  <15.632599, 11.199213, 31.603901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.605165, 10.962574, 31.574757>,  <15.559440, 10.568175, 31.526184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605165, 10.962574, 31.574757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276455, 0.148976, -0.949410,
		-0.954204, 0.074958, 0.289613,
		0.114312, 0.985996, 0.121431,
		15.639458, 11.258372, 31.611185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032075, 10.808608, 31.094481>,  <15.559440, 10.568175, 31.526184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032075, 10.808608, 31.094481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.292198, 11.110618, 31.128035>,  <15.448272, 11.291823, 31.148167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.292198, 11.110618, 31.128035>,  <15.032075, 10.808608, 31.094481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292198, 11.110618, 31.128035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164583, 0.247830, -0.954721,
		-0.741628, 0.607057, 0.285430,
		0.650308, 0.755025, 0.083887,
		15.487290, 11.337125, 31.153200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596058, 11.326706, 30.859713>,  <15.032075, 10.808608, 31.094481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596058, 11.326706, 30.859713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983296, 11.425894, 30.845291>,  <15.215640, 11.485406, 30.836639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983296, 11.425894, 30.845291>,  <14.596058, 11.326706, 30.859713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983296, 11.425894, 30.845291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124624, 0.351653, -0.927798,
		-0.217387, 0.902691, 0.371337,
		0.968097, 0.247969, -0.036052,
		15.273726, 11.500284, 30.834476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579474, 11.934966, 30.467751>,  <14.596058, 11.326706, 30.859713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579474, 11.934966, 30.467751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.965787, 11.831602, 30.458899>,  <15.197575, 11.769584, 30.453587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.965787, 11.831602, 30.458899>,  <14.579474, 11.934966, 30.467751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965787, 11.831602, 30.458899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084561, 0.394406, -0.915037,
		0.245184, 0.881855, 0.402762,
		0.965782, -0.258410, -0.022131,
		15.255522, 11.754079, 30.452259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952880, 12.504955, 30.279163>,  <14.579474, 11.934966, 30.467751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952880, 12.504955, 30.279163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.190226, 12.198819, 30.179424>,  <15.332633, 12.015138, 30.119581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.190226, 12.198819, 30.179424>,  <14.952880, 12.504955, 30.279163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190226, 12.198819, 30.179424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074775, 0.360844, -0.929624,
		0.801454, 0.532960, 0.271340,
		0.593363, -0.765340, -0.249348,
		15.368235, 11.969217, 30.104620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583968, 12.856657, 29.956907>,  <14.952880, 12.504955, 30.279163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583968, 12.856657, 29.956907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.610759, 12.478403, 29.829605>,  <15.626833, 12.251451, 29.753223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.610759, 12.478403, 29.829605>,  <15.583968, 12.856657, 29.956907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610759, 12.478403, 29.829605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475385, 0.310686, -0.823094,
		0.877225, -0.096166, 0.470350,
		0.066978, -0.945635, -0.318257,
		15.630852, 12.194713, 29.734127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216673, 12.706908, 29.810102>,  <15.583968, 12.856657, 29.956907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216673, 12.706908, 29.810102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.013617, 12.444976, 29.586140>,  <15.891783, 12.287816, 29.451761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.013617, 12.444976, 29.586140>,  <16.216673, 12.706908, 29.810102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013617, 12.444976, 29.586140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452388, 0.350486, -0.820064,
		0.733243, -0.669594, 0.118316,
		-0.507641, -0.654831, -0.559907,
		15.861324, 12.248527, 29.418167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670586, 12.606015, 29.300726>,  <16.216673, 12.706908, 29.810102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670586, 12.606015, 29.300726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.333454, 12.454324, 29.147980>,  <16.131174, 12.363309, 29.056332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.333454, 12.454324, 29.147980>,  <16.670586, 12.606015, 29.300726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333454, 12.454324, 29.147980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318947, 0.219549, -0.921993,
		0.433484, -0.898879, -0.064089,
		-0.842831, -0.379228, -0.381866,
		16.080605, 12.340555, 29.033421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811050, 12.188103, 28.670668>,  <16.670586, 12.606015, 29.300726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811050, 12.188103, 28.670668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.427694, 12.291634, 28.622503>,  <16.197681, 12.353752, 28.593605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.427694, 12.291634, 28.622503>,  <16.811050, 12.188103, 28.670668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427694, 12.291634, 28.622503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193409, 0.278506, -0.940759,
		-0.209961, -0.924901, -0.316977,
		-0.958389, 0.258829, -0.120409,
		16.140177, 12.369282, 28.586380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587521, 11.808051, 28.135147>,  <16.811050, 12.188103, 28.670668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587521, 11.808051, 28.135147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.372160, 12.141024, 28.187580>,  <16.242943, 12.340807, 28.219040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.372160, 12.141024, 28.187580>,  <16.587521, 11.808051, 28.135147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372160, 12.141024, 28.187580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221566, 0.289920, -0.931051,
		-0.813039, -0.472235, -0.340532,
		-0.538402, 0.832431, 0.131085,
		16.210640, 12.390753, 28.226906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672762, 12.168840, 27.490877>,  <16.587521, 11.808051, 28.135147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672762, 12.168840, 27.490877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.463051, 12.469565, 27.650831>,  <16.337223, 12.650001, 27.746803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.463051, 12.469565, 27.650831>,  <16.672762, 12.168840, 27.490877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463051, 12.469565, 27.650831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089948, 0.515865, -0.851934,
		-0.846783, -0.410683, -0.338082,
		-0.524279, 0.751813, 0.399886,
		16.305767, 12.695109, 27.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168480, 12.429466, 26.961994>,  <16.672762, 12.168840, 27.490877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168480, 12.429466, 26.961994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.158184, 12.746427, 27.205776>,  <16.152006, 12.936603, 27.352045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.158184, 12.746427, 27.205776>,  <16.168480, 12.429466, 26.961994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158184, 12.746427, 27.205776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030542, 0.609998, -0.791814,
		-0.999202, -0.001769, -0.039904,
		-0.025742, 0.792401, 0.609457,
		16.150461, 12.984147, 27.388613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643387, 12.886106, 26.618071>,  <16.168480, 12.429466, 26.961994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643387, 12.886106, 26.618071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.888041, 13.080844, 26.867514>,  <16.034834, 13.197686, 27.017179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.888041, 13.080844, 26.867514>,  <15.643387, 12.886106, 26.618071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888041, 13.080844, 26.867514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035369, 0.804277, -0.593202,
		-0.790348, 0.340767, 0.509144,
		0.611637, 0.486844, 0.623606,
		16.071533, 13.226897, 27.054596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231970, 13.468727, 26.891647>,  <15.643387, 12.886106, 26.618071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231970, 13.468727, 26.891647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631157, 13.484292, 26.871458>,  <15.870669, 13.493630, 26.859344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631157, 13.484292, 26.871458>,  <15.231970, 13.468727, 26.891647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631157, 13.484292, 26.871458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062954, 0.725127, -0.685732,
		0.009916, 0.687515, 0.726103,
		0.997967, 0.038912, -0.050472,
		15.930547, 13.495966, 26.856316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356186, 14.245414, 26.834503>,  <15.231970, 13.468727, 26.891647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356186, 14.245414, 26.834503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.720404, 14.120020, 26.726700>,  <15.938934, 14.044784, 26.662018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.720404, 14.120020, 26.726700>,  <15.356186, 14.245414, 26.834503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720404, 14.120020, 26.726700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043594, 0.721093, -0.691465,
		0.411104, 0.617862, 0.670254,
		0.910545, -0.313484, -0.269509,
		15.993567, 14.025975, 26.645847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822869, 14.838675, 26.803301>,  <15.356186, 14.245414, 26.834503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822869, 14.838675, 26.803301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.970389, 14.551042, 26.567707>,  <16.058901, 14.378462, 26.426350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.970389, 14.551042, 26.567707>,  <15.822869, 14.838675, 26.803301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970389, 14.551042, 26.567707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113878, 0.663834, -0.739159,
		0.922507, 0.205529, 0.326710,
		0.368800, -0.719084, -0.588986,
		16.081030, 14.335317, 26.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450657, 15.121367, 26.505636>,  <15.822869, 14.838675, 26.803301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450657, 15.121367, 26.505636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.371437, 14.826246, 26.247513>,  <16.323906, 14.649174, 26.092638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.371437, 14.826246, 26.247513>,  <16.450657, 15.121367, 26.505636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371437, 14.826246, 26.247513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094651, 0.640877, -0.761786,
		0.975612, -0.211949, -0.057091,
		-0.198048, -0.737803, -0.645309,
		16.312023, 14.604905, 26.053921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.214958, 20.098068, 15.747971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.422348, 19.761057, 15.806394>,  <32.546780, 19.558849, 15.841448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.422348, 19.761057, 15.806394>,  <32.214958, 20.098068, 15.747971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422348, 19.761057, 15.806394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607196, -0.242483, 0.756647,
		-0.602081, -0.480985, -0.637301,
		0.518471, -0.842529, 0.146058,
		32.577888, 19.508299, 15.850211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592148, 19.576834, 15.334217>,  <32.214958, 20.098068, 15.747971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592148, 19.576834, 15.334217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.474335, 19.435997, 14.978850>,  <32.403648, 19.351496, 14.765631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.474335, 19.435997, 14.978850>,  <32.592148, 19.576834, 15.334217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474335, 19.435997, 14.978850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921913, -0.349489, -0.167132,
		-0.251646, -0.868268, 0.427533,
		-0.294534, -0.352090, -0.888416,
		32.385975, 19.330370, 14.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669758, 18.826738, 15.270656>,  <32.592148, 19.576834, 15.334217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669758, 18.826738, 15.270656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.720421, 18.986958, 14.907663>,  <32.750816, 19.083088, 14.689868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.720421, 18.986958, 14.907663>,  <32.669758, 18.826738, 15.270656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720421, 18.986958, 14.907663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897965, -0.434988, -0.066670,
		-0.421448, -0.806442, -0.414769,
		0.126654, 0.400546, -0.907481,
		32.758415, 19.107121, 14.635419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059193, 18.270840, 14.891761>,  <32.669758, 18.826738, 15.270656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059193, 18.270840, 14.891761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.830288, 18.140957, 14.590542>,  <32.692944, 18.063026, 14.409811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.830288, 18.140957, 14.590542>,  <33.059193, 18.270840, 14.891761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830288, 18.140957, 14.590542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112431, 0.940666, -0.320166,
		0.812325, -0.098554, -0.574817,
		-0.572265, -0.324706, -0.753046,
		32.658607, 18.043545, 14.364628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391670, 18.416086, 14.152137>,  <33.059193, 18.270840, 14.891761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391670, 18.416086, 14.152137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.993950, 18.422771, 14.194248>,  <32.755318, 18.426783, 14.219515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.993950, 18.422771, 14.194248>,  <33.391670, 18.416086, 14.152137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993950, 18.422771, 14.194248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014342, 0.957672, -0.287504,
		-0.105627, -0.287376, -0.951976,
		-0.994302, 0.016715, 0.105277,
		32.695660, 18.427786, 14.225831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095131, 18.730633, 13.631736>,  <33.391670, 18.416086, 14.152137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095131, 18.730633, 13.631736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.790703, 18.776752, 13.887074>,  <32.608047, 18.804424, 14.040277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.790703, 18.776752, 13.887074>,  <33.095131, 18.730633, 13.631736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790703, 18.776752, 13.887074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099422, 0.951715, -0.290438,
		-0.641009, -0.284508, -0.712855,
		-0.761067, 0.115300, 0.638344,
		32.562382, 18.811342, 14.078577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544746, 19.125362, 13.305006>,  <33.095131, 18.730633, 13.631736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544746, 19.125362, 13.305006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554920, 19.153351, 13.703896>,  <32.561024, 19.170143, 13.943230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554920, 19.153351, 13.703896>,  <32.544746, 19.125362, 13.305006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554920, 19.153351, 13.703896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056635, 0.995845, -0.071317,
		-0.998071, 0.058292, 0.021368,
		0.025437, 0.069969, 0.997225,
		32.562550, 19.174341, 14.003063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961573, 19.533516, 13.604429>,  <32.544746, 19.125362, 13.305006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961573, 19.533516, 13.604429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300034, 19.563913, 13.815428>,  <32.503109, 19.582151, 13.942027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300034, 19.563913, 13.815428>,  <31.961573, 19.533516, 13.604429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300034, 19.563913, 13.815428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125261, 0.990412, 0.058246,
		-0.518012, -0.115360, 0.847559,
		0.846152, 0.075994, 0.527496,
		32.553879, 19.586712, 13.973677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898781, 19.874338, 14.402745>,  <31.961573, 19.533516, 13.604429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898781, 19.874338, 14.402745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.232815, 19.938210, 14.192172>,  <32.433235, 19.976532, 14.065828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.232815, 19.938210, 14.192172>,  <31.898781, 19.874338, 14.402745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232815, 19.938210, 14.192172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122667, 0.986904, 0.104758,
		0.536267, -0.022906, 0.843738,
		0.835087, 0.159677, -0.526434,
		32.483341, 19.986113, 14.034242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190674, 19.704830, 14.223960>,  <31.898781, 19.874338, 14.402745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190674, 19.704830, 14.223960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.139139, 19.308212, 14.230193>,  <31.108219, 19.070242, 14.233933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.139139, 19.308212, 14.230193>,  <31.190674, 19.704830, 14.223960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139139, 19.308212, 14.230193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949171, 0.127850, 0.287627,
		-0.287187, 0.022265, -0.957616,
		-0.128835, -0.991544, 0.015584,
		31.100489, 19.010750, 14.234868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598726, 19.545519, 13.696651>,  <31.190674, 19.704830, 14.223960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598726, 19.545519, 13.696651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628233, 19.241203, 13.954568>,  <30.645937, 19.058615, 14.109319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628233, 19.241203, 13.954568>,  <30.598726, 19.545519, 13.696651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628233, 19.241203, 13.954568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971429, 0.091431, 0.219011,
		-0.225575, -0.642527, -0.732308,
		0.073765, -0.760789, 0.644794,
		30.650362, 19.012966, 14.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064693, 18.988789, 13.463462>,  <30.598726, 19.545519, 13.696651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064693, 18.988789, 13.463462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.148653, 18.950165, 13.852639>,  <30.199028, 18.926991, 14.086145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.148653, 18.950165, 13.852639>,  <30.064693, 18.988789, 13.463462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148653, 18.950165, 13.852639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970025, 0.104066, 0.219596,
		-0.122455, -0.989872, -0.071826,
		0.209898, -0.096564, 0.972943,
		30.211622, 18.921196, 14.144523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612692, 18.555984, 13.722066>,  <30.064693, 18.988789, 13.463462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612692, 18.555984, 13.722066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.747995, 18.711342, 14.064932>,  <29.829178, 18.804556, 14.270652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.747995, 18.711342, 14.064932>,  <29.612692, 18.555984, 13.722066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747995, 18.711342, 14.064932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935681, 0.041618, 0.350383,
		0.100413, -0.920554, 0.377489,
		0.338257, 0.388392, 0.857166,
		29.849472, 18.827860, 14.322082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235592, 18.230316, 14.219884>,  <29.612692, 18.555984, 13.722066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235592, 18.230316, 14.219884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.390255, 18.533888, 14.429462>,  <29.483053, 18.716030, 14.555210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.390255, 18.533888, 14.429462>,  <29.235592, 18.230316, 14.219884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390255, 18.533888, 14.429462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837044, 0.050329, 0.544815,
		0.387107, -0.649224, 0.654719,
		0.386658, 0.758931, 0.523946,
		29.506252, 18.761566, 14.586646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098614, 18.090801, 14.915190>,  <29.235592, 18.230316, 14.219884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098614, 18.090801, 14.915190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.148968, 18.487617, 14.916487>,  <29.179180, 18.725706, 14.917265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.148968, 18.487617, 14.916487>,  <29.098614, 18.090801, 14.915190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148968, 18.487617, 14.916487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782820, 0.097328, 0.614590,
		0.609382, -0.079907, 0.788840,
		0.125886, 0.992040, 0.003243,
		29.186733, 18.785229, 14.917459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008394, 18.337824, 15.557958>,  <29.098614, 18.090801, 14.915190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008394, 18.337824, 15.557958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.932211, 18.637577, 15.304296>,  <28.886501, 18.817429, 15.152100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.932211, 18.637577, 15.304296>,  <29.008394, 18.337824, 15.557958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932211, 18.637577, 15.304296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929141, 0.070920, 0.362860,
		0.316895, 0.658328, 0.682775,
		-0.190458, 0.749383, -0.634154,
		28.875074, 18.862392, 15.114050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787186, 18.860991, 15.989949>,  <29.008394, 18.337824, 15.557958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787186, 18.860991, 15.989949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.638939, 18.960522, 15.632015>,  <28.549992, 19.020241, 15.417255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.638939, 18.960522, 15.632015>,  <28.787186, 18.860991, 15.989949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638939, 18.960522, 15.632015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923041, 0.008320, 0.384611,
		0.103148, 0.968512, 0.226594,
		-0.370615, 0.248828, -0.894834,
		28.527754, 19.035170, 15.363564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270775, 19.367764, 16.106998>,  <28.787186, 18.860991, 15.989949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270775, 19.367764, 16.106998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.190130, 19.239433, 15.736827>,  <28.141745, 19.162436, 15.514724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.190130, 19.239433, 15.736827>,  <28.270775, 19.367764, 16.106998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190130, 19.239433, 15.736827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972602, -0.046085, 0.227863,
		-0.115754, 0.946016, -0.302746,
		-0.201610, -0.320828, -0.925431,
		28.129646, 19.143185, 15.459198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679544, 19.664732, 15.931595>,  <28.270775, 19.367764, 16.106998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679544, 19.664732, 15.931595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.684116, 19.379383, 15.651318>,  <27.686859, 19.208174, 15.483151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.684116, 19.379383, 15.651318>,  <27.679544, 19.664732, 15.931595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684116, 19.379383, 15.651318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997555, -0.056446, 0.041192,
		-0.068937, 0.698509, -0.712273,
		0.011432, -0.713371, -0.700693,
		27.687546, 19.165371, 15.441110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169392, 19.940926, 15.456017>,  <27.679544, 19.664732, 15.931595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169392, 19.940926, 15.456017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.213467, 19.548223, 15.394034>,  <27.239912, 19.312601, 15.356845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.213467, 19.548223, 15.394034>,  <27.169392, 19.940926, 15.456017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213467, 19.548223, 15.394034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986470, -0.127068, 0.103587,
		-0.121386, 0.141436, -0.982477,
		0.110190, -0.981758, -0.154946,
		27.246523, 19.253696, 15.347548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673523, 19.680185, 14.870873>,  <27.169392, 19.940926, 15.456017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673523, 19.680185, 14.870873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.741068, 19.368374, 15.112144>,  <26.781595, 19.181288, 15.256907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.741068, 19.368374, 15.112144>,  <26.673523, 19.680185, 14.870873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741068, 19.368374, 15.112144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984598, -0.161534, 0.066878,
		0.045301, -0.605181, -0.794798,
		0.168860, -0.779527, 0.603178,
		26.791725, 19.134516, 15.293097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089876, 19.413694, 14.718647>,  <26.673523, 19.680185, 14.870873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089876, 19.413694, 14.718647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.238125, 19.195084, 15.019033>,  <26.327074, 19.063917, 15.199265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.238125, 19.195084, 15.019033>,  <26.089876, 19.413694, 14.718647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238125, 19.195084, 15.019033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928746, -0.225434, 0.294297,
		0.008452, -0.806528, -0.591135,
		0.370621, -0.546526, 0.750965,
		26.349312, 19.031126, 15.244323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752934, 18.771570, 14.679301>,  <26.089876, 19.413694, 14.718647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752934, 18.771570, 14.679301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910107, 18.749590, 15.046471>,  <26.004412, 18.736403, 15.266772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910107, 18.749590, 15.046471>,  <25.752934, 18.771570, 14.679301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910107, 18.749590, 15.046471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836662, -0.435571, 0.332075,
		0.381574, -0.898476, -0.217123,
		0.392934, -0.054948, 0.917924,
		26.027987, 18.733105, 15.321848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667784, 18.037636, 14.881998>,  <25.752934, 18.771570, 14.679301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667784, 18.037636, 14.881998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.703138, 18.275616, 15.201553>,  <25.724352, 18.418404, 15.393287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.703138, 18.275616, 15.201553>,  <25.667784, 18.037636, 14.881998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703138, 18.275616, 15.201553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834716, -0.393408, 0.385330,
		0.543541, -0.700903, 0.461842,
		0.088386, 0.594950, 0.798889,
		25.729654, 18.454100, 15.441220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666050, 17.595043, 15.523904>,  <25.667784, 18.037636, 14.881998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666050, 17.595043, 15.523904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.558905, 17.968258, 15.619980>,  <25.494617, 18.192186, 15.677626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.558905, 17.968258, 15.619980>,  <25.666050, 17.595043, 15.523904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558905, 17.968258, 15.619980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835979, -0.349013, 0.423472,
		0.478944, -0.087360, 0.873488,
		-0.267864, 0.933037, 0.240189,
		25.478546, 18.248169, 15.692037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419518, 17.489559, 16.195181>,  <25.666050, 17.595043, 15.523904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419518, 17.489559, 16.195181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.271976, 17.837069, 16.063011>,  <25.183453, 18.045574, 15.983709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.271976, 17.837069, 16.063011>,  <25.419518, 17.489559, 16.195181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271976, 17.837069, 16.063011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901530, -0.247858, 0.354696,
		0.226253, 0.428717, 0.874649,
		-0.368853, 0.868774, -0.330423,
		25.161320, 18.097700, 15.963884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108622, 17.784273, 16.798576>,  <25.419518, 17.489559, 16.195181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108622, 17.784273, 16.798576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.959269, 17.982134, 16.484657>,  <24.869658, 18.100849, 16.296307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.959269, 17.982134, 16.484657>,  <25.108622, 17.784273, 16.798576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959269, 17.982134, 16.484657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927477, -0.216627, 0.304726,
		-0.019276, 0.841661, 0.539662,
		-0.373382, 0.494651, -0.784797,
		24.847254, 18.130529, 16.249218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562305, 18.249386, 17.088419>,  <25.108622, 17.784273, 16.798576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562305, 18.249386, 17.088419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.473646, 18.190914, 16.702776>,  <24.420450, 18.155832, 16.471390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.473646, 18.190914, 16.702776>,  <24.562305, 18.249386, 17.088419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473646, 18.190914, 16.702776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933167, -0.255113, 0.253214,
		-0.282971, 0.955798, -0.079864,
		-0.221647, -0.146178, -0.964108,
		24.407152, 18.147060, 16.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934624, 18.537100, 17.051571>,  <24.562305, 18.249386, 17.088419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934624, 18.537100, 17.051571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.963619, 18.299620, 16.731005>,  <23.981016, 18.157131, 16.538666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.963619, 18.299620, 16.731005>,  <23.934624, 18.537100, 17.051571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.963619, 18.299620, 16.731005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955966, -0.270473, 0.113903,
		-0.284385, 0.757871, -0.587160,
		0.072487, -0.593697, -0.801417,
		23.985365, 18.121510, 16.490580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.315968, 18.706301, 16.666126>,  <23.934624, 18.537100, 17.051571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.315968, 18.706301, 16.666126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.447353, 18.357536, 16.520864>,  <23.526184, 18.148277, 16.433706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.447353, 18.357536, 16.520864>,  <23.315968, 18.706301, 16.666126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.447353, 18.357536, 16.520864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917108, -0.386368, 0.098149,
		-0.225889, 0.300815, -0.926544,
		0.328462, -0.871912, -0.363156,
		23.545893, 18.095963, 16.411917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778622, 18.456884, 16.187101>,  <23.315968, 18.706301, 16.666126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778622, 18.456884, 16.187101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.997925, 18.130438, 16.260174>,  <23.129507, 17.934570, 16.304016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.997925, 18.130438, 16.260174>,  <22.778622, 18.456884, 16.187101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.997925, 18.130438, 16.260174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827565, -0.497914, 0.259264,
		-0.120630, -0.293322, -0.948372,
		0.548256, -0.816114, 0.182680,
		23.162401, 17.885603, 16.314978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563633, 17.859392, 15.725307>,  <22.778622, 18.456884, 16.187101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563633, 17.859392, 15.725307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.707218, 17.725473, 16.073803>,  <22.793369, 17.645123, 16.282900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.707218, 17.725473, 16.073803>,  <22.563633, 17.859392, 15.725307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.707218, 17.725473, 16.073803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815264, -0.566930, 0.118043,
		0.454410, -0.752662, -0.476457,
		0.358964, -0.334798, 0.871238,
		22.814907, 17.625034, 16.335175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459991, 17.147800, 15.743201>,  <22.563633, 17.859392, 15.725307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459991, 17.147800, 15.743201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465042, 17.279604, 16.120829>,  <22.468073, 17.358686, 16.347404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465042, 17.279604, 16.120829>,  <22.459991, 17.147800, 15.743201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465042, 17.279604, 16.120829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725494, -0.646710, 0.235426,
		0.688113, -0.687888, 0.230892,
		0.012627, 0.329511, 0.944067,
		22.468830, 17.378458, 16.404049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215807, 16.984453, 14.984129>,  <22.459991, 17.147800, 15.743201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215807, 16.984453, 14.984129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.379673, 16.621698, 15.023582>,  <22.477993, 16.404045, 15.047253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.379673, 16.621698, 15.023582>,  <22.215807, 16.984453, 14.984129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379673, 16.621698, 15.023582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798614, 0.304283, -0.519256,
		0.440895, 0.291489, 0.848908,
		0.409666, -0.906888, 0.098630,
		22.502573, 16.349632, 15.053170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.887510, 17.132721, 15.030060>,  <22.215807, 16.984453, 14.984129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.887510, 17.132721, 15.030060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.894796, 16.738949, 14.960129>,  <22.899168, 16.502686, 14.918170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.894796, 16.738949, 14.960129>,  <22.887510, 17.132721, 15.030060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.894796, 16.738949, 14.960129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888633, 0.096081, -0.448441,
		0.458257, -0.147189, 0.876548,
		0.018214, -0.984431, -0.174827,
		22.900261, 16.443619, 14.907681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.478662, 16.897182, 15.390951>,  <22.887510, 17.132721, 15.030060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.478662, 16.897182, 15.390951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389549, 16.636368, 15.101064>,  <23.336081, 16.479879, 14.927131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389549, 16.636368, 15.101064>,  <23.478662, 16.897182, 15.390951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389549, 16.636368, 15.101064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918316, 0.109153, -0.380501,
		0.327206, -0.750291, 0.574457,
		-0.222782, -0.652035, -0.724719,
		23.322714, 16.440758, 14.883648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950607, 16.303907, 15.483183>,  <23.478662, 16.897182, 15.390951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950607, 16.303907, 15.483183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.809851, 16.302547, 15.108768>,  <23.725397, 16.301731, 14.884120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.809851, 16.302547, 15.108768>,  <23.950607, 16.303907, 15.483183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.809851, 16.302547, 15.108768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911253, 0.227367, -0.343398,
		0.213990, -0.973803, -0.076912,
		-0.351889, -0.003398, -0.936035,
		23.704285, 16.301529, 14.827958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591604, 16.025534, 15.042848>,  <23.950607, 16.303907, 15.483183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591604, 16.025534, 15.042848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.333464, 16.185650, 14.782604>,  <24.178579, 16.281719, 14.626458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.333464, 16.185650, 14.782604>,  <24.591604, 16.025534, 15.042848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333464, 16.185650, 14.782604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759995, 0.422316, -0.494021,
		0.077012, -0.813277, -0.576759,
		-0.645350, 0.400288, -0.650610,
		24.139858, 16.305737, 14.587421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882620, 15.978157, 14.309462>,  <24.591604, 16.025534, 15.042848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882620, 15.978157, 14.309462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.611687, 16.270193, 14.273264>,  <24.449127, 16.445415, 14.251546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.611687, 16.270193, 14.273264>,  <24.882620, 15.978157, 14.309462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611687, 16.270193, 14.273264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602282, 0.479669, -0.638101,
		-0.422464, -0.486709, -0.764616,
		-0.677333, 0.730090, -0.090493,
		24.408487, 16.489220, 14.246116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.646116, 16.036657, 13.595304>,  <24.882620, 15.978157, 14.309462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.646116, 16.036657, 13.595304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590057, 16.396006, 13.761817>,  <24.556421, 16.611614, 13.861725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590057, 16.396006, 13.761817>,  <24.646116, 16.036657, 13.595304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590057, 16.396006, 13.761817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655434, 0.399304, -0.641064,
		-0.742135, 0.183001, -0.644784,
		-0.140149, 0.898369, 0.416282,
		24.548012, 16.665516, 13.886702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512077, 16.507023, 13.045328>,  <24.646116, 16.036657, 13.595304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512077, 16.507023, 13.045328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.613838, 16.732849, 13.359409>,  <24.674894, 16.868345, 13.547858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.613838, 16.732849, 13.359409>,  <24.512077, 16.507023, 13.045328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.613838, 16.732849, 13.359409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644457, 0.506407, -0.572911,
		-0.721078, 0.651781, -0.235007,
		0.254403, 0.564566, 0.785204,
		24.690159, 16.902220, 13.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671644, 17.123196, 12.765224>,  <24.512077, 16.507023, 13.045328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671644, 17.123196, 12.765224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.853006, 17.188532, 13.115708>,  <24.961823, 17.227734, 13.325998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.853006, 17.188532, 13.115708>,  <24.671644, 17.123196, 12.765224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853006, 17.188532, 13.115708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615930, 0.653152, -0.440480,
		-0.644247, 0.739400, 0.195535,
		0.453405, 0.163342, 0.876210,
		24.989027, 17.237534, 13.378572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876694, 17.776096, 12.750364>,  <24.671644, 17.123196, 12.765224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876694, 17.776096, 12.750364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.098492, 17.641739, 13.054919>,  <25.231571, 17.561125, 13.237652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.098492, 17.641739, 13.054919>,  <24.876694, 17.776096, 12.750364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098492, 17.641739, 13.054919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732623, 0.630988, -0.255180,
		-0.394713, 0.699307, 0.595963,
		0.554495, -0.335894, 0.761387,
		25.264841, 17.540972, 13.283336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124502, 18.340094, 13.208183>,  <24.876694, 17.776096, 12.750364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124502, 18.340094, 13.208183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.380865, 18.034874, 13.241633>,  <25.534683, 17.851742, 13.261703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.380865, 18.034874, 13.241633>,  <25.124502, 18.340094, 13.208183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380865, 18.034874, 13.241633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765038, 0.626028, -0.151020,
		0.062884, 0.160767, 0.984987,
		0.640908, -0.763049, 0.083626,
		25.573137, 17.805960, 13.266721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652578, 18.560740, 13.655736>,  <25.124502, 18.340094, 13.208183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652578, 18.560740, 13.655736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.803436, 18.255262, 13.446151>,  <25.893951, 18.071976, 13.320400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.803436, 18.255262, 13.446151>,  <25.652578, 18.560740, 13.655736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803436, 18.255262, 13.446151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909532, 0.412110, 0.054014,
		0.174679, -0.496931, 0.850027,
		0.377146, -0.763692, -0.523962,
		25.916580, 18.026155, 13.288962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272133, 18.534168, 13.894854>,  <25.652578, 18.560740, 13.655736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272133, 18.534168, 13.894854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.288097, 18.292028, 13.576870>,  <26.297676, 18.146746, 13.386080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.288097, 18.292028, 13.576870>,  <26.272133, 18.534168, 13.894854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288097, 18.292028, 13.576870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943852, 0.283962, -0.168848,
		0.327950, -0.743585, 0.582692,
		0.039909, -0.605348, -0.794960,
		26.300070, 18.110424, 13.338382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914791, 18.246861, 14.028219>,  <26.272133, 18.534168, 13.894854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914791, 18.246861, 14.028219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.834242, 18.191412, 13.640357>,  <26.785912, 18.158144, 13.407640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.834242, 18.191412, 13.640357>,  <26.914791, 18.246861, 14.028219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834242, 18.191412, 13.640357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973009, 0.085594, -0.214308,
		0.112704, -0.986640, 0.117642,
		-0.201375, -0.138620, -0.969656,
		26.773829, 18.149826, 13.349461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443100, 17.696266, 13.773032>,  <26.914791, 18.246861, 14.028219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443100, 17.696266, 13.773032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.304487, 17.886463, 13.449595>,  <27.221319, 18.000582, 13.255533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.304487, 17.886463, 13.449595>,  <27.443100, 17.696266, 13.773032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304487, 17.886463, 13.449595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937877, 0.159688, -0.308036,
		-0.017347, -0.865104, -0.501293,
		-0.346534, 0.475494, -0.808591,
		27.200527, 18.029112, 13.207018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740288, 17.317335, 13.054256>,  <27.443100, 17.696266, 13.773032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740288, 17.317335, 13.054256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.644978, 17.691311, 12.949099>,  <27.587791, 17.915697, 12.886003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.644978, 17.691311, 12.949099>,  <27.740288, 17.317335, 13.054256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644978, 17.691311, 12.949099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929890, 0.141518, -0.339525,
		-0.280231, -0.325364, -0.903111,
		-0.238275, 0.934939, -0.262895,
		27.573496, 17.971792, 12.870230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044552, 17.360407, 12.366699>,  <27.740288, 17.317335, 13.054256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044552, 17.360407, 12.366699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.986233, 17.727539, 12.514389>,  <27.951241, 17.947819, 12.603003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.986233, 17.727539, 12.514389>,  <28.044552, 17.360407, 12.366699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986233, 17.727539, 12.514389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871617, 0.295722, -0.390937,
		-0.468002, 0.264823, -0.843115,
		-0.145799, 0.917833, 0.369223,
		27.942493, 18.002890, 12.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314177, 17.783175, 11.869187>,  <28.044552, 17.360407, 12.366699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314177, 17.783175, 11.869187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.297550, 18.017330, 12.193061>,  <28.287575, 18.157824, 12.387385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.297550, 18.017330, 12.193061>,  <28.314177, 17.783175, 11.869187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297550, 18.017330, 12.193061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923717, 0.331388, -0.192170,
		-0.380814, 0.739932, -0.554510,
		-0.041566, 0.585391, 0.809685,
		28.285080, 18.192947, 12.435966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268095, 18.467716, 11.688990>,  <28.314177, 17.783175, 11.869187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268095, 18.467716, 11.688990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.451557, 18.465195, 12.044427>,  <28.561634, 18.463682, 12.257689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.451557, 18.465195, 12.044427>,  <28.268095, 18.467716, 11.688990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451557, 18.465195, 12.044427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837904, 0.336044, -0.430107,
		-0.295896, 0.941825, 0.159408,
		0.458654, -0.006302, 0.888593,
		28.589153, 18.463305, 12.311005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.400381, 17.750353, 23.112295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481216, 17.386551, 22.966991>,  <19.529718, 17.168270, 22.879808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481216, 17.386551, 22.966991>,  <19.400381, 17.750353, 23.112295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481216, 17.386551, 22.966991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465762, 0.415537, -0.781278,
		0.861525, -0.011305, 0.507589,
		0.202089, -0.909506, -0.363261,
		19.541843, 17.113699, 22.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994442, 17.853941, 22.739159>,  <19.400381, 17.750353, 23.112295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994442, 17.853941, 22.739159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803770, 17.535110, 22.590864>,  <19.689367, 17.343813, 22.501888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803770, 17.535110, 22.590864>,  <19.994442, 17.853941, 22.739159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803770, 17.535110, 22.590864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124309, 0.356377, -0.926036,
		0.870244, -0.487508, -0.070794,
		-0.476680, -0.797077, -0.370736,
		19.660767, 17.295988, 22.479643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.499533, 17.515594, 22.242882>,  <19.994442, 17.853941, 22.739159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.499533, 17.515594, 22.242882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134151, 17.415319, 22.114656>,  <19.914923, 17.355154, 22.037722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134151, 17.415319, 22.114656>,  <20.499533, 17.515594, 22.242882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134151, 17.415319, 22.114656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215320, 0.370690, -0.903452,
		0.345310, -0.894285, -0.284631,
		-0.913454, -0.250684, -0.320561,
		19.860115, 17.340113, 22.018488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543221, 17.414410, 21.553593>,  <20.499533, 17.515594, 22.242882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543221, 17.414410, 21.553593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148956, 17.346992, 21.550457>,  <19.912397, 17.306541, 21.548576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148956, 17.346992, 21.550457>,  <20.543221, 17.414410, 21.553593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148956, 17.346992, 21.550457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020763, -0.075052, -0.996963,
		0.167445, -0.982833, 0.077476,
		-0.985663, -0.168545, -0.007839,
		19.853258, 17.296429, 21.548105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361515, 16.913332, 21.009008>,  <20.543221, 17.414410, 21.553593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361515, 16.913332, 21.009008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.019712, 17.095320, 21.109268>,  <19.814631, 17.204512, 21.169424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.019712, 17.095320, 21.109268>,  <20.361515, 16.913332, 21.009008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019712, 17.095320, 21.109268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249299, 0.064124, -0.966301,
		-0.455710, -0.888195, 0.058629,
		-0.854505, 0.454969, 0.250648,
		19.763361, 17.231810, 21.184464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811783, 16.476305, 20.695786>,  <20.361515, 16.913332, 21.009008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811783, 16.476305, 20.695786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688559, 16.853580, 20.745569>,  <19.614624, 17.079947, 20.775440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688559, 16.853580, 20.745569>,  <19.811783, 16.476305, 20.695786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688559, 16.853580, 20.745569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274563, 0.037114, -0.960853,
		-0.910886, -0.330175, 0.247532,
		-0.308062, 0.943190, 0.124461,
		19.596140, 17.136538, 20.782907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019396, 16.469685, 20.583220>,  <19.811783, 16.476305, 20.695786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019396, 16.469685, 20.583220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201103, 16.820614, 20.521326>,  <19.310127, 17.031172, 20.484190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201103, 16.820614, 20.521326>,  <19.019396, 16.469685, 20.583220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201103, 16.820614, 20.521326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156713, -0.092283, -0.983323,
		-0.876972, 0.470943, 0.095567,
		0.454270, 0.877324, -0.154732,
		19.337383, 17.083811, 20.474907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521145, 16.787945, 20.175228>,  <19.019396, 16.469685, 20.583220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521145, 16.787945, 20.175228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857670, 16.995569, 20.114868>,  <19.059586, 17.120144, 20.078651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857670, 16.995569, 20.114868>,  <18.521145, 16.787945, 20.175228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857670, 16.995569, 20.114868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162069, -0.024101, -0.986485,
		-0.515681, 0.854399, 0.063847,
		0.841313, 0.519059, -0.150900,
		19.110064, 17.151287, 20.069597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358524, 17.352964, 19.732336>,  <18.521145, 16.787945, 20.175228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358524, 17.352964, 19.732336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754272, 17.338842, 19.675917>,  <18.991722, 17.330368, 19.642065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754272, 17.338842, 19.675917>,  <18.358524, 17.352964, 19.732336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754272, 17.338842, 19.675917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139598, 0.040667, -0.989373,
		0.040667, 0.998549, 0.035306,
		0.989373, -0.035306, -0.141050,
		19.051085, 17.328251, 19.633602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.543869, 17.960712, 19.422667>,  <18.358524, 17.352964, 19.732336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.543869, 17.960712, 19.422667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799210, 17.668583, 19.325396>,  <18.952414, 17.493305, 19.267033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799210, 17.668583, 19.325396>,  <18.543869, 17.960712, 19.422667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799210, 17.668583, 19.325396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055093, 0.271759, -0.960787,
		0.767773, 0.626715, 0.133241,
		0.638349, -0.730325, -0.243177,
		18.990715, 17.449486, 19.252443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940828, 18.215853, 18.868217>,  <18.543869, 17.960712, 19.422667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940828, 18.215853, 18.868217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.072248, 17.838924, 18.842640>,  <19.151100, 17.612768, 18.827293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.072248, 17.838924, 18.842640>,  <18.940828, 18.215853, 18.868217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072248, 17.838924, 18.842640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044919, 0.083216, -0.995519,
		0.943418, 0.324205, 0.069669,
		0.328550, -0.942319, -0.063944,
		19.170813, 17.556229, 18.823456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588806, 18.206127, 18.395525>,  <18.940828, 18.215853, 18.868217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588806, 18.206127, 18.395525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494690, 17.817627, 18.410021>,  <19.438219, 17.584528, 18.418718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494690, 17.817627, 18.410021>,  <19.588806, 18.206127, 18.395525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.494690, 17.817627, 18.410021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229373, -0.091724, -0.969007,
		0.944471, -0.219687, 0.244361,
		-0.235292, -0.971249, 0.036240,
		19.424103, 17.526253, 18.420893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161394, 17.719076, 18.330835>,  <19.588806, 18.206127, 18.395525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161394, 17.719076, 18.330835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819147, 17.565287, 18.192217>,  <19.613798, 17.473013, 18.109047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819147, 17.565287, 18.192217>,  <20.161394, 17.719076, 18.330835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819147, 17.565287, 18.192217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341276, 0.084333, -0.936172,
		0.389161, -0.919275, 0.059056,
		-0.855619, -0.384477, -0.346545,
		19.562462, 17.449944, 18.088253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223734, 17.107159, 17.881929>,  <20.161394, 17.719076, 18.330835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223734, 17.107159, 17.881929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936655, 17.349073, 17.743862>,  <19.764408, 17.494223, 17.661022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936655, 17.349073, 17.743862>,  <20.223734, 17.107159, 17.881929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936655, 17.349073, 17.743862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315547, -0.159412, -0.935424,
		-0.620757, -0.780268, -0.076429,
		-0.717698, 0.604788, -0.345168,
		19.721346, 17.530510, 17.640312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222445, 16.499369, 18.296682>,  <20.223734, 17.107159, 17.881929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222445, 16.499369, 18.296682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537140, 16.271658, 18.201208>,  <20.725956, 16.135031, 18.143925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537140, 16.271658, 18.201208>,  <20.222445, 16.499369, 18.296682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537140, 16.271658, 18.201208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257969, -0.654492, 0.710699,
		-0.560801, -0.497559, -0.661768,
		0.786736, -0.569276, -0.238685,
		20.773161, 16.100876, 18.129602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971249, 15.790719, 18.184843>,  <20.222445, 16.499369, 18.296682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971249, 15.790719, 18.184843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356449, 15.763615, 18.289179>,  <20.587570, 15.747352, 18.351780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356449, 15.763615, 18.289179>,  <19.971249, 15.790719, 18.184843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356449, 15.763615, 18.289179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243567, -0.633077, 0.734771,
		0.115343, -0.771117, -0.626158,
		0.963001, -0.067761, 0.260839,
		20.645350, 15.743286, 18.367430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114977, 14.969240, 18.205910>,  <19.971249, 15.790719, 18.184843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114977, 14.969240, 18.205910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368238, 15.180785, 18.431978>,  <20.520195, 15.307713, 18.567619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368238, 15.180785, 18.431978>,  <20.114977, 14.969240, 18.205910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.368238, 15.180785, 18.431978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157384, -0.626954, 0.762993,
		0.757856, -0.572042, -0.313724,
		0.633155, 0.528863, 0.565172,
		20.558186, 15.339444, 18.601530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630112, 14.486887, 18.395145>,  <20.114977, 14.969240, 18.205910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630112, 14.486887, 18.395145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688122, 14.765366, 18.676365>,  <20.722927, 14.932453, 18.845097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688122, 14.765366, 18.676365>,  <20.630112, 14.486887, 18.395145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688122, 14.765366, 18.676365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137111, -0.689564, 0.711127,
		0.979882, -0.199526, -0.004546,
		0.145023, 0.696197, 0.703049,
		20.731628, 14.974225, 18.887280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124672, 14.174773, 18.852888>,  <20.630112, 14.486887, 18.395145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124672, 14.174773, 18.852888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958832, 14.474147, 19.059944>,  <20.859327, 14.653771, 19.184177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958832, 14.474147, 19.059944>,  <21.124672, 14.174773, 18.852888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958832, 14.474147, 19.059944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009244, -0.565341, 0.824806,
		0.909957, 0.346749, 0.227471,
		-0.414600, 0.748435, 0.517641,
		20.834452, 14.698677, 19.215237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479588, 14.117966, 19.511894>,  <21.124672, 14.174773, 18.852888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479588, 14.117966, 19.511894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187387, 14.380718, 19.586596>,  <21.012068, 14.538370, 19.631416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187387, 14.380718, 19.586596>,  <21.479588, 14.117966, 19.511894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187387, 14.380718, 19.586596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102148, -0.375488, 0.921181,
		0.675229, 0.653847, 0.341394,
		-0.730500, 0.656881, 0.186752,
		20.968237, 14.577783, 19.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728477, 14.574426, 20.096451>,  <21.479588, 14.117966, 19.511894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728477, 14.574426, 20.096451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329165, 14.561748, 20.076740>,  <21.089577, 14.554141, 20.064915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329165, 14.561748, 20.076740>,  <21.728477, 14.574426, 20.096451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329165, 14.561748, 20.076740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046844, -0.073381, 0.996203,
		-0.035190, 0.996800, 0.071770,
		-0.998282, -0.031694, -0.049276,
		21.029680, 14.552239, 20.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489868, 15.055476, 20.636833>,  <21.728477, 14.574426, 20.096451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489868, 15.055476, 20.636833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.198595, 14.796212, 20.547718>,  <21.023830, 14.640654, 20.494249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.198595, 14.796212, 20.547718>,  <21.489868, 15.055476, 20.636833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198595, 14.796212, 20.547718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164634, -0.150125, 0.974863,
		-0.665314, 0.746559, 0.002609,
		-0.728185, -0.648160, -0.222790,
		20.980139, 14.601764, 20.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999424, 15.249595, 21.166143>,  <21.489868, 15.055476, 20.636833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999424, 15.249595, 21.166143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887209, 14.884566, 21.047138>,  <20.819880, 14.665549, 20.975735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887209, 14.884566, 21.047138>,  <20.999424, 15.249595, 21.166143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887209, 14.884566, 21.047138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322145, -0.202465, 0.924787,
		-0.904169, 0.355279, -0.237181,
		-0.280536, -0.912571, -0.297514,
		20.803047, 14.610795, 20.957884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287363, 15.165095, 21.405163>,  <20.999424, 15.249595, 21.166143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287363, 15.165095, 21.405163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409130, 14.796983, 21.306849>,  <20.482191, 14.576115, 21.247860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409130, 14.796983, 21.306849>,  <20.287363, 15.165095, 21.405163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409130, 14.796983, 21.306849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343121, -0.346651, 0.872984,
		-0.888593, -0.181419, -0.421295,
		0.304418, -0.920283, -0.245783,
		20.500456, 14.520898, 21.233114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676453, 14.706508, 21.504416>,  <20.287363, 15.165095, 21.405163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676453, 14.706508, 21.504416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997711, 14.468421, 21.494045>,  <20.190466, 14.325569, 21.487823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997711, 14.468421, 21.494045>,  <19.676453, 14.706508, 21.504416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997711, 14.468421, 21.494045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403825, -0.575857, 0.710854,
		-0.438043, -0.560450, -0.702861,
		0.803146, -0.595217, -0.025926,
		20.238655, 14.289856, 21.486267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455086, 14.171724, 21.797325>,  <19.676453, 14.706508, 21.504416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455086, 14.171724, 21.797325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847979, 14.096974, 21.804197>,  <20.083715, 14.052125, 21.808321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847979, 14.096974, 21.804197>,  <19.455086, 14.171724, 21.797325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847979, 14.096974, 21.804197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119386, -0.551626, 0.825503,
		-0.144788, -0.812888, -0.564136,
		0.982234, -0.186873, 0.017178,
		20.142649, 14.040913, 21.809351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594561, 13.413239, 21.827122>,  <19.455086, 14.171724, 21.797325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594561, 13.413239, 21.827122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904970, 13.609079, 21.986156>,  <20.091217, 13.726583, 22.081577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904970, 13.609079, 21.986156>,  <19.594561, 13.413239, 21.827122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904970, 13.609079, 21.986156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034199, -0.596798, 0.801662,
		0.629774, -0.635707, -0.446387,
		0.776025, 0.489600, 0.397589,
		20.137777, 13.755960, 22.105433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070774, 12.889782, 22.109419>,  <19.594561, 13.413239, 21.827122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070774, 12.889782, 22.109419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162300, 13.224949, 22.307627>,  <20.217215, 13.426049, 22.426552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162300, 13.224949, 22.307627>,  <20.070774, 12.889782, 22.109419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162300, 13.224949, 22.307627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003749, -0.508262, 0.861194,
		0.973463, -0.198911, -0.113156,
		0.228814, 0.837917, 0.495520,
		20.230944, 13.476324, 22.456284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248741, 12.105455, 22.033335>,  <20.070774, 12.889782, 22.109419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248741, 12.105455, 22.033335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044701, 11.761434, 22.037413>,  <19.922277, 11.555020, 22.039860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044701, 11.761434, 22.037413>,  <20.248741, 12.105455, 22.033335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.044701, 11.761434, 22.037413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285754, 0.158279, -0.945141,
		0.811260, -0.485030, -0.326502,
		-0.510100, -0.860055, 0.010194,
		19.891670, 11.503417, 22.040470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378698, 11.770327, 21.425274>,  <20.248741, 12.105455, 22.033335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378698, 11.770327, 21.425274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041210, 11.590150, 21.542055>,  <19.838717, 11.482044, 21.612123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041210, 11.590150, 21.542055>,  <20.378698, 11.770327, 21.425274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041210, 11.590150, 21.542055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387412, 0.134528, -0.912039,
		0.371546, -0.882612, -0.288011,
		-0.843721, -0.450443, 0.291951,
		19.788094, 11.455017, 21.629641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.254517, 11.427377, 20.876957>,  <20.378698, 11.770327, 21.425274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.254517, 11.427377, 20.876957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899012, 11.464286, 21.056553>,  <19.685709, 11.486431, 21.164310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899012, 11.464286, 21.056553>,  <20.254517, 11.427377, 20.876957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899012, 11.464286, 21.056553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433778, 0.147229, -0.888910,
		-0.148125, -0.984789, -0.090826,
		-0.888761, 0.092271, 0.448988,
		19.632383, 11.491967, 21.191250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772627, 11.118927, 20.462786>,  <20.254517, 11.427377, 20.876957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772627, 11.118927, 20.462786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517460, 11.332016, 20.685232>,  <19.364359, 11.459869, 20.818701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517460, 11.332016, 20.685232>,  <19.772627, 11.118927, 20.462786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517460, 11.332016, 20.685232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548254, 0.192965, -0.813745,
		-0.540812, -0.823997, 0.168972,
		-0.637918, 0.532723, 0.556118,
		19.326084, 11.491833, 20.852068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052433, 10.860549, 20.233774>,  <19.772627, 11.118927, 20.462786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052433, 10.860549, 20.233774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994217, 11.202625, 20.432758>,  <18.959288, 11.407871, 20.552149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994217, 11.202625, 20.432758>,  <19.052433, 10.860549, 20.233774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994217, 11.202625, 20.432758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631254, 0.306894, -0.712274,
		-0.761798, -0.417688, 0.495178,
		-0.145541, 0.855192, 0.497458,
		18.950554, 11.459183, 20.581995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371439, 11.028044, 20.193945>,  <19.052433, 10.860549, 20.233774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371439, 11.028044, 20.193945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526737, 11.387093, 20.277409>,  <18.619917, 11.602522, 20.327488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526737, 11.387093, 20.277409>,  <18.371439, 11.028044, 20.193945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526737, 11.387093, 20.277409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609338, 0.419906, -0.672596,
		-0.691356, 0.133988, 0.709982,
		0.388246, 0.897622, 0.208661,
		18.643211, 11.656380, 20.340006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783888, 11.417099, 20.346094>,  <18.371439, 11.028044, 20.193945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783888, 11.417099, 20.346094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075062, 11.655228, 20.210033>,  <18.249767, 11.798105, 20.128397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075062, 11.655228, 20.210033>,  <17.783888, 11.417099, 20.346094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075062, 11.655228, 20.210033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636163, 0.401381, -0.658930,
		-0.255746, 0.696050, 0.670902,
		0.727936, 0.595322, -0.340150,
		18.293442, 11.833824, 20.107988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454128, 11.936727, 20.047758>,  <17.783888, 11.417099, 20.346094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454128, 11.936727, 20.047758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823236, 12.016690, 19.915983>,  <18.044701, 12.064669, 19.836918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823236, 12.016690, 19.915983>,  <17.454128, 11.936727, 20.047758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823236, 12.016690, 19.915983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383942, 0.403986, -0.830291,
		-0.032895, 0.892654, 0.449541,
		0.922771, 0.199910, -0.329438,
		18.100067, 12.076663, 19.817152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.452337, 12.636696, 19.860783>,  <17.454128, 11.936727, 20.047758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.452337, 12.636696, 19.860783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763538, 12.481187, 19.663374>,  <17.950260, 12.387881, 19.544930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763538, 12.481187, 19.663374>,  <17.452337, 12.636696, 19.860783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763538, 12.481187, 19.663374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424239, 0.254299, -0.869110,
		0.463389, 0.885544, 0.032913,
		0.778005, -0.388773, -0.493522,
		17.996941, 12.364555, 19.515318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660261, 13.182797, 19.394241>,  <17.452337, 12.636696, 19.860783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660261, 13.182797, 19.394241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835169, 12.870333, 19.215992>,  <17.940113, 12.682854, 19.109041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835169, 12.870333, 19.215992>,  <17.660261, 13.182797, 19.394241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835169, 12.870333, 19.215992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338764, 0.315940, -0.886240,
		0.833088, 0.538487, -0.126479,
		0.437269, -0.781162, -0.445626,
		17.966349, 12.635984, 19.082304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117792, 13.409075, 18.801804>,  <17.660261, 13.182797, 19.394241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.117792, 13.409075, 18.801804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003908, 13.031394, 18.735563>,  <17.935577, 12.804786, 18.695820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003908, 13.031394, 18.735563>,  <18.117792, 13.409075, 18.801804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003908, 13.031394, 18.735563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355624, 0.264456, -0.896434,
		0.890209, -0.196331, -0.411074,
		-0.284708, -0.944202, -0.165601,
		17.918495, 12.748134, 18.685883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.338953, 13.386159, 18.194805>,  <18.117792, 13.409075, 18.801804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.338953, 13.386159, 18.194805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087023, 13.081077, 18.253595>,  <17.935865, 12.898027, 18.288870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087023, 13.081077, 18.253595>,  <18.338953, 13.386159, 18.194805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087023, 13.081077, 18.253595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450620, 0.204663, -0.868938,
		0.632664, -0.613508, -0.472593,
		-0.629823, -0.762707, 0.146976,
		17.898075, 12.852264, 18.297688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.045296, 9.663110, 26.633358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.385786, 9.582655, 26.827250>,  <18.590080, 9.534382, 26.943584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.385786, 9.582655, 26.827250>,  <18.045296, 9.663110, 26.633358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.385786, 9.582655, 26.827250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524655, 0.347968, -0.776953,
		-0.012396, 0.915676, 0.401726,
		0.851225, -0.201136, 0.484727,
		18.641153, 9.522314, 26.972668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458784, 10.179338, 26.459005>,  <18.045296, 9.663110, 26.633358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458784, 10.179338, 26.459005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.708111, 9.894105, 26.587374>,  <18.857708, 9.722965, 26.664394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.708111, 9.894105, 26.587374>,  <18.458784, 10.179338, 26.459005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708111, 9.894105, 26.587374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654122, 0.250595, -0.713671,
		0.428484, 0.654765, 0.622643,
		0.623318, -0.713081, 0.320920,
		18.895105, 9.680181, 26.683649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119902, 10.560375, 26.655521>,  <18.458784, 10.179338, 26.459005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119902, 10.560375, 26.655521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.205055, 10.181036, 26.561443>,  <19.256147, 9.953433, 26.504997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.205055, 10.181036, 26.561443>,  <19.119902, 10.560375, 26.655521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205055, 10.181036, 26.561443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490181, 0.311890, -0.813909,
		0.845223, 0.057982, 0.531259,
		0.212886, -0.948347, -0.235195,
		19.268921, 9.896532, 26.490885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724794, 10.654622, 26.228851>,  <19.119902, 10.560375, 26.655521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724794, 10.654622, 26.228851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.646931, 10.268917, 26.156958>,  <19.600212, 10.037494, 26.113821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.646931, 10.268917, 26.156958>,  <19.724794, 10.654622, 26.228851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646931, 10.268917, 26.156958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534051, 0.049505, -0.844002,
		0.822738, -0.260279, 0.505329,
		-0.194660, -0.964263, -0.179732,
		19.588533, 9.979638, 26.103039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.316420, 10.370396, 25.987587>,  <19.724794, 10.654622, 26.228851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.316420, 10.370396, 25.987587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.018566, 10.150343, 25.836393>,  <19.839853, 10.018312, 25.745676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.018566, 10.150343, 25.836393>,  <20.316420, 10.370396, 25.987587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018566, 10.150343, 25.836393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471748, -0.033143, -0.881110,
		0.472199, -0.834420, 0.284203,
		-0.744635, -0.550132, -0.377985,
		19.795176, 9.985303, 25.722998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684467, 9.902877, 25.659590>,  <20.316420, 10.370396, 25.987587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684467, 9.902877, 25.659590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.314886, 9.875959, 25.508972>,  <20.093138, 9.859809, 25.418602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.314886, 9.875959, 25.508972>,  <20.684467, 9.902877, 25.659590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314886, 9.875959, 25.508972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365336, 0.136412, -0.920826,
		0.113327, -0.988364, -0.101455,
		-0.923951, -0.067290, -0.376544,
		20.037701, 9.855771, 25.396009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813919, 9.575503, 25.096403>,  <20.684467, 9.902877, 25.659590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813919, 9.575503, 25.096403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.463520, 9.757006, 25.030998>,  <20.253281, 9.865907, 24.991755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.463520, 9.757006, 25.030998>,  <20.813919, 9.575503, 25.096403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463520, 9.757006, 25.030998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276165, 0.193936, -0.941340,
		-0.395427, -0.869768, -0.295199,
		-0.875997, 0.453755, -0.163512,
		20.200722, 9.893132, 24.981945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450064, 9.273890, 24.465784>,  <20.813919, 9.575503, 25.096403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450064, 9.273890, 24.465784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.298450, 9.637804, 24.533464>,  <20.207483, 9.856152, 24.574072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.298450, 9.637804, 24.533464>,  <20.450064, 9.273890, 24.465784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.298450, 9.637804, 24.533464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118963, 0.229232, -0.966075,
		-0.917705, -0.346045, -0.195117,
		-0.379033, 0.909783, 0.169201,
		20.184740, 9.910739, 24.584225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897551, 9.389304, 23.854832>,  <20.450064, 9.273890, 24.465784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897551, 9.389304, 23.854832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.935553, 9.746157, 24.031502>,  <19.958355, 9.960268, 24.137503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.935553, 9.746157, 24.031502>,  <19.897551, 9.389304, 23.854832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935553, 9.746157, 24.031502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098136, 0.449913, -0.887664,
		-0.990628, 0.040990, 0.130295,
		0.095007, 0.892131, 0.441674,
		19.964054, 10.013796, 24.164003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399035, 9.825599, 23.531305>,  <19.897551, 9.389304, 23.854832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399035, 9.825599, 23.531305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.686594, 10.074629, 23.654972>,  <19.859129, 10.224047, 23.729172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.686594, 10.074629, 23.654972>,  <19.399035, 9.825599, 23.531305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686594, 10.074629, 23.654972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100849, 0.533481, -0.839778,
		-0.687761, 0.572535, 0.446304,
		0.718898, 0.622576, 0.309168,
		19.902264, 10.261402, 23.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.140797, 10.585609, 23.475775>,  <19.399035, 9.825599, 23.531305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.140797, 10.585609, 23.475775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.540634, 10.587169, 23.464502>,  <19.780537, 10.588104, 23.457739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.540634, 10.587169, 23.464502>,  <19.140797, 10.585609, 23.475775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.540634, 10.587169, 23.464502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025961, 0.530103, -0.847535,
		0.011634, 0.847924, 0.529990,
		0.999595, 0.003899, -0.028181,
		19.840513, 10.588338, 23.456049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184002, 11.247700, 23.366886>,  <19.140797, 10.585609, 23.475775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184002, 11.247700, 23.366886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.548925, 11.104283, 23.287746>,  <19.767879, 11.018233, 23.240263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.548925, 11.104283, 23.287746>,  <19.184002, 11.247700, 23.366886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548925, 11.104283, 23.287746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006367, 0.470661, -0.882291,
		0.409456, 0.806181, 0.427104,
		0.912308, -0.358540, -0.197848,
		19.822618, 10.996721, 23.228392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621628, 11.787016, 23.229769>,  <19.184002, 11.247700, 23.366886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621628, 11.787016, 23.229769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.786781, 11.472886, 23.045252>,  <19.885874, 11.284409, 22.934542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.786781, 11.472886, 23.045252>,  <19.621628, 11.787016, 23.229769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786781, 11.472886, 23.045252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230616, 0.399831, -0.887103,
		0.881103, 0.472652, -0.016024,
		0.412884, -0.785325, -0.461294,
		19.910646, 11.237288, 22.906864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107784, 12.057871, 22.726366>,  <19.621628, 11.787016, 23.229769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107784, 12.057871, 22.726366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.065596, 11.692291, 22.569613>,  <20.040281, 11.472943, 22.475559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.065596, 11.692291, 22.569613>,  <20.107784, 12.057871, 22.726366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065596, 11.692291, 22.569613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158115, 0.404484, -0.900773,
		0.981772, -0.033045, -0.187171,
		-0.105473, -0.913948, -0.391886,
		20.033953, 11.418107, 22.452047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514437, 12.742245, 22.742010>,  <20.107784, 12.057871, 22.726366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514437, 12.742245, 22.742010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.389387, 13.107833, 22.845488>,  <20.314358, 13.327186, 22.907574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.389387, 13.107833, 22.845488>,  <20.514437, 12.742245, 22.742010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389387, 13.107833, 22.845488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426705, -0.378447, 0.821401,
		0.848639, 0.146405, 0.508309,
		-0.312625, 0.913971, 0.258693,
		20.295599, 13.382024, 22.923096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158178, 12.615005, 23.313932>,  <20.514437, 12.742245, 22.742010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158178, 12.615005, 23.313932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.131418, 13.014053, 23.320574>,  <20.115362, 13.253483, 23.324558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.131418, 13.014053, 23.320574>,  <20.158178, 12.615005, 23.313932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131418, 13.014053, 23.320574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503765, -0.048134, 0.862499,
		0.861247, 0.049338, 0.505787,
		-0.066899, 0.997622, 0.016601,
		20.111349, 13.313340, 23.325554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501667, 12.916586, 23.983332>,  <20.158178, 12.615005, 23.313932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501667, 12.916586, 23.983332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.193718, 13.107180, 23.813505>,  <20.008947, 13.221536, 23.711609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.193718, 13.107180, 23.813505>,  <20.501667, 12.916586, 23.983332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193718, 13.107180, 23.813505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535665, -0.120820, 0.835742,
		0.346923, 0.870841, 0.348253,
		-0.769875, 0.476485, -0.424564,
		19.962755, 13.250125, 23.686136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.284494, 13.500391, 24.473305>,  <20.501667, 12.916586, 23.983332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.284494, 13.500391, 24.473305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.008667, 13.336832, 24.234207>,  <19.843170, 13.238697, 24.090750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.008667, 13.336832, 24.234207>,  <20.284494, 13.500391, 24.473305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008667, 13.336832, 24.234207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546676, -0.247464, 0.799942,
		-0.475014, 0.878387, -0.052890,
		-0.689570, -0.408898, -0.597742,
		19.801796, 13.214163, 24.054884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736546, 13.603899, 24.882990>,  <20.284494, 13.500391, 24.473305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736546, 13.603899, 24.882990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.560551, 13.364802, 24.614925>,  <19.454954, 13.221344, 24.454086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.560551, 13.364802, 24.614925>,  <19.736546, 13.603899, 24.882990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560551, 13.364802, 24.614925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578686, -0.381935, 0.720589,
		-0.686684, 0.704862, -0.177859,
		-0.439986, -0.597741, -0.670163,
		19.428555, 13.185480, 24.413877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091629, 13.706031, 25.068363>,  <19.736546, 13.603899, 24.882990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091629, 13.706031, 25.068363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097284, 13.349562, 24.886986>,  <19.100677, 13.135680, 24.778160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097284, 13.349562, 24.886986>,  <19.091629, 13.706031, 25.068363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097284, 13.349562, 24.886986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566218, -0.380909, 0.730962,
		-0.824134, 0.246414, -0.509983,
		0.014138, -0.891173, -0.453444,
		19.101526, 13.082210, 24.750952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433365, 13.504074, 25.124660>,  <19.091629, 13.706031, 25.068363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433365, 13.504074, 25.124660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.656399, 13.181383, 25.046387>,  <18.790218, 12.987769, 24.999422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.656399, 13.181383, 25.046387>,  <18.433365, 13.504074, 25.124660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656399, 13.181383, 25.046387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459670, -0.496345, 0.736441,
		-0.691234, -0.320676, -0.647582,
		0.557583, -0.806727, -0.195685,
		18.823673, 12.939365, 24.987682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974840, 13.013911, 25.246717>,  <18.433365, 13.504074, 25.124660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.974840, 13.013911, 25.246717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.335772, 12.849792, 25.299564>,  <18.552330, 12.751320, 25.331272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.335772, 12.849792, 25.299564>,  <17.974840, 13.013911, 25.246717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335772, 12.849792, 25.299564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313779, -0.415082, 0.853961,
		-0.295540, -0.812011, -0.503284,
		0.902330, -0.410300, 0.132119,
		18.606470, 12.726702, 25.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918077, 12.357430, 25.693363>,  <17.974840, 13.013911, 25.246717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918077, 12.357430, 25.693363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.310827, 12.426273, 25.725107>,  <18.546478, 12.467580, 25.744154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.310827, 12.426273, 25.725107>,  <17.918077, 12.357430, 25.693363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310827, 12.426273, 25.725107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030651, -0.269015, 0.962648,
		0.187030, -0.947634, -0.258864,
		0.981876, 0.172109, 0.079360,
		18.605391, 12.477906, 25.748915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142954, 11.824310, 26.103649>,  <17.918077, 12.357430, 25.693363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142954, 11.824310, 26.103649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.430567, 12.100636, 26.134027>,  <18.603134, 12.266431, 26.152254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.430567, 12.100636, 26.134027>,  <18.142954, 11.824310, 26.103649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430567, 12.100636, 26.134027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228837, -0.338526, 0.912707,
		0.656220, -0.638887, -0.401495,
		0.719033, 0.690814, 0.075947,
		18.646276, 12.307879, 26.156811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725008, 11.459840, 26.502281>,  <18.142954, 11.824310, 26.103649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725008, 11.459840, 26.502281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.777552, 11.854890, 26.536554>,  <18.809078, 12.091920, 26.557117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.777552, 11.854890, 26.536554>,  <18.725008, 11.459840, 26.502281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777552, 11.854890, 26.536554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242022, -0.115765, 0.963340,
		0.961338, -0.105809, -0.254234,
		0.131361, 0.987625, 0.085681,
		18.816959, 12.151177, 26.562258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312784, 11.443603, 26.894629>,  <18.725008, 11.459840, 26.502281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312784, 11.443603, 26.894629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.152838, 11.805997, 26.950191>,  <19.056870, 12.023434, 26.983530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.152838, 11.805997, 26.950191>,  <19.312784, 11.443603, 26.894629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152838, 11.805997, 26.950191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272223, -0.027322, 0.961846,
		0.875214, 0.422425, -0.235705,
		-0.399868, 0.905986, 0.138907,
		19.032877, 12.077793, 26.991863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830492, 11.797088, 27.261209>,  <19.312784, 11.443603, 26.894629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830492, 11.797088, 27.261209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.485920, 11.988622, 27.328924>,  <19.279177, 12.103542, 27.369553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.485920, 11.988622, 27.328924>,  <19.830492, 11.797088, 27.261209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485920, 11.988622, 27.328924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145871, -0.086013, 0.985557,
		0.486481, 0.873681, 0.004246,
		-0.861428, 0.478835, 0.169288,
		19.227491, 12.132273, 27.379711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036774, 12.309753, 27.758736>,  <19.830492, 11.797088, 27.261209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036774, 12.309753, 27.758736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.638035, 12.341454, 27.760427>,  <19.398792, 12.360474, 27.761442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.638035, 12.341454, 27.760427>,  <20.036774, 12.309753, 27.758736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638035, 12.341454, 27.760427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021212, 0.214719, 0.976445,
		0.076476, 0.973455, -0.215723,
		-0.996846, 0.079250, 0.004228,
		19.338982, 12.365229, 27.761696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.335724, 11.961425, 26.855404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.635805, 11.715999, 26.756828>,  <13.815854, 11.568743, 26.697683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.635805, 11.715999, 26.756828>,  <13.335724, 11.961425, 26.855404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.635805, 11.715999, 26.756828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113411, 0.486592, -0.866236,
		0.651409, 0.621904, 0.434628,
		0.750203, -0.613566, -0.246439,
		13.860866, 11.531929, 26.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902915, 12.386224, 26.725670>,  <13.335724, 11.961425, 26.855404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902915, 12.386224, 26.725670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.983180, 12.044480, 26.533918>,  <14.031339, 11.839434, 26.418867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.983180, 12.044480, 26.533918>,  <13.902915, 12.386224, 26.725670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983180, 12.044480, 26.533918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130163, 0.508245, -0.851320,
		0.970975, 0.108430, 0.213191,
		0.200662, -0.854359, -0.479380,
		14.043379, 11.788173, 26.390104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586970, 12.493442, 26.294199>,  <13.902915, 12.386224, 26.725670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586970, 12.493442, 26.294199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.411555, 12.168674, 26.140068>,  <14.306307, 11.973814, 26.047590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.411555, 12.168674, 26.140068>,  <14.586970, 12.493442, 26.294199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411555, 12.168674, 26.140068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273489, 0.287856, -0.917792,
		0.856089, -0.507868, 0.095815,
		-0.438537, -0.811916, -0.385327,
		14.279994, 11.925099, 26.024469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961759, 12.333423, 25.721272>,  <14.586970, 12.493442, 26.294199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961759, 12.333423, 25.721272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.610608, 12.159010, 25.642067>,  <14.399918, 12.054362, 25.594545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.610608, 12.159010, 25.642067>,  <14.961759, 12.333423, 25.721272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610608, 12.159010, 25.642067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126371, 0.187896, -0.974025,
		0.461913, -0.880097, -0.109848,
		-0.877876, -0.436033, -0.198010,
		14.347245, 12.028200, 25.582664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117438, 11.985487, 25.205284>,  <14.961759, 12.333423, 25.721272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117438, 11.985487, 25.205284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.718476, 11.989371, 25.176746>,  <14.479099, 11.991702, 25.159624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.718476, 11.989371, 25.176746>,  <15.117438, 11.985487, 25.205284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.718476, 11.989371, 25.176746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071995, 0.146545, -0.986581,
		0.000873, -0.989156, -0.146864,
		-0.997404, 0.009712, -0.071343,
		14.419255, 11.992285, 25.155344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821049, 11.416324, 24.822542>,  <15.117438, 11.985487, 25.205284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821049, 11.416324, 24.822542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.574115, 11.730230, 24.800486>,  <14.425955, 11.918574, 24.787251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.574115, 11.730230, 24.800486>,  <14.821049, 11.416324, 24.822542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574115, 11.730230, 24.800486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052786, -0.028616, -0.998196,
		-0.784928, -0.619131, -0.023759,
		-0.617334, 0.784766, -0.055143,
		14.388915, 11.965660, 24.783943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429016, 11.318895, 24.335953>,  <14.821049, 11.416324, 24.822542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429016, 11.318895, 24.335953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.395393, 11.714838, 24.381769>,  <14.375219, 11.952403, 24.409260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.395393, 11.714838, 24.381769>,  <14.429016, 11.318895, 24.335953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395393, 11.714838, 24.381769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057331, 0.109954, -0.992282,
		-0.994810, -0.089975, 0.047507,
		-0.084057, 0.989856, 0.114542,
		14.370176, 12.011795, 24.416132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100994, 11.500193, 23.719416>,  <14.429016, 11.318895, 24.335953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100994, 11.500193, 23.719416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.185249, 11.860231, 23.871971>,  <14.235803, 12.076255, 23.963505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.185249, 11.860231, 23.871971>,  <14.100994, 11.500193, 23.719416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.185249, 11.860231, 23.871971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093520, 0.406909, -0.908669,
		-0.973081, 0.155732, 0.169887,
		0.210637, 0.900096, 0.381391,
		14.248441, 12.130260, 23.986389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520362, 11.951986, 23.606209>,  <14.100994, 11.500193, 23.719416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.520362, 11.951986, 23.606209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.855201, 12.168547, 23.637589>,  <14.056104, 12.298483, 23.656416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.855201, 12.168547, 23.637589>,  <13.520362, 11.951986, 23.606209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855201, 12.168547, 23.637589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164065, 0.385261, -0.908106,
		-0.521874, 0.747301, 0.411325,
		0.837096, 0.541401, 0.078452,
		14.106330, 12.330967, 23.661123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355760, 12.601621, 23.295630>,  <13.520362, 11.951986, 23.606209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355760, 12.601621, 23.295630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.755711, 12.595457, 23.296766>,  <13.995681, 12.591759, 23.297447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.755711, 12.595457, 23.296766>,  <13.355760, 12.601621, 23.295630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.755711, 12.595457, 23.296766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007785, 0.331248, -0.943512,
		0.013597, 0.943418, 0.331327,
		0.999877, -0.015409, 0.002840,
		14.055674, 12.590835, 23.297619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.496221, 13.195539, 22.941771>,  <13.355760, 12.601621, 23.295630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.496221, 13.195539, 22.941771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.865111, 13.040880, 22.941275>,  <14.086446, 12.948085, 22.940977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.865111, 13.040880, 22.941275>,  <13.496221, 13.195539, 22.941771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865111, 13.040880, 22.941275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160838, 0.386543, -0.908139,
		0.351610, 0.837310, 0.418667,
		0.922226, -0.386648, -0.001241,
		14.141779, 12.924886, 22.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881189, 13.619890, 22.542189>,  <13.496221, 13.195539, 22.941771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881189, 13.619890, 22.542189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.115266, 13.295537, 22.540388>,  <14.255712, 13.100925, 22.539309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.115266, 13.295537, 22.540388>,  <13.881189, 13.619890, 22.542189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.115266, 13.295537, 22.540388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208819, 0.156056, -0.965423,
		0.783546, 0.564018, 0.260650,
		0.585192, -0.810882, -0.004499,
		14.290823, 13.052272, 22.539038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687765, 13.812276, 22.461458>,  <13.881189, 13.619890, 22.542189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687765, 13.812276, 22.461458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585010, 13.442973, 22.347191>,  <14.523356, 13.221392, 22.278631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585010, 13.442973, 22.347191>,  <14.687765, 13.812276, 22.461458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585010, 13.442973, 22.347191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141646, 0.256427, -0.956129,
		0.956005, -0.286081, 0.064902,
		-0.256888, -0.923257, -0.285668,
		14.507943, 13.165997, 22.261490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124553, 13.723769, 21.832373>,  <14.687765, 13.812276, 22.461458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124553, 13.723769, 21.832373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.831297, 13.456115, 21.783768>,  <14.655344, 13.295522, 21.754604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.831297, 13.456115, 21.783768>,  <15.124553, 13.723769, 21.832373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.831297, 13.456115, 21.783768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195361, 0.378356, -0.904810,
		0.651416, -0.639612, -0.408110,
		-0.733138, -0.669136, -0.121513,
		14.611356, 13.255374, 21.747314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916098, 13.674553, 21.734083>,  <15.124553, 13.723769, 21.832373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916098, 13.674553, 21.734083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.025240, 14.059257, 21.724539>,  <16.090725, 14.290079, 21.718813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.025240, 14.059257, 21.724539>,  <15.916098, 13.674553, 21.734083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025240, 14.059257, 21.724539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010536, 0.027787, 0.999558,
		0.961997, -0.272484, 0.017715,
		0.272856, 0.961759, -0.023860,
		16.107098, 14.347784, 21.717381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506201, 13.612110, 22.119400>,  <15.916098, 13.674553, 21.734083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506201, 13.612110, 22.119400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.388489, 13.994274, 22.109661>,  <16.317862, 14.223573, 22.103817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.388489, 13.994274, 22.109661>,  <16.506201, 13.612110, 22.119400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388489, 13.994274, 22.109661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050045, 0.040846, 0.997912,
		0.954408, 0.292447, -0.059833,
		-0.294280, 0.955409, -0.024348,
		16.300205, 14.280897, 22.102356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018980, 13.948426, 22.580788>,  <16.506201, 13.612110, 22.119400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018980, 13.948426, 22.580788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.692022, 14.178783, 22.574968>,  <16.495848, 14.316998, 22.571476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.692022, 14.178783, 22.574968>,  <17.018980, 13.948426, 22.580788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692022, 14.178783, 22.574968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036860, 0.077489, 0.996312,
		0.574896, 0.813845, -0.084566,
		-0.817396, 0.575893, -0.014549,
		16.446804, 14.351551, 22.570604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228903, 14.493348, 22.960762>,  <17.018980, 13.948426, 22.580788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228903, 14.493348, 22.960762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.829414, 14.497393, 22.980562>,  <16.589722, 14.499820, 22.992443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.829414, 14.497393, 22.980562>,  <17.228903, 14.493348, 22.960762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829414, 14.497393, 22.980562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050522, 0.201502, 0.978184,
		-0.000083, 0.979436, -0.201755,
		-0.998723, 0.010112, 0.049500,
		16.529797, 14.500426, 22.995413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055376, 15.173711, 23.160208>,  <17.228903, 14.493348, 22.960762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055376, 15.173711, 23.160208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.742844, 14.950491, 23.271994>,  <16.555325, 14.816559, 23.339066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.742844, 14.950491, 23.271994>,  <17.055376, 15.173711, 23.160208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742844, 14.950491, 23.271994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177222, 0.230964, 0.956686,
		-0.598424, 0.797017, -0.081561,
		-0.781332, -0.558050, 0.279463,
		16.508444, 14.783076, 23.355833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722729, 15.563736, 23.726999>,  <17.055376, 15.173711, 23.160208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722729, 15.563736, 23.726999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.609915, 15.182171, 23.767998>,  <16.542227, 14.953232, 23.792597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.609915, 15.182171, 23.767998>,  <16.722729, 15.563736, 23.726999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.609915, 15.182171, 23.767998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032687, 0.116325, 0.992673,
		-0.958847, 0.276619, -0.063988,
		-0.282036, -0.953913, 0.102496,
		16.525305, 14.895997, 23.798746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303440, 15.586645, 24.339872>,  <16.722729, 15.563736, 23.726999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303440, 15.586645, 24.339872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.324198, 15.191993, 24.278078>,  <16.336653, 14.955201, 24.241001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.324198, 15.191993, 24.278078>,  <16.303440, 15.586645, 24.339872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324198, 15.191993, 24.278078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110620, -0.159423, 0.980993,
		-0.992507, -0.033819, -0.117415,
		0.051895, -0.986631, -0.154487,
		16.339766, 14.896004, 24.231731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718266, 15.351156, 24.685921>,  <16.303440, 15.586645, 24.339872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718266, 15.351156, 24.685921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973105, 15.047726, 24.631269>,  <16.126009, 14.865667, 24.598478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973105, 15.047726, 24.631269>,  <15.718266, 15.351156, 24.685921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973105, 15.047726, 24.631269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076070, -0.238273, 0.968214,
		-0.767020, -0.606454, -0.209508,
		0.637098, -0.758577, -0.136627,
		16.164234, 14.820152, 24.590281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.411403, 14.744363, 25.050098>,  <15.718266, 15.351156, 24.685921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.411403, 14.744363, 25.050098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.793522, 14.648668, 24.980619>,  <16.022793, 14.591251, 24.938932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.793522, 14.648668, 24.980619>,  <15.411403, 14.744363, 25.050098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.793522, 14.648668, 24.980619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020398, -0.532788, 0.846003,
		-0.294938, -0.811728, -0.504092,
		0.955298, -0.239236, -0.173698,
		16.080111, 14.576898, 24.928511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498570, 13.975712, 25.239384>,  <15.411403, 14.744363, 25.050098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.498570, 13.975712, 25.239384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.853451, 14.156441, 25.276764>,  <16.066380, 14.264878, 25.299192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.853451, 14.156441, 25.276764>,  <15.498570, 13.975712, 25.239384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853451, 14.156441, 25.276764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106047, -0.396814, 0.911753,
		0.449032, -0.798997, -0.399968,
		0.887200, 0.451822, 0.093451,
		16.119612, 14.291987, 25.304800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034569, 13.542687, 25.367029>,  <15.498570, 13.975712, 25.239384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034569, 13.542687, 25.367029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.130110, 13.880164, 25.559336>,  <16.187435, 14.082650, 25.674719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.130110, 13.880164, 25.559336>,  <16.034569, 13.542687, 25.367029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130110, 13.880164, 25.559336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031362, -0.501539, 0.864566,
		0.970549, -0.191427, -0.146255,
		0.238854, 0.843691, 0.480765,
		16.201765, 14.133271, 25.703566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694380, 13.362335, 25.725496>,  <16.034569, 13.542687, 25.367029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694380, 13.362335, 25.725496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.525646, 13.662776, 25.928633>,  <16.424406, 13.843040, 26.050514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.525646, 13.662776, 25.928633>,  <16.694380, 13.362335, 25.725496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525646, 13.662776, 25.928633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188232, -0.475363, 0.859418,
		0.886920, 0.458122, 0.059142,
		-0.421832, 0.751102, 0.507842,
		16.399097, 13.888106, 26.080986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159124, 13.589340, 26.360811>,  <16.694380, 13.362335, 25.725496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159124, 13.589340, 26.360811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.793526, 13.718608, 26.458933>,  <16.574167, 13.796168, 26.517805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.793526, 13.718608, 26.458933>,  <17.159124, 13.589340, 26.360811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793526, 13.718608, 26.458933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040469, -0.528977, 0.847671,
		0.403701, 0.784694, 0.470404,
		-0.913995, 0.323169, 0.245304,
		16.519327, 13.815558, 26.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151703, 13.728705, 27.051067>,  <17.159124, 13.589340, 26.360811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151703, 13.728705, 27.051067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.762045, 13.673290, 26.979687>,  <16.528250, 13.640041, 26.936857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.762045, 13.673290, 26.979687>,  <17.151703, 13.728705, 27.051067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762045, 13.673290, 26.979687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112346, -0.388246, 0.914682,
		-0.196002, 0.911083, 0.362644,
		-0.974147, -0.138538, -0.178453,
		16.469801, 13.631729, 26.926151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422699, 14.453280, 27.312740>,  <17.151703, 13.728705, 27.051067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422699, 14.453280, 27.312740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755905, 14.624870, 27.452492>,  <17.955830, 14.727824, 27.536343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755905, 14.624870, 27.452492>,  <17.422699, 14.453280, 27.312740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755905, 14.624870, 27.452492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267235, 0.240958, -0.933019,
		-0.484428, 0.870586, 0.086084,
		0.833016, 0.428976, 0.349377,
		18.005810, 14.753563, 27.557304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507538, 14.917462, 26.801676>,  <17.422699, 14.453280, 27.312740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507538, 14.917462, 26.801676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.860806, 14.909292, 26.989119>,  <18.072767, 14.904390, 27.101583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.860806, 14.909292, 26.989119>,  <17.507538, 14.917462, 26.801676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.860806, 14.909292, 26.989119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464447, 0.177734, -0.867583,
		-0.065566, 0.983867, 0.166456,
		0.883171, -0.020426, 0.468607,
		18.125757, 14.903164, 27.129702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836559, 15.601979, 26.674059>,  <17.507538, 14.917462, 26.801676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836559, 15.601979, 26.674059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118464, 15.333649, 26.766411>,  <18.287605, 15.172650, 26.821821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118464, 15.333649, 26.766411>,  <17.836559, 15.601979, 26.674059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118464, 15.333649, 26.766411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471529, 0.199761, -0.858927,
		0.530071, 0.714203, 0.457098,
		0.704759, -0.670827, 0.230880,
		18.329891, 15.132401, 26.835674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433277, 15.949544, 26.757828>,  <17.836559, 15.601979, 26.674059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433277, 15.949544, 26.757828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.583590, 15.585313, 26.688967>,  <18.673777, 15.366775, 26.647650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.583590, 15.585313, 26.688967>,  <18.433277, 15.949544, 26.757828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583590, 15.585313, 26.688967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557440, 0.370510, -0.742956,
		0.740304, 0.183223, 0.646823,
		0.375781, -0.910578, -0.172154,
		18.696323, 15.312140, 26.637321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181248, 15.952468, 26.888937>,  <18.433277, 15.949544, 26.757828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181248, 15.952468, 26.888937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.097317, 15.656135, 26.633707>,  <19.046959, 15.478334, 26.480570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.097317, 15.656135, 26.633707>,  <19.181248, 15.952468, 26.888937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097317, 15.656135, 26.633707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686754, 0.352847, -0.635507,
		0.695947, -0.571546, 0.434733,
		-0.209827, -0.740833, -0.638074,
		19.034369, 15.433885, 26.442286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721668, 15.945383, 26.487843>,  <19.181248, 15.952468, 26.888937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721668, 15.945383, 26.487843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.490091, 15.697286, 26.276136>,  <19.351145, 15.548428, 26.149113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.490091, 15.697286, 26.276136>,  <19.721668, 15.945383, 26.487843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490091, 15.697286, 26.276136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564408, 0.163613, -0.809120,
		0.588446, -0.767156, 0.255348,
		-0.578943, -0.620243, -0.529266,
		19.316408, 15.511212, 26.117357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227518, 15.558119, 25.966890>,  <19.721668, 15.945383, 26.487843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227518, 15.558119, 25.966890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.855543, 15.533526, 25.821877>,  <19.632359, 15.518771, 25.734867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.855543, 15.533526, 25.821877>,  <20.227518, 15.558119, 25.966890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855543, 15.533526, 25.821877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331393, 0.287111, -0.898747,
		0.159344, -0.955922, -0.246621,
		-0.929940, -0.061482, -0.362535,
		19.576561, 15.515081, 25.713116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298660, 15.223742, 25.218458>,  <20.227518, 15.558119, 25.966890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298660, 15.223742, 25.218458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.951660, 15.414840, 25.273884>,  <19.743460, 15.529499, 25.307138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.951660, 15.414840, 25.273884>,  <20.298660, 15.223742, 25.218458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.951660, 15.414840, 25.273884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023425, 0.317481, -0.947975,
		-0.496882, -0.819124, -0.286607,
		-0.867502, 0.477746, 0.138563,
		19.691410, 15.558164, 25.315453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846775, 15.025878, 24.703409>,  <20.298660, 15.223742, 25.218458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846775, 15.025878, 24.703409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683508, 15.376919, 24.803978>,  <19.585548, 15.587543, 24.864319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683508, 15.376919, 24.803978>,  <19.846775, 15.025878, 24.703409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683508, 15.376919, 24.803978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086723, 0.236888, -0.967659,
		-0.908778, -0.416771, -0.020582,
		-0.408167, 0.877602, 0.251423,
		19.561058, 15.640200, 24.879404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303226, 15.111467, 24.178831>,  <19.846775, 15.025878, 24.703409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303226, 15.111467, 24.178831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.354080, 15.475515, 24.336573>,  <19.384592, 15.693944, 24.431217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.354080, 15.475515, 24.336573>,  <19.303226, 15.111467, 24.178831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354080, 15.475515, 24.336573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145198, 0.410376, -0.900283,
		-0.981200, 0.057199, 0.184321,
		0.127136, 0.910121, 0.394356,
		19.392221, 15.748551, 24.454880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748770, 15.478580, 23.940247>,  <19.303226, 15.111467, 24.178831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748770, 15.478580, 23.940247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.030447, 15.742497, 24.045153>,  <19.199453, 15.900847, 24.108097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.030447, 15.742497, 24.045153>,  <18.748770, 15.478580, 23.940247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030447, 15.742497, 24.045153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068137, 0.430478, -0.900025,
		-0.706730, 0.615923, 0.348096,
		0.704194, 0.659793, 0.262265,
		19.241705, 15.940435, 24.123833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522455, 16.041052, 23.654253>,  <18.748770, 15.478580, 23.940247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522455, 16.041052, 23.654253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.899746, 16.137337, 23.745802>,  <19.126120, 16.195107, 23.800732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.899746, 16.137337, 23.745802>,  <18.522455, 16.041052, 23.654253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899746, 16.137337, 23.745802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083937, 0.493954, -0.865427,
		-0.321370, 0.835504, 0.445706,
		0.943226, 0.240711, 0.228872,
		19.182714, 16.209551, 23.814463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597332, 16.737999, 23.696095>,  <18.522455, 16.041052, 23.654253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597332, 16.737999, 23.696095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.960436, 16.597960, 23.603661>,  <19.178299, 16.513937, 23.548201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.960436, 16.597960, 23.603661>,  <18.597332, 16.737999, 23.696095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960436, 16.597960, 23.603661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039054, 0.619019, -0.784405,
		0.417663, 0.703028, 0.575594,
		0.907762, -0.350097, -0.231085,
		19.232765, 16.492931, 23.534334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752043, 17.286755, 23.303341>,  <18.597332, 16.737999, 23.696095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752043, 17.286755, 23.303341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.051109, 17.028936, 23.239391>,  <19.230549, 16.874247, 23.201021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.051109, 17.028936, 23.239391>,  <18.752043, 17.286755, 23.303341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051109, 17.028936, 23.239391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298131, 0.540906, -0.786472,
		0.593391, 0.540356, 0.596575,
		0.747666, -0.644544, -0.159872,
		19.275410, 16.835573, 23.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.162363, 25.046110, 22.082394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.015292, 25.002663, 21.712959>,  <4.927049, 24.976595, 21.491299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.015292, 25.002663, 21.712959>,  <5.162363, 25.046110, 22.082394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.015292, 25.002663, 21.712959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568327, -0.812353, -0.130714,
		-0.736082, -0.572961, 0.360415,
		-0.367678, -0.108617, -0.923588,
		4.904988, 24.970078, 21.435883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.116924, 24.440012, 22.421415>,  <5.162363, 25.046110, 22.082394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.116924, 24.440012, 22.421415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.991469, 24.246548, 22.094563>,  <4.916197, 24.130468, 21.898451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.991469, 24.246548, 22.094563>,  <5.116924, 24.440012, 22.421415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.991469, 24.246548, 22.094563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887842, 0.155773, -0.432979,
		0.336702, -0.861282, 0.380558,
		-0.313636, -0.483660, -0.817132,
		4.897378, 24.101450, 21.849422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.485000, 23.826881, 22.303713>,  <5.116924, 24.440012, 22.421415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.485000, 23.826881, 22.303713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352524, 23.988159, 21.962481>,  <5.273038, 24.084925, 21.757740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352524, 23.988159, 21.962481>,  <5.485000, 23.826881, 22.303713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.352524, 23.988159, 21.962481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922244, -0.052786, -0.382990,
		-0.199449, -0.913592, -0.354359,
		-0.331191, 0.403192, -0.853082,
		5.253167, 24.109118, 21.706556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.064135, 23.717358, 21.878542>,  <5.485000, 23.826881, 22.303713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.064135, 23.717358, 21.878542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.839999, 23.920006, 21.616442>,  <5.705518, 24.041595, 21.459181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.839999, 23.920006, 21.616442>,  <6.064135, 23.717358, 21.878542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.839999, 23.920006, 21.616442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794879, 0.106587, -0.597334,
		-0.232782, -0.855554, -0.462428,
		-0.560340, 0.506623, -0.655250,
		5.671897, 24.071993, 21.419867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.015996, 23.464399, 21.153927>,  <6.064135, 23.717358, 21.878542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.015996, 23.464399, 21.153927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.016444, 23.864351, 21.160118>,  <6.016713, 24.104322, 21.163834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.016444, 23.864351, 21.160118>,  <6.015996, 23.464399, 21.153927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.016444, 23.864351, 21.160118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897687, 0.005815, -0.440595,
		-0.440632, 0.014389, -0.897572,
		0.001120, 0.999880, 0.015479,
		6.016780, 24.164314, 21.164762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.486844, 22.906734, 21.327740>,  <6.015996, 23.464399, 21.153927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.486844, 22.906734, 21.327740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.334449, 22.539209, 21.368982>,  <6.243013, 22.318693, 21.393728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.334449, 22.539209, 21.368982>,  <6.486844, 22.906734, 21.327740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.334449, 22.539209, 21.368982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891507, -0.394626, -0.222453,
		0.245081, 0.007168, 0.969476,
		-0.380986, -0.918814, 0.103106,
		6.220154, 22.263565, 21.399914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.984859, 22.387085, 21.621622>,  <6.486844, 22.906734, 21.327740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.984859, 22.387085, 21.621622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.708777, 22.183699, 21.415680>,  <6.543128, 22.061666, 21.292114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.708777, 22.183699, 21.415680>,  <6.984859, 22.387085, 21.621622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.708777, 22.183699, 21.415680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709483, -0.615446, -0.343309,
		-0.142305, -0.602236, 0.785533,
		-0.690205, -0.508467, -0.514857,
		6.501715, 22.031158, 21.261223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.251707, 21.689905, 21.403732>,  <6.984859, 22.387085, 21.621622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.251707, 21.689905, 21.403732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.918278, 21.719137, 21.184710>,  <6.718220, 21.736677, 21.053297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.918278, 21.719137, 21.184710>,  <7.251707, 21.689905, 21.403732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.918278, 21.719137, 21.184710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277742, -0.801370, -0.529778,
		-0.477511, -0.593688, 0.647703,
		-0.833572, 0.073081, -0.547554,
		6.668206, 21.741062, 21.020443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.289864, 20.988222, 21.217066>,  <7.251707, 21.689905, 21.403732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.289864, 20.988222, 21.217066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.014966, 21.169373, 20.989876>,  <6.850027, 21.278063, 20.853561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.014966, 21.169373, 20.989876>,  <7.289864, 20.988222, 21.217066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.014966, 21.169373, 20.989876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042300, -0.805501, -0.591083,
		-0.725193, -0.382193, 0.572734,
		-0.687245, 0.452876, -0.567976,
		6.808793, 21.305235, 20.819483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505318, 20.365431, 20.813946>,  <7.289864, 20.988222, 21.217066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505318, 20.365431, 20.813946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.456727, 20.170635, 21.159914>,  <7.427573, 20.053759, 21.367495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.456727, 20.170635, 21.159914>,  <7.505318, 20.365431, 20.813946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.456727, 20.170635, 21.159914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460513, -0.744265, -0.483732,
		0.879301, -0.457069, -0.133854,
		-0.121476, -0.486988, 0.864920,
		7.420284, 20.024538, 21.419390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.929954, 19.759087, 20.770563>,  <7.505318, 20.365431, 20.813946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.929954, 19.759087, 20.770563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.608878, 19.711061, 21.004238>,  <7.416233, 19.682245, 21.144444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.608878, 19.711061, 21.004238>,  <7.929954, 19.759087, 20.770563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.608878, 19.711061, 21.004238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267254, -0.803260, -0.532305,
		0.533165, -0.583402, 0.612680,
		-0.802690, -0.120065, 0.584186,
		7.368071, 19.675041, 21.179495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.852726, 19.010014, 21.103209>,  <7.929954, 19.759087, 20.770563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.852726, 19.010014, 21.103209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474340, 19.137396, 21.127649>,  <7.247308, 19.213825, 21.142313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474340, 19.137396, 21.127649>,  <7.852726, 19.010014, 21.103209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.474340, 19.137396, 21.127649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314283, -0.854025, -0.414570,
		-0.079842, -0.411372, 0.907964,
		-0.945966, 0.318458, 0.061100,
		7.190550, 19.232933, 21.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.557217, 18.402563, 21.223396>,  <7.852726, 19.010014, 21.103209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.557217, 18.402563, 21.223396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.267386, 18.658379, 21.120651>,  <7.093488, 18.811869, 21.059004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.267386, 18.658379, 21.120651>,  <7.557217, 18.402563, 21.223396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.267386, 18.658379, 21.120651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309076, -0.634652, -0.708300,
		-0.615997, -0.433834, 0.657523,
		-0.724582, 0.639535, -0.256856,
		7.050013, 18.850241, 21.043592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.842979, 18.115435, 21.439009>,  <7.557217, 18.402563, 21.223396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.842979, 18.115435, 21.439009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.819174, 18.388058, 21.147272>,  <6.804892, 18.551632, 20.972231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.819174, 18.388058, 21.147272>,  <6.842979, 18.115435, 21.439009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.819174, 18.388058, 21.147272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334753, -0.701955, -0.628650,
		-0.940425, 0.206737, 0.269928,
		-0.059512, 0.681557, -0.729341,
		6.801321, 18.592525, 20.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.182052, 17.930487, 20.999252>,  <6.842979, 18.115435, 21.439009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.182052, 17.930487, 20.999252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.393053, 18.166893, 20.755140>,  <6.519654, 18.308737, 20.608673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.393053, 18.166893, 20.755140>,  <6.182052, 17.930487, 20.999252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.393053, 18.166893, 20.755140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247810, -0.580071, -0.775956,
		-0.812607, 0.560553, -0.159530,
		0.527503, 0.591014, -0.610280,
		6.551304, 18.344198, 20.572056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.701828, 18.177244, 20.466633>,  <6.182052, 17.930487, 20.999252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.701828, 18.177244, 20.466633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.069756, 18.192654, 20.310455>,  <6.290513, 18.201899, 20.216749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.069756, 18.192654, 20.310455>,  <5.701828, 18.177244, 20.466633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.069756, 18.192654, 20.310455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296533, -0.583374, -0.756137,
		-0.256904, 0.811290, -0.525175,
		0.919820, 0.038523, -0.390445,
		6.345702, 18.204210, 20.193321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.581588, 18.298384, 19.803431>,  <5.701828, 18.177244, 20.466633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.581588, 18.298384, 19.803431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.961319, 18.172857, 19.796541>,  <6.189158, 18.097542, 19.792408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.961319, 18.172857, 19.796541>,  <5.581588, 18.298384, 19.803431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.961319, 18.172857, 19.796541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190597, -0.531278, -0.825480,
		0.249897, 0.786934, -0.564169,
		0.949328, -0.313814, -0.017222,
		6.246118, 18.078712, 19.791374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.870974, 18.527412, 19.142355>,  <5.581588, 18.298384, 19.803431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.870974, 18.527412, 19.142355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125249, 18.242239, 19.260763>,  <6.277814, 18.071135, 19.331808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125249, 18.242239, 19.260763>,  <5.870974, 18.527412, 19.142355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.125249, 18.242239, 19.260763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179296, -0.509347, -0.841676,
		0.750836, 0.481967, -0.451612,
		0.635687, -0.712933, 0.296021,
		6.315955, 18.028358, 19.349569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.370708, 18.346031, 18.533970>,  <5.870974, 18.527412, 19.142355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.370708, 18.346031, 18.533970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.363169, 18.037876, 18.788889>,  <6.358645, 17.852983, 18.941841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.363169, 18.037876, 18.788889>,  <6.370708, 18.346031, 18.533970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.363169, 18.037876, 18.788889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046502, -0.637396, -0.769132,
		0.998740, 0.015139, 0.047838,
		-0.018848, -0.770387, 0.637297,
		6.357514, 17.806761, 18.980078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.830277, 17.931007, 18.289524>,  <6.370708, 18.346031, 18.533970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.830277, 17.931007, 18.289524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622596, 17.688778, 18.530758>,  <6.497987, 17.543440, 18.675497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622596, 17.688778, 18.530758>,  <6.830277, 17.931007, 18.289524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622596, 17.688778, 18.530758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028531, -0.717536, -0.695937,
		0.854174, -0.344126, 0.389825,
		-0.519204, -0.605573, 0.603083,
		6.466835, 17.507107, 18.711683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.202859, 17.271500, 18.327284>,  <6.830277, 17.931007, 18.289524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.202859, 17.271500, 18.327284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.829734, 17.176699, 18.435867>,  <6.605859, 17.119818, 18.501019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.829734, 17.176699, 18.435867>,  <7.202859, 17.271500, 18.327284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.829734, 17.176699, 18.435867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031204, -0.803590, -0.594365,
		0.359010, -0.545960, 0.756994,
		-0.932812, -0.237004, 0.271461,
		6.549891, 17.105598, 18.517305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.237273, 16.582277, 18.373281>,  <7.202859, 17.271500, 18.327284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.237273, 16.582277, 18.373281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.843118, 16.645123, 18.346981>,  <6.606624, 16.682831, 18.331202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.843118, 16.645123, 18.346981>,  <7.237273, 16.582277, 18.373281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.843118, 16.645123, 18.346981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081736, -0.774917, -0.626755,
		-0.149424, -0.612224, 0.776437,
		-0.985389, 0.157115, -0.065751,
		6.547501, 16.692257, 18.327255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.811563, 15.858192, 18.479172>,  <7.237273, 16.582277, 18.373281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.811563, 15.858192, 18.479172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.614906, 16.128145, 18.259054>,  <6.496912, 16.290117, 18.126984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.614906, 16.128145, 18.259054>,  <6.811563, 15.858192, 18.479172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.614906, 16.128145, 18.259054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190308, -0.699937, -0.688383,
		-0.849747, -0.233713, 0.472555,
		-0.491643, 0.674882, -0.550292,
		6.467413, 16.330610, 18.093967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.287660, 15.462477, 18.220552>,  <6.811563, 15.858192, 18.479172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.287660, 15.462477, 18.220552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.275236, 15.779255, 17.976631>,  <6.267781, 15.969321, 17.830278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.275236, 15.779255, 17.976631>,  <6.287660, 15.462477, 18.220552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.275236, 15.779255, 17.976631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250608, -0.596779, -0.762266,
		-0.967590, 0.129144, 0.217005,
		-0.031061, 0.791945, -0.609802,
		6.265917, 16.016838, 17.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.626430, 15.382379, 17.747694>,  <6.287660, 15.462477, 18.220552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.626430, 15.382379, 17.747694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863443, 15.644094, 17.559732>,  <6.005651, 15.801125, 17.446955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863443, 15.644094, 17.559732>,  <5.626430, 15.382379, 17.747694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.863443, 15.644094, 17.559732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069351, -0.539736, -0.838973,
		-0.802555, 0.529707, -0.274436,
		0.592533, 0.654290, -0.469904,
		6.041203, 15.840382, 17.418762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271311, 15.412312, 17.074825>,  <5.626430, 15.382379, 17.747694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271311, 15.412312, 17.074825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.630104, 15.581477, 17.023338>,  <5.845379, 15.682977, 16.992447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.630104, 15.581477, 17.023338>,  <5.271311, 15.412312, 17.074825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.630104, 15.581477, 17.023338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032412, -0.353302, -0.934948,
		-0.440877, 0.834459, -0.330613,
		0.896982, 0.422913, -0.128717,
		5.899198, 15.708351, 16.984724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.329597, 15.687064, 16.409687>,  <5.271311, 15.412312, 17.074825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.329597, 15.687064, 16.409687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717397, 15.651149, 16.500906>,  <5.950078, 15.629600, 16.555637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717397, 15.651149, 16.500906>,  <5.329597, 15.687064, 16.409687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.717397, 15.651149, 16.500906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195447, -0.278178, -0.940435,
		0.147879, 0.956324, -0.252145,
		0.969501, -0.089789, 0.228047,
		6.008247, 15.624212, 16.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.786361, 15.979396, 15.877012>,  <5.329597, 15.687064, 16.409687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.786361, 15.979396, 15.877012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.051379, 15.741218, 16.058771>,  <6.210390, 15.598310, 16.167826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.051379, 15.741218, 16.058771>,  <5.786361, 15.979396, 15.877012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.051379, 15.741218, 16.058771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186770, -0.456158, -0.870079,
		0.725362, 0.661335, -0.191014,
		0.662546, -0.595446, 0.454397,
		6.250143, 15.562584, 16.195089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.184467, 15.764173, 15.361010>,  <5.786361, 15.979396, 15.877012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.184467, 15.764173, 15.361010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.306708, 15.490758, 15.626154>,  <6.380053, 15.326710, 15.785241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.306708, 15.490758, 15.626154>,  <6.184467, 15.764173, 15.361010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.306708, 15.490758, 15.626154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206531, -0.632006, -0.746936,
		0.929490, 0.365167, -0.051971,
		0.305603, -0.683536, 0.662862,
		6.398389, 15.285697, 15.825012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.678094, 15.344520, 14.960259>,  <6.184467, 15.764173, 15.361010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.678094, 15.344520, 14.960259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.540326, 15.130741, 15.268996>,  <6.457665, 15.002474, 15.454239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.540326, 15.130741, 15.268996>,  <6.678094, 15.344520, 14.960259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.540326, 15.130741, 15.268996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121496, -0.789857, -0.601136,
		0.930920, -0.300819, 0.207111,
		-0.344421, -0.534446, 0.771843,
		6.437000, 14.970407, 15.500549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.075483, 14.702059, 15.101173>,  <6.678094, 15.344520, 14.960259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.075483, 14.702059, 15.101173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704779, 14.625582, 15.230518>,  <6.482357, 14.579696, 15.308125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704779, 14.625582, 15.230518>,  <7.075483, 14.702059, 15.101173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.704779, 14.625582, 15.230518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064796, -0.766531, -0.638930,
		0.370027, -0.613087, 0.698001,
		-0.926759, -0.191193, 0.323363,
		6.426752, 14.568224, 15.327527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.482816, 14.012544, 15.084780>,  <7.075483, 14.702059, 15.101173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.482816, 14.012544, 15.084780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.841099, 14.120605, 14.943514>,  <8.056068, 14.185443, 14.858754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.841099, 14.120605, 14.943514>,  <7.482816, 14.012544, 15.084780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.841099, 14.120605, 14.943514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230477, 0.397148, 0.888343,
		0.380237, -0.877095, 0.293468,
		0.895712, 0.270144, -0.353160,
		8.109811, 14.201652, 14.837564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.003703, 13.707979, 15.502555>,  <7.482816, 14.012544, 15.084780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.003703, 13.707979, 15.502555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.161247, 14.035787, 15.336055>,  <8.255774, 14.232471, 15.236155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.161247, 14.035787, 15.336055>,  <8.003703, 13.707979, 15.502555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.161247, 14.035787, 15.336055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406320, 0.250977, 0.878587,
		0.824487, -0.515171, -0.234137,
		0.393860, 0.819518, -0.416251,
		8.279406, 14.281642, 15.211180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.740595, 13.842065, 15.786550>,  <8.003703, 13.707979, 15.502555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.740595, 13.842065, 15.786550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.639687, 14.201604, 15.643198>,  <8.579142, 14.417327, 15.557187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.639687, 14.201604, 15.643198>,  <8.740595, 13.842065, 15.786550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.639687, 14.201604, 15.643198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476979, 0.437744, 0.762149,
		0.841933, 0.021328, -0.539160,
		-0.252270, 0.898847, -0.358378,
		8.564006, 14.471258, 15.535685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400684, 14.283418, 15.878036>,  <8.740595, 13.842065, 15.786550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400684, 14.283418, 15.878036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.086484, 14.525117, 15.824560>,  <8.897964, 14.670136, 15.792474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.086484, 14.525117, 15.824560>,  <9.400684, 14.283418, 15.878036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.086484, 14.525117, 15.824560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384874, 0.646144, 0.659067,
		0.484624, 0.466244, -0.740106,
		-0.785501, 0.604247, -0.133692,
		8.850834, 14.706391, 15.784452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663763, 14.905361, 15.966781>,  <9.400684, 14.283418, 15.878036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663763, 14.905361, 15.966781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.272299, 14.969010, 16.018784>,  <9.037420, 15.007200, 16.049986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.272299, 14.969010, 16.018784>,  <9.663763, 14.905361, 15.966781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.272299, 14.969010, 16.018784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205287, 0.729702, 0.652221,
		0.008918, 0.664992, -0.746797,
		-0.978661, 0.159124, 0.130007,
		8.978701, 15.016747, 16.057785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.624259, 15.656551, 15.919165>,  <9.663763, 14.905361, 15.966781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.624259, 15.656551, 15.919165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302501, 15.520141, 16.113750>,  <9.109446, 15.438294, 16.230501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302501, 15.520141, 16.113750>,  <9.624259, 15.656551, 15.919165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302501, 15.520141, 16.113750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020881, 0.834559, 0.550522,
		-0.593726, 0.432680, -0.678437,
		-0.804396, -0.341026, 0.486465,
		9.061182, 15.417832, 16.259689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.021177, 16.099514, 15.887539>,  <9.624259, 15.656551, 15.919165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.021177, 16.099514, 15.887539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979630, 15.883993, 16.221941>,  <8.954702, 15.754681, 16.422583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979630, 15.883993, 16.221941>,  <9.021177, 16.099514, 15.887539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.979630, 15.883993, 16.221941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130018, 0.825982, 0.548497,
		-0.986056, 0.165666, -0.015738,
		-0.103866, -0.538802, 0.836004,
		8.948471, 15.722352, 16.472742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.693410, 16.602911, 16.354925>,  <9.021177, 16.099514, 15.887539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.693410, 16.602911, 16.354925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.811371, 16.317598, 16.609253>,  <8.882148, 16.146412, 16.761848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.811371, 16.317598, 16.609253>,  <8.693410, 16.602911, 16.354925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.811371, 16.317598, 16.609253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234111, 0.699065, 0.675648,
		-0.926404, -0.050399, 0.373143,
		0.294903, -0.713280, 0.635817,
		8.899842, 16.103615, 16.799997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.405836, 16.777605, 17.009071>,  <8.693410, 16.602911, 16.354925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.405836, 16.777605, 17.009071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.696985, 16.525446, 17.116997>,  <8.871675, 16.374151, 17.181753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.696985, 16.525446, 17.116997>,  <8.405836, 16.777605, 17.009071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.696985, 16.525446, 17.116997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171710, 0.548509, 0.818323,
		-0.663866, -0.549305, 0.507491,
		0.727872, -0.630398, 0.269815,
		8.915347, 16.336327, 17.197941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.337307, 16.705507, 17.777256>,  <8.405836, 16.777605, 17.009071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.337307, 16.705507, 17.777256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.714974, 16.587753, 17.718086>,  <8.941575, 16.517101, 17.682585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.714974, 16.587753, 17.718086>,  <8.337307, 16.705507, 17.777256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.714974, 16.587753, 17.718086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261240, 0.395378, 0.880585,
		-0.200744, -0.870066, 0.450209,
		0.944169, -0.294385, -0.147926,
		8.998225, 16.499437, 17.673708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.559382, 16.390423, 18.361086>,  <8.337307, 16.705507, 17.777256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.559382, 16.390423, 18.361086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.898889, 16.506001, 18.183949>,  <9.102592, 16.575346, 18.077665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.898889, 16.506001, 18.183949>,  <8.559382, 16.390423, 18.361086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.898889, 16.506001, 18.183949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351955, 0.316315, 0.880950,
		0.394625, -0.903579, 0.166781,
		0.848763, 0.288945, -0.442845,
		9.153518, 16.592684, 18.051096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.131200, 16.232389, 18.831785>,  <8.559382, 16.390423, 18.361086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.131200, 16.232389, 18.831785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.259383, 16.522299, 18.587814>,  <9.336293, 16.696245, 18.441431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.259383, 16.522299, 18.587814>,  <9.131200, 16.232389, 18.831785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.259383, 16.522299, 18.587814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536406, 0.391858, 0.747473,
		0.780753, -0.566702, -0.263199,
		0.320458, 0.724773, -0.609926,
		9.355520, 16.739731, 18.404837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.854547, 16.231100, 18.833511>,  <9.131200, 16.232389, 18.831785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.854547, 16.231100, 18.833511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.746601, 16.603117, 18.733753>,  <9.681834, 16.826326, 18.673899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.746601, 16.603117, 18.733753>,  <9.854547, 16.231100, 18.833511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.746601, 16.603117, 18.733753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431929, 0.348406, 0.831896,
		0.860587, 0.116777, -0.495734,
		-0.269863, 0.930041, -0.249394,
		9.665642, 16.882130, 18.658936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.250868, 16.614243, 19.280945>,  <9.854547, 16.231100, 18.833511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.250868, 16.614243, 19.280945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.041279, 16.917978, 19.126617>,  <9.915525, 17.100220, 19.034021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.041279, 16.917978, 19.126617>,  <10.250868, 16.614243, 19.280945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.041279, 16.917978, 19.126617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012496, 0.459784, 0.887943,
		0.851643, 0.460437, -0.250403,
		-0.523973, 0.759340, -0.385818,
		9.884087, 17.145781, 19.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595100, 17.126274, 19.392199>,  <10.250868, 16.614243, 19.280945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595100, 17.126274, 19.392199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.231106, 17.281910, 19.334879>,  <10.012709, 17.375292, 19.300488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.231106, 17.281910, 19.334879>,  <10.595100, 17.126274, 19.392199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.231106, 17.281910, 19.334879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067359, 0.479730, 0.874827,
		0.409130, 0.786428, -0.462757,
		-0.909986, 0.389089, -0.143299,
		9.958110, 17.398636, 19.291889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749107, 17.744270, 19.560661>,  <10.595100, 17.126274, 19.392199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749107, 17.744270, 19.560661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.357933, 17.685070, 19.619635>,  <10.123228, 17.649549, 19.655018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.357933, 17.685070, 19.619635>,  <10.749107, 17.744270, 19.560661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.357933, 17.685070, 19.619635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080323, 0.385090, 0.919377,
		-0.192845, 0.910934, -0.364706,
		-0.977936, -0.148003, 0.147431,
		10.064552, 17.640669, 19.663864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.451705, 18.385092, 19.859566>,  <10.749107, 17.744270, 19.560661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.451705, 18.385092, 19.859566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.185437, 18.100550, 19.949776>,  <10.025677, 17.929825, 20.003901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.185437, 18.100550, 19.949776>,  <10.451705, 18.385092, 19.859566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.185437, 18.100550, 19.949776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011914, 0.292042, 0.956331,
		-0.746151, 0.639287, -0.185929,
		-0.665670, -0.711353, 0.225524,
		9.985736, 17.887144, 20.017433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928865, 18.713518, 20.235048>,  <10.451705, 18.385092, 19.859566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928865, 18.713518, 20.235048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.870247, 18.328335, 20.325590>,  <9.835075, 18.097225, 20.379915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.870247, 18.328335, 20.325590>,  <9.928865, 18.713518, 20.235048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.870247, 18.328335, 20.325590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030191, 0.224363, 0.974038,
		-0.988743, 0.149577, -0.003807,
		-0.146547, -0.962958, 0.226353,
		9.826283, 18.039448, 20.393496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.266532, 18.622194, 20.591793>,  <9.928865, 18.713518, 20.235048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.266532, 18.622194, 20.591793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.475320, 18.299446, 20.702435>,  <9.600593, 18.105797, 20.768820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.475320, 18.299446, 20.702435>,  <9.266532, 18.622194, 20.591793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475320, 18.299446, 20.702435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013808, 0.316252, 0.948575,
		-0.852852, -0.498947, 0.153933,
		0.521971, -0.806868, 0.276605,
		9.631911, 18.057386, 20.785416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.864089, 18.243185, 21.168154>,  <9.266532, 18.622194, 20.591793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.864089, 18.243185, 21.168154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.253884, 18.164509, 21.211393>,  <9.487761, 18.117304, 21.237337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.253884, 18.164509, 21.211393>,  <8.864089, 18.243185, 21.168154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.253884, 18.164509, 21.211393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055360, 0.256103, 0.965063,
		-0.217503, -0.946427, 0.238680,
		0.974488, -0.196691, 0.108097,
		9.546231, 18.105501, 21.243822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927733, 18.283716, 21.857397>,  <8.864089, 18.243185, 21.168154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927733, 18.283716, 21.857397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.307243, 18.189711, 21.772928>,  <9.534949, 18.133307, 21.722246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.307243, 18.189711, 21.772928>,  <8.927733, 18.283716, 21.857397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.307243, 18.189711, 21.772928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265459, 0.230489, 0.936166,
		-0.171340, -0.944268, 0.281069,
		0.948775, -0.235015, -0.211172,
		9.591876, 18.119205, 21.709576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.897915, 12.890329, 28.142317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546755, 12.699883, 28.162746>,  <19.336060, 12.585616, 28.175005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546755, 12.699883, 28.162746>,  <19.897915, 12.890329, 28.142317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546755, 12.699883, 28.162746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069267, -0.020729, 0.997383,
		-0.473811, 0.879138, 0.051177,
		-0.877898, -0.476116, 0.051074,
		19.283386, 12.557049, 28.178068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442448, 13.101011, 28.670887>,  <19.897915, 12.890329, 28.142317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442448, 13.101011, 28.670887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.309219, 12.728487, 28.611927>,  <19.229282, 12.504972, 28.576551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.309219, 12.728487, 28.611927>,  <19.442448, 13.101011, 28.670887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309219, 12.728487, 28.611927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008945, -0.153196, 0.988155,
		-0.942860, 0.330443, 0.042694,
		-0.333070, -0.931310, -0.147398,
		19.209299, 12.449094, 28.567707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831747, 12.988244, 29.057125>,  <19.442448, 13.101011, 28.670887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831747, 12.988244, 29.057125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960674, 12.614305, 28.997568>,  <19.038031, 12.389940, 28.961834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960674, 12.614305, 28.997568>,  <18.831747, 12.988244, 29.057125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960674, 12.614305, 28.997568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010100, -0.160672, 0.986956,
		-0.946578, -0.316609, -0.061229,
		0.322317, -0.934849, -0.148891,
		19.057369, 12.333850, 28.952900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353016, 12.575044, 29.395849>,  <18.831747, 12.988244, 29.057125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353016, 12.575044, 29.395849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.657484, 12.318396, 29.358027>,  <18.840166, 12.164407, 29.335333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.657484, 12.318396, 29.358027>,  <18.353016, 12.575044, 29.395849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657484, 12.318396, 29.358027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089417, -0.248228, 0.964566,
		-0.642356, -0.725746, -0.246316,
		0.761172, -0.641620, -0.094556,
		18.885836, 12.125910, 29.329660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168585, 11.848593, 29.697321>,  <18.353016, 12.575044, 29.395849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168585, 11.848593, 29.697321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.567818, 11.847845, 29.672577>,  <18.807358, 11.847396, 29.657730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.567818, 11.847845, 29.672577>,  <18.168585, 11.848593, 29.697321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567818, 11.847845, 29.672577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056365, -0.385244, 0.921092,
		-0.025552, -0.922813, -0.384400,
		0.998083, -0.001870, -0.061858,
		18.867243, 11.847284, 29.654020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380310, 11.201098, 29.946997>,  <18.168585, 11.848593, 29.697321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380310, 11.201098, 29.946997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.677092, 11.465908, 29.989376>,  <18.855162, 11.624794, 30.014805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.677092, 11.465908, 29.989376>,  <18.380310, 11.201098, 29.946997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677092, 11.465908, 29.989376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165675, -0.334168, 0.927838,
		0.649657, -0.670861, -0.357619,
		0.741955, 0.662025, 0.105950,
		18.899677, 11.664515, 30.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939152, 10.745635, 30.193979>,  <18.380310, 11.201098, 29.946997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939152, 10.745635, 30.193979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.968878, 11.128030, 30.307514>,  <18.986713, 11.357467, 30.375635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.968878, 11.128030, 30.307514>,  <18.939152, 10.745635, 30.193979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968878, 11.128030, 30.307514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068230, -0.288833, 0.954945,
		0.994898, -0.051599, -0.086691,
		0.074313, 0.955988, 0.283838,
		18.991171, 11.414826, 30.392666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344257, 10.709826, 30.728430>,  <18.939152, 10.745635, 30.193979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344257, 10.709826, 30.728430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.195415, 11.078681, 30.770761>,  <19.106110, 11.299994, 30.796160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.195415, 11.078681, 30.770761>,  <19.344257, 10.709826, 30.728430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195415, 11.078681, 30.770761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086715, -0.148053, 0.985171,
		0.924131, 0.357410, 0.135055,
		-0.372105, 0.922138, 0.105828,
		19.083784, 11.355323, 30.802509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617598, 10.917407, 31.376865>,  <19.344257, 10.709826, 30.728430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617598, 10.917407, 31.376865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.300903, 11.149792, 31.301353>,  <19.110888, 11.289223, 31.256046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.300903, 11.149792, 31.301353>,  <19.617598, 10.917407, 31.376865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300903, 11.149792, 31.301353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363421, -0.199573, 0.909998,
		0.490999, 0.789084, 0.369143,
		-0.791736, 0.580962, -0.188779,
		19.063383, 11.324080, 31.244720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642088, 11.416701, 31.930607>,  <19.617598, 10.917407, 31.376865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642088, 11.416701, 31.930607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.270449, 11.400105, 31.783606>,  <19.047466, 11.390148, 31.695406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.270449, 11.400105, 31.783606>,  <19.642088, 11.416701, 31.930607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270449, 11.400105, 31.783606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352809, -0.198612, 0.914374,
		-0.110926, 0.979200, 0.169893,
		-0.929097, -0.041488, -0.367502,
		18.991720, 11.387659, 31.673355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369644, 11.890489, 32.331219>,  <19.642088, 11.416701, 31.930607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369644, 11.890489, 32.331219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.065338, 11.670547, 32.193295>,  <18.882753, 11.538581, 32.110538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.065338, 11.670547, 32.193295>,  <19.369644, 11.890489, 32.331219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065338, 11.670547, 32.193295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259071, -0.229838, 0.938113,
		-0.595077, 0.803015, 0.032401,
		-0.760766, -0.549856, -0.344809,
		18.837109, 11.505589, 32.089851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.785252, 12.116834, 32.746033>,  <19.369644, 11.890489, 32.331219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.785252, 12.116834, 32.746033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.701878, 11.757888, 32.590450>,  <18.651854, 11.542521, 32.497101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.701878, 11.757888, 32.590450>,  <18.785252, 12.116834, 32.746033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701878, 11.757888, 32.590450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327418, -0.310725, 0.892327,
		-0.921603, 0.313347, -0.229046,
		-0.208437, -0.897365, -0.388960,
		18.639347, 11.488678, 32.473763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337175, 12.410587, 33.338749>,  <18.785252, 12.116834, 32.746033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337175, 12.410587, 33.338749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.259335, 12.109369, 33.087337>,  <18.212629, 11.928638, 32.936489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.259335, 12.109369, 33.087337>,  <18.337175, 12.410587, 33.338749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259335, 12.109369, 33.087337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019438, 0.643618, -0.765100,
		0.980689, -0.136674, -0.139887,
		-0.194603, -0.753045, -0.628533,
		18.200953, 11.883456, 32.898777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049084, 13.043929, 33.532700>,  <18.337175, 12.410587, 33.338749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049084, 13.043929, 33.532700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.243057, 13.202401, 33.220833>,  <18.359442, 13.297484, 33.033714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.243057, 13.202401, 33.220833>,  <18.049084, 13.043929, 33.532700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243057, 13.202401, 33.220833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546924, -0.833045, -0.083131,
		-0.682432, -0.386105, -0.620652,
		0.484934, 0.396180, -0.779667,
		18.388536, 13.321256, 32.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562962, 12.918200, 33.059612>,  <18.049084, 13.043929, 33.532700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562962, 12.918200, 33.059612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.215151, 13.058695, 32.920731>,  <17.006464, 13.142992, 32.837402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.215151, 13.058695, 32.920731>,  <17.562962, 12.918200, 33.059612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215151, 13.058695, 32.920731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468532, 0.364313, -0.804832,
		-0.156196, -0.862501, -0.481347,
		-0.869529, 0.351238, -0.347205,
		16.954292, 13.164066, 32.816570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400536, 12.685061, 32.388134>,  <17.562962, 12.918200, 33.059612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400536, 12.685061, 32.388134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.132784, 12.981826, 32.372669>,  <16.972132, 13.159884, 32.363392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.132784, 12.981826, 32.372669>,  <17.400536, 12.685061, 32.388134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132784, 12.981826, 32.372669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419506, 0.334522, -0.843866,
		-0.613142, -0.581086, -0.535160,
		-0.669381, 0.741912, -0.038659,
		16.931969, 13.204399, 32.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949282, 12.700768, 31.736301>,  <17.400536, 12.685061, 32.388134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949282, 12.700768, 31.736301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.926529, 13.074768, 31.876324>,  <16.912878, 13.299169, 31.960337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.926529, 13.074768, 31.876324>,  <16.949282, 12.700768, 31.736301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926529, 13.074768, 31.876324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142863, 0.354638, -0.924025,
		-0.988107, -0.002548, -0.153749,
		-0.056880, 0.935000, 0.350056,
		16.909466, 13.355268, 31.981340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568031, 13.116999, 31.238958>,  <16.949282, 12.700768, 31.736301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568031, 13.116999, 31.238958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.778942, 13.380023, 31.454214>,  <16.905489, 13.537837, 31.583368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.778942, 13.380023, 31.454214>,  <16.568031, 13.116999, 31.238958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778942, 13.380023, 31.454214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188918, 0.526758, -0.828756,
		-0.828426, 0.538648, 0.153522,
		0.527276, 0.657560, 0.538140,
		16.937124, 13.577291, 31.615656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278404, 13.728485, 31.079708>,  <16.568031, 13.116999, 31.238958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278404, 13.728485, 31.079708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650665, 13.815335, 31.197519>,  <16.874022, 13.867445, 31.268206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650665, 13.815335, 31.197519>,  <16.278404, 13.728485, 31.079708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650665, 13.815335, 31.197519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158750, 0.485633, -0.859627,
		-0.329679, 0.846769, 0.417486,
		0.930650, 0.217126, 0.294528,
		16.929861, 13.880473, 31.285877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391687, 14.440383, 30.873045>,  <16.278404, 13.728485, 31.079708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391687, 14.440383, 30.873045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.769493, 14.320934, 30.927769>,  <16.996178, 14.249265, 30.960602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.769493, 14.320934, 30.927769>,  <16.391687, 14.440383, 30.873045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769493, 14.320934, 30.927769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289069, 0.557906, -0.777933,
		0.155982, 0.774316, 0.613273,
		0.944515, -0.298622, 0.136807,
		17.052847, 14.231348, 30.968811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733194, 14.982379, 30.757538>,  <16.391687, 14.440383, 30.873045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733194, 14.982379, 30.757538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.016603, 14.700262, 30.748085>,  <17.186649, 14.530992, 30.742414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.016603, 14.700262, 30.748085>,  <16.733194, 14.982379, 30.757538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016603, 14.700262, 30.748085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416174, 0.444653, -0.793147,
		0.569909, 0.552128, 0.608571,
		0.708522, -0.705293, -0.023631,
		17.229160, 14.488674, 30.740995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350470, 15.336737, 30.665911>,  <16.733194, 14.982379, 30.757538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350470, 15.336737, 30.665911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445246, 14.966640, 30.547394>,  <17.502111, 14.744582, 30.476284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445246, 14.966640, 30.547394>,  <17.350470, 15.336737, 30.665911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445246, 14.966640, 30.547394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447197, 0.374614, -0.812207,
		0.862482, 0.059943, 0.502526,
		0.236939, -0.925241, -0.296291,
		17.516327, 14.689068, 30.458506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995628, 15.394367, 30.384989>,  <17.350470, 15.336737, 30.665911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995628, 15.394367, 30.384989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.856604, 15.056913, 30.221291>,  <17.773190, 14.854441, 30.123072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.856604, 15.056913, 30.221291>,  <17.995628, 15.394367, 30.384989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856604, 15.056913, 30.221291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463379, 0.224898, -0.857147,
		0.815157, -0.487547, 0.312756,
		-0.347561, -0.843634, -0.409246,
		17.752335, 14.803823, 30.098516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544237, 14.988024, 30.008211>,  <17.995628, 15.394367, 30.384989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544237, 14.988024, 30.008211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.191551, 14.866655, 29.863705>,  <17.979939, 14.793835, 29.777000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.191551, 14.866655, 29.863705>,  <18.544237, 14.988024, 30.008211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191551, 14.866655, 29.863705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308056, 0.209691, -0.927971,
		0.357321, -0.929497, -0.091417,
		-0.881716, -0.303422, -0.361264,
		17.927036, 14.775629, 29.755325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736074, 14.492502, 29.532835>,  <18.544237, 14.988024, 30.008211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736074, 14.492502, 29.532835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.368469, 14.617093, 29.436172>,  <18.147905, 14.691848, 29.378176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.368469, 14.617093, 29.436172>,  <18.736074, 14.492502, 29.532835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368469, 14.617093, 29.436172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261172, 0.021865, -0.965045,
		-0.295306, -0.950002, -0.101444,
		-0.919012, 0.311477, -0.241657,
		18.092766, 14.710536, 29.363676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655811, 14.181821, 28.877611>,  <18.736074, 14.492502, 29.532835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655811, 14.181821, 28.877611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.323397, 14.404115, 28.868341>,  <18.123947, 14.537491, 28.862780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.323397, 14.404115, 28.868341>,  <18.655811, 14.181821, 28.877611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323397, 14.404115, 28.868341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049568, 0.032496, -0.998242,
		-0.554004, -0.830725, -0.054553,
		-0.831037, 0.555734, -0.023175,
		18.074085, 14.570835, 28.861389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157085, 13.920002, 28.311697>,  <18.655811, 14.181821, 28.877611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157085, 13.920002, 28.311697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.100500, 14.305718, 28.401257>,  <18.066549, 14.537148, 28.454992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.100500, 14.305718, 28.401257>,  <18.157085, 13.920002, 28.311697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100500, 14.305718, 28.401257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070828, 0.215737, -0.973880,
		-0.987407, -0.153626, 0.037780,
		-0.141463, 0.964291, 0.223901,
		18.058062, 14.595006, 28.468428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720182, 14.022995, 27.870274>,  <18.157085, 13.920002, 28.311697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720182, 14.022995, 27.870274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.870817, 14.382936, 27.958315>,  <17.961197, 14.598902, 28.011141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.870817, 14.382936, 27.958315>,  <17.720182, 14.022995, 27.870274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870817, 14.382936, 27.958315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008222, 0.234341, -0.972120,
		-0.926345, 0.367896, 0.080851,
		0.376586, 0.899854, 0.220105,
		17.983793, 14.652893, 28.024347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981270, 13.881382, 27.765104>,  <17.720182, 14.022995, 27.870274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.981270, 13.881382, 27.765104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.697746, 13.703753, 27.545874>,  <16.527632, 13.597175, 27.414335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.697746, 13.703753, 27.545874>,  <16.981270, 13.881382, 27.765104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697746, 13.703753, 27.545874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390703, -0.399761, 0.829181,
		-0.587318, 0.801867, 0.109853,
		-0.708808, -0.444073, -0.548079,
		16.485104, 13.570531, 27.381451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382681, 13.939496, 28.231358>,  <16.981270, 13.881382, 27.765104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382681, 13.939496, 28.231358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.315250, 13.632222, 27.984303>,  <16.274792, 13.447858, 27.836069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.315250, 13.632222, 27.984303>,  <16.382681, 13.939496, 28.231358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315250, 13.632222, 27.984303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297629, -0.557688, 0.774855,
		-0.939681, 0.314448, -0.134622,
		-0.168575, -0.768184, -0.617638,
		16.264679, 13.401767, 27.799011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767365, 13.640928, 28.496279>,  <16.382681, 13.939496, 28.231358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767365, 13.640928, 28.496279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933202, 13.358044, 28.267204>,  <16.032703, 13.188313, 28.129761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933202, 13.358044, 28.267204>,  <15.767365, 13.640928, 28.496279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933202, 13.358044, 28.267204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252409, -0.693994, 0.674286,
		-0.874302, -0.135002, -0.466230,
		0.414591, -0.707211, -0.572685,
		16.057579, 13.145881, 28.095398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256881, 13.290007, 28.227997>,  <15.767365, 13.640928, 28.496279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256881, 13.290007, 28.227997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.572476, 13.046805, 28.263384>,  <15.761834, 12.900885, 28.284616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.572476, 13.046805, 28.263384>,  <15.256881, 13.290007, 28.227997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572476, 13.046805, 28.263384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501360, -0.553879, 0.664723,
		-0.355152, -0.568815, -0.741833,
		0.788990, -0.608003, 0.088470,
		15.809174, 12.864404, 28.289925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919158, 12.636544, 28.378736>,  <15.256881, 13.290007, 28.227997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919158, 12.636544, 28.378736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.302546, 12.561140, 28.464340>,  <15.532578, 12.515898, 28.515703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.302546, 12.561140, 28.464340>,  <14.919158, 12.636544, 28.378736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302546, 12.561140, 28.464340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284774, -0.673316, 0.682312,
		0.015474, -0.714920, -0.699035,
		0.958470, -0.188509, 0.214009,
		15.590087, 12.504587, 28.528543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990036, 11.909465, 28.421417>,  <14.919158, 12.636544, 28.378736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990036, 11.909465, 28.421417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.315959, 12.026894, 28.621378>,  <15.511513, 12.097351, 28.741354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.315959, 12.026894, 28.621378>,  <14.990036, 11.909465, 28.421417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315959, 12.026894, 28.621378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182422, -0.688662, 0.701760,
		0.550281, -0.662993, -0.507573,
		0.814808, 0.293573, 0.499902,
		15.560402, 12.114965, 28.771349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242865, 11.288926, 28.817539>,  <14.990036, 11.909465, 28.421417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242865, 11.288926, 28.817539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.443576, 11.583714, 28.998688>,  <15.564003, 11.760588, 29.107376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.443576, 11.583714, 28.998688>,  <15.242865, 11.288926, 28.817539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443576, 11.583714, 28.998688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029489, -0.537822, 0.842542,
		0.864493, -0.409415, -0.291601,
		0.501779, 0.736971, 0.452871,
		15.594110, 11.804806, 29.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402726, 10.560989, 28.783508>,  <15.242865, 11.288926, 28.817539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402726, 10.560989, 28.783508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.096657, 10.304628, 28.808020>,  <14.913015, 10.150812, 28.822725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.096657, 10.304628, 28.808020>,  <15.402726, 10.560989, 28.783508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096657, 10.304628, 28.808020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299298, 0.269828, -0.915212,
		0.570028, -0.718635, -0.398286,
		-0.765173, -0.640903, 0.061277,
		14.867105, 10.112358, 28.826403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440398, 10.188292, 28.206423>,  <15.402726, 10.560989, 28.783508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440398, 10.188292, 28.206423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.059028, 10.176546, 28.326502>,  <14.830206, 10.169498, 28.398548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.059028, 10.176546, 28.326502>,  <15.440398, 10.188292, 28.206423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059028, 10.176546, 28.326502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299811, 0.201385, -0.932501,
		-0.033074, -0.979072, -0.200809,
		-0.953425, -0.029363, 0.300197,
		14.773000, 10.167737, 28.416561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.974173, 9.836451, 27.747749>,  <15.440398, 10.188292, 28.206423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.974173, 9.836451, 27.747749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.715537, 10.074843, 27.938213>,  <14.560356, 10.217879, 28.052492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.715537, 10.074843, 27.938213>,  <14.974173, 9.836451, 27.747749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715537, 10.074843, 27.938213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216805, 0.454884, -0.863757,
		-0.731381, -0.661730, -0.164911,
		-0.646589, 0.595982, 0.476160,
		14.521561, 10.253638, 28.081060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496055, 9.875272, 27.274023>,  <14.974173, 9.836451, 27.747749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496055, 9.875272, 27.274023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399811, 10.174414, 27.521513>,  <14.342065, 10.353899, 27.670008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399811, 10.174414, 27.521513>,  <14.496055, 9.875272, 27.274023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399811, 10.174414, 27.521513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278326, 0.557522, -0.782115,
		-0.929862, -0.360390, 0.074003,
		-0.240609, 0.747855, 0.618724,
		14.327628, 10.398770, 27.707130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806945, 9.985181, 27.101933>,  <14.496055, 9.875272, 27.274023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806945, 9.985181, 27.101933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.979013, 10.302274, 27.274687>,  <14.082254, 10.492530, 27.378340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.979013, 10.302274, 27.274687>,  <13.806945, 9.985181, 27.101933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.979013, 10.302274, 27.274687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393068, 0.595161, -0.700914,
		-0.812680, 0.131752, 0.567620,
		0.430172, 0.792732, 0.431888,
		14.108065, 10.540093, 27.404253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221434, 10.599410, 27.133226>,  <13.806945, 9.985181, 27.101933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221434, 10.599410, 27.133226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.582726, 10.761990, 27.188322>,  <13.799502, 10.859537, 27.221380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.582726, 10.761990, 27.188322>,  <13.221434, 10.599410, 27.133226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582726, 10.761990, 27.188322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217689, 0.710524, -0.669155,
		-0.369844, 0.574417, 0.730247,
		0.903231, 0.406449, 0.137739,
		13.853696, 10.883924, 27.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119434, 11.270353, 26.989487>,  <13.221434, 10.599410, 27.133226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119434, 11.270353, 26.989487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.515772, 11.221158, 26.967211>,  <13.753574, 11.191641, 26.953846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.515772, 11.221158, 26.967211>,  <13.119434, 11.270353, 26.989487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.515772, 11.221158, 26.967211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010379, 0.480650, -0.876851,
		0.134609, 0.868245, 0.477526,
		0.990844, -0.122988, -0.055688,
		13.813025, 11.184261, 26.950504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.592710, 8.355623, 31.479301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.596811, 8.734824, 31.606541>,  <17.599272, 8.962344, 31.682884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.596811, 8.734824, 31.606541>,  <17.592710, 8.355623, 31.479301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596811, 8.734824, 31.606541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157968, 0.312587, -0.936662,
		-0.987391, 0.059852, -0.146549,
		0.010252, 0.948002, 0.318100,
		17.599886, 9.019225, 31.701971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067636, 8.778924, 31.102985>,  <17.592710, 8.355623, 31.479301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067636, 8.778924, 31.102985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.377453, 8.991735, 31.239828>,  <17.563343, 9.119421, 31.321934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.377453, 8.991735, 31.239828>,  <17.067636, 8.778924, 31.102985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377453, 8.991735, 31.239828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187890, 0.322927, -0.927586,
		-0.603975, 0.782731, 0.150157,
		0.774540, 0.532025, 0.342107,
		17.609816, 9.151342, 31.342461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964533, 9.510293, 30.842005>,  <17.067636, 8.778924, 31.102985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.964533, 9.510293, 30.842005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.352774, 9.482486, 30.934181>,  <17.585718, 9.465801, 30.989487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.352774, 9.482486, 30.934181>,  <16.964533, 9.510293, 30.842005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352774, 9.482486, 30.934181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240059, 0.209957, -0.947781,
		0.017506, 0.975236, 0.220473,
		0.970600, -0.069519, 0.230439,
		17.643953, 9.461630, 31.003313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301176, 10.060917, 30.499409>,  <16.964533, 9.510293, 30.842005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301176, 10.060917, 30.499409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.609560, 9.817116, 30.573305>,  <17.794590, 9.670835, 30.617643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.609560, 9.817116, 30.573305>,  <17.301176, 10.060917, 30.499409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609560, 9.817116, 30.573305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330047, 0.134270, -0.934366,
		0.544694, 0.781331, 0.304682,
		0.770959, -0.609503, 0.184740,
		17.840847, 9.634265, 30.628727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917896, 10.344328, 30.151854>,  <17.301176, 10.060917, 30.499409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917896, 10.344328, 30.151854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.994883, 9.955950, 30.208733>,  <18.041075, 9.722922, 30.242861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.994883, 9.955950, 30.208733>,  <17.917896, 10.344328, 30.151854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994883, 9.955950, 30.208733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392467, -0.056652, -0.918020,
		0.899404, 0.232495, 0.370161,
		0.192464, -0.970946, 0.142200,
		18.052622, 9.664666, 30.251392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573647, 10.213138, 29.784908>,  <17.917896, 10.344328, 30.151854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573647, 10.213138, 29.784908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.400562, 9.854098, 29.818563>,  <18.296713, 9.638675, 29.838757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.400562, 9.854098, 29.818563>,  <18.573647, 10.213138, 29.784908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400562, 9.854098, 29.818563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195228, -0.184408, -0.963265,
		0.880142, -0.400387, 0.255031,
		-0.432708, -0.897599, 0.084139,
		18.270750, 9.584819, 29.843805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.071827, 9.743592, 29.682596>,  <18.573647, 10.213138, 29.784908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.071827, 9.743592, 29.682596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.726997, 9.570004, 29.577908>,  <18.520100, 9.465852, 29.515095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.726997, 9.570004, 29.577908>,  <19.071827, 9.743592, 29.682596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726997, 9.570004, 29.577908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347153, -0.129455, -0.928831,
		0.369203, -0.891579, 0.262254,
		-0.862075, -0.433969, -0.261719,
		18.468374, 9.439814, 29.499392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320766, 9.202814, 29.245140>,  <19.071827, 9.743592, 29.682596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320766, 9.202814, 29.245140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.927248, 9.207814, 29.173594>,  <18.691137, 9.210814, 29.130667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.927248, 9.207814, 29.173594>,  <19.320766, 9.202814, 29.245140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927248, 9.207814, 29.173594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165018, -0.327046, -0.930489,
		-0.070128, -0.944926, 0.319683,
		-0.983794, 0.012499, -0.178865,
		18.632111, 9.211564, 29.119934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316044, 8.667885, 28.876486>,  <19.320766, 9.202814, 29.245140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316044, 8.667885, 28.876486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.983650, 8.881816, 28.815264>,  <18.784214, 9.010175, 28.778530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.983650, 8.881816, 28.815264>,  <19.316044, 8.667885, 28.876486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983650, 8.881816, 28.815264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155044, -0.041565, -0.987033,
		-0.534254, -0.843938, -0.048382,
		-0.830984, 0.534827, -0.153054,
		18.734356, 9.042264, 28.769348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818577, 8.233982, 28.373806>,  <19.316044, 8.667885, 28.876486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818577, 8.233982, 28.373806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.723848, 8.621791, 28.348692>,  <18.667011, 8.854476, 28.333624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.723848, 8.621791, 28.348692>,  <18.818577, 8.233982, 28.373806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.723848, 8.621791, 28.348692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350033, 0.024859, -0.936408,
		-0.906308, -0.243737, -0.345252,
		-0.236819, 0.969523, -0.062786,
		18.652803, 8.912647, 28.329857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355949, 8.204165, 27.842890>,  <18.818577, 8.233982, 28.373806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355949, 8.204165, 27.842890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.507235, 8.571297, 27.891136>,  <18.598005, 8.791575, 27.920084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.507235, 8.571297, 27.891136>,  <18.355949, 8.204165, 27.842890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.507235, 8.571297, 27.891136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313595, -0.004439, -0.949547,
		-0.870985, 0.396955, -0.289505,
		0.378212, 0.917828, 0.120617,
		18.620699, 8.846645, 27.927320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336147, 8.558114, 27.136929>,  <18.355949, 8.204165, 27.842890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336147, 8.558114, 27.136929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.625864, 8.754110, 27.330965>,  <18.799694, 8.871708, 27.447386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.625864, 8.754110, 27.330965>,  <18.336147, 8.558114, 27.136929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625864, 8.754110, 27.330965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550881, 0.011852, -0.834499,
		-0.414645, 0.871648, -0.261342,
		0.724292, 0.489990, 0.485089,
		18.843151, 8.901107, 27.476492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.581509, 8.602198, 27.054037>,  <18.336147, 8.558114, 27.136929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.581509, 8.602198, 27.054037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.201836, 8.527273, 26.952873>,  <16.974031, 8.482318, 26.892176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.201836, 8.527273, 26.952873>,  <17.581509, 8.602198, 27.054037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201836, 8.527273, 26.952873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140498, -0.466881, 0.873088,
		-0.281618, 0.864255, 0.416839,
		-0.949185, -0.187312, -0.252908,
		16.917080, 8.471080, 26.877001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090353, 8.976249, 27.408176>,  <17.581509, 8.602198, 27.054037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090353, 8.976249, 27.408176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.863941, 8.662020, 27.308187>,  <16.728094, 8.473482, 27.248194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.863941, 8.662020, 27.308187>,  <17.090353, 8.976249, 27.408176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863941, 8.662020, 27.308187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060809, -0.342182, 0.937664,
		-0.822139, 0.515545, 0.241455,
		-0.566029, -0.785573, -0.249971,
		16.694132, 8.426348, 27.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690737, 8.840913, 27.930605>,  <17.090353, 8.976249, 27.408176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690737, 8.840913, 27.930605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.667761, 8.493138, 27.734327>,  <16.653975, 8.284473, 27.616560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.667761, 8.493138, 27.734327>,  <16.690737, 8.840913, 27.930605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667761, 8.493138, 27.734327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102698, -0.483752, 0.869159,
		-0.993053, 0.100318, -0.061502,
		-0.057441, -0.869437, -0.490693,
		16.650528, 8.232307, 27.587120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997829, 8.565535, 28.048492>,  <16.690737, 8.840913, 27.930605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997829, 8.565535, 28.048492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.240360, 8.260454, 27.958466>,  <16.385880, 8.077406, 27.904449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.240360, 8.260454, 27.958466>,  <15.997829, 8.565535, 28.048492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240360, 8.260454, 27.958466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299664, -0.481306, 0.823739,
		-0.736593, -0.432010, -0.520383,
		0.606327, -0.762700, -0.225069,
		16.422258, 8.031644, 27.890945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570664, 8.106320, 28.173197>,  <15.997829, 8.565535, 28.048492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570664, 8.106320, 28.173197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.910435, 7.895537, 28.161955>,  <16.114296, 7.769066, 28.155210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.910435, 7.895537, 28.161955>,  <15.570664, 8.106320, 28.173197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910435, 7.895537, 28.161955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349639, -0.601887, 0.717973,
		-0.395258, -0.600038, -0.695504,
		0.849425, -0.526960, -0.028104,
		16.165262, 7.737449, 28.153524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515455, 7.365324, 28.116972>,  <15.570664, 8.106320, 28.173197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515455, 7.365324, 28.116972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.877570, 7.400923, 28.283121>,  <16.094839, 7.422283, 28.382811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.877570, 7.400923, 28.283121>,  <15.515455, 7.365324, 28.116972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877570, 7.400923, 28.283121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319868, -0.500623, 0.804401,
		0.279537, -0.861078, -0.424739,
		0.905286, 0.088999, 0.415374,
		16.149157, 7.427623, 28.407734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646173, 6.751900, 28.478949>,  <15.515455, 7.365324, 28.116972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646173, 6.751900, 28.478949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.937602, 6.975551, 28.637218>,  <16.112459, 7.109742, 28.732182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.937602, 6.975551, 28.637218>,  <15.646173, 6.751900, 28.478949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.937602, 6.975551, 28.637218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222827, -0.352768, 0.908792,
		0.647713, -0.750287, -0.132427,
		0.728571, 0.559128, 0.395676,
		16.156174, 7.143290, 28.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973176, 6.265188, 28.946850>,  <15.646173, 6.751900, 28.478949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973176, 6.265188, 28.946850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.093935, 6.628663, 29.062189>,  <16.166389, 6.846748, 29.131392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.093935, 6.628663, 29.062189>,  <15.973176, 6.265188, 28.946850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093935, 6.628663, 29.062189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069918, -0.322749, 0.943898,
		0.950773, -0.264799, -0.160971,
		0.301897, 0.908688, 0.288347,
		16.184504, 6.901269, 29.148693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598831, 6.254916, 29.395748>,  <15.973176, 6.265188, 28.946850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598831, 6.254916, 29.395748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.435905, 6.611795, 29.473803>,  <16.338150, 6.825922, 29.520636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.435905, 6.611795, 29.473803>,  <16.598831, 6.254916, 29.395748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435905, 6.611795, 29.473803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275528, -0.083666, 0.957645,
		0.870736, 0.443827, -0.211748,
		-0.407313, 0.892198, 0.195137,
		16.313711, 6.879455, 29.532343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943674, 6.535894, 29.887373>,  <16.598831, 6.254916, 29.395748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943674, 6.535894, 29.887373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.622766, 6.771022, 29.929007>,  <16.430222, 6.912099, 29.953987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.622766, 6.771022, 29.929007>,  <16.943674, 6.535894, 29.887373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622766, 6.771022, 29.929007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195359, 0.093768, 0.976239,
		0.564093, 0.803539, -0.190063,
		-0.802268, 0.587820, 0.104085,
		16.382086, 6.947368, 29.960232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190166, 7.233892, 30.152363>,  <16.943674, 6.535894, 29.887373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190166, 7.233892, 30.152363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.812031, 7.168366, 30.265146>,  <16.585150, 7.129050, 30.332817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.812031, 7.168366, 30.265146>,  <17.190166, 7.233892, 30.152363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812031, 7.168366, 30.265146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208501, 0.361175, 0.908889,
		-0.250728, 0.917996, -0.307276,
		-0.945337, -0.163816, 0.281960,
		16.528429, 7.119221, 30.349733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044151, 7.805324, 30.646040>,  <17.190166, 7.233892, 30.152363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044151, 7.805324, 30.646040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.742281, 7.548256, 30.698866>,  <16.561159, 7.394016, 30.730560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.742281, 7.548256, 30.698866>,  <17.044151, 7.805324, 30.646040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742281, 7.548256, 30.698866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079210, 0.289060, 0.954028,
		-0.651298, 0.709522, -0.269053,
		-0.754677, -0.642669, 0.132063,
		16.515879, 7.355456, 30.738485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501816, 8.185863, 30.936853>,  <17.044151, 7.805324, 30.646040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501816, 8.185863, 30.936853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.439182, 7.811934, 31.064344>,  <16.401602, 7.587577, 31.140839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.439182, 7.811934, 31.064344>,  <16.501816, 8.185863, 30.936853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439182, 7.811934, 31.064344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262901, 0.350514, 0.898901,
		-0.952031, 0.056962, -0.300652,
		-0.156586, -0.934823, 0.318725,
		16.392206, 7.531487, 31.159962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988840, 8.208239, 31.438057>,  <16.501816, 8.185863, 30.936853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988840, 8.208239, 31.438057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.207403, 7.884360, 31.523687>,  <16.338541, 7.690033, 31.575066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.207403, 7.884360, 31.523687>,  <15.988840, 8.208239, 31.438057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207403, 7.884360, 31.523687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005510, 0.252129, 0.967678,
		-0.837501, -0.529927, 0.133304,
		0.546408, -0.809697, 0.214078,
		16.371326, 7.641451, 31.587912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419573, 8.087811, 30.834196>,  <15.988840, 8.208239, 31.438057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419573, 8.087811, 30.834196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.347748, 8.356645, 31.121546>,  <15.304653, 8.517944, 31.293957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.347748, 8.356645, 31.121546>,  <15.419573, 8.087811, 30.834196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347748, 8.356645, 31.121546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432569, 0.601918, -0.671252,
		-0.883539, -0.431278, 0.182641,
		-0.179561, 0.672082, 0.718375,
		15.293880, 8.558270, 31.337059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691037, 8.294133, 30.860348>,  <15.419573, 8.087811, 30.834196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691037, 8.294133, 30.860348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.900416, 8.600636, 31.009401>,  <15.026044, 8.784537, 31.098833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.900416, 8.600636, 31.009401>,  <14.691037, 8.294133, 30.860348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900416, 8.600636, 31.009401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362022, 0.595901, -0.716828,
		-0.771326, 0.240320, 0.589324,
		0.523447, 0.766256, 0.372633,
		15.057450, 8.830512, 31.121191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315670, 8.852725, 30.606491>,  <14.691037, 8.294133, 30.860348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315670, 8.852725, 30.606491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.628836, 9.063772, 30.738348>,  <14.816735, 9.190401, 30.817463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.628836, 9.063772, 30.738348>,  <14.315670, 8.852725, 30.606491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628836, 9.063772, 30.738348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144039, 0.669192, -0.728996,
		-0.605226, 0.523259, 0.599918,
		0.782914, 0.527619, 0.329642,
		14.863709, 9.222057, 30.837240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080578, 9.592751, 30.753380>,  <14.315670, 8.852725, 30.606491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080578, 9.592751, 30.753380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.473646, 9.577001, 30.680925>,  <14.709487, 9.567551, 30.637453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.473646, 9.577001, 30.680925>,  <14.080578, 9.592751, 30.753380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473646, 9.577001, 30.680925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105543, 0.684462, -0.721369,
		0.152384, 0.727984, 0.668444,
		0.982670, -0.039375, -0.181134,
		14.768447, 9.565188, 30.626585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185270, 10.284472, 30.581467>,  <14.080578, 9.592751, 30.753380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185270, 10.284472, 30.581467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.493018, 10.076343, 30.433231>,  <14.677667, 9.951465, 30.344290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.493018, 10.076343, 30.433231>,  <14.185270, 10.284472, 30.581467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493018, 10.076343, 30.433231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007332, 0.587280, -0.809351,
		0.638762, 0.619973, 0.455650,
		0.769370, -0.520323, -0.370586,
		14.723829, 9.920245, 30.322056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.741949, 10.763972, 30.378784>,  <14.185270, 10.284472, 30.581467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.741949, 10.763972, 30.378784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.774180, 10.437799, 30.149498>,  <14.793519, 10.242096, 30.011927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.774180, 10.437799, 30.149498>,  <14.741949, 10.763972, 30.378784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774180, 10.437799, 30.149498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007046, 0.575538, -0.817744,
		0.996723, 0.061854, 0.052122,
		0.080579, -0.815432, -0.573217,
		14.798354, 10.193170, 29.977533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048426, 10.956012, 29.688372>,  <14.741949, 10.763972, 30.378784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048426, 10.956012, 29.688372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.950793, 10.584020, 29.578419>,  <14.892214, 10.360825, 29.512447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.950793, 10.584020, 29.578419>,  <15.048426, 10.956012, 29.688372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950793, 10.584020, 29.578419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137587, 0.313798, -0.939468,
		0.959945, -0.191487, -0.204545,
		-0.244082, -0.929980, -0.274883,
		14.877568, 10.305026, 29.495955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725158, 10.993516, 29.249477>,  <15.048426, 10.956012, 29.688372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725158, 10.993516, 29.249477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.700579, 11.363750, 29.398888>,  <15.685831, 11.585890, 29.488533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.700579, 11.363750, 29.398888>,  <15.725158, 10.993516, 29.249477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700579, 11.363750, 29.398888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048095, -0.376543, 0.925150,
		0.996951, 0.038885, 0.067654,
		-0.061449, 0.925583, 0.373524,
		15.682144, 11.641424, 29.510944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109562, 10.953512, 29.902384>,  <15.725158, 10.993516, 29.249477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109562, 10.953512, 29.902384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.911946, 11.294525, 29.970633>,  <15.793376, 11.499133, 30.011581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.911946, 11.294525, 29.970633>,  <16.109562, 10.953512, 29.902384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911946, 11.294525, 29.970633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159322, -0.104151, 0.981717,
		0.854716, 0.512193, -0.084373,
		-0.494041, 0.852532, 0.170623,
		15.763734, 11.550284, 30.021820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518198, 11.271799, 30.343103>,  <16.109562, 10.953512, 29.902384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518198, 11.271799, 30.343103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.151045, 11.425271, 30.383667>,  <15.930754, 11.517354, 30.408005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.151045, 11.425271, 30.383667>,  <16.518198, 11.271799, 30.343103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151045, 11.425271, 30.383667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107114, -0.006529, 0.994225,
		0.382127, 0.923443, -0.035105,
		-0.917881, 0.383681, 0.101408,
		15.875681, 11.540376, 30.414089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456665, 11.961345, 30.673082>,  <16.518198, 11.271799, 30.343103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456665, 11.961345, 30.673082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.086878, 11.823887, 30.739134>,  <15.865005, 11.741412, 30.778765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.086878, 11.823887, 30.739134>,  <16.456665, 11.961345, 30.673082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086878, 11.823887, 30.739134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184880, -0.025287, 0.982436,
		-0.333433, 0.938759, 0.086910,
		-0.924468, -0.343644, 0.165127,
		15.809537, 11.720794, 30.788671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304352, 12.313379, 31.273081>,  <16.456665, 11.961345, 30.673082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304352, 12.313379, 31.273081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.037334, 12.018416, 31.231867>,  <15.877125, 11.841438, 31.207138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.037334, 12.018416, 31.231867>,  <16.304352, 12.313379, 31.273081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037334, 12.018416, 31.231867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081422, -0.209851, 0.974337,
		-0.740107, 0.642022, 0.200125,
		-0.667542, -0.737408, -0.103037,
		15.837071, 11.797194, 31.200956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648698, 12.540920, 31.676779>,  <16.304352, 12.313379, 31.273081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648698, 12.540920, 31.676779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.669123, 12.143681, 31.634548>,  <15.681377, 11.905336, 31.609209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.669123, 12.143681, 31.634548>,  <15.648698, 12.540920, 31.676779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.669123, 12.143681, 31.634548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142456, -0.097390, 0.984998,
		-0.988483, -0.065336, 0.136500,
		0.051062, -0.993099, -0.105576,
		15.684442, 11.845751, 31.602875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203149, 12.222596, 32.073044>,  <15.648698, 12.540920, 31.676779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203149, 12.222596, 32.073044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.382663, 11.869324, 32.018517>,  <15.490372, 11.657360, 31.985802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.382663, 11.869324, 32.018517>,  <15.203149, 12.222596, 32.073044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382663, 11.869324, 32.018517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023407, -0.164103, 0.986166,
		-0.893333, -0.439386, -0.094320,
		0.448786, -0.883182, -0.136314,
		15.517299, 11.604369, 31.977623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717650, 11.685019, 32.337246>,  <15.203149, 12.222596, 32.073044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717650, 11.685019, 32.337246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.104616, 11.587128, 32.363220>,  <15.336796, 11.528393, 32.378807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.104616, 11.587128, 32.363220>,  <14.717650, 11.685019, 32.337246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104616, 11.587128, 32.363220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075073, -0.032304, 0.996655,
		-0.241815, -0.969053, -0.049624,
		0.967414, -0.244731, 0.064938,
		15.394840, 11.513709, 32.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795774, 11.113024, 32.964264>,  <14.717650, 11.685019, 32.337246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795774, 11.113024, 32.964264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.160419, 11.252564, 32.877304>,  <15.379207, 11.336289, 32.825127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.160419, 11.252564, 32.877304>,  <14.795774, 11.113024, 32.964264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160419, 11.252564, 32.877304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245121, -0.036807, 0.968794,
		0.329965, -0.936454, -0.119065,
		0.911613, 0.348853, -0.217399,
		15.433904, 11.357221, 32.812084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<17.312199, 14.928477, 16.766586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591621, 15.067399, 17.016832>,  <17.759275, 15.150752, 17.166981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591621, 15.067399, 17.016832>,  <17.312199, 14.928477, 16.766586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.591621, 15.067399, 17.016832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555112, -0.288660, 0.780081,
		0.451516, -0.892219, -0.008853,
		0.698558, 0.347305, 0.625617,
		17.801189, 15.171591, 17.204517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269855, 14.481771, 17.243856>,  <17.312199, 14.928477, 16.766586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269855, 14.481771, 17.243856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479242, 14.768405, 17.428242>,  <17.604874, 14.940386, 17.538874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479242, 14.768405, 17.428242>,  <17.269855, 14.481771, 17.243856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479242, 14.768405, 17.428242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375193, -0.291874, 0.879795,
		0.764992, -0.633494, 0.116072,
		0.523467, 0.716585, 0.460964,
		17.636282, 14.983380, 17.566530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711771, 14.149563, 17.893988>,  <17.269855, 14.481771, 17.243856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711771, 14.149563, 17.893988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659925, 14.540677, 17.959879>,  <17.628819, 14.775346, 17.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659925, 14.540677, 17.959879>,  <17.711771, 14.149563, 17.893988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659925, 14.540677, 17.959879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357305, -0.201023, 0.912098,
		0.924951, 0.059361, 0.375423,
		-0.129612, 0.977786, 0.164727,
		17.621042, 14.834013, 18.009296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761816, 14.086183, 18.628998>,  <17.711771, 14.149563, 17.893988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761816, 14.086183, 18.628998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598347, 14.442513, 18.549582>,  <17.500265, 14.656310, 18.501932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598347, 14.442513, 18.549582>,  <17.761816, 14.086183, 18.628998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598347, 14.442513, 18.549582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539312, -0.060209, 0.839951,
		0.736295, 0.450340, 0.505038,
		-0.408671, 0.890825, -0.198542,
		17.475746, 14.709760, 18.490019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869322, 14.472176, 19.223305>,  <17.761816, 14.086183, 18.628998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869322, 14.472176, 19.223305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565950, 14.659286, 19.041771>,  <17.383926, 14.771553, 18.932850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565950, 14.659286, 19.041771>,  <17.869322, 14.472176, 19.223305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565950, 14.659286, 19.041771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461392, 0.106460, 0.880786,
		0.460328, 0.877411, 0.135087,
		-0.758430, 0.467778, -0.453837,
		17.338421, 14.799620, 18.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777918, 15.081869, 19.611410>,  <17.869322, 14.472176, 19.223305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777918, 15.081869, 19.611410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439207, 15.038218, 19.403156>,  <17.235981, 15.012027, 19.278204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439207, 15.038218, 19.403156>,  <17.777918, 15.081869, 19.611410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439207, 15.038218, 19.403156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531569, 0.136600, 0.835928,
		-0.020105, 0.984597, -0.173679,
		-0.846777, -0.109128, -0.520635,
		17.185175, 15.005479, 19.246965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352720, 15.607940, 19.806887>,  <17.777918, 15.081869, 19.611410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352720, 15.607940, 19.806887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115696, 15.331170, 19.641909>,  <16.973480, 15.165109, 19.542921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115696, 15.331170, 19.641909>,  <17.352720, 15.607940, 19.806887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115696, 15.331170, 19.641909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633995, 0.084755, 0.768678,
		-0.496910, 0.716979, -0.488899,
		-0.592562, -0.691924, -0.412446,
		16.937927, 15.123593, 19.518175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714287, 15.841441, 19.856033>,  <17.352720, 15.607940, 19.806887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714287, 15.841441, 19.856033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634964, 15.451476, 19.815592>,  <16.587370, 15.217497, 19.791327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634964, 15.451476, 19.815592>,  <16.714287, 15.841441, 19.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634964, 15.451476, 19.815592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568476, 0.030375, 0.822139,
		-0.798442, 0.220509, -0.560237,
		-0.198306, -0.974912, -0.101102,
		16.575472, 15.159002, 19.785261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088877, 15.721332, 20.087070>,  <16.714287, 15.841441, 19.856033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088877, 15.721332, 20.087070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254084, 15.358068, 20.114389>,  <16.353209, 15.140110, 20.130781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254084, 15.358068, 20.114389>,  <16.088877, 15.721332, 20.087070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254084, 15.358068, 20.114389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445464, -0.136041, 0.884904,
		-0.794342, -0.395904, -0.460739,
		0.413017, -0.908159, 0.068298,
		16.377989, 15.085621, 20.134878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556966, 15.400933, 20.505774>,  <16.088877, 15.721332, 20.087070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.556966, 15.400933, 20.505774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.874928, 15.158502, 20.517015>,  <16.065706, 15.013042, 20.523760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.874928, 15.158502, 20.517015>,  <15.556966, 15.400933, 20.505774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874928, 15.158502, 20.517015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190883, -0.205849, 0.959786,
		-0.575923, -0.768305, -0.279321,
		0.794907, -0.606080, 0.028104,
		16.113401, 14.976678, 20.525446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305371, 14.687326, 20.757524>,  <15.556966, 15.400933, 20.505774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.305371, 14.687326, 20.757524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703792, 14.668321, 20.787519>,  <15.942844, 14.656918, 20.805517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703792, 14.668321, 20.787519>,  <15.305371, 14.687326, 20.757524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703792, 14.668321, 20.787519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087752, -0.399164, 0.912670,
		-0.013431, -0.915647, -0.401758,
		0.996052, -0.047513, 0.074988,
		16.002607, 14.654067, 20.810017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607456, 14.027768, 21.057728>,  <15.305371, 14.687326, 20.757524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607456, 14.027768, 21.057728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869566, 14.309824, 21.166096>,  <16.026831, 14.479057, 21.231115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869566, 14.309824, 21.166096>,  <15.607456, 14.027768, 21.057728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869566, 14.309824, 21.166096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024580, -0.338551, 0.940627,
		0.754992, -0.623027, -0.204511,
		0.655273, 0.705139, 0.270918,
		16.066149, 14.521365, 21.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156879, 13.450548, 21.063608>,  <15.607456, 14.027768, 21.057728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156879, 13.450548, 21.063608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802168, 13.312016, 21.186035>,  <14.589341, 13.228896, 21.259491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802168, 13.312016, 21.186035>,  <15.156879, 13.450548, 21.063608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802168, 13.312016, 21.186035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410581, 0.286188, -0.865748,
		0.212238, -0.893395, -0.395981,
		-0.886780, -0.346326, 0.306071,
		14.536134, 13.208117, 21.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962103, 12.957028, 20.567167>,  <15.156879, 13.450548, 21.063608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962103, 12.957028, 20.567167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625906, 13.074251, 20.749460>,  <14.424188, 13.144585, 20.858835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625906, 13.074251, 20.749460>,  <14.962103, 12.957028, 20.567167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625906, 13.074251, 20.749460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452541, 0.082853, -0.887886,
		-0.297959, -0.952499, 0.062982,
		-0.840492, 0.293056, 0.455732,
		14.373758, 13.162168, 20.886179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478600, 12.632308, 20.112869>,  <14.962103, 12.957028, 20.567167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478600, 12.632308, 20.112869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286160, 12.914972, 20.320396>,  <14.170695, 13.084571, 20.444914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286160, 12.914972, 20.320396>,  <14.478600, 12.632308, 20.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286160, 12.914972, 20.320396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548996, 0.218542, -0.806748,
		-0.683482, -0.672956, 0.282814,
		-0.481099, 0.706662, 0.518819,
		14.141829, 13.126971, 20.476042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793365, 12.523004, 20.018492>,  <14.478600, 12.632308, 20.112869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793365, 12.523004, 20.018492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870823, 12.910548, 20.080215>,  <13.917297, 13.143075, 20.117250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870823, 12.910548, 20.080215>,  <13.793365, 12.523004, 20.018492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870823, 12.910548, 20.080215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673374, 0.245643, -0.697300,
		-0.713491, 0.031119, 0.699973,
		0.193643, 0.968861, 0.154309,
		13.928916, 13.201206, 20.126509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252155, 12.802638, 20.231613>,  <13.793365, 12.523004, 20.018492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.252155, 12.802638, 20.231613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444857, 13.123824, 20.091236>,  <13.560477, 13.316536, 20.007010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444857, 13.123824, 20.091236>,  <13.252155, 12.802638, 20.231613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444857, 13.123824, 20.091236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685289, 0.095607, -0.721968,
		-0.546162, 0.588309, 0.596322,
		0.481753, 0.802965, -0.350944,
		13.589382, 13.364714, 19.985952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.726064, 13.176760, 20.064669>,  <13.252155, 12.802638, 20.231613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.726064, 13.176760, 20.064669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028049, 13.367820, 19.884945>,  <13.209241, 13.482456, 19.777111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028049, 13.367820, 19.884945>,  <12.726064, 13.176760, 20.064669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028049, 13.367820, 19.884945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604871, 0.242566, -0.758481,
		-0.253300, 0.844400, 0.472045,
		0.754964, 0.477650, -0.449311,
		13.254539, 13.511115, 19.750153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421117, 13.861753, 19.890541>,  <12.726064, 13.176760, 20.064669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421117, 13.861753, 19.890541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728531, 13.759853, 19.655779>,  <12.912979, 13.698713, 19.514921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728531, 13.759853, 19.655779>,  <12.421117, 13.861753, 19.890541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728531, 13.759853, 19.655779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496672, 0.340716, -0.798267,
		0.403327, 0.904994, 0.135325,
		0.768534, -0.254751, -0.586905,
		12.959091, 13.683428, 19.479708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327574, 14.373328, 19.426033>,  <12.421117, 13.861753, 19.890541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327574, 14.373328, 19.426033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568199, 14.088812, 19.280603>,  <12.712575, 13.918102, 19.193346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568199, 14.088812, 19.280603>,  <12.327574, 14.373328, 19.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568199, 14.088812, 19.280603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430080, 0.095154, -0.897762,
		0.673166, 0.696427, -0.248671,
		0.601564, -0.711291, -0.363574,
		12.748669, 13.875424, 19.171532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575419, 14.734769, 18.769516>,  <12.327574, 14.373328, 19.426033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575419, 14.734769, 18.769516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623653, 14.344305, 18.697325>,  <12.652594, 14.110027, 18.654011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623653, 14.344305, 18.697325>,  <12.575419, 14.734769, 18.769516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623653, 14.344305, 18.697325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358668, 0.126682, -0.924829,
		0.925644, 0.176252, -0.334841,
		0.120585, -0.976159, -0.180479,
		12.659829, 14.051457, 18.643181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.799026, 14.712220, 18.100613>,  <12.575419, 14.734769, 18.769516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.799026, 14.712220, 18.100613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.692561, 14.331573, 18.162041>,  <12.628682, 14.103186, 18.198896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.692561, 14.331573, 18.162041>,  <12.799026, 14.712220, 18.100613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692561, 14.331573, 18.162041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401748, -0.035304, -0.915069,
		0.876217, -0.305252, -0.372914,
		-0.266162, -0.951617, 0.153569,
		12.612713, 14.046088, 18.208111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097663, 14.184018, 17.531399>,  <12.799026, 14.712220, 18.100613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097663, 14.184018, 17.531399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758857, 14.052913, 17.698797>,  <12.555573, 13.974249, 17.799236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758857, 14.052913, 17.698797>,  <13.097663, 14.184018, 17.531399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758857, 14.052913, 17.698797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444474, 0.004875, -0.895779,
		0.291564, -0.944747, -0.149812,
		-0.847014, -0.327764, 0.418494,
		12.504752, 13.954583, 17.824345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.916839, 13.647621, 17.093546>,  <13.097663, 14.184018, 17.531399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.916839, 13.647621, 17.093546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583312, 13.765451, 17.280296>,  <12.383196, 13.836149, 17.392347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583312, 13.765451, 17.280296>,  <12.916839, 13.647621, 17.093546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.583312, 13.765451, 17.280296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484202, 0.015937, -0.874811,
		-0.265140, -0.955495, 0.129346,
		-0.833816, 0.294577, 0.466878,
		12.333167, 13.853825, 17.420361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403800, 13.255460, 16.711466>,  <12.916839, 13.647621, 17.093546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403800, 13.255460, 16.711466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202842, 13.542388, 16.904568>,  <12.082267, 13.714544, 17.020428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202842, 13.542388, 16.904568>,  <12.403800, 13.255460, 16.711466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202842, 13.542388, 16.904568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624118, 0.085551, -0.776632,
		-0.598394, -0.691471, 0.404712,
		-0.502396, 0.717320, 0.482753,
		12.052123, 13.757584, 17.049393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401400, 12.438150, 16.571346>,  <12.403800, 13.255460, 16.711466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401400, 12.438150, 16.571346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589696, 12.157767, 16.357035>,  <12.702674, 11.989537, 16.228447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589696, 12.157767, 16.357035>,  <12.401400, 12.438150, 16.571346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589696, 12.157767, 16.357035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873708, 0.454772, 0.172674,
		0.122620, -0.549399, 0.826514,
		0.470742, -0.700959, -0.535779,
		12.730919, 11.947479, 16.196301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084524, 12.174575, 16.889372>,  <12.401400, 12.438150, 16.571346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084524, 12.174575, 16.889372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145825, 12.135164, 16.496067>,  <13.182607, 12.111518, 16.260084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145825, 12.135164, 16.496067>,  <13.084524, 12.174575, 16.889372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145825, 12.135164, 16.496067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782976, 0.619152, 0.059996,
		0.602877, -0.779066, 0.172031,
		0.153254, -0.098527, -0.983263,
		13.191801, 12.105606, 16.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543211, 11.786670, 17.404238>,  <13.084524, 12.174575, 16.889372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543211, 11.786670, 17.404238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168229, 11.670777, 17.481421>,  <12.943240, 11.601242, 17.527731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168229, 11.670777, 17.481421>,  <13.543211, 11.786670, 17.404238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168229, 11.670777, 17.481421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339059, -0.885521, 0.317634,
		0.078840, 0.363192, 0.928373,
		-0.937456, -0.289731, 0.192958,
		12.886992, 11.583858, 17.539309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632856, 11.408952, 18.029734>,  <13.543211, 11.786670, 17.404238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632856, 11.408952, 18.029734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305764, 11.299232, 17.827318>,  <13.109509, 11.233399, 17.705870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305764, 11.299232, 17.827318>,  <13.632856, 11.408952, 18.029734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305764, 11.299232, 17.827318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242571, -0.961492, 0.129201,
		-0.521992, -0.017099, 0.852779,
		-0.817731, -0.274301, -0.506039,
		13.060445, 11.216941, 17.675507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.240931, 11.793708, 17.597319>,  <13.632856, 11.408952, 18.029734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.240931, 11.793708, 17.597319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630064, 11.867114, 17.653769>,  <14.863544, 11.911158, 17.687637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630064, 11.867114, 17.653769>,  <14.240931, 11.793708, 17.597319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630064, 11.867114, 17.653769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038575, -0.729573, 0.682815,
		0.228267, -0.658821, -0.716832,
		0.972834, 0.183516, 0.141123,
		14.921914, 11.922169, 17.696106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622525, 11.168530, 17.611023>,  <14.240931, 11.793708, 17.597319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622525, 11.168530, 17.611023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863927, 11.426360, 17.798771>,  <15.008768, 11.581058, 17.911419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863927, 11.426360, 17.798771>,  <14.622525, 11.168530, 17.611023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863927, 11.426360, 17.798771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162321, -0.675644, 0.719136,
		0.780664, -0.357812, -0.512381,
		0.603503, 0.644574, 0.469371,
		15.044978, 11.619732, 17.939583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307817, 10.845945, 17.743065>,  <14.622525, 11.168530, 17.611023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307817, 10.845945, 17.743065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272545, 11.147271, 18.003754>,  <15.251382, 11.328067, 18.160168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272545, 11.147271, 18.003754>,  <15.307817, 10.845945, 17.743065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272545, 11.147271, 18.003754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197720, -0.628015, 0.752665,
		0.976284, 0.195229, -0.093567,
		-0.088181, 0.753315, 0.651722,
		15.246091, 11.373265, 18.199270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923887, 10.747147, 18.194887>,  <15.307817, 10.845945, 17.743065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923887, 10.747147, 18.194887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710517, 11.013178, 18.403934>,  <15.582495, 11.172796, 18.529362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710517, 11.013178, 18.403934>,  <15.923887, 10.747147, 18.194887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710517, 11.013178, 18.403934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117283, -0.553737, 0.824390,
		0.837676, 0.501045, 0.217375,
		-0.533426, 0.665078, 0.522617,
		15.550489, 11.212701, 18.560720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285934, 11.079277, 18.709888>,  <15.923887, 10.747147, 18.194887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285934, 11.079277, 18.709888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905154, 11.097853, 18.830973>,  <15.676686, 11.108998, 18.903624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905154, 11.097853, 18.830973>,  <16.285934, 11.079277, 18.709888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.905154, 11.097853, 18.830973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267295, -0.356447, 0.895265,
		0.149474, 0.933161, 0.326907,
		-0.951951, 0.046438, 0.302709,
		15.619569, 11.111784, 18.921785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266626, 11.390322, 19.393496>,  <16.285934, 11.079277, 18.709888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266626, 11.390322, 19.393496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904955, 11.219527, 19.388775>,  <15.687952, 11.117050, 19.385942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904955, 11.219527, 19.388775>,  <16.266626, 11.390322, 19.393496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904955, 11.219527, 19.388775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083384, -0.203541, 0.975509,
		-0.418933, 0.881052, 0.219641,
		-0.904181, -0.426987, -0.011804,
		15.633700, 11.091431, 19.385233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063749, 11.649829, 20.041082>,  <16.266626, 11.390322, 19.393496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063749, 11.649829, 20.041082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807629, 11.361759, 19.934227>,  <15.653956, 11.188917, 19.870113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807629, 11.361759, 19.934227>,  <16.063749, 11.649829, 20.041082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807629, 11.361759, 19.934227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100926, -0.265884, 0.958707,
		-0.761464, 0.640823, 0.097562,
		-0.640302, -0.720175, -0.267136,
		15.615538, 11.145707, 19.854086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494187, 11.721264, 20.454676>,  <16.063749, 11.649829, 20.041082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494187, 11.721264, 20.454676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485899, 11.342336, 20.326828>,  <15.480926, 11.114979, 20.250120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485899, 11.342336, 20.326828>,  <15.494187, 11.721264, 20.454676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485899, 11.342336, 20.326828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088746, -0.316682, 0.944371,
		-0.995839, 0.047934, -0.077508,
		-0.020722, -0.947320, -0.319618,
		15.479683, 11.058140, 20.230942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002894, 11.434412, 20.928890>,  <15.494187, 11.721264, 20.454676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002894, 11.434412, 20.928890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172181, 11.125142, 20.739962>,  <15.273753, 10.939580, 20.626604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172181, 11.125142, 20.739962>,  <15.002894, 11.434412, 20.928890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172181, 11.125142, 20.739962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000192, -0.521387, 0.853320,
		-0.906028, -0.361049, -0.220809,
		0.423217, -0.773175, -0.472322,
		15.299147, 10.893189, 20.598265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590971, 10.788897, 21.060007>,  <15.002894, 11.434412, 20.928890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590971, 10.788897, 21.060007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965013, 10.681969, 20.966953>,  <15.189438, 10.617812, 20.911121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965013, 10.681969, 20.966953>,  <14.590971, 10.788897, 21.060007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965013, 10.681969, 20.966953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107564, -0.411392, 0.905089,
		-0.337652, -0.871377, -0.355941,
		0.935105, -0.267319, -0.232636,
		15.245543, 10.601772, 20.897161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590254, 10.157660, 21.209282>,  <14.590971, 10.788897, 21.060007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590254, 10.157660, 21.209282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973068, 10.272136, 21.227947>,  <15.202757, 10.340820, 21.239145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973068, 10.272136, 21.227947>,  <14.590254, 10.157660, 21.209282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973068, 10.272136, 21.227947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037205, -0.280789, 0.959048,
		0.287570, -0.916108, -0.279373,
		0.957037, 0.286188, 0.046662,
		15.260180, 10.357992, 21.241945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998627, 9.527311, 21.408543>,  <14.590254, 10.157660, 21.209282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998627, 9.527311, 21.408543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211322, 9.850320, 21.510653>,  <15.338939, 10.044125, 21.571918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211322, 9.850320, 21.510653>,  <14.998627, 9.527311, 21.408543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211322, 9.850320, 21.510653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198282, -0.411744, 0.889467,
		0.823371, -0.422346, -0.379056,
		0.531737, 0.807521, 0.255274,
		15.370843, 10.092576, 21.587234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499329, 9.248896, 21.830702>,  <14.998627, 9.527311, 21.408543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499329, 9.248896, 21.830702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.559541, 9.636433, 21.909374>,  <15.595668, 9.868955, 21.956577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.559541, 9.636433, 21.909374>,  <15.499329, 9.248896, 21.830702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559541, 9.636433, 21.909374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211790, -0.225932, 0.950842,
		0.965653, -0.101475, -0.239201,
		0.150530, 0.968844, 0.196680,
		15.604700, 9.927086, 21.968378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149353, 9.329832, 22.031168>,  <15.499329, 9.248896, 21.830702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.149353, 9.329832, 22.031168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980085, 9.660116, 22.180367>,  <15.878525, 9.858287, 22.269886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980085, 9.660116, 22.180367>,  <16.149353, 9.329832, 22.031168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980085, 9.660116, 22.180367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247799, -0.290507, 0.924230,
		0.871506, 0.483535, -0.081677,
		-0.423170, 0.825711, 0.372998,
		15.853134, 9.907829, 22.292267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583971, 9.591387, 22.568630>,  <16.149353, 9.329832, 22.031168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583971, 9.591387, 22.568630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246948, 9.784729, 22.663681>,  <16.044735, 9.900734, 22.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246948, 9.784729, 22.663681>,  <16.583971, 9.591387, 22.568630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246948, 9.784729, 22.663681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097640, -0.296806, 0.949933,
		0.529683, 0.823574, 0.202881,
		-0.842557, 0.483354, 0.237627,
		15.994182, 9.929735, 22.734968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715021, 10.163564, 23.062920>,  <16.583971, 9.591387, 22.568630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715021, 10.163564, 23.062920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325451, 10.088449, 23.113840>,  <16.091709, 10.043380, 23.144392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325451, 10.088449, 23.113840>,  <16.715021, 10.163564, 23.062920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.325451, 10.088449, 23.113840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166241, -0.208888, 0.963706,
		-0.154381, 0.959740, 0.234659,
		-0.973925, -0.187788, 0.127300,
		16.033274, 10.032112, 23.152031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558331, 10.430964, 23.721571>,  <16.715021, 10.163564, 23.062920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558331, 10.430964, 23.721571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.250662, 10.187756, 23.642895>,  <16.066061, 10.041831, 23.595688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.250662, 10.187756, 23.642895>,  <16.558331, 10.430964, 23.721571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250662, 10.187756, 23.642895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078280, -0.395119, 0.915289,
		-0.634230, 0.688616, 0.351510,
		-0.769171, -0.608020, -0.196692,
		16.019911, 10.005349, 23.583887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113888, 10.462092, 24.293997>,  <16.558331, 10.430964, 23.721571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113888, 10.462092, 24.293997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021841, 10.112967, 24.121836>,  <15.966613, 9.903493, 24.018539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021841, 10.112967, 24.121836>,  <16.113888, 10.462092, 24.293997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021841, 10.112967, 24.121836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093316, -0.420442, 0.902508,
		-0.968679, 0.247846, 0.015304,
		-0.230117, -0.872812, -0.430401,
		15.952806, 9.851124, 23.992716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639866, 10.224618, 24.646343>,  <16.113888, 10.462092, 24.293997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639866, 10.224618, 24.646343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768145, 9.887145, 24.474133>,  <15.845112, 9.684661, 24.370806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768145, 9.887145, 24.474133>,  <15.639866, 10.224618, 24.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.768145, 9.887145, 24.474133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042140, -0.466793, 0.883362,
		-0.946244, -0.265148, -0.185252,
		0.320696, -0.843683, -0.430527,
		15.864353, 9.634040, 24.344975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239029, 9.674299, 24.848948>,  <15.639866, 10.224618, 24.646343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239029, 9.674299, 24.848948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572769, 9.495543, 24.719860>,  <15.773013, 9.388288, 24.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572769, 9.495543, 24.719860>,  <15.239029, 9.674299, 24.848948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572769, 9.495543, 24.719860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027848, -0.550531, 0.834350,
		-0.550531, -0.705127, -0.446891,
		-0.834350, 0.446891, 0.322720,
		15.823074, 9.361475, 24.623043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169238, 9.031760, 25.122450>,  <15.239029, 9.674299, 24.848948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169238, 9.031760, 25.122450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560524, 9.044825, 25.040445>,  <15.795296, 9.052663, 24.991243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560524, 9.044825, 25.040445>,  <15.169238, 9.031760, 25.122450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560524, 9.044825, 25.040445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192823, -0.508818, 0.839001,
		-0.076910, -0.860254, -0.504031,
		0.978215, 0.032661, -0.205010,
		15.853989, 9.054623, 24.978943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406651, 8.378908, 25.181549>,  <15.169238, 9.031760, 25.122450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406651, 8.378908, 25.181549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741853, 8.595877, 25.205307>,  <15.942974, 8.726058, 25.219561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741853, 8.595877, 25.205307>,  <15.406651, 8.378908, 25.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741853, 8.595877, 25.205307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296019, -0.543349, 0.785586,
		0.458390, -0.640742, -0.615896,
		0.838004, 0.542422, 0.059394,
		15.993254, 8.758603, 25.223125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951811, 7.894089, 25.358130>,  <15.406651, 8.378908, 25.181549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951811, 7.894089, 25.358130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143848, 8.236218, 25.436033>,  <16.259071, 8.441496, 25.482777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143848, 8.236218, 25.436033>,  <15.951811, 7.894089, 25.358130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143848, 8.236218, 25.436033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374789, -0.400737, 0.836028,
		0.793123, -0.328377, -0.512957,
		0.480094, 0.855324, 0.194761,
		16.287876, 8.492815, 25.494461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650156, 7.681530, 25.508034>,  <15.951811, 7.894089, 25.358130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650156, 7.681530, 25.508034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599564, 8.035889, 25.686556>,  <16.569208, 8.248504, 25.793669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599564, 8.035889, 25.686556>,  <16.650156, 7.681530, 25.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599564, 8.035889, 25.686556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487173, -0.336448, 0.805894,
		0.864098, 0.319359, -0.389031,
		-0.126481, 0.885897, 0.446307,
		16.561619, 8.301658, 25.820448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343214, 7.948272, 25.740807>,  <16.650156, 7.681530, 25.508034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343214, 7.948272, 25.740807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058954, 8.118256, 25.965088>,  <16.888399, 8.220245, 26.099657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058954, 8.118256, 25.965088>,  <17.343214, 7.948272, 25.740807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058954, 8.118256, 25.965088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454935, -0.330364, 0.826979,
		0.536668, 0.842775, 0.041445,
		-0.710649, 0.424959, 0.560704,
		16.845760, 8.245743, 26.133299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
