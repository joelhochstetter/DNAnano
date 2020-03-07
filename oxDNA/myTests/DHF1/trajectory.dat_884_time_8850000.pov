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
	<2.286022, -0.677621, 2.889569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405182, -0.505951, 3.230641>,  <2.476678, -0.402949, 3.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405182, -0.505951, 3.230641>,  <2.286022, -0.677621, 2.889569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405182, -0.505951, 3.230641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504206, 0.829213, -0.241209,
		-0.810575, -0.358070, 0.463415,
		0.297900, 0.429175, 0.852681,
		2.494552, -0.377198, 3.486445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.715711, -0.446541, 3.271631>,  <2.286022, -0.677621, 2.889569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.715711, -0.446541, 3.271631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.027832, -0.219093, 3.375785>,  <2.215104, -0.082624, 3.438277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.027832, -0.219093, 3.375785>,  <1.715711, -0.446541, 3.271631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.027832, -0.219093, 3.375785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554240, 0.821612, -0.133308,
		-0.289737, -0.040296, 0.956258,
		0.780302, 0.568620, 0.260385,
		2.261923, -0.048507, 3.453900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.543993, -0.165443, 3.962085>,  <1.715711, -0.446541, 3.271631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.543993, -0.165443, 3.962085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772209, 0.037380, 3.703666>,  <1.909139, 0.159074, 3.548614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772209, 0.037380, 3.703666>,  <1.543993, -0.165443, 3.962085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.772209, 0.037380, 3.703666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729602, 0.674089, -0.115263,
		0.377049, 0.537119, 0.754545,
		0.570540, 0.507057, -0.646047,
		1.943371, 0.189497, 3.509851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691833, 0.594983, 4.165342>,  <1.543993, -0.165443, 3.962085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691833, 0.594983, 4.165342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667862, 0.535999, 3.770442>,  <1.653479, 0.500609, 3.533501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667862, 0.535999, 3.770442>,  <1.691833, 0.594983, 4.165342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667862, 0.535999, 3.770442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600565, 0.795325, -0.082337,
		0.797327, 0.587974, -0.136220,
		-0.059927, -0.147458, -0.987251,
		1.649884, 0.491762, 3.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485630, 1.218620, 3.822893>,  <1.691833, 0.594983, 4.165342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485630, 1.218620, 3.822893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.388756, 0.957428, 3.535850>,  <1.330631, 0.800713, 3.363623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.388756, 0.957428, 3.535850>,  <1.485630, 1.218620, 3.822893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388756, 0.957428, 3.535850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730105, 0.609763, -0.308442,
		0.638979, 0.449231, -0.624418,
		-0.242184, -0.652978, -0.717611,
		1.316100, 0.761534, 3.320567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469566, 1.590628, 3.189126>,  <1.485630, 1.218620, 3.822893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469566, 1.590628, 3.189126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.228447, 1.280323, 3.114479>,  <1.083776, 1.094140, 3.069690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.228447, 1.280323, 3.114479>,  <1.469566, 1.590628, 3.189126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.228447, 1.280323, 3.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649908, 0.613061, -0.449195,
		0.462876, -0.149490, -0.873727,
		-0.602798, -0.775764, -0.186616,
		1.047608, 1.047594, 3.058493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212590, 1.718369, 2.512861>,  <1.469566, 1.590628, 3.189126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212590, 1.718369, 2.512861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971786, 1.444256, 2.676799>,  <0.827304, 1.279788, 2.775161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971786, 1.444256, 2.676799>,  <1.212590, 1.718369, 2.512861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971786, 1.444256, 2.676799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791698, 0.445460, -0.418067,
		0.103925, -0.576153, -0.810708,
		-0.602008, -0.685283, 0.409844,
		0.791184, 1.238671, 2.799752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.689480, 1.541945, 1.959691>,  <1.212590, 1.718369, 2.512861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.689480, 1.541945, 1.959691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.507820, 1.438923, 2.300846>,  <0.398824, 1.377110, 2.505538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.507820, 1.438923, 2.300846>,  <0.689480, 1.541945, 1.959691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.507820, 1.438923, 2.300846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849503, 0.413691, -0.327421,
		-0.268502, -0.873227, -0.406671,
		-0.454149, -0.257555, 0.852886,
		0.371575, 1.361656, 2.556711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.486223, 2.199572, 2.081945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.672729, 1.858063, 2.174609>,  <-0.784634, 1.653157, 2.230208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.672729, 1.858063, 2.174609>,  <-0.486223, 2.199572, 2.081945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.672729, 1.858063, 2.174609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818256, -0.316695, 0.479752,
		-0.336233, 0.413251, 0.846269,
		-0.466267, -0.853773, 0.231662,
		-0.812610, 1.601931, 2.244108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.294439, 2.095646, 2.759218>,  <-0.486223, 2.199572, 2.081945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.294439, 2.095646, 2.759218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.416435, 1.749413, 2.600348>,  <-0.489633, 1.541673, 2.505026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.416435, 1.749413, 2.600348>,  <-0.294439, 2.095646, 2.759218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.416435, 1.749413, 2.600348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729806, -0.480359, 0.486455,
		-0.611853, -0.141496, 0.778212,
		-0.304990, -0.865583, -0.397174,
		-0.507932, 1.489738, 2.481196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.462032, 1.532763, 3.271456>,  <-0.294439, 2.095646, 2.759218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.462032, 1.532763, 3.271456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.339371, 1.359390, 2.932493>,  <-0.265774, 1.255367, 2.729115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.339371, 1.359390, 2.932493>,  <-0.462032, 1.532763, 3.271456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.339371, 1.359390, 2.932493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650214, -0.554796, 0.519060,
		-0.695115, -0.710168, 0.111692,
		0.306654, -0.433431, -0.847408,
		-0.247374, 1.229361, 2.678271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.200005, 0.891249, 3.475767>,  <-0.462032, 1.532763, 3.271456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.200005, 0.891249, 3.475767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.016991, 0.974228, 3.129906>,  <0.092818, 1.024015, 2.922390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.016991, 0.974228, 3.129906>,  <-0.200005, 0.891249, 3.475767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.016991, 0.974228, 3.129906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802645, -0.514815, 0.301210,
		-0.382650, -0.831824, -0.402054,
		0.457537, 0.207448, -0.864653,
		0.120270, 1.036462, 2.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.001146, 0.261164, 3.146136>,  <-0.200005, 0.891249, 3.475767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.001146, 0.261164, 3.146136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.242119, 0.556023, 3.028321>,  <0.388078, 0.732938, 2.957632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.242119, 0.556023, 3.028321>,  <-0.001146, 0.261164, 3.146136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.242119, 0.556023, 3.028321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791933, -0.588929, 0.161261,
		-0.054588, -0.331327, -0.941936,
		0.608163, 0.737147, -0.294537,
		0.424568, 0.777167, 2.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.383598, -0.043325, 2.775311>,  <-0.001146, 0.261164, 3.146136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.383598, -0.043325, 2.775311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.583755, 0.294342, 2.852238>,  <0.703850, 0.496943, 2.898395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.583755, 0.294342, 2.852238>,  <0.383598, -0.043325, 2.775311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.583755, 0.294342, 2.852238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844882, -0.524636, 0.104557,
		0.189161, 0.110167, -0.975747,
		0.500393, 0.844169, 0.192319,
		0.733873, 0.547593, 2.909934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.021159, -0.021195, 2.299345>,  <0.383598, -0.043325, 2.775311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.021159, -0.021195, 2.299345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.110435, 0.222832, 2.603451>,  <1.164001, 0.369248, 2.785914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.110435, 0.222832, 2.603451>,  <1.021159, -0.021195, 2.299345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.110435, 0.222832, 2.603451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914774, -0.400497, 0.052826,
		0.336712, 0.683681, -0.647461,
		0.223190, 0.610068, 0.760265,
		1.177393, 0.405852, 2.831530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.634136, 0.376411, 2.225182>,  <1.021159, -0.021195, 2.299345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.634136, 0.376411, 2.225182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.606361, 0.379982, 2.624200>,  <1.589696, 0.382125, 2.863611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.606361, 0.379982, 2.624200>,  <1.634136, 0.376411, 2.225182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.606361, 0.379982, 2.624200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968676, -0.238385, 0.069562,
		0.238421, 0.971130, 0.007904,
		-0.069437, 0.008929, 0.997546,
		1.585530, 0.382661, 2.923464>
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
