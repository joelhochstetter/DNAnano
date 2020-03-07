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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.317780, 52.499584, 49.557106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191128, 52.688347, 49.227974>,  <36.115135, 52.801605, 49.030495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191128, 52.688347, 49.227974>,  <36.317780, 52.499584, 49.557106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191128, 52.688347, 49.227974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896111, -0.135614, -0.422604,
		-0.311016, -0.871157, -0.379940,
		-0.316629, 0.471905, -0.822832,
		36.096138, 52.829918, 48.981125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848518, 52.702545, 49.055832>,  <36.317780, 52.499584, 49.557106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848518, 52.702545, 49.055832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808613, 52.396053, 49.309742>,  <36.784672, 52.212158, 49.462086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808613, 52.396053, 49.309742>,  <36.848518, 52.702545, 49.055832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808613, 52.396053, 49.309742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606806, -0.458739, -0.649111,
		0.788565, -0.449939, -0.419190,
		-0.099761, -0.766234, 0.634771,
		36.778683, 52.166183, 49.500172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216793, 52.776550, 49.718906>,  <36.848518, 52.702545, 49.055832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216793, 52.776550, 49.718906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492687, 52.911888, 49.974964>,  <37.658222, 52.993092, 50.128601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492687, 52.911888, 49.974964>,  <37.216793, 52.776550, 49.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492687, 52.911888, 49.974964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317620, -0.653118, 0.687427,
		0.650678, -0.677466, -0.343013,
		0.689736, 0.338346, 0.640146,
		37.699608, 53.013393, 50.167007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891579, 52.859913, 49.642941>,  <37.216793, 52.776550, 49.718906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891579, 52.859913, 49.642941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682323, 52.618538, 49.883671>,  <37.556770, 52.473713, 50.028107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682323, 52.618538, 49.883671>,  <37.891579, 52.859913, 49.642941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682323, 52.618538, 49.883671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605766, -0.759999, -0.235474,
		0.599479, 0.241379, 0.763126,
		-0.523137, -0.603438, 0.601823,
		37.525383, 52.437508, 50.064217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311550, 52.493549, 50.097874>,  <37.891579, 52.859913, 49.642941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311550, 52.493549, 50.097874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972576, 52.297939, 50.015213>,  <37.769192, 52.180573, 49.965618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972576, 52.297939, 50.015213>,  <38.311550, 52.493549, 50.097874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972576, 52.297939, 50.015213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500081, -0.865978, -0.001460,
		-0.178242, -0.104580, 0.978414,
		-0.847437, -0.489025, -0.206652,
		37.718346, 52.151230, 49.953217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075397, 51.993649, 50.629845>,  <38.311550, 52.493549, 50.097874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075397, 51.993649, 50.629845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014427, 51.912849, 50.242863>,  <37.977844, 51.864368, 50.010674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014427, 51.912849, 50.242863>,  <38.075397, 51.993649, 50.629845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014427, 51.912849, 50.242863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701324, -0.711823, 0.038127,
		-0.696356, -0.672685, 0.250167,
		-0.152427, -0.201998, -0.967452,
		37.968700, 51.852249, 49.952629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733845, 52.327122, 50.773899>,  <38.075397, 51.993649, 50.629845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733845, 52.327122, 50.773899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557205, 52.075230, 51.029533>,  <38.451221, 51.924095, 51.182915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557205, 52.075230, 51.029533>,  <38.733845, 52.327122, 50.773899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557205, 52.075230, 51.029533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103149, -0.743216, -0.661053,
		0.891265, -0.225998, 0.393157,
		-0.441597, -0.629727, 0.639090,
		38.424725, 51.886311, 51.221260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058849, 51.815071, 50.959301>,  <38.733845, 52.327122, 50.773899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058849, 51.815071, 50.959301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682041, 51.680847, 50.959053>,  <38.455956, 51.600315, 50.958904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682041, 51.680847, 50.959053>,  <39.058849, 51.815071, 50.959301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682041, 51.680847, 50.959053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207117, -0.579990, -0.787854,
		0.264009, -0.742303, 0.615862,
		-0.942020, -0.335556, -0.000621,
		38.399437, 51.580181, 50.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782761, 52.189213, 51.204567>,  <39.058849, 51.815071, 50.959301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782761, 52.189213, 51.204567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731995, 52.536701, 51.013062>,  <39.701534, 52.745193, 50.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731995, 52.536701, 51.013062>,  <39.782761, 52.189213, 51.204567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731995, 52.536701, 51.013062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179939, 0.494820, 0.850162,
		0.975456, 0.021752, -0.219118,
		-0.126917, 0.868723, -0.478761,
		39.693920, 52.797318, 50.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353119, 52.552391, 51.166153>,  <39.782761, 52.189213, 51.204567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353119, 52.552391, 51.166153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020905, 52.773376, 51.194397>,  <39.821575, 52.905968, 51.211346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020905, 52.773376, 51.194397>,  <40.353119, 52.552391, 51.166153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020905, 52.773376, 51.194397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219360, 0.207932, 0.953229,
		0.511945, 0.807183, -0.293885,
		-0.830538, 0.552467, 0.070614,
		39.771744, 52.939117, 51.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065075, 52.658226, 51.202496>,  <40.353119, 52.552391, 51.166153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065075, 52.658226, 51.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333664, 52.852554, 51.426315>,  <41.494820, 52.969151, 51.560608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333664, 52.852554, 51.426315>,  <41.065075, 52.658226, 51.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333664, 52.852554, 51.426315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695888, -0.153896, -0.701467,
		-0.254672, 0.860405, -0.441413,
		0.671477, 0.485818, 0.559553,
		41.535107, 52.998299, 51.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471809, 53.121159, 50.667259>,  <41.065075, 52.658226, 51.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471809, 53.121159, 50.667259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684742, 53.044682, 50.997124>,  <41.812504, 52.998795, 51.195042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684742, 53.044682, 50.997124>,  <41.471809, 53.121159, 50.667259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684742, 53.044682, 50.997124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791553, -0.232926, -0.564968,
		0.300103, 0.953515, 0.027345,
		0.532336, -0.191194, 0.824659,
		41.844444, 52.987324, 51.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173512, 53.517036, 50.594040>,  <41.471809, 53.121159, 50.667259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173512, 53.517036, 50.594040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225616, 53.227474, 50.865036>,  <42.256882, 53.053738, 51.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225616, 53.227474, 50.865036>,  <42.173512, 53.517036, 50.594040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225616, 53.227474, 50.865036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849541, -0.270807, -0.452708,
		0.511186, 0.634528, 0.579709,
		0.130267, -0.723904, 0.677490,
		42.264698, 53.010303, 51.068283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972111, 53.458065, 50.679787>,  <42.173512, 53.517036, 50.594040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972111, 53.458065, 50.679787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827694, 53.121449, 50.840511>,  <42.741043, 52.919479, 50.936947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827694, 53.121449, 50.840511>,  <42.972111, 53.458065, 50.679787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827694, 53.121449, 50.840511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696319, -0.529882, -0.484113,
		0.620315, 0.105002, 0.777293,
		-0.361041, -0.841546, 0.401809,
		42.719383, 52.868984, 50.961056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566925, 53.051834, 50.920361>,  <42.972111, 53.458065, 50.679787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566925, 53.051834, 50.920361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249466, 52.817078, 50.856262>,  <43.058990, 52.676224, 50.817802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249466, 52.817078, 50.856262>,  <43.566925, 53.051834, 50.920361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249466, 52.817078, 50.856262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591623, -0.683151, -0.428121,
		0.141787, -0.434584, 0.889401,
		-0.793649, -0.586892, -0.160248,
		43.011372, 52.641010, 50.808189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540234, 52.423218, 51.331615>,  <43.566925, 53.051834, 50.920361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540234, 52.423218, 51.331615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401581, 52.416515, 50.956474>,  <43.318390, 52.412495, 50.731388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401581, 52.416515, 50.956474>,  <43.540234, 52.423218, 51.331615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401581, 52.416515, 50.956474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808979, -0.511403, -0.289861,
		-0.474764, -0.859177, 0.190822,
		-0.346629, -0.016755, -0.937853,
		43.297592, 52.411488, 50.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679340, 51.742050, 51.058830>,  <43.540234, 52.423218, 51.331615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679340, 51.742050, 51.058830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677032, 52.009521, 50.761421>,  <43.675648, 52.170006, 50.582973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677032, 52.009521, 50.761421>,  <43.679340, 51.742050, 51.058830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677032, 52.009521, 50.761421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942376, -0.245086, -0.227727,
		-0.334505, -0.701995, -0.628736,
		-0.005769, 0.668682, -0.743526,
		43.675301, 52.210125, 50.538364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808193, 51.496849, 50.334793>,  <43.679340, 51.742050, 51.058830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808193, 51.496849, 50.334793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899227, 51.886353, 50.335728>,  <43.953850, 52.120052, 50.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899227, 51.886353, 50.335728>,  <43.808193, 51.496849, 50.334793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899227, 51.886353, 50.335728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955106, -0.222761, -0.195319,
		-0.189672, 0.046685, -0.980737,
		0.227588, 0.973755, 0.002337,
		43.967503, 52.178478, 50.336430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163586, 51.607147, 49.647419>,  <43.808193, 51.496849, 50.334793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163586, 51.607147, 49.647419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259308, 51.823509, 49.969948>,  <44.316742, 51.953327, 50.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259308, 51.823509, 49.969948>,  <44.163586, 51.607147, 49.647419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259308, 51.823509, 49.969948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894987, -0.444883, 0.032824,
		0.376474, 0.713792, -0.590566,
		0.239304, 0.540906, 0.806321,
		44.331100, 51.985783, 50.211845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747417, 51.977962, 49.687805>,  <44.163586, 51.607147, 49.647419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747417, 51.977962, 49.687805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664410, 51.867569, 50.063202>,  <44.614605, 51.801334, 50.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664410, 51.867569, 50.063202>,  <44.747417, 51.977962, 49.687805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664410, 51.867569, 50.063202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890115, -0.451200, 0.064142,
		0.405747, 0.848678, 0.339287,
		-0.207522, -0.275979, 0.938493,
		44.602154, 51.784775, 50.344749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401882, 51.971573, 50.017395>,  <44.747417, 51.977962, 49.687805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401882, 51.971573, 50.017395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172691, 51.710171, 50.215237>,  <45.035175, 51.553329, 50.333942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172691, 51.710171, 50.215237>,  <45.401882, 51.971573, 50.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172691, 51.710171, 50.215237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814339, -0.522036, 0.253634,
		0.092451, 0.548101, 0.831287,
		-0.572978, -0.653501, 0.494603,
		45.000797, 51.514122, 50.363617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716198, 51.900574, 50.678440>,  <45.401882, 51.971573, 50.017395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716198, 51.900574, 50.678440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515980, 51.564835, 50.593628>,  <45.395851, 51.363392, 50.542740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515980, 51.564835, 50.593628>,  <45.716198, 51.900574, 50.678440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515980, 51.564835, 50.593628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806392, -0.541145, 0.238525,
		-0.314943, -0.051587, 0.947708,
		-0.500543, -0.839345, -0.212029,
		45.365818, 51.313030, 50.530018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756802, 51.379120, 51.151199>,  <45.716198, 51.900574, 50.678440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756802, 51.379120, 51.151199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738167, 51.200603, 50.793732>,  <45.726986, 51.093494, 50.579250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738167, 51.200603, 50.793732>,  <45.756802, 51.379120, 51.151199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738167, 51.200603, 50.793732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727482, -0.628248, 0.275817,
		-0.684543, -0.637280, 0.353942,
		-0.046590, -0.446295, -0.893672,
		45.724190, 51.066715, 50.525631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690998, 50.577862, 51.157806>,  <45.756802, 51.379120, 51.151199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690998, 50.577862, 51.157806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902813, 50.760422, 50.871788>,  <46.029903, 50.869957, 50.700176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902813, 50.760422, 50.871788>,  <45.690998, 50.577862, 51.157806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902813, 50.760422, 50.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845932, -0.346852, 0.405083,
		-0.063137, -0.819387, -0.569753,
		0.529540, 0.456397, -0.715045,
		46.061676, 50.897343, 50.657276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980194, 50.203655, 50.597488>,  <45.690998, 50.577862, 51.157806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980194, 50.203655, 50.597488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218914, 50.515709, 50.672550>,  <46.362148, 50.702942, 50.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218914, 50.515709, 50.672550>,  <45.980194, 50.203655, 50.597488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218914, 50.515709, 50.672550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704895, -0.621481, 0.341883,
		0.383341, -0.071757, -0.920815,
		0.596802, 0.780136, 0.187657,
		46.397953, 50.749748, 50.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629852, 50.088932, 50.330578>,  <45.980194, 50.203655, 50.597488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629852, 50.088932, 50.330578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671963, 50.360840, 50.620911>,  <46.697227, 50.523983, 50.795109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671963, 50.360840, 50.620911>,  <46.629852, 50.088932, 50.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671963, 50.360840, 50.620911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797745, -0.493508, 0.346486,
		0.593734, 0.542552, -0.594237,
		0.105274, 0.679770, 0.725831,
		46.703545, 50.564770, 50.838661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340538, 50.226723, 50.364639>,  <46.629852, 50.088932, 50.330578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340538, 50.226723, 50.364639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178570, 50.313766, 50.719872>,  <47.081387, 50.365993, 50.933010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178570, 50.313766, 50.719872>,  <47.340538, 50.226723, 50.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178570, 50.313766, 50.719872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856134, -0.250802, 0.451811,
		0.321048, 0.943264, -0.084744,
		-0.404923, 0.217605, 0.888080,
		47.057095, 50.379047, 50.986294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737389, 50.659527, 50.748310>,  <47.340538, 50.226723, 50.364639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737389, 50.659527, 50.748310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537193, 50.405693, 50.983871>,  <47.417076, 50.253391, 51.125210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537193, 50.405693, 50.983871>,  <47.737389, 50.659527, 50.748310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537193, 50.405693, 50.983871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865707, -0.360699, 0.347057,
		-0.007822, 0.683515, 0.729894,
		-0.500491, -0.634589, 0.588902,
		47.387047, 50.215317, 51.160542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.154388, 50.565445, 51.293705>,  <47.737389, 50.659527, 50.748310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.154388, 50.565445, 51.293705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.901798, 50.257729, 51.332550>,  <47.750244, 50.073101, 51.355858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.901798, 50.257729, 51.332550>,  <48.154388, 50.565445, 51.293705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.901798, 50.257729, 51.332550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710833, -0.524313, 0.468841,
		-0.309757, 0.365094, 0.877928,
		-0.631480, -0.769287, 0.097111,
		47.712353, 50.026943, 51.361683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.290707, 50.313480, 51.928127>,  <48.154388, 50.565445, 51.293705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.290707, 50.313480, 51.928127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.142952, 50.015678, 51.705677>,  <48.054298, 49.836998, 51.572208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.142952, 50.015678, 51.705677>,  <48.290707, 50.313480, 51.928127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.142952, 50.015678, 51.705677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752070, -0.591021, 0.291691,
		-0.545845, -0.310497, 0.778232,
		-0.369382, -0.744503, -0.556122,
		48.032139, 49.792328, 51.538841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.480671, 49.849224, 52.294945>,  <48.290707, 50.313480, 51.928127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.480671, 49.849224, 52.294945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374672, 49.674606, 51.951038>,  <48.311073, 49.569836, 51.744694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374672, 49.674606, 51.951038>,  <48.480671, 49.849224, 52.294945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.374672, 49.674606, 51.951038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669414, -0.725053, 0.161811,
		-0.694016, -0.532662, 0.484369,
		-0.265002, -0.436543, -0.859770,
		48.295170, 49.543644, 51.693108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.127262, 49.202904, 52.451153>,  <48.480671, 49.849224, 52.294945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.127262, 49.202904, 52.451153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374222, 49.270588, 52.143860>,  <48.522400, 49.311199, 51.959484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374222, 49.270588, 52.143860>,  <48.127262, 49.202904, 52.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.374222, 49.270588, 52.143860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623907, -0.700139, 0.347196,
		-0.479119, -0.693665, -0.537842,
		0.617401, 0.169215, -0.768233,
		48.559441, 49.321354, 51.913391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.255405, 48.576893, 51.994282>,  <48.127262, 49.202904, 52.451153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.255405, 48.576893, 51.994282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.566982, 48.827435, 51.982117>,  <48.753929, 48.977760, 51.974819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.566982, 48.827435, 51.982117>,  <48.255405, 48.576893, 51.994282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.566982, 48.827435, 51.982117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595693, -0.723912, 0.347997,
		0.195953, -0.289187, -0.937002,
		0.778943, 0.626356, -0.030414,
		48.800667, 49.015343, 51.972992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.847054, 48.286037, 51.660599>,  <48.255405, 48.576893, 51.994282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.847054, 48.286037, 51.660599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.969406, 48.572624, 51.911396>,  <49.042816, 48.744576, 52.061874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.969406, 48.572624, 51.911396>,  <48.847054, 48.286037, 51.660599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.969406, 48.572624, 51.911396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668854, -0.630377, 0.394030,
		0.677548, 0.298839, -0.672029,
		0.305880, 0.716464, 0.626990,
		49.061169, 48.787563, 52.099495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.652489, 48.516495, 51.624348>,  <48.847054, 48.286037, 51.660599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.652489, 48.516495, 51.624348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.455360, 48.482788, 51.970764>,  <49.337082, 48.462563, 52.178612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.455360, 48.482788, 51.970764>,  <49.652489, 48.516495, 51.624348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.455360, 48.482788, 51.970764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696451, -0.634851, 0.334544,
		0.521615, 0.768025, 0.371559,
		-0.492823, -0.084269, 0.866039,
		49.307514, 48.457508, 52.230576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.063049, 48.627625, 52.333672>,  <49.652489, 48.516495, 51.624348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.063049, 48.627625, 52.333672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.757259, 48.374722, 52.383995>,  <49.573784, 48.222980, 52.414188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.757259, 48.374722, 52.383995>,  <50.063049, 48.627625, 52.333672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.757259, 48.374722, 52.383995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639907, -0.720638, 0.266834,
		-0.078047, 0.284493, 0.955496,
		-0.764479, -0.632254, 0.125806,
		49.527916, 48.185047, 52.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.274048, 48.265541, 52.878750>,  <50.063049, 48.627625, 52.333672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.274048, 48.265541, 52.878750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.994362, 48.009079, 52.752251>,  <49.826550, 47.855202, 52.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.994362, 48.009079, 52.752251>,  <50.274048, 48.265541, 52.878750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.994362, 48.009079, 52.752251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455069, -0.740330, 0.494797,
		-0.551370, 0.202057, 0.809423,
		-0.699216, -0.641159, -0.316246,
		49.784595, 47.816730, 52.657375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.712219, 48.144962, 53.348026>,  <50.274048, 48.265541, 52.878750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.712219, 48.144962, 53.348026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.784695, 47.818966, 53.127857>,  <49.828178, 47.623367, 52.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.784695, 47.818966, 53.127857>,  <49.712219, 48.144962, 53.348026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.784695, 47.818966, 53.127857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479308, -0.415535, 0.773042,
		-0.858741, -0.403885, 0.315343,
		0.181184, -0.814989, -0.550422,
		49.839050, 47.574471, 52.962730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.792259, 47.715988, 54.084560>,  <49.712219, 48.144962, 53.348026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.792259, 47.715988, 54.084560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.141426, 47.563896, 53.962284>,  <50.350925, 47.472641, 53.888916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.141426, 47.563896, 53.962284>,  <49.792259, 47.715988, 54.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.141426, 47.563896, 53.962284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427061, 0.292557, 0.855587,
		-0.235886, -0.877403, 0.417757,
		0.872913, -0.380229, -0.305694,
		50.403301, 47.449829, 53.870575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.039631, 47.002609, 54.404243>,  <49.792259, 47.715988, 54.084560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.039631, 47.002609, 54.404243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328918, 47.260479, 54.305168>,  <50.502491, 47.415199, 54.245724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328918, 47.260479, 54.305168>,  <50.039631, 47.002609, 54.404243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.328918, 47.260479, 54.305168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113750, 0.242548, 0.963448,
		0.681186, -0.724958, 0.102084,
		0.723219, 0.644676, -0.247684,
		50.545883, 47.453880, 54.230862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.729866, 46.891163, 54.740952>,  <50.039631, 47.002609, 54.404243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.729866, 46.891163, 54.740952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.635323, 47.273281, 54.669895>,  <50.578598, 47.502552, 54.627262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.635323, 47.273281, 54.669895>,  <50.729866, 46.891163, 54.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.635323, 47.273281, 54.669895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044059, 0.193165, 0.980177,
		0.970667, 0.223844, -0.087745,
		-0.236356, 0.955291, -0.177637,
		50.564415, 47.559868, 54.616604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.253242, 47.341717, 54.961193>,  <50.729866, 46.891163, 54.740952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.253242, 47.341717, 54.961193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.907742, 47.541939, 54.984459>,  <50.700443, 47.662071, 54.998417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.907742, 47.541939, 54.984459>,  <51.253242, 47.341717, 54.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.907742, 47.541939, 54.984459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126251, 0.103216, 0.986614,
		0.487853, 0.859529, -0.152348,
		-0.863748, 0.500556, 0.058162,
		50.648617, 47.692104, 55.001907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.318329, 48.080940, 55.379070>,  <51.253242, 47.341717, 54.961193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.318329, 48.080940, 55.379070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944916, 47.938072, 55.366745>,  <50.720867, 47.852352, 55.359352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944916, 47.938072, 55.366745>,  <51.318329, 48.080940, 55.379070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.944916, 47.938072, 55.366745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070016, 0.097363, 0.992783,
		-0.351595, 0.928950, -0.115899,
		-0.933531, -0.357172, -0.030809,
		50.664856, 47.830921, 55.357502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.661762, 48.583916, 55.614845>,  <51.318329, 48.080940, 55.379070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.661762, 48.583916, 55.614845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603210, 48.195816, 55.691978>,  <50.568081, 47.962955, 55.738258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603210, 48.195816, 55.691978>,  <50.661762, 48.583916, 55.614845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.603210, 48.195816, 55.691978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133599, 0.173756, 0.975684,
		-0.980166, 0.168581, 0.104190,
		-0.146378, -0.970252, 0.192832,
		50.559296, 47.904739, 55.749828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.739891, 48.562531, 56.305374>,  <50.661762, 48.583916, 55.614845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.739891, 48.562531, 56.305374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.468956, 48.676598, 56.034111>,  <50.306396, 48.745037, 55.871353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.468956, 48.676598, 56.034111>,  <50.739891, 48.562531, 56.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.468956, 48.676598, 56.034111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233584, -0.957481, -0.169320,
		-0.697607, 0.043720, 0.715145,
		-0.677335, 0.285165, -0.678158,
		50.265755, 48.762146, 55.830662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.019222, 49.146484, 56.613098>,  <50.739891, 48.562531, 56.305374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.019222, 49.146484, 56.613098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.045433, 49.511322, 56.451210>,  <51.061161, 49.730225, 56.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.045433, 49.511322, 56.451210>,  <51.019222, 49.146484, 56.613098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.045433, 49.511322, 56.451210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417699, 0.343272, 0.841245,
		0.906220, -0.224176, -0.358485,
		0.065529, 0.912091, -0.404718,
		51.065090, 49.784950, 56.329796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.666126, 49.554619, 56.446533>,  <51.019222, 49.146484, 56.613098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.666126, 49.554619, 56.446533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.391762, 49.824909, 56.554550>,  <51.227142, 49.987083, 56.619362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.391762, 49.824909, 56.554550>,  <51.666126, 49.554619, 56.446533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.391762, 49.824909, 56.554550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566153, 0.262400, 0.781420,
		0.457164, 0.688871, -0.562546,
		-0.685910, 0.675724, 0.270047,
		51.185989, 50.027626, 56.635563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.953476, 50.318493, 56.416527>,  <51.666126, 49.554619, 56.446533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.953476, 50.318493, 56.416527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.704994, 50.234180, 56.718437>,  <51.555904, 50.183594, 56.899582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.704994, 50.234180, 56.718437>,  <51.953476, 50.318493, 56.416527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.704994, 50.234180, 56.718437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742122, 0.151150, 0.653000,
		-0.251723, 0.965777, 0.062531,
		-0.621201, -0.210781, 0.754772,
		51.518635, 50.170944, 56.944870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.995716, 50.362904, 57.197170>,  <51.953476, 50.318493, 56.416527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.995716, 50.362904, 57.197170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.389812, 50.319172, 57.144493>,  <52.626270, 50.292934, 57.112888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.389812, 50.319172, 57.144493>,  <51.995716, 50.362904, 57.197170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.389812, 50.319172, 57.144493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009693, 0.803812, -0.594804,
		0.170884, 0.584751, 0.793010,
		0.985243, -0.109329, -0.131691,
		52.685387, 50.286373, 57.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.441364, 51.118439, 57.269852>,  <51.995716, 50.362904, 57.197170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.441364, 51.118439, 57.269852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.691208, 50.883690, 57.063766>,  <52.841114, 50.742840, 56.940117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.691208, 50.883690, 57.063766>,  <52.441364, 51.118439, 57.269852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.691208, 50.883690, 57.063766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086915, 0.707877, -0.700968,
		0.776082, 0.393055, 0.493158,
		0.624614, -0.586871, -0.515209,
		52.878593, 50.707630, 56.909203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.019573, 51.611633, 57.102669>,  <52.441364, 51.118439, 57.269852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.019573, 51.611633, 57.102669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945847, 51.356625, 56.803444>,  <52.901611, 51.203617, 56.623909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945847, 51.356625, 56.803444>,  <53.019573, 51.611633, 57.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.945847, 51.356625, 56.803444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057485, 0.752803, -0.655732,
		0.981184, -0.163866, -0.102107,
		-0.184318, -0.637524, -0.748058,
		52.890553, 51.165367, 56.579025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.373550, 51.856846, 56.575291>,  <53.019573, 51.611633, 57.102669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.373550, 51.856846, 56.575291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.119198, 51.615627, 56.382629>,  <52.966587, 51.470898, 56.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.119198, 51.615627, 56.382629>,  <53.373550, 51.856846, 56.575291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.119198, 51.615627, 56.382629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077193, 0.670641, -0.737754,
		0.767919, -0.431942, -0.472997,
		-0.635878, -0.603047, -0.481656,
		52.928432, 51.434711, 56.238132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.097073, 52.077614, 56.669842>,  <53.373550, 51.856846, 56.575291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.097073, 52.077614, 56.669842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.132149, 51.775970, 56.409492>,  <54.153194, 51.594986, 56.253284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.132149, 51.775970, 56.409492>,  <54.097073, 52.077614, 56.669842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.132149, 51.775970, 56.409492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357033, 0.633770, -0.686194,
		0.929967, -0.172210, 0.324817,
		0.087690, -0.754108, -0.650870,
		54.158455, 51.549740, 56.214233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.806057, 51.914536, 56.497913>,  <54.097073, 52.077614, 56.669842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.806057, 51.914536, 56.497913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549713, 51.844521, 56.198936>,  <54.395908, 51.802513, 56.019550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549713, 51.844521, 56.198936>,  <54.806057, 51.914536, 56.497913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.549713, 51.844521, 56.198936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575376, 0.535022, -0.618623,
		0.508177, -0.826507, -0.242162,
		-0.640859, -0.175035, -0.747438,
		54.357456, 51.792011, 55.974705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.212898, 51.733719, 55.938278>,  <54.806057, 51.914536, 56.497913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.212898, 51.733719, 55.938278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.858200, 51.864239, 55.807304>,  <54.645382, 51.942551, 55.728722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.858200, 51.864239, 55.807304>,  <55.212898, 51.733719, 55.938278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.858200, 51.864239, 55.807304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456414, 0.730330, -0.508237,
		0.073293, -0.600120, -0.796545,
		-0.886744, 0.326304, -0.327431,
		54.592178, 51.962132, 55.709076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.041626, 52.072899, 55.270882>,  <55.212898, 51.733719, 55.938278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.041626, 52.072899, 55.270882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.054565, 51.842926, 54.943859>,  <55.062328, 51.704941, 54.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.054565, 51.842926, 54.943859>,  <55.041626, 52.072899, 55.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.054565, 51.842926, 54.943859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331006, 0.777991, -0.534008,
		0.943074, -0.253341, 0.215477,
		0.032353, -0.574933, -0.817561,
		55.064270, 51.670444, 54.698589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.696918, 52.194336, 54.875519>,  <55.041626, 52.072899, 55.270882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.696918, 52.194336, 54.875519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.453278, 52.035416, 54.600956>,  <55.307095, 51.940063, 54.436218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.453278, 52.035416, 54.600956>,  <55.696918, 52.194336, 54.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.453278, 52.035416, 54.600956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424476, 0.567774, -0.705303,
		0.669937, -0.720963, -0.177188,
		-0.609101, -0.397297, -0.686405,
		55.270546, 51.916225, 54.395035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.122044, 51.825851, 55.358692>,  <55.696918, 52.194336, 54.875519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.122044, 51.825851, 55.358692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890839, 51.518440, 55.468437>,  <55.752117, 51.333996, 55.534286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890839, 51.518440, 55.468437>,  <56.122044, 51.825851, 55.358692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.890839, 51.518440, 55.468437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556691, 0.125522, -0.821182,
		0.596659, -0.627387, -0.500383,
		-0.578008, -0.768524, 0.274367,
		55.717438, 51.287884, 55.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.788052, 52.021042, 55.541340>,  <56.122044, 51.825851, 55.358692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.788052, 52.021042, 55.541340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.830132, 52.418777, 55.547295>,  <56.855381, 52.657417, 55.550869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.830132, 52.418777, 55.547295>,  <56.788052, 52.021042, 55.541340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.830132, 52.418777, 55.547295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959813, -0.105446, 0.260078,
		0.260175, -0.013071, -0.965473,
		0.105204, 0.994339, 0.014889,
		56.861694, 52.717079, 55.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.485966, 52.120529, 55.343685>,  <56.788052, 52.021042, 55.541340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.485966, 52.120529, 55.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.377579, 52.473557, 55.497383>,  <57.312546, 52.685375, 55.589600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.377579, 52.473557, 55.497383>,  <57.485966, 52.120529, 55.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.377579, 52.473557, 55.497383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860133, 0.042798, 0.508271,
		0.432140, 0.468226, -0.770726,
		-0.270971, 0.882572, 0.384242,
		57.296288, 52.738327, 55.612656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.151104, 52.570915, 55.289795>,  <57.485966, 52.120529, 55.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.151104, 52.570915, 55.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.901283, 52.745193, 55.549057>,  <57.751392, 52.849758, 55.704617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.901283, 52.745193, 55.549057>,  <58.151104, 52.570915, 55.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.901283, 52.745193, 55.549057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768469, 0.194845, 0.609500,
		0.139265, 0.878753, -0.456507,
		-0.624548, 0.435694, 0.648159,
		57.713921, 52.875900, 55.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.453403, 53.257442, 55.638680>,  <58.151104, 52.570915, 55.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.453403, 53.257442, 55.638680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.164719, 53.098949, 55.865707>,  <57.991508, 53.003853, 56.001926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.164719, 53.098949, 55.865707>,  <58.453403, 53.257442, 55.638680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.164719, 53.098949, 55.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574861, 0.113653, 0.810320,
		-0.385580, 0.911089, 0.145753,
		-0.721708, -0.396231, 0.567572,
		57.948208, 52.980080, 56.035980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.283936, 53.795109, 55.982197>,  <58.453403, 53.257442, 55.638680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.283936, 53.795109, 55.982197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.254112, 53.441284, 56.166367>,  <58.236217, 53.228989, 56.276871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.254112, 53.441284, 56.166367>,  <58.283936, 53.795109, 55.982197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.254112, 53.441284, 56.166367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758420, 0.249489, 0.602125,
		-0.647488, 0.394091, 0.652267,
		-0.074559, -0.884561, 0.460427,
		58.231743, 53.175915, 56.304493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.481194, 53.883682, 56.774242>,  <58.283936, 53.795109, 55.982197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.481194, 53.883682, 56.774242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579292, 53.532116, 56.610603>,  <58.638153, 53.321175, 56.512421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579292, 53.532116, 56.610603>,  <58.481194, 53.883682, 56.774242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.579292, 53.532116, 56.610603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935573, 0.103972, 0.337480,
		-0.254081, -0.465507, 0.847789,
		0.245245, -0.878916, -0.409098,
		58.652866, 53.268440, 56.487873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.174740, 53.987400, 57.141407>,  <58.481194, 53.883682, 56.774242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.174740, 53.987400, 57.141407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.130486, 54.341305, 57.322495>,  <59.103931, 54.553646, 57.431149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.130486, 54.341305, 57.322495>,  <59.174740, 53.987400, 57.141407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.130486, 54.341305, 57.322495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860855, -0.142333, 0.488539,
		0.496677, 0.443778, -0.745904,
		-0.110635, 0.884761, 0.452722,
		59.097294, 54.606731, 57.458313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.717552, 54.410549, 56.950974>,  <59.174740, 53.987400, 57.141407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.717552, 54.410549, 56.950974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.568832, 54.493477, 57.312920>,  <59.479603, 54.543232, 57.530087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.568832, 54.493477, 57.312920>,  <59.717552, 54.410549, 56.950974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.568832, 54.493477, 57.312920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858729, -0.293461, 0.420077,
		0.352634, 0.933220, -0.068924,
		-0.371798, 0.207321, 0.904867,
		59.457294, 54.555672, 57.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.890327, 55.145237, 57.086712>,  <59.717552, 54.410549, 56.950974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.890327, 55.145237, 57.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979500, 55.277687, 56.719963>,  <60.033005, 55.357159, 56.499912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979500, 55.277687, 56.719963>,  <59.890327, 55.145237, 57.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.979500, 55.277687, 56.719963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349881, -0.905053, -0.241788,
		-0.909882, -0.266895, -0.317619,
		0.222931, 0.331127, -0.916873,
		60.046379, 55.377026, 56.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.342072, 55.747192, 56.744614>,  <59.890327, 55.145237, 57.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.342072, 55.747192, 56.744614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.691109, 55.553040, 56.766479>,  <60.900532, 55.436546, 56.779598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.691109, 55.553040, 56.766479>,  <60.342072, 55.747192, 56.744614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.691109, 55.553040, 56.766479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470655, 0.865446, 0.171720,
		-0.130660, -0.124113, 0.983628,
		0.872589, -0.485386, 0.054665,
		60.952885, 55.407425, 56.782879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.735268, 55.818272, 57.412540>,  <60.342072, 55.747192, 56.744614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.735268, 55.818272, 57.412540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.019333, 55.734634, 57.143631>,  <61.189774, 55.684452, 56.982285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.019333, 55.734634, 57.143631>,  <60.735268, 55.818272, 57.412540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.019333, 55.734634, 57.143631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470548, 0.851241, 0.232321,
		0.523688, -0.481322, 0.702908,
		0.710166, -0.209088, -0.672270,
		61.232384, 55.671909, 56.941952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.345573, 55.546234, 57.706562>,  <60.735268, 55.818272, 57.412540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.345573, 55.546234, 57.706562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.401520, 55.778149, 57.385490>,  <61.435085, 55.917297, 57.192848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.401520, 55.778149, 57.385490>,  <61.345573, 55.546234, 57.706562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.401520, 55.778149, 57.385490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588466, 0.603280, 0.538295,
		0.796333, -0.547635, -0.256807,
		0.139863, 0.579784, -0.802676,
		61.443478, 55.952084, 57.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.153442, 55.571182, 57.473301>,  <61.345573, 55.546234, 57.706562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.153442, 55.571182, 57.473301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.940971, 55.897476, 57.381714>,  <61.813488, 56.093254, 57.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.940971, 55.897476, 57.381714>,  <62.153442, 55.571182, 57.473301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.940971, 55.897476, 57.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658677, 0.567565, 0.493979,
		0.532911, 0.111573, -0.838783,
		-0.531179, 0.815734, -0.228970,
		61.781616, 56.142197, 57.313023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.584476, 56.111534, 57.325020>,  <62.153442, 55.571182, 57.473301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.584476, 56.111534, 57.325020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.287384, 56.347572, 57.451599>,  <62.109131, 56.489197, 57.527546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.287384, 56.347572, 57.451599>,  <62.584476, 56.111534, 57.325020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.287384, 56.347572, 57.451599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669552, 0.649162, 0.360955,
		0.007574, 0.479969, -0.877253,
		-0.742727, 0.590100, 0.316448,
		62.064568, 56.524601, 57.546532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.707420, 56.817627, 57.193806>,  <62.584476, 56.111534, 57.325020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.707420, 56.817627, 57.193806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.462914, 56.829498, 57.510155>,  <62.316212, 56.836620, 57.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.462914, 56.829498, 57.510155>,  <62.707420, 56.817627, 57.193806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.462914, 56.829498, 57.510155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586578, 0.687840, 0.427555,
		-0.531305, 0.725256, -0.437857,
		-0.611262, 0.029675, 0.790872,
		62.279533, 56.838402, 57.747417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.589188, 57.579960, 57.327209>,  <62.707420, 56.817627, 57.193806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.589188, 57.579960, 57.327209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.553230, 57.313744, 57.623581>,  <62.531654, 57.154015, 57.801403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.553230, 57.313744, 57.623581>,  <62.589188, 57.579960, 57.327209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.553230, 57.313744, 57.623581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633509, 0.535828, 0.558171,
		-0.768496, 0.519560, 0.373459,
		-0.089894, -0.665542, 0.740927,
		62.526260, 57.114082, 57.845860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.537750, 57.913651, 57.922291>,  <62.589188, 57.579960, 57.327209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.537750, 57.913651, 57.922291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627609, 57.553944, 58.072411>,  <62.681526, 57.338120, 58.162483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627609, 57.553944, 58.072411>,  <62.537750, 57.913651, 57.922291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.627609, 57.553944, 58.072411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647715, 0.425549, 0.631961,
		-0.728011, 0.101120, 0.678067,
		0.224646, -0.899268, 0.375301,
		62.695004, 57.284164, 58.185001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.518108, 57.836761, 58.695251>,  <62.537750, 57.913651, 57.922291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.518108, 57.836761, 58.695251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.792213, 57.588020, 58.543617>,  <62.956676, 57.438774, 58.452637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.792213, 57.588020, 58.543617>,  <62.518108, 57.836761, 58.695251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.792213, 57.588020, 58.543617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596694, 0.180951, 0.781801,
		-0.417573, -0.761938, 0.495058,
		0.685265, -0.621857, -0.379084,
		62.997791, 57.401463, 58.429893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.835117, 57.429386, 59.236576>,  <62.518108, 57.836761, 58.695251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.835117, 57.429386, 59.236576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108177, 57.423523, 58.944336>,  <63.272011, 57.420006, 58.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108177, 57.423523, 58.944336>,  <62.835117, 57.429386, 59.236576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.108177, 57.423523, 58.944336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684931, 0.361288, 0.632725,
		0.254683, -0.932339, 0.256671,
		0.682647, -0.014658, -0.730602,
		63.312973, 57.419125, 58.725155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.538193, 57.290672, 59.602661>,  <62.835117, 57.429386, 59.236576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.538193, 57.290672, 59.602661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.607933, 57.463509, 59.248734>,  <63.649776, 57.567211, 59.036377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.607933, 57.463509, 59.248734>,  <63.538193, 57.290672, 59.602661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.607933, 57.463509, 59.248734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939788, 0.195220, 0.280513,
		0.293941, -0.880448, -0.372035,
		0.174348, 0.432088, -0.884818,
		63.660236, 57.593136, 58.983288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.149971, 56.969311, 59.427860>,  <63.538193, 57.290672, 59.602661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.149971, 56.969311, 59.427860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.119362, 57.273026, 59.169365>,  <64.100998, 57.455254, 59.014267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.119362, 57.273026, 59.169365>,  <64.149971, 56.969311, 59.427860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.119362, 57.273026, 59.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942206, 0.267092, 0.202260,
		0.326179, -0.593413, -0.735845,
		-0.076515, 0.759291, -0.646237,
		64.096405, 57.500813, 58.975494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.628204, 56.925579, 58.816547>,  <64.149971, 56.969311, 59.427860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.628204, 56.925579, 58.816547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.535507, 57.295418, 58.937492>,  <64.479889, 57.517319, 59.010059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.535507, 57.295418, 58.937492>,  <64.628204, 56.925579, 58.816547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.535507, 57.295418, 58.937492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971472, 0.236067, 0.022689,
		-0.050400, 0.298993, -0.952924,
		-0.231737, 0.924595, 0.302361,
		64.465988, 57.572796, 59.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.918976, 57.306858, 58.379463>,  <64.628204, 56.925579, 58.816547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.918976, 57.306858, 58.379463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.898186, 57.494640, 58.732033>,  <64.885712, 57.607311, 58.943573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.898186, 57.494640, 58.732033>,  <64.918976, 57.306858, 58.379463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.898186, 57.494640, 58.732033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992820, 0.119505, -0.005115,
		-0.107736, 0.874831, -0.472296,
		-0.051967, 0.469456, 0.881425,
		64.882599, 57.635479, 58.996460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.316414, 57.893490, 58.453011>,  <64.918976, 57.306858, 58.379463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.316414, 57.893490, 58.453011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.280937, 57.761387, 58.828896>,  <65.259651, 57.682125, 59.054428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.280937, 57.761387, 58.828896>,  <65.316414, 57.893490, 58.453011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.280937, 57.761387, 58.828896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994126, 0.029392, 0.104164,
		-0.062021, 0.943434, 0.325709,
		-0.088698, -0.330256, 0.939715,
		65.254326, 57.662312, 59.110809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.821747, 58.290863, 58.803459>,  <65.316414, 57.893490, 58.453011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.821747, 58.290863, 58.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.743835, 57.980694, 59.043724>,  <65.697090, 57.794594, 59.187881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.743835, 57.980694, 59.043724>,  <65.821747, 58.290863, 58.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.743835, 57.980694, 59.043724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919635, 0.068579, 0.386740,
		-0.341078, 0.627712, 0.699745,
		-0.194773, -0.775419, 0.600658,
		65.685402, 57.748070, 59.223923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.032845, 58.534439, 59.530388>,  <65.821747, 58.290863, 58.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.032845, 58.534439, 59.530388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.097649, 58.147999, 59.449997>,  <66.136536, 57.916134, 59.401764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.097649, 58.147999, 59.449997>,  <66.032845, 58.534439, 59.530388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.097649, 58.147999, 59.449997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909917, 0.067452, 0.409271,
		-0.381842, -0.249181, 0.890003,
		0.162015, -0.966105, -0.200978,
		66.146255, 57.858166, 59.389702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.314301, 58.179070, 60.199287>,  <66.032845, 58.534439, 59.530388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.314301, 58.179070, 60.199287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.408081, 57.966736, 59.873528>,  <66.464348, 57.839336, 59.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.408081, 57.966736, 59.873528>,  <66.314301, 58.179070, 60.199287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.408081, 57.966736, 59.873528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970936, 0.086365, 0.223215,
		-0.048154, -0.843064, 0.535653,
		0.234446, -0.530833, -0.814402,
		66.478416, 57.807487, 59.629208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.791855, 57.549072, 60.359737>,  <66.314301, 58.179070, 60.199287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.791855, 57.549072, 60.359737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.825104, 57.654396, 59.975288>,  <66.845055, 57.717590, 59.744617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.825104, 57.654396, 59.975288>,  <66.791855, 57.549072, 60.359737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.825104, 57.654396, 59.975288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996495, -0.012829, 0.082658,
		0.009434, -0.964627, -0.263449,
		0.083114, 0.263306, -0.961125,
		66.850037, 57.733387, 59.686951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.232628, 57.085068, 59.863609>,  <66.791855, 57.549072, 60.359737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.232628, 57.085068, 59.863609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.264557, 57.467915, 59.752213>,  <67.283714, 57.697620, 59.685375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.264557, 57.467915, 59.752213>,  <67.232628, 57.085068, 59.863609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.264557, 57.467915, 59.752213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993700, -0.054364, 0.098008,
		0.078665, -0.284563, -0.955424,
		0.079830, 0.957115, -0.278494,
		67.288506, 57.755051, 59.668663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.856369, 57.081722, 59.550484>,  <67.232628, 57.085068, 59.863609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.856369, 57.081722, 59.550484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.790161, 57.469536, 59.622704>,  <67.750435, 57.702225, 59.666035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.790161, 57.469536, 59.622704>,  <67.856369, 57.081722, 59.550484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.790161, 57.469536, 59.622704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969233, 0.126105, 0.211388,
		0.182181, 0.209985, -0.960581,
		-0.165523, 0.969538, 0.180550,
		67.740501, 57.760399, 59.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.464058, 57.361103, 59.405128>,  <67.856369, 57.081722, 59.550484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.464058, 57.361103, 59.405128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.324829, 57.685310, 59.593559>,  <68.241287, 57.879833, 59.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.324829, 57.685310, 59.593559>,  <68.464058, 57.361103, 59.405128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.324829, 57.685310, 59.593559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924213, 0.380880, 0.027569,
		-0.157077, 0.444968, -0.881664,
		-0.348075, 0.810515, 0.471072,
		68.220406, 57.928463, 59.734882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.688011, 58.007175, 59.131294>,  <68.464058, 57.361103, 59.405128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.688011, 58.007175, 59.131294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.636757, 58.067852, 59.523331>,  <68.606003, 58.104259, 59.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.636757, 58.067852, 59.523331>,  <68.688011, 58.007175, 59.131294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.636757, 58.067852, 59.523331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920903, 0.385020, 0.060808,
		-0.368129, 0.910356, -0.189030,
		-0.128138, 0.151693, 0.980087,
		68.598312, 58.113361, 59.817356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.051437, 58.619560, 59.222839>,  <68.688011, 58.007175, 59.131294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.051437, 58.619560, 59.222839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.971298, 58.460579, 59.581032>,  <68.923218, 58.365189, 59.795948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.971298, 58.460579, 59.581032>,  <69.051437, 58.619560, 59.222839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.971298, 58.460579, 59.581032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863948, 0.359350, 0.352790,
		-0.462010, 0.844333, 0.271383,
		-0.200351, -0.397453, 0.895484,
		68.911194, 58.341343, 59.849678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.241135, 59.149368, 59.670525>,  <69.051437, 58.619560, 59.222839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.241135, 59.149368, 59.670525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.263474, 58.788788, 59.842232>,  <69.276878, 58.572441, 59.945255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.263474, 58.788788, 59.842232>,  <69.241135, 59.149368, 59.670525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.263474, 58.788788, 59.842232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911204, 0.221776, 0.347163,
		-0.408151, 0.371764, 0.833789,
		0.055851, -0.901447, 0.429271,
		69.280228, 58.518353, 59.971012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.596313, 59.252171, 60.278816>,  <69.241135, 59.149368, 59.670525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.596313, 59.252171, 60.278816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.644814, 58.858982, 60.223595>,  <69.673912, 58.623070, 60.190460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.644814, 58.858982, 60.223595>,  <69.596313, 59.252171, 60.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.644814, 58.858982, 60.223595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965180, 0.084267, 0.247641,
		-0.231792, -0.163271, 0.958966,
		0.121242, -0.982976, -0.138053,
		69.681183, 58.564091, 60.182178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.016083, 59.233444, 60.746468>,  <69.596313, 59.252171, 60.278816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.016083, 59.233444, 60.746468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.049957, 58.886593, 60.550133>,  <70.070282, 58.678482, 60.432331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.049957, 58.886593, 60.550133>,  <70.016083, 59.233444, 60.746468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.049957, 58.886593, 60.550133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974233, -0.031285, 0.223365,
		-0.209042, -0.497103, 0.842135,
		0.084689, -0.867128, -0.490834,
		70.075363, 58.626453, 60.402882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.349968, 58.835327, 61.160469>,  <70.016083, 59.233444, 60.746468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.349968, 58.835327, 61.160469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.423302, 58.702103, 60.790504>,  <70.467300, 58.622169, 60.568527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.423302, 58.702103, 60.790504>,  <70.349968, 58.835327, 61.160469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.423302, 58.702103, 60.790504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973596, -0.068658, 0.217709,
		-0.136013, -0.940403, 0.311678,
		0.183334, -0.333060, -0.924911,
		70.478302, 58.602184, 60.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.780029, 58.284069, 61.248528>,  <70.349968, 58.835327, 61.160469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.780029, 58.284069, 61.248528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.834633, 58.435165, 60.882210>,  <70.867393, 58.525822, 60.662418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.834633, 58.435165, 60.882210>,  <70.780029, 58.284069, 61.248528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.834633, 58.435165, 60.882210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983105, 0.062130, 0.172175,
		0.121936, -0.923825, -0.362876,
		0.136514, 0.377739, -0.915793,
		70.875587, 58.548489, 60.607471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.349251, 58.053272, 60.856342>,  <70.780029, 58.284069, 61.248528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.349251, 58.053272, 60.856342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.330414, 58.403893, 60.664742>,  <71.319115, 58.614265, 60.549782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.330414, 58.403893, 60.664742>,  <71.349251, 58.053272, 60.856342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.330414, 58.403893, 60.664742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997458, 0.066935, 0.024437,
		0.053482, -0.476634, -0.877474,
		-0.047086, 0.876550, -0.479002,
		71.316292, 58.666859, 60.521042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.694138, 58.107586, 60.172741>,  <71.349251, 58.053272, 60.856342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.694138, 58.107586, 60.172741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.728355, 58.440315, 60.392105>,  <71.748886, 58.639954, 60.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.728355, 58.440315, 60.392105>,  <71.694138, 58.107586, 60.172741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.728355, 58.440315, 60.392105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991330, -0.015953, -0.130424,
		-0.099741, 0.554815, -0.825974,
		0.085538, 0.831821, 0.548413,
		71.754013, 58.689861, 60.556629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.363274, 57.864265, 60.167519>,  <71.694138, 58.107586, 60.172741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.363274, 57.864265, 60.167519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.383667, 57.523994, 60.376801>,  <72.395905, 57.319832, 60.502369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.383667, 57.523994, 60.376801>,  <72.363274, 57.864265, 60.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.383667, 57.523994, 60.376801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788734, -0.287065, -0.543592,
		0.612617, 0.440386, 0.656324,
		0.050983, -0.850678, 0.523208,
		72.398964, 57.268791, 60.533764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.086060, 57.758369, 60.212967>,  <72.363274, 57.864265, 60.167519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.086060, 57.758369, 60.212967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.956078, 57.386917, 60.284569>,  <72.878090, 57.164047, 60.327530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.956078, 57.386917, 60.284569>,  <73.086060, 57.758369, 60.212967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.956078, 57.386917, 60.284569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912094, -0.357770, -0.200213,
		0.249966, 0.098204, 0.963262,
		-0.324964, -0.928632, 0.179002,
		72.858589, 57.108326, 60.338268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
