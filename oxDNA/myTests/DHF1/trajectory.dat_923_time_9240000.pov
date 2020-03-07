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
	<4.106021, 3.856755, 0.725485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340225, 3.968231, 0.420982>,  <4.480747, 4.035117, 0.238281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340225, 3.968231, 0.420982>,  <4.106021, 3.856755, 0.725485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340225, 3.968231, 0.420982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778902, 0.066888, 0.623568,
		0.224702, -0.958049, -0.177908,
		0.585509, 0.278690, -0.761256,
		4.515878, 4.051838, 0.192605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.652611, 3.495851, 1.041221>,  <4.106021, 3.856755, 0.725485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.652611, 3.495851, 1.041221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023857, 3.383026, 0.944027>,  <5.246605, 3.315331, 0.885711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023857, 3.383026, 0.944027>,  <4.652611, 3.495851, 1.041221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.023857, 3.383026, 0.944027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258473, -0.957935, 0.124710,
		-0.267939, -0.052940, -0.961980,
		0.928116, -0.282061, -0.242984,
		5.302292, 3.298408, 0.871132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.686857, 2.964782, 0.393366>,  <4.652611, 3.495851, 1.041221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.686857, 2.964782, 0.393366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930412, 2.962997, 0.710663>,  <5.076546, 2.961927, 0.901041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930412, 2.962997, 0.710663>,  <4.686857, 2.964782, 0.393366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.930412, 2.962997, 0.710663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345509, -0.901637, 0.260141,
		0.714058, -0.432469, -0.550538,
		0.608889, -0.004460, 0.793243,
		5.113079, 2.961659, 0.948636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.087110, 2.328199, 0.251103>,  <4.686857, 2.964782, 0.393366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.087110, 2.328199, 0.251103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.072639, 2.430347, 0.637569>,  <5.063957, 2.491637, 0.869449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.072639, 2.430347, 0.637569>,  <5.087110, 2.328199, 0.251103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.072639, 2.430347, 0.637569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170579, -0.954189, 0.245819,
		0.984680, -0.155915, 0.078079,
		-0.036176, 0.255371, 0.966166,
		5.061787, 2.506959, 0.927419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.470596, 1.836433, 0.641168>,  <5.087110, 2.328199, 0.251103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.470596, 1.836433, 0.641168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.222321, 1.993324, 0.912727>,  <5.073355, 2.087459, 1.075663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.222321, 1.993324, 0.912727>,  <5.470596, 1.836433, 0.641168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.222321, 1.993324, 0.912727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166274, -0.912031, 0.374904,
		0.766224, 0.119816, 0.631305,
		-0.620689, 0.392229, 0.678898,
		5.036114, 2.110993, 1.116397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.638643, 1.511932, 1.221122>,  <5.470596, 1.836433, 0.641168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.638643, 1.511932, 1.221122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.284187, 1.663364, 1.328030>,  <5.071514, 1.754224, 1.392174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.284187, 1.663364, 1.328030>,  <5.638643, 1.511932, 1.221122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.284187, 1.663364, 1.328030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234547, -0.863802, 0.445908,
		0.399681, 0.332450, 0.854244,
		-0.886140, 0.378581, 0.267270,
		5.018345, 1.776939, 1.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.458822, 1.200111, 1.876915>,  <5.638643, 1.511932, 1.221122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.458822, 1.200111, 1.876915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.109566, 1.342224, 1.743408>,  <4.900012, 1.427492, 1.663304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.109566, 1.342224, 1.743408>,  <5.458822, 1.200111, 1.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.109566, 1.342224, 1.743408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474283, -0.777337, 0.413284,
		-0.112617, 0.519155, 0.847228,
		-0.873140, 0.355283, -0.333767,
		4.847624, 1.448809, 1.643278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.032135, 1.248445, 2.470654>,  <5.458822, 1.200111, 1.876915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.032135, 1.248445, 2.470654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.806557, 1.199715, 2.143944>,  <4.671209, 1.170477, 1.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.806557, 1.199715, 2.143944>,  <5.032135, 1.248445, 2.470654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.806557, 1.199715, 2.143944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468175, -0.767589, 0.437743,
		-0.680276, 0.629258, 0.375844,
		-0.563947, -0.121825, -0.816776,
		4.637372, 1.163167, 1.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.149409, 0.232767, -0.350131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416199, -0.060436, -0.296696>,  <4.576272, -0.236358, -0.264634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416199, -0.060436, -0.296696>,  <4.149409, 0.232767, -0.350131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416199, -0.060436, -0.296696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608986, 0.639613, 0.469074,
		-0.429280, -0.231507, 0.872997,
		0.666974, -0.733007, 0.133588,
		4.616291, -0.280338, -0.256619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.373042, 0.221651, 0.329431>,  <4.149409, 0.232767, -0.350131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.373042, 0.221651, 0.329431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.656921, 0.090309, 0.080109>,  <4.827249, 0.011504, -0.069485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.656921, 0.090309, 0.080109>,  <4.373042, 0.221651, 0.329431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.656921, 0.090309, 0.080109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627948, 0.695930, 0.348371,
		0.319388, -0.638643, 0.700090,
		0.709698, -0.328355, -0.623306,
		4.869831, -0.008197, -0.106883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.407366, 0.647297, 0.814725>,  <4.373042, 0.221651, 0.329431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.407366, 0.647297, 0.814725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232735, 0.776196, 1.150715>,  <4.127956, 0.853535, 1.352309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232735, 0.776196, 1.150715>,  <4.407366, 0.647297, 0.814725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232735, 0.776196, 1.150715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567197, 0.823313, -0.021053,
		-0.698346, 0.467240, -0.542218,
		-0.436578, 0.322247, 0.839974,
		4.101761, 0.872870, 1.402707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.029646, 1.206917, 0.707395>,  <4.407366, 0.647297, 0.814725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.029646, 1.206917, 0.707395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.174767, 1.193161, 1.079887>,  <4.261838, 1.184908, 1.303383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.174767, 1.193161, 1.079887>,  <4.029646, 1.206917, 0.707395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174767, 1.193161, 1.079887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370808, 0.922123, -0.110410,
		-0.854914, 0.385365, 0.347299,
		0.362800, -0.034390, 0.931232,
		4.283607, 1.182844, 1.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.665586, 1.715852, 1.196765>,  <4.029646, 1.206917, 0.707395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.665586, 1.715852, 1.196765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037582, 1.638878, 1.322041>,  <4.260780, 1.592693, 1.397206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037582, 1.638878, 1.322041>,  <3.665586, 1.715852, 1.196765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037582, 1.638878, 1.322041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244805, 0.959819, -0.137176,
		-0.274206, 0.204242, 0.939732,
		0.929990, -0.192436, 0.313188,
		4.316579, 1.581147, 1.415997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.859218, 2.215385, 1.688372>,  <3.665586, 1.715852, 1.196765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.859218, 2.215385, 1.688372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.215950, 2.069363, 1.581509>,  <4.429989, 1.981749, 1.517390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.215950, 2.069363, 1.581509>,  <3.859218, 2.215385, 1.688372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.215950, 2.069363, 1.581509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351514, 0.930967, -0.098688,
		0.284743, -0.005898, 0.958586,
		0.891830, -0.365057, -0.267159,
		4.483499, 1.959846, 1.501361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.284113, 2.540820, 2.082222>,  <3.859218, 2.215385, 1.688372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.284113, 2.540820, 2.082222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.506119, 2.417931, 1.773010>,  <4.639322, 2.344197, 1.587484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.506119, 2.417931, 1.773010>,  <4.284113, 2.540820, 2.082222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.506119, 2.417931, 1.773010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316135, 0.937474, -0.145604,
		0.769427, -0.163569, 0.617436,
		0.555014, -0.307224, -0.773028,
		4.672623, 2.325763, 1.541102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.977890, 2.775080, 2.217435>,  <4.284113, 2.540820, 2.082222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.977890, 2.775080, 2.217435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.952759, 2.719910, 1.822056>,  <4.937680, 2.686808, 1.584828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.952759, 2.719910, 1.822056>,  <4.977890, 2.775080, 2.217435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.952759, 2.719910, 1.822056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472832, 0.868086, -0.151184,
		0.878910, -0.476868, 0.010676,
		-0.062827, -0.137925, -0.988448,
		4.933911, 2.678532, 1.525521>
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
